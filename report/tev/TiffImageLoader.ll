Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 178
begin_hunk_0_@_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi:.from.
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.p unwind label %.body205.from.597

bb.p:                                             ; preds = %bb.o
  %i.cv = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body205.from.597:                                ; preds = %bb.o
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %.from.782

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.p, %bb.n, %_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEES5_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  %i.cx = load i64, ptr %.reload.addr941, align 8, !tbaa !87
  %i.cy = mul i64 %i.cx, %i.az
  store ptr %.reload.addr941, ptr %12, align 8, !tbaa !142
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %5, ptr %i.cz, align 8, !tbaa !146
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %.reload.addr937, ptr %i.da, align 8, !tbaa !142
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %.reload.addr926, ptr %i.db, align 8, !tbaa !173
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %.reload.addr916, ptr %i.dc, align 8, !tbaa !173
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %.reload.addr920, ptr %i.dd, align 8, !tbaa !173
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNS2_4spanIKhLm18446744073709551615EEENS_10EAlphaKindEiE3$_0EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr915, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.az, i64 noundef %i.cy, ptr noundef nonnull byval(%class.anon.184) align 8 %12, i32 noundef %9)
          to label %bb.q unwind label %.body205.from.

bb.q:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !95
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load atomic i32, ptr %i.dg acquire, align 4
  %i.di = icmp slt i32 %i.dh, 2
  br i1 %i.di, label %bb.r, label %AfterCoroSave

bb.r:                                             ; preds = %bb.q
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !95
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %i.dm = icmp slt i32 %i.dl, 1
  br i1 %i.dm, label %bb.s, label %.thread.sink.split

bb.s:                                             ; preds = %bb.r
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.s
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !117 ; 7 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !128
  %i.dq = and i32 %i.dp, 8
  %.not.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %.thread.sink.split

bb.t:                                             ; preds = %.noexc.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !129 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ds, %i.du
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ds, %.from..lr.ph.i.i.i.i.i ], [ %i.ek, %.noexc2.i.i ] ; 2 uses
  %i.dz = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.ea = load i8, ptr %i.dv, align 8             ; 2 uses
  %i.eb = trunc i8 %i.ea to i1                    ; 2 uses
  %i.ec = load ptr, ptr %i.dw, align 8
  %i.ed = select i1 %i.eb, ptr %i.ec, ptr %i.dx
  %i.ee = load i64, ptr %i.dy, align 8
  %i.ef = lshr i8 %i.ea, 1
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = select i1 %i.eb, i64 %i.ee, i64 %i.eg
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !89
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr %i.ed, i64 %i.eh, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, %i.du
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

.from..loopexit.split-lp.i.i:                     ; preds = %bb.s
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.el = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.el) #48
  unreachable

AfterCoroSave:                                    ; preds = %bb.q
  %index.addr945 = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  store i8 0, ptr %index.addr945, align 4
  %i.em = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr915, ptr nonnull %i.b) #44
  br i1 %i.em, label %AfterCoroEnd, label %bb.v

.from.771:                                        ; preds = %bb.j
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  br label %.from..split783

.from.608:                                        ; preds = %bb.k
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.782

.from.603:                                        ; preds = %bb.m, %.noexc203
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.782

.body205.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.782

bb.v:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr915, align 8, !tbaa !135 ; 3 uses
  %.not.i207 = icmp eq ptr %.pr, null
  br i1 %.not.i207, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body205.from.600, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.w, %bb.t, %.noexc.i.i, %bb.r
  store ptr null, ptr %.reload.addr915, align 8, !tbaa !135
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit.thread unwind label %.body205.from.600

_ZN3tev4TaskIvE12await_resumeEv.exit.thread:      ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr915) #44
  br label %bb.x

.body205.from.600:                                ; preds = %bb.w, %.thread
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr915) #44
  br label %.from.782

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit.thread, %bb.l
  %.reload829 = load i16, ptr %.spill.addr825, align 8, !tbaa !293
  %i.ew = icmp eq i16 %.reload829, 6
  %i.ex = load i64, ptr %.reload.addr941, align 8
  %i.ey = icmp ugt i64 %i.ex, 2
  %or.cond = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.y, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %.reload824 = load ptr, ptr %.spill.addr, align 8, !tbaa !293
  store <4 x float> <float 1.402000e+00, float -3.441360e-01, float -7.141360e-01, float 1.772000e+00>, ptr %.reload.addr916, align 8, !tbaa !79
  %i.ez = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %.reload824, i32 noundef 529)
          to label %bb.z unwind label %.from.634  ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.fa = extractvalue { ptr, i64 } %i.ez, 1
  %i.fb = icmp ugt i64 %i.fa, 2
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fc = extractvalue { ptr, i64 } %i.ez, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !79 ; 2 uses
  %i.ff = load <2 x float>, ptr %i.fc, align 4, !tbaa !79 ; 3 uses
  store <2 x float> %i.ff, ptr %13, align 8, !tbaa !79
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.fe, ptr %i.fg, align 8, !tbaa !79
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.fe, i64 0 ; 2 uses
  %i.fj = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 2 uses
  %i.fk = fmul <2 x float> %i.fi, splat (float -2.000000e+00)
  %i.fl = fmul <2 x float> %i.fk, %i.fj
  %i.fm = shufflevector <2 x float> %i.fj, <2 x float> %i.fl, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %28 = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 poison>
  %29 = shufflevector <4 x float> <float 2.000000e+00, float poison, float poison, float 2.000000e+00>, <4 x float> %28, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.fn = fmul <4 x float> %i.fm, %29
  %i.fo = fdiv <4 x float> %i.fm, %29
  %i.fp = shufflevector <4 x float> %i.fn, <4 x float> %i.fo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.fp, ptr %.reload.addr916, align 8
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc210 unwind label %.from.637

.noexc210:                                        ; preds = %bb.aa
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIfLm3EEERNS3_IfLm4EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.fr, i32 noundef 4, ptr nonnull @.str.61, i64 34, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(16) %.reload.addr916)
          to label %_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit unwind label %.from.637

_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit: ; preds = %.noexc210
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br label %bb.ab

.from.782:                                        ; preds = %.from.608, %.from.603, %.body205.from.600, %.body205.from.597, %.body205.from.
  %.pn167.pn.pn.pn = phi { ptr, i32 } [ %i.ep, %.from.608 ], [ %i.eq, %.from.603 ], [ %i.ev, %.body205.from.600 ], [ %i.er, %.body205.from. ], [ %i.cw, %.body205.from.597 ]
  %.5 = extractvalue { ptr, i32 } %.pn167.pn.pn.pn, 0
  br label %.from..split783

.from.634:                                        ; preds = %bb.y
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.780

.from.637:                                        ; preds = %bb.aa, %.noexc210
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  br label %.from.780

bb.ab:                                            ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit, %bb.z
  %.reload837 = load ptr, ptr %.spill.addr833, align 8, !tbaa !293 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.reload837, i64 16
  store i64 4539628425446424576, ptr %.reload.addr920, align 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !114 ; 5 uses
  %i.fw = icmp ugt i64 %i.fv, 5
  br i1 %i.fw, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fx = icmp ugt i64 %i.fv, 768614336404564650
  br i1 %i.fx, label %bb.ad, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #45
          to label %.noexc213 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632

.noexc213:                                        ; preds = %bb.ad
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i: ; preds = %bb.ac
  %i.fy = mul nuw i64 %i.fv, 24
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #46
          to label %.noexc214 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632 ; 2 uses

.noexc214:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %.reload835 = load ptr, ptr %.spill.addr833, align 8, !tbaa !293 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.reload835, i64 16
  store ptr %i.fz, ptr %.reload.addr914, align 8, !tbaa !103
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !114 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !115
  %.not.i.i.i.i.i212 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i.i212, label %.from..noexc214, label %.from..sink.split

bb.ae:                                            ; preds = %bb.ab
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.gd, align 8, !tbaa !115
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.ge, ptr %.reload.addr914, align 8, !tbaa !103
  %.not.i11.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i11.i.i.i.i, label %.from..noexc214, label %.from..sink.split

.from..sink.split:                                ; preds = %.noexc214, %bb.ae
  %.reload845 = phi ptr [ %.reload835, %.noexc214 ], [ %.reload837, %bb.ae ]
  %.sink557 = phi i64 [ %i.gb, %.noexc214 ], [ %i.fv, %bb.ae ] ; 2 uses
  %.sink = phi ptr [ %i.fz, %.noexc214 ], [ %i.ge, %bb.ae ]
  %.idx.i.i.i.i = mul nsw i64 %.sink557, 24
  %i.gf = load ptr, ptr %.reload845, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, ptr noundef nonnull align 8 dereferenceable(1) %i.gf, i64 %.idx.i.i.i.i, i1 false)
  br label %.from..noexc214

.from..noexc214:                                  ; preds = %bb.ae, %.noexc214, %.from..sink.split
  %i.gg = phi i64 [ %.sink557, %.from..sink.split ], [ 0, %.noexc214 ], [ 0, %bb.ae ]
  %.reload902 = load i32, ptr %.spill.addr892, align 8, !tbaa !293
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !114
  invoke void @_ZN3tev10yCbCrToRgbILb0EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr915, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr914, i32 noundef %.reload902, ptr noundef nonnull %.reload.addr920, ptr noundef nonnull %.reload.addr916)
          to label %bb.af unwind label %.from.626

bb.af:                                            ; preds = %.from..noexc214
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load atomic i32, ptr %i.gk acquire, align 4
  %i.gm = icmp slt i32 %i.gl, 2
  br i1 %i.gm, label %bb.ag, label %AfterCoroSave560

bb.ag:                                            ; preds = %bb.af
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = atomicrmw add ptr %i.go, i32 -1 acq_rel, align 4
  %i.gq = icmp slt i32 %i.gp, 1
  br i1 %i.gq, label %bb.ah, label %.thread464.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i219 unwind label %.from..loopexit.split-lp.i.i216

.noexc.i.i219:                                    ; preds = %bb.ah
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !117 ; 7 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !128
  %i.gu = and i32 %i.gt, 8
  %.not.i.i.i.i220 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i.i.i220, label %bb.ai, label %.thread464.sink.split

bb.ai:                                            ; preds = %.noexc.i.i219
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !129 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i221 = icmp eq ptr %i.gw, %i.gy
  br i1 %.not12.i.i.i.i.i221, label %.thread464.sink.split, label %.from..lr.ph.i.i.i.i.i222

.from..lr.ph.i.i.i.i.i222:                        ; preds = %bb.ai
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 33
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  br label %.from..noexc2.i.i226

.from..noexc2.i.i226:                             ; preds = %.noexc2.i.i226, %.from..lr.ph.i.i.i.i.i222
  %.sroa.09.013.i.i.i.i.i223 = phi ptr [ %i.gw, %.from..lr.ph.i.i.i.i.i222 ], [ %i.ho, %.noexc2.i.i226 ] ; 2 uses
  %i.hd = load ptr, ptr %.sroa.09.013.i.i.i.i.i223, align 8, !tbaa !133 ; 2 uses
  %i.he = load i8, ptr %i.gz, align 8             ; 2 uses
  %i.hf = trunc i8 %i.he to i1                    ; 2 uses
  %i.hg = load ptr, ptr %i.ha, align 8
  %i.hh = select i1 %i.hf, ptr %i.hg, ptr %i.hb
  %i.hi = load i64, ptr %i.hc, align 8
  %i.hj = lshr i8 %i.he, 1
  %i.hk = zext nneg i8 %i.hj to i64
  %i.hl = select i1 %i.hf, i64 %i.hi, i64 %i.hk
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !89
  %i.hn = load ptr, ptr %i.hm, align 8
  invoke void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr %i.hh, i64 %i.hl, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i226 unwind label %.from..loopexit.i.i224, !inline_history !0

.noexc2.i.i226:                                   ; preds = %.from..noexc2.i.i226
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i223, i64 16 ; 2 uses
  %.not.i.i.i.i.i227 = icmp eq ptr %i.ho, %i.gy
  br i1 %.not.i.i.i.i.i227, label %.thread464.sink.split, label %.from..noexc2.i.i226

.from..loopexit.i.i224:                           ; preds = %.from..noexc2.i.i226
  %lpad.loopexit.i.i225 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

.from..loopexit.split-lp.i.i216:                  ; preds = %bb.ah
  %lpad.loopexit.split-lp.i.i217 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

bb.aj:                                            ; preds = %.from..loopexit.split-lp.i.i216, %.from..loopexit.i.i224
  %lpad.phi.i.i218 = phi { ptr, i32 } [ %lpad.loopexit.i.i225, %.from..loopexit.i.i224 ], [ %lpad.loopexit.split-lp.i.i217, %.from..loopexit.split-lp.i.i216 ]
  %i.hp = extractvalue { ptr, i32 } %lpad.phi.i.i218, 0
  call void @__clang_call_terminate(ptr %i.hp) #48
  unreachable

AfterCoroSave560:                                 ; preds = %bb.af
  %index.addr946 = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  store i8 1, ptr %index.addr946, align 4
  %i.hq = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr915, ptr nonnull %i.b) #44
  br i1 %i.hq, label %AfterCoroEnd, label %bb.ak

_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632: ; preds = %bb.ad, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.780

.from.626:                                        ; preds = %.from..noexc214
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.an

bb.ak:                                            ; preds = %AfterCoroSave560
  %.pr462 = load ptr, ptr %.reload.addr915, align 8, !tbaa !135 ; 3 uses
  %.not.i229 = icmp eq ptr %.pr462, null
  br i1 %.not.i229, label %.thread464, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ht = getelementptr inbounds nuw i8, ptr %.pr462, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr nonnull %.pr462)
          to label %.thread464.sink.split unwind label %.from.623, !inline_history !1

.thread464.sink.split:                            ; preds = %.noexc2.i.i226, %bb.al, %bb.ai, %.noexc.i.i219, %bb.ag
  store ptr null, ptr %.reload.addr915, align 8, !tbaa !135
  br label %.thread464

end_hunk_0
begin_hunk_1_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNS2_4spanIKhLm18446744073709551615EEENS_10EAlphaKindEiE3$_3EENS_4TaskIvEES4_S4_mT0_i.resume":bb.a
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !89
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #44, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #44
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
  tail call void @__clang_call_terminate(ptr %i.bb) #48
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNS2_4spanIKhLm18446744073709551615EEENS_10EAlphaKindEiE3$_3EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !901

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #44, !inline_history !2
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi.resume(ptr noundef nonnull align 16 dereferenceable(432) %0) #14 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %class.anon.236, align 8            ; 4 uses
  %2 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %3 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %4 = alloca %"struct.nanogui::Matrix", align 4  ; 5 uses
  %5 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %6 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %7 = alloca %"struct.nanogui::Matrix", align 4  ; 5 uses
  %8 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %9 = alloca %class.anon.235, align 8            ; 4 uses
  %10 = alloca %class.anon.218, align 8           ; 8 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %14 = alloca %"struct.nanogui::Matrix", align 4 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %15 = alloca %"struct.nanogui::Array.39", align 8 ; 6 uses
  %.reload.addr914 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr915 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 20 uses
  %.reload.addr917 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 27 uses
  %.reload.addr920 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 11 uses
  %.reload.addr925 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 11 uses
  %.reload.addr926 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %.reload.addr930 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %.reload.addr937 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.reload.addr941 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %.reload.addr942 = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %.reload.addr944 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 8 uses
  %index = load i8, ptr %index.addr, align 4
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend562
    i8 2, label %AfterCoroSuspend566
    i8 3, label %AfterCoroSuspend570
    i8 4, label %AfterCoroSuspend574
    i8 5, label %AfterCoroSuspend578
  ], !prof !6878

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.pr = load ptr, ptr %.reload.addr915, align 8, !tbaa !135 ; 3 uses
  %.not.i207 = icmp eq ptr %.pr, null
  br i1 %.not.i207, label %.thread, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.782, !inline_history !1

.thread.sink.split:                               ; preds = %bb.a
  store ptr null, ptr %.reload.addr915, align 8, !tbaa !135
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.b unwind label %.from.782

bb.b:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr915) #44
  %.reload.addr828 = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.reload829 = load i16, ptr %.reload.addr828, align 8, !tbaa !293
  %i.e = icmp eq i16 %.reload829, 6
  %i.f = load i64, ptr %.reload.addr941, align 8
  %i.g = icmp ugt i64 %i.f, 2
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %.reload.addr823 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload824 = load ptr, ptr %.reload.addr823, align 16, !tbaa !293
  store <4 x float> <float 1.402000e+00, float -3.441360e-01, float -7.141360e-01, float 1.772000e+00>, ptr %.reload.addr917, align 16, !tbaa !79
  %i.h = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %.reload824, i32 noundef 529)
          to label %bb.d unwind label %.from.634  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  %i.j = icmp ugt i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !79 ; 2 uses
  %i.n = load <2 x float>, ptr %i.k, align 4, !tbaa !79 ; 3 uses
  store <2 x float> %i.n, ptr %15, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.m, ptr %i.o, align 8, !tbaa !79
  %i.p = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.m, i64 0 ; 2 uses
  %i.r = fsub <2 x float> splat (float 1.000000e+00), %i.q ; 2 uses
  %i.s = fmul <2 x float> %i.q, splat (float -2.000000e+00)
  %i.t = fmul <2 x float> %i.s, %i.r
  %i.u = shufflevector <2 x float> %i.r, <2 x float> %i.t, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %16 = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 poison>
  %17 = shufflevector <4 x float> <float 2.000000e+00, float poison, float poison, float 2.000000e+00>, <4 x float> %16, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.v = fmul <4 x float> %i.u, %17
  %i.w = fdiv <4 x float> %i.u, %17
  %i.x = shufflevector <4 x float> %i.v, <4 x float> %i.w, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.x, ptr %.reload.addr917, align 16
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc210 unwind label %.from.637

.noexc210:                                        ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIfLm3EEERNS3_IfLm4EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i32 noundef 4, ptr nonnull @.str.61, i64 34, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(16) %.reload.addr917)
          to label %_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit unwind label %.from.637

_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit: ; preds = %.noexc210
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  br label %bb.f

.from.782:                                        ; preds = %bb.a, %.thread
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr915) #44
  %.5 = extractvalue { ptr, i32 } %i.aa, 0
  br label %.from.790

.from.634:                                        ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.780

.from.637:                                        ; preds = %bb.e, %.noexc210
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  br label %.from.780

bb.f:                                             ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit, %bb.d
  %.reload.addr836 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.reload837 = load ptr, ptr %.reload.addr836, align 8, !tbaa !293 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.reload837, i64 16
  store i64 4539628425446424576, ptr %.reload.addr920, align 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !114 ; 5 uses
  %i.af = icmp ugt i64 %i.ae, 5
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp ugt i64 %i.ae, 768614336404564650
  br i1 %i.ag, label %bb.h, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #45
          to label %.noexc213 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632

.noexc213:                                        ; preds = %bb.h
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i: ; preds = %bb.g
  %i.ah = mul nuw i64 %i.ae, 24
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #46
          to label %.noexc214 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632 ; 2 uses

.noexc214:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %.reload835 = load ptr, ptr %.reload.addr836, align 8, !tbaa !293 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.reload835, i64 16
  store ptr %i.ai, ptr %.reload.addr914, align 8, !tbaa !103
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !114 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ak, ptr %i.al, align 16, !tbaa !115
  %.not.i.i.i.i.i212 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i212, label %.from..noexc214, label %.from..sink.split

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 5, ptr %i.am, align 16, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.an, ptr %.reload.addr914, align 8, !tbaa !103
  %.not.i11.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i11.i.i.i.i, label %.from..noexc214, label %.from..sink.split

.from..sink.split:                                ; preds = %.noexc214, %bb.i
  %.reload845 = phi ptr [ %.reload835, %.noexc214 ], [ %.reload837, %bb.i ]
  %.sink557 = phi i64 [ %i.ak, %.noexc214 ], [ %i.ae, %bb.i ] ; 2 uses
  %.sink = phi ptr [ %i.ai, %.noexc214 ], [ %i.an, %bb.i ]
  %.idx.i.i.i.i = mul nsw i64 %.sink557, 24
  %i.ao = load ptr, ptr %.reload845, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %.idx.i.i.i.i, i1 false)
  br label %.from..noexc214

.from..noexc214:                                  ; preds = %bb.i, %.noexc214, %.from..sink.split
  %i.ap = phi i64 [ %.sink557, %.from..sink.split ], [ 0, %.noexc214 ], [ 0, %bb.i ]
  %.reload.addr901 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.reload902 = load i32, ptr %.reload.addr901, align 16, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !114
  invoke void @_ZN3tev10yCbCrToRgbILb0EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr915, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr914, i32 noundef %.reload902, ptr noundef nonnull %.reload.addr920, ptr noundef nonnull %.reload.addr917)
          to label %bb.j unwind label %.from.626

bb.j:                                             ; preds = %.from..noexc214
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load atomic i32, ptr %i.at acquire, align 4
  %i.av = icmp slt i32 %i.au, 2
  br i1 %i.av, label %bb.k, label %AfterCoroSave560

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %.thread464.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i219 unwind label %.from..loopexit.split-lp.i.i216

.noexc.i.i219:                                    ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !117 ; 7 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !128
  %i.bd = and i32 %i.bc, 8
  %.not.i.i.i.i220 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i220, label %bb.m, label %.thread464.sink.split

bb.m:                                             ; preds = %.noexc.i.i219
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !129 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i221 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not12.i.i.i.i.i221, label %.thread464.sink.split, label %.from..lr.ph.i.i.i.i.i222

.from..lr.ph.i.i.i.i.i222:                        ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  br label %.from..noexc2.i.i226

.from..noexc2.i.i226:                             ; preds = %.noexc2.i.i226, %.from..lr.ph.i.i.i.i.i222
  %.sroa.09.013.i.i.i.i.i223 = phi ptr [ %i.bf, %.from..lr.ph.i.i.i.i.i222 ], [ %i.bx, %.noexc2.i.i226 ] ; 2 uses
  %i.bm = load ptr, ptr %.sroa.09.013.i.i.i.i.i223, align 8, !tbaa !133 ; 2 uses
  %i.bn = load i8, ptr %i.bi, align 8             ; 2 uses
  %i.bo = trunc i8 %i.bn to i1                    ; 2 uses
  %i.bp = load ptr, ptr %i.bj, align 8
  %i.bq = select i1 %i.bo, ptr %i.bp, ptr %i.bk
  %i.br = load i64, ptr %i.bl, align 8
  %i.bs = lshr i8 %i.bn, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = select i1 %i.bo, i64 %i.br, i64 %i.bt
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr %i.bq, i64 %i.bu, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i226 unwind label %.from..loopexit.i.i224, !inline_history !0

.noexc2.i.i226:                                   ; preds = %.from..noexc2.i.i226
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i223, i64 16 ; 2 uses
  %.not.i.i.i.i.i227 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i.i227, label %.thread464.sink.split, label %.from..noexc2.i.i226

.from..loopexit.i.i224:                           ; preds = %.from..noexc2.i.i226
  %lpad.loopexit.i.i225 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

.from..loopexit.split-lp.i.i216:                  ; preds = %bb.l
  %lpad.loopexit.split-lp.i.i217 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %.from..loopexit.split-lp.i.i216, %.from..loopexit.i.i224
  %lpad.phi.i.i218 = phi { ptr, i32 } [ %lpad.loopexit.i.i225, %.from..loopexit.i.i224 ], [ %lpad.loopexit.split-lp.i.i217, %.from..loopexit.split-lp.i.i216 ]
  %i.by = extractvalue { ptr, i32 } %lpad.phi.i.i218, 0
  call void @__clang_call_terminate(ptr %i.by) #48
  unreachable

AfterCoroSave560:                                 ; preds = %bb.j
  store i8 1, ptr %index.addr, align 4
  %i.bz = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr915, ptr nonnull %0) #44
  br i1 %i.bz, label %CoroEnd, label %AfterCoroSuspend562

_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632: ; preds = %bb.h, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.780

.from.626:                                        ; preds = %.from..noexc214
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

AfterCoroSuspend562:                              ; preds = %resume.entry, %AfterCoroSave560
  %.pr462 = load ptr, ptr %.reload.addr915, align 8, !tbaa !135 ; 3 uses
  %.not.i229 = icmp eq ptr %.pr462, null
  br i1 %.not.i229, label %.thread464, label %bb.o

bb.o:                                             ; preds = %AfterCoroSuspend562
  %i.cc = getelementptr inbounds nuw i8, ptr %.pr462, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr nonnull %.pr462)
          to label %.thread464.sink.split unwind label %.from.623, !inline_history !1

.thread464.sink.split:                            ; preds = %.noexc2.i.i226, %bb.o, %bb.m, %.noexc.i.i219, %bb.k
end_hunk_1
