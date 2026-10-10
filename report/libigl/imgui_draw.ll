Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZL31ImFontAtlasBuildWithStbTruetypeP11ImFontAtlas:bb.a

.lr.ph669:                                        ; preds = %_ZN8ImVectorI10stbrp_rectE5clearEv.exit
  %i.dqy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dqz = zext nneg i32 %i.ayb to i64
  br label %bb.rm

.lr.ph.i454.preheader:                            ; preds = %.loopexit
  %i.dra = zext nneg i32 %i.ayb to i64
  br label %.lr.ph.i454

._crit_edge.i452:                                 ; preds = %_ZN8ImVectorI10stbrp_rectE5clearEv.exit
  %.not.i.i453 = icmp eq ptr %.pre775.pre776, null
  br i1 %.not.i.i453, label %_ZN8ImVectorI18ImFontBuildSrcDataE14clear_destructEv.exit, label %._crit_edge.i452.thread

._crit_edge.i452.thread:                          ; preds = %_ZN18ImFontBuildSrcDataD2Ev.exit.i, %._crit_edge.i452
  store i32 0, ptr %i.ae, align 4, !tbaa !436
  store i32 0, ptr %4, align 8, !tbaa !437
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.pre775.pre776)
          to label %.noexc459 unwind label %bb.gm

.noexc459:                                        ; preds = %._crit_edge.i452.thread
  store ptr null, ptr %i.aw, align 8, !tbaa !195
  br label %_ZN8ImVectorI18ImFontBuildSrcDataE14clear_destructEv.exit

.lr.ph.i454:                                      ; preds = %.lr.ph.i454.preheader, %_ZN18ImFontBuildSrcDataD2Ev.exit.i
  %indvars.iv.i455 = phi i64 [ %indvars.iv.next.i458, %_ZN18ImFontBuildSrcDataD2Ev.exit.i ], [ 0, %.lr.ph.i454.preheader ] ; 2 uses
  %i.drb = getelementptr inbounds nuw [272 x i8], ptr %.pre775.pre776, i64 %indvars.iv.i455 ; 2 uses
  %i.drc = getelementptr inbounds nuw i8, ptr %i.drb, i64 264
  %i.drd = load ptr, ptr %i.drc, align 8, !tbaa !464 ; 2 uses
  %.not.i.i.i456 = icmp eq ptr %i.drd, null
  br i1 %.not.i.i.i456, label %_ZN8ImVectorIiED2Ev.exit.i.i, label %bb.ri

bb.ri:                                            ; preds = %.lr.ph.i454
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.drd)
          to label %_ZN8ImVectorIiED2Ev.exit.i.i unwind label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.dre = landingpad { ptr, i32 }
          catch ptr null
  %i.drf = extractvalue { ptr, i32 } %i.dre, 0
  call void @__clang_call_terminate(ptr %i.drf) #42
  unreachable

_ZN8ImVectorIiED2Ev.exit.i.i:                     ; preds = %bb.ri, %.lr.ph.i454
  %i.drg = getelementptr inbounds nuw i8, ptr %i.drb, i64 248
  %i.drh = load ptr, ptr %i.drg, align 8, !tbaa !212 ; 2 uses
  %.not.i.i.i.i457 = icmp eq ptr %i.drh, null
  br i1 %.not.i.i.i.i457, label %_ZN18ImFontBuildSrcDataD2Ev.exit.i, label %bb.rk

bb.rk:                                            ; preds = %_ZN8ImVectorIiED2Ev.exit.i.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.drh)
          to label %_ZN18ImFontBuildSrcDataD2Ev.exit.i unwind label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.dri = landingpad { ptr, i32 }
          catch ptr null
  %i.drj = extractvalue { ptr, i32 } %i.dri, 0
  call void @__clang_call_terminate(ptr %i.drj) #42
  unreachable

_ZN18ImFontBuildSrcDataD2Ev.exit.i:               ; preds = %bb.rk, %_ZN8ImVectorIiED2Ev.exit.i.i
  %indvars.iv.next.i458 = add nuw nsw i64 %indvars.iv.i455, 1 ; 2 uses
  %i.drk = icmp samesign ult i64 %indvars.iv.next.i458, %i.dra
  br i1 %i.drk, label %.lr.ph.i454, label %._crit_edge.i452.thread, !llvm.loop !433

bb.rm:                                            ; preds = %.lr.ph669, %.loopexit
  %indvars.iv758 = phi i64 [ 0, %.lr.ph669 ], [ %indvars.iv.next759, %.loopexit ] ; 3 uses
  %i.drl = getelementptr inbounds nuw [272 x i8], ptr %.pre775.pre776, i64 %indvars.iv758 ; 5 uses
  %i.drm = getelementptr inbounds nuw i8, ptr %i.drl, i64 232 ; 3 uses
  %i.drn = load i32, ptr %i.drm, align 8, !tbaa !461 ; 2 uses
  %i.dro = icmp eq i32 %i.drn, 0
  br i1 %i.dro, label %.loopexit, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.drp = load ptr, ptr %i.dqy, align 8, !tbaa !149
  %i.drq = getelementptr inbounds nuw [136 x i8], ptr %i.drp, i64 %indvars.iv758 ; 10 uses
  %i.drr = getelementptr inbounds nuw i8, ptr %i.drq, i64 128
  %i.drs = load ptr, ptr %i.drr, align 8, !tbaa !186 ; 26 uses
  %i.drt = getelementptr inbounds nuw i8, ptr %i.drq, i64 20 ; 2 uses
  %i.dru = load float, ptr %i.drt, align 4, !tbaa !171
  %i.drv = getelementptr i8, ptr %i.drl, i64 8
  %.val348 = load ptr, ptr %i.drv, align 8, !tbaa !203
  %i.drw = getelementptr i8, ptr %i.drl, i64 36
  %.val349 = load i32, ptr %i.drw, align 4, !tbaa !448
  %i.drx = sext i32 %.val349 to i64
  %i.dry = getelementptr inbounds i8, ptr %.val348, i64 %i.drx
  %i.drz = getelementptr inbounds nuw i8, ptr %i.dry, i64 4
  %i.dsa = load <4 x i8>, ptr %i.drz, align 1, !tbaa !26
  %i.dsb = freeze <4 x i8> %i.dsa
  %i.dsc = bitcast <4 x i8> %i.dsb to <2 x i16>
  %i.dsd = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.dsc) ; 4 uses
  %i.dse = extractelement <2 x i16> %i.dsd, i64 0
  %i.dsf = sext i16 %i.dse to i32
  %i.dsg = extractelement <2 x i16> %i.dsd, i64 1
  %i.dsh = sext i16 %i.dsg to i32
  %i.dsi = sub nsw i32 %i.dsf, %i.dsh
  %i.dsj = sitofp i32 %i.dsi to float
  %i.dsk = fdiv float %i.dru, %i.dsj
  %i.dsl = sitofp <2 x i16> %i.dsd to <2 x float>
  %i.dsm = icmp slt <2 x i16> %i.dsd, splat (i16 1)
  %i.dsn = select <2 x i1> %i.dsm, <2 x float> splat (float -1.000000e+00), <2 x float> splat (float 1.000000e+00)
  %i.dso = insertelement <2 x float> poison, float %i.dsk, i64 0
  %i.dsp = shufflevector <2 x float> %i.dso, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dsq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dsl, <2 x float> %i.dsp, <2 x float> %i.dsn)
  %i.dsr = fptosi <2 x float> %i.dsq to <2 x i32>
  %i.dss = sitofp <2 x i32> %i.dsr to <2 x float> ; 2 uses
  %i.dst = getelementptr inbounds nuw i8, ptr %i.drq, i64 72
  %i.dsu = load i8, ptr %i.dst, align 8, !tbaa !180, !range !162, !noundef !163
  %i.dsv = trunc nuw i8 %i.dsu to i1
  br i1 %i.dsv, label %._crit_edge.i466, label %bb.ro

._crit_edge.i466:                                 ; preds = %bb.rn
  %.phi.trans.insert.i467 = getelementptr inbounds nuw i8, ptr %i.drs, i64 80
  %.pre.i468 = load i16, ptr %.phi.trans.insert.i467, align 8, !tbaa !165
  %i.dsw = add i16 %.pre.i468, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.drs, i64 96
  %.pre771 = load float, ptr %.phi.trans.insert, align 8, !tbaa !250
  br label %bb.rs

bb.ro:                                            ; preds = %bb.rn
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.drs, i64 20
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.drs, i64 16
  store <2 x float> zeroinitializer, ptr %i.dsy, align 8, !tbaa !15
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.drs, i64 48 ; 2 uses
  %i.dta = load ptr, ptr %i.dsz, align 8, !tbaa !251 ; 2 uses
  %.not.i.i.i465 = icmp eq ptr %i.dta, null
  br i1 %.not.i.i.i465, label %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i.i, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.dtb = getelementptr inbounds nuw i8, ptr %i.drs, i64 40
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.drs, i64 44
  store i32 0, ptr %i.dtc, align 4, !tbaa !252
  store i32 0, ptr %i.dtb, align 8, !tbaa !253
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dta)
          to label %.noexc469 unwind label %bb.rt

.noexc469:                                        ; preds = %bb.rp
  store ptr null, ptr %i.dsz, align 8, !tbaa !251
  br label %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i.i

_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i.i:     ; preds = %.noexc469, %bb.ro
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.drs, i64 8 ; 2 uses
  %i.dte = load ptr, ptr %i.dtd, align 8, !tbaa !254 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.dte, null
  br i1 %.not.i1.i.i, label %_ZN8ImVectorIfE5clearEv.exit.i.i, label %bb.rq

bb.rq:                                            ; preds = %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i.i
  %i.dtf = getelementptr inbounds nuw i8, ptr %i.drs, i64 4
  store i32 0, ptr %i.dtf, align 4, !tbaa !255
  store i32 0, ptr %i.drs, align 8, !tbaa !256
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dte)
          to label %.noexc470 unwind label %bb.rt

.noexc470:                                        ; preds = %bb.rq
  store ptr null, ptr %i.dtd, align 8, !tbaa !254
  br label %_ZN8ImVectorIfE5clearEv.exit.i.i

_ZN8ImVectorIfE5clearEv.exit.i.i:                 ; preds = %.noexc470, %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i.i
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.drs, i64 32 ; 2 uses
  %i.dth = load ptr, ptr %i.dtg, align 8, !tbaa !36 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.dth, null
  br i1 %.not.i2.i.i, label %_ZN6ImFont15ClearOutputDataEv.exit.i, label %bb.rr

bb.rr:                                            ; preds = %_ZN8ImVectorIfE5clearEv.exit.i.i
  %i.dti = getelementptr inbounds nuw i8, ptr %i.drs, i64 24
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.drs, i64 28
  store i32 0, ptr %i.dtj, align 4, !tbaa !35
  store i32 0, ptr %i.dti, align 8, !tbaa !37
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dth)
          to label %.noexc471 unwind label %bb.rt

.noexc471:                                        ; preds = %bb.rr
  store ptr null, ptr %i.dtg, align 8, !tbaa !36
  br label %_ZN6ImFont15ClearOutputDataEv.exit.i

_ZN6ImFont15ClearOutputDataEv.exit.i:             ; preds = %.noexc471, %_ZN8ImVectorIfE5clearEv.exit.i.i
  %i.dtk = getelementptr inbounds nuw i8, ptr %i.drs, i64 56
  %i.dtl = getelementptr inbounds nuw i8, ptr %i.drs, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dtk, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.dtl, align 8, !tbaa !184
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.drs, i64 96
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.drs, i64 104
  store i32 0, ptr %i.dtn, align 8, !tbaa !257
  %i.dto = load float, ptr %i.drt, align 4, !tbaa !171
  store float %i.dto, ptr %i.dsx, align 4, !tbaa !111
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.drs, i64 72
  store ptr %i.drq, ptr %i.dtp, align 8, !tbaa !164
  %i.dtq = getelementptr inbounds nuw i8, ptr %i.drs, i64 64
  store ptr %0, ptr %i.dtq, align 8, !tbaa !258
  store <2 x float> %i.dss, ptr %i.dtm, align 8, !tbaa !15
  %.pre772 = load i32, ptr %i.drm, align 8, !tbaa !461
  %i.dtr = extractelement <2 x float> %i.dss, i64 0
  br label %bb.rs

bb.rs:                                            ; preds = %_ZN6ImFont15ClearOutputDataEv.exit.i, %._crit_edge.i466
  %i.dts = phi i32 [ %i.drn, %._crit_edge.i466 ], [ %.pre772, %_ZN6ImFont15ClearOutputDataEv.exit.i ]
  %i.dtt = phi float [ %.pre771, %._crit_edge.i466 ], [ %i.dtr, %_ZN6ImFont15ClearOutputDataEv.exit.i ]
  %i.dtu = phi i16 [ %i.dsw, %._crit_edge.i466 ], [ 1, %_ZN6ImFont15ClearOutputDataEv.exit.i ]
  %i.dtv = getelementptr inbounds nuw i8, ptr %i.drs, i64 80
  store i16 %i.dtu, ptr %i.dtv, align 8, !tbaa !165
  %8 = getelementptr inbounds nuw i8, ptr %i.drq, i64 44
  %9 = load float, ptr %8, align 4, !tbaa !511    ; 2 uses
  %i.dtw = getelementptr inbounds nuw i8, ptr %i.drq, i64 48
  %i.dtx = load float, ptr %i.dtw, align 8, !tbaa !173
  %i.dty = fadd float %i.dtt, 5.000000e-01
  %i.dtz = fptosi float %i.dty to i32
  %i.dua = sitofp i32 %i.dtz to float
  %i.dub = fadd float %i.dtx, %i.dua              ; 2 uses
  %i.duc = icmp sgt i32 %i.dts, 0
  br i1 %i.duc, label %.lr.ph667, label %.loopexit

.lr.ph667:                                        ; preds = %bb.rs
  %i.dud = getelementptr inbounds nuw i8, ptr %i.drl, i64 264
  %i.due = getelementptr inbounds nuw i8, ptr %i.drl, i64 208
  %i.duf = getelementptr inbounds nuw i8, ptr %i.drq, i64 64
  %i.dug = getelementptr inbounds nuw i8, ptr %i.drq, i64 68
  %i.duh = getelementptr inbounds nuw i8, ptr %i.drq, i64 32
  %i.dui = getelementptr inbounds nuw i8, ptr %i.drq, i64 36
  %i.duj = getelementptr inbounds nuw i8, ptr %i.drs, i64 40 ; 3 uses
  %i.duk = getelementptr inbounds nuw i8, ptr %i.drs, i64 44 ; 2 uses
  %i.dul = getelementptr inbounds nuw i8, ptr %i.drs, i64 48 ; 4 uses
  %i.dum = getelementptr inbounds nuw i8, ptr %i.drs, i64 64
  %i.dun = getelementptr inbounds nuw i8, ptr %i.drs, i64 88
  %i.duo = getelementptr inbounds nuw i8, ptr %i.drs, i64 104 ; 2 uses
  %i.dup = insertelement <4 x float> poison, float %i.dub, i64 0
  br label %bb.ru

bb.rt:                                            ; preds = %bb.rr, %bb.rq, %bb.rp
  %i.duq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ru:                                            ; preds = %.lr.ph667, %bb.rz
  %indvars.iv755 = phi i64 [ 0, %.lr.ph667 ], [ %indvars.iv.next756, %bb.rz ] ; 3 uses
  %i.dur = load ptr, ptr %i.dud, align 8, !tbaa !464
  %i.dus = getelementptr inbounds nuw [4 x i8], ptr %i.dur, i64 %indvars.iv755
  %i.dut = load i32, ptr %i.dus, align 4, !tbaa !112
  %i.duu = load ptr, ptr %i.due, align 8, !tbaa !470
  %i.duv = getelementptr inbounds nuw [28 x i8], ptr %i.duu, i64 %indvars.iv755 ; 8 uses
  %i.duw = getelementptr inbounds nuw i8, ptr %i.duv, i64 8
  %i.dux = load float, ptr %i.duw, align 4, !tbaa !512
  %10 = fadd float %i.dux, 0.000000e+00
  %i.duy = getelementptr inbounds nuw i8, ptr %i.duv, i64 12
  %i.duz = load float, ptr %i.duy, align 4, !tbaa !513
  %i.dva = fadd float %i.duz, 0.000000e+00
  %i.dvb = getelementptr inbounds nuw i8, ptr %i.duv, i64 20
  %i.dvc = load float, ptr %i.dvb, align 4, !tbaa !514
  %11 = fadd float %i.dvc, 0.000000e+00
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.duv, i64 24
  %i.dve = load float, ptr %i.dvd, align 4, !tbaa !510
  %i.dvf = load <2 x i32>, ptr %i.v, align 8, !tbaa !112
  %i.dvg = load i16, ptr %i.duv, align 4, !tbaa !506
  %i.dvh = uitofp i16 %i.dvg to float
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.duv, i64 2
  %i.dvj = insertelement <4 x float> poison, float %i.dve, i64 0
  %i.dvk = shufflevector <2 x i32> %i.dvf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dvl = sitofp <4 x i32> %i.dvk to <4 x float>
  %i.dvm = shufflevector <4 x float> %i.dvj, <4 x float> %i.dvl, <4 x i32> <i32 0, i32 4, i32 5, i32 4> ; 2 uses
  %i.dvn = fadd <4 x float> %i.dvm, <float 0.000000e+00, float poison, float poison, float poison>
  %i.dvo = fdiv <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %i.dvm ; 2 uses
  %i.dvp = shufflevector <4 x float> %i.dvn, <4 x float> %i.dvo, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.dvq = load <2 x i16>, ptr %i.dvi, align 2, !tbaa !92
  %i.dvr = getelementptr inbounds nuw i8, ptr %i.duv, i64 6
  %i.dvs = load i16, ptr %i.dvr, align 2, !tbaa !509
  %i.dvt = uitofp i16 %i.dvs to float
  %i.dvu = extractelement <4 x float> %i.dvo, i64 2
  %i.dvv = fmul float %i.dvu, %i.dvt              ; 2 uses
  %12 = fadd float %9, %10                        ; 2 uses
  %i.dvw = fadd float %i.dub, %i.dva              ; 2 uses
  %13 = fadd float %9, %11                        ; 2 uses
  %i.dvx = insertelement <4 x float> %i.dup, float %i.dvh, i64 1
  %i.dvy = shufflevector <2 x i16> %i.dvq, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dvz = uitofp <4 x i16> %i.dvy to <4 x float>
  %i.dwa = shufflevector <4 x float> %i.dvx, <4 x float> %i.dvz, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dwb = fadd <4 x float> %i.dwa, %i.dvp        ; 2 uses
  %i.dwc = fmul <4 x float> %i.dwa, %i.dvp        ; 3 uses
  %i.dwd = shufflevector <4 x float> %i.dwb, <4 x float> %i.dwc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.duv, i64 16
  %i.dwf = load float, ptr %i.dwe, align 4, !tbaa !515 ; 5 uses
  %i.dwg = load float, ptr %i.duf, align 8, !tbaa !259 ; 2 uses
  %i.dwh = load float, ptr %i.dug, align 4, !tbaa !135 ; 2 uses
  %i.dwi = fcmp olt float %i.dwf, %i.dwg
  %i.dwj = fcmp ogt float %i.dwf, %i.dwh
  %i.dwk = select i1 %i.dwj, float %i.dwh, float %i.dwf
  %i.dwl = select i1 %i.dwi, float %i.dwg, float %i.dwk ; 4 uses
  %i.dwm = fcmp une float %i.dwl, %i.dwf
  %i.dwn = load i8, ptr %i.duh, align 8, !tbaa !170, !range !162
  %i.dwo = trunc nuw i8 %i.dwn to i1              ; 2 uses
  br i1 %i.dwm, label %bb.rv, label %._crit_edge.i473

bb.rv:                                            ; preds = %bb.ru
  %i.dwp = fsub float %i.dwl, %i.dwf
  %i.dwq = fmul float %i.dwp, 5.000000e-01        ; 2 uses
  %i.dwr = fptosi float %i.dwq to i32
  %i.dws = sitofp i32 %i.dwr to float
  %i.dwt = select i1 %i.dwo, float %i.dws, float %i.dwq ; 2 uses
  %14 = fadd float %12, %i.dwt
  %15 = fadd float %13, %i.dwt
  br label %._crit_edge.i473

._crit_edge.i473:                                 ; preds = %bb.rv, %bb.ru
  %.052.i = phi float [ %15, %bb.rv ], [ %13, %bb.ru ] ; 2 uses
  %.0.i474 = phi float [ %14, %bb.rv ], [ %12, %bb.ru ] ; 2 uses
  %i.dwu = fadd float %i.dwl, 5.000000e-01
  %i.dwv = fptosi float %i.dwu to i32
  %i.dww = sitofp i32 %i.dwv to float
  %.054.i = select i1 %i.dwo, float %i.dww, float %i.dwl
  %i.dwx = load float, ptr %i.dui, align 4, !tbaa !260
  %i.dwy = fadd float %.054.i, %i.dwx
  %i.dwz = load i32, ptr %i.duj, align 8, !tbaa !261 ; 2 uses
  %i.dxa = add nsw i32 %i.dwz, 1                  ; 3 uses
  %i.dxb = load i32, ptr %i.duk, align 4, !tbaa !252 ; 4 uses
  %.not59.i = icmp slt i32 %i.dwz, %i.dxb
  br i1 %.not59.i, label %._ZN8ImVectorI11ImFontGlyphE6resizeEi.exit_crit_edge.i, label %bb.rw

._ZN8ImVectorI11ImFontGlyphE6resizeEi.exit_crit_edge.i: ; preds = %._crit_edge.i473
  %.pre61.i = load ptr, ptr %i.dul, align 8, !tbaa !251
  br label %bb.rz

bb.rw:                                            ; preds = %._crit_edge.i473
  %.not.i.i.i475 = icmp eq i32 %i.dxb, 0
  br i1 %.not.i.i.i475, label %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.dxc = sdiv i32 %i.dxb, 2
  %i.dxd = add nsw i32 %i.dxc, %i.dxb
  br label %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i.i: ; preds = %bb.rx, %bb.rw
  %i.dxe = phi i32 [ %i.dxd, %bb.rx ], [ 8, %bb.rw ]
  %i.dxf = call noundef i32 @llvm.smax.i32(i32 %i.dxe, i32 %i.dxa) ; 2 uses
  %i.dxg = sext i32 %i.dxf to i64
  %i.dxh = mul nsw i64 %i.dxg, 40
  %i.dxi = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.dxh)
          to label %.noexc477 unwind label %bb.sa ; 3 uses

.noexc477:                                        ; preds = %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i.i
  %i.dxj = load ptr, ptr %i.dul, align 8, !tbaa !251 ; 2 uses
  %.not6.i.i.i476 = icmp eq ptr %i.dxj, null
  br i1 %.not6.i.i.i476, label %.noexc478, label %bb.ry

bb.ry:                                            ; preds = %.noexc477
  %i.dxk = load i32, ptr %i.duj, align 8, !tbaa !253
  %i.dxl = sext i32 %i.dxk to i64
  %i.dxm = mul nsw i64 %i.dxl, 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dxi, ptr nonnull align 4 %i.dxj, i64 %i.dxm, i1 false)
  %i.dxn = load ptr, ptr %i.dul, align 8, !tbaa !251
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dxn)
          to label %.noexc478 unwind label %bb.sa

.noexc478:                                        ; preds = %bb.ry, %.noexc477
  store ptr %i.dxi, ptr %i.dul, align 8, !tbaa !251
  store i32 %i.dxf, ptr %i.duk, align 4, !tbaa !252
  br label %bb.rz

bb.rz:                                            ; preds = %.noexc478, %._ZN8ImVectorI11ImFontGlyphE6resizeEi.exit_crit_edge.i
  %i.dxo = phi ptr [ %.pre61.i, %._ZN8ImVectorI11ImFontGlyphE6resizeEi.exit_crit_edge.i ], [ %i.dxi, %.noexc478 ]
  store i32 %i.dxa, ptr %i.duj, align 8, !tbaa !253
  %i.dxp = sext i32 %i.dxa to i64
  %i.dxq = getelementptr [40 x i8], ptr %i.dxo, i64 %i.dxp ; 7 uses
  %i.dxr = getelementptr i8, ptr %i.dxq, i64 -40
  %i.dxs = shl i32 %i.dut, 2
  %i.dxt = and i32 %i.dxs, 262140
  %i.dxu = fcmp une float %.0.i474, %.052.i
  %i.dxv = extractelement <4 x float> %i.dwb, i64 0
  %i.dxw = fcmp une float %i.dvw, %i.dxv
  %i.dxx = and i1 %i.dxw, %i.dxu
  %i.dxy = select i1 %i.dxx, i32 2, i32 0
  %i.dxz = or disjoint i32 %i.dxy, %i.dxt
  store i32 %i.dxz, ptr %i.dxr, align 4
  %i.dya = getelementptr i8, ptr %i.dxq, i64 -32
  store float %.0.i474, ptr %i.dya, align 4, !tbaa !262
  %i.dyb = getelementptr i8, ptr %i.dxq, i64 -28
  store float %i.dvw, ptr %i.dyb, align 4, !tbaa !263
  %i.dyc = getelementptr i8, ptr %i.dxq, i64 -24
  store float %.052.i, ptr %i.dyc, align 4, !tbaa !264
  %i.dyd = getelementptr i8, ptr %i.dxq, i64 -20
  store <4 x float> %i.dwd, ptr %i.dyd, align 4, !tbaa !15
  %i.dye = getelementptr i8, ptr %i.dxq, i64 -4
  store float %i.dvv, ptr %i.dye, align 4, !tbaa !121
  %i.dyf = getelementptr i8, ptr %i.dxq, i64 -36
  store float %i.dwy, ptr %i.dyf, align 4, !tbaa !117
  %i.dyg = load ptr, ptr %i.dum, align 8, !tbaa !258 ; 2 uses
  %i.dyh = getelementptr inbounds nuw i8, ptr %i.dyg, i64 20
  %i.dyi = load i32, ptr %i.dyh, align 4, !tbaa !146
  %i.dyj = sitofp i32 %i.dyi to float
  %i.dyk = fadd float %i.dyj, 9.900000e-01
  store i8 1, ptr %i.dun, align 8, !tbaa !184
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dyg, i64 48
  %i.dym = shufflevector <4 x float> %i.dwc, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dyn = insertelement <2 x float> %i.dym, float %i.dvv, i64 1
  %i.dyo = shufflevector <4 x float> %i.dwc, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dyp = fsub <2 x float> %i.dyn, %i.dyo
  %i.dyq = load <2 x i32>, ptr %i.dyl, align 8, !tbaa !112
  %i.dyr = sitofp <2 x i32> %i.dyq to <2 x float>
  %i.dys = insertelement <2 x float> poison, float %i.dyk, i64 0
  %i.dyt = shufflevector <2 x float> %i.dys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dyu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dyp, <2 x float> %i.dyr, <2 x float> %i.dyt) ; 2 uses
  %i.dyv = extractelement <2 x float> %i.dyu, i64 0
  %i.dyw = fptosi float %i.dyv to i32
  %i.dyx = extractelement <2 x float> %i.dyu, i64 1
  %i.dyy = fptosi float %i.dyx to i32
  %i.dyz = mul nsw i32 %i.dyy, %i.dyw
  %i.dza = load i32, ptr %i.duo, align 8, !tbaa !257
  %i.dzb = add nsw i32 %i.dyz, %i.dza
  store i32 %i.dzb, ptr %i.duo, align 8, !tbaa !257
  %indvars.iv.next756 = add nuw nsw i64 %indvars.iv755, 1 ; 2 uses
  %i.dzc = load i32, ptr %i.drm, align 8, !tbaa !461
  %i.dzd = sext i32 %i.dzc to i64
  %i.dze = icmp slt i64 %indvars.iv.next756, %i.dzd
  br i1 %i.dze, label %bb.ru, label %.loopexit, !llvm.loop !434

bb.sa:                                            ; preds = %bb.ry, %_ZNK8ImVectorI11ImFontGlyphE14_grow_capacityEi.exit.i.i
  %i.dzf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.rz, %bb.rs, %bb.rm
  %indvars.iv.next759 = add nuw nsw i64 %indvars.iv758, 1 ; 2 uses
  %i.dzg = icmp samesign ult i64 %indvars.iv.next759, %i.dqz
  br i1 %i.dzg, label %bb.rm, label %.lr.ph.i454.preheader, !llvm.loop !435

_ZN8ImVectorI18ImFontBuildSrcDataE14clear_destructEv.exit: ; preds = %.noexc459, %._crit_edge.i452
  invoke void @_Z22ImFontAtlasBuildFinishP11ImFontAtlas(ptr noundef nonnull %0)
          to label %bb.sb unwind label %bb.gm

bb.sb:                                            ; preds = %_ZN8ImVectorI18ImFontBuildSrcDataE14clear_destructEv.exit
  %i.dzh = load ptr, ptr %i.anu, align 8, !tbaa !218 ; 2 uses
  %.not.i479 = icmp eq ptr %i.dzh, null
  br i1 %.not.i479, label %_ZN8ImVectorI10stbrp_rectED2Ev.exit, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dzh)
          to label %_ZN8ImVectorI10stbrp_rectED2Ev.exit unwind label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.dzi = landingpad { ptr, i32 }
          catch ptr null
  %i.dzj = extractvalue { ptr, i32 } %i.dzi, 0
  call void @__clang_call_terminate(ptr %i.dzj) #42
  unreachable

_ZN8ImVectorI10stbrp_rectED2Ev.exit:              ; preds = %bb.sc, %bb.sb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %.critedge337

.loopexit.split-lp:                               ; preds = %.loopexit541, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.gm, %bb.gn, %bb.sa, %bb.rt, %bb.fz
  %.pn325.pn = phi { ptr, i32 } [ %i.aoj, %bb.fz ], [ %i.duq, %bb.rt ], [ %i.ave, %bb.gn ], [ %i.dzf, %bb.sa ], [ %i.auz, %bb.gm ], [ %lpad.loopexit, %.loopexit541 ], [ %lpad.loopexit542, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp543, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8ImVectorI16stbtt_packedcharED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZN8ImVectorI10stbrp_rectED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.si

.critedge337:                                     ; preds = %bb.h, %_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i, %._crit_edge.i.i, %_ZL17stbtt__find_tablePhjPKc.exit211.i.i, %bb.cd, %.critedge, %.critedge.i.i, %_ZN8ImVectorI10stbrp_rectED2Ev.exit
  %.not317601 = phi i1 [ true, %_ZN8ImVectorI10stbrp_rectED2Ev.exit ], [ false, %.critedge.i.i ], [ false, %.critedge ], [ false, %bb.cd ], [ false, %_ZL17stbtt__find_tablePhjPKc.exit211.i.i ], [ false, %._crit_edge.i.i ], [ false, %_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i ], [ false, %bb.h ]
  %i.dzk = load ptr, ptr %i.az, align 8, !tbaa !198 ; 2 uses
  %.not.i481 = icmp eq ptr %i.dzk, null
  br i1 %.not.i481, label %_ZN8ImVectorI18ImFontBuildDstDataED2Ev.exit, label %bb.se

bb.se:                                            ; preds = %.critedge337
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dzk)
          to label %_ZN8ImVectorI18ImFontBuildDstDataED2Ev.exit unwind label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.dzl = landingpad { ptr, i32 }
          catch ptr null
  %i.dzm = extractvalue { ptr, i32 } %i.dzl, 0
  call void @__clang_call_terminate(ptr %i.dzm) #42
  unreachable

_ZN8ImVectorI18ImFontBuildDstDataED2Ev.exit:      ; preds = %.critedge337, %bb.se
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.dzn = load ptr, ptr %i.aw, align 8, !tbaa !195 ; 2 uses
  %.not.i482 = icmp eq ptr %i.dzn, null
  br i1 %.not.i482, label %_ZN8ImVectorI18ImFontBuildSrcDataED2Ev.exit, label %bb.sg

bb.sg:                                            ; preds = %_ZN8ImVectorI18ImFontBuildDstDataED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dzn)
          to label %_ZN8ImVectorI18ImFontBuildSrcDataED2Ev.exit unwind label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.dzo = landingpad { ptr, i32 }
          catch ptr null
  %i.dzp = extractvalue { ptr, i32 } %i.dzo, 0
  call void @__clang_call_terminate(ptr %i.dzp) #42
  unreachable

_ZN8ImVectorI18ImFontBuildSrcDataED2Ev.exit:      ; preds = %_ZN8ImVectorI18ImFontBuildDstDataED2Ev.exit, %bb.sg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret i1 %.not317601

bb.si:                                            ; preds = %.loopexit549, %.loopexit.split-lp550, %bb.fv, %bb.fy, %.loopexit.split-lp, %bb.fc, %bb.g
  %.pn332.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.g ], [ %i.aja, %bb.fc ], [ %i.aoi, %bb.fy ], [ %.pn325.pn, %.loopexit.split-lp ], [ %i.anb, %bb.fv ], [ %lpad.loopexit551, %.loopexit549 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp550 ]
  call void @_ZN8ImVectorI18ImFontBuildDstDataED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZN8ImVectorI18ImFontBuildSrcDataED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn332.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z25ImFontAtlasBuildSetupFontP11ImFontAtlasP6ImFontP12ImFontConfigff(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !180, !range !162, !noundef !163
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !165
  %i.d = add i16 %.pre, 1
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x float> zeroinitializer, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !251  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !252
  store i32 0, ptr %i.i, align 8, !tbaa !253
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.h)
  store ptr null, ptr %i.g, align 8, !tbaa !251
  br label %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i

_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i:       ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !254  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i1.i, label %_ZN8ImVectorIfE5clearEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !255
  store i32 0, ptr %1, align 8, !tbaa !256
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.l)
  store ptr null, ptr %i.k, align 8, !tbaa !254
  br label %_ZN8ImVectorIfE5clearEv.exit.i

_ZN8ImVectorIfE5clearEv.exit.i:                   ; preds = %bb.d, %_ZN8ImVectorI11ImFontGlyphE5clearEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %.not.i2.i = icmp eq ptr %i.o, null
  br i1 %.not.i2.i, label %_ZN6ImFont15ClearOutputDataEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8ImVectorIfE5clearEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.q, align 4, !tbaa !35
  store i32 0, ptr %i.p, align 8, !tbaa !37
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.o)
  store ptr null, ptr %i.n, align 8, !tbaa !36
  br label %_ZN6ImFont15ClearOutputDataEv.exit

_ZN6ImFont15ClearOutputDataEv.exit:               ; preds = %_ZN8ImVectorIfE5clearEv.exit.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 0, ptr %i.v, align 8, !tbaa !257
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !171
  store float %i.x, ptr %i.e, align 4, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_0
