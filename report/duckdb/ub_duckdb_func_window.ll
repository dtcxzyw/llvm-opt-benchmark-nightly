Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNK6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EE9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEEm:bb.a

.noexc.i234:                                      ; preds = %_ZSt11lower_boundIPKjmET_S2_S2_RKT0_.exit
  %i.fi = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.fj, ptr %4, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 55, ptr %i.b, align 8, !tbaa !278
  %i.fk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc235 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i172 ; 3 uses

.noexc235:                                        ; preds = %.noexc.i234
  store ptr %i.fk, ptr %4, align 8, !tbaa !216
  %i.fl = load i64, ptr %i.b, align 8, !tbaa !278 ; 3 uses
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fk, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !569
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl
  store i8 0, ptr %i.fn, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc235
  invoke void @__cxa_throw(ptr nonnull %i.fi, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.n unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i172: ; preds = %.noexc.i234
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume.sink.split

bb.m:                                             ; preds = %bb.l, %.noexc235
  %.0.i.i.i175 = phi i1 [ false, %bb.l ], [ true, %.noexc235 ] ; 2 uses
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fq = load ptr, ptr %4, align 8, !tbaa !216   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fj
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.fq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i175, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i175, label %common.resume.sink.split, label %common.resume

bb.n:                                             ; preds = %bb.l
  unreachable

_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit178:       ; preds = %_ZSt11lower_boundIPKjmET_S2_S2_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.pre451, i64 %i.fh
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !79
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %.idx312 = shl nuw nsw i64 %i.fu, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx312 ; 2 uses
  %i.fw = add i64 %i.fh, 32                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.fw, ptr %i.e, align 8, !tbaa !278
  store i64 %i.cq, ptr %i.f, align 8, !tbaa !278
  %.not.i.i.i179 = icmp ult i64 %i.fw, %i.cq
  br i1 %.not.i.i.i179, label %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit186, label %.noexc.i238, !prof !279

.noexc.i238:                                      ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit178
  %i.fx = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fy, ptr %3, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 55, ptr %i.a, align 8, !tbaa !278
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc239 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i180 ; 3 uses

.noexc239:                                        ; preds = %.noexc.i238
  store ptr %i.fz, ptr %3, align 8, !tbaa !216
  %i.ga = load i64, ptr %i.a, align 8, !tbaa !278 ; 3 uses
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fz, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !569
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  store i8 0, ptr %i.gc, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc239
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.q unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i180: ; preds = %.noexc.i238
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume.sink.split

bb.p:                                             ; preds = %bb.o, %.noexc239
  %.0.i.i.i183 = phi i1 [ false, %bb.o ], [ true, %.noexc239 ] ; 2 uses
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gf = load ptr, ptr %3, align 8, !tbaa !216   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fy
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.gf) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0.i.i.i183, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i185: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0.i.i.i183, label %common.resume.sink.split, label %common.resume

bb.q:                                             ; preds = %bb.o
  unreachable

_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit186:       ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.pre451, i64 %i.fw
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !79
  %i.gj = zext i32 %i.gi to i64
  %i.gk = sub nsw i64 %i.gj, %i.fu                ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188, label %_ZSt11lower_boundIPKjmET_S2_S2_RKT0_.exit196

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188: ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit186
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !278
  br label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188
  %.017.i.i190 = phi i64 [ %i.gk, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188 ], [ %.1.i.i195, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189 ] ; 2 uses
  %.01116.i.i191 = phi ptr [ %i.fv, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188 ], [ %.112.i.i194, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189 ] ; 2 uses
  %i.go = lshr i64 %.017.i.i190, 1                ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i191, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !79
  %i.gr = zext i32 %i.gq to i64
  %i.gs = icmp ugt i64 %i.gn, %i.gr               ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gu = xor i64 %i.go, -1
  %i.gv = add nsw i64 %.017.i.i190, %i.gu
  %.112.i.i194 = select i1 %i.gs, ptr %i.gt, ptr %.01116.i.i191 ; 2 uses
  %.1.i.i195 = select i1 %i.gs, i64 %i.gv, i64 %i.go ; 2 uses
  %i.gw = icmp sgt i64 %.1.i.i195, 0
  br i1 %i.gw, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189, label %_ZSt11lower_boundIPKjmET_S2_S2_RKT0_.exit196, !llvm.loop !1322

_ZSt11lower_boundIPKjmET_S2_S2_RKT0_.exit196:     ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit186
  %.011.lcssa.i.i187 = phi ptr [ %i.fv, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit186 ], [ %.112.i.i194, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i189 ]
  %i.gx = ptrtoint ptr %.011.lcssa.i.i187 to i64
  %i.gy = sub i64 %i.gx, %i.cm
  %i.gz = ashr exact i64 %i.gy, 2                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !545
  %i.hb = sub i64 %.0133356, %i.ff
  %i.hc = add i64 %i.hb, %i.gz                    ; 4 uses
  %i.hd = add nuw i64 %.0134355, 1                ; 2 uses
  %exitcond443.not = icmp eq i64 %i.hd, %umax
  br i1 %exitcond443.not, label %._crit_edge357, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit, !llvm.loop !1323

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0132363 = phi i64 [ %i.hj, %scalar.ph ], [ %.0132363.ph, %scalar.ph.preheader ] ; 3 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.0132363
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.0132363
  %i.hg = load <2 x i64>, ptr %i.hf, align 8, !tbaa !278
  %i.hh = and <2 x i64> %i.hg, splat (i64 -32)
  %i.hi = add <2 x i64> %i.hh, %i.de
  store <2 x i64> %i.hi, ptr %i.he, align 8, !tbaa !278
  %i.hj = add nuw nsw i64 %.0132363, 1            ; 2 uses
  %exitcond447.not = icmp eq i64 %i.hj, %umax
  br i1 %exitcond447.not, label %._crit_edge365, label %scalar.ph, !llvm.loop !1324

.lr.ph361:                                        ; preds = %.lr.ph361.preheader, %.lr.ph361
  %.0128360 = phi i64 [ %i.hn, %.lr.ph361 ], [ %.0128360.ph, %.lr.ph361.preheader ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.0128360 ; 2 uses
  %i.hl = load <2 x i64>, ptr %i.hk, align 8, !tbaa !278
  %i.hm = add <2 x i64> %i.hl, splat (i64 1)
  store <2 x i64> %i.hm, ptr %i.hk, align 8, !tbaa !278
  %i.hn = add nuw nsw i64 %.0128360, 1            ; 2 uses
  %exitcond445.not = icmp eq i64 %i.hn, %umax
  br i1 %exitcond445.not, label %._crit_edge362, label %.lr.ph361, !llvm.loop !1325

._crit_edge362:                                   ; preds = %.lr.ph361, %middle.block536, %bb.e
  %.0133.lcssa485487 = phi i64 [ 0, %bb.e ], [ %i.hc, %middle.block536 ], [ %i.hc, %.lr.ph361 ]
  %i.ho = add i64 %.1291, 1
  %i.hp = sub nuw i64 %.1287, %.0133.lcssa485487
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.e

._crit_edge365:                                   ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.hq = shl i64 %.1291, 5                       ; 2 uses
  %i.hr = lshr i64 %.1122369, 5                   ; 2 uses
  %i.hs = add i64 %.0370, -1                      ; 2 uses
  %.not = icmp ult i64 %.0370, 3
  br i1 %.not, label %._crit_edge372, label %.lr.ph371, !llvm.loop !1326

._crit_edge372:                                   ; preds = %._crit_edge365
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge372, %._crit_edge
  %.3293 = phi i64 [ %i.hq, %._crit_edge372 ], [ 0, %._crit_edge ] ; 2 uses
  %.3289 = phi i64 [ %.1287, %._crit_edge372 ], [ %2, %._crit_edge ] ; 2 uses
  %.2123 = phi i64 [ %i.hr, %._crit_edge372 ], [ %.lcssa553, %._crit_edge ]
  %.1 = phi i64 [ %i.hs, %._crit_edge372 ], [ %i.u, %._crit_edge ] ; 2 uses
  %.not139391 = icmp eq i64 %.1, 0
  br i1 %.not139391, label %._crit_edge398, label %.lr.ph397

.lr.ph397:                                        ; preds = %bb.r
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph397, %.thread305
  %.2395 = phi i64 [ %.1, %.lr.ph397 ], [ %10, %.thread305 ] ; 2 uses
  %.3394 = phi i64 [ %.2123, %.lr.ph397 ], [ %i.jr, %.thread305 ] ; 6 uses
  %.4393 = phi i64 [ %.3289, %.lr.ph397 ], [ %.5.lcssa, %.thread305 ] ; 2 uses
  %.4294392 = phi i64 [ %.3293, %.lr.ph397 ], [ %i.jq, %.thread305 ] ; 3 uses
  %i.ht = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.2395) ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !757
  %i.hv = mul i64 %.3394, %.4294392
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !757 ; 2 uses
  %.sroa.0251.0381 = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %.3394 ; 2 uses
  %i.hz = icmp ult ptr %.sroa.0251.0381, %i.hy
  br i1 %i.hz, label %.preheader.lr.ph, label %.thread305

.preheader.lr.ph:                                 ; preds = %bb.s
  %i.ia = load ptr, ptr %9, align 8, !tbaa !407   ; 2 uses
  %i.ib = load ptr, ptr %1, align 8, !tbaa !408   ; 3 uses
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = ashr exact i64 %i.ie, 4
  %.not425 = icmp eq ptr %i.ia, %i.ib
  %i.ig = icmp sgt i64 %.3394, 0
  %umax448 = tail call i64 @llvm.umax.i64(i64 %i.if, i64 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge379.thread
  %.sroa.0251.0385 = phi ptr [ %.sroa.0251.0381, %.preheader.lr.ph ], [ %.sroa.0251.0, %._crit_edge379.thread ] ; 3 uses
  %.sroa.0254.0384 = phi ptr [ %i.hw, %.preheader.lr.ph ], [ %.sroa.0251.0385, %._crit_edge379.thread ] ; 2 uses
  %.5383 = phi i64 [ %.4393, %.preheader.lr.ph ], [ %i.jo, %._crit_edge379.thread ] ; 3 uses
  %.5295382 = phi i64 [ %.4294392, %.preheader.lr.ph ], [ %i.jn, %._crit_edge379.thread ] ; 2 uses
  br i1 %.not425, label %._crit_edge379.thread, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph: ; preds = %.preheader
  %i.ih = ptrtoint ptr %.sroa.0251.0385 to i64
  br label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204

._crit_edge379:                                   ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224
  %i.ii = icmp ugt i64 %i.jl, %.5383
  br i1 %i.ii, label %.thread305, label %._crit_edge379.thread

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224
  %.0125378 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jm, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224 ] ; 2 uses
  %.0126377 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jl, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224 ]
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %.0125378 ; 2 uses
  br i1 %i.ig, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206
  %.016.i.i208 = phi i64 [ %.3394, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.1.i.i213, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %.sroa.011.015.i.i209 = phi ptr [ %.sroa.0254.0384, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.il = lshr i64 %.016.i.i208, 1                ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i209, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !79
  %i.io = zext i32 %i.in to i64
  %i.ip = icmp ugt i64 %i.ik, %i.io               ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.ir = xor i64 %i.il, -1
  %i.is = add nsw i64 %.016.i.i208, %i.ir
  %.sroa.011.1.i.i212 = select i1 %i.ip, ptr %i.iq, ptr %.sroa.011.015.i.i209 ; 2 uses
  %.1.i.i213 = select i1 %i.ip, i64 %i.is, i64 %i.il ; 2 uses
  %i.it = icmp sgt i64 %.1.i.i213, 0
  br i1 %i.it, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214, !llvm.loop !1318

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %.sroa.011.0.lcssa.i.i205 = phi ptr [ %.sroa.0254.0384, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.iu = ptrtoint ptr %.sroa.011.0.lcssa.i.i205 to i64 ; 3 uses
  %i.iv = sub i64 %i.ih, %i.iu
  %i.iw = ashr exact i64 %i.iv, 2                 ; 2 uses
  %i.ix = icmp sgt i64 %i.iw, 0
  br i1 %i.ix, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216
  %.016.i.i218 = phi i64 [ %i.iw, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.1.i.i223, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %.sroa.011.015.i.i219 = phi ptr [ %.sroa.011.0.lcssa.i.i205, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.sroa.011.1.i.i222, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %i.ja = lshr i64 %.016.i.i218, 1                ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i219, i64 %i.ja ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !79
  %i.jd = zext i32 %i.jc to i64
  %i.je = icmp ugt i64 %i.iz, %i.jd               ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jg = xor i64 %i.ja, -1
  %i.jh = add nsw i64 %.016.i.i218, %i.jg
  %.sroa.011.1.i.i222 = select i1 %i.je, ptr %i.jf, ptr %.sroa.011.015.i.i219 ; 2 uses
  %.1.i.i223 = select i1 %i.je, i64 %i.jh, i64 %i.ja ; 2 uses
  %i.ji = icmp sgt i64 %.1.i.i223, 0
  br i1 %i.ji, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit, !llvm.loop !1318

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217
  %.pre452 = ptrtoint ptr %.sroa.011.1.i.i222 to i64
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214
  %.pre-phi = phi i64 [ %.pre452, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit ], [ %i.iu, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214 ]
  %i.jj = sub i64 %.pre-phi, %i.iu
  %i.jk = ashr exact i64 %i.jj, 2
  %i.jl = add i64 %i.jk, %.0126377                ; 3 uses
  %i.jm = add nuw i64 %.0125378, 1                ; 2 uses
  %exitcond449.not = icmp eq i64 %i.jm, %umax448
  br i1 %exitcond449.not, label %._crit_edge379, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204, !llvm.loop !1327

._crit_edge379.thread:                            ; preds = %.preheader, %._crit_edge379
  %.0126.lcssa494 = phi i64 [ %i.jl, %._crit_edge379 ], [ 0, %.preheader ]
  %i.jn = add i64 %.5295382, 1                    ; 2 uses
  %i.jo = sub nuw i64 %.5383, %.0126.lcssa494     ; 2 uses
  %.sroa.0251.0 = getelementptr inbounds [4 x i8], ptr %.sroa.0251.0385, i64 %.3394 ; 2 uses
  %i.jp = icmp ult ptr %.sroa.0251.0, %i.hy
  br i1 %i.jp, label %.preheader, label %.thread305

.thread305:                                       ; preds = %._crit_edge379.thread, %._crit_edge379, %bb.s
  %.5295.lcssa = phi i64 [ %.4294392, %bb.s ], [ %.5295382, %._crit_edge379 ], [ %i.jn, %._crit_edge379.thread ]
  %.5.lcssa = phi i64 [ %.4393, %bb.s ], [ %.5383, %._crit_edge379 ], [ %i.jo, %._crit_edge379.thread ] ; 2 uses
  %i.jq = shl i64 %.5295.lcssa, 5                 ; 2 uses
  %i.jr = lshr i64 %.3394, 5
  %10 = add i64 %.2395, -1                        ; 2 uses
  %.not139 = icmp eq i64 %10, 0
  br i1 %.not139, label %._crit_edge398, label %bb.s, !llvm.loop !1328

._crit_edge398:                                   ; preds = %.thread305, %bb.b, %bb.r
  %.4294.lcssa = phi i64 [ %.3293, %bb.r ], [ 0, %bb.b ], [ %i.jq, %.thread305 ] ; 5 uses
  %.4.lcssa = phi i64 [ %.3289, %bb.r ], [ %2, %bb.b ], [ %.5.lcssa, %.thread305 ]
  %i.js = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !727
  %i.ju = add i64 %.4.lcssa, 1                    ; 4 uses
  %i.jv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !758
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !727
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = ashr exact i64 %i.kb, 2
  %i.kd = add i64 %.4294.lcssa, 32
  %i.ke = tail call noundef i64 @llvm.umin.i64(i64 %i.kd, i64 %i.kc) ; 4 uses
  %i.kf = icmp ult i64 %.4294.lcssa, %i.ke
  br i1 %i.kf, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %._crit_edge398
  %i.kg = load ptr, ptr %1, align 8, !tbaa !759   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !759 ; 2 uses
  %.not313401 = icmp eq ptr %i.kg, %i.ki
  br i1 %.not313401, label %.lr.ph411.split.us, label %.lr.ph405

.lr.ph411.split.us:                               ; preds = %.lr.ph411
  %.not140.not.us = icmp eq i64 %i.ju, 0
  %spec.select = select i1 %.not140.not.us, i64 %.4294.lcssa, i64 %i.ke
  br label %.loopexit

.lr.ph405:                                        ; preds = %.lr.ph411, %bb.u
  %.8409 = phi i64 [ %i.kq, %bb.u ], [ %i.ju, %.lr.ph411 ]
  %.8298408 = phi i64 [ %i.ks, %bb.u ], [ %.4294.lcssa, %.lr.ph411 ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.8298408
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !79
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  br label %bb.t

._crit_edge406:                                   ; preds = %bb.t
  %.not140.not = icmp eq i64 %i.kq, 0
  br i1 %.not140.not, label %.loopexit, label %bb.u

bb.t:                                             ; preds = %.lr.ph405, %bb.t
  %.sroa.0245.0403 = phi ptr [ %i.kg, %.lr.ph405 ], [ %i.kr, %bb.t ] ; 3 uses
  %.9402 = phi i64 [ %.8409, %.lr.ph405 ], [ %i.kq, %bb.t ]
  %i.km = load i64, ptr %.sroa.0245.0403, align 8, !tbaa !710
  %.not141 = icmp ule i64 %i.km, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 8
  %i.ko = load i64, ptr %i.kn, align 8
  %i.kp = icmp ugt i64 %i.ko, %i.kl
  %narrow = select i1 %.not141, i1 %i.kp, i1 false
  %.neg142 = sext i1 %narrow to i64
  %i.kq = add i64 %.9402, %.neg142                ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 16 ; 2 uses
  %.not313 = icmp eq ptr %i.kr, %i.ki
  br i1 %.not313, label %._crit_edge406, label %bb.t

bb.u:                                             ; preds = %._crit_edge406
  %i.ks = add nuw i64 %.8298408, 1                ; 2 uses
  %exitcond450.not = icmp eq i64 %i.ks, %i.ke
  br i1 %exitcond450.not, label %.loopexit, label %.lr.ph405, !llvm.loop !1329

.loopexit:                                        ; preds = %bb.u, %._crit_edge406, %.lr.ph411.split.us, %._crit_edge398, %bb.a
  %.sroa.0279.0 = phi i64 [ 0, %bb.a ], [ %.4294.lcssa, %._crit_edge398 ], [ %spec.select, %.lr.ph411.split.us ], [ %.8298408, %._crit_edge406 ], [ %i.ke, %bb.u ]
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %i.ju, %._crit_edge398 ], [ %i.ju, %.lr.ph411.split.us ], [ 0, %._crit_edge406 ], [ %i.kq, %bb.u ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0279.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZNK6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEEm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.std::array.1278", align 8  ; 11 uses
  %8 = alloca %"struct.std::array.1278", align 8  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !641
  %i.o = load ptr, ptr %0, align 8, !tbaa !656
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 48                  ; 4 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -2                     ; 6 uses
  %.not420 = icmp eq i64 %i.u, 0
  br i1 %.not420, label %._crit_edge398, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.v = add nsw i64 %i.s, -3
  %xtraiter = and i64 %i.u, 7                     ; 3 uses
  %i.w = icmp ult i64 %i.v, 7
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.u, -8
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0121351.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.z, %._crit_edge.unr-lcssa ]
  %lcmp.mod555 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod555)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0121351.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.0121351.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = shl i64 %.0121351.epil, 5                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1330

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa553 = phi i64 [ %i.z, %._crit_edge.unr-lcssa ], [ %i.x, %.lr.ph.epil ] ; 2 uses
  %i.y = icmp ugt i64 %i.u, 2
  br i1 %i.y, label %bb.c, label %bb.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0121351 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.z = shl i64 %.0121351, 40                    ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1331

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.aa = add nsw i64 %i.s, -1
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !407
  %i.ae = load ptr, ptr %1, align 8, !tbaa !408
  %.not421 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not421, label %.lr.ph371.preheader, label %.lr.ph354

.lr.ph354:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph354, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152
  %.0127352 = phi i64 [ 0, %.lr.ph354 ], [ %i.bq, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152 ] ; 3 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0127352) ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.0127352 ; 3 uses
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !414 ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !414
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64               ; 4 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.d
  %i.ap = load i64, ptr %i.ag, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.aq = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !278
  %i.at = icmp ult i64 %i.as, %i.ap               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = xor i64 %i.aq, -1
  %i.aw = add nsw i64 %.016.i.i, %i.av
  %.sroa.011.1.i.i = select i1 %i.at, ptr %i.au, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.at, i64 %i.aw, i64 %i.aq ; 2 uses
  %i.ax = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i144, !llvm.loop !1332

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit: ; preds = %bb.d
  store i64 0, ptr %i.ah, align 8, !tbaa !544
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i144: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.ay = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.az = sub i64 %i.ay, %i.al
  %i.ba = ashr exact i64 %i.az, 3
end_hunk_0
begin_hunk_1_@_ZNK6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEEm:bb.a
  store i64 %i.co, ptr %i.h, align 8, !tbaa !278
  %.not.i.i.i171 = icmp ult i64 %i.fc, %i.co
  br i1 %.not.i.i.i171, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit178, label %.noexc.i234, !prof !279

.noexc.i234:                                      ; preds = %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit
  %i.fd = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.fe, ptr %4, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 55, ptr %i.b, align 8, !tbaa !278
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc235 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i172 ; 3 uses

.noexc235:                                        ; preds = %.noexc.i234
  store ptr %i.ff, ptr %4, align 8, !tbaa !216
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !278 ; 3 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ff, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !569
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 0, ptr %i.fi, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc235
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.n unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i172: ; preds = %.noexc.i234
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume.sink.split

bb.m:                                             ; preds = %bb.l, %.noexc235
  %.0.i.i.i175 = phi i1 [ false, %bb.l ], [ true, %.noexc235 ] ; 2 uses
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fl = load ptr, ptr %4, align 8, !tbaa !216   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fe
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i176: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.fl) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i175, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i177: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i175, label %common.resume.sink.split, label %common.resume

bb.n:                                             ; preds = %bb.l
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit178:       ; preds = %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.pre451, i64 %i.fc
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !278 ; 2 uses
  %.idx312 = shl nuw nsw i64 %i.fo, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx312 ; 2 uses
  %i.fq = add i64 %i.fc, 32                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.fq, ptr %i.e, align 8, !tbaa !278
  store i64 %i.co, ptr %i.f, align 8, !tbaa !278
  %.not.i.i.i179 = icmp ult i64 %i.fq, %i.co
  br i1 %.not.i.i.i179, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit186, label %.noexc.i238, !prof !279

.noexc.i238:                                      ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit178
  %i.fr = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fs, ptr %3, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 55, ptr %i.a, align 8, !tbaa !278
  %i.ft = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc239 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i180 ; 3 uses

.noexc239:                                        ; preds = %.noexc.i238
  store ptr %i.ft, ptr %3, align 8, !tbaa !216
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !278 ; 3 uses
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ft, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !569
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fu
  store i8 0, ptr %i.fw, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc239
  invoke void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.q unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i180: ; preds = %.noexc.i238
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume.sink.split

bb.p:                                             ; preds = %bb.o, %.noexc239
  %.0.i.i.i183 = phi i1 [ false, %bb.o ], [ true, %.noexc239 ] ; 2 uses
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fz = load ptr, ptr %3, align 8, !tbaa !216   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fs
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.fz) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0.i.i.i183, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i185: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0.i.i.i183, label %common.resume.sink.split, label %common.resume

bb.q:                                             ; preds = %bb.o
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit186:       ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.pre451, i64 %i.fq
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !278
  %i.gd = sub nsw i64 %i.gc, %i.fo                ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 0
  br i1 %i.ge, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188, label %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit196

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit186
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !278
  br label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188
  %.017.i.i190 = phi i64 [ %i.gd, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188 ], [ %.1.i.i195, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189 ] ; 2 uses
  %.01116.i.i191 = phi ptr [ %i.fp, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i188 ], [ %.112.i.i194, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189 ] ; 2 uses
  %i.gh = lshr i64 %.017.i.i190, 1                ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i191, i64 %i.gh ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !278
  %i.gk = icmp ult i64 %i.gj, %i.gg               ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gm = xor i64 %i.gh, -1
  %i.gn = add nsw i64 %.017.i.i190, %i.gm
  %.112.i.i194 = select i1 %i.gk, ptr %i.gl, ptr %.01116.i.i191 ; 2 uses
  %.1.i.i195 = select i1 %i.gk, i64 %i.gn, i64 %i.gh ; 2 uses
  %i.go = icmp sgt i64 %.1.i.i195, 0
  br i1 %i.go, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189, label %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit196, !llvm.loop !43

_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit196:     ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit186
  %.011.lcssa.i.i187 = phi ptr [ %i.fp, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit186 ], [ %.112.i.i194, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i189 ]
  %i.gp = ptrtoint ptr %.011.lcssa.i.i187 to i64
  %i.gq = sub i64 %i.gp, %i.ck
  %i.gr = ashr exact i64 %i.gq, 3                 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !545
  %i.gt = sub i64 %.0133356, %i.fa
  %i.gu = add i64 %i.gt, %i.gr                    ; 4 uses
  %i.gv = add nuw i64 %.0134355, 1                ; 2 uses
  %exitcond443.not = icmp eq i64 %i.gv, %umax
  br i1 %exitcond443.not, label %._crit_edge357, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit, !llvm.loop !1336

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0132363 = phi i64 [ %i.hb, %scalar.ph ], [ %.0132363.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.0132363
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.0132363
  %i.gy = load <2 x i64>, ptr %i.gx, align 8, !tbaa !278
  %i.gz = and <2 x i64> %i.gy, splat (i64 -32)
  %i.ha = add <2 x i64> %i.gz, %i.dc
  store <2 x i64> %i.ha, ptr %i.gw, align 8, !tbaa !278
  %i.hb = add nuw nsw i64 %.0132363, 1            ; 2 uses
  %exitcond447.not = icmp eq i64 %i.hb, %umax
  br i1 %exitcond447.not, label %._crit_edge365, label %scalar.ph, !llvm.loop !1337

.lr.ph361:                                        ; preds = %.lr.ph361.preheader, %.lr.ph361
  %.0128360 = phi i64 [ %i.hf, %.lr.ph361 ], [ %.0128360.ph, %.lr.ph361.preheader ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.0128360 ; 2 uses
  %i.hd = load <2 x i64>, ptr %i.hc, align 8, !tbaa !278
  %i.he = add <2 x i64> %i.hd, splat (i64 1)
  store <2 x i64> %i.he, ptr %i.hc, align 8, !tbaa !278
  %i.hf = add nuw nsw i64 %.0128360, 1            ; 2 uses
  %exitcond445.not = icmp eq i64 %i.hf, %umax
  br i1 %exitcond445.not, label %._crit_edge362, label %.lr.ph361, !llvm.loop !1338

._crit_edge362:                                   ; preds = %.lr.ph361, %middle.block536, %bb.e
  %.0133.lcssa485487 = phi i64 [ 0, %bb.e ], [ %i.gu, %middle.block536 ], [ %i.gu, %.lr.ph361 ]
  %i.hg = add i64 %.1291, 1
  %i.hh = sub nuw i64 %.1287, %.0133.lcssa485487
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.e

._crit_edge365:                                   ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.hi = shl i64 %.1291, 5                       ; 2 uses
  %i.hj = lshr i64 %.1122369, 5                   ; 2 uses
  %i.hk = add i64 %.0370, -1                      ; 2 uses
  %.not = icmp ult i64 %.0370, 3
  br i1 %.not, label %._crit_edge372, label %.lr.ph371, !llvm.loop !1339

._crit_edge372:                                   ; preds = %._crit_edge365
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge372, %._crit_edge
  %.3293 = phi i64 [ %i.hi, %._crit_edge372 ], [ 0, %._crit_edge ] ; 2 uses
  %.3289 = phi i64 [ %.1287, %._crit_edge372 ], [ %2, %._crit_edge ] ; 2 uses
  %.2123 = phi i64 [ %i.hj, %._crit_edge372 ], [ %.lcssa553, %._crit_edge ]
  %.1 = phi i64 [ %i.hk, %._crit_edge372 ], [ %i.u, %._crit_edge ] ; 2 uses
  %.not139391 = icmp eq i64 %.1, 0
  br i1 %.not139391, label %._crit_edge398, label %.lr.ph397

.lr.ph397:                                        ; preds = %bb.r
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph397, %.thread305
  %.2395 = phi i64 [ %.1, %.lr.ph397 ], [ %10, %.thread305 ] ; 2 uses
  %.3394 = phi i64 [ %.2123, %.lr.ph397 ], [ %i.jh, %.thread305 ] ; 6 uses
  %.4393 = phi i64 [ %.3289, %.lr.ph397 ], [ %.5.lcssa, %.thread305 ] ; 2 uses
  %.4294392 = phi i64 [ %.3293, %.lr.ph397 ], [ %i.jg, %.thread305 ] ; 3 uses
  %i.hl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.2395) ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !414
  %i.hn = mul i64 %.3394, %.4294392
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !414 ; 2 uses
  %.sroa.0251.0381 = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %.3394 ; 2 uses
  %i.hr = icmp ult ptr %.sroa.0251.0381, %i.hq
  br i1 %i.hr, label %.preheader.lr.ph, label %.thread305

.preheader.lr.ph:                                 ; preds = %bb.s
  %i.hs = load ptr, ptr %9, align 8, !tbaa !407   ; 2 uses
  %i.ht = load ptr, ptr %1, align 8, !tbaa !408   ; 3 uses
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = ashr exact i64 %i.hw, 4
  %.not425 = icmp eq ptr %i.hs, %i.ht
  %i.hy = icmp sgt i64 %.3394, 0
  %umax448 = tail call i64 @llvm.umax.i64(i64 %i.hx, i64 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge379.thread
  %.sroa.0251.0385 = phi ptr [ %.sroa.0251.0381, %.preheader.lr.ph ], [ %.sroa.0251.0, %._crit_edge379.thread ] ; 3 uses
  %.sroa.0254.0384 = phi ptr [ %i.ho, %.preheader.lr.ph ], [ %.sroa.0251.0385, %._crit_edge379.thread ] ; 2 uses
  %.5383 = phi i64 [ %.4393, %.preheader.lr.ph ], [ %i.je, %._crit_edge379.thread ] ; 3 uses
  %.5295382 = phi i64 [ %.4294392, %.preheader.lr.ph ], [ %i.jd, %._crit_edge379.thread ] ; 2 uses
  br i1 %.not425, label %._crit_edge379.thread, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph: ; preds = %.preheader
  %i.hz = ptrtoint ptr %.sroa.0251.0385 to i64
  br label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204

._crit_edge379:                                   ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224
  %i.ia = icmp ugt i64 %i.jb, %.5383
  br i1 %i.ia, label %.thread305, label %._crit_edge379.thread

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224
  %.0125378 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jc, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224 ] ; 2 uses
  %.0126377 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jb, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224 ]
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.0125378 ; 2 uses
  br i1 %i.hy, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206
  %.016.i.i208 = phi i64 [ %.3394, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.1.i.i213, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %.sroa.011.015.i.i209 = phi ptr [ %.sroa.0254.0384, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.id = lshr i64 %.016.i.i208, 1                ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i209, i64 %i.id ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !278
  %i.ig = icmp ult i64 %i.if, %i.ic               ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ii = xor i64 %i.id, -1
  %i.ij = add nsw i64 %.016.i.i208, %i.ii
  %.sroa.011.1.i.i212 = select i1 %i.ig, ptr %i.ih, ptr %.sroa.011.015.i.i209 ; 2 uses
  %.1.i.i213 = select i1 %i.ig, i64 %i.ij, i64 %i.id ; 2 uses
  %i.ik = icmp sgt i64 %.1.i.i213, 0
  br i1 %i.ik, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214, !llvm.loop !1332

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %.sroa.011.0.lcssa.i.i205 = phi ptr [ %.sroa.0254.0384, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.il = ptrtoint ptr %.sroa.011.0.lcssa.i.i205 to i64 ; 3 uses
  %i.im = sub i64 %i.hz, %i.il
  %i.in = ashr exact i64 %i.im, 3                 ; 2 uses
  %i.io = icmp sgt i64 %i.in, 0
  br i1 %i.io, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216
  %.016.i.i218 = phi i64 [ %i.in, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.1.i.i223, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %.sroa.011.015.i.i219 = phi ptr [ %.sroa.011.0.lcssa.i.i205, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.sroa.011.1.i.i222, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %i.ir = lshr i64 %.016.i.i218, 1                ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i219, i64 %i.ir ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !278
  %i.iu = icmp ult i64 %i.it, %i.iq               ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iw = xor i64 %i.ir, -1
  %i.ix = add nsw i64 %.016.i.i218, %i.iw
  %.sroa.011.1.i.i222 = select i1 %i.iu, ptr %i.iv, ptr %.sroa.011.015.i.i219 ; 2 uses
  %.1.i.i223 = select i1 %i.iu, i64 %i.ix, i64 %i.ir ; 2 uses
  %i.iy = icmp sgt i64 %.1.i.i223, 0
  br i1 %i.iy, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit, !llvm.loop !1332

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217
  %.pre452 = ptrtoint ptr %.sroa.011.1.i.i222 to i64
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214
  %.pre-phi = phi i64 [ %.pre452, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit ], [ %i.il, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214 ]
  %i.iz = sub i64 %.pre-phi, %i.il
  %i.ja = ashr exact i64 %i.iz, 3
  %i.jb = add i64 %i.ja, %.0126377                ; 3 uses
  %i.jc = add nuw i64 %.0125378, 1                ; 2 uses
  %exitcond449.not = icmp eq i64 %i.jc, %umax448
  br i1 %exitcond449.not, label %._crit_edge379, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204, !llvm.loop !1340

._crit_edge379.thread:                            ; preds = %.preheader, %._crit_edge379
  %.0126.lcssa494 = phi i64 [ %i.jb, %._crit_edge379 ], [ 0, %.preheader ]
  %i.jd = add i64 %.5295382, 1                    ; 2 uses
  %i.je = sub nuw i64 %.5383, %.0126.lcssa494     ; 2 uses
  %.sroa.0251.0 = getelementptr inbounds [8 x i8], ptr %.sroa.0251.0385, i64 %.3394 ; 2 uses
  %i.jf = icmp ult ptr %.sroa.0251.0, %i.hq
  br i1 %i.jf, label %.preheader, label %.thread305

.thread305:                                       ; preds = %._crit_edge379.thread, %._crit_edge379, %bb.s
  %.5295.lcssa = phi i64 [ %.4294392, %bb.s ], [ %.5295382, %._crit_edge379 ], [ %i.jd, %._crit_edge379.thread ]
  %.5.lcssa = phi i64 [ %.4393, %bb.s ], [ %.5383, %._crit_edge379 ], [ %i.je, %._crit_edge379.thread ] ; 2 uses
  %i.jg = shl i64 %.5295.lcssa, 5                 ; 2 uses
  %i.jh = lshr i64 %.3394, 5
  %10 = add i64 %.2395, -1                        ; 2 uses
  %.not139 = icmp eq i64 %10, 0
  br i1 %.not139, label %._crit_edge398, label %bb.s, !llvm.loop !1341

._crit_edge398:                                   ; preds = %.thread305, %bb.b, %bb.r
  %.4294.lcssa = phi i64 [ %.3293, %bb.r ], [ 0, %bb.b ], [ %i.jg, %.thread305 ] ; 5 uses
  %.4.lcssa = phi i64 [ %.3289, %bb.r ], [ %2, %bb.b ], [ %.5.lcssa, %.thread305 ]
  %i.ji = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !366
  %i.jk = add i64 %.4.lcssa, 1                    ; 4 uses
  %i.jl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !368
  %i.jo = load ptr, ptr %i.jl, align 8, !tbaa !366
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = ashr exact i64 %i.jr, 3
  %i.jt = add i64 %.4294.lcssa, 32
  %i.ju = tail call noundef i64 @llvm.umin.i64(i64 %i.jt, i64 %i.js) ; 4 uses
  %i.jv = icmp ult i64 %.4294.lcssa, %i.ju
  br i1 %i.jv, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %._crit_edge398
  %i.jw = load ptr, ptr %1, align 8, !tbaa !759   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !759 ; 2 uses
  %.not313401 = icmp eq ptr %i.jw, %i.jy
  br i1 %.not313401, label %.lr.ph411.split.us, label %.lr.ph405

.lr.ph411.split.us:                               ; preds = %.lr.ph411
  %.not140.not.us = icmp eq i64 %i.jk, 0
  %spec.select = select i1 %.not140.not.us, i64 %.4294.lcssa, i64 %i.ju
  br label %.loopexit

.lr.ph405:                                        ; preds = %.lr.ph411, %bb.u
  %.8409 = phi i64 [ %i.kf, %bb.u ], [ %i.jk, %.lr.ph411 ]
  %.8298408 = phi i64 [ %i.kh, %bb.u ], [ %.4294.lcssa, %.lr.ph411 ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %.8298408
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !278 ; 2 uses
  br label %bb.t

._crit_edge406:                                   ; preds = %bb.t
  %.not140.not = icmp eq i64 %i.kf, 0
  br i1 %.not140.not, label %.loopexit, label %bb.u

bb.t:                                             ; preds = %.lr.ph405, %bb.t
  %.sroa.0245.0403 = phi ptr [ %i.jw, %.lr.ph405 ], [ %i.kg, %bb.t ] ; 3 uses
  %.9402 = phi i64 [ %.8409, %.lr.ph405 ], [ %i.kf, %bb.t ]
  %i.kb = load i64, ptr %.sroa.0245.0403, align 8, !tbaa !710
  %.not141 = icmp uge i64 %i.ka, %i.kb
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 8
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = icmp ult i64 %i.ka, %i.kd
  %narrow = select i1 %.not141, i1 %i.ke, i1 false
  %.neg142 = sext i1 %narrow to i64
  %i.kf = add i64 %.9402, %.neg142                ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 16 ; 2 uses
  %.not313 = icmp eq ptr %i.kg, %i.jy
  br i1 %.not313, label %._crit_edge406, label %bb.t

bb.u:                                             ; preds = %._crit_edge406
  %i.kh = add nuw i64 %.8298408, 1                ; 2 uses
  %exitcond450.not = icmp eq i64 %i.kh, %i.ju
  br i1 %exitcond450.not, label %.loopexit, label %.lr.ph405, !llvm.loop !1342

.loopexit:                                        ; preds = %bb.u, %._crit_edge406, %.lr.ph411.split.us, %._crit_edge398, %bb.a
  %.sroa.0279.0 = phi i64 [ 0, %bb.a ], [ %.4294.lcssa, %._crit_edge398 ], [ %spec.select, %.lr.ph411.split.us ], [ %.8298408, %._crit_edge406 ], [ %i.ju, %bb.u ]
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %i.jk, %._crit_edge398 ], [ %i.jk, %.lr.ph411.split.us ], [ 0, %._crit_edge406 ], [ %i.kf, %bb.u ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0279.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !721    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !724  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !725  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !727  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !727 ; 2 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !45

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !724
  br label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit

_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !729    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !656  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !641  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !366  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !366 ; 2 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !656
  br label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit

_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit, %bb.a
  ret void
}

declare void @_ZNK6duckdb16BoundOrderByNode4CopyEv(ptr dead_on_unwind writable sret(%"struct.duckdb::BoundOrderByNode") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb16BoundOrderByNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.a
end_hunk_1
