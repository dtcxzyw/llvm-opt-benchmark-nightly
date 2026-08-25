Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Substitution?download=true
inline.NumInlined: 2357
inline.NumDeleted: 1120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau6Tarjan4loopEv:bb.a

_ZNKSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ak
  %i.gh = sdiv exact i64 %i.gf, 12                ; 3 uses
  %.sroa.speculated.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i42, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 768614336404564650)
  %i.gl = select i1 %i.gj, i64 768614336404564650, i64 %i.gk ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.gm = mul nuw nsw i64 %i.gl, 12
  %i.gn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #24 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gf ; 3 uses
  store i32 %.0, ptr %i.go, align 4, !tbaa !200
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 -1, ptr %i.gp, align 4, !tbaa !202
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i32 -1, ptr %i.gq, align 4, !tbaa !203
  %.not10.i.i.i.i.i = icmp eq ptr %i.gc, %i.fw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i ], [ %i.gn, %_ZNKSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i ], [ %i.gc, %_ZNKSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !73, !alias.scope !204
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gr, %i.fw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !78

_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gn, %_ZNKSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gs, %.lr.ph.i.i.i.i.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i35.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE17_M_realloc_insertIJRiiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  %i.gu = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gv, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gw) #25
  br label %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE17_M_realloc_insertIJRiiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE17_M_realloc_insertIJRiiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.gn, ptr %i.f, align 8, !tbaa !71
  store ptr %i.gt, ptr %i.g, align 8, !tbaa !72
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.gx, ptr %i.ab, align 8, !tbaa !68
  br label %_ZN4Luau6Tarjan9visitEdgeEii.exit47

.thread:                                          ; preds = %bb.ae, %bb.ah
  %.0118 = phi i32 [ %.0, %bb.ah ], [ -1, %bb.ae ] ; 2 uses
  %i.gy = sext i32 %.0118 to i64
  %i.gz = load ptr, ptr %i.p, align 8, !tbaa !40  ; 4 uses
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %i.gy ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !176, !range !137, !noundef !138
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %i.cc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 20 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !9
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.0118, i32 %i.hg)
  store i32 %.sroa.speculated, ptr %i.hf, align 4, !tbaa !178
  br label %bb.ao

bb.ao:                                            ; preds = %.thread, %bb.an
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 17
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !177, !range !137, !noundef !138
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %i.cc
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 17
  store i8 1, ptr %i.hl, align 1, !tbaa !177
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.sroa.27.0, %lftr.wideiv
  br i1 %exitcond.not, label %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12emplace_backIJRiiiEEERS1_DpOT_.exit, label %bb.o, !llvm.loop !208

_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12emplace_backIJRiiiEEERS1_DpOT_.exit: ; preds = %bb.aq, %._ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12emplace_backIJRiiiEEERS1_DpOT_.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre155, %._ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12emplace_backIJRiiiEEERS1_DpOT_.exit_crit_edge ], [ %i.cc, %bb.aq ] ; 2 uses
  %i.hm = phi ptr [ %.pre, %._ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12emplace_backIJRiiiEEERS1_DpOT_.exit_crit_edge ], [ %i.gz, %bb.aq ]
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hm, i64 %.pre-phi ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !178
  %i.hq = icmp eq i32 %i.hp, %.sroa.072.0.copyload
  br i1 %i.hq, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12emplace_backIJRiiiEEERS1_DpOT_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 17
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !177, !range !137, !noundef !138
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %.critedge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ar
  %i.hu = load ptr, ptr %i.n, align 8, !tbaa !209, !noalias !210 ; 2 uses
  %i.hv = load ptr, ptr %i.m, align 8, !tbaa !209, !noalias !213 ; 2 uses
  %.not50.i138 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not50.i138, label %_ZN4Luau6Tarjan8visitSCCEi.exit, label %.lr.ph140

bb.as:                                            ; preds = %bb.au
  br i1 %i.ij, label %.critedge.thread.i, label %..lr.ph.i.backedge_crit_edge

..lr.ph.i.backedge_crit_edge:                     ; preds = %bb.as
  %.pre153 = load ptr, ptr %i.m, align 8, !tbaa !209, !noalias !213
  br label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %..lr.ph.i.backedge_crit_edge, %.thread.i
  %i.hw = phi ptr [ %.pre153, %..lr.ph.i.backedge_crit_edge ], [ %i.hx, %.thread.i ] ; 2 uses
  %.not50.i = icmp eq ptr %i.hy, %i.hw
  br i1 %.not50.i, label %_ZN4Luau6Tarjan8visitSCCEi.exit, label %.lr.ph140, !llvm.loop !216

.lr.ph140:                                        ; preds = %.lr.ph.preheader.i, %.lr.ph.i.backedge
  %i.hx = phi ptr [ %i.hw, %.lr.ph.i.backedge ], [ %i.hv, %.lr.ph.preheader.i ]
  %.sroa.044.053.i139 = phi ptr [ %i.hy, %.lr.ph.i.backedge ], [ %i.hu, %.lr.ph.preheader.i ]
  %i.hy = getelementptr inbounds i8, ptr %.sroa.044.053.i139, i64 -4 ; 4 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !9  ; 2 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %i.ia ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !173 ; 2 uses
  %.not.i44 = icmp eq ptr %i.id, null
  br i1 %.not.i44, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph140
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !175 ; 2 uses
  %.not29.i = icmp eq ptr %i.if, null
  br i1 %.not29.i, label %.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph140
  %.sink70.i = phi i64 [ 48, %.lr.ph140 ], [ 56, %bb.at ]
  %.sink.i = phi ptr [ %i.id, %.lr.ph140 ], [ %i.if, %bb.at ]
  %i.ig = load ptr, ptr %0, align 8, !tbaa !10
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sink70.i
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call noundef zeroext i1 %i.ii(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %.sink.i), !inline_history !217 ; 2 uses
  %i.ik = load i32, ptr %i.hy, align 4, !tbaa !9
  %.not30.i = icmp eq i32 %i.ik, %.sroa.072.0.copyload
  br i1 %.not30.i, label %.critedge.i, label %bb.as

.thread.i:                                        ; preds = %bb.at
  %.not3060.i = icmp eq i32 %i.hz, %.sroa.072.0.copyload
  br i1 %.not3060.i, label %_ZN4Luau6Tarjan8visitSCCEi.exit, label %.lr.ph.i.backedge

.critedge.i:                                      ; preds = %bb.au
  br i1 %i.ij, label %.critedge.thread.i, label %_ZN4Luau6Tarjan8visitSCCEi.exit

.critedge.thread.i:                               ; preds = %bb.as, %.critedge.i, %bb.ar
  %i.il = load ptr, ptr %i.n, align 8, !tbaa !209, !noalias !218
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %.critedge.thread.i
  %.sroa.038.0.i = phi ptr [ %i.il, %.critedge.thread.i ], [ %i.in, %bb.ay ] ; 2 uses
  %i.im = load ptr, ptr %i.m, align 8, !tbaa !209, !noalias !221
  %.not51.i = icmp eq ptr %.sroa.038.0.i, %i.im
  br i1 %.not51.i, label %_ZN4Luau6Tarjan8visitSCCEi.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.in = getelementptr inbounds i8, ptr %.sroa.038.0.i, i64 -4 ; 3 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !9  ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.ip ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 17
  store i8 1, ptr %i.is, align 1, !tbaa !177
  %i.it = load ptr, ptr %i.ir, align 8, !tbaa !173 ; 2 uses
  %.not31.i = icmp eq ptr %i.it, null
  br i1 %.not31.i, label %bb.ax, label %.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !175 ; 2 uses
  %.not32.i = icmp eq ptr %i.iv, null
  br i1 %.not32.i, label %bb.ay, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ax, %bb.aw
  %.sink75.i = phi i64 [ 64, %bb.aw ], [ 72, %bb.ax ]
  %.sink71.i = phi ptr [ %i.it, %bb.aw ], [ %i.iv, %bb.ax ]
  %i.iw = load ptr, ptr %0, align 8, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.sink75.i
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %.sink71.i), !inline_history !217
  %.pre154 = load i32, ptr %i.in, align 4, !tbaa !9
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split.i, %bb.ax
  %i.iz = phi i32 [ %.pre154, %.sink.split.i ], [ %i.io, %bb.ax ]
  %.not33.i = icmp eq i32 %i.iz, %.sroa.072.0.copyload
  br i1 %.not33.i, label %_ZN4Luau6Tarjan8visitSCCEi.exit, label %bb.av, !llvm.loop !224

_ZN4Luau6Tarjan8visitSCCEi.exit:                  ; preds = %.thread.i, %.lr.ph.i.backedge, %bb.av, %bb.ay, %.lr.ph.preheader.i, %.critedge.i
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !209
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %_ZN4Luau6Tarjan8visitSCCEi.exit
  %1 = load ptr, ptr %i.n, align 8, !tbaa !209    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %1
  br i1 %i.jb, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jc = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !9  ; 2 uses
  store ptr %i.jc, ptr %i.n, align 8, !tbaa !56
  %i.je = sext i32 %i.jd to i64
  %i.jf = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %i.je
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store i8 0, ptr %i.jh, align 8, !tbaa !176
  %i.ji = icmp eq i32 %i.jd, %.sroa.072.0.copyload
  br i1 %i.ji, label %.loopexit, label %bb.az

.loopexit:                                        ; preds = %bb.ba, %bb.az, %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE12emplace_backIJRiiiEEERS1_DpOT_.exit
  %i.jj = load ptr, ptr %i.g, align 8, !tbaa !72  ; 3 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -12 ; 2 uses
  store ptr %i.jk, ptr %i.g, align 8, !tbaa !72
  %i.jl = load ptr, ptr %i.f, align 8, !tbaa !193
  %i.jm = icmp eq ptr %i.jl, %i.jk
  br i1 %i.jm, label %_ZN4Luau6Tarjan9visitEdgeEii.exit47, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  %i.jn = getelementptr inbounds i8, ptr %i.jj, i64 -24
  %.sroa.0.0.copyload = load i32, ptr %i.jn, align 4, !tbaa !9
  %.sroa.63.0..sroa_idx = getelementptr inbounds i8, ptr %i.jj, i64 -16
  %.sroa.63.0.copyload = load i32, ptr %.sroa.63.0..sroa_idx, align 4, !tbaa !9
  %i.jo = sext i32 %.sroa.63.0.copyload to i64    ; 8 uses
  %i.jp = load ptr, ptr %i.r, align 8, !tbaa !62  ; 2 uses
  %i.jq = load ptr, ptr %i.q, align 8, !tbaa !61  ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = ashr exact i64 %i.jt, 3                 ; 3 uses
  %i.jv = icmp ult i64 %i.ju, %i.jo
  br i1 %i.jv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jw = sub nuw nsw i64 %i.jo, %i.ju
  call void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.jw)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6resizeEm.exit

bb.bd:                                            ; preds = %bb.bb
  %i.jx = icmp ugt i64 %i.ju, %i.jo
  br i1 %i.jx, label %bb.be, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6resizeEm.exit

bb.be:                                            ; preds = %bb.bd
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jo ; 2 uses
  %.not.i.i = icmp eq ptr %i.jp, %i.jy
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPKN4Luau4TypeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN4Luau4TypeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.be
  store ptr %i.jy, ptr %i.r, align 8, !tbaa !62
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6resizeEm.exit: ; preds = %bb.bc, %bb.bd, %bb.be, %_ZSt8_DestroyIPPKN4Luau4TypeES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.jz = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.ka = load ptr, ptr %i.z, align 8, !tbaa !66  ; 2 uses
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = ashr exact i64 %i.kd, 3                 ; 3 uses
  %i.kf = icmp ult i64 %i.ke, %i.jo
  br i1 %i.kf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6resizeEm.exit
  %i.kg = sub nuw nsw i64 %i.jo, %i.ke
  call void @_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.kg)
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE6resizeEm.exit

bb.bg:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6resizeEm.exit
  %i.kh = icmp ugt i64 %i.ke, %i.jo
  br i1 %i.kh, label %bb.bh, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE6resizeEm.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jo ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.jz, %i.ki
  br i1 %.not.i.i45, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPKN4Luau11TypePackVarES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN4Luau11TypePackVarES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.bh
  store ptr %i.ki, ptr %i.ac, align 8, !tbaa !67
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE6resizeEm.exit: ; preds = %bb.bf, %bb.bg, %bb.bh, %_ZSt8_DestroyIPPKN4Luau11TypePackVarES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.kj = sext i32 %.sroa.0.0.copyload to i64
  %i.kk = load ptr, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %i.kj ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 20 ; 2 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %.pre-phi ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !9
  %i.kq = load i32, ptr %i.km, align 4, !tbaa !9
  %i.kr = call i32 @llvm.smin.i32(i32 %i.kp, i32 %i.kq)
  store i32 %i.kr, ptr %i.km, align 4, !tbaa !178
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 17
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !177, !range !137, !noundef !138
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.bi, label %_ZN4Luau6Tarjan9visitEdgeEii.exit47

bb.bi:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE6resizeEm.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 17
  store i8 1, ptr %i.kv, align 1, !tbaa !177
  br label %_ZN4Luau6Tarjan9visitEdgeEii.exit47

_ZN4Luau6Tarjan9visitEdgeEii.exit47:              ; preds = %bb.aj, %_ZNSt6vectorIN4Luau20TarjanWorklistVertexESaIS1_EE17_M_realloc_insertIJRiiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bi, %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EE6resizeEm.exit, %.loopexit
  %i.kw = load ptr, ptr %i.f, align 8, !tbaa !193
  %i.kx = load ptr, ptr %i.g, align 8, !tbaa !193 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZN4Luau6Tarjan9visitEdgeEii.exit47.thread, label %bb.b

_ZN4Luau6Tarjan9visitEdgeEii.exit47.thread:       ; preds = %_ZN4Luau6Tarjan9visitEdgeEii.exit47, %bb.c, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %_ZN4Luau6Tarjan9visitEdgeEii.exit47 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau6Tarjan9visitEdgeEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i8, ptr %i.e, align 1, !tbaa !177, !range !137, !noundef !138
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  store i8 1, ptr %i.j, align 1, !tbaa !177
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Tarjan8visitSCCEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i8, ptr %i.e, align 1, !tbaa !177, !range !137, !noundef !138
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = trunc nuw i8 %i.f to i1
  br i1 %i.i, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !209, !noalias !225 ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !209, !noalias !228
  %.not5078 = icmp eq ptr %i.j, %i.k
  br i1 %.not5078, label %.critedge.thread48, label %.lr.ph80

bb.b:                                             ; preds = %bb.d
  br i1 %i.x, label %.critedge.thread, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.b, %.thread
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !209, !noalias !228
  %.not50 = icmp eq ptr %i.m, %i.l
  br i1 %.not50, label %.critedge.thread48, label %.lr.ph80, !llvm.loop !216

.lr.ph80:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %.sroa.044.05379 = phi ptr [ %i.m, %.lr.ph.backedge ], [ %i.j, %.lr.ph.preheader ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.044.05379, i64 -4 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !173  ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph80
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !175  ; 2 uses
  %.not29 = icmp eq ptr %i.t, null
  br i1 %.not29, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph80
  %.sink70 = phi i64 [ 48, %.lr.ph80 ], [ 56, %bb.c ]
  %.sink = phi ptr [ %i.r, %.lr.ph80 ], [ %i.t, %bb.c ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink70
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %.sink) ; 2 uses
  %i.y = load i32, ptr %i.m, align 4, !tbaa !9
  %.not30 = icmp eq i32 %i.y, %1
  br i1 %.not30, label %.critedge, label %bb.b

.thread:                                          ; preds = %bb.c
  %i.z = load i32, ptr %i.m, align 4, !tbaa !9
  %.not3060 = icmp eq i32 %i.z, %1
  br i1 %.not3060, label %.critedge.thread48, label %.lr.ph.backedge

.critedge:                                        ; preds = %bb.d
  br i1 %i.x, label %.critedge.thread, label %.critedge.thread48

.critedge.thread:                                 ; preds = %bb.b, %bb.a, %.critedge
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !209, !noalias !231
end_hunk_0
