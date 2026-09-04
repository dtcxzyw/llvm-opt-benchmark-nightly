Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cw
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 41)
  br label %.loopexit

bb.cw:                                            ; preds = %bb.cu, %bb.cw
  %.0162643 = phi i32 [ 0, %bb.cu ], [ %i.ws, %bb.cw ]
  %i.wl = call fastcc noundef double @_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #46
  store double %i.wl, ptr %i.ab, align 8, !tbaa !477
  %i.wm = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.wn = load ptr, ptr %1, align 8, !tbaa !602   ; 2 uses
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %i.wr = getelementptr inbounds i8, ptr %i.wn, i64 %i.wq
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.wr, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.wk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #46
  %i.ws = add nuw nsw i32 %.0162643, 1            ; 2 uses
  %exitcond676.not = icmp eq i32 %i.ws, %i.vh
  br i1 %exitcond676.not, label %bb.cv, label %bb.cw, !llvm.loop !3213

bb.cx:                                            ; preds = %bb.cr
  br i1 %.not11.i338, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #46
  store i32 0, ptr %i.aa, align 4, !tbaa !165
  %i.wt = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.wu = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.wv = load ptr, ptr %1, align 8, !tbaa !602   ; 2 uses
  %i.ww = ptrtoint ptr %i.wt to i64
  %i.wx = ptrtoint ptr %i.wv to i64
  %i.wy = sub i64 %i.ww, %i.wx
  %i.wz = getelementptr inbounds i8, ptr %i.wv, i64 %i.wy
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.wz, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.wu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #46
  br label %.loopexit

bb.cz:                                            ; preds = %bb.cx
  %i.xa = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.xb = load ptr, ptr %1, align 8, !tbaa !833
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = ptrtoint ptr %i.xb to i64
  %i.xe = sub i64 %i.xc, %i.xd                    ; 2 uses
  %i.xf = add i64 %i.xe, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.xf)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.da

bb.da:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit, %bb.cz
  %.sroa.4571.0 = phi i32 [ 0, %bb.cz ], [ %i.xh, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit ]
  br label %bb.df

bb.db:                                            ; preds = %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit
  %i.xh = add i32 %.sroa.4571.0, 1                ; 2 uses
  %i.xi = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 3 uses
  %i.xj = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 3 uses
  %i.xk = icmp ult ptr %i.xi, %i.xj
  br i1 %i.xk, label %bb.dc, label %bb.dw

bb.dc:                                            ; preds = %bb.db
  %i.xl = load i8, ptr %i.xi, align 1, !tbaa !273
  %i.xm = sext i8 %i.xl to i32
  %i.xn = call i32 @tolower(i32 noundef %i.xm) #51
  %i.xo = call i32 @tolower(i32 noundef 44) #51
  %i.xp = icmp eq i32 %i.xn, %i.xo
  br i1 %i.xp, label %bb.dd, label %bb.dw

bb.dd:                                            ; preds = %bb.dc
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 1 ; 3 uses
  store ptr %i.xq, ptr %i.ao, align 8, !tbaa !830
  %i.xr = icmp ult ptr %i.xq, %i.xj
  br i1 %i.xr, label %.lr.ph.i.i348, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit

.lr.ph.i.i348:                                    ; preds = %bb.dd, %bb.de
  %i.xs = phi ptr [ %i.xw, %bb.de ], [ %i.xq, %bb.dd ] ; 2 uses
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !273
  %i.xu = sext i8 %i.xt to i32
  %i.xv = call i32 @isspace(i32 noundef %i.xu) #51
  %.not.i.i349 = icmp eq i32 %i.xv, 0
  br i1 %.not.i.i349, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i348
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xs, i64 1 ; 3 uses
  store ptr %i.xw, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i350 = icmp eq ptr %i.xw, %i.xj
  br i1 %exitcond.not.i.i350, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit, label %.lr.ph.i.i348, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit: ; preds = %.lr.ph.i.i348, %bb.de, %bb.dd
  br label %bb.da, !llvm.loop !3214

bb.df:                                            ; preds = %bb.da, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit
  %.0161642 = phi i32 [ 0, %bb.da ], [ %i.zx, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #46
  %i.xx = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.xy = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831
  %i.xz = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %i.xx, ptr noundef %i.xy, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i1 noundef zeroext false, i8 noundef signext 46, i32 noundef 5) #46 ; 2 uses
  %i.ya = extractvalue { ptr, i32 } %i.xz, 1
  %.not.i351 = icmp eq i32 %i.ya, 0
  br i1 %.not.i351, label %bb.dm, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.yb = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.366, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.dh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #46
  %i.yc = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.yd = load ptr, ptr %0, align 8, !tbaa !829
  %i.ye = ptrtoint ptr %i.yc to i64
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = sub i64 %i.ye, %i.yf
  store i64 %i.yg, ptr %i.z, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.yb, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  invoke void @__cxa_throw(ptr nonnull %i.yb, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.do unwind label %bb.dj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.dg
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  br label %bb.dk

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.0.i352 = phi i1 [ false, %bb.di ], [ true, %bb.dh ] ; 2 uses
  %i.yi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #46
  %i.yj = load ptr, ptr %16, align 8, !tbaa !235  ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.yl = icmp eq ptr %i.yj, %i.yk
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dj
  call void @_ZdlPv(ptr noundef %i.yj) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  br i1 %.0.i352, label %bb.dk, label %bb.dl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  br i1 %.0.i352, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.yh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.yi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.yi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.yb) #46
  br label %bb.dl

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470, %bb.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i462, %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i439, %bb.hs, %bb.id, %bb.gl, %bb.em, %bb.dl
  %common.resume.op = phi { ptr, i32 } [ %.pn8.i, %bb.dl ], [ %.pn8.i368, %bb.em ], [ %.pn8.i416, %bb.gl ], [ %i.aul, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469 ], [ %.pn8.i448, %bb.id ], [ %i.aqi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i438 ], [ %i.aub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461 ], [ %i.aqi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i439 ], [ %.pn10.i, %bb.hs ], [ %i.aub, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i462 ], [ %.pn10.i458, %bb.iv ], [ %i.aul, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470 ], [ %.pn8.i468, %bb.jb ], [ %.pn186578, %bb.f ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ %.pn587, %bb.bx ], [ %i.vb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %.pn183590, %bb.cq ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ry, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %i.vb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ]
  resume { ptr, i32 } %common.resume.op

bb.dl:                                            ; preds = %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %.pn9.i, %bb.dk ], [ %i.yi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.yi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #46
  br label %common.resume

bb.dm:                                            ; preds = %bb.df
  %i.ym = extractvalue { ptr, i32 } %i.xz, 0      ; 3 uses
  store ptr %i.ym, ptr %i.ao, align 8, !tbaa !830
  %i.yn = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 2 uses
  %i.yo = icmp ult ptr %i.ym, %i.yn
  br i1 %i.yo, label %.lr.ph.i.i353, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit

.lr.ph.i.i353:                                    ; preds = %bb.dm, %bb.dn
  %i.yp = phi ptr [ %i.yt, %bb.dn ], [ %i.ym, %bb.dm ] ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !273
  %i.yr = sext i8 %i.yq to i32
  %i.ys = call i32 @isspace(i32 noundef %i.yr) #51
  %.not.i.i354 = icmp eq i32 %i.ys, 0
  br i1 %.not.i.i354, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i353
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yp, i64 1 ; 3 uses
  store ptr %i.yt, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i355 = icmp eq ptr %i.yt, %i.yn
  br i1 %exitcond.not.i.i355, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit, label %.lr.ph.i.i353, !llvm.loop !108

bb.do:                                            ; preds = %bb.di
  unreachable

_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit: ; preds = %.lr.ph.i.i353, %bb.dn, %bb.dm
  %i.yu = load double, ptr %i.y, align 8, !tbaa !477 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #46
  %i.yv = load ptr, ptr %i.vn, align 8, !tbaa !602 ; 2 uses
  %i.yw = load ptr, ptr %1, align 8, !tbaa !602   ; 5 uses
  %i.yx = ptrtoint ptr %i.yv to i64               ; 2 uses
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = sub i64 %i.yx, %i.yy                    ; 8 uses
  %i.za = load ptr, ptr %i.xg, align 8, !tbaa !835
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = sub i64 %i.zb, %i.yx
  %.not54.i = icmp ult i64 %i.zc, 8
  br i1 %.not54.i, label %bb.dp, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit
  store double %i.yu, ptr %i.yv, align 1
  %i.zd = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  store ptr %i.ze, ptr %i.vn, align 8, !tbaa !834
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit

bb.dp:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit
  %i.zf = and i64 %i.yz, -8
  %i.zg = icmp eq i64 %i.zf, 9223372036854775800
  br i1 %i.zg, label %bb.dq, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.dq:                                            ; preds = %bb.dp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.364) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.dp
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.yz, i64 8)
  %i.zh = add i64 %.sroa.speculated.i.i, %i.yz    ; 2 uses
  %i.zi = icmp ult i64 %i.zh, %i.yz
  %i.zj = call i64 @llvm.umin.i64(i64 %i.zh, i64 9223372036854775807)
  %i.zk = select i1 %i.zi, i64 9223372036854775807, i64 %i.zj ; 3 uses
  %.not.i.i489 = icmp eq i64 %i.zk, 0
  br i1 %.not.i.i489, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.zl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zk) #48
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.dr, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.zm = phi ptr [ %i.zl, %bb.dr ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 7 uses
  %i.zn = icmp sgt i64 %i.yz, 1
  br i1 %i.zn, label %bb.ds, label %bb.dt, !prof !420

bb.ds:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.zm, ptr align 1 %i.yw, i64 %i.yz, i1 false)
  br label %bb.du

bb.dt:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.zo = icmp eq i64 %i.yz, 1
  br i1 %i.zo, label %.thread, label %bb.du

.thread:                                          ; preds = %bb.dt
  %i.zp = load i8, ptr %i.yw, align 1, !tbaa !273
  store i8 %i.zp, ptr %i.zm, align 1, !tbaa !273
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 1
  store double %i.yu, ptr %i.zq, align 1
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zm, i64 9
  br label %bb.dv

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.zs = getelementptr inbounds i8, ptr %i.zm, i64 %i.yz ; 2 uses
  store double %i.yu, ptr %i.zs, align 1
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.yw, null
  br i1 %.not.i59.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.dv

bb.dv:                                            ; preds = %.thread, %bb.du
  %i.zu = phi ptr [ %i.zr, %.thread ], [ %i.zt, %bb.du ]
  call void @_ZdlPv(ptr noundef nonnull %i.yw) #47
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.dv, %bb.du
  %i.zv = phi ptr [ %i.zu, %bb.dv ], [ %i.zt, %bb.du ]
  store ptr %i.zm, ptr %1, align 8, !tbaa !833
  store ptr %i.zv, ptr %i.vn, align 8, !tbaa !834
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zk
  store ptr %i.zw, ptr %i.xg, align 8, !tbaa !835
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit

_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i
  %i.zx = add nuw nsw i32 %.0161642, 1            ; 2 uses
  %exitcond675.not = icmp eq i32 %i.zx, %i.vh
  br i1 %exitcond675.not, label %bb.db, label %bb.df, !llvm.loop !3215

bb.dw:                                            ; preds = %bb.db, %bb.dc
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 41)
  %.val250 = load ptr, ptr %1, align 8, !tbaa !833
  %.val251 = load ptr, ptr %i.vn, align 8, !tbaa !834
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE(ptr %.val250, ptr %.val251, i64 %i.xe, i32 %i.xh)
  br label %.loopexit

bb.dx:                                            ; preds = %bb.cr
  br i1 %.not11.i338, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #46
  store i32 0, ptr %i.x, align 4, !tbaa !165
  %i.zy = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.zz = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aaa = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.aab = ptrtoint ptr %i.zy to i64
  %i.aac = ptrtoint ptr %i.aaa to i64
  %i.aad = sub i64 %i.aab, %i.aac
  %i.aae = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aad
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aae, ptr noundef nonnull %i.x, ptr noundef nonnull %i.zz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #46
  br label %.loopexit

bb.dz:                                            ; preds = %bb.dx
  %i.aaf = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.aag = load ptr, ptr %1, align 8, !tbaa !833
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = ptrtoint ptr %i.aag to i64
  %i.aaj = sub i64 %i.aah, %i.aai                 ; 2 uses
  %i.aak = add i64 %i.aaj, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aak)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit380, %bb.dz
  %.sroa.4567.0 = phi i32 [ 0, %bb.dz ], [ %i.adj, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit380 ]
  %i.aam = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.aan = load ptr, ptr %1, align 8, !tbaa !833
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = sub i64 %i.aao, %i.aap                 ; 2 uses
  %i.aar = add i64 %i.aaq, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aar)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit364, %bb.ea
  %.sroa.4563.0 = phi i32 [ 0, %bb.ea ], [ %i.aas, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit364 ]
  br label %bb.eg

bb.ec:                                            ; preds = %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit504
  %i.aas = add i32 %.sroa.4563.0, 1               ; 2 uses
  %i.aat = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 3 uses
  %i.aau = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 3 uses
  %i.aav = icmp ult ptr %i.aat, %i.aau
  br i1 %i.aav, label %bb.ed, label %bb.ex

bb.ed:                                            ; preds = %bb.ec
  %i.aaw = load i8, ptr %i.aat, align 1, !tbaa !273
  %i.aax = sext i8 %i.aaw to i32
  %i.aay = call i32 @tolower(i32 noundef %i.aax) #51
  %i.aaz = call i32 @tolower(i32 noundef 44) #51
  %i.aba = icmp eq i32 %i.aay, %i.aaz
  br i1 %i.aba, label %bb.ee, label %bb.ex

bb.ee:                                            ; preds = %bb.ed
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aat, i64 1 ; 3 uses
  store ptr %i.abb, ptr %i.ao, align 8, !tbaa !830
  %i.abc = icmp ult ptr %i.abb, %i.aau
  br i1 %i.abc, label %.lr.ph.i.i361, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit364

.lr.ph.i.i361:                                    ; preds = %bb.ee, %bb.ef
  %i.abd = phi ptr [ %i.abh, %bb.ef ], [ %i.abb, %bb.ee ] ; 2 uses
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !273
  %i.abf = sext i8 %i.abe to i32
  %i.abg = call i32 @isspace(i32 noundef %i.abf) #51
  %.not.i.i362 = icmp eq i32 %i.abg, 0
  br i1 %.not.i.i362, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit364, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i361
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 1 ; 3 uses
  store ptr %i.abh, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i363 = icmp eq ptr %i.abh, %i.aau
  br i1 %exitcond.not.i.i363, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit364, label %.lr.ph.i.i361, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit364: ; preds = %.lr.ph.i.i361, %bb.ef, %bb.ee
  br label %bb.eb, !llvm.loop !3216

bb.eg:                                            ; preds = %bb.eb, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit504
  %.0160641 = phi i32 [ 0, %bb.eb ], [ %i.adi, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit504 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #46
  %i.abi = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.abj = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831
  %i.abk = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %i.abi, ptr noundef %i.abj, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i1 noundef zeroext false, i8 noundef signext 46, i32 noundef 5) #46 ; 2 uses
  %i.abl = extractvalue { ptr, i32 } %i.abk, 1
  %.not.i365 = icmp eq i32 %i.abl, 0
  br i1 %.not.i365, label %bb.en, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.abm = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.366, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ei unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i366

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #46
  %i.abn = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.abo = load ptr, ptr %0, align 8, !tbaa !829
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = sub i64 %i.abp, %i.abq
  store i64 %i.abr, ptr %i.w, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.abm, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  invoke void @__cxa_throw(ptr nonnull %i.abm, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ep unwind label %bb.ek

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i366: ; preds = %bb.eh
  %i.abs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %bb.el

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.0.i369 = phi i1 [ false, %bb.ej ], [ true, %bb.ei ] ; 2 uses
  %i.abt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #46
  %i.abu = load ptr, ptr %14, align 8, !tbaa !235 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.abw = icmp eq ptr %i.abu, %i.abv
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370: ; preds = %bb.ek
  call void @_ZdlPv(ptr noundef %i.abu) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br i1 %.0.i369, label %bb.el, label %bb.em

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i371: ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br i1 %.0.i369, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i366
  %.pn9.i367 = phi { ptr, i32 } [ %i.abs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i366 ], [ %i.abt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i371 ], [ %i.abt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370 ]
  call void @__cxa_free_exception(ptr %i.abm) #46
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370
  %.pn8.i368 = phi { ptr, i32 } [ %.pn9.i367, %bb.el ], [ %i.abt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i371 ], [ %i.abt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #46
  br label %common.resume

bb.en:                                            ; preds = %bb.eg
  %i.abx = extractvalue { ptr, i32 } %i.abk, 0    ; 3 uses
  store ptr %i.abx, ptr %i.ao, align 8, !tbaa !830
  %i.aby = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 2 uses
  %i.abz = icmp ult ptr %i.abx, %i.aby
  br i1 %i.abz, label %.lr.ph.i.i372, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit375

.lr.ph.i.i372:                                    ; preds = %bb.en, %bb.eo
  %i.aca = phi ptr [ %i.ace, %bb.eo ], [ %i.abx, %bb.en ] ; 2 uses
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !273
  %i.acc = sext i8 %i.acb to i32
  %i.acd = call i32 @isspace(i32 noundef %i.acc) #51
  %.not.i.i373 = icmp eq i32 %i.acd, 0
  br i1 %.not.i.i373, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit375, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i372
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aca, i64 1 ; 3 uses
  store ptr %i.ace, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i374 = icmp eq ptr %i.ace, %i.aby
  br i1 %exitcond.not.i.i374, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit375, label %.lr.ph.i.i372, !llvm.loop !108

bb.ep:                                            ; preds = %bb.ej
  unreachable

_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit375: ; preds = %.lr.ph.i.i372, %bb.eo, %bb.en
  %i.acf = load double, ptr %i.v, align 8, !tbaa !477 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #46
  %i.acg = load ptr, ptr %i.vn, align 8, !tbaa !602 ; 2 uses
  %i.ach = load ptr, ptr %1, align 8, !tbaa !602  ; 5 uses
  %i.aci = ptrtoint ptr %i.acg to i64             ; 2 uses
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = sub i64 %i.aci, %i.acj                 ; 8 uses
  %i.acl = load ptr, ptr %i.aal, align 8, !tbaa !835
  %i.acm = ptrtoint ptr %i.acl to i64
  %i.acn = sub i64 %i.acm, %i.aci
  %.not54.i491 = icmp ult i64 %i.acn, 8
  br i1 %.not54.i491, label %bb.eq, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i493

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i493: ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit375
  store double %i.acf, ptr %i.acg, align 1
  %i.aco = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store ptr %i.acp, ptr %i.vn, align 8, !tbaa !834
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit504

bb.eq:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit375
  %i.acq = and i64 %i.ack, -8
  %i.acr = icmp eq i64 %i.acq, 9223372036854775800
  br i1 %i.acr, label %bb.er, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i498

bb.er:                                            ; preds = %bb.eq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.364) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i498: ; preds = %bb.eq
  %.sroa.speculated.i.i499 = call i64 @llvm.umax.i64(i64 %i.ack, i64 8)
  %i.acs = add i64 %.sroa.speculated.i.i499, %i.ack ; 2 uses
  %i.act = icmp ult i64 %i.acs, %i.ack
  %i.acu = call i64 @llvm.umin.i64(i64 %i.acs, i64 9223372036854775807)
  %i.acv = select i1 %i.act, i64 9223372036854775807, i64 %i.acu ; 3 uses
  %.not.i.i500 = icmp eq i64 %i.acv, 0
  br i1 %.not.i.i500, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i501, label %bb.es

bb.es:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i498
  %i.acw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acv) #48
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i501

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i501: ; preds = %bb.es, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i498
  %i.acx = phi ptr [ %i.acw, %bb.es ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i498 ] ; 7 uses
  %i.acy = icmp sgt i64 %i.ack, 1
  br i1 %i.acy, label %bb.et, label %bb.eu, !prof !420

bb.et:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i501
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.acx, ptr align 1 %i.ach, i64 %i.ack, i1 false)
  br label %bb.ev

bb.eu:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i501
  %i.acz = icmp eq i64 %i.ack, 1
  br i1 %i.acz, label %.thread594, label %bb.ev

.thread594:                                       ; preds = %bb.eu
  %i.ada = load i8, ptr %i.ach, align 1, !tbaa !273
  store i8 %i.ada, ptr %i.acx, align 1, !tbaa !273
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acx, i64 1
  store double %i.acf, ptr %i.adb, align 1
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acx, i64 9
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.add = getelementptr inbounds i8, ptr %i.acx, i64 %i.ack ; 2 uses
  store double %i.acf, ptr %i.add, align 1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8 ; 2 uses
  %.not.i59.i502 = icmp eq ptr %i.ach, null
  br i1 %.not.i59.i502, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i503, label %bb.ew

bb.ew:                                            ; preds = %.thread594, %bb.ev
  %i.adf = phi ptr [ %i.adc, %.thread594 ], [ %i.ade, %bb.ev ]
  call void @_ZdlPv(ptr noundef nonnull %i.ach) #47
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i503

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i503: ; preds = %bb.ew, %bb.ev
  %i.adg = phi ptr [ %i.adf, %bb.ew ], [ %i.ade, %bb.ev ]
  store ptr %i.acx, ptr %1, align 8, !tbaa !833
  store ptr %i.adg, ptr %i.vn, align 8, !tbaa !834
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.acv
  store ptr %i.adh, ptr %i.aal, align 8, !tbaa !835
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit504

_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit504: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i493, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i503
  %i.adi = add nuw nsw i32 %.0160641, 1           ; 2 uses
  %exitcond674.not = icmp eq i32 %i.adi, %i.vh
  br i1 %exitcond674.not, label %bb.ec, label %bb.eg, !llvm.loop !3217

bb.ex:                                            ; preds = %bb.ec, %bb.ed
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 41)
  %.val246 = load ptr, ptr %1, align 8, !tbaa !833
  %.val247 = load ptr, ptr %i.vn, align 8, !tbaa !834
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE(ptr %.val246, ptr %.val247, i64 %i.aaq, i32 %i.aas)
  %i.adj = add i32 %.sroa.4567.0, 1               ; 2 uses
  %i.adk = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 3 uses
  %i.adl = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 3 uses
  %i.adm = icmp ult ptr %i.adk, %i.adl
  br i1 %i.adm, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  %i.adn = load i8, ptr %i.adk, align 1, !tbaa !273
  %i.ado = sext i8 %i.adn to i32
  %i.adp = call i32 @tolower(i32 noundef %i.ado) #51
  %i.adq = call i32 @tolower(i32 noundef 44) #51
  %i.adr = icmp eq i32 %i.adp, %i.adq
  br i1 %i.adr, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adk, i64 1 ; 3 uses
  store ptr %i.ads, ptr %i.ao, align 8, !tbaa !830
  %i.adt = icmp ult ptr %i.ads, %i.adl
  br i1 %i.adt, label %.lr.ph.i.i377, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit380

.lr.ph.i.i377:                                    ; preds = %bb.ez, %bb.fa
  %i.adu = phi ptr [ %i.ady, %bb.fa ], [ %i.ads, %bb.ez ] ; 2 uses
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !273
  %i.adw = sext i8 %i.adv to i32
  %i.adx = call i32 @isspace(i32 noundef %i.adw) #51
  %.not.i.i378 = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i378, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit380, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i377
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adu, i64 1 ; 3 uses
  store ptr %i.ady, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i379 = icmp eq ptr %i.ady, %i.adl
  br i1 %exitcond.not.i.i379, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit380, label %.lr.ph.i.i377, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit380: ; preds = %.lr.ph.i.i377, %bb.fa, %bb.ez
  br label %bb.ea, !llvm.loop !3218

bb.fb:                                            ; preds = %bb.ex, %bb.ey
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 41)
  %.val242 = load ptr, ptr %1, align 8, !tbaa !833
  %.val243 = load ptr, ptr %i.vn, align 8, !tbaa !834
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE(ptr %.val242, ptr %.val243, i64 %i.aaj, i32 %i.adj)
  br label %.loopexit

bb.fc:                                            ; preds = %bb.cr
  br i1 %.not11.i338, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #46
  store i32 0, ptr %i.u, align 4, !tbaa !165
  %i.adz = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.aea = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aeb = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.aec = ptrtoint ptr %i.adz to i64
  %i.aed = ptrtoint ptr %i.aeb to i64
  %i.aee = sub i64 %i.aec, %i.aed
  %i.aef = getelementptr inbounds i8, ptr %i.aeb, i64 %i.aee
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aef, ptr noundef nonnull %i.u, ptr noundef nonnull %i.aea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #46
  br label %.loopexit

bb.fe:                                            ; preds = %bb.fc
  %i.aeg = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.aeh = load ptr, ptr %1, align 8, !tbaa !833
  %i.aei = ptrtoint ptr %i.aeg to i64
  %i.aej = ptrtoint ptr %i.aeh to i64
  %i.aek = sub i64 %i.aei, %i.aej                 ; 2 uses
  %i.ael = add i64 %i.aek, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ael)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %i.aem = or disjoint i32 %i.vj, 1
  %i.aen = add nuw nsw i32 %i.aem, %i.vl
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.aep = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre690 = load ptr, ptr %i.ao, align 8, !tbaa !830
  %.pre691 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit403, %bb.fe
  %i.aes = phi ptr [ %.pre691, %bb.fe ], [ %i.aia, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit403 ] ; 3 uses
  %i.aet = phi ptr [ %.pre690, %bb.fe ], [ %i.aio, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit403 ] ; 3 uses
  %.sroa.4559.0 = phi i32 [ 0, %bb.fe ], [ %i.ahy, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit403 ]
  %i.aeu = icmp ult ptr %i.aet, %i.aes
  br i1 %i.aeu, label %bb.fg, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit387

bb.fg:                                            ; preds = %bb.ff
  %i.aev = load i8, ptr %i.aet, align 1, !tbaa !273
  %i.aew = sext i8 %i.aev to i32
  %i.aex = call i32 @tolower(i32 noundef %i.aew) #51
  %i.aey = call i32 @tolower(i32 noundef 40) #51
  %i.aez = icmp eq i32 %i.aex, %i.aey
  br i1 %i.aez, label %bb.fh, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit387

bb.fh:                                            ; preds = %bb.fg
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aet, i64 1 ; 3 uses
  store ptr %i.afa, ptr %i.ao, align 8, !tbaa !830
  %i.afb = icmp ult ptr %i.afa, %i.aes
  br i1 %i.afb, label %.lr.ph.i.i384, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit387

.lr.ph.i.i384:                                    ; preds = %bb.fh, %bb.fi
  %i.afc = phi ptr [ %i.afg, %bb.fi ], [ %i.afa, %bb.fh ] ; 2 uses
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !273
  %i.afe = sext i8 %i.afd to i32
  %i.aff = call i32 @isspace(i32 noundef %i.afe) #51
  %.not.i.i385 = icmp eq i32 %i.aff, 0
  br i1 %.not.i.i385, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit387, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i.i384
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afc, i64 1 ; 3 uses
  store ptr %i.afg, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i386 = icmp eq ptr %i.afg, %i.aes
  br i1 %exitcond.not.i.i386, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit387, label %.lr.ph.i.i384, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit387: ; preds = %.lr.ph.i.i384, %bb.fi, %bb.ff, %bb.fg, %bb.fh
  %.0.i383 = phi i1 [ false, %bb.ff ], [ false, %bb.fg ], [ true, %bb.fh ], [ true, %bb.fi ], [ true, %.lr.ph.i.i384 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #46
  store i8 1, ptr %i.t, align 1, !tbaa !273
  %i.afh = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.afi = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.afj = ptrtoint ptr %i.afh to i64
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = sub i64 %i.afj, %i.afk
  %i.afm = getelementptr inbounds i8, ptr %i.afi, i64 %i.afl
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.afm, ptr noundef nonnull %i.t, ptr noundef nonnull %i.aeo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #46
  store i32 %i.aen, ptr %i.s, align 4, !tbaa !165
  %i.afn = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.afo = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.afp = ptrtoint ptr %i.afn to i64
  %i.afq = ptrtoint ptr %i.afo to i64
  %i.afr = sub i64 %i.afp, %i.afq
  %i.afs = getelementptr inbounds i8, ptr %i.afo, i64 %i.afr
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.afs, ptr noundef nonnull %i.s, ptr noundef nonnull %i.aep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #46
  %i.aft = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 8 uses
  %.pre.i389 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 7 uses
  %i.afu = icmp ult ptr %i.aft, %.pre.i389
  br i1 %i.afu, label %bb.fj, label %.split

bb.fj:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit387
  %i.afv = load i8, ptr %i.aft, align 1, !tbaa !273
  %i.afw = sext i8 %i.afv to i32
  %i.afx = call i32 @tolower(i32 noundef %i.afw) #51
  %i.afy = call i32 @tolower(i32 noundef 69) #51
  %i.afz = icmp eq i32 %i.afx, %i.afy
  br i1 %i.afz, label %.lr.ph.i390.1, label %.split

.lr.ph.i390.1:                                    ; preds = %bb.fj
  %i.aga = getelementptr inbounds nuw i8, ptr %i.aft, i64 1 ; 3 uses
  store ptr %i.aga, ptr %i.ao, align 8, !tbaa !830
  %i.agb = icmp ult ptr %i.aga, %.pre.i389
  br i1 %i.agb, label %bb.fk, label %.split

bb.fk:                                            ; preds = %.lr.ph.i390.1
  %i.agc = load i8, ptr %i.aga, align 1, !tbaa !273
  %i.agd = sext i8 %i.agc to i32
  %i.age = call i32 @tolower(i32 noundef %i.agd) #51
  %i.agf = call i32 @tolower(i32 noundef 77) #51
  %i.agg = icmp eq i32 %i.age, %i.agf
  br i1 %i.agg, label %.lr.ph.i390.2, label %.split

.lr.ph.i390.2:                                    ; preds = %bb.fk
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aft, i64 2 ; 3 uses
  store ptr %i.agh, ptr %i.ao, align 8, !tbaa !830
  %i.agi = icmp ult ptr %i.agh, %.pre.i389
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.air = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.ais = ptrtoint ptr %i.aip to i64
  %i.ait = ptrtoint ptr %i.air to i64
  %i.aiu = sub i64 %i.ais, %i.ait
  %i.aiv = getelementptr inbounds i8, ptr %i.air, i64 %i.aiu
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aiv, ptr noundef nonnull %i.p, ptr noundef nonnull %i.aiq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #46
  br label %.loopexit

bb.fy:                                            ; preds = %bb.fw
  %i.aiw = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.aix = load ptr, ptr %1, align 8, !tbaa !833
  %i.aiy = ptrtoint ptr %i.aiw to i64
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = sub i64 %i.aiy, %i.aiz                 ; 2 uses
  %i.ajb = add i64 %i.aja, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ajb)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %i.ajc = or disjoint i32 %i.vj, 2
  %i.ajd = add nuw nsw i32 %i.ajc, %i.vl
  %i.aje = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ajg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.fz

bb.fz:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit428, %bb.fy
  %.sroa.4554.0 = phi i32 [ 0, %bb.fy ], [ %i.amq, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit428 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #46
  store i8 1, ptr %i.o, align 1, !tbaa !273
  %i.ajh = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.aji = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.ajj = ptrtoint ptr %i.ajh to i64
  %i.ajk = ptrtoint ptr %i.aji to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  %i.ajm = getelementptr inbounds i8, ptr %i.aji, i64 %i.ajl
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ajm, ptr noundef nonnull %i.o, ptr noundef nonnull %i.aje)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #46
  store i32 %i.ajd, ptr %i.n, align 4, !tbaa !165
  %i.ajn = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.ajo = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.ajp = ptrtoint ptr %i.ajn to i64
  %i.ajq = ptrtoint ptr %i.ajo to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq
  %i.ajs = getelementptr inbounds i8, ptr %i.ajo, i64 %i.ajr
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ajs, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ajf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #46
  %i.ajt = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.aju = load ptr, ptr %1, align 8, !tbaa !833
  %i.ajv = ptrtoint ptr %i.ajt to i64
  %i.ajw = ptrtoint ptr %i.aju to i64
  %i.ajx = sub i64 %i.ajv, %i.ajw                 ; 2 uses
  %i.ajy = add i64 %i.ajx, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ajy)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  br label %bb.ga

bb.ga:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit412, %bb.fz
  %.sroa.4549.0 = phi i32 [ 0, %bb.fz ], [ %i.ajz, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit412 ]
  br label %bb.gf

bb.gb:                                            ; preds = %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit519
  %i.ajz = add i32 %.sroa.4549.0, 1               ; 2 uses
  %i.aka = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 3 uses
  %i.akb = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 3 uses
  %i.akc = icmp ult ptr %i.aka, %i.akb
  br i1 %i.akc, label %bb.gc, label %bb.gw

bb.gc:                                            ; preds = %bb.gb
  %i.akd = load i8, ptr %i.aka, align 1, !tbaa !273
  %i.ake = sext i8 %i.akd to i32
  %i.akf = call i32 @tolower(i32 noundef %i.ake) #51
  %i.akg = call i32 @tolower(i32 noundef 44) #51
  %i.akh = icmp eq i32 %i.akf, %i.akg
  br i1 %i.akh, label %bb.gd, label %bb.gw

bb.gd:                                            ; preds = %bb.gc
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aka, i64 1 ; 3 uses
  store ptr %i.aki, ptr %i.ao, align 8, !tbaa !830
  %i.akj = icmp ult ptr %i.aki, %i.akb
  br i1 %i.akj, label %.lr.ph.i.i409, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit412

.lr.ph.i.i409:                                    ; preds = %bb.gd, %bb.ge
  %i.akk = phi ptr [ %i.ako, %bb.ge ], [ %i.aki, %bb.gd ] ; 2 uses
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !273
  %i.akm = sext i8 %i.akl to i32
  %i.akn = call i32 @isspace(i32 noundef %i.akm) #51
  %.not.i.i410 = icmp eq i32 %i.akn, 0
  br i1 %.not.i.i410, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit412, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph.i.i409
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akk, i64 1 ; 3 uses
  store ptr %i.ako, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i411 = icmp eq ptr %i.ako, %i.akb
  br i1 %exitcond.not.i.i411, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit412, label %.lr.ph.i.i409, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit412: ; preds = %.lr.ph.i.i409, %bb.ge, %bb.gd
  br label %bb.ga, !llvm.loop !3222

bb.gf:                                            ; preds = %bb.ga, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit519
  %.0157638 = phi i32 [ 0, %bb.ga ], [ %i.amp, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit519 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #46
  %i.akp = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.akq = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831
  %i.akr = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %i.akp, ptr noundef %i.akq, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i1 noundef zeroext false, i8 noundef signext 46, i32 noundef 5) #46 ; 2 uses
  %i.aks = extractvalue { ptr, i32 } %i.akr, 1
  %.not.i413 = icmp eq i32 %i.aks, 0
  br i1 %.not.i413, label %bb.gm, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.akt = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.366, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.gh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i414

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #46
  %i.aku = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.akv = load ptr, ptr %0, align 8, !tbaa !829
  %i.akw = ptrtoint ptr %i.aku to i64
  %i.akx = ptrtoint ptr %i.akv to i64
  %i.aky = sub i64 %i.akw, %i.akx
  store i64 %i.aky, ptr %i.m, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.akt, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.gi unwind label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  invoke void @__cxa_throw(ptr nonnull %i.akt, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.go unwind label %bb.gj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i414: ; preds = %bb.gg
  %i.akz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.0.i417 = phi i1 [ false, %bb.gi ], [ true, %bb.gh ] ; 2 uses
  %i.ala = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #46
  %i.alb = load ptr, ptr %12, align 8, !tbaa !235 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ald = icmp eq ptr %i.alb, %i.alc
  br i1 %i.ald, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i418: ; preds = %bb.gj
  call void @_ZdlPv(ptr noundef %i.alb) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.0.i417, label %bb.gk, label %bb.gl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i419: ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.0.i417, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i414
  %.pn9.i415 = phi { ptr, i32 } [ %i.akz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i414 ], [ %i.ala, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i419 ], [ %i.ala, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i418 ]
  call void @__cxa_free_exception(ptr %i.akt) #46
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i418
  %.pn8.i416 = phi { ptr, i32 } [ %.pn9.i415, %bb.gk ], [ %i.ala, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i419 ], [ %i.ala, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i418 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #46
  br label %common.resume

bb.gm:                                            ; preds = %bb.gf
  %i.ale = extractvalue { ptr, i32 } %i.akr, 0    ; 3 uses
  store ptr %i.ale, ptr %i.ao, align 8, !tbaa !830
  %i.alf = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 2 uses
  %i.alg = icmp ult ptr %i.ale, %i.alf
  br i1 %i.alg, label %.lr.ph.i.i420, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit423

.lr.ph.i.i420:                                    ; preds = %bb.gm, %bb.gn
  %i.alh = phi ptr [ %i.all, %bb.gn ], [ %i.ale, %bb.gm ] ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !273
  %i.alj = sext i8 %i.ali to i32
  %i.alk = call i32 @isspace(i32 noundef %i.alj) #51
  %.not.i.i421 = icmp eq i32 %i.alk, 0
  br i1 %.not.i.i421, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit423, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph.i.i420
  %i.all = getelementptr inbounds nuw i8, ptr %i.alh, i64 1 ; 3 uses
  store ptr %i.all, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i422 = icmp eq ptr %i.all, %i.alf
  br i1 %exitcond.not.i.i422, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit423, label %.lr.ph.i.i420, !llvm.loop !108

bb.go:                                            ; preds = %bb.gi
  unreachable

_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit423: ; preds = %.lr.ph.i.i420, %bb.gn, %bb.gm
  %i.alm = load double, ptr %i.l, align 8, !tbaa !477 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #46
  %i.aln = load ptr, ptr %i.vn, align 8, !tbaa !602 ; 2 uses
  %i.alo = load ptr, ptr %1, align 8, !tbaa !602  ; 5 uses
  %i.alp = ptrtoint ptr %i.aln to i64             ; 2 uses
  %i.alq = ptrtoint ptr %i.alo to i64
  %i.alr = sub i64 %i.alp, %i.alq                 ; 8 uses
  %i.als = load ptr, ptr %i.ajg, align 8, !tbaa !835
  %i.alt = ptrtoint ptr %i.als to i64
  %i.alu = sub i64 %i.alt, %i.alp
  %.not54.i506 = icmp ult i64 %i.alu, 8
  br i1 %.not54.i506, label %bb.gp, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i508

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i508: ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit423
  store double %i.alm, ptr %i.aln, align 1
  %i.alv = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  store ptr %i.alw, ptr %i.vn, align 8, !tbaa !834
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit519

bb.gp:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit423
  %i.alx = and i64 %i.alr, -8
  %i.aly = icmp eq i64 %i.alx, 9223372036854775800
  br i1 %i.aly, label %bb.gq, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i513

bb.gq:                                            ; preds = %bb.gp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.364) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i513: ; preds = %bb.gp
  %.sroa.speculated.i.i514 = call i64 @llvm.umax.i64(i64 %i.alr, i64 8)
  %i.alz = add i64 %.sroa.speculated.i.i514, %i.alr ; 2 uses
  %i.ama = icmp ult i64 %i.alz, %i.alr
  %i.amb = call i64 @llvm.umin.i64(i64 %i.alz, i64 9223372036854775807)
  %i.amc = select i1 %i.ama, i64 9223372036854775807, i64 %i.amb ; 3 uses
  %.not.i.i515 = icmp eq i64 %i.amc, 0
  br i1 %.not.i.i515, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i516, label %bb.gr

bb.gr:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i513
  %i.amd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amc) #48
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i516

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i516: ; preds = %bb.gr, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i513
  %i.ame = phi ptr [ %i.amd, %bb.gr ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i513 ] ; 7 uses
  %i.amf = icmp sgt i64 %i.alr, 1
  br i1 %i.amf, label %bb.gs, label %bb.gt, !prof !420

bb.gs:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i516
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ame, ptr align 1 %i.alo, i64 %i.alr, i1 false)
  br label %bb.gu

bb.gt:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i516
  %i.amg = icmp eq i64 %i.alr, 1
  br i1 %i.amg, label %.thread599, label %bb.gu

.thread599:                                       ; preds = %bb.gt
  %i.amh = load i8, ptr %i.alo, align 1, !tbaa !273
  store i8 %i.amh, ptr %i.ame, align 1, !tbaa !273
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ame, i64 1
  store double %i.alm, ptr %i.ami, align 1
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ame, i64 9
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.amk = getelementptr inbounds i8, ptr %i.ame, i64 %i.alr ; 2 uses
  store double %i.alm, ptr %i.amk, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8 ; 2 uses
  %.not.i59.i517 = icmp eq ptr %i.alo, null
  br i1 %.not.i59.i517, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i518, label %bb.gv

bb.gv:                                            ; preds = %.thread599, %bb.gu
  %i.amm = phi ptr [ %i.amj, %.thread599 ], [ %i.aml, %bb.gu ]
  call void @_ZdlPv(ptr noundef nonnull %i.alo) #47
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i518

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i518: ; preds = %bb.gv, %bb.gu
  %i.amn = phi ptr [ %i.amm, %bb.gv ], [ %i.aml, %bb.gu ]
  store ptr %i.ame, ptr %1, align 8, !tbaa !833
  store ptr %i.amn, ptr %i.vn, align 8, !tbaa !834
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ame, i64 %i.amc
  store ptr %i.amo, ptr %i.ajg, align 8, !tbaa !835
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit519

_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit519: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i508, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i518
  %i.amp = add nuw nsw i32 %.0157638, 1           ; 2 uses
  %exitcond670.not = icmp eq i32 %i.amp, %i.vh
  br i1 %exitcond670.not, label %bb.gb, label %bb.gf, !llvm.loop !3223

bb.gw:                                            ; preds = %bb.gb, %bb.gc
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 41)
  %.val234 = load ptr, ptr %1, align 8, !tbaa !833
  %.val235 = load ptr, ptr %i.vn, align 8, !tbaa !834
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE(ptr %.val234, ptr %.val235, i64 %i.ajx, i32 %i.ajz)
  %i.amq = add i32 %.sroa.4554.0, 1               ; 2 uses
  %i.amr = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 3 uses
  %i.ams = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 3 uses
  %i.amt = icmp ult ptr %i.amr, %i.ams
  br i1 %i.amt, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  %i.amu = load i8, ptr %i.amr, align 1, !tbaa !273
  %i.amv = sext i8 %i.amu to i32
  %i.amw = call i32 @tolower(i32 noundef %i.amv) #51
  %i.amx = call i32 @tolower(i32 noundef 44) #51
  %i.amy = icmp eq i32 %i.amw, %i.amx
  br i1 %i.amy, label %bb.gy, label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amr, i64 1 ; 3 uses
  store ptr %i.amz, ptr %i.ao, align 8, !tbaa !830
  %i.ana = icmp ult ptr %i.amz, %i.ams
  br i1 %i.ana, label %.lr.ph.i.i425, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit428

.lr.ph.i.i425:                                    ; preds = %bb.gy, %bb.gz
  %i.anb = phi ptr [ %i.anf, %bb.gz ], [ %i.amz, %bb.gy ] ; 2 uses
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !273
  %i.and = sext i8 %i.anc to i32
  %i.ane = call i32 @isspace(i32 noundef %i.and) #51
  %.not.i.i426 = icmp eq i32 %i.ane, 0
  br i1 %.not.i.i426, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit428, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.i.i425
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anb, i64 1 ; 3 uses
  store ptr %i.anf, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i427 = icmp eq ptr %i.anf, %i.ams
  br i1 %exitcond.not.i.i427, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit428, label %.lr.ph.i.i425, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit428: ; preds = %.lr.ph.i.i425, %bb.gz, %bb.gy
  br label %bb.fz, !llvm.loop !3224

bb.ha:                                            ; preds = %bb.gw, %bb.gx
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 41)
  %.val230 = load ptr, ptr %1, align 8, !tbaa !833
  %.val231 = load ptr, ptr %i.vn, align 8, !tbaa !834
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE(ptr %.val230, ptr %.val231, i64 %i.aja, i32 %i.amq)
  br label %.loopexit

bb.hb:                                            ; preds = %bb.cr
  br i1 %.not11.i338, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #46
  store i32 0, ptr %i.k, align 4, !tbaa !165
  %i.ang = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.anh = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ani = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.anj = ptrtoint ptr %i.ang to i64
  %i.ank = ptrtoint ptr %i.ani to i64
  %i.anl = sub i64 %i.anj, %i.ank
  %i.anm = getelementptr inbounds i8, ptr %i.ani, i64 %i.anl
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.anm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.anh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #46
  br label %.loopexit

bb.hd:                                            ; preds = %bb.hb
  %i.ann = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.ano = load ptr, ptr %1, align 8, !tbaa !833
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = sub i64 %i.anp, %i.anq                 ; 2 uses
  %i.ans = add i64 %i.anr, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ans)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %i.ant = or disjoint i32 %i.vj, 3
  %i.anu = add nuw nsw i32 %i.ant, %i.vl
  %i.anv = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.anw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.he

bb.he:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit480, %bb.hd
  %.sroa.4545.0 = phi i32 [ 0, %bb.hd ], [ %i.avg, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit480 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #46
  store i8 1, ptr %i.j, align 1, !tbaa !273
  %i.any = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.anz = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.aoa = ptrtoint ptr %i.any to i64
  %i.aob = ptrtoint ptr %i.anz to i64
  %i.aoc = sub i64 %i.aoa, %i.aob
  %i.aod = getelementptr inbounds i8, ptr %i.anz, i64 %i.aoc
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aod, ptr noundef nonnull %i.j, ptr noundef nonnull %i.anv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #46
  store i32 %i.anu, ptr %i.i, align 4, !tbaa !165
  %i.aoe = load ptr, ptr %i.vn, align 8, !tbaa !602
  %i.aof = load ptr, ptr %1, align 8, !tbaa !602  ; 2 uses
  %i.aog = ptrtoint ptr %i.aoe to i64
  %i.aoh = ptrtoint ptr %i.aof to i64
  %i.aoi = sub i64 %i.aog, %i.aoh
  %i.aoj = getelementptr inbounds i8, ptr %i.aof, i64 %i.aoi
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aoj, ptr noundef nonnull %i.i, ptr noundef nonnull %i.anw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #46
  %i.aok = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.aol = load ptr, ptr %1, align 8, !tbaa !833
  %i.aom = ptrtoint ptr %i.aok to i64
  %i.aon = ptrtoint ptr %i.aol to i64
  %i.aoo = sub i64 %i.aom, %i.aon                 ; 2 uses
  %i.aop = add i64 %i.aoo, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aop)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  br label %bb.hf

bb.hf:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit475, %bb.he
  %.sroa.4541.0 = phi i32 [ 0, %bb.he ], [ %i.auq, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit475 ]
  %i.aoq = load ptr, ptr %i.vn, align 8, !tbaa !834 ; 5 uses
  %i.aor = load ptr, ptr %1, align 8, !tbaa !833  ; 6 uses
  %i.aos = ptrtoint ptr %i.aoq to i64             ; 2 uses
  %i.aot = ptrtoint ptr %i.aor to i64
  %i.aou = sub i64 %i.aos, %i.aot                 ; 9 uses
  %i.aov = add i64 %i.aou, 4                      ; 3 uses
  %i.aow = icmp ult i64 %i.aou, -4
  br i1 %i.aow, label %bb.hg, label %bb.hl

bb.hg:                                            ; preds = %bb.hf
  %i.aox = load ptr, ptr %i.anx, align 8, !tbaa !835
  %i.aoy = ptrtoint ptr %i.aox to i64
  %i.aoz = sub i64 %i.aoy, %i.aos                 ; 2 uses
  %i.apa = icmp sgt i64 %i.aou, -1
  call void @llvm.assume(i1 %i.apa)
  %i.apb = xor i64 %i.aou, 9223372036854775807    ; 2 uses
  %i.apc = icmp ule i64 %i.aoz, %i.apb
  call void @llvm.assume(i1 %i.apc)
  %.not28.i.i = icmp ult i64 %i.aoz, 4
  br i1 %.not28.i.i, label %bb.hh, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.hg
  %i.apd = getelementptr i8, ptr %i.aoq, i64 4
  store i32 0, ptr %i.aoq, align 1
  store ptr %i.apd, ptr %i.vn, align 8, !tbaa !834
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.hh:                                            ; preds = %bb.hg
  %i.ape = icmp samesign ult i64 %i.apb, 4
  br i1 %i.ape, label %bb.hi, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i

bb.hi:                                            ; preds = %bb.hh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.347) #49
  unreachable

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.hh
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aou, i64 4)
  %i.apf = add nuw i64 %.sroa.speculated.i.i.i, %i.aou
  %i.apg = call i64 @llvm.umin.i64(i64 %i.apf, i64 9223372036854775807) ; 2 uses
  %i.aph = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apg) #48 ; 5 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 %i.aou
  %.not35.i.i = icmp eq ptr %i.aoq, %i.aor
  store i32 0, ptr %i.api, align 1
  br i1 %.not35.i.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i, label %bb.hj

bb.hj:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aph, ptr align 1 %i.aor, i64 %i.aou, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.hj, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %i.aor, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aor) #47
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i.i

end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  store i64 %i.aqg, ptr %i.h, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRcRKclEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqb, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.aqc, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.hq unwind label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  invoke void @__cxa_throw(ptr nonnull %i.aqb, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ht unwind label %bb.hr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i435: ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit.i
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.0.i437 = phi i1 [ false, %bb.hq ], [ true, %bb.hp ] ; 2 uses
  %i.aqi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #46
  %i.aqj = load ptr, ptr %10, align 8, !tbaa !235 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aql = icmp eq ptr %i.aqj, %i.aqk
  br i1 %i.aql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i438: ; preds = %bb.hr
  call void @_ZdlPv(ptr noundef %i.aqj) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.0.i437, label %bb.hs, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i439: ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.0.i437, label %bb.hs, label %common.resume

bb.hs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i435
  %.pn10.i = phi { ptr, i32 } [ %i.aqh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i435 ], [ %i.aqi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i439 ], [ %i.aqi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i438 ]
  call void @__cxa_free_exception(ptr %i.aqb) #46
  br label %common.resume

bb.ht:                                            ; preds = %bb.hq
  unreachable

_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit: ; preds = %.lr.ph.i.i.i, %bb.ho, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.hu

bb.hu:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit444, %_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit
  %.sroa.4537.0 = phi i32 [ 0, %_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit ], [ %i.aqm, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit444 ]
  br label %bb.hz

bb.hv:                                            ; preds = %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit534
  %i.aqm = add i32 %.sroa.4537.0, 1               ; 2 uses
  %i.aqn = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 5 uses
  %i.aqo = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 5 uses
  %i.aqp = icmp ult ptr %i.aqn, %i.aqo
  br i1 %i.aqp, label %bb.hw, label %bb.io

bb.hw:                                            ; preds = %bb.hv
  %i.aqq = load i8, ptr %i.aqn, align 1, !tbaa !273
  %i.aqr = sext i8 %i.aqq to i32
  %i.aqs = call i32 @tolower(i32 noundef %i.aqr) #51
  %i.aqt = call i32 @tolower(i32 noundef 44) #51
  %i.aqu = icmp eq i32 %i.aqs, %i.aqt
  br i1 %i.aqu, label %bb.hx, label %bb.ip

bb.hx:                                            ; preds = %bb.hw
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1 ; 3 uses
  store ptr %i.aqv, ptr %i.ao, align 8, !tbaa !830
  %i.aqw = icmp ult ptr %i.aqv, %i.aqo
  br i1 %i.aqw, label %.lr.ph.i.i441, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit444

.lr.ph.i.i441:                                    ; preds = %bb.hx, %bb.hy
  %i.aqx = phi ptr [ %i.arb, %bb.hy ], [ %i.aqv, %bb.hx ] ; 2 uses
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !273
  %i.aqz = sext i8 %i.aqy to i32
  %i.ara = call i32 @isspace(i32 noundef %i.aqz) #51
  %.not.i.i442 = icmp eq i32 %i.ara, 0
  br i1 %.not.i.i442, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit444, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.i.i441
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqx, i64 1 ; 3 uses
  store ptr %i.arb, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i443 = icmp eq ptr %i.arb, %i.aqo
  br i1 %exitcond.not.i.i443, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit444, label %.lr.ph.i.i441, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit444: ; preds = %.lr.ph.i.i441, %bb.hy, %bb.hx
  br label %bb.hu, !llvm.loop !3225

bb.hz:                                            ; preds = %bb.hu, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit534
  %.0156637 = phi i32 [ 0, %bb.hu ], [ %i.ath, %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit534 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.arc = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.ard = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831
  %i.are = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %i.arc, ptr noundef %i.ard, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext false, i8 noundef signext 46, i32 noundef 5) #46 ; 2 uses
  %i.arf = extractvalue { ptr, i32 } %i.are, 1
  %.not.i445 = icmp eq i32 %i.arf, 0
  br i1 %.not.i445, label %bb.ie, label %.noexc.i

.noexc.i:                                         ; preds = %bb.hz
  %i.arg = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  %i.arh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.arh, ptr %9, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 31, ptr %i.a, align 8, !tbaa !245
  %i.ari = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i446 ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ari, ptr %9, align 8, !tbaa !235
  %i.arj = load i64, ptr %i.a, align 8, !tbaa !245 ; 3 uses
  store i64 %i.arj, ptr %i.arh, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.ari, ptr noundef nonnull align 1 dereferenceable(31) @.str.366, i64 31, i1 false)
  %i.ark = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.arj, ptr %i.ark, align 8, !tbaa !272
  %i.arl = load ptr, ptr %9, align 8, !tbaa !235
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arj
  store i8 0, ptr %i.arm, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  %i.arn = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.aro = load ptr, ptr %0, align 8, !tbaa !829
  %i.arp = ptrtoint ptr %i.arn to i64
  %i.arq = ptrtoint ptr %i.aro to i64
  %i.arr = sub i64 %i.arp, %i.arq
  store i64 %i.arr, ptr %i.f, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.arg, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ia unwind label %bb.ib

bb.ia:                                            ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.arg, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ig unwind label %bb.ib

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i446: ; preds = %.noexc.i
  %i.ars = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %bb.ic

bb.ib:                                            ; preds = %bb.ia, %.noexc
  %.0.i449 = phi i1 [ false, %bb.ia ], [ true, %.noexc ] ; 2 uses
  %i.art = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  %i.aru = load ptr, ptr %9, align 8, !tbaa !235  ; 2 uses
  %i.arv = icmp eq ptr %i.aru, %i.arh
  br i1 %i.arv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i450: ; preds = %bb.ib
  call void @_ZdlPv(ptr noundef %i.aru) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br i1 %.0.i449, label %bb.ic, label %bb.id

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i451: ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br i1 %.0.i449, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i446
  %.pn9.i447 = phi { ptr, i32 } [ %i.ars, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i446 ], [ %i.art, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i451 ], [ %i.art, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i450 ]
  call void @__cxa_free_exception(ptr %i.arg) #46
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i450
  %.pn8.i448 = phi { ptr, i32 } [ %.pn9.i447, %bb.ic ], [ %i.art, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i451 ], [ %i.art, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i450 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  br label %common.resume

bb.ie:                                            ; preds = %bb.hz
  %i.arw = extractvalue { ptr, i32 } %i.are, 0    ; 3 uses
  store ptr %i.arw, ptr %i.ao, align 8, !tbaa !830
  %i.arx = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 2 uses
  %i.ary = icmp ult ptr %i.arw, %i.arx
  br i1 %i.ary, label %.lr.ph.i.i452, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit455

.lr.ph.i.i452:                                    ; preds = %bb.ie, %bb.if
  %i.arz = phi ptr [ %i.asd, %bb.if ], [ %i.arw, %bb.ie ] ; 2 uses
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !273
  %i.asb = sext i8 %i.asa to i32
  %i.asc = call i32 @isspace(i32 noundef %i.asb) #51
  %.not.i.i453 = icmp eq i32 %i.asc, 0
  br i1 %.not.i.i453, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit455, label %bb.if

bb.if:                                            ; preds = %.lr.ph.i.i452
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arz, i64 1 ; 3 uses
  store ptr %i.asd, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i454 = icmp eq ptr %i.asd, %i.arx
  br i1 %exitcond.not.i.i454, label %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit455, label %.lr.ph.i.i452, !llvm.loop !108

bb.ig:                                            ; preds = %bb.ia
  unreachable

_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit455: ; preds = %.lr.ph.i.i452, %bb.if, %bb.ie
  %i.ase = load double, ptr %i.e, align 8, !tbaa !477 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.asf = load ptr, ptr %i.vn, align 8, !tbaa !602 ; 2 uses
  %i.asg = load ptr, ptr %1, align 8, !tbaa !602  ; 5 uses
  %i.ash = ptrtoint ptr %i.asf to i64             ; 2 uses
  %i.asi = ptrtoint ptr %i.asg to i64
  %i.asj = sub i64 %i.ash, %i.asi                 ; 8 uses
  %i.ask = load ptr, ptr %i.anx, align 8, !tbaa !835
  %i.asl = ptrtoint ptr %i.ask to i64
  %i.asm = sub i64 %i.asl, %i.ash
  %.not54.i521 = icmp ult i64 %i.asm, 8
  br i1 %.not54.i521, label %bb.ih, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i523

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i523: ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit455
  store double %i.ase, ptr %i.asf, align 1
  %i.asn = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  store ptr %i.aso, ptr %i.vn, align 8, !tbaa !834
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit534

bb.ih:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader11MatchNumberEv.exit455
  %i.asp = and i64 %i.asj, -8
  %i.asq = icmp eq i64 %i.asp, 9223372036854775800
  br i1 %i.asq, label %bb.ii, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i528

bb.ii:                                            ; preds = %bb.ih
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.364) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i528: ; preds = %bb.ih
  %.sroa.speculated.i.i529 = call i64 @llvm.umax.i64(i64 %i.asj, i64 8)
  %i.asr = add i64 %.sroa.speculated.i.i529, %i.asj ; 2 uses
  %i.ass = icmp ult i64 %i.asr, %i.asj
  %i.ast = call i64 @llvm.umin.i64(i64 %i.asr, i64 9223372036854775807)
  %i.asu = select i1 %i.ass, i64 9223372036854775807, i64 %i.ast ; 3 uses
  %.not.i.i530 = icmp eq i64 %i.asu, 0
  br i1 %.not.i.i530, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i531, label %bb.ij

bb.ij:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i528
  %i.asv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asu) #48
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i531

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i531: ; preds = %bb.ij, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i528
  %i.asw = phi ptr [ %i.asv, %bb.ij ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i528 ] ; 7 uses
  %i.asx = icmp sgt i64 %i.asj, 1
  br i1 %i.asx, label %bb.ik, label %bb.il, !prof !420

bb.ik:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i531
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.asw, ptr align 1 %i.asg, i64 %i.asj, i1 false)
  br label %bb.im

bb.il:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i531
  %i.asy = icmp eq i64 %i.asj, 1
  br i1 %i.asy, label %.thread603, label %bb.im

.thread603:                                       ; preds = %bb.il
  %i.asz = load i8, ptr %i.asg, align 1, !tbaa !273
  store i8 %i.asz, ptr %i.asw, align 1, !tbaa !273
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 1
  store double %i.ase, ptr %i.ata, align 1
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asw, i64 9
  br label %bb.in

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.atc = getelementptr inbounds i8, ptr %i.asw, i64 %i.asj ; 2 uses
  store double %i.ase, ptr %i.atc, align 1
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 8 ; 2 uses
  %.not.i59.i532 = icmp eq ptr %i.asg, null
  br i1 %.not.i59.i532, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i533, label %bb.in

bb.in:                                            ; preds = %.thread603, %bb.im
  %i.ate = phi ptr [ %i.atb, %.thread603 ], [ %i.atd, %bb.im ]
  call void @_ZdlPv(ptr noundef nonnull %i.asg) #47
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i533

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i533: ; preds = %bb.in, %bb.im
  %i.atf = phi ptr [ %i.ate, %bb.in ], [ %i.atd, %bb.im ]
  store ptr %i.asw, ptr %1, align 8, !tbaa !833
  store ptr %i.atf, ptr %i.vn, align 8, !tbaa !834
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asw, i64 %i.asu
  store ptr %i.atg, ptr %i.anx, align 8, !tbaa !835
  br label %_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit534

_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag.exit534: ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit.i523, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i533
  %i.ath = add nuw nsw i32 %.0156637, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ath, %i.vh
  br i1 %exitcond.not, label %bb.hv, label %bb.hz, !llvm.loop !3226

bb.io:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 41, ptr %i.c, align 1, !tbaa !273
  br label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit.i456

bb.ip:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 41, ptr %i.c, align 1, !tbaa !273
  %i.ati = load i8, ptr %i.aqn, align 1, !tbaa !273
  %i.atj = sext i8 %i.ati to i32
  %i.atk = call i32 @tolower(i32 noundef %i.atj) #51
  %i.atl = call i32 @tolower(i32 noundef 41) #51
  %i.atm = icmp eq i32 %i.atk, %i.atl
  br i1 %i.atm, label %bb.iq, label %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit.i456

bb.iq:                                            ; preds = %bb.ip
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1 ; 3 uses
  store ptr %i.atn, ptr %i.ao, align 8, !tbaa !830
  %i.ato = icmp ult ptr %i.atn, %i.aqo
  br i1 %i.ato, label %.lr.ph.i.i.i463, label %_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit466

.lr.ph.i.i.i463:                                  ; preds = %bb.iq, %bb.ir
  %i.atp = phi ptr [ %i.att, %bb.ir ], [ %i.atn, %bb.iq ] ; 2 uses
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !273
  %i.atr = sext i8 %i.atq to i32
  %i.ats = call i32 @isspace(i32 noundef %i.atr) #51
  %.not.i.i.i464 = icmp eq i32 %i.ats, 0
  br i1 %.not.i.i.i464, label %_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit466, label %bb.ir

bb.ir:                                            ; preds = %.lr.ph.i.i.i463
  %i.att = getelementptr inbounds nuw i8, ptr %i.atp, i64 1 ; 3 uses
  store ptr %i.att, ptr %i.ao, align 8, !tbaa !830
  %exitcond.not.i.i.i465 = icmp eq ptr %i.att, %i.aqo
  br i1 %exitcond.not.i.i.i465, label %_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit466, label %.lr.ph.i.i.i463, !llvm.loop !108

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit.i456: ; preds = %bb.ip, %bb.io
  %i.atu = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.365, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.is unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i457

bb.is:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit.i456
  %i.atv = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.atw = load ptr, ptr %0, align 8, !tbaa !829
  %i.atx = ptrtoint ptr %i.atv to i64
  %i.aty = ptrtoint ptr %i.atw to i64
  %i.atz = sub i64 %i.atx, %i.aty
  store i64 %i.atz, ptr %i.d, align 8, !tbaa !245
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRcRKclEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.atu, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.atv, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.it unwind label %bb.iu

bb.it:                                            ; preds = %bb.is
  invoke void @__cxa_throw(ptr nonnull %i.atu, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.iw unwind label %bb.iu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i457: ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEc.exit.i456
  %i.aua = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.iv

bb.iu:                                            ; preds = %bb.it, %bb.is
  %.0.i460 = phi i1 [ false, %bb.it ], [ true, %bb.is ] ; 2 uses
  %i.aub = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.auc = load ptr, ptr %7, align 8, !tbaa !235  ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aue = icmp eq ptr %i.auc, %i.aud
  br i1 %i.aue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461: ; preds = %bb.iu
  call void @_ZdlPv(ptr noundef %i.auc) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0.i460, label %bb.iv, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i462: ; preds = %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0.i460, label %bb.iv, label %common.resume

bb.iv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i462, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i457
  %.pn10.i458 = phi { ptr, i32 } [ %i.aua, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i457 ], [ %i.aub, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i462 ], [ %i.aub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i461 ]
  call void @__cxa_free_exception(ptr %i.atu) #46
  br label %common.resume

bb.iw:                                            ; preds = %bb.it
  unreachable

_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit466: ; preds = %.lr.ph.i.i.i463, %bb.ir, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val226 = load ptr, ptr %1, align 8, !tbaa !833 ; 2 uses
  %.val227 = load ptr, ptr %i.vn, align 8, !tbaa !834
  %i.auf = ptrtoint ptr %.val227 to i64
  %i.aug = ptrtoint ptr %.val226 to i64
  %i.auh = sub i64 %i.auf, %i.aug
  %i.aui = icmp ugt i64 %i.aov, %i.auh
  br i1 %i.aui, label %bb.ix, label %_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE.exit

bb.ix:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit466
  %i.auj = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.370, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.iy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i467

bb.iy:                                            ; preds = %bb.ix
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.auj, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.iz unwind label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  invoke void @__cxa_throw(ptr nonnull %i.auj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.jc unwind label %bb.ja

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i467: ; preds = %bb.ix
  %i.auk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %.07.i = phi i1 [ false, %bb.iz ], [ true, %bb.iy ] ; 2 uses
  %i.aul = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aum = load ptr, ptr %5, align 8, !tbaa !235  ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.auo = icmp eq ptr %i.aum, %i.aun
  br i1 %i.auo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469: ; preds = %bb.ja
  call void @_ZdlPv(ptr noundef %i.aum) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br i1 %.07.i, label %bb.jb, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470: ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br i1 %.07.i, label %bb.jb, label %common.resume

bb.jb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i467
  %.pn8.i468 = phi { ptr, i32 } [ %i.auk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i467 ], [ %i.aul, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470 ], [ %i.aul, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i469 ]
  call void @__cxa_free_exception(ptr %i.auj) #46
  br label %common.resume

bb.jc:                                            ; preds = %bb.iz
  unreachable

_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc.exit466
  %i.aup = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.aou
  store i32 %i.aqm, ptr %i.aup, align 1
  %i.auq = add i32 %.sroa.4541.0, 1               ; 2 uses
  %i.aur = load ptr, ptr %i.ao, align 8, !tbaa !830 ; 3 uses
  %i.aus = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !831 ; 3 uses
  %i.aut = icmp ult ptr %i.aur, %i.aus
  br i1 %i.aut, label %bb.jd, label %bb.jg

bb.jd:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobWriter5WriteIjEEvRKNS1_8ReservedIT_EE.exit
  %i.auu = load i8, ptr %i.aur, align 1, !tbaa !273
  %i.auv = sext i8 %i.auu to i32
  %i.auw = call i32 @tolower(i32 noundef %i.auv) #51
  %i.aux = call i32 @tolower(i32 noundef 44) #51
  %i.auy = icmp eq i32 %i.auw, %i.aux
  br i1 %i.auy, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aur, i64 1 ; 3 uses
  store ptr %i.auz, ptr %i.ao, align 8, !tbaa !830
end_hunk_2
begin_hunk_3_@_ZN6duckdb9Exception25ConstructMessageRecursiveIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !235 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZN6duckdb6vectorIcLb1ESaIcEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !602
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !602  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorIcLb1ESaIcEE3getILb1EEERcm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.279, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !235    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #46
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorIcLb1ESaIcEE3getILb1EEERcm.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.k
  ret ptr %i.l

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISB_cEEEEEEvNS0_17basic_string_viewIT0_EEOT1_(ptr %0, i64 %1, ptr noundef nonnull align 16 dereferenceable(112) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 8 uses
  %4 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 8 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %6 = alloca %struct.pfs_writer, align 8         ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %9 = alloca %"struct.duckdb_fmt::v6::internal::id_adapter", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %11 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %13 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  store ptr %2, ptr %6, align 8, !tbaa !3802
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %.not74 = icmp samesign eq i64 %1, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %.03775 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %bb.af ] ; 6 uses
  %i.p = load i8, ptr %.03775, align 1, !tbaa !273
  %.not45 = icmp eq i8 %i.p, 123
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %.03775 to i64
  %i.r = sub i64 %i.b, %i.q
  %i.s = call noundef ptr @memchr(ptr noundef nonnull %.03775, i32 noundef 123, i64 noundef %i.r) #51 ; 2 uses
  %.not68 = icmp eq ptr %i.s, null
  br i1 %.not68, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  call void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISB_cEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSP_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.03775, ptr noundef nonnull %i.a)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %.03775, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  call void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISB_cEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSP_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.03775, ptr noundef nonnull %.0)
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.389, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %7) #49
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !235    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.x) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn52 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.ag

bb.j:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !273
  switch i8 %i.aa, label %bb.r [
    i8 125, label %bb.k
    i8 123, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENT_10format_argERSB_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, ptr noundef nonnull align 16 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !926
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !927 ; 2 uses
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !927
  %i.ah = load i64, ptr %i.f, align 16, !tbaa !928
  %14 = sub i64 %i.ah, %i.af
  store i64 %14, ptr %i.f, align 16, !tbaa !928
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i = load ptr, ptr %i.g, align 8, !tbaa !341
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i, ptr %i.h, align 8, !tbaa !341
  store ptr null, ptr %i.i, align 8, !tbaa !935
  store ptr %i.c, ptr %i.j, align 8, !tbaa !937
  store ptr %i.d, ptr %i.k, align 8, !tbaa !940
  %i.ai = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENS0_20basic_format_contextISA_cEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.ai, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.af

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !834 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !835
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i, %i.al
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 123, ptr %.pre.i.i.i.i.i.i.i.i, align 1, !tbaa !273
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !834
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !834
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !833 ; 4 uses
  %i.ap = ptrtoint ptr %.pre.i.i.i.i.i.i.i.i to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 7 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %i.as, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.at = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %i.ar ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.ar
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 9223372036854775807)
  %i.aw = select i1 %i.au, i64 9223372036854775807, i64 %i.av ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #48 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ar ; 2 uses
  %i.az = load i8, ptr %i.t, align 1, !tbaa !273
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !273
  %i.ba = icmp sgt i64 %i.ar, 0
  br i1 %i.ba, label %bb.p, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ax, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !833
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !834
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store ptr %i.bc, ptr %i.ak, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.m
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 16
  br label %bb.af

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  store ptr %2, ptr %9, align 8, !tbaa !3802
  %i.bd = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISC_cEEEEcEEEEPKT_SM_SM_OT0_(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %.not46 = icmp eq ptr %i.bd, %i.a
  br i1 %.not46, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !273
  switch i8 %i.be, label %.thread [
    i8 125, label %bb.t
    i8 58, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !927 ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  store ptr %i.bj, ptr %i.d, align 8, !tbaa !927
  %i.bk = load i64, ptr %i.f, align 16, !tbaa !928
  %15 = sub i64 %i.bk, %i.bi
  store i64 %15, ptr %i.f, align 16, !tbaa !928
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %.sroa.0.0.copyload.i.i.i55 = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i56 = load ptr, ptr %i.g, align 8, !tbaa !341
  store ptr %.sroa.0.0.copyload.i.i.i55, ptr %3, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i56, ptr %i.l, align 8, !tbaa !341
  store ptr null, ptr %i.m, align 8, !tbaa !935
  store ptr %i.c, ptr %i.n, align 8, !tbaa !937
  store ptr %i.d, ptr %i.o, align 8, !tbaa !940
  %i.bl = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENS0_20basic_format_contextISA_cEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.bl, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.af

bb.u:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bn = call noundef ptr @_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE15on_format_specsEPKcSH_(ptr noundef nonnull align 16 dereferenceable(112) %2, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.a) ; 3 uses
  %i.bo = icmp eq ptr %i.bn, %i.a
  br i1 %i.bo, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !273
  %.not48 = icmp eq i8 %i.bp, 125
  br i1 %.not48, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.390, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %10) #49
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.aa:                                            ; preds = %bb.x
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %10, align 8, !tbaa !235  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.bs) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.z
  %.pn49 = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.br, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br label %bb.ag

.thread:                                          ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.391, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.thread
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %12) #49
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %.thread
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.ae:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %12, align 8, !tbaa !235  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.bx) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.ad ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.bw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  br label %bb.ag

bb.af:                                            ; preds = %bb.t, %bb.v, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i, %bb.k
  %.1 = phi ptr [ %i.bd, %bb.t ], [ %i.bn, %bb.v ], [ %i.t, %bb.k ], [ %i.t, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ca, %i.a
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3801

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  resume { ptr, i32 } %.pn52.pn

.loopexit:                                        ; preds = %bb.af, %bb.a, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISB_cEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSP_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.v
  %.013 = phi ptr [ %.1, %bb.v ], [ %1, %.preheader ] ; 5 uses
  %i.c = ptrtoint ptr %.013 to i64                ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef %.013, i32 noundef 125, i64 noundef %i.d) #51 ; 3 uses
  %.not32 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not32, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !3805, !nonnull !227, !align !941
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 16 ; 5 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !834
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ae, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ag, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i.i = phi ptr [ %.013, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.af, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !835
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %.056.i.i.i.i.i.i.i.i, align 1, !tbaa !273
  store i8 %i.m, ptr %i.k, align 1, !tbaa !273
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !834
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !834
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !833 ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807)
  %i.x = select i1 %i.v, i64 9223372036854775807, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #48 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s ; 2 uses
  %i.aa = load i8, ptr %.056.i.i.i.i.i.i.i.i, align 1, !tbaa !273
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !273
  %i.ab = icmp sgt i64 %i.s, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.y, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !833
end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISC_cEEEEcEEEEPKT_SM_SM_OT0_:bb.a

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !235   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.z
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.am) #47
  br label %.body

bb.j:                                             ; preds = %.noexc.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %i.ap = load ptr, ptr %8, align 8, !tbaa !235   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.s
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.ar = load ptr, ptr %2, align 8, !tbaa !943, !nonnull !227, !align !941 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE12check_arg_idEi(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i32 noundef %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENT_10format_argERSB_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i32 noundef %i.o)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.au, ptr noundef nonnull align 16 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !926
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !602
  br label %bb.r

bb.l:                                             ; preds = %bb.c
  %i.aw = and i8 %i.h, -33
  %i.ax = add i8 %i.aw, -65
  %or.cond10.i = icmp ult i8 %i.ax, 26
  %i.ay = icmp eq i8 %i.h, 95
  %i.az = or i1 %i.ay, %or.cond10.i
  br i1 %i.az, label %.critedge7.preheader, label %.noexc.i52

.critedge7.preheader:                             ; preds = %bb.l
  %i.ba = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.ba  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not80 = icmp eq ptr %i.bb, %1
  br i1 %.not80, label %.critedge, label %.lr.ph

.noexc.i52:                                       ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.bc, ptr %9, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 21, ptr %i.d, align 8, !tbaa !245
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !235
  %i.be = load i64, ptr %i.d, align 8, !tbaa !245 ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bd, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !272
  %i.bg = load ptr, ptr %9, align 8, !tbaa !235
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bi = load ptr, ptr %2, align 8, !tbaa !943, !nonnull !227, !align !941
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !271
  %i.bk = load ptr, ptr %9, align 8, !tbaa !235   ; 2 uses
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !272 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !245
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i.i60, label %._crit_edge.i.i.i55

.noexc.i.i60:                                     ; preds = %.noexc.i52
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc61 unwind label %bb.q   ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i60
  store ptr %i.bn, ptr %4, align 8, !tbaa !235
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !245
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !273
  br label %._crit_edge.i.i.i55

._crit_edge.i.i.i55:                              ; preds = %.noexc61, %.noexc.i52
  %i.bp = phi ptr [ %i.bn, %.noexc61 ], [ %i.bj, %.noexc.i52 ] ; 2 uses
  switch i64 %i.bl, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i55
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !273
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !273
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

bb.n:                                             ; preds = %._crit_edge.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bk, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i55
  %i.br = load i64, ptr %i.c, align 8, !tbaa !245 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !272
  %i.bt = load ptr, ptr %4, align 8, !tbaa !235
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull %4) #49
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  unreachable

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i56
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bj
  br i1 %i.bx, label %.body62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bw) #47
  br label %.body62

bb.q:                                             ; preds = %.noexc.i.i60
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body62

.body62:                                          ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57, %bb.q
  %eh.lpad-body63 = phi { ptr, i32 } [ %i.by, %bb.q ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57 ], [ %i.bv, %bb.p ] ; 2 uses
  %i.bz = load ptr, ptr %9, align 8, !tbaa !235   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bc
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

.critedge7:                                       ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.cb, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3806

.lr.ph:                                           ; preds = %.critedge7.preheader, %.critedge7
  %i.cc = phi ptr [ %i.cb, %.critedge7 ], [ %i.bb, %.critedge7.preheader ] ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !273 ; 3 uses
  %i.ce = and i8 %i.cd, -33
  %i.cf = add i8 %i.ce, -65
  %or.cond10.i71 = icmp ult i8 %i.cf, 26
  %i.cg = icmp eq i8 %i.cd, 95
  %i.ch = or i1 %i.cg, %or.cond10.i71
  %i.ci = add i8 %i.cd, -48
  %i.cj = icmp ult i8 %i.ci, 10
  %or.cond = or i1 %i.cj, %i.ch
  br i1 %or.cond, label %.critedge7, label %..critedge_crit_edge, !llvm.loop !3806

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !3806

.critedge:                                        ; preds = %.critedge7, %..critedge_crit_edge, %.critedge7.preheader
  %.lcssa = phi ptr [ %i.cc, %..critedge_crit_edge ], [ %scevgep, %.critedge7.preheader ], [ %scevgep, %.critedge7 ] ; 2 uses
  %i.ck = ptrtoint ptr %.lcssa to i64
  %i.cl = ptrtoint ptr %0 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = load ptr, ptr %2, align 8, !tbaa !943, !nonnull !227, !align !941 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  call void @_ZN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcE3argENS0_17basic_string_viewIcEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr nonnull %0, i64 %i.cm)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.cp, ptr noundef nonnull align 16 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !926
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.k, %bb.b
  %.035 = phi ptr [ %0, %bb.b ], [ %i.av, %bb.k ], [ %.lcssa, %.critedge ]
  ret ptr %.035

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split: ; preds = %.body62, %.body
  %.sink = phi ptr [ %i.ap, %.body ], [ %i.bz, %.body62 ]
  %.pn43.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body63, %.body62 ]
  call void @_ZdlPv(ptr noundef %.sink) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split, %.body62, %.body
  %.pn43.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body63, %.body62 ], [ %.pn43.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split ]
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE15on_format_specsEPKcSH_(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 4 ; 11 uses
  %4 = alloca %"class.duckdb_fmt::v6::internal::specs_checker", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %7 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !927  ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  store ptr %i.f, ptr %i.a, align 8, !tbaa !927
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !928
  %8 = sub i64 %i.h, %i.e
  store i64 %8, ptr %i.g, align 16, !tbaa !928
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i32, ptr %i.k, align 16, !tbaa !848 ; 2 uses
  %cond.i = icmp eq i32 %i.l, 16
  br i1 %cond.i, label %bb.b, label %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEESB_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 16, !tbaa !341
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !341
  tail call void %.sroa.2.0.copyload.i(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.i), !inline_history !3807
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !927
  br label %bb.h

_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEESB_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  store i32 0, ptr %3, align 4, !tbaa !948
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.n, align 4, !tbaa !949
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.o, align 4, !tbaa !950
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.r, align 4, !tbaa !951
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  store ptr %3, ptr %4, align 8, !tbaa !952
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.s, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.i, ptr %.sroa.6.8..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %4, ptr %i.t, align 8, !tbaa !3808
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.l, ptr %i.u, align 8, !tbaa !955
  %i.v = call noundef ptr @_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_(ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 4 uses
  %i.w = icmp eq ptr %i.v, %2
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEESB_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %i.x = load i8, ptr %i.v, align 1, !tbaa !273
  %.not = icmp eq i8 %i.x, 125
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN10duckdb_fmt2v616visit_format_argIRNS0_8internal16custom_formatterINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEESB_EEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.391, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %5) #49
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !235    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !927 ; 2 uses
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !927
  %i.ah = load i64, ptr %i.g, align 16, !tbaa !928
  %9 = sub i64 %i.ah, %i.af
  store i64 %9, ptr %i.g, align 16, !tbaa !928
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i7.i = load ptr, ptr %i.ai, align 8, !tbaa !341
  store ptr %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.0.0.copyload.i7.i, ptr %i.aj, align 8, !tbaa !341
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.ak, align 8, !tbaa !935
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.i, ptr %i.al, align 8, !tbaa !937
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.a, ptr %i.am, align 8, !tbaa !940
  %i.an = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENS0_20basic_format_contextISA_cEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 16 dereferenceable(20) %i.j)
  store ptr %i.an, ptr %i.i, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ %i.v, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !838  ; 3 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !838
  ret i32 %i.d

.noexc.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 56, ptr %i.b, align 8, !tbaa !245
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !235
  %i.i = load i64, ptr %i.b, align 8, !tbaa !245  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.h, ptr noundef nonnull align 1 dereferenceable(56) @.str.395, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !272
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !271
  %i.m = load ptr, ptr %2, align 8, !tbaa !235    ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !272  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.n, ptr %i.a, align 8, !tbaa !245
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %bb.g    ; 2 uses

.noexc7:                                          ; preds = %.noexc.i.i
  store ptr %i.p, ptr %1, align 8, !tbaa !235
  %i.q = load i64, ptr %i.a, align 8, !tbaa !245
  store i64 %i.q, ptr %i.l, align 8, !tbaa !273
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc7, %.noexc.i
  %i.r = phi ptr [ %i.p, %.noexc7 ], [ %i.l, %.noexc.i ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.m, align 1, !tbaa !273
  store i8 %i.s, ptr %i.r, align 1, !tbaa !273
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !272
  %i.v = load ptr, ptr %1, align 8, !tbaa !235
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1) #49
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !235    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.l
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.y) #47
  br label %.body

bb.g:                                             ; preds = %.noexc.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.x, %bb.f ]
  %i.ab = load ptr, ptr %2, align 8, !tbaa !235   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ab) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENT_10format_argERSB_i(ptr dead_on_unwind noalias writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3823)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3825)
  store i32 0, ptr %0, align 16, !tbaa !273, !alias.scope !3826
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.c, align 16, !tbaa !848, !alias.scope !3826
  %i.d = load i64, ptr %i.b, align 8, !tbaa !957, !noalias !3826 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.d to i32
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcE3argEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !273, !noalias !3826
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %0, ptr noundef nonnull align 16 dereferenceable(20) %i.k, i64 20, i1 false), !tbaa.struct !926
  %.pr.pre.i.i = load i32, ptr %i.c, align 16, !tbaa !848, !alias.scope !3827
  br label %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE6do_getEi.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %2, 12
  br i1 %i.l, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcE3argEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = mul nsw i32 %2, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.d, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31                         ; 3 uses
  store i32 %i.q, ptr %i.c, align 16, !tbaa !848, !alias.scope !3826
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcE3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !273, !noalias !3826
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !511
  br label %_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE6do_getEi.exit.i.i

_ZNK10duckdb_fmt2v617basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE6do_getEi.exit.i.i: ; preds = %bb.f, %bb.c
  %.pr.i.i = phi i32 [ %i.q, %bb.f ], [ %.pr.pre.i.i, %bb.c ] ; 2 uses
  %i.w = icmp eq i32 %.pr.i.i, 1
end_hunk_4
