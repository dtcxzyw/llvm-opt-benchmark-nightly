Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/QoiImageLoader?download=true
inline.NumInlined: 5784
inline.NumDeleted: 2205
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNK3tev14QoiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  br i1 %i.ca, label %.split206, label %.thread233.from.433.sink.split

.thread541:                                       ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cc = load i8, ptr %10, align 8
  %i.cd = trunc i8 %i.cc to i1
  br i1 %i.cd, label %.split206, label %.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit75

.split206:                                        ; preds = %.thread541, %bb.r
  %i.ce = phi { ptr, i32 } [ %i.cb, %.thread541 ], [ %i.by, %bb.r ] ; 2 uses
  %.045543 = phi i1 [ false, %.thread541 ], [ true, %bb.r ]
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !67
  %i.ch = load i64, ptr %10, align 8
  %i.ci = and i64 %i.ch, -2
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ci) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br i1 %.045543, label %.thread233.from.433, label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit75: ; preds = %.thread541
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

.thread233.from.433.sink.split:                   ; preds = %bb.r, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit75.thread
  %.pn63205.ph = phi { ptr, i32 } [ %i.bx, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit75.thread ], [ %i.by, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %.thread233.from.433

.thread233.from.433:                              ; preds = %.thread233.from.433.sink.split, %.split206
  %.pn63205 = phi { ptr, i32 } [ %i.ce, %.split206 ], [ %.pn63205.ph, %.thread233.from.433.sink.split ]
  call void @__cxa_free_exception(ptr %i.bv) #35
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

bb.s:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !65  ; 4 uses
  %.spill.addr484 = getelementptr inbounds nuw i8, ptr %i.a, i64 721 ; 4 uses
  store i8 %i.ck, ptr %.spill.addr484, align 1
  %i.cl = zext i8 %i.ck to i64                    ; 2 uses
  %i.cm = add i8 %i.ck, -5
  %or.cond = icmp ult i8 %i.cm, -2
  br i1 %or.cond, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  store i64 %i.cl, ptr %.reload.addr520, align 16, !tbaa !67, !noalias !477
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.7, i64 30, i64 4, ptr nonnull %.reload.addr520)
          to label %bb.u unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.cn, align 8, !tbaa !71
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #39
          to label %bb.ci unwind label %.thread547

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread: ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread233.from..sink.split

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cq = load i8, ptr %11, align 8
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %.split210, label %.thread233.from..sink.split

.thread547:                                       ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ct = load i8, ptr %11, align 8
  %i.cu = trunc i8 %i.ct to i1
  br i1 %i.cu, label %.split210, label %.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78

.split210:                                        ; preds = %.thread547, %bb.w
  %i.cv = phi { ptr, i32 } [ %i.cs, %.thread547 ], [ %i.cp, %bb.w ] ; 2 uses
  %.0549 = phi i1 [ false, %.thread547 ], [ true, %bb.w ]
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !67
  %i.cy = load i64, ptr %11, align 8
  %i.cz = and i64 %i.cy, -2
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.cz) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br i1 %.0549, label %.thread233.from., label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78: ; preds = %.thread547
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

.thread233.from..sink.split:                      ; preds = %bb.w, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread
  %.pn62209.ph = phi { ptr, i32 } [ %i.co, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread ], [ %i.cp, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %.thread233.from.

.thread233.from.:                                 ; preds = %.thread233.from..sink.split, %.split210
  %.pn62209 = phi { ptr, i32 } [ %i.cv, %.split210 ], [ %.pn62209.ph, %.thread233.from..sink.split ]
  call void @__cxa_free_exception(ptr %i.cn) #35
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

bb.x:                                             ; preds = %bb.s
  invoke void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr517, i64 noundef 1)
          to label %bb.y unwind label %.thread233.from..thread237

bb.y:                                             ; preds = %bb.x
  %i.da = icmp eq i8 %i.ck, 4
  %i.db = load ptr, ptr %.reload.addr517, align 8, !tbaa !101
  %.spill.addr491 = getelementptr inbounds nuw i8, ptr %i.a, i64 688 ; 7 uses
  store ptr %i.db, ptr %.spill.addr491, align 8
  %.sroa.06.0.copyload = load i64, ptr %.reload.addr522, align 4, !tbaa !67
  store ptr @.str.8, ptr %12, align 8, !tbaa !479
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.dc, align 8, !tbaa !480
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.62") align 8 %.reload.addr510, i64 noundef %i.cl, i1 noundef zeroext %i.da, i64 %.sroa.06.0.copyload, i32 noundef 7, i32 noundef 6, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %12, i32 noundef %7)
          to label %bb.z unwind label %.from.370

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 7 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load atomic i32, ptr %i.df acquire, align 4
  %i.dh = icmp slt i32 %i.dg, 2
  br i1 %i.dh, label %bb.aa, label %AfterCoroSave

bb.aa:                                            ; preds = %bb.z
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp slt i32 %i.dk, 1
  br i1 %i.dl, label %bb.ab, label %.thread.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !104 ; 7 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !111
  %i.dp = and i32 %i.do, 8
  %.not.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i, label %bb.ac, label %.thread.sink.split

bb.ac:                                            ; preds = %.noexc.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !112 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !113 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.dr, %i.dt
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 33
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.dr, %.from..lr.ph.i.i.i.i.i ], [ %i.ej, %.noexc2.i.i ] ; 2 uses
  %i.dy = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.dz = load i8, ptr %i.du, align 8             ; 2 uses
  %i.ea = trunc i8 %i.dz to i1                    ; 2 uses
  %i.eb = load ptr, ptr %i.dv, align 8
  %i.ec = select i1 %i.ea, ptr %i.eb, ptr %i.dw
  %i.ed = load i64, ptr %i.dx, align 8
  %i.ee = lshr i8 %i.dz, 1
  %i.ef = zext nneg i8 %i.ee to i64
  %i.eg = select i1 %i.ea, i64 %i.ed, i64 %i.ef
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !71
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr %i.ec, i64 %i.eg, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, %i.dt
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

.from..loopexit.split-lp.i.i:                     ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

bb.ad:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ek = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ek) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.z
  %index.addr525 = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i8 0, ptr %index.addr525, align 8
  %i.el = tail call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr510, ptr nonnull %i.a) #35
  br i1 %i.el, label %AfterCoroEnd, label %bb.ae

.thread233.from..thread237:                       ; preds = %bb.x
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

.from.370:                                        ; preds = %bb.y
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread233.from.438

bb.ae:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr510, align 8, !tbaa !118, !noalias !481 ; 3 uses
  %.not.i79 = icmp eq ptr %.pr, null
  br i1 %.not.i79, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body81.from.367, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.af, %bb.ac, %.noexc.i.i, %bb.aa
  store ptr null, ptr %.reload.addr510, align 8, !tbaa !118
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 6 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !121, !noalias !482 ; 7 uses
  store ptr null, ptr %i.eq, align 8, !tbaa !121, !noalias !482
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.15") align 8 %.reload.addr511, ptr noundef nonnull align 8 dereferenceable(144) %i.er)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %.thread
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = atomicrmw add ptr %i.es, i64 -1 acq_rel, align 8
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.ah, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !71
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #35, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.ai:                                            ; preds = %.thread
  %i.ey = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fa = atomicrmw add ptr %i.ez, i64 -1 acq_rel, align 8
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.body81.from.364, label %.from..body81

.body81.from.364:                                 ; preds = %bb.ai
  %i.fc = load ptr, ptr %i.er, align 8, !tbaa !71
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #35, !inline_history !2
  br label %.from..body81

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.ah, %bb.ag
  %.reload505 = load ptr, ptr %.spill.addr491, align 8, !tbaa !123 ; 4 uses
  %i.ff = load ptr, ptr %.reload505, align 8, !tbaa !128 ; 5 uses
  %.not.i.i165 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i165, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %.reload505, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !129 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ff, %i.fh
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i166

.lr.ph.i.i.i.i.i166:                              ; preds = %bb.aj, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.fi, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.fh, %bb.aj ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.fj = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !132 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i166
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = atomicrmw add ptr %i.fl, i64 -1 acq_rel, align 8
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.al, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !71
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #35, !inline_history !3
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #35
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak, %.lr.ph.i.i.i.i.i166
  %i.fr = load i8, ptr %i.fi, align 8
  %i.fs = trunc i8 %i.fr to i1
  br i1 %i.fs, label %bb.am, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.am:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.ft = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !67
  %i.fv = load i64, ptr %i.fi, align 8
  %i.fw = and i64 %i.fv, -2
  tail call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fw) #40
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.am, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i167 = icmp eq ptr %i.ff, %i.fi
  br i1 %.not.i.i.i.i.i167, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i166

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload501 = load ptr, ptr %.spill.addr491, align 8, !tbaa !123 ; 2 uses
  %.pre.i.i = load ptr, ptr %.reload501, align 8, !tbaa !128
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.aj, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %.reload499 = phi ptr [ %.reload501, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload505, %bb.aj ] ; 2 uses
  %i.fx = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.ff, %bb.aj ] ; 2 uses
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !129
  %i.fy = getelementptr inbounds nuw i8, ptr %.reload499, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !133
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  tail call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gc) #40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload499, i8 0, i64 24, i1 false)
  %.reload497.pre = load ptr, ptr %.spill.addr491, align 8, !tbaa !123
  br label %bb.an

bb.an:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i
  %.reload497 = phi ptr [ %.reload505, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ], [ %.reload497.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.reload497, i64 8
  %i.gf = load <2 x ptr>, ptr %.reload.addr511, align 8, !tbaa !133
  store <2 x ptr> %i.gf, ptr %.reload497, align 8, !tbaa !133
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 4 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !133
  %i.gi = getelementptr inbounds nuw i8, ptr %.reload497, i64 16
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr511, i8 0, i64 24, i1 false)
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  invoke void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %13)
          to label %bb.ao unwind label %.from.426

bb.ao:                                            ; preds = %bb.an
  %.reload509 = load ptr, ptr %.spill.addr491, align 8, !tbaa !123 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.reload509, i64 172
  %i.gk = getelementptr inbounds nuw i8, ptr %.reload509, i64 204 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 4, !tbaa !136, !range !137, !noundef !138
  %i.gm = trunc nuw i8 %i.gl to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %i.gj, ptr noundef nonnull align 4 dereferenceable(32) %13, i64 32, i1 false)
  br i1 %i.gm, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.gk, align 4, !tbaa !136
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit: ; preds = %bb.ap, %bb.ao
  %.reload507 = load ptr, ptr %.spill.addr491, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  %i.gn = load ptr, ptr %.reload507, align 8, !tbaa !128 ; 2 uses
  %i.go = load ptr, ptr %i.ge, align 8, !tbaa !129
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 72
  store ptr %i.gn, ptr %.reload.addr519, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 664
  store i64 %i.gs, ptr %i.gt, align 8
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr510, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr519)
          to label %.noexc84 unwind label %.body85.from.416

.noexc84:                                         ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.gu = load ptr, ptr %.reload.addr510, align 8, !tbaa !141
  %i.gv = load i64, ptr %i.dd, align 8, !tbaa !142
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr511, ptr %i.gu, i64 %i.gv)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %.noexc84
  %i.gw = load i64, ptr %i.eq, align 8, !tbaa !143 ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, 5
  br i1 %i.gx, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gy = load ptr, ptr %.reload.addr510, align 8, !tbaa !141
  %i.gz = mul i64 %i.gw, 24
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.gz) #40
  br label %bb.au

bb.as:                                            ; preds = %.noexc84
  %i.ha = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.hb = load i64, ptr %i.eq, align 8, !tbaa !143 ; 2 uses
  %i.hc = icmp ugt i64 %i.hb, 5
  br i1 %i.hc, label %bb.at, label %.thread233.from.438

bb.at:                                            ; preds = %bb.as
  %i.hd = load ptr, ptr %.reload.addr510, align 8, !tbaa !141
  %i.he = mul i64 %i.hb, 24
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.he) #40
  br label %.thread233.from.438

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %.reload486 = load i8, ptr %.spill.addr484, align 1, !tbaa !123
  %.reload483 = load i64, ptr %.spill.addr481, align 8, !tbaa !123
  %i.hf = zext i8 %.reload486 to i64
  %i.hg = mul i64 %.reload483, %i.hf              ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 705
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !66
  %i.hj = icmp eq i8 %i.hi, 1
  %i.hk = load i64, ptr %i.gg, align 8, !tbaa !142 ; 9 uses
  %i.hl = icmp ugt i64 %i.hk, 5                   ; 2 uses
  br i1 %i.hj, label %bb.av, label %bb.bh

bb.av:                                            ; preds = %bb.au
  br i1 %i.hl, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.hm = icmp ugt i64 %i.hk, 768614336404564650
  br i1 %i.hm, label %bb.ax, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #39
          to label %.noexc88 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385

.noexc88:                                         ; preds = %bb.ax
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i: ; preds = %bb.aw
  %i.hn = mul nuw i64 %i.hk, 24
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #38
          to label %.noexc89 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385 ; 2 uses

.noexc89:                                         ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  store ptr %i.ho, ptr %.reload.addr512, align 8, !tbaa !141
  %i.hp = load i64, ptr %i.gg, align 8, !tbaa !142 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !143
  %.not.i.i.i.i.i87 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i.i.i87, label %.from..noexc89, label %.from..sink.split

bb.ay:                                            ; preds = %bb.av
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 5, ptr %i.hr, align 8, !tbaa !143
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  store ptr %i.hs, ptr %.reload.addr512, align 8, !tbaa !141
  %.not.i11.i.i.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i11.i.i.i.i, label %.from..noexc89, label %.from..sink.split

.from..sink.split:                                ; preds = %.noexc89, %bb.ay
  %.sink284 = phi i64 [ %i.hp, %.noexc89 ], [ %i.hk, %bb.ay ] ; 2 uses
  %.sink = phi ptr [ %i.ho, %.noexc89 ], [ %i.hs, %bb.ay ]
  %.idx.i.i.i.i = mul nsw i64 %.sink284, 24
  %i.ht = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, ptr noundef nonnull align 8 dereferenceable(1) %i.ht, i64 %.idx.i.i.i.i, i1 false)
  br label %.from..noexc89

.from..noexc89:                                   ; preds = %bb.ay, %.noexc89, %.from..sink.split
  %i.hu = phi i64 [ %.sink284, %.from..sink.split ], [ 0, %.noexc89 ], [ 0, %bb.ay ]
  %.reload488 = load i8, ptr %.spill.addr484, align 1, !tbaa !123 ; 2 uses
  %.reload473 = load ptr, ptr %.spill.addr471, align 8, !tbaa !123
  %.reload470 = load i32, ptr %.spill.addr, align 4, !tbaa !123
  %i.hv = zext i8 %.reload488 to i64
  %i.hw = icmp eq i8 %.reload488, 4
  %i.hx = select i1 %i.hw, i32 2, i32 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 %i.hu, ptr %i.hy, align 8, !tbaa !142
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr510, ptr nonnull %.reload473, i64 %i.hg, i64 noundef %i.hv, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr512, i32 noundef %i.hx, i32 noundef %.reload470, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.az unwind label %.from.379

bb.az:                                            ; preds = %.from..noexc89
  %i.hz = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load atomic i32, ptr %i.ia acquire, align 4
  %i.ic = icmp slt i32 %i.ib, 2
  br i1 %i.ic, label %bb.ba, label %AfterCoroSave294

bb.ba:                                            ; preds = %bb.az
  %i.id = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = atomicrmw add ptr %i.ie, i32 -1 acq_rel, align 4
  %i.ig = icmp slt i32 %i.if, 1
  br i1 %i.ig, label %bb.bb, label %.thread219.sink.split

bb.bb:                                            ; preds = %bb.ba
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i94 unwind label %.from..loopexit.split-lp.i.i91

.noexc.i.i94:                                     ; preds = %bb.bb
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !104 ; 7 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !111
  %i.ik = and i32 %i.ij, 8
  %.not.i.i.i.i95 = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i.i.i95, label %bb.bc, label %.thread219.sink.split

bb.bc:                                            ; preds = %.noexc.i.i94
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !112 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !113 ; 2 uses
  %.not12.i.i.i.i.i96 = icmp eq ptr %i.im, %i.io
  br i1 %.not12.i.i.i.i.i96, label %.thread219.sink.split, label %.from..lr.ph.i.i.i.i.i97

.from..lr.ph.i.i.i.i.i97:                         ; preds = %bb.bc
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ii, i64 33
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  br label %.from..noexc2.i.i101

.from..noexc2.i.i101:                             ; preds = %.noexc2.i.i101, %.from..lr.ph.i.i.i.i.i97
  %.sroa.09.013.i.i.i.i.i98 = phi ptr [ %i.im, %.from..lr.ph.i.i.i.i.i97 ], [ %i.je, %.noexc2.i.i101 ] ; 2 uses
  %i.it = load ptr, ptr %.sroa.09.013.i.i.i.i.i98, align 8, !tbaa !116 ; 2 uses
  %i.iu = load i8, ptr %i.ip, align 8             ; 2 uses
  %i.iv = trunc i8 %i.iu to i1                    ; 2 uses
  %i.iw = load ptr, ptr %i.iq, align 8
  %i.ix = select i1 %i.iv, ptr %i.iw, ptr %i.ir
  %i.iy = load i64, ptr %i.is, align 8
  %i.iz = lshr i8 %i.iu, 1
  %i.ja = zext nneg i8 %i.iz to i64
  %i.jb = select i1 %i.iv, i64 %i.iy, i64 %i.ja
  %i.jc = load ptr, ptr %i.it, align 8, !tbaa !71
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.it, ptr %i.ix, i64 %i.jb, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i101 unwind label %.from..loopexit.i.i99, !inline_history !0

.noexc2.i.i101:                                   ; preds = %.from..noexc2.i.i101
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i98, i64 16 ; 2 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %i.je, %i.io
  br i1 %.not.i.i.i.i.i102, label %.thread219.sink.split, label %.from..noexc2.i.i101

.from..loopexit.i.i99:                            ; preds = %.from..noexc2.i.i101
  %lpad.loopexit.i.i100 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bd

.from..loopexit.split-lp.i.i91:                   ; preds = %bb.bb
  %lpad.loopexit.split-lp.i.i92 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bd

bb.bd:                                            ; preds = %.from..loopexit.split-lp.i.i91, %.from..loopexit.i.i99
  %lpad.phi.i.i93 = phi { ptr, i32 } [ %lpad.loopexit.i.i100, %.from..loopexit.i.i99 ], [ %lpad.loopexit.split-lp.i.i92, %.from..loopexit.split-lp.i.i91 ]
  %i.jf = extractvalue { ptr, i32 } %lpad.phi.i.i93, 0
  call void @__clang_call_terminate(ptr %i.jf) #41
  unreachable

AfterCoroSave294:                                 ; preds = %bb.az
  %index.addr526 = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i8 1, ptr %index.addr526, align 8
  %i.jg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr510, ptr nonnull %i.a) #35
  br i1 %i.jg, label %AfterCoroEnd, label %bb.be

.body81.from.367:                                 ; preds = %bb.af
  %i.jh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body81

.from..body81:                                    ; preds = %.body81.from.367, %.body81.from.364, %bb.ai
  %eh.lpad-body82 = phi { ptr, i32 } [ %i.jh, %.body81.from.367 ], [ %i.ey, %.body81.from.364 ], [ %i.ey, %bb.ai ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %.thread233.from.438

.from.426:                                        ; preds = %bb.an
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %.thread233.from.438

.body85.from.416:                                 ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread233.from.438

_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385: ; preds = %bb.ax, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

.from.379:                                        ; preds = %.from..noexc89
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

bb.be:                                            ; preds = %AfterCoroSave294
  %.pr217 = load ptr, ptr %.reload.addr510, align 8, !tbaa !145 ; 3 uses
  %.not.i103 = icmp eq ptr %.pr217, null
  br i1 %.not.i103, label %.thread219, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jm = getelementptr inbounds nuw i8, ptr %.pr217, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  invoke void %i.jn(ptr nonnull %.pr217)
          to label %.thread219.sink.split unwind label %.from.376, !inline_history !4

.thread219.sink.split:                            ; preds = %.noexc2.i.i101, %bb.bf, %bb.bc, %.noexc.i.i94, %bb.ba
  store ptr null, ptr %.reload.addr510, align 8, !tbaa !145
  br label %.thread219

.thread219:                                       ; preds = %.thread219.sink.split, %bb.be
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.376

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread219
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !143 ; 2 uses
  %i.jq = icmp ugt i64 %i.jp, 5
  br i1 %i.jq, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from.376:                                        ; preds = %bb.bf, %.thread219
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %bb.bg

bb.bg:                                            ; preds = %.from.376, %.from.379
  %.pn60 = phi { ptr, i32 } [ %i.jr, %.from.376 ], [ %i.jl, %.from.379 ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !143 ; 2 uses
  %i.ju = icmp ugt i64 %i.jt, 5
  br i1 %i.ju, label %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.:   ; preds = %bb.bg
  %i.jv = load ptr, ptr %.reload.addr512, align 8, !tbaa !141
  %i.jw = mul i64 %i.jt, 24
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jw) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

bb.bh:                                            ; preds = %bb.au
  br i1 %i.hl, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.jx = icmp ugt i64 %i.hk, 768614336404564650
  br i1 %i.jx, label %bb.bj, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #39
          to label %.noexc115 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407

.noexc115:                                        ; preds = %bb.bj
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111: ; preds = %bb.bi
  %i.jy = mul nuw i64 %i.hk, 24
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #38
          to label %.noexc116 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407 ; 2 uses

.noexc116:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111
  store ptr %i.jz, ptr %.reload.addr513, align 8, !tbaa !141
  %i.ka = load i64, ptr %i.gg, align 8, !tbaa !142 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 %i.ka, ptr %i.kb, align 8, !tbaa !143
  %.not.i.i.i.i.i112 = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i.i.i.i112, label %.from..noexc116, label %.from..sink.split285

bb.bk:                                            ; preds = %bb.bh
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 5, ptr %i.kc, align 8, !tbaa !143
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  store ptr %i.kd, ptr %.reload.addr513, align 8, !tbaa !141
  %.not.i11.i.i.i.i107 = icmp eq i64 %i.hk, 0
  br i1 %.not.i11.i.i.i.i107, label %.from..noexc116, label %.from..sink.split285

.from..sink.split285:                             ; preds = %.noexc116, %bb.bk
  %.sink289 = phi i64 [ %i.ka, %.noexc116 ], [ %i.hk, %bb.bk ] ; 2 uses
  %.sink287 = phi ptr [ %i.jz, %.noexc116 ], [ %i.kd, %bb.bk ]
  %.idx.i.i.i.i109 = mul nsw i64 %.sink289, 24
  %i.ke = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink287, ptr noundef nonnull align 8 dereferenceable(1) %i.ke, i64 %.idx.i.i.i.i109, i1 false)
  br label %.from..noexc116

.from..noexc116:                                  ; preds = %bb.bk, %.noexc116, %.from..sink.split285
  %i.kf = phi i64 [ %.sink289, %.from..sink.split285 ], [ 0, %.noexc116 ], [ 0, %bb.bk ]
  %.reload490 = load i8, ptr %.spill.addr484, align 1, !tbaa !123 ; 2 uses
  %.reload475 = load ptr, ptr %.spill.addr471, align 8, !tbaa !123
  %.reload = load i32, ptr %.spill.addr, align 4, !tbaa !123
  %i.kg = zext i8 %.reload490 to i64
  %i.kh = icmp eq i8 %.reload490, 4
  %i.ki = select i1 %i.kh, i32 2, i32 3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 %i.kf, ptr %i.kj, align 8, !tbaa !142
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr510, ptr nonnull %.reload475, i64 %i.hg, i64 noundef %i.kg, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr513, i32 noundef %i.ki, i32 noundef %.reload, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.bl unwind label %.from.401

bb.bl:                                            ; preds = %.from..noexc116
  %i.kk = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load atomic i32, ptr %i.kl acquire, align 4
  %i.kn = icmp slt i32 %i.km, 2
  br i1 %i.kn, label %bb.bm, label %AfterCoroSave298

bb.bm:                                            ; preds = %bb.bl
  %i.ko = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = atomicrmw add ptr %i.kp, i32 -1 acq_rel, align 4
  %i.kr = icmp slt i32 %i.kq, 1
  br i1 %i.kr, label %bb.bn, label %.thread225.sink.split

bb.bn:                                            ; preds = %bb.bm
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i122 unwind label %.from..loopexit.split-lp.i.i119

.noexc.i.i122:                                    ; preds = %bb.bn
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !104 ; 7 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !111
  %i.kv = and i32 %i.ku, 8
  %.not.i.i.i.i123 = icmp eq i32 %i.kv, 0
  br i1 %.not.i.i.i.i123, label %bb.bo, label %.thread225.sink.split

bb.bo:                                            ; preds = %.noexc.i.i122
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !112 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !113 ; 2 uses
  %.not12.i.i.i.i.i124 = icmp eq ptr %i.kx, %i.kz
  br i1 %.not12.i.i.i.i.i124, label %.thread225.sink.split, label %.from..lr.ph.i.i.i.i.i125

.from..lr.ph.i.i.i.i.i125:                        ; preds = %bb.bo
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 33
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  br label %.from..noexc2.i.i129

.from..noexc2.i.i129:                             ; preds = %.noexc2.i.i129, %.from..lr.ph.i.i.i.i.i125
  %.sroa.09.013.i.i.i.i.i126 = phi ptr [ %i.kx, %.from..lr.ph.i.i.i.i.i125 ], [ %i.lp, %.noexc2.i.i129 ] ; 2 uses
  %i.le = load ptr, ptr %.sroa.09.013.i.i.i.i.i126, align 8, !tbaa !116 ; 2 uses
  %i.lf = load i8, ptr %i.la, align 8             ; 2 uses
  %i.lg = trunc i8 %i.lf to i1                    ; 2 uses
  %i.lh = load ptr, ptr %i.lb, align 8
  %i.li = select i1 %i.lg, ptr %i.lh, ptr %i.lc
  %i.lj = load i64, ptr %i.ld, align 8
  %i.lk = lshr i8 %i.lf, 1
  %i.ll = zext nneg i8 %i.lk to i64
  %i.lm = select i1 %i.lg, i64 %i.lj, i64 %i.ll
  %i.ln = load ptr, ptr %i.le, align 8, !tbaa !71
  %i.lo = load ptr, ptr %i.ln, align 8
  invoke void %i.lo(ptr noundef nonnull align 8 dereferenceable(8) %i.le, ptr %i.li, i64 %i.lm, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i129 unwind label %.from..loopexit.i.i127, !inline_history !0

.noexc2.i.i129:                                   ; preds = %.from..noexc2.i.i129
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i126, i64 16 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.lp, %i.kz
  br i1 %.not.i.i.i.i.i130, label %.thread225.sink.split, label %.from..noexc2.i.i129

.from..loopexit.i.i127:                           ; preds = %.from..noexc2.i.i129
  %lpad.loopexit.i.i128 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bp

.from..loopexit.split-lp.i.i119:                  ; preds = %bb.bn
  %lpad.loopexit.split-lp.i.i120 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bp

bb.bp:                                            ; preds = %.from..loopexit.split-lp.i.i119, %.from..loopexit.i.i127
  %lpad.phi.i.i121 = phi { ptr, i32 } [ %lpad.loopexit.i.i128, %.from..loopexit.i.i127 ], [ %lpad.loopexit.split-lp.i.i120, %.from..loopexit.split-lp.i.i119 ]
  %i.lq = extractvalue { ptr, i32 } %lpad.phi.i.i121, 0
  call void @__clang_call_terminate(ptr %i.lq) #41
  unreachable

AfterCoroSave298:                                 ; preds = %bb.bl
  %index.addr527 = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i8 2, ptr %index.addr527, align 8
  %i.lr = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr510, ptr nonnull %i.a) #35
  br i1 %i.lr, label %AfterCoroEnd, label %bb.bq

_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407: ; preds = %bb.bj, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

.from.401:                                        ; preds = %.from..noexc116
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bs

bb.bq:                                            ; preds = %AfterCoroSave298
  %.pr223 = load ptr, ptr %.reload.addr510, align 8, !tbaa !145 ; 3 uses
  %.not.i132 = icmp eq ptr %.pr223, null
  br i1 %.not.i132, label %.thread225, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lu = getelementptr inbounds nuw i8, ptr %.pr223, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  invoke void %i.lv(ptr nonnull %.pr223)
          to label %.thread225.sink.split unwind label %.from.398, !inline_history !4

.thread225.sink.split:                            ; preds = %.noexc2.i.i129, %bb.br, %bb.bo, %.noexc.i.i122, %bb.bm
  store ptr null, ptr %.reload.addr510, align 8, !tbaa !145
  br label %.thread225

.thread225:                                       ; preds = %.thread225.sink.split, %bb.bq
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit135 unwind label %.from.398

_ZN3tev4TaskIvE12await_resumeEv.exit135:          ; preds = %.thread225
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !143 ; 2 uses
  %i.ly = icmp ugt i64 %i.lx, 5
  br i1 %i.ly, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from.398:                                        ; preds = %bb.br, %.thread225
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %bb.bs

bb.bs:                                            ; preds = %.from.398, %.from.401
  %.pn59 = phi { ptr, i32 } [ %i.lz, %.from.398 ], [ %i.lt, %.from.401 ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !143 ; 2 uses
  %i.mc = icmp ugt i64 %i.mb, 5
  br i1 %i.mc, label %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.:   ; preds = %bb.bs
  %i.md = load ptr, ptr %.reload.addr513, align 8, !tbaa !141
  %i.me = mul i64 %i.mb, 24
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.me) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink594 = phi i64 [ %i.jp, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.lx, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink592.in = phi ptr [ %.reload.addr512, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr513, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink290.ph = phi i16 [ 264, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ 269, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink592 = load ptr, ptr %.sink592.in, align 8, !tbaa !141
  %i.mf = mul i64 %.sink594, 24
  call void @_ZdlPvm(ptr noundef %.sink592, i64 noundef %i.mf) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from._ZN3tev16MultiChannelViewIfED2Ev.exit:      ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink290 = phi i16 [ 264, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ 269, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ], [ %.sink290.ph, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split ]
  %.reload493 = load ptr, ptr %.spill.addr491, align 8, !tbaa !123 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.reload493, i64 84
  store i8 1, ptr %i.mg, align 4, !tbaa !183
  %i.mh = getelementptr inbounds nuw i8, ptr %.reload493, i64 208
  store i16 %.sink290, ptr %i.mh, align 8
  %i.mi = load ptr, ptr %.reload.addr524, align 8, !tbaa !75 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #39
          to label %.noexc.i unwind label %bb.bv

.noexc.i:                                         ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.mi, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr517)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.mk = landingpad { ptr, i32 }
          catch ptr null
  %i.ml = extractvalue { ptr, i32 } %i.mk, 0
  call void @__clang_call_terminate(ptr %i.ml) #41
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.bu
  %i.mm = load i64, ptr %i.gd, align 8, !tbaa !143 ; 2 uses
  %i.mn = icmp ugt i64 %i.mm, 5
  br i1 %i.mn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.mo = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  %i.mp = mul i64 %i.mm, 24
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mp) #40
  br label %bb.bx

.from._ZN3tev16MultiChannelViewIfED2Ev.exit106:   ; preds = %bb.bs, %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from., %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407, %bb.bg, %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from., %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385
  %.pn61 = phi { ptr, i32 } [ %.pn60, %bb.bg ], [ %i.jk, %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385 ], [ %.pn60, %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from. ], [ %i.ls, %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407 ], [ %.pn59, %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from. ], [ %.pn59, %bb.bs ] ; 2 uses
  %i.mq = load i64, ptr %i.gd, align 8, !tbaa !143 ; 2 uses
  %i.mr = icmp ugt i64 %i.mq, 5
  br i1 %i.mr, label %.body85.from., label %.thread233.from.438

.body85.from.:                                    ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106
  %i.ms = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  %i.mt = mul i64 %i.mq, 24
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mt) #40
  br label %.thread233.from.438

bb.bx:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit, %bb.bw
  %i.mu = load ptr, ptr %.reload.addr517, align 8, !tbaa !101 ; 5 uses
  %.not.i.i140 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i140, label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 624 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !184 ; 2 uses
  %.not6.i.i.i.i141 = icmp eq ptr %i.mu, %i.mw
  br i1 %.not6.i.i.i.i141, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i142

.lr.ph.i.i.i.i142:                                ; preds = %bb.by, %.lr.ph.i.i.i.i142
  %.07.i.i.i.i143 = phi ptr [ %i.mx, %.lr.ph.i.i.i.i142 ], [ %i.mw, %bb.by ]
  %i.mx = getelementptr inbounds i8, ptr %.07.i.i.i.i143, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.mx) #35
  %.not.i.i.i.i144 = icmp eq ptr %i.mu, %i.mx
  br i1 %.not.i.i.i.i144, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i142

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i142
  %.pre1.i.i145 = load ptr, ptr %.reload.addr517, align 8, !tbaa !101
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.by, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.my = phi ptr [ %.pre1.i.i145, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.mu, %bb.by ] ; 2 uses
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !184
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !185
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nd) #40
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit: ; preds = %bb.bx, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i
  %.reload477 = load ptr, ptr %.spill.addr471, align 8, !tbaa !123
  call void @free(ptr noundef nonnull %.reload477) #35, !inline_history !5
  br label %bb.ca

.thread233.from.438:                              ; preds = %.from.426, %.from.370, %.from..body81, %.body85.from.416, %.body85.from., %bb.as, %bb.at, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106
  %.pn61.pn.pn = phi { ptr, i32 } [ %i.en, %.from.370 ], [ %i.ji, %.from.426 ], [ %eh.lpad-body82, %.from..body81 ], [ %.pn61, %.body85.from. ], [ %i.jj, %.body85.from.416 ], [ %i.ha, %bb.at ], [ %i.ha, %bb.as ], [ %.pn61, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106 ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr517) #35
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233

_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233: ; preds = %.thread233.from..thread237, %.thread233.from.438, %.thread233.from.435, %.thread233.from.433, %.thread233.from., %.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78, %.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit75, %.split206, %.split210
  %.pn63.pn236 = phi { ptr, i32 } [ %i.em, %.thread233.from..thread237 ], [ %.pn61.pn.pn, %.thread233.from.438 ], [ %i.ce, %.split206 ], [ %i.cs, %.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78 ], [ %.pn62209, %.thread233.from. ], [ %i.bw, %.thread233.from.435 ], [ %.pn63205, %.thread233.from.433 ], [ %i.cb, %.thread233.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit75 ], [ %i.cv, %.split210 ]
  %.reload479 = load ptr, ptr %.spill.addr471, align 8, !tbaa !123
  call void @free(ptr noundef nonnull %.reload479) #35, !inline_history !5
  br label %.from..split442

.from..split442:                                  ; preds = %.split202, %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit72, %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from., %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233, %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit447, %.from.445, %.from.450
  %.pn64.pn = phi { ptr, i32 } [ %.pn64198, %.from.450 ], [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit447 ], [ %i.ay, %.split ], [ %i.aq, %.from.445 ], [ %.pn57201, %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from. ], [ %.pn63.pn236, %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from..thread233 ], [ %i.bk, %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit148.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit72 ], [ %i.bn, %.split202 ]
  %.18 = extractvalue { ptr, i32 } %.pn64.pn, 0
  %i.ne = call ptr @__cxa_begin_catch(ptr %.18) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr524)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %.from..split442
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %.from.459

bb.ca:                                            ; preds = %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, %bb.bz
  %i.nf = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = atomicrmw add ptr %i.ng, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ni = icmp slt i32 %i.nh, 1
  br i1 %i.ni, label %bb.cb, label %_ZN3tev5Latch9countDownEv.exit.i149

bb.cb:                                            ; preds = %bb.ca
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i154 unwind label %.from..loopexit.split-lp.i.i151

.noexc.i.i154:                                    ; preds = %bb.cb
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !104 ; 7 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !111
  %i.nm = and i32 %i.nl, 8
  %.not.i.i.i.i155 = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i.i.i155, label %bb.cc, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.cc:                                            ; preds = %.noexc.i.i154
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !112 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !113 ; 2 uses
  %.not12.i.i.i.i.i156 = icmp eq ptr %i.no, %i.nq
  br i1 %.not12.i.i.i.i.i156, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i157

.from..lr.ph.i.i.i.i.i157:                        ; preds = %bb.cc
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nk, i64 33
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  br label %.from..noexc2.i.i161

.from..noexc2.i.i161:                             ; preds = %.noexc2.i.i161, %.from..lr.ph.i.i.i.i.i157
  %.sroa.09.013.i.i.i.i.i158 = phi ptr [ %i.no, %.from..lr.ph.i.i.i.i.i157 ], [ %i.og, %.noexc2.i.i161 ] ; 2 uses
  %i.nv = load ptr, ptr %.sroa.09.013.i.i.i.i.i158, align 8, !tbaa !116 ; 2 uses
  %i.nw = load i8, ptr %i.nr, align 8             ; 2 uses
  %i.nx = trunc i8 %i.nw to i1                    ; 2 uses
  %i.ny = load ptr, ptr %i.ns, align 8
  %i.nz = select i1 %i.nx, ptr %i.ny, ptr %i.nt
  %i.oa = load i64, ptr %i.nu, align 8
  %i.ob = lshr i8 %i.nw, 1
  %i.oc = zext nneg i8 %i.ob to i64
  %i.od = select i1 %i.nx, i64 %i.oa, i64 %i.oc
  %i.oe = load ptr, ptr %i.nv, align 8, !tbaa !71
  %i.of = load ptr, ptr %i.oe, align 8
  invoke void %i.of(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr %i.nz, i64 %i.od, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i161 unwind label %.from..loopexit.i.i159, !inline_history !0

.noexc2.i.i161:                                   ; preds = %.from..noexc2.i.i161
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i158, i64 16 ; 2 uses
  %.not.i.i.i.i.i162 = icmp eq ptr %i.og, %i.nq
  br i1 %.not.i.i.i.i.i162, label %_ZN3tev5Latch9countDownEv.exit.i149, label %.from..noexc2.i.i161

.from..loopexit.i.i159:                           ; preds = %.from..noexc2.i.i161
  %lpad.loopexit.i.i160 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cd

.from..loopexit.split-lp.i.i151:                  ; preds = %bb.cb
  %lpad.loopexit.split-lp.i.i152 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cd

bb.cd:                                            ; preds = %.from..loopexit.split-lp.i.i151, %.from..loopexit.i.i159
  %lpad.phi.i.i153 = phi { ptr, i32 } [ %lpad.loopexit.i.i160, %.from..loopexit.i.i159 ], [ %lpad.loopexit.split-lp.i.i152, %.from..loopexit.split-lp.i.i151 ]
  %i.oh = extractvalue { ptr, i32 } %lpad.phi.i.i153, 0
  call void @__clang_call_terminate(ptr %i.oh) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i149:              ; preds = %.noexc2.i.i161, %bb.ca
  %i.oi = icmp slt i32 %i.nh, 2
  br i1 %i.oi, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %.noexc.i.i154, %bb.cc, %_ZN3tev5Latch9countDownEv.exit.i149
  %i.oj = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !186 ; 2 uses
  %i.ol = inttoptr i64 %i.ok to ptr               ; 3 uses
  store ptr %i.ol, ptr %.reload.addr511, align 8
  %.not.i163 = icmp eq i64 %i.ok, 0
  br i1 %.not.i163, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %AfterCoroSuspend304

AfterCoroSuspend304:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr528 = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i8 3, ptr %index.addr528, align 8
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr nonnull %i.ol)
  br label %AfterCoroEnd

bb.ce:                                            ; preds = %.from..split442
  %i.on = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.466 unwind label %bb.ch

.from.459:                                        ; preds = %bb.bz
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.466

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i149
  %i.op = load ptr, ptr %i.k, align 8, !tbaa !82  ; 5 uses
  %.not.i.i164 = icmp eq ptr %i.op, null
  br i1 %.not.i.i164, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = atomicrmw add ptr %i.oq, i64 -1 acq_rel, align 8
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %bb.cg, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.cg:                                            ; preds = %bb.cf
  %i.ot = load ptr, ptr %i.op, align 8, !tbaa !71
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(24) %i.op) #35, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.op) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, %bb.cf, %bb.cg
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr524) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 736) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSuspend304, %AfterCoroSave298, %AfterCoroSave294, %AfterCoroSave
  ret void

.body.from.466:                                   ; preds = %bb.ce, %.from.459
  %.pn65 = phi { ptr, i32 } [ %i.oo, %.from.459 ], [ %i.on, %bb.ce ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr524) #35
  br label %.body

.body:                                            ; preds = %.body.from.466, %.body.from.463, %.body.from.
  %.merged67 = phi { ptr, i32 } [ %.pn65, %.body.from.466 ], [ %i.f, %.body.from. ], [ %i.e, %.body.from.463 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 736) #35
  resume { ptr, i32 } %.merged67

bb.ch:                                            ; preds = %bb.ce
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #41
  unreachable

bb.ci:                                            ; preds = %bb.v, %bb.q, %bb.k, %bb.f
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind noalias writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %1, align 8, !tbaa !75, !noalias !485 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #39
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !192, !noalias !485 ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc1
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 1) #39
          to label %bb.e unwind label %bb.f, !noalias !485

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #35, !noalias !485
  br label %.body

bb.g:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !485 ; 0 uses
  %i.k = or disjoint i32 %i.f, 2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !192, !noalias !485
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #35, !noalias !485
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !186
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !194
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !186
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !186
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
  tail call void @__clang_call_terminate(ptr %i.u) #41
  unreachable
}

declare { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #38 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !67
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !67
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

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit: ; preds = %bb.d, %bb.e
  %.018.i = phi ptr [ %i.n, %bb.d ], [ %.017.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.a
  store i8 0, ptr %i.o, align 1, !tbaa !67
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm:.from.
  %i.ba = load i64, ptr %.reload.addr133, align 8
  %i.bb = sub i64 %.sroa.speculated, %i.ba
  %i.bc = select i1 %i.az, i64 %i.bb, i64 0
  %.055 = add i64 %i.bc, %i.ax                    ; 2 uses
  %i.bd = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !207
  %i.be = icmp ult i64 %i.bd, %.055
  br i1 %i.be, label %bb.m, label %bb.q

.from.110:                                        ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.bh = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !207
  store i64 %.055, ptr %.reload.addr130, align 16, !tbaa !67, !noalias !516
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 %i.bh, ptr %i.bi, align 16, !tbaa !67, !noalias !516
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.92, i64 68, i64 68, ptr nonnull %.reload.addr130)
          to label %bb.n unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
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
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !67
  %i.bt = load i64, ptr %11, align 8
  %i.bu = and i64 %i.bt, -2
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br i1 %.0147, label %.from.104, label %.from..split107

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %.thread145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %.from..split107

.from.104.sink.split:                             ; preds = %bb.p, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn2558.ph = phi { ptr, i32 } [ %i.bj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.bk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %.from.104

.from.104:                                        ; preds = %.from.104.sink.split, %.split
  %.pn2558 = phi { ptr, i32 } [ %i.bq, %.split ], [ %.pn2558.ph, %.from.104.sink.split ]
  call void @__cxa_free_exception(ptr %i.bg) #35
  br label %.from..split107

bb.q:                                             ; preds = %bb.l
  %i.bv = icmp eq i64 %.sroa.speculated, 0
  %.not = icmp ne i32 %i.ay, 3                    ; 2 uses
  %.neg = sext i1 %.not to i64
  %i.bw = add i64 %.sroa.speculated, %.neg
  %i.bx = select i1 %i.bv, i64 0, i64 %i.bw
  store i64 %i.bx, ptr %.reload.addr136, align 8, !tbaa !200
  %i.by = zext i1 %.not to i8
  store i8 %i.by, ptr %.reload.addr141, align 1, !tbaa !208
  %i.bz = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !209

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #35
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.t unwind label %.body31.from.98

bb.t:                                             ; preds = %bb.s
  %i.cc = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #35
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body31.from.98:                                  ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #35
  br label %.from..split107

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.t, %bb.r, %bb.q
  %i.ce = load i32, ptr %i.au, align 4, !tbaa !68
  %i.cf = load i64, ptr %.reload.addr136, align 8, !tbaa !200
  %i.cg = mul i64 %i.cf, %i.as
  store <8 x ptr> %i.b, ptr %12, align 8, !tbaa !186
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.reload.addr138, ptr %i.ch, align 8, !tbaa !186
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %.reload.addr136, ptr %i.ci, align 8, !tbaa !211
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr130, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.ce, i64 noundef %i.cg, ptr noundef nonnull byval(%class.anon.273) align 8 %12, i32 noundef %6)
          to label %bb.u unwind label %.body31.from.

bb.u:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !81
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load atomic i32, ptr %i.cl acquire, align 4
  %i.cn = icmp slt i32 %i.cm, 2
  br i1 %i.cn, label %bb.v, label %AfterCoroSave

bb.v:                                             ; preds = %bb.u
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = atomicrmw add ptr %i.cp, i32 -1 acq_rel, align 4
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.w
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !104 ; 7 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !111
  %i.cv = and i32 %i.cu, 8
  %.not.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %.thread.sink.split

bb.x:                                             ; preds = %.noexc.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !112 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !113 ; 2 uses
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
  %i.de = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.df = load i8, ptr %i.da, align 8             ; 2 uses
  %i.dg = trunc i8 %i.df to i1                    ; 2 uses
  %i.dh = load ptr, ptr %i.db, align 8
  %i.di = select i1 %i.dg, ptr %i.dh, ptr %i.dc
  %i.dj = load i64, ptr %i.dd, align 8
  %i.dk = lshr i8 %i.df, 1
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = select i1 %i.dg, i64 %i.dj, i64 %i.dl
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !71
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr %i.di, i64 %i.dm, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

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
  call void @__clang_call_terminate(ptr %i.dq) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.u
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %index.addr143, align 4
  %i.dr = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr130, ptr nonnull %i.a) #35
  br i1 %i.dr, label %AfterCoroEnd, label %bb.z

.body31.from.:                                    ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.z:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr130, align 8, !tbaa !145 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body31.from.101, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.aa, %bb.x, %.noexc.i.i, %bb.v
  store ptr null, ptr %.reload.addr130, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.ab unwind label %.body31.from.101

bb.ab:                                            ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

.body31.from.101:                                 ; preds = %bb.aa, %.thread
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #35
  br label %.from..split107

.from..split107:                                  ; preds = %.body31.from., %.body31.from.98, %.body31.from.101, %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %.from.104, %.from.110
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105 ], [ %i.bq, %.split ], [ %i.bf, %.from.110 ], [ %.pn2558, %.from.104 ], [ %i.dy, %.body31.from.101 ], [ %i.ds, %.body31.from. ], [ %i.cd, %.body31.from.98 ]
  %.5 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn.pn, 0
  %i.dz = call ptr @__cxa_begin_catch(ptr %.5) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %.from..split107
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.ab, %bb.ad
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 1
  br i1 %i.ed, label %bb.ae, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.ae:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.ae
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !104 ; 7 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !111
  %i.eh = and i32 %i.eg, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i.i41, label %bb.af, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.af:                                            ; preds = %.noexc.i.i40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !112 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !113 ; 2 uses
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
  %i.eq = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !116 ; 2 uses
  %i.er = load i8, ptr %i.em, align 8             ; 2 uses
  %i.es = trunc i8 %i.er to i1                    ; 2 uses
  %i.et = load ptr, ptr %i.en, align 8
  %i.eu = select i1 %i.es, ptr %i.et, ptr %i.eo
  %i.ev = load i64, ptr %i.ep, align 8
  %i.ew = lshr i8 %i.er, 1
  %i.ex = zext nneg i8 %i.ew to i64
  %i.ey = select i1 %i.es, i64 %i.ev, i64 %i.ex
  %i.ez = load ptr, ptr %i.eq, align 8, !tbaa !71
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr %i.eu, i64 %i.ey, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !0

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
  call void @__clang_call_terminate(ptr %i.fc) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fd = icmp slt i32 %i.ec, 2
  br i1 %i.fd, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i40, %bb.af, %_ZN3tev5Latch9countDownEv.exit.i36
  %i.fe = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !186 ; 2 uses
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
  %i.fk = load ptr, ptr %i.x, align 8, !tbaa !82  ; 5 uses
  %.not.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = atomicrmw add ptr %i.fl, i64 -1 acq_rel, align 8
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.aj, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !71
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ai, %bb.aj
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !143 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 5
  br i1 %i.ft, label %bb.ak, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.ak:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.fu = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.fv = mul i64 %i.fs, 24
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fv) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %bb.ak, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit, %AfterCoroSuspend81, %AfterCoroSave
  ret void

.body.from.127:                                   ; preds = %bb.ah, %.from.120
  %.pn26 = phi { ptr, i32 } [ %i.fj, %.from.120 ], [ %i.fi, %bb.ah ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #35
  br label %.body

.body:                                            ; preds = %.body.from., %.body.from.124, %.body.from.127
  %.merged29 = phi { ptr, i32 } [ %.pn26, %.body.from.127 ], [ %i.ah, %.body.from. ], [ %i.s, %.body.from.124 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !143 ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, 5
  br i1 %i.fy, label %bb.al, label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

bb.al:                                            ; preds = %.body
  %i.fz = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.ga = mul i64 %i.fx, 24
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.ga) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

_ZN3tev16MultiChannelViewIfED2Ev.exit50:          ; preds = %bb.al, %.body
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #35
  resume { ptr, i32 } %.merged29

bb.am:                                            ; preds = %bb.ah
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #41
  unreachable

bb.an:                                            ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !145
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.86, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #41
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  store ptr %1, ptr %i.c, align 8, !tbaa !186
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !111
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113  ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.af) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !145
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !145
end_hunk_1
begin_hunk_2_@_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm:.from.
  %i.bb = sub i64 %.sroa.speculated, %i.ba
  %i.bc = select i1 %i.az, i64 %i.bb, i64 0
  %.055 = add i64 %i.bc, %i.ax                    ; 2 uses
  %i.bd = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !207
  %i.be = icmp ult i64 %i.bd, %.055
  br i1 %i.be, label %bb.m, label %bb.q

.from.110:                                        ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.bh = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !207
  store i64 %.055, ptr %.reload.addr130, align 16, !tbaa !67, !noalias !532
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 %i.bh, ptr %i.bi, align 16, !tbaa !67, !noalias !532
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.92, i64 68, i64 68, ptr nonnull %.reload.addr130)
          to label %bb.n unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
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
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !67
  %i.bt = load i64, ptr %11, align 8
  %i.bu = and i64 %i.bt, -2
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br i1 %.0147, label %.from.104, label %.from..split107

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %.thread145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %.from..split107

.from.104.sink.split:                             ; preds = %bb.p, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn2558.ph = phi { ptr, i32 } [ %i.bj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.bk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %.from.104

.from.104:                                        ; preds = %.from.104.sink.split, %.split
  %.pn2558 = phi { ptr, i32 } [ %i.bq, %.split ], [ %.pn2558.ph, %.from.104.sink.split ]
  call void @__cxa_free_exception(ptr %i.bg) #35
  br label %.from..split107

bb.q:                                             ; preds = %bb.l
  %i.bv = icmp eq i64 %.sroa.speculated, 0
  %.not = icmp ne i32 %i.ay, 3                    ; 2 uses
  %.neg = sext i1 %.not to i64
  %i.bw = add i64 %.sroa.speculated, %.neg
  %i.bx = select i1 %i.bv, i64 0, i64 %i.bw
  store i64 %i.bx, ptr %.reload.addr136, align 8, !tbaa !200
  %i.by = zext i1 %.not to i8
  store i8 %i.by, ptr %.reload.addr141, align 1, !tbaa !208
  %i.bz = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !209

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #35
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.t unwind label %.body31.from.98

bb.t:                                             ; preds = %bb.s
  %i.cc = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #35 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #35
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body31.from.98:                                  ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #35
  br label %.from..split107

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.t, %bb.r, %bb.q
  %i.ce = load i32, ptr %i.au, align 4, !tbaa !68
  %i.cf = load i64, ptr %.reload.addr136, align 8, !tbaa !200
  %i.cg = shl i64 %i.as, 5
  %i.ch = mul i64 %i.cg, %i.cf
  store <8 x ptr> %i.b, ptr %12, align 8, !tbaa !186
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.reload.addr138, ptr %i.ci, align 8, !tbaa !186
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %.reload.addr136, ptr %i.cj, align 8, !tbaa !211
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr130, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.ce, i64 noundef %i.ch, ptr noundef nonnull byval(%class.anon.393) align 8 %12, i32 noundef %6)
          to label %bb.u unwind label %.body31.from.

bb.u:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load atomic i32, ptr %i.cm acquire, align 4
  %i.co = icmp slt i32 %i.cn, 2
  br i1 %i.co, label %bb.v, label %AfterCoroSave

bb.v:                                             ; preds = %bb.u
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !81
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = atomicrmw add ptr %i.cq, i32 -1 acq_rel, align 4
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.w
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !104 ; 7 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !111
  %i.cw = and i32 %i.cv, 8
  %.not.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %.thread.sink.split

bb.x:                                             ; preds = %.noexc.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !112 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !113 ; 2 uses
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
  %i.df = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.dg = load i8, ptr %i.db, align 8             ; 2 uses
  %i.dh = trunc i8 %i.dg to i1                    ; 2 uses
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = select i1 %i.dh, ptr %i.di, ptr %i.dd
  %i.dk = load i64, ptr %i.de, align 8
  %i.dl = lshr i8 %i.dg, 1
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = select i1 %i.dh, i64 %i.dk, i64 %i.dm
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !71
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr %i.dj, i64 %i.dn, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

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
  call void @__clang_call_terminate(ptr %i.dr) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.u
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %index.addr143, align 4
  %i.ds = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr130, ptr nonnull %i.a) #35
  br i1 %i.ds, label %AfterCoroEnd, label %bb.z

.body31.from.:                                    ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.z:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr130, align 8, !tbaa !145 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body31.from.101, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.aa, %bb.x, %.noexc.i.i, %bb.v
  store ptr null, ptr %.reload.addr130, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.ab unwind label %.body31.from.101

bb.ab:                                            ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #41
  unreachable

.body31.from.101:                                 ; preds = %bb.aa, %.thread
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #35
  br label %.from..split107

.from..split107:                                  ; preds = %.body31.from., %.body31.from.98, %.body31.from.101, %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %.from.104, %.from.110
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105 ], [ %i.bq, %.split ], [ %i.bf, %.from.110 ], [ %.pn2558, %.from.104 ], [ %i.dz, %.body31.from.101 ], [ %i.dt, %.body31.from. ], [ %i.cd, %.body31.from.98 ]
  %.5 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn.pn, 0
  %i.ea = call ptr @__cxa_begin_catch(ptr %.5) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %.from..split107
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.ab, %bb.ad
  %i.eb = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = atomicrmw add ptr %i.ec, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %bb.ae, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.ae:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.ae
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !104 ; 7 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !111
  %i.ei = and i32 %i.eh, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i.i41, label %bb.af, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.af:                                            ; preds = %.noexc.i.i40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !112 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !113 ; 2 uses
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
  %i.er = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !116 ; 2 uses
  %i.es = load i8, ptr %i.en, align 8             ; 2 uses
  %i.et = trunc i8 %i.es to i1                    ; 2 uses
  %i.eu = load ptr, ptr %i.eo, align 8
  %i.ev = select i1 %i.et, ptr %i.eu, ptr %i.ep
  %i.ew = load i64, ptr %i.eq, align 8
  %i.ex = lshr i8 %i.es, 1
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = select i1 %i.et, i64 %i.ew, i64 %i.ey
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !71
  %i.fb = load ptr, ptr %i.fa, align 8
  invoke void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr %i.ev, i64 %i.ez, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !0

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
  call void @__clang_call_terminate(ptr %i.fd) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fe = icmp slt i32 %i.ed, 2
  br i1 %i.fe, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i40, %bb.af, %_ZN3tev5Latch9countDownEv.exit.i36
  %i.ff = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !186 ; 2 uses
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
  %i.fl = load ptr, ptr %i.x, align 8, !tbaa !82  ; 5 uses
  %.not.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = atomicrmw add ptr %i.fm, i64 -1 acq_rel, align 8
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.aj, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load ptr, ptr %i.fl, align 8, !tbaa !71
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(24) %i.fl) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fl) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ai, %bb.aj
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !143 ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 5
  br i1 %i.fu, label %bb.ak, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.ak:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.fv = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.fw = mul i64 %i.ft, 24
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fw) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %bb.ak, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit, %AfterCoroSuspend81, %AfterCoroSave
  ret void

.body.from.127:                                   ; preds = %bb.ah, %.from.120
  %.pn26 = phi { ptr, i32 } [ %i.fk, %.from.120 ], [ %i.fj, %bb.ah ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #35
  br label %.body

.body:                                            ; preds = %.body.from., %.body.from.124, %.body.from.127
  %.merged29 = phi { ptr, i32 } [ %.pn26, %.body.from.127 ], [ %i.ah, %.body.from. ], [ %i.s, %.body.from.124 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !143 ; 2 uses
  %i.fz = icmp ugt i64 %i.fy, 5
  br i1 %i.fz, label %bb.al, label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

bb.al:                                            ; preds = %.body
  %i.ga = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.gb = mul i64 %i.fy, 24
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gb) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

_ZN3tev16MultiChannelViewIfED2Ev.exit50:          ; preds = %bb.al, %.body
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #35
  resume { ptr, i32 } %.merged29

bb.am:                                            ; preds = %bb.ah
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #41
  unreachable

bb.an:                                            ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.d) #35
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !101
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !185
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #40
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 6 uses
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %2) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #39
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #35
  invoke void @_ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(116) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #35
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #35
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.d ]
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #35
  resume { ptr, i32 } %eh.lpad-body
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #35 ; 0 uses
  tail call void @_ZSt9terminatev() #41
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !535
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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !143  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 5
  br i1 %i.v, label %bb.o, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.w = load ptr, ptr %0, align 8, !tbaa !141
  %i.x = mul i64 %i.u, 24
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.x) #40
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EED2Ev.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EED2Ev.exit: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn11

bb.p:                                             ; preds = %bb.k, %bb.f
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27throw_allocation_size_errorEv() local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.87)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #35
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.273) align 8 %5, i32 noundef %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !378
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1220
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1220
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1220
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1220
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1221
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !1222
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !1222

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1222
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !205, !noalias !1222
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1222
  store ptr null, ptr %7, align 8, !tbaa !205, !noalias !1222
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1222 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1222
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1222
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1222 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1222
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #35, !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1222
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !104 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !111
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #35
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #35 ; 0 uses
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !111
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !112 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !186 ; 2 uses
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
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #35
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #35
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %1) #35
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #35
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #35
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #35
  ret void
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

declare void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind writable sret(%"class.std::__1::future.72") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN3tev10ThreadPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task.70", align 8      ; 11 uses
  %10 = alloca %class.anon.287, align 8           ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37 ; 24 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr179, align 8, !tbaa !186
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.171 ; 5 uses

.body.from.171:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1236
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1236
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1236
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1236
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1237
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !1238
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.b unwind label %bb.d, !noalias !1238

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1238
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !205, !noalias !1238
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1238
  store ptr null, ptr %7, align 8, !tbaa !205, !noalias !1238
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1238 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1238
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1238
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1238 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1238
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #35, !noalias !1238
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1238
end_hunk_3
begin_hunk_4_@_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i:.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !67
  %i.bf = load i64, ptr %8, align 8
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br i1 %.0186, label %.from.137, label %.from.156

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134: ; preds = %.thread184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %.from.156

.from.137.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %.from.137

.from.137:                                        ; preds = %.from.137.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.bc, %.split ], [ %.pn4284.ph, %.from.137.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #35
  br label %.from.156

.lr.ph:                                           ; preds = %.from..lr.ph, %bb.f
  %i.bh = phi i32 [ %i.aq, %bb.f ], [ %i.ak, %.from..lr.ph ]
  %i.bi = phi i32 [ %i.ao, %bb.f ], [ 1, %.from..lr.ph ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %bb.f ], [ 0, %.from..lr.ph ]
  %i.bk = add nsw i32 %i.bh, %2
  %i.bl = add nsw i32 %i.bj, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store i32 %i.bl, ptr %10, align 8, !tbaa !382
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !383
  store ptr %.reload.addr179, ptr %i.af, align 8, !tbaa !186
  invoke void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.132

bb.j:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !388 ; 6 uses
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !389
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bq = load i64, ptr %9, align 8, !tbaa !186
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !186
  %i.br = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !186
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !186
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !390
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !390
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !186
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.129

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bu, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bv, %bb.k ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !388
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %exitcond.not = icmp eq i32 %i.bi, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1231

.from.132:                                        ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.141

.from.129:                                        ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #35
  br label %.from.141

.from.141:                                        ; preds = %.from.132, %.from.129
  %.pn43 = phi { ptr, i32 } [ %i.bx, %.from.129 ], [ %i.bw, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %.from.156

.from.156:                                        ; preds = %.from.141, %.from.137, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.141 ], [ %.pn4284, %.from.137 ], [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134 ], [ %i.bc, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #35
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
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !104 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !111
  %i.ck = and i32 %i.cj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !112 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
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
  %i.ct = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr %i.cx, i64 %i.db, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.df) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %index.addr182, align 8
  %i.dg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #35
  br i1 %i.dg, label %AfterCoroEnd, label %bb.q

.from.150:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.147, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.147

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  %i.dl = load ptr, ptr %.reload.addr178, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !388 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dn, %bb.s ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.do) #35
  %.not.i.i.i.i57 = icmp eq ptr %i.dl, %i.do
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !391
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dp = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !388
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !389
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.du) #40
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #41
  unreachable

.from.147:                                        ; preds = %bb.r, %.thread
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %.from.158

.from.158:                                        ; preds = %.from.147, %.from.150, %.from.153, %.from.156
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.al, %.from.153 ], [ %.pn43.pn, %.from.156 ], [ %i.dx, %.from.147 ], [ %i.dh, %.from.150 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #35
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %.6) #35 ; 0 uses
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
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !104 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !111
  %i.eg = and i32 %i.ef, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !112 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !113 ; 2 uses
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
  %i.ep = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr %i.et, i64 %i.ex, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.fb) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fc = icmp slt i32 %i.eb, 2
  br i1 %i.fc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !186 ; 2 uses
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
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend109, %AfterCoroSave
  ret void

.body.from.174:                                   ; preds = %bb.y, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.fi, %.from.167 ], [ %i.fh, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr181) #35
  br label %.body

.body:                                            ; preds = %.body.from.174, %.body.from.171, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.174 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.171 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #35
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #41
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37 ; 16 uses
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr73 = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1250
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1250
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1250
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1250
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1251
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !1252
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1252

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1252
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !205, !noalias !1252
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1252
  store ptr null, ptr %4, align 8, !tbaa !205, !noalias !1252
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1252 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1252
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1252
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1252 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1252
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #35, !noalias !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !1252
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !186
  invoke void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr73, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %1, i32 noundef %3)
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !104 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !111
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #35
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #35 ; 0 uses
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !111
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !112 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !186 ; 2 uses
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
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #35
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 20 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.126 ; 5 uses

.body.from.126:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1263
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1263
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1263
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1263
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1264
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !1265
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1265

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1265
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !205, !noalias !1265
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1265
  store ptr null, ptr %2, align 8, !tbaa !205, !noalias !1265
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1265 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1265
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1265
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1265 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1265
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #35, !noalias !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !1265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !391    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !388  ; 2 uses
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !111
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113 ; 2 uses
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
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.bc) #41
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !393
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #35
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !393 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !393 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !145
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
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %.loopexit52

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #35 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #35
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #35
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %.from.104

bb.o:                                             ; preds = %bb.n, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !393
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !393
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.bo, %.reload
  br i1 %.not51.not, label %._crit_edge.from.._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #35
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !398
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !399
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
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #35
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #39
          to label %bb.r unwind label %.loopexit52.from.115

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit52.from.115:                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #35
  br label %.loopexit52

bb.s:                                             ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.bw, 8
  br i1 %i.ca, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #35 ; 3 uses
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !399 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !398
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr %i.cc, i64 %i.ch)
          to label %bb.u unwind label %.loopexit52.from.113

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #39
          to label %bb.ag unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__cxa_free_exception(ptr nonnull %i.cb) #35
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
  call void @__clang_call_terminate(ptr %i.cn) #41
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.v
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !399 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !398 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #35
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !399
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !398
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !400
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cw) #40
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.l, %.loopexit52.from.110, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115
  %.213 = phi ptr [ %i.bz, %.loopexit52.from.115 ], [ %i.cl, %.loopexit52.from.111 ], [ %i.cj, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.bi, %bb.l ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #35
  %i.cx = call ptr @__cxa_begin_catch(ptr %.213) #35 ; 0 uses
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
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !104 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !111
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !112 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !113 ; 2 uses
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
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.ea) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.eb = icmp slt i32 %i.da, 2
  br i1 %i.eb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i29, %bb.aa, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !186 ; 2 uses
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
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ad, %bb.ae
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91
  ret void

.body.from.128:                                   ; preds = %bb.ac, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.eh, %.from.124 ], [ %i.eg, %bb.ac ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #35
  br label %.body

.body:                                            ; preds = %.body.from.128, %.body.from.126, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.128 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.126 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #35
  resume { ptr, i32 } %.merged20

bb.af:                                            ; preds = %bb.ac, %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #41
  unreachable

bb.ag:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !391    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !388  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #35
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !391
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !388
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #40
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #16

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !388
  %i.d = load ptr, ptr %0, align 8, !tbaa !391
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #39
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !389
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
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #39
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #38 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !186
  store i64 %i.v, ptr %i.s, align 8, !tbaa !186
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !186
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !186
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !390
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !390
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !388 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !391   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !186
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !186
  store ptr null, ptr %i.ag, align 8, !tbaa !186
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !186
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !186
  store ptr null, ptr %i.aj, align 8, !tbaa !1267
  store ptr null, ptr %i.ak, align 8, !tbaa !1268
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !390
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !390
  store ptr null, ptr %i.an, align 8, !tbaa !390
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1266

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !389
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !389
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !389
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !389
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !389
  store ptr %i.t, ptr %i.a, align 8, !tbaa !389
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #35
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #40
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.55) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, ptr %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %6 = alloca %"struct.std::__1::coroutine_handle.3", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.72", align 8 ; 4 uses
  %8 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37 ; 13 uses
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.reload.addr78, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !186
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.74 ; 5 uses

.body.from.74:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1279
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1279
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1279
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1279
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1280
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35, !noalias !1281
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.b unwind label %bb.d, !noalias !1281

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1281
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %8, align 8, !tbaa !205, !noalias !1281
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1281
  store ptr null, ptr %8, align 8, !tbaa !205, !noalias !1281
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1281 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1281
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1281
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1281 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1281
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #35, !noalias !1281
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !1281
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
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %.body.from.74, %.body.from.
  %.merged16 = phi { ptr, i32 } [ %i.c, %.body.from.74 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #35
  resume { ptr, i32 } %.merged16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37 ; 15 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1292
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1292
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1292
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1292
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1293
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !1294
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1294

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1294
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !205, !noalias !1294
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1294
  store ptr null, ptr %2, align 8, !tbaa !205, !noalias !1294
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1294 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1294
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1294
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
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1294
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #35, !noalias !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !1294
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1295, !nonnull !138, !align !264
  %i.u = load i32, ptr %1, align 8, !tbaa !382
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !383
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.u, i32 noundef %i.w)
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !111
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !113 ; 2 uses
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
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.be) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #35
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #41
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #35 ; 0 uses
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
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !104 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !111
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !112 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !113 ; 2 uses
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
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cq) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !186 ; 2 uses
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
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #35
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.302", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future.72", align 8 ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.303, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38, !noalias !1306 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1306
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !71, !noalias !1306
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !71, !noalias !1306
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !186, !noalias !1306
  store i64 %i.g, ptr %i.f, align 8, !tbaa !186, !noalias !1306
  store ptr %i.d, ptr %i.e, align 16, !tbaa !404, !noalias !1306
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1306

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #35, !noalias !1306
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #35, !noalias !1306
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #40, !noalias !1306
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !407, !alias.scope !1307
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !408, !alias.scope !1307
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1328, !range !137, !noundef !138
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store ptr %i.d, ptr %9, align 8, !tbaa !407
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !408
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !407
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !408
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !415
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !418
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1329
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !419  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !420
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !415
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !415 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #41
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
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !419
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !421 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !415 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_4
begin_hunk_5_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii:.from.

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #35, !noalias !1361
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !1361
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
  call void @__clang_call_terminate(ptr %i.aa) #41
  unreachable

bb.g:                                             ; preds = %.loopexit25, %.from..lr.ph
  %.027 = phi i32 [ %2, %.from..lr.ph ], [ %i.au, %.loopexit25 ] ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1363, !nonnull !138, !align !264 ; 7 uses
  store i32 %.027, ptr %.reload.addr67, align 8, !tbaa !68
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1365, !nonnull !138, !align !257
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !68 ; 4 uses
  store ptr %.reload.addr67, ptr %.reload.addr, align 8, !tbaa !259
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !186
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !186
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1366, !nonnull !138, !align !257
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !375
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !186
  store <2 x ptr> %i.aj, ptr %i.v, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !186
  store <2 x ptr> %i.al, ptr %i.w, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1367, !nonnull !138, !align !257
  store ptr %i.an, ptr %i.x, align 8, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1368, !nonnull !138, !align !264
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !211
  %.not11.i.i = icmp slt i32 %i.ad, 4
  br i1 %.not11.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i.from..noexc20
  %.0.lcssa.i.i = phi i32 [ %i.ar, %.preheader.i.i.from..noexc20 ], [ 0, %bb.g ] ; 2 uses
  %i.aq = icmp slt i32 %.0.lcssa.i.i, %i.ad
  br i1 %i.aq, label %.lr.ph14.i.i, label %.loopexit25

.lr.ph.i.i:                                       ; preds = %bb.g, %.noexc20
  %i.ar = phi i32 [ %i.as, %.noexc20 ], [ 4, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ %i.ar, %.noexc20 ], [ 0, %bb.g ]
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.012.i.i)
          to label %.noexc20 unwind label %.from..loopexit.split-lp

.noexc20:                                         ; preds = %.lr.ph.i.i
  %i.as = add nuw nsw i32 %i.ar, 4                ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, %i.ad
  br i1 %.not.i.i, label %.preheader.i.i.from..noexc20, label %.lr.ph.i.i, !llvm.loop !1354

.preheader.i.i.from..noexc20:                     ; preds = %.noexc20
  br label %.preheader.i.i, !llvm.loop !1354

.lr.ph14.i.i:                                     ; preds = %.preheader.i.i, %.noexc21
  %.113.i.i = phi i32 [ %i.at, %.noexc21 ], [ %.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.113.i.i)
          to label %.noexc21 unwind label %.from..loopexit

.noexc21:                                         ; preds = %.lr.ph14.i.i
  %i.at = add i32 %.113.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.at, %i.ad
  br i1 %exitcond.not.i.i, label %.loopexit25, label %.lr.ph14.i.i, !llvm.loop !1355

.loopexit25:                                      ; preds = %.noexc21, %.preheader.i.i
  %i.au = add i32 %.027, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1356

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
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.60

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge, %bb.i
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %_ZN3tev5Latch9countDownEv.exit.i

bb.j:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !104 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !111
  %i.be = and i32 %i.bd, 8
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.k:                                             ; preds = %.noexc.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !112 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !113 ; 2 uses
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
  %i.bn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.bo = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bp = trunc i8 %i.bo to i1                    ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = select i1 %i.bp, ptr %i.bq, ptr %i.bl
  %i.bs = load i64, ptr %i.bm, align 8
  %i.bt = lshr i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = select i1 %i.bp, i64 %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr %i.br, i64 %i.bv, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

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
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ca = icmp slt i32 %i.az, 2
  br i1 %i.ca, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.k, %_ZN3tev5Latch9countDownEv.exit.i
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !186 ; 2 uses
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
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = atomicrmw add ptr %i.ci, i64 -1 acq_rel, align 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.n, %bb.o
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.64:                                    ; preds = %bb.m, %.from.60
  %.pn = phi { ptr, i32 } [ %i.cg, %.from.60 ], [ %i.cf, %bb.m ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr68) #35
  br label %.body

.body:                                            ; preds = %.body.from.64, %.body.from.62, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.64 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.62 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #35
  resume { ptr, i32 } %.merged18

bb.p:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %3 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !423, !nonnull !138, !align !257
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  %i.c = sext i32 %i.b to i64                     ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !424, !nonnull !138, !align !264
  %i.f = load i64, ptr %i.e, align 8, !tbaa !200
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425, !nonnull !138, !align !264
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !426, !nonnull !138, !align !257
  %i.m = load float, ptr %i.l, align 4, !tbaa !61
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !427, !nonnull !138, !align !257
  %i.r = load float, ptr %i.q, align 4, !tbaa !61
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !428, !nonnull !138
  %i.w = load i8, ptr %i.v, align 1, !tbaa !208, !range !137, !noundef !138
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !429, !nonnull !138, !align !264
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !200 ; 5 uses
  %i.ab = sext i32 %1 to i64                      ; 6 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.0.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 4 uses
  %i.ae = mul i64 %i.aa, %i.ab
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !67
  %i.ah = add nsw i64 %i.ab, 1
  %i.ai = mul i64 %i.aa, %i.ah
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !67
  %i.al = add nsw i64 %i.ab, 2
  %i.am = mul i64 %i.aa, %i.al
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !67
  %i.ap = add nsw i64 %i.ab, 3
  %i.aq = mul i64 %i.aa, %i.ap
  %i.ar = getelementptr i8, ptr %i.ad, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !67
  %i.at = insertelement <4 x i8> poison, i8 %i.ag, i64 0
  %i.au = insertelement <4 x i8> %i.at, i8 %i.ak, i64 1
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ao, i64 2
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 3
  %i.ax = uitofp <4 x i8> %i.aw to <4 x float>
  %i.ay = fmul <4 x float> %i.o, %i.ax
  %i.az = fadd <4 x float> %i.t, %i.ay            ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !430, !nonnull !138, !align !264 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.az, i64 0
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr [24 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %sext8.i = shl nsw i64 %i.ab, 32                ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !68
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.c
  %i.bl = add nsw i64 %i.bk, %i.ab
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !432
  %i.bn = getelementptr i8, ptr %i.bf, i64 -16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !433
  %i.bp = mul i64 %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  store float %.sroa.0.0.vec.extract.i, ptr %i.bq, align 4, !tbaa !61
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.az, i64 1
  %i.br = load i64, ptr %i.bd, align 8
  %i.bs = getelementptr [24 x i8], ptr %i.bc, i64 %i.br ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %sext8.1.i = add i64 %sext8.i, 4294967296
  %i.bu = ashr exact i64 %sext8.1.i, 32
  %i.bv = getelementptr i8, ptr %i.bs, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !68
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.bx, %i.c
  %i.bz = add nsw i64 %i.by, %i.bu
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !432
  %i.cb = getelementptr i8, ptr %i.bs, i64 -16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !433
  %i.cd = mul i64 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cd
  store float %.sroa.0.4.vec.extract.i, ptr %i.ce, align 4, !tbaa !61
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.az, i64 2
  %i.cf = load i64, ptr %i.bd, align 8
  %i.cg = getelementptr [24 x i8], ptr %i.bc, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %sext8.2.i = add i64 %sext8.i, 8589934592
  %i.ci = ashr exact i64 %sext8.2.i, 32
  %i.cj = getelementptr i8, ptr %i.cg, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !68
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.cl, %i.c
  %i.cn = add nsw i64 %i.cm, %i.ci
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !432
  %i.cp = getelementptr i8, ptr %i.cg, i64 -16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !433
  %i.cr = mul i64 %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cr
  store float %.sroa.0.8.vec.extract.i, ptr %i.cs, align 4, !tbaa !61
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.az, i64 3
  %i.ct = load i64, ptr %i.bd, align 8
  %i.cu = getelementptr [24 x i8], ptr %i.bc, i64 %i.ct ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %sext8.3.i = add i64 %sext8.i, 12884901888
  %i.cw = ashr exact i64 %sext8.3.i, 32
  %i.cx = getelementptr i8, ptr %i.cu, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !68
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.cz, %i.c
  %i.db = add nsw i64 %i.da, %i.cw
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !432
  %i.dd = getelementptr i8, ptr %i.cu, i64 -16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !433
  %i.df = mul i64 %i.db, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.df
  store float %.sroa.0.12.vec.extract.i, ptr %i.dg, align 4, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !434, !nonnull !138, !align !257
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !202
  %i.dk = icmp eq i32 %i.dj, 2
  br i1 %i.dk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEED2B8ne180100Ev:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !399  ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !398  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #35
  %.not.i.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1381 ; 2 uses
  %.pre1.i = load ptr, ptr %.pre.i, align 8, !tbaa !399
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.c
  %i.i = phi ptr [ %.pre1.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.d, %bb.c ]
  store ptr %i.e, ptr %i.f, align 8, !tbaa !398
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !400
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.o) #40
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i, %bb.b, %bb.a
  ret void
}

declare void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.393) align 8 %5, i32 noundef %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !378
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1392
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1392
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1392
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1392
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1393
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !1394
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !1394

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1394
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !205, !noalias !1394
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1394
  store ptr null, ptr %7, align 8, !tbaa !205, !noalias !1394
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1394 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1394
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1394
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1394 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1394
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #35, !noalias !1394
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1394
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !104 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !111
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #35
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #35 ; 0 uses
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !111
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !112 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !186 ; 2 uses
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
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #35
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #35
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task.70", align 8      ; 11 uses
  %10 = alloca %class.anon.395, align 8           ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37 ; 24 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr179, align 8, !tbaa !186
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.171 ; 5 uses

.body.from.171:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1408
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1408
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1408
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1408
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1409
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !1410
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.b unwind label %bb.d, !noalias !1410

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1410
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !205, !noalias !1410
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1410
  store ptr null, ptr %7, align 8, !tbaa !205, !noalias !1410
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1410 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1410
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1410
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1410 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1410
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #35, !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1410
  %i.s = sub i32 %3, %2                           ; 4 uses
  %i.t = add i64 %4, 65535
  %i.u = lshr i64 %i.t, 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = load atomic i64, ptr %i.v seq_cst, align 8
  %i.x = trunc i64 %i.w to i32
  %i.y = call noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() #35
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
  br i1 %.not190, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %.lr.ph, !prof !379

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge: ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.preheader
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #35
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
  br i1 %.not, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %.lr.ph, !prof !380, !llvm.loop !1403

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.f, %.from..lr.ph
  %i.ar = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store ptr @.str.93, ptr %.reload.addr, align 16, !tbaa !67, !noalias !1411
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 172, ptr %i.as, align 16, !tbaa !67, !noalias !1411
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 94, ptr %i.at, align 16, !tbaa !67, !noalias !1411
end_hunk_6
begin_hunk_7_@_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i:.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !67
  %i.bf = load i64, ptr %8, align 8
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br i1 %.0186, label %.from.137, label %.from.156

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134: ; preds = %.thread184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %.from.156

.from.137.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %.from.137

.from.137:                                        ; preds = %.from.137.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.bc, %.split ], [ %.pn4284.ph, %.from.137.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #35
  br label %.from.156

.lr.ph:                                           ; preds = %.from..lr.ph, %bb.f
  %i.bh = phi i32 [ %i.aq, %bb.f ], [ %i.ak, %.from..lr.ph ]
  %i.bi = phi i32 [ %i.ao, %bb.f ], [ 1, %.from..lr.ph ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %bb.f ], [ 0, %.from..lr.ph ]
  %i.bk = add nsw i32 %i.bh, %2
  %i.bl = add nsw i32 %i.bj, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store i32 %i.bl, ptr %10, align 8, !tbaa !441
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !442
  store ptr %.reload.addr179, ptr %i.af, align 8, !tbaa !186
  invoke void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.132

bb.j:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !388 ; 6 uses
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !389
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bq = load i64, ptr %9, align 8, !tbaa !186
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !186
  %i.br = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !186
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !186
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !390
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !390
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !186
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.129

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bu, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bv, %bb.k ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !388
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %exitcond.not = icmp eq i32 %i.bi, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1403

.from.132:                                        ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.141

.from.129:                                        ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #35
  br label %.from.141

.from.141:                                        ; preds = %.from.132, %.from.129
  %.pn43 = phi { ptr, i32 } [ %i.bx, %.from.129 ], [ %i.bw, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %.from.156

.from.156:                                        ; preds = %.from.141, %.from.137, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.141 ], [ %.pn4284, %.from.137 ], [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134 ], [ %i.bc, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #35
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
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !104 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !111
  %i.ck = and i32 %i.cj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !112 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
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
  %i.ct = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr %i.cx, i64 %i.db, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.df) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %index.addr182, align 8
  %i.dg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #35
  br i1 %i.dg, label %AfterCoroEnd, label %bb.q

.from.150:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.147, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.147

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  %i.dl = load ptr, ptr %.reload.addr178, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !388 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dn, %bb.s ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.do) #35
  %.not.i.i.i.i57 = icmp eq ptr %i.dl, %i.do
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !391
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dp = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !388
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !389
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.du) #40
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #41
  unreachable

.from.147:                                        ; preds = %bb.r, %.thread
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %.from.158

.from.158:                                        ; preds = %.from.147, %.from.150, %.from.153, %.from.156
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.al, %.from.153 ], [ %.pn43.pn, %.from.156 ], [ %i.dx, %.from.147 ], [ %i.dh, %.from.150 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #35
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %.6) #35 ; 0 uses
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
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !104 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !111
  %i.eg = and i32 %i.ef, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !112 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !113 ; 2 uses
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
  %i.ep = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr %i.et, i64 %i.ex, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.fb) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fc = icmp slt i32 %i.eb, 2
  br i1 %i.fc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !186 ; 2 uses
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
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend109, %AfterCoroSave
  ret void

.body.from.174:                                   ; preds = %bb.y, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.fi, %.from.167 ], [ %i.fh, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr181) #35
  br label %.body

.body:                                            ; preds = %.body.from.174, %.body.from.171, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.174 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.171 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #35
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #41
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37 ; 16 uses
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr73 = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1422
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1422
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1422
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1422
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1423
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !1424
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1424

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1424
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !205, !noalias !1424
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1424
  store ptr null, ptr %4, align 8, !tbaa !205, !noalias !1424
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1424 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1424
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1424
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1424 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1424
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #35, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !1424
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !186
  invoke void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr73, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %1, i32 noundef %3)
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !104 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !111
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #35
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #35 ; 0 uses
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !111
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !112 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !186 ; 2 uses
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
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #35
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, ptr %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %6 = alloca %"struct.std::__1::coroutine_handle.3", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.72", align 8 ; 4 uses
  %8 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37 ; 13 uses
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.reload.addr78, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !186
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.74 ; 5 uses

.body.from.74:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1435
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1435
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1435
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1435
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1436
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35, !noalias !1437
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.b unwind label %bb.d, !noalias !1437

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1437
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %8, align 8, !tbaa !205, !noalias !1437
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1437
  store ptr null, ptr %8, align 8, !tbaa !205, !noalias !1437
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1437 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1437
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1437
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1437 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1437
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #35, !noalias !1437
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !1437
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
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %.body.from.74, %.body.from.
  %.merged16 = phi { ptr, i32 } [ %i.c, %.body.from.74 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #35
  resume { ptr, i32 } %.merged16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37 ; 15 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1448
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1448
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1448
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1448
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1449
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !1450
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1450

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1450
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !205, !noalias !1450
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1450
  store ptr null, ptr %2, align 8, !tbaa !205, !noalias !1450
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1450 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1450
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1450
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1450 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1450
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #35, !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !1450
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1451, !nonnull !138, !align !264
  %i.u = load i32, ptr %1, align 8, !tbaa !441
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !442
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.u, i32 noundef %i.w)
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !111
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !113 ; 2 uses
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
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.be) #41
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #35
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #41
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #35 ; 0 uses
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
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !104 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !111
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !112 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !113 ; 2 uses
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
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cq) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !186 ; 2 uses
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
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #35
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #37 ; 19 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.62 ; 5 uses

.body.from.62:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #35
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1465
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1465
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1465
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1465
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1466
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !1467
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.b unwind label %bb.d, !noalias !1467

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !186, !alias.scope !1467
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !205, !noalias !1467
  store ptr %i.j, ptr %i.i, align 8, !tbaa !205, !alias.scope !1467
  store ptr null, ptr %4, align 8, !tbaa !205, !noalias !1467
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1467 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186, !noalias !1467
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !186, !alias.scope !1467
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1467 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #41, !noalias !1467
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #35, !noalias !1467
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !1467
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
  call void @__clang_call_terminate(ptr %i.aa) #41
  unreachable

bb.g:                                             ; preds = %.loopexit25, %.from..lr.ph
  %.027 = phi i32 [ %2, %.from..lr.ph ], [ %i.au, %.loopexit25 ] ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1469, !nonnull !138, !align !264 ; 7 uses
  store i32 %.027, ptr %.reload.addr67, align 8, !tbaa !68
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1471, !nonnull !138, !align !257
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !68 ; 4 uses
  store ptr %.reload.addr67, ptr %.reload.addr, align 8, !tbaa !259
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !186
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !186
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1472, !nonnull !138, !align !257
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !375
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !186
  store <2 x ptr> %i.aj, ptr %i.v, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !186
  store <2 x ptr> %i.al, ptr %i.w, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1473, !nonnull !138, !align !257
  store ptr %i.an, ptr %i.x, align 8, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1474, !nonnull !138, !align !264
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !211
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
  br i1 %.not.i.i, label %.preheader.i.i.from..noexc20, label %.lr.ph.i.i, !llvm.loop !1460

.preheader.i.i.from..noexc20:                     ; preds = %.noexc20
  br label %.preheader.i.i, !llvm.loop !1460

.lr.ph14.i.i:                                     ; preds = %.preheader.i.i, %.noexc21
  %.113.i.i = phi i32 [ %i.at, %.noexc21 ], [ %.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.113.i.i)
          to label %.noexc21 unwind label %.from..loopexit

.noexc21:                                         ; preds = %.lr.ph14.i.i
  %i.at = add i32 %.113.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.at, %i.ad
  br i1 %exitcond.not.i.i, label %.loopexit25, label %.lr.ph14.i.i, !llvm.loop !1461

.loopexit25:                                      ; preds = %.noexc21, %.preheader.i.i
  %i.au = add i32 %.027, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1462

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
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.60

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge, %bb.i
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %_ZN3tev5Latch9countDownEv.exit.i

bb.j:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !104 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !111
  %i.be = and i32 %i.bd, 8
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.k:                                             ; preds = %.noexc.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !112 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !113 ; 2 uses
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
  %i.bn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.bo = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bp = trunc i8 %i.bo to i1                    ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = select i1 %i.bp, ptr %i.bq, ptr %i.bl
  %i.bs = load i64, ptr %i.bm, align 8
  %i.bt = lshr i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = select i1 %i.bp, i64 %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr %i.br, i64 %i.bv, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

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
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ca = icmp slt i32 %i.az, 2
  br i1 %i.ca, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.k, %_ZN3tev5Latch9countDownEv.exit.i
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !186 ; 2 uses
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
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = atomicrmw add ptr %i.ci, i64 -1 acq_rel, align 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #35, !inline_history !8
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.n, %bb.o
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #35
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.64:                                    ; preds = %bb.m, %.from.60
  %.pn = phi { ptr, i32 } [ %i.cg, %.from.60 ], [ %i.cf, %bb.m ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #35
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr68) #35
  br label %.body

.body:                                            ; preds = %.body.from.64, %.body.from.62, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.64 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.62 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #35
  resume { ptr, i32 } %.merged18

bb.p:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.365", align 16 ; 9 uses
  %3 = alloca %"struct.nanogui::Array.365", align 16 ; 4 uses
  %4 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %5 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !444, !nonnull !138, !align !257
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !445, !nonnull !138, !align !264
  %i.f = load i64, ptr %i.e, align 8, !tbaa !200
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !446, !nonnull !138, !align !264
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !447, !nonnull !138, !align !257
  %i.m = load float, ptr %i.l, align 4, !tbaa !61
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !448, !nonnull !138, !align !257
  %i.r = load float, ptr %i.q, align 4, !tbaa !61
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !449, !nonnull !138
  %i.w = load i8, ptr %i.v, align 1, !tbaa !208, !range !137, !noundef !138
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !450, !nonnull !138, !align !264
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !200 ; 5 uses
  %i.ab = sext i32 %1 to i64                      ; 6 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.0.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 4 uses
  %i.ae = mul i64 %i.aa, %i.ab
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !67
  %i.ah = add nsw i64 %i.ab, 1
  %i.ai = mul i64 %i.aa, %i.ah
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !67
  %i.al = add nsw i64 %i.ab, 2
  %i.am = mul i64 %i.aa, %i.al
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !67
  %i.ap = add nsw i64 %i.ab, 3
  %i.aq = mul i64 %i.aa, %i.ap
  %i.ar = getelementptr i8, ptr %i.ad, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !67
  %i.at = insertelement <4 x i8> poison, i8 %i.ag, i64 0
  %i.au = insertelement <4 x i8> %i.at, i8 %i.ak, i64 1
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ao, i64 2
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 3
  %i.ax = uitofp <4 x i8> %i.aw to <4 x float>
  %i.ay = fmul <4 x float> %i.o, %i.ax
  %i.az = fadd <4 x float> %i.t, %i.ay            ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !451, !nonnull !138, !align !264 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.az, i64 0
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr [24 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %sext8.i = shl nsw i64 %i.ab, 32                ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !68
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.c
  %i.bl = add nsw i64 %i.bk, %i.ab
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !432
  %i.bn = getelementptr i8, ptr %i.bf, i64 -16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !433
  %i.bp = mul i64 %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  store float %.sroa.0.0.vec.extract.i, ptr %i.bq, align 4, !tbaa !61
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.az, i64 1
  %i.br = load i64, ptr %i.bd, align 8
  %i.bs = getelementptr [24 x i8], ptr %i.bc, i64 %i.br ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %sext8.1.i = add i64 %sext8.i, 4294967296
  %i.bu = ashr exact i64 %sext8.1.i, 32
  %i.bv = getelementptr i8, ptr %i.bs, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !68
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.bx, %i.c
  %i.bz = add nsw i64 %i.by, %i.bu
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !432
  %i.cb = getelementptr i8, ptr %i.bs, i64 -16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !433
  %i.cd = mul i64 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cd
  store float %.sroa.0.4.vec.extract.i, ptr %i.ce, align 4, !tbaa !61
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.az, i64 2
  %i.cf = load i64, ptr %i.bd, align 8
  %i.cg = getelementptr [24 x i8], ptr %i.bc, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %sext8.2.i = add i64 %sext8.i, 8589934592
  %i.ci = ashr exact i64 %sext8.2.i, 32
  %i.cj = getelementptr i8, ptr %i.cg, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !68
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.cl, %i.c
  %i.cn = add nsw i64 %i.cm, %i.ci
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !432
  %i.cp = getelementptr i8, ptr %i.cg, i64 -16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !433
  %i.cr = mul i64 %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cr
  store float %.sroa.0.8.vec.extract.i, ptr %i.cs, align 4, !tbaa !61
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.az, i64 3
  %i.ct = load i64, ptr %i.bd, align 8
  %i.cu = getelementptr [24 x i8], ptr %i.bc, i64 %i.ct ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %sext8.3.i = add i64 %sext8.i, 12884901888
  %i.cw = ashr exact i64 %sext8.3.i, 32
  %i.cx = getelementptr i8, ptr %i.cu, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !68
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.cz, %i.c
  %i.db = add nsw i64 %i.da, %i.cw
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !432
  %i.dd = getelementptr i8, ptr %i.cu, i64 -16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !433
  %i.df = mul i64 %i.db, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.df
  store float %.sroa.0.12.vec.extract.i, ptr %i.dg, align 4, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !452, !nonnull !138, !align !257
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !202
  switch i32 %i.dj, label %bb.d [
    i32 0, label %.thread
end_hunk_7
begin_hunk_8_@_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_:bb.a
  store ptr null, ptr %2, align 8, !tbaa !212
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %.not = icmp eq ptr %i.f, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br i1 %.not, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.a, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #39
          to label %bb.b unwind label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  unreachable

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35
  resume { ptr, i32 } %i.g

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !185
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !185
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !185
  store ptr %i.l, ptr %i.i, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !192
  %i.n = or i32 %i.m, 5
  store i32 %i.n, ptr %i.b, align 8, !tbaa !192
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #35
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #6 personality ptr @__gxx_personality_v0 {
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !111
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 2 uses
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
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ah) #41
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #35
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !145
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
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #35 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #35
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #35
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !393 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !393
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #35
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !398
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !399 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #35
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #39
          to label %bb.m unwind label %.loopexit52.from.115

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit52.from.115:                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #35
  br label %.loopexit52

bb.n:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.ay, 8
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 40) #35 ; 3 uses
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !399 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !398
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.be, i64 %i.bj)
          to label %bb.p unwind label %.loopexit52.from.113

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #39
          to label %bb.ad unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #35
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
  tail call void @__clang_call_terminate(ptr %i.bp) #41
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.q
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !399 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !398 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #35
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !399
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !398
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !400
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #40
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.g, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115, %.loopexit52.from.110
  %.213 = phi ptr [ %i.bb, %.loopexit52.from.115 ], [ %i.bn, %.loopexit52.from.111 ], [ %i.bl, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.an, %bb.g ]
  tail call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #35
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.213) #35 ; 0 uses
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
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !104 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !111
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !112 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !113 ; 2 uses
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
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.dd) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.de = icmp slt i32 %i.cd, 2
  br i1 %i.de, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %bb.v, %.noexc.i.i29
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !81
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aa, %bb.z, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #35
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
  tail call void @__clang_call_terminate(ptr %i.du) #41
  unreachable

bb.ad:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #8 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !1482

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !399 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !398  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #35
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !399
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !398
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !400
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #40
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
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #35
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.resume(ptr nofree nonnull readnone align 8 captures(none) %0) #34 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.destroy(ptr noundef nonnull align 8 dereferenceable(136) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.b, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #35 ; 0 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
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
  tail call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !454

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume(ptr noundef nonnull align 8 dereferenceable(96) %0) #19 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend51, !prof !455

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr78)
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !111
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread35.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113  ; 2 uses
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
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ai) #41
  unreachable

AfterCoroSave49:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %0) #35
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend51

.from.64:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread35, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend51
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread35.sink.split unwind label %.from.62, !inline_history !4

.thread35.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %AfterCoroSuspend51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.62

bb.g:                                             ; preds = %.thread35
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr81)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #41
  unreachable

.from.62:                                         ; preds = %bb.f, %.thread35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %bb.i

bb.i:                                             ; preds = %.from.62, %.from.64
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.62 ], [ %i.ak, %.from.64 ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.09) #35 ; 0 uses
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
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !104 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !111
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !112 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !113 ; 2 uses
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
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i28, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.bv) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i20:               ; preds = %.noexc2.i.i31, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %bb.l, %.noexc.i.i24
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #35
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
  tail call void @__clang_call_terminate(ptr %i.cm) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy(ptr noundef nonnull align 8 dereferenceable(96) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !456

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
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
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #35 ; 0 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
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
  tail call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !454

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume(ptr noundef nonnull align 16 dereferenceable(144) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr177, align 16, !tbaa !145 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr177, align 16, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #35
  %i.d = load ptr, ptr %.reload.addr178, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !388 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #35
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !391
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !388
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !389
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #40
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #35
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #35
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #35 ; 0 uses
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !111
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113 ; 2 uses
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
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.au) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #35
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
  tail call void @__clang_call_terminate(ptr %i.bl) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy(ptr noundef nonnull align 16 dereferenceable(144) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, !prof !457

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #35
  %i.a = load ptr, ptr %.reload.addr178, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !388 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #35
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !391
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !388
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #40
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
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume(ptr noundef nonnull align 8 dereferenceable(160) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #35 ; 0 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #35
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
  tail call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy(ptr noundef nonnull align 8 dereferenceable(160) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !454

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.resume(ptr noundef nonnull align 16 dereferenceable(288) %0) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %.reload.addr137 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr131, align 16, !tbaa !145 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr131, align 16, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #35
  %.5 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.5) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i41, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !0

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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i36, %bb.h, %.noexc.i.i40
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !82 ; 5 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !143 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 5
  br i1 %i.bc, label %bb.n, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.bd = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.be = mul i64 %i.bb, 24
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.be) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #35
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
  tail call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.destroy(ptr noundef nonnull align 16 dereferenceable(288) %0) #8 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 276
  %index = load i8, ptr %index.addr, align 4
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !458

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !82  ; 5 uses
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 16, !tbaa !143 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.l = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.m = mul i64 %i.j, 24
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.m) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #35
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #24

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.resume(ptr nofree nonnull readnone align 8 captures(none) %0) #34 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.destroy(ptr noundef nonnull align 8 dereferenceable(136) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.b, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #35 ; 0 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
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
  tail call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !454

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume(ptr noundef nonnull align 8 dereferenceable(96) %0) #19 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend51, !prof !455

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr78)
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !111
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread35.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113  ; 2 uses
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
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ai) #41
  unreachable

AfterCoroSave49:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %0) #35
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend51

.from.64:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread35, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend51
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread35.sink.split unwind label %.from.62, !inline_history !4

.thread35.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %AfterCoroSuspend51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.62

bb.g:                                             ; preds = %.thread35
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr81)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #41
  unreachable

.from.62:                                         ; preds = %bb.f, %.thread35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  br label %bb.i

bb.i:                                             ; preds = %.from.62, %.from.64
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.62 ], [ %i.ak, %.from.64 ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.09) #35 ; 0 uses
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
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !104 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !111
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !112 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !113 ; 2 uses
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
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i28, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.bv) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i20:               ; preds = %.noexc2.i.i31, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %bb.l, %.noexc.i.i24
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #35
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
  tail call void @__clang_call_terminate(ptr %i.cm) #41
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy(ptr noundef nonnull align 8 dereferenceable(96) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !456

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
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
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #35 ; 0 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
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
  tail call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !454

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #35
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume(ptr noundef nonnull align 16 dereferenceable(144) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr177, align 16, !tbaa !145 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr177, align 16, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #35
  %i.d = load ptr, ptr %.reload.addr178, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !388 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #35
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !391
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !388
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !389
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #40
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #35
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #35
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #35 ; 0 uses
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !111
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113 ; 2 uses
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
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.au) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #35
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
  tail call void @__clang_call_terminate(ptr %i.bl) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy(ptr noundef nonnull align 16 dereferenceable(144) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, !prof !457

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #35
  %i.a = load ptr, ptr %.reload.addr178, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !388 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #35
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !391
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !388
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #40
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
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume(ptr noundef nonnull align 8 dereferenceable(160) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !145 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #35 ; 0 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #35
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
  tail call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy(ptr noundef nonnull align 8 dereferenceable(160) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !454

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #35
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.resume(ptr noundef nonnull align 16 dereferenceable(288) %0) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %.reload.addr137 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr131, align 16, !tbaa !145 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr131, align 16, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #35
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #35
  %.5 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.5) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i41, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !116 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !0

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
  tail call void @__clang_call_terminate(ptr %i.ak) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i36, %bb.h, %.noexc.i.i40
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !82 ; 5 uses
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !143 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 5
  br i1 %i.bc, label %bb.n, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.bd = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.be = mul i64 %i.bb, 24
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.be) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #35
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
  tail call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.destroy(ptr noundef nonnull align 16 dereferenceable(288) %0) #8 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 276
  %index = load i8, ptr %index.addr, align 4
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !458

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !82  ; 5 uses
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35, !inline_history !8
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 16, !tbaa !143 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.l = load ptr, ptr %.reload.addr, align 8, !tbaa !141
  %i.m = mul i64 %i.j, 24
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.m) #40
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK3tev14QoiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume(ptr noundef nonnull align 16 dereferenceable(736) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"struct.std::__1::array", align 4  ; 5 uses
  %.reload.addr510 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %.reload.addr511 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  %.reload.addr512 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %.reload.addr513 = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %.reload.addr517 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  %.reload.addr519 = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %.reload.addr524 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 5 uses
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend296
    i8 2, label %AfterCoroSuspend300
  ], !prof !1487

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.pr = load ptr, ptr %.reload.addr510, align 8, !tbaa !118, !noalias !1488 ; 3 uses
  %.not.i79 = icmp eq ptr %.pr, null
  br i1 %.not.i79, label %.thread, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body81.from.367, !inline_history !1

.thread.sink.split:                               ; preds = %bb.a
  store ptr null, ptr %.reload.addr510, align 8, !tbaa !118
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !121, !noalias !1489 ; 7 uses
  store ptr null, ptr %i.c, align 16, !tbaa !121, !noalias !1489
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.15") align 8 %.reload.addr511, ptr noundef nonnull align 8 dereferenceable(144) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.thread
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.d:                                             ; preds = %.thread
  %i.k = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body81.from.364, label %.from.424

.body81.from.364:                                 ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #35, !inline_history !2
  br label %.from.424

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.c, %bb.b
  %.reload.addr504 = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 5 uses
  %.reload505 = load ptr, ptr %.reload.addr504, align 16, !tbaa !123 ; 4 uses
  %i.r = load ptr, ptr %.reload505, align 8, !tbaa !128 ; 5 uses
  %.not.i.i165 = icmp eq ptr %i.r, null
  br i1 %.not.i.i165, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.reload505, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !129  ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i166

.lr.ph.i.i.i.i.i166:                              ; preds = %bb.e, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.t, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !132  ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i166
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 -1 acq_rel, align 8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #35, !inline_history !3
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #35
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i166
  %i.ad = load i8, ptr %i.u, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67
  %i.ah = load i64, ptr %i.u, align 8
  %i.ai = and i64 %i.ah, -2
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #40
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i167 = icmp eq ptr %i.r, %i.u
  br i1 %.not.i.i.i.i.i167, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i166

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload501 = load ptr, ptr %.reload.addr504, align 16, !tbaa !123 ; 2 uses
  %.pre.i.i = load ptr, ptr %.reload501, align 8, !tbaa !128
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.e, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %.reload499 = phi ptr [ %.reload501, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload505, %bb.e ] ; 2 uses
  %i.aj = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.r, %bb.e ] ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !129
  %i.ak = getelementptr inbounds nuw i8, ptr %.reload499, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ao) #40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload499, i8 0, i64 24, i1 false)
  %.reload497.pre = load ptr, ptr %.reload.addr504, align 16, !tbaa !123
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %.reload497 = phi ptr [ %.reload497.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ], [ %.reload505, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.reload497, i64 8
  %i.aq = load <2 x ptr>, ptr %.reload.addr511, align 8, !tbaa !133
  store <2 x ptr> %i.aq, ptr %.reload497, align 8, !tbaa !133
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !133
  %i.at = getelementptr inbounds nuw i8, ptr %.reload497, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr511, i8 0, i64 24, i1 false)
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  invoke void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %1)
          to label %bb.j unwind label %.from.426

bb.j:                                             ; preds = %bb.i
  %.reload509 = load ptr, ptr %.reload.addr504, align 16, !tbaa !123 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.reload509, i64 172
  %i.av = getelementptr inbounds nuw i8, ptr %.reload509, i64 204 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !136, !range !137, !noundef !138
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %i.au, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  br i1 %i.ax, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.av, align 4, !tbaa !136
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit: ; preds = %bb.k, %bb.j
  %.reload507 = load ptr, ptr %.reload.addr504, align 16, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %i.ay = load ptr, ptr %.reload507, align 8, !tbaa !128 ; 2 uses
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !129
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 72
  store ptr %i.ay, ptr %.reload.addr519, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 %i.bd, ptr %i.be, align 8
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr510, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr519)
          to label %.noexc84 unwind label %.body85.from.416

.noexc84:                                         ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.bf = load ptr, ptr %.reload.addr510, align 8, !tbaa !141
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !142
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr511, ptr %i.bf, i64 %i.bh)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %.noexc84
  %i.bi = load i64, ptr %i.c, align 16, !tbaa !143 ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 5
  br i1 %i.bj, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %.reload.addr510, align 8, !tbaa !141
  %i.bl = mul i64 %i.bi, 24
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bl) #40
  br label %bb.p

bb.n:                                             ; preds = %.noexc84
  %i.bm = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bn = load i64, ptr %i.c, align 16, !tbaa !143 ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, 5
  br i1 %i.bo, label %bb.o, label %bb.as

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %.reload.addr510, align 8, !tbaa !141
  %i.bq = mul i64 %i.bn, 24
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bq) #40
  br label %bb.as

bb.p:                                             ; preds = %bb.m, %bb.l
  %.reload.addr485 = getelementptr inbounds nuw i8, ptr %0, i64 721 ; 3 uses
  %.reload486 = load i8, ptr %.reload.addr485, align 1, !tbaa !123
  %.reload.addr482 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.reload483 = load i64, ptr %.reload.addr482, align 8, !tbaa !123
  %i.br = zext i8 %.reload486 to i64
  %i.bs = mul i64 %.reload483, %i.br              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 705
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !66
  %i.bv = icmp eq i8 %i.bu, 1
  %i.bw = load i64, ptr %i.ar, align 8, !tbaa !142 ; 9 uses
  %i.bx = icmp ugt i64 %i.bw, 5                   ; 2 uses
  br i1 %i.bv, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.by = icmp ugt i64 %i.bw, 768614336404564650
  br i1 %i.by, label %bb.s, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #39
          to label %.noexc88 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385

.noexc88:                                         ; preds = %bb.s
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i: ; preds = %bb.r
  %i.bz = mul nuw i64 %i.bw, 24
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #38
          to label %.noexc89 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385 ; 2 uses

.noexc89:                                         ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  store ptr %i.ca, ptr %.reload.addr512, align 8, !tbaa !141
  %i.cb = load i64, ptr %i.ar, align 8, !tbaa !142 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.cb, ptr %i.cc, align 16, !tbaa !143
  %.not.i.i.i.i.i87 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i87, label %.from..noexc89, label %.from..sink.split

bb.t:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 5, ptr %i.cd, align 16, !tbaa !143
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store ptr %i.ce, ptr %.reload.addr512, align 8, !tbaa !141
  %.not.i11.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i11.i.i.i.i, label %.from..noexc89, label %.from..sink.split

.from..sink.split:                                ; preds = %.noexc89, %bb.t
  %.sink284 = phi i64 [ %i.cb, %.noexc89 ], [ %i.bw, %bb.t ] ; 2 uses
  %.sink = phi ptr [ %i.ca, %.noexc89 ], [ %i.ce, %bb.t ]
  %.idx.i.i.i.i = mul nsw i64 %.sink284, 24
  %i.cf = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %.idx.i.i.i.i, i1 false)
  br label %.from..noexc89

.from..noexc89:                                   ; preds = %bb.t, %.noexc89, %.from..sink.split
  %i.cg = phi i64 [ %.sink284, %.from..sink.split ], [ 0, %.noexc89 ], [ 0, %bb.t ]
  %.reload488 = load i8, ptr %.reload.addr485, align 1, !tbaa !123 ; 2 uses
  %.reload.addr472 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.reload473 = load ptr, ptr %.reload.addr472, align 16, !tbaa !123
  %.reload.addr469 = getelementptr inbounds nuw i8, ptr %0, i64 716
  %.reload470 = load i32, ptr %.reload.addr469, align 4, !tbaa !123
  %i.ch = zext i8 %.reload488 to i64
  %i.ci = icmp eq i8 %.reload488, 4
  %i.cj = select i1 %i.ci, i32 2, i32 3
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.cg, ptr %i.ck, align 8, !tbaa !142
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr510, ptr nonnull %.reload473, i64 %i.bs, i64 noundef %i.ch, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr512, i32 noundef %i.cj, i32 noundef %.reload470, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.u unwind label %.from.379

bb.u:                                             ; preds = %.from..noexc89
  %i.cl = load ptr, ptr %i.bg, align 8, !tbaa !81
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load atomic i32, ptr %i.cm acquire, align 4
  %i.co = icmp slt i32 %i.cn, 2
  br i1 %i.co, label %bb.v, label %AfterCoroSave294

bb.v:                                             ; preds = %bb.u
  %i.cp = load ptr, ptr %i.bg, align 8, !tbaa !81
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = atomicrmw add ptr %i.cq, i32 -1 acq_rel, align 4
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.w, label %.thread219.sink.split

bb.w:                                             ; preds = %bb.v
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i94 unwind label %.from..loopexit.split-lp.i.i91

.noexc.i.i94:                                     ; preds = %bb.w
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !104 ; 7 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !111
  %i.cw = and i32 %i.cv, 8
  %.not.i.i.i.i95 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i95, label %bb.x, label %.thread219.sink.split

bb.x:                                             ; preds = %.noexc.i.i94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !112 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !113 ; 2 uses
  %.not12.i.i.i.i.i96 = icmp eq ptr %i.cy, %i.da
  br i1 %.not12.i.i.i.i.i96, label %.thread219.sink.split, label %.from..lr.ph.i.i.i.i.i97

.from..lr.ph.i.i.i.i.i97:                         ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 33
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  br label %.from..noexc2.i.i101

.from..noexc2.i.i101:                             ; preds = %.noexc2.i.i101, %.from..lr.ph.i.i.i.i.i97
  %.sroa.09.013.i.i.i.i.i98 = phi ptr [ %i.cy, %.from..lr.ph.i.i.i.i.i97 ], [ %i.dq, %.noexc2.i.i101 ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.09.013.i.i.i.i.i98, align 8, !tbaa !116 ; 2 uses
  %i.dg = load i8, ptr %i.db, align 8             ; 2 uses
  %i.dh = trunc i8 %i.dg to i1                    ; 2 uses
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = select i1 %i.dh, ptr %i.di, ptr %i.dd
  %i.dk = load i64, ptr %i.de, align 8
  %i.dl = lshr i8 %i.dg, 1
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = select i1 %i.dh, i64 %i.dk, i64 %i.dm
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !71
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr %i.dj, i64 %i.dn, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i101 unwind label %.from..loopexit.i.i99, !inline_history !0

.noexc2.i.i101:                                   ; preds = %.from..noexc2.i.i101
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i98, i64 16 ; 2 uses
  %.not.i.i.i.i.i102 = icmp eq ptr %i.dq, %i.da
  br i1 %.not.i.i.i.i.i102, label %.thread219.sink.split, label %.from..noexc2.i.i101

.from..loopexit.i.i99:                            ; preds = %.from..noexc2.i.i101
  %lpad.loopexit.i.i100 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

.from..loopexit.split-lp.i.i91:                   ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i92 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.from..loopexit.split-lp.i.i91, %.from..loopexit.i.i99
  %lpad.phi.i.i93 = phi { ptr, i32 } [ %lpad.loopexit.i.i100, %.from..loopexit.i.i99 ], [ %lpad.loopexit.split-lp.i.i92, %.from..loopexit.split-lp.i.i91 ]
  %i.dr = extractvalue { ptr, i32 } %lpad.phi.i.i93, 0
  call void @__clang_call_terminate(ptr %i.dr) #41
  unreachable

AfterCoroSave294:                                 ; preds = %bb.u
  store i8 1, ptr %index.addr, align 16
  %i.ds = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr510, ptr nonnull %0) #35
  br i1 %i.ds, label %CoroEnd, label %AfterCoroSuspend296

.body81.from.367:                                 ; preds = %bb.a
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.424

.from.424:                                        ; preds = %.body81.from.364, %.body81.from.367, %bb.d
  %eh.lpad-body82 = phi { ptr, i32 } [ %i.dt, %.body81.from.367 ], [ %i.k, %.body81.from.364 ], [ %i.k, %bb.d ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %bb.as

.from.426:                                        ; preds = %bb.i
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %bb.as

.body85.from.416:                                 ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.as

_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385: ; preds = %bb.s, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

.from.379:                                        ; preds = %.from..noexc89
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

AfterCoroSuspend296:                              ; preds = %resume.entry, %AfterCoroSave294
  %.pr217 = load ptr, ptr %.reload.addr510, align 8, !tbaa !145 ; 3 uses
  %.not.i103 = icmp eq ptr %.pr217, null
  br i1 %.not.i103, label %.thread219, label %bb.z

bb.z:                                             ; preds = %AfterCoroSuspend296
  %i.dy = getelementptr inbounds nuw i8, ptr %.pr217, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr nonnull %.pr217)
          to label %.thread219.sink.split unwind label %.from.376, !inline_history !4

.thread219.sink.split:                            ; preds = %.noexc2.i.i101, %bb.z, %bb.x, %.noexc.i.i94, %bb.v
  store ptr null, ptr %.reload.addr510, align 8, !tbaa !145
  br label %.thread219

.thread219:                                       ; preds = %.thread219.sink.split, %AfterCoroSuspend296
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.376

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread219
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ec = load i64, ptr %i.eb, align 16, !tbaa !143 ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, 5
  br i1 %i.ed, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from.376:                                        ; preds = %bb.z, %.thread219
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %bb.aa

bb.aa:                                            ; preds = %.from.376, %.from.379
  %.pn60 = phi { ptr, i32 } [ %i.ee, %.from.376 ], [ %i.dx, %.from.379 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eg = load i64, ptr %i.ef, align 16, !tbaa !143 ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, 5
  br i1 %i.eh, label %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.:   ; preds = %bb.aa
  %i.ei = load ptr, ptr %.reload.addr512, align 8, !tbaa !141
  %i.ej = mul i64 %i.eg, 24
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.ej) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

bb.ab:                                            ; preds = %bb.p
  br i1 %i.bx, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ek = icmp ugt i64 %i.bw, 768614336404564650
  br i1 %i.ek, label %bb.ad, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #39
          to label %.noexc115 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407

.noexc115:                                        ; preds = %bb.ad
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111: ; preds = %bb.ac
  %i.el = mul nuw i64 %i.bw, 24
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #38
          to label %.noexc116 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407 ; 2 uses

.noexc116:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111
  store ptr %i.em, ptr %.reload.addr513, align 8, !tbaa !141
  %i.en = load i64, ptr %i.ar, align 8, !tbaa !142 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %i.en, ptr %i.eo, align 16, !tbaa !143
  %.not.i.i.i.i.i112 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i.i112, label %.from..noexc116, label %.from..sink.split285

bb.ae:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 5, ptr %i.ep, align 16, !tbaa !143
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store ptr %i.eq, ptr %.reload.addr513, align 8, !tbaa !141
  %.not.i11.i.i.i.i107 = icmp eq i64 %i.bw, 0
  br i1 %.not.i11.i.i.i.i107, label %.from..noexc116, label %.from..sink.split285

.from..sink.split285:                             ; preds = %.noexc116, %bb.ae
  %.sink289 = phi i64 [ %i.en, %.noexc116 ], [ %i.bw, %bb.ae ] ; 2 uses
  %.sink287 = phi ptr [ %i.em, %.noexc116 ], [ %i.eq, %bb.ae ]
  %.idx.i.i.i.i109 = mul nsw i64 %.sink289, 24
  %i.er = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink287, ptr noundef nonnull align 8 dereferenceable(1) %i.er, i64 %.idx.i.i.i.i109, i1 false)
  br label %.from..noexc116

.from..noexc116:                                  ; preds = %bb.ae, %.noexc116, %.from..sink.split285
  %i.es = phi i64 [ %.sink289, %.from..sink.split285 ], [ 0, %.noexc116 ], [ 0, %bb.ae ]
  %.reload490 = load i8, ptr %.reload.addr485, align 1, !tbaa !123 ; 2 uses
  %.reload.addr474 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.reload475 = load ptr, ptr %.reload.addr474, align 16, !tbaa !123
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 716
  %.reload = load i32, ptr %.reload.addr, align 4, !tbaa !123
  %i.et = zext i8 %.reload490 to i64
  %i.eu = icmp eq i8 %.reload490, 4
  %i.ev = select i1 %i.eu, i32 2, i32 3
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %i.es, ptr %i.ew, align 8, !tbaa !142
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr510, ptr nonnull %.reload475, i64 %i.bs, i64 noundef %i.et, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr513, i32 noundef %i.ev, i32 noundef %.reload, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.af unwind label %.from.401

bb.af:                                            ; preds = %.from..noexc116
  %i.ex = load ptr, ptr %i.bg, align 8, !tbaa !81
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load atomic i32, ptr %i.ey acquire, align 4
  %i.fa = icmp slt i32 %i.ez, 2
  br i1 %i.fa, label %bb.ag, label %AfterCoroSave298

bb.ag:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr %i.bg, align 8, !tbaa !81
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = atomicrmw add ptr %i.fc, i32 -1 acq_rel, align 4
  %i.fe = icmp slt i32 %i.fd, 1
  br i1 %i.fe, label %bb.ah, label %.thread225.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i122 unwind label %.from..loopexit.split-lp.i.i119

.noexc.i.i122:                                    ; preds = %bb.ah
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !104 ; 7 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !111
  %i.fi = and i32 %i.fh, 8
  %.not.i.i.i.i123 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i.i123, label %bb.ai, label %.thread225.sink.split

bb.ai:                                            ; preds = %.noexc.i.i122
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !112 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !113 ; 2 uses
  %.not12.i.i.i.i.i124 = icmp eq ptr %i.fk, %i.fm
  br i1 %.not12.i.i.i.i.i124, label %.thread225.sink.split, label %.from..lr.ph.i.i.i.i.i125

.from..lr.ph.i.i.i.i.i125:                        ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 33
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  br label %.from..noexc2.i.i129

.from..noexc2.i.i129:                             ; preds = %.noexc2.i.i129, %.from..lr.ph.i.i.i.i.i125
  %.sroa.09.013.i.i.i.i.i126 = phi ptr [ %i.fk, %.from..lr.ph.i.i.i.i.i125 ], [ %i.gc, %.noexc2.i.i129 ] ; 2 uses
  %i.fr = load ptr, ptr %.sroa.09.013.i.i.i.i.i126, align 8, !tbaa !116 ; 2 uses
  %i.fs = load i8, ptr %i.fn, align 8             ; 2 uses
  %i.ft = trunc i8 %i.fs to i1                    ; 2 uses
  %i.fu = load ptr, ptr %i.fo, align 8
  %i.fv = select i1 %i.ft, ptr %i.fu, ptr %i.fp
  %i.fw = load i64, ptr %i.fq, align 8
  %i.fx = lshr i8 %i.fs, 1
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = select i1 %i.ft, i64 %i.fw, i64 %i.fy
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !71
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr %i.fv, i64 %i.fz, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i129 unwind label %.from..loopexit.i.i127, !inline_history !0

.noexc2.i.i129:                                   ; preds = %.from..noexc2.i.i129
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i126, i64 16 ; 2 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.gc, %i.fm
  br i1 %.not.i.i.i.i.i130, label %.thread225.sink.split, label %.from..noexc2.i.i129

.from..loopexit.i.i127:                           ; preds = %.from..noexc2.i.i129
  %lpad.loopexit.i.i128 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

.from..loopexit.split-lp.i.i119:                  ; preds = %bb.ah
  %lpad.loopexit.split-lp.i.i120 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

bb.aj:                                            ; preds = %.from..loopexit.split-lp.i.i119, %.from..loopexit.i.i127
  %lpad.phi.i.i121 = phi { ptr, i32 } [ %lpad.loopexit.i.i128, %.from..loopexit.i.i127 ], [ %lpad.loopexit.split-lp.i.i120, %.from..loopexit.split-lp.i.i119 ]
  %i.gd = extractvalue { ptr, i32 } %lpad.phi.i.i121, 0
  call void @__clang_call_terminate(ptr %i.gd) #41
  unreachable

AfterCoroSave298:                                 ; preds = %bb.af
  store i8 2, ptr %index.addr, align 16
  %i.ge = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr510, ptr nonnull %0) #35
  br i1 %i.ge, label %CoroEnd, label %AfterCoroSuspend300

_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407: ; preds = %bb.ad, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i111
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

.from.401:                                        ; preds = %.from..noexc116
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

AfterCoroSuspend300:                              ; preds = %resume.entry, %AfterCoroSave298
  %.pr223 = load ptr, ptr %.reload.addr510, align 8, !tbaa !145 ; 3 uses
  %.not.i132 = icmp eq ptr %.pr223, null
  br i1 %.not.i132, label %.thread225, label %bb.ak

bb.ak:                                            ; preds = %AfterCoroSuspend300
  %i.gh = getelementptr inbounds nuw i8, ptr %.pr223, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr nonnull %.pr223)
          to label %.thread225.sink.split unwind label %.from.398, !inline_history !4

.thread225.sink.split:                            ; preds = %.noexc2.i.i129, %bb.ak, %bb.ai, %.noexc.i.i122, %bb.ag
  store ptr null, ptr %.reload.addr510, align 8, !tbaa !145
  br label %.thread225

.thread225:                                       ; preds = %.thread225.sink.split, %AfterCoroSuspend300
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit135 unwind label %.from.398

_ZN3tev4TaskIvE12await_resumeEv.exit135:          ; preds = %.thread225
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gl = load i64, ptr %i.gk, align 16, !tbaa !143 ; 2 uses
  %i.gm = icmp ugt i64 %i.gl, 5
  br i1 %i.gm, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from.398:                                        ; preds = %bb.ak, %.thread225
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %bb.al

bb.al:                                            ; preds = %.from.398, %.from.401
  %.pn59 = phi { ptr, i32 } [ %i.gn, %.from.398 ], [ %i.gg, %.from.401 ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gp = load i64, ptr %i.go, align 16, !tbaa !143 ; 2 uses
  %i.gq = icmp ugt i64 %i.gp, 5
  br i1 %i.gq, label %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.:   ; preds = %bb.al
  %i.gr = load ptr, ptr %.reload.addr513, align 8, !tbaa !141
  %i.gs = mul i64 %i.gp, 24
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gs) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106

.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink36 = phi i64 [ %i.ec, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.gl, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink34.in = phi ptr [ %.reload.addr512, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr513, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink290.ph = phi i16 [ 264, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ 269, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink34 = load ptr, ptr %.sink34.in, align 8, !tbaa !141
  %i.gt = mul i64 %.sink36, 24
  call void @_ZdlPvm(ptr noundef %.sink34, i64 noundef %i.gt) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from._ZN3tev16MultiChannelViewIfED2Ev.exit:      ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink290 = phi i16 [ 269, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ], [ 264, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.sink290.ph, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split ]
  %.reload.addr492 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.reload493 = load ptr, ptr %.reload.addr492, align 16, !tbaa !123 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.reload493, i64 84
  store i8 1, ptr %i.gu, align 4, !tbaa !183
  %i.gv = getelementptr inbounds nuw i8, ptr %.reload493, i64 208
  store i16 %.sink290, ptr %i.gv, align 8
  %i.gw = load ptr, ptr %.reload.addr524, align 16, !tbaa !75 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #39
          to label %.noexc.i unwind label %bb.ao

.noexc.i:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr517)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #41
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.an
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.hb = load i64, ptr %i.ha, align 16, !tbaa !143 ; 2 uses
  %i.hc = icmp ugt i64 %i.hb, 5
  br i1 %i.hc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.hd = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  %i.he = mul i64 %i.hb, 24
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.he) #40
  br label %bb.aq

.from._ZN3tev16MultiChannelViewIfED2Ev.exit106:   ; preds = %bb.al, %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from., %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407, %bb.aa, %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from., %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385
  %.pn61 = phi { ptr, i32 } [ %.pn60, %bb.aa ], [ %i.dw, %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from.385 ], [ %.pn60, %_ZN3tev16MultiChannelViewIfED2Ev.exit106.from. ], [ %i.gf, %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from.407 ], [ %.pn59, %_ZN3tev16MultiChannelViewIfED2Ev.exit137.from. ], [ %.pn59, %bb.al ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.hg = load i64, ptr %i.hf, align 16, !tbaa !143 ; 2 uses
  %i.hh = icmp ugt i64 %i.hg, 5
  br i1 %i.hh, label %.body85.from., label %bb.as

.body85.from.:                                    ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106
  %i.hi = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  %i.hj = mul i64 %i.hg, 24
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hj) #40
  br label %bb.as

bb.aq:                                            ; preds = %bb.ap, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.hk = load ptr, ptr %.reload.addr517, align 8, !tbaa !101 ; 5 uses
  %.not.i.i140 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i140, label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 16, !tbaa !184 ; 2 uses
  %.not6.i.i.i.i141 = icmp eq ptr %i.hk, %i.hm
  br i1 %.not6.i.i.i.i141, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i142

.lr.ph.i.i.i.i142:                                ; preds = %bb.ar, %.lr.ph.i.i.i.i142
  %.07.i.i.i.i143 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i142 ], [ %i.hm, %bb.ar ]
  %i.hn = getelementptr inbounds i8, ptr %.07.i.i.i.i143, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.hn) #35
  %.not.i.i.i.i144 = icmp eq ptr %i.hk, %i.hn
  br i1 %.not.i.i.i.i144, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i142

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i142
  %.pre1.i.i145 = load ptr, ptr %.reload.addr517, align 8, !tbaa !101
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.ar, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.ho = phi ptr [ %.pre1.i.i145, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.hk, %bb.ar ] ; 2 uses
  store ptr %i.hk, ptr %i.hl, align 16, !tbaa !184
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !185
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.ht) #40
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %bb.aq
  %.reload.addr476 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.reload477 = load ptr, ptr %.reload.addr476, align 16, !tbaa !123
  call void @free(ptr noundef nonnull %.reload477) #35, !inline_history !5
  br label %bb.au

bb.as:                                            ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106, %bb.o, %bb.n, %.body85.from., %.body85.from.416, %.from.426, %.from.424
  %.pn61.pn.pn = phi { ptr, i32 } [ %eh.lpad-body82, %.from.424 ], [ %i.du, %.from.426 ], [ %.pn61, %.body85.from. ], [ %i.dv, %.body85.from.416 ], [ %i.bm, %bb.o ], [ %i.bm, %bb.n ], [ %.pn61, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit106 ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr517) #35
  %.reload.addr478 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.reload479 = load ptr, ptr %.reload.addr478, align 16, !tbaa !123
  call void @free(ptr noundef nonnull %.reload479) #35, !inline_history !5
  %.18 = extractvalue { ptr, i32 } %.pn61.pn.pn, 0
  %i.hu = call ptr @__cxa_begin_catch(ptr %.18) #35 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr524)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %.from.459

bb.au:                                            ; preds = %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, %bb.at
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !81
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = atomicrmw add ptr %i.hx, i32 -1 acq_rel, align 4 ; 2 uses
  %i.hz = icmp slt i32 %i.hy, 1
  br i1 %i.hz, label %bb.av, label %_ZN3tev5Latch9countDownEv.exit.i149

bb.av:                                            ; preds = %bb.au
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i154 unwind label %.from..loopexit.split-lp.i.i151

.noexc.i.i154:                                    ; preds = %bb.av
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !104 ; 7 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !111
  %i.id = and i32 %i.ic, 8
  %.not.i.i.i.i155 = icmp eq i32 %i.id, 0
  br i1 %.not.i.i.i.i155, label %bb.aw, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.aw:                                            ; preds = %.noexc.i.i154
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !112 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !113 ; 2 uses
  %.not12.i.i.i.i.i156 = icmp eq ptr %i.if, %i.ih
  br i1 %.not12.i.i.i.i.i156, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i157

.from..lr.ph.i.i.i.i.i157:                        ; preds = %bb.aw
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 33
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  br label %.from..noexc2.i.i161

.from..noexc2.i.i161:                             ; preds = %.noexc2.i.i161, %.from..lr.ph.i.i.i.i.i157
  %.sroa.09.013.i.i.i.i.i158 = phi ptr [ %i.if, %.from..lr.ph.i.i.i.i.i157 ], [ %i.ix, %.noexc2.i.i161 ] ; 2 uses
  %i.im = load ptr, ptr %.sroa.09.013.i.i.i.i.i158, align 8, !tbaa !116 ; 2 uses
  %i.in = load i8, ptr %i.ii, align 8             ; 2 uses
  %i.io = trunc i8 %i.in to i1                    ; 2 uses
  %i.ip = load ptr, ptr %i.ij, align 8
  %i.iq = select i1 %i.io, ptr %i.ip, ptr %i.ik
  %i.ir = load i64, ptr %i.il, align 8
  %i.is = lshr i8 %i.in, 1
  %i.it = zext nneg i8 %i.is to i64
  %i.iu = select i1 %i.io, i64 %i.ir, i64 %i.it
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !71
  %i.iw = load ptr, ptr %i.iv, align 8
  invoke void %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr %i.iq, i64 %i.iu, i32 noundef 8, ptr nonnull @.str.56, i64 36)
          to label %.noexc2.i.i161 unwind label %.from..loopexit.i.i159, !inline_history !0

.noexc2.i.i161:                                   ; preds = %.from..noexc2.i.i161
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i158, i64 16 ; 2 uses
  %.not.i.i.i.i.i162 = icmp eq ptr %i.ix, %i.ih
  br i1 %.not.i.i.i.i.i162, label %_ZN3tev5Latch9countDownEv.exit.i149, label %.from..noexc2.i.i161

.from..loopexit.i.i159:                           ; preds = %.from..noexc2.i.i161
  %lpad.loopexit.i.i160 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ax

.from..loopexit.split-lp.i.i151:                  ; preds = %bb.av
  %lpad.loopexit.split-lp.i.i152 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ax

bb.ax:                                            ; preds = %.from..loopexit.split-lp.i.i151, %.from..loopexit.i.i159
  %lpad.phi.i.i153 = phi { ptr, i32 } [ %lpad.loopexit.i.i160, %.from..loopexit.i.i159 ], [ %lpad.loopexit.split-lp.i.i152, %.from..loopexit.split-lp.i.i151 ]
  %i.iy = extractvalue { ptr, i32 } %lpad.phi.i.i153, 0
  call void @__clang_call_terminate(ptr %i.iy) #41
  unreachable

_ZN3tev5Latch9countDownEv.exit.i149:              ; preds = %.noexc2.i.i161, %bb.au
  %i.iz = icmp slt i32 %i.hy, 2
  br i1 %i.iz, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i149, %bb.aw, %.noexc.i.i154
  %i.ja = load ptr, ptr %i.hv, align 8, !tbaa !81
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !186 ; 2 uses
  %i.jc = inttoptr i64 %i.jb to ptr               ; 3 uses
  store ptr %i.jc, ptr %.reload.addr511, align 8
  %.not.i163 = icmp eq i64 %i.jb, 0
  br i1 %.not.i163, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 16
  %i.jd = load ptr, ptr %i.jc, align 8
  musttail call void %i.jd(ptr nonnull %i.jc)
  ret void

bb.az:                                            ; preds = %bb.as
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bc unwind label %bb.bd

.from.459:                                        ; preds = %bb.at
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i149, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jh = load ptr, ptr %i.jg, align 16, !tbaa !82 ; 5 uses
  %.not.i.i164 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i164, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = atomicrmw add ptr %i.ji, i64 -1 acq_rel, align 8
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.bb, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.bb:                                            ; preds = %bb.ba
  %i.jl = load ptr, ptr %i.jh, align 8, !tbaa !71
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(24) %i.jh) #35, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jh) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.bb, %bb.ba, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr524) #35
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #35
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSave298, %AfterCoroSave294
  ret void

bb.bc:                                            ; preds = %bb.az, %.from.459
  %.pn65 = phi { ptr, i32 } [ %i.jf, %.from.459 ], [ %i.je, %bb.az ]
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 16
  resume { ptr, i32 } %.pn65

bb.bd:                                            ; preds = %bb.az
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #41
  unreachable

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev14QoiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(736) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr510 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.reload.addr511 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.reload.addr517 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 720
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %.from.419
    i8 1, label %_ZN3tev4TaskIvE12await_resumeEv.exit
    i8 2, label %_ZN3tev4TaskIvE12await_resumeEv.exit135
    i8 3, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  ], !prof !1490

.from.419:                                        ; preds = %resume.entry
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr512 = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load i64, ptr %i.a, align 16, !tbaa !143 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  br i1 %i.c, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev4TaskIvE12await_resumeEv.exit135:          ; preds = %resume.entry
  %.reload.addr513 = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr510) #35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = load i64, ptr %i.d, align 16, !tbaa !143 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink9 = phi i64 [ %i.b, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.e, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink.in = phi ptr [ %.reload.addr512, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr513, %_ZN3tev4TaskIvE12await_resumeEv.exit135 ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !141
  %i.g = mul i64 %.sink9, 24
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.g) #40
  br label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit135, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load i64, ptr %i.h, align 16, !tbaa !143 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 5
  br i1 %i.j, label %bb.a, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138

bb.a:                                             ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.k = load ptr, ptr %.reload.addr511, align 8, !tbaa !141
  %i.l = mul i64 %i.i, 24
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.l) #40
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138

.from._ZN3tev16MultiChannelViewIfED2Ev.exit138:   ; preds = %bb.a, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit, %.from.419
  %i.m = load ptr, ptr %.reload.addr517, align 8, !tbaa !101 ; 5 uses
  %.not.i.i140 = icmp eq ptr %i.m, null
  br i1 %.not.i.i140, label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !184 ; 2 uses
  %.not6.i.i.i.i141 = icmp eq ptr %i.m, %i.o
  br i1 %.not6.i.i.i.i141, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i142

.lr.ph.i.i.i.i142:                                ; preds = %bb.b, %.lr.ph.i.i.i.i142
  %.07.i.i.i.i143 = phi ptr [ %i.p, %.lr.ph.i.i.i.i142 ], [ %i.o, %bb.b ]
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i.i143, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.p) #35
  %.not.i.i.i.i144 = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i.i144, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i142

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i142
  %.pre1.i.i145 = load ptr, ptr %.reload.addr517, align 8, !tbaa !101
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.b, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.q = phi ptr [ %.pre1.i.i145, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.m, %bb.b ] ; 2 uses
  store ptr %i.m, ptr %i.n, align 16, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !185
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #40
  br label %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit138
  %.reload.addr476 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.reload477 = load ptr, ptr %.reload.addr476, align 16, !tbaa !123
  tail call void @free(ptr noundef nonnull %.reload477) #35, !inline_history !5
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZNSt3__110unique_ptrIhPDoFvPvEED2B8ne180100Ev.exit, %resume.entry
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !82  ; 5 uses
  %.not.i.i164 = icmp eq ptr %i.x, null
  br i1 %.not.i.i164, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 -1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #35, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #35
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr524 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr524) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #35
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.rint.v2f32(<2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #24

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { allocsize(0) }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { noreturn }
attributes #40 = { builtin nounwind }
attributes #41 = { noreturn nounwind }

!llvm.module.flags = !{!50, !51, !52, !53}
!llvm.ident = !{!54}
!llvm.errno.tbaa = !{!59}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null, null, null, null, null}
!3 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!4 = distinct !{null}
!5 = distinct !{null, null}
!6 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!9 = distinct !{null, null}
!10 = distinct !{!10, !69}
!11 = distinct !{!11, !69}
!12 = distinct !{!12, !69}
!13 = distinct !{null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !69}
!17 = distinct !{!17, !69}
!18 = distinct !{!18, !69}
!19 = distinct !{!19, !69}
!20 = distinct !{null, null}
!21 = distinct !{null, null}
!22 = distinct !{!22, !69}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{!25, !69}
!26 = distinct !{!26, !69}
!27 = distinct !{!27, !69}
!28 = distinct !{null, null, null, null}
!29 = distinct !{!29, !69}
end_hunk_8
begin_hunk_9_@llvm.copysign.v2f32
!254 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !220, i64 0}
!255 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !254, i64 0, !249, i64 8, !90, i64 16, !90, i64 40, !90, i64 64}
!256 = !{!255, !249, i64 8}
!257 = !{i64 4}
!258 = !{!"p1 int", !72, i64 0}
!259 = !{!258, !258, i64 0}
!260 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !72, i64 0}
!261 = !{!260, !260, i64 0}
!262 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !72, i64 0}
!263 = !{!262, !262, i64 0}
!264 = !{i64 8}
!265 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !85, i64 0, !85, i64 8, !57, i64 16}
!266 = !{!265, !85, i64 0}
!267 = !{!265, !85, i64 8}
!268 = !{!265, !57, i64 16}
!269 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !258, i64 0, !102, i64 8, !102, i64 16, !72, i64 24}
!270 = !{!269, !258, i64 0}
!271 = !{!269, !102, i64 16}
!272 = !{!269, !102, i64 8}
!273 = !{!222, !85, i64 0}
!274 = !{!222, !102, i64 8}
!275 = !{!"_ZTSN3fmt3v124signE", !56, i64 0}
!276 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !275, i64 0, !85, i64 8}
!277 = !{!276, !275, i64 0}
!278 = !{!276, !85, i64 8}
!279 = !{!275, !275, i64 0}
!280 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !57, i64 0, !57, i64 4}
!281 = !{!280, !57, i64 4}
!282 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !72, i64 0}
!283 = !{!282, !282, i64 0}
!284 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !72, i64 0}
!285 = !{!284, !284, i64 0}
!286 = !{!"p1 bool", !72, i64 0}
!287 = !{!286, !286, i64 0}
!288 = !{!280, !57, i64 0}
!289 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !102, i64 0, !57, i64 8}
!290 = !{!289, !57, i64 8}
!291 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !72, i64 0}
!292 = !{!291, !291, i64 0}
!293 = !{!289, !102, i64 0}
!294 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !85, i64 0, !57, i64 8, !57, i64 12}
!295 = !{!294, !85, i64 0}
!296 = !{!294, !57, i64 8}
!297 = !{!294, !57, i64 12}
!298 = !{!"__int128", !56, i64 0}
!299 = !{!298, !298, i64 0}
!300 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !258, i64 0, !102, i64 8, !102, i64 16, !72, i64 24}
!301 = !{!300, !72, i64 24}
!302 = !{!300, !258, i64 0}
!303 = !{!300, !102, i64 16}
!304 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !300, i64 0, !56, i64 32}
!305 = !{!"_ZTSN3fmt3v126detail6bigintE", !304, i64 0, !57, i64 160}
!306 = !{!305, !57, i64 160}
!307 = !{!300, !102, i64 8}
!308 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !275, i64 0, !294, i64 8, !57, i64 24, !56, i64 28, !57, i64 32, !56, i64 36, !57, i64 40}
!309 = !{!308, !275, i64 0}
!310 = !{!308, !57, i64 24}
!311 = !{!308, !56, i64 28}
!312 = !{!308, !57, i64 32}
!313 = !{!308, !56, i64 36}
!314 = !{!308, !57, i64 40}
!315 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !72, i64 0}
!316 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !90, i64 0, !56, i64 24}
!317 = !{!316, !56, i64 24}
!318 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !72, i64 0}
!319 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !318, i64 0, !102, i64 8}
!320 = !{!319, !102, i64 8}
!321 = !{!319, !318, i64 0}
!322 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !85, i64 0, !57, i64 8}
!323 = !{!322, !85, i64 0}
!324 = !{!322, !57, i64 8}
!325 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !56, i64 0}
!326 = !{!325, !325, i64 0}
!327 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !72, i64 0}
!328 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !72, i64 0}
!329 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !275, i64 0, !289, i64 8, !57, i64 24, !56, i64 28, !57, i64 32, !56, i64 36, !57, i64 40}
!330 = !{!329, !275, i64 0}
!331 = !{!329, !57, i64 24}
!332 = !{!329, !56, i64 28}
!333 = !{!329, !57, i64 32}
!334 = !{!329, !56, i64 36}
!335 = !{!329, !57, i64 40}
!336 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !72, i64 0}
!337 = !{!336, !336, i64 0}
!338 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !134, i64 0, !102, i64 8, !222, i64 16}
!339 = !{!338, !134, i64 0}
!340 = !{!338, !102, i64 8}
!341 = !{!"branch_weights", i32 8, i32 24}
!342 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !213, i64 0, !56, i64 32, !102, i64 288}
!343 = !{!342, !102, i64 288}
!344 = !{!155, !152, i64 0}
!345 = !{!155, !152, i64 8}
!346 = !{!152, !152, i64 0}
!347 = !{!149, !146, i64 0}
!348 = !{!149, !146, i64 8}
!349 = !{!146, !146, i64 0}
!350 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !72, i64 0}
!351 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !350, i64 0, !79, i64 8}
!352 = !{!351, !79, i64 8}
!353 = !{!115, !79, i64 8}
!354 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !72, i64 0}
!355 = !{!354, !354, i64 0}
!356 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !354, i64 0}
!357 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !356, i64 0, !134, i64 8}
!358 = !{!357, !134, i64 8}
!359 = !{!106, !106, i64 0}
!360 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !72, i64 0}
!361 = !{!"_ZTSN4tlog7IOutputE"}
!362 = !{!"_ZTSN4tlog13ConsoleOutputE", !361, i64 0, !134, i64 8, !360, i64 16, !189, i64 24}
!363 = !{!362, !134, i64 8}
!364 = !{!"any p2 pointer", !72, i64 0}
!365 = !{!"_ZTSNSt3__18ios_baseE", !57, i64 8, !102, i64 16, !102, i64 24, !57, i64 32, !57, i64 36, !72, i64 40, !72, i64 48, !364, i64 56, !258, i64 64, !102, i64 72, !102, i64 80, !210, i64 88, !102, i64 96, !102, i64 104, !364, i64 112, !102, i64 120, !102, i64 128}
!366 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !365, i64 0, !360, i64 136, !57, i64 144}
!367 = !{!366, !57, i64 144}
!368 = !{!"_ZTSSt9type_info", !85, i64 8}
!369 = !{!368, !85, i64 8}
!370 = !{!"p1 _ZTSN7nanogui5ArrayIiLm2EEE", !72, i64 0}
!371 = !{!370, !370, i64 0}
!372 = !{!"p1 _ZTSNSt3__14spanIKhLm18446744073709551615EEE", !72, i64 0}
!373 = !{!372, !372, i64 0}
!374 = !{!"p1 float", !72, i64 0}
!375 = !{!374, !374, i64 0}
!376 = !{!"p1 _ZTSN3tev16MultiChannelViewIfEE", !72, i64 0}
!377 = !{!376, !376, i64 0}
!378 = !{i64 0, i64 8, !371, i64 8, i64 8, !211, i64 16, i64 8, !373, i64 24, i64 8, !375, i64 32, i64 8, !375, i64 40, i64 8, !287, i64 48, i64 8, !211, i64 56, i64 8, !377, i64 64, i64 8, !186, i64 72, i64 8, !211}
!379 = !{!"branch_weights", i32 1, i32 127}
!380 = !{!"branch_weights", i32 127, i32 255873}
!381 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iEUlvE_", !57, i64 0, !57, i64 4, !72, i64 8}
!382 = !{!381, !57, i64 0}
!383 = !{!381, !57, i64 4}
!384 = !{!"p1 _ZTSN3tev4TaskIvEE", !72, i64 0}
!385 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !384, i64 0}
!386 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !385, i64 0}
!387 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !384, i64 0, !384, i64 8, !386, i64 16}
!388 = !{!387, !384, i64 8}
!389 = !{!384, !384, i64 0}
!390 = !{!79, !79, i64 0}
!391 = !{!387, !384, i64 0}
!392 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !55, i64 0}
!393 = !{!392, !392, i64 0}
!394 = !{!"p1 _ZTSSt13exception_ptr", !72, i64 0}
!395 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !394, i64 0}
!396 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !395, i64 0}
!397 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !394, i64 0, !394, i64 8, !396, i64 16}
!398 = !{!397, !394, i64 8}
!399 = !{!397, !394, i64 0}
!400 = !{!394, !394, i64 0}
!401 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !56, i64 0}
!402 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !72, i64 0}
!403 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !401, i64 0, !402, i64 32}
!404 = !{!403, !402, i64 32}
!405 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !72, i64 0}
!406 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !405, i64 0, !79, i64 8}
!407 = !{!406, !405, i64 0}
!408 = !{!406, !79, i64 8}
!409 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !72, i64 0}
!410 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !409, i64 0}
!411 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !410, i64 0}
!412 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !409, i64 0, !409, i64 8, !411, i64 16}
!413 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !72, i64 0}
!414 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !401, i64 0, !413, i64 32}
!415 = !{!414, !413, i64 32}
!416 = !{!"_ZTSNSt3__18functionIFvvEEE", !414, i64 0}
!417 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !416, i64 0, !57, i64 48, !134, i64 52}
!418 = !{!417, !57, i64 48}
!419 = !{!412, !409, i64 8}
!420 = !{!409, !409, i64 0}
!421 = !{!412, !409, i64 0}
!422 = !{!"_ZTSZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiEUlTyiE_", !258, i64 0, !210, i64 8, !372, i64 16, !374, i64 24, !374, i64 32, !286, i64 40, !210, i64 48, !376, i64 56, !72, i64 64, !210, i64 72}
!423 = !{!422, !258, i64 0}
!424 = !{!422, !210, i64 8}
!425 = !{!422, !372, i64 16}
!426 = !{!422, !374, i64 24}
!427 = !{!422, !374, i64 32}
!428 = !{!422, !286, i64 40}
!429 = !{!422, !210, i64 48}
!430 = !{!422, !376, i64 56}
!431 = !{!"_ZTSN3tev11ChannelViewIfEE", !374, i64 0, !102, i64 8, !180, i64 16}
!432 = !{!431, !374, i64 0}
!433 = !{!431, !102, i64 8}
!434 = !{!422, !72, i64 64}
!435 = !{!422, !210, i64 72}
!436 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !72, i64 0}
!437 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !436, i64 0}
!438 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !437, i64 0, !134, i64 8}
!439 = !{!438, !134, i64 8}
!440 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iEUlvE_", !57, i64 0, !57, i64 4, !72, i64 8}
!441 = !{!440, !57, i64 0}
!442 = !{!440, !57, i64 4}
!443 = !{!"_ZTSZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiEUlTyiE_", !258, i64 0, !210, i64 8, !372, i64 16, !374, i64 24, !374, i64 32, !286, i64 40, !210, i64 48, !376, i64 56, !72, i64 64, !210, i64 72}
!444 = !{!443, !258, i64 0}
!445 = !{!443, !210, i64 8}
!446 = !{!443, !372, i64 16}
!447 = !{!443, !374, i64 24}
!448 = !{!443, !374, i64 32}
!449 = !{!443, !286, i64 40}
!450 = !{!443, !210, i64 48}
!451 = !{!443, !376, i64 56}
!452 = !{!443, !72, i64 64}
!453 = !{!443, !210, i64 72}
!454 = !{!"branch_weights", i32 -1546098377, i32 -693363755}
!455 = !{!"branch_weights", i32 -171659984, i32 343608614}
!456 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!457 = !{!"branch_weights", i32 -840054308, i32 -1751137347}
!458 = !{!"branch_weights", i32 -1546104669, i32 -693363755}
!459 = distinct !{!459, !69}
!460 = distinct !{!460, !69}
!461 = distinct !{!461, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!462 = distinct !{!462, !461, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!463 = distinct !{!463, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!464 = distinct !{!464, !463, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!465 = distinct !{!465, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!466 = distinct !{!466, !465, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!467 = distinct !{!467, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!468 = distinct !{!468, !467, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!469 = distinct !{!469, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!470 = distinct !{!470, !469, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!471 = distinct !{!471, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv"}
!472 = distinct !{!472, !471, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!473 = !{!462}
!474 = !{!464}
!475 = !{!464, !462}
!476 = !{!466, !464, !462}
!477 = !{!468}
!478 = !{!"_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE", !85, i64 0, !102, i64 8}
!479 = !{!478, !85, i64 0}
!480 = !{!478, !102, i64 8}
!481 = !{!470}
!482 = !{!472, !470}
!483 = distinct !{!483, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv"}
!484 = distinct !{!484, !483, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv: argument 0"}
!485 = !{!484}
!486 = distinct !{!486, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!487 = distinct !{!487, !486, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!488 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!489 = !{!487}
!490 = distinct !{!490, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_"}
!491 = distinct !{!491, !490, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_: argument 0"}
!492 = distinct !{!492, !69}
!493 = !{!195, !195, i64 0}
!494 = !{!491}
!495 = !{!157, !60, i64 48}
!496 = !{!164, !134, i64 1}
!497 = !{!171, !134, i64 4}
!498 = !{!182, !179, i64 220}
!499 = distinct !{null, null, null, null, null, null, null, null, null}
!500 = distinct !{null, null}
!501 = distinct !{!501, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!502 = distinct !{!502, !501, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!503 = distinct !{!503, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!504 = distinct !{!504, !503, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!505 = distinct !{!505, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!506 = distinct !{!506, !505, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!507 = distinct !{!507, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!508 = distinct !{!508, !507, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!509 = distinct !{!509, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!510 = distinct !{!510, !509, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!511 = !{!502}
!512 = !{!504}
!513 = !{!504, !502}
!514 = !{!506, !504, !502}
!515 = !{!508}
!516 = !{!510}
!517 = distinct !{!517, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!518 = distinct !{!518, !517, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!519 = distinct !{!519, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!520 = distinct !{!520, !519, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!521 = distinct !{!521, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!522 = distinct !{!522, !521, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!523 = distinct !{!523, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!524 = distinct !{!524, !523, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!525 = distinct !{!525, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!526 = distinct !{!526, !525, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!527 = !{!518}
!528 = !{!520}
!529 = !{!520, !518}
!530 = !{!522, !520, !518}
!531 = !{!524}
!532 = !{!526}
!533 = distinct !{null, null}
!534 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskINS_6vectorINS1_9ImageDataENS_9allocatorIS5_EEEEEES8_EEEE", !72, i64 0}
!535 = !{!534, !72, i64 0}
!536 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev}
!537 = distinct !{!537, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_"}
!538 = distinct !{!538, !537, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_: argument 0"}
!539 = distinct !{null}
!540 = !{!538}
!541 = !{!"p1 _ZTSNSt3__114error_categoryE", !72, i64 0}
!542 = !{!541, !541, i64 0}
!543 = !{i64 0, i64 4, !68, i64 8, i64 8, !542}
!544 = distinct !{null, null}
!545 = distinct !{!545, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!546 = distinct !{!546, !545, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!547 = !{!546}
!548 = distinct !{!548, !"_ZNK3fmt3v127context3argEi"}
!549 = distinct !{!549, !548, !"_ZNK3fmt3v127context3argEi: argument 0"}
!550 = distinct !{!550, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!551 = distinct !{!551, !550, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!552 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!553 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!554 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!555 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null, null}
!556 = distinct !{!556, !"_ZNK3fmt3v127context3argEi"}
!557 = distinct !{!557, !556, !"_ZNK3fmt3v127context3argEi: argument 0"}
!558 = distinct !{!558, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!559 = distinct !{!559, !558, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!560 = !{!551, !549}
!561 = !{!236, !236, i64 0}
!562 = !{!559, !557}
!563 = distinct !{null, null, null}
!564 = distinct !{null, null, null}
!565 = distinct !{null, null, null}
!566 = distinct !{null, null, null, null}
!567 = distinct !{!567, !69, !239, !240}
!568 = distinct !{!568, !69, !239, !240}
!569 = distinct !{!569, !242}
!570 = distinct !{!570, !69, !239}
!571 = distinct !{!571, !69}
!572 = distinct !{null, null, null, null}
!573 = distinct !{null, null, null, null, null}
!574 = distinct !{null, null, null}
!575 = distinct !{null, null, null, null}
!576 = distinct !{!576, !69}
!577 = distinct !{!577, !"_ZNKSt3__18numpunctIcE8groupingB8ne180100Ev"}
!578 = distinct !{!578, !577, !"_ZNKSt3__18numpunctIcE8groupingB8ne180100Ev: argument 0"}
!579 = !{!187, !102, i64 8}
!580 = !{!578}
!581 = distinct !{!581, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE"}
!582 = distinct !{!582, !581, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE: argument 0"}
!583 = !{!582}
!584 = distinct !{!584, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE"}
!585 = distinct !{!585, !584, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE: argument 0"}
!586 = !{!585}
!587 = distinct !{!587, !69}
!588 = distinct !{!588, !69}
!589 = distinct !{null, null, null, null}
!590 = distinct !{!590, !69}
!591 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !258, i64 0, !260, i64 8, !262, i64 16}
!592 = !{!591, !258, i64 0}
!593 = !{!591, !260, i64 8}
!594 = !{!591, !262, i64 16}
!595 = distinct !{null, null, null, null}
!596 = distinct !{null, null, null, null}
!597 = distinct !{!597, !69}
!598 = distinct !{!598, !69, !239, !240}
!599 = distinct !{!599, !69, !239, !240}
!600 = distinct !{!600, !242}
!601 = distinct !{!601, !69, !239}
!602 = distinct !{!602, !69}
!603 = distinct !{!603, !69}
!604 = distinct !{!604, !69}
!605 = distinct !{!605, !69}
!606 = distinct !{null}
!607 = distinct !{null}
!608 = distinct !{!608, !69, !239, !240}
!609 = distinct !{!609, !69, !239, !240}
!610 = distinct !{!610, !242}
!611 = distinct !{!611, !69, !239}
!612 = distinct !{null}
!613 = distinct !{!613, !69}
!614 = !{!269, !72, i64 24}
!615 = distinct !{!615, !69}
!616 = distinct !{!616, !69}
!617 = distinct !{!617, !69}
!618 = distinct !{null, null, null, null}
!619 = distinct !{!619, !69}
!620 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !258, i64 0, !260, i64 8, !262, i64 16}
!621 = !{!620, !258, i64 0}
!622 = !{!620, !260, i64 8}
!623 = !{!620, !262, i64 16}
!624 = distinct !{null, null, null}
!625 = distinct !{!625, !69, !239, !240}
!626 = distinct !{!626, !69, !239, !240}
!627 = distinct !{!627, !242}
!628 = distinct !{!628, !69, !239}
!629 = distinct !{null, null, null, null}
!630 = distinct !{null, null, null, null}
!631 = distinct !{!631, !69}
!632 = distinct !{null, null, null, null}
!633 = distinct !{null, null, null}
!634 = distinct !{!634, !69, !239, !240}
!635 = distinct !{!635, !69, !239, !240}
!636 = distinct !{!636, !242}
!637 = distinct !{!637, !69, !239}
!638 = distinct !{null, null, null, null, null}
!639 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E_", !72, i64 0, !282, i64 8, !258, i64 16, !284, i64 24, !249, i64 32, !85, i64 40, !258, i64 48}
!640 = !{!639, !72, i64 0}
!641 = !{!639, !282, i64 8}
!642 = !{!639, !258, i64 16}
!643 = !{!639, !249, i64 32}
!644 = !{!639, !85, i64 40}
!645 = !{!639, !258, i64 48}
!646 = distinct !{null, null, null, null}
!647 = distinct !{null, null, null, null, null}
!648 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !72, i64 0, !282, i64 8, !258, i64 16, !258, i64 24, !85, i64 32, !284, i64 40, !258, i64 48}
!649 = !{!648, !72, i64 0}
!650 = !{!648, !282, i64 8}
!651 = !{!648, !258, i64 16}
!652 = !{!648, !258, i64 24}
!653 = !{!648, !85, i64 32}
!654 = !{!648, !258, i64 48}
!655 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !72, i64 0, !286, i64 8, !85, i64 16, !258, i64 24, !282, i64 32, !258, i64 40}
!656 = !{!655, !72, i64 0}
!657 = !{!655, !286, i64 8}
!658 = !{!655, !85, i64 16}
end_hunk_9
begin_hunk_10_@llvm.copysign.v2f32
!1282 = distinct !{!1282, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
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
!1295 = !{!381, !72, i64 8}
!1296 = distinct !{!1296, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1297 = distinct !{!1297, !1296, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1298 = distinct !{!1298, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1299 = distinct !{!1299, !1298, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1300 = distinct !{!1300, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1301 = distinct !{!1301, !1300, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1302 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1303 = distinct !{!1303, !69}
!1304 = !{!1297}
!1305 = !{!1299}
!1306 = !{!1299, !1297}
!1307 = !{!1301, !1299, !1297}
!1308 = !{!"p1 _ZTSNSt3__16threadE", !72, i64 0}
!1309 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1308, i64 0}
!1310 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1309, i64 0}
!1311 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1308, i64 0, !1308, i64 8, !1310, i64 16}
!1312 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1313 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !412, i64 0, !1312, i64 24}
!1314 = !{!"_ZTSNSt3__115recursive_mutexE", !56, i64 0}
!1315 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !56, i64 0}
!1316 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1315, i64 0}
!1317 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1316, i64 0}
!1318 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1317, i64 0}
!1319 = !{!"_ZTSNSt3__16atomicIlEE", !1318, i64 0}
!1320 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !56, i64 0}
!1321 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1319, i64 0, !1320, i64 8, !57, i64 40}
!1322 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !56, i64 0}
!1323 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1322, i64 0}
!1324 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1323, i64 0}
!1325 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1324, i64 0}
!1326 = !{!"_ZTSNSt3__16atomicImEE", !1325, i64 0}
!1327 = !{!"_ZTSN3tev10ThreadPoolE", !134, i64 8, !1311, i64 16, !1313, i64 40, !1314, i64 72, !1321, i64 112, !1314, i64 160, !1326, i64 200, !1326, i64 208}
!1328 = !{!1327, !134, i64 8}
!1329 = !{!417, !134, i64 52}
!1330 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1331 = distinct !{null, null, null}
!1332 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !72, i64 0}
!1333 = !{!1332, !72, i64 0}
!1334 = distinct !{!1334, !69}
!1335 = distinct !{null, null, null, null, null, null, null, null, null}
!1336 = distinct !{null, null, null, null}
!1337 = distinct !{null}
!1338 = distinct !{!1338, !69}
!1339 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1340 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1341 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1342 = distinct !{null}
!1343 = !{!"_ZTSNSt3__17promiseIvEE", !203, i64 0}
!1344 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !403, i64 0, !1343, i64 48}
!1345 = !{!1344, !203, i64 48}
!1346 = distinct !{!1346, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1347 = distinct !{!1347, !1346, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1348 = distinct !{!1348, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1349 = distinct !{!1349, !1348, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1350 = distinct !{!1350, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1351 = distinct !{!1351, !1350, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1352 = distinct !{!1352, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1353 = distinct !{!1353, !1352, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1354 = distinct !{!1354, !69}
!1355 = distinct !{!1355, !69}
!1356 = distinct !{!1356, !69}
!1357 = !{!1347}
!1358 = !{!1349}
!1359 = !{!1349, !1347}
!1360 = !{!1351, !1349, !1347}
!1361 = !{!1353}
!1362 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iEUliiE_", !72, i64 0}
!1363 = !{!1362, !72, i64 0}
!1364 = !{!"_ZTSZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_", !370, i64 0, !210, i64 8, !372, i64 16, !374, i64 24, !374, i64 32, !286, i64 40, !210, i64 48, !376, i64 56, !72, i64 64, !210, i64 72}
!1365 = !{!1364, !370, i64 0}
!1366 = !{!1364, !374, i64 24}
!1367 = !{!1364, !72, i64 64}
!1368 = !{!1364, !210, i64 72}
!1369 = distinct !{!1369, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKhEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm"}
!1370 = distinct !{!1370, !1369, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKhEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm: argument 0"}
!1371 = distinct !{!1371, !69}
!1372 = distinct !{!1372, !69}
!1373 = !{!1370}
!1374 = distinct !{!1374, !69}
!1375 = distinct !{!1375, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1376 = distinct !{!1376, !1375, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1377 = distinct !{!1377, !69}
!1378 = !{!436, !436, i64 0}
!1379 = !{!1376}
!1380 = distinct !{!1380, !69}
!1381 = !{!437, !436, i64 0}
!1382 = distinct !{!1382, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1383 = distinct !{!1383, !1382, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1384 = distinct !{!1384, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1385 = distinct !{!1385, !1384, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1386 = distinct !{!1386, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1387 = distinct !{!1387, !1386, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1388 = distinct !{!1388, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1389 = distinct !{!1389, !1388, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1390 = !{!1383}
!1391 = !{!1385}
!1392 = !{!1385, !1383}
!1393 = !{!1387, !1385, !1383}
!1394 = !{!1389}
!1395 = distinct !{!1395, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1396 = distinct !{!1396, !1395, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1397 = distinct !{!1397, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1398 = distinct !{!1398, !1397, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1399 = distinct !{!1399, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1400 = distinct !{!1400, !1399, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1401 = distinct !{!1401, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1402 = distinct !{!1402, !1401, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1403 = distinct !{!1403, !69}
!1404 = distinct !{!1404, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1405 = distinct !{!1405, !1404, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1406 = !{!1396}
!1407 = !{!1398}
!1408 = !{!1398, !1396}
!1409 = !{!1400, !1398, !1396}
!1410 = !{!1402}
!1411 = !{!1405}
!1412 = distinct !{!1412, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1413 = distinct !{!1413, !1412, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1414 = distinct !{!1414, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1415 = distinct !{!1415, !1414, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1416 = distinct !{!1416, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1417 = distinct !{!1417, !1416, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1418 = distinct !{!1418, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1419 = distinct !{!1419, !1418, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1420 = !{!1413}
!1421 = !{!1415}
!1422 = !{!1415, !1413}
!1423 = !{!1417, !1415, !1413}
!1424 = !{!1419}
!1425 = distinct !{!1425, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1426 = distinct !{!1426, !1425, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1427 = distinct !{!1427, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1428 = distinct !{!1428, !1427, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1429 = distinct !{!1429, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1430 = distinct !{!1430, !1429, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1431 = distinct !{!1431, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1432 = distinct !{!1432, !1431, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1433 = !{!1426}
!1434 = !{!1428}
!1435 = !{!1428, !1426}
!1436 = !{!1430, !1428, !1426}
!1437 = !{!1432}
!1438 = distinct !{!1438, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1439 = distinct !{!1439, !1438, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1440 = distinct !{!1440, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1441 = distinct !{!1441, !1440, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1442 = distinct !{!1442, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1443 = distinct !{!1443, !1442, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1444 = distinct !{!1444, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1445 = distinct !{!1445, !1444, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1446 = !{!1439}
!1447 = !{!1441}
!1448 = !{!1441, !1439}
!1449 = !{!1443, !1441, !1439}
!1450 = !{!1445}
!1451 = !{!440, !72, i64 8}
!1452 = distinct !{!1452, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1453 = distinct !{!1453, !1452, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1454 = distinct !{!1454, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1455 = distinct !{!1455, !1454, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1456 = distinct !{!1456, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1457 = distinct !{!1457, !1456, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1458 = distinct !{!1458, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1459 = distinct !{!1459, !1458, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1460 = distinct !{!1460, !69}
!1461 = distinct !{!1461, !69}
!1462 = distinct !{!1462, !69}
!1463 = !{!1453}
!1464 = !{!1455}
!1465 = !{!1455, !1453}
!1466 = !{!1457, !1455, !1453}
!1467 = !{!1459}
!1468 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iEUliiE_", !72, i64 0}
!1469 = !{!1468, !72, i64 0}
!1470 = !{!"_ZTSZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_", !370, i64 0, !210, i64 8, !372, i64 16, !374, i64 24, !374, i64 32, !286, i64 40, !210, i64 48, !376, i64 56, !72, i64 64, !210, i64 72}
!1471 = !{!1470, !370, i64 0}
!1472 = !{!1470, !374, i64 24}
!1473 = !{!1470, !72, i64 64}
!1474 = !{!1470, !210, i64 72}
!1475 = distinct !{!1475, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKhEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm"}
!1476 = distinct !{!1476, !1475, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKhEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm: argument 0"}
!1477 = distinct !{!1477, !69}
!1478 = distinct !{!1478, !69}
!1479 = !{!1476}
!1480 = !{i64 0, i64 48, !67}
!1481 = distinct !{!1481, !69}
!1482 = !{!"branch_weights", i32 -2004248167, i32 118691432}
!1483 = distinct !{!1483, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!1484 = distinct !{!1484, !1483, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!1485 = distinct !{!1485, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv"}
!1486 = distinct !{!1486, !1485, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!1487 = !{!"branch_weights", i32 0, i32 -1050470178, i32 1351862550, i32 1351862550}
!1488 = !{!1484}
!1489 = !{!1486, !1484}
!1490 = !{!"branch_weights", i32 0, i32 -1050470178, i32 1351862550, i32 1351862550, i32 -2133997772}
end_hunk_10
