inline.NumInlined: 2630
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4nodeL14GetErrorSourceB5cxx11EPN2v87IsolateENS0_5LocalINS0_7ContextEEENS3_INS0_7MessageEEEPb:bb.a

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.150) #28
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gz = add nuw i64 %i.gt, 1                    ; 2 uses
  %i.ha = icmp slt i64 %i.gz, 0
  br i1 %i.ha, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i87, !prof !5

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i87: ; preds = %bb.av
  %i.hb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #29 ; 2 uses
  store ptr %i.hb, ptr %17, align 8, !alias.scope !53
  store i64 %i.gt, ptr %i.gu, align 8, !alias.scope !53
  br label %._crit_edge.i.i.i86

._crit_edge.i.i.i86:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i87, %bb.as
  %i.hc = phi ptr [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i87 ], [ %i.gu, %bb.as ] ; 3 uses
  switch i64 %i.gt, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i86
  %i.hd = load i8, ptr %i.gs, align 1
  store i8 %i.hd, ptr %i.hc, align 1
  br label %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit

bb.ay:                                            ; preds = %._crit_edge.i.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr align 1 %i.gs, i64 %i.gt, i1 false)
  br label %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit

_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i86, %bb.ax, %bb.ay
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.gt, ptr %i.he, align 8, !alias.scope !53
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gt
  store i8 0, ptr %i.hf, align 1
  %i.hg = load ptr, ptr %15, align 8              ; 6 uses
  %i.hh = icmp eq ptr %i.hg, %i.fy
  %i.hi = load ptr, ptr %17, align 8              ; 5 uses
  %i.hj = icmp eq ptr %i.hi, %i.gu                ; 2 uses
  br i1 %i.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89: ; preds = %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit
  br i1 %i.hj, label %bb.az, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4node16MaybeStackBufferIcLm1024EE8ToStringB5cxx11Ev.exit
  br i1 %i.hj, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89
  %i.hk = load i64, ptr %i.he, align 8            ; 3 uses
  %i.hl = icmp ult i64 %i.hk, 16
  call void @llvm.assume(i1 %i.hl)
  switch i64 %i.hk, label %bb.bb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hm = load i8, ptr %i.hi, align 1
  store i8 %i.hm, ptr %i.hg, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %i.hi, i64 %i.hk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.hn = load i64, ptr %i.he, align 8            ; 2 uses
  store i64 %i.hn, ptr %i.fz, align 8
  %i.ho = load ptr, ptr %15, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hn
  store i8 0, ptr %i.hp, align 1
  %.pre.i = load ptr, ptr %17, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89
  store ptr %i.hi, ptr %15, align 8
  %i.hq = load <2 x i64>, ptr %i.he, align 8
  store <2 x i64> %i.hq, ptr %i.fz, align 8
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hr = load i64, ptr %i.fy, align 8
  store ptr %i.hi, ptr %15, align 8
  %i.hs = load <2 x i64>, ptr %i.he, align 8
  store <2 x i64> %i.hs, ptr %i.fz, align 8
  %.not.i88 = icmp eq ptr %i.hg, null
  br i1 %.not.i88, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hg, ptr %17, align 8
  store i64 %i.hr, ptr %i.gu, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.gu, ptr %17, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bc, %bb.bd
  %i.ht = phi ptr [ %i.hg, %bb.bc ], [ %i.gu, %bb.bd ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.he, align 8
  store i8 0, ptr %i.ht, align 1
  %i.hu = load ptr, ptr %17, align 8              ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.gu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hw = load i64, ptr %i.gu, align 8
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.hy = load ptr, ptr %i.gr, align 8            ; 3 uses
  %i.hz = icmp ne ptr %i.hy, null
  %i.ia = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ib = icmp ne ptr %i.hy, %i.ia
  %i.ic = select i1 %i.hz, i1 %i.ib, i1 false
  br i1 %i.ic, label %bb.be, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  call void @free(ptr noundef nonnull %i.hy) #27
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.id = call i64 @_ZNK2v87Message13GetLineNumberENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %2) #27 ; 2 uses
  %.sroa.4120.0.extract.shift = lshr i64 %i.id, 32
  %.sroa.4120.0.extract.trunc = trunc nuw i64 %.sroa.4120.0.extract.shift to i32 ; 2 uses
  %i.ie = trunc i64 %i.id to i1
  br i1 %i.ie, label %_ZNO2v85MaybeIiE8FromJustEv.exit, label %bb.bg, !prof !29

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #27
  br label %_ZNO2v85MaybeIiE8FromJustEv.exit

_ZNO2v85MaybeIiE8FromJustEv.exit:                 ; preds = %bb.bf, %bb.bg
  store i32 %.sroa.4120.0.extract.trunc, ptr %i.a, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ig = load i32, ptr %i.if, align 8
  %i.ih = sub nsw i32 %.sroa.4120.0.extract.trunc, %i.ig
  %i.ii = icmp eq i32 %i.ih, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = select i1 %i.ii, i32 %i.ik, i32 0       ; 3 uses
  %i.im = call i64 @_ZNK2v87Message14GetStartColumnENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %2) #27 ; 2 uses
  %.sroa.4115.0.extract.shift = lshr i64 %i.im, 32
  %.sroa.4115.0.extract.trunc = trunc nuw i64 %.sroa.4115.0.extract.shift to i32
  %i.in = trunc i64 %i.im to i1
  %.sroa.speculated110 = select i1 %i.in, i32 %.sroa.4115.0.extract.trunc, i32 0 ; 4 uses
  %i.io = call i64 @_ZNK2v87Message12GetEndColumnENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %2) #27 ; 2 uses
  %.sroa.4109.0.extract.shift = lshr i64 %i.io, 32
  %.sroa.4109.0.extract.trunc = trunc nuw i64 %.sroa.4109.0.extract.shift to i32
  %i.ip = trunc i64 %i.io to i1
  %.sroa.speculated = select i1 %i.ip, i32 %.sroa.4109.0.extract.trunc, i32 0 ; 3 uses
  %.not69 = icmp slt i32 %.sroa.speculated110, %i.il
  br i1 %.not69, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %_ZNO2v85MaybeIiE8FromJustEv.exit
  %.not70 = icmp slt i32 %.sroa.speculated, %.sroa.speculated110
  br i1 %.not70, label %bb.bi, label %bb.bj, !prof !5

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4nodeL14GetErrorSourceB5cxx11EPN2v87IsolateENS0_5LocalINS0_7ContextEEENS3_INS0_7MessageEEEPbE20error_and_abort_args)
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.iq = sub nsw i32 %.sroa.speculated110, %i.il
  %i.ir = sub nsw i32 %.sroa.speculated, %i.il
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNO2v85MaybeIiE8FromJustEv.exit
  %.062 = phi i32 [ %i.iq, %bb.bj ], [ %.sroa.speculated110, %_ZNO2v85MaybeIiE8FromJustEv.exit ] ; 8 uses
  %.061 = phi i32 [ %i.ir, %bb.bj ], [ %.sroa.speculated, %_ZNO2v85MaybeIiE8FromJustEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS7_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 9, ptr nonnull @.str.194, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %11) #32
  %i.is = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8            ; 4 uses
  %.not71 = icmp eq i64 %i.it, 0
  br i1 %.not71, label %bb.bl, label %bb.bm, !prof !5

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4nodeL14GetErrorSourceB5cxx11EPN2v87IsolateENS0_5LocalINS0_7ContextEEENS3_INS0_7MessageEEEPbE20error_and_abort_args_0)
  unreachable

bb.bm:                                            ; preds = %bb.bk
  store i8 1, ptr %4, align 1
  %i.iu = icmp sgt i32 %.062, %.061
  %i.iv = icmp slt i32 %.062, 0
  %or.cond3 = or i1 %i.iv, %i.iu
  %21 = zext nneg i32 %.061 to i64
  %22 = load i64, ptr %i.r, align 8
  %23 = icmp ult i64 %22, %21
  %or.cond160 = select i1 %or.cond3, i1 true, i1 %23
  br i1 %or.cond160, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.iw, ptr %0, align 8
  %i.ix = load ptr, ptr %18, align 8              ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i93

bb.bo:                                            ; preds = %bb.bn
  %i.ja = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.ja)
  %i.jb = add nuw nsw i64 %i.it, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iw, ptr noundef nonnull align 8 dereferenceable(1) %i.iy, i64 %i.jb, i1 false)
  br label %.thread211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i93: ; preds = %bb.bn
  store ptr %i.ix, ptr %0, align 8
  %i.jc = load i64, ptr %i.iy, align 8
  store i64 %i.jc, ptr %i.iw, align 8
  br label %.thread211

.thread211:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i93, %bb.bo
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.it, ptr %i.jd, align 8
  store ptr %i.iy, ptr %18, align 8
  store i64 0, ptr %i.is, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %.not217 = icmp eq i32 %.062, 0
  br i1 %.not217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp
  %i.je = load ptr, ptr %11, align 8
  %wide.trip.count = zext nneg i32 %.062 to i64
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph, %bb.br
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.br ] ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv
  %i.jg = load i8, ptr %i.jf, align 1             ; 2 uses
  %i.jh = icmp eq i8 %i.jg, 0
  %i.ji = icmp samesign ugt i64 %indvars.iv, 1019
  %or.cond5 = select i1 %i.jh, i1 true, i1 %i.ji
  br i1 %or.cond5, label %._crit_edge.loopexit.split.loop.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jj = icmp eq i8 %i.jg, 9
  %i.jk = select i1 %i.jj, i8 9, i8 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.jk, ptr %i.jl, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bq, !llvm.loop !56

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.bq
  %i.jm = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.br, %._crit_edge.loopexit.split.loop.exit, %bb.bp
  %.059.lcssa = phi i32 [ 0, %bb.bp ], [ %i.jm, %._crit_edge.loopexit.split.loop.exit ], [ %.062, %bb.br ] ; 3 uses
  %i.jn = icmp slt i32 %.062, %.061
  br i1 %i.jn, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge
  %i.jo = load ptr, ptr %11, align 8
  %i.jp = zext nneg i32 %.062 to i64
  %i.jq = zext i32 %.059.lcssa to i64
  %i.jr = add i32 %.061, %.059.lcssa
  %i.js = sub i32 %i.jr, %.062
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph153, %bb.bt
  %indvars.iv163 = phi i64 [ %i.jq, %.lr.ph153 ], [ %indvars.iv.next164, %bb.bt ] ; 4 uses
  %indvars.iv161 = phi i64 [ %i.jp, %.lr.ph153 ], [ %indvars.iv.next162, %bb.bt ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 %indvars.iv161
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = icmp eq i8 %i.ju, 0
  %i.jw = icmp samesign ugt i64 %indvars.iv163, 1019
  %or.cond7 = select i1 %i.jv, i1 true, i1 %i.jw
  br i1 %or.cond7, label %._crit_edge154.loopexit.split.loop.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv163
  store i8 94, ptr %i.jx, align 1
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %i.jy = trunc nuw i64 %indvars.iv.next162 to i32
  %i.jz = icmp sgt i32 %.061, %i.jy
  br i1 %i.jz, label %bb.bs, label %._crit_edge154, !llvm.loop !57

._crit_edge154.loopexit.split.loop.exit:          ; preds = %bb.bs
  %i.ka = trunc nuw i64 %indvars.iv163 to i32
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %bb.bt, %._crit_edge154.loopexit.split.loop.exit, %._crit_edge
  %.1.lcssa = phi i32 [ %.059.lcssa, %._crit_edge ], [ %i.ka, %._crit_edge154.loopexit.split.loop.exit ], [ %i.js, %bb.bt ] ; 3 uses
  %i.kb = icmp samesign ult i32 %.1.lcssa, 1021
  br i1 %i.kb, label %bb.bv, label %bb.bu, !prof !29

bb.bu:                                            ; preds = %._crit_edge154
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4nodeL14GetErrorSourceB5cxx11EPN2v87IsolateENS0_5LocalINS0_7ContextEEENS3_INS0_7MessageEEEPbE20error_and_abort_args_3)
  unreachable

bb.bv:                                            ; preds = %._crit_edge154
  %i.kc = add nuw nsw i32 %.1.lcssa, 1
  %i.kd = zext nneg i32 %.1.lcssa to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kd
  store i8 10, ptr %i.ke, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.kf = zext nneg i32 %i.kc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull %i.b, i64 noundef %i.kf, ptr noundef nonnull align 1 dereferenceable(1) %20)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.kg = load ptr, ptr %19, align 8              ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.bv
  %i.kj = load i64, ptr %i.kh, align 8
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.pre = load ptr, ptr %18, align 8              ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.km = icmp eq ptr %.pre, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96
  %i.kn = load i64, ptr %i.kl, align 8
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ko) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i96, %.thread211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.kp = load ptr, ptr %15, align 8              ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.fy
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.kr = load i64, ptr %i.fy, align 8
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZN4nodeL23GetSourceMapErrorSourceB5cxx11EPN2v87IsolateENS0_5LocalINS0_7ContextEEENS3_INS0_7MessageEEEPb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread140
  %i.kt = load ptr, ptr %11, align 8              ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.h
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.critedge
  %i.kv = load i64, ptr %i.h, align 8
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.kx = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ky = icmp ne ptr %i.kx, null
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.la = icmp ne ptr %i.kx, %i.kz
  %i.lb = select i1 %i.ky, i1 %i.la, i1 false
  br i1 %i.lb, label %bb.bw, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit107

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  call void @free(ptr noundef nonnull %i.kx) #27
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit107

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.173) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.d

end_hunk_0
