Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/parser-1c08171a2541c4e2.parser.a236489b19f90125-cgu.06?download=true
inline.NumInlined: 60
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp:bb.a
.noexc97:                                         ; preds = %bb.cp
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 9)
          to label %bb.cq unwind label %bb.cs, !noalias !122, !inline_history !86

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions9call_expr.exit.i, %bb.ck, %bb.cj, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16method_call_exprKb0_EB6_.exit.i.i, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bo, %.noexc78, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8try_expr.exit.i, %bb.am, %bb.al, %bb.ai, %bb.cp, %bb.cr, %.invoke288, %.invoke, %bb.ad, %bb.k, %bb.f, %bb.h, %bb.cw, %bb.df, %bb.i, %bb.af, %bb.ab, %bb.l, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread125

bb.cq:                                            ; preds = %.noexc97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  store i64 -2, ptr %i.a, align 8, !noalias !123
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef 1)
          to label %.noexc101 unwind label %bb.cs, !inline_history !90

.noexc101:                                        ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  %i.el = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 10)
          to label %bb.cr unwind label %bb.cs, !noalias !122, !inline_history !86 ; 0 uses

bb.cr:                                            ; preds = %.noexc101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !121
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 219)
          to label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10index_expr.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !124, !inline_history !86

bb.cs:                                            ; preds = %.noexc101, %bb.cq, %.noexc97
  %lpad.thr_comm157 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #11
          to label %.thread125 unwind label %bb.ct, !noalias !122, !inline_history !86

bb.ct:                                            ; preds = %bb.cs
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !122, !inline_history !86
  unreachable

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10index_expr.exit.i: ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !121
  br label %bb.cn

.loopexit255:                                     ; preds = %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !105
  br label %.loopexit174

_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread: ; preds = %.noexc80, %.noexc90, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread253, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i.thread251, %_RINvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions16postfix_dot_exprKb0_EB6_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !105
  br label %bb.cn

bb.cu:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !99
  br label %bb.dl

.loopexit174:                                     ; preds = %bb.ak, %bb.aj, %.noexc54, %.loopexit255
  %.sroa.0115.0.copyload = load i64, ptr %i.x, align 8, !alias.scope !125, !noalias !100
  %.sroa.4.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.en = load <2 x i16>, ptr %.sroa.4.0..sroa_idx116, align 8, !alias.scope !125, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.dl

bb.cv:                                            ; preds = %bb.k
  br i1 %i.bf, label %bb.cw, label %bb.ad

bb.cw:                                            ; preds = %bb.ae, %bb.cv
  %.lcssa242 = phi i16 [ 28, %bb.cv ], [ 26, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !99
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100, !inline_history !56

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !99
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef %.lcssa242)
          to label %bb.cy unwind label %.body58, !noalias !100, !inline_history !56

bb.cy:                                            ; preds = %bb.cx
  %i.eo = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 25)
          to label %bb.cz unwind label %.body58, !noalias !100, !inline_history !56

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.eo, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ep = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6nth_at(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1, i16 noundef 153)
          to label %bb.db unwind label %.body58, !noalias !100, !inline_history !56

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sroa.07.0.i = phi i1 [ false, %bb.cz ], [ %i.ep, %bb.da ]
  br i1 %3, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.eq = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 7)
          to label %bb.dd unwind label %.body58, !noalias !100, !inline_history !56

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.sroa.08.0.i = phi i1 [ false, %bb.db ], [ %i.eq, %bb.dc ]
  %i.er = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5at_ts(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @25)
          to label %bb.de unwind label %.body58, !noalias !100, !inline_history !56

bb.de:                                            ; preds = %bb.dd
  %.not.i = xor i1 %i.er, true
  %or.cond.i = or i1 %.sroa.07.0.i, %.not.i
  %or.cond3.i = or i1 %.sroa.08.0.i, %or.cond.i
  br i1 %or.cond3.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.dh, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !99
  invoke void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 269)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100, !inline_history !56

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !99
  store i64 -2, ptr %i.af, align 8, !noalias !99
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.af, i1 noundef zeroext %3, i1 noundef zeroext %4, i8 noundef 2)
          to label %bb.dh unwind label %.body58, !noalias !100, !inline_history !56

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !99
  br label %bb.df

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !99
  %.sroa.09.i.sroa.0.0.copyload = load i64, ptr %i.ae, align 8, !noalias !99
  %.sroa.09.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.es = load <2 x i16>, ptr %.sroa.09.i.sroa.4.0..sroa_idx, align 8, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !99
  br label %bb.dl

bb.dj:                                            ; preds = %.body58
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !100, !inline_history !56
  unreachable

bb.dk:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker7abandon(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.eu, align 4
  br label %bb.ej

bb.dl:                                            ; preds = %bb.cu, %.loopexit174, %bb.di, %bb.ac
  %.sroa.9114.1 = phi i1 [ false, %bb.ac ], [ false, %bb.cu ], [ %.sroa.0.0.i53, %.loopexit174 ], [ false, %bb.di ]
  %.sroa.0102.1 = phi i64 [ %.sroa.014.i.sroa.0.0.copyload, %bb.ac ], [ undef, %bb.cu ], [ %.sroa.0115.0.copyload, %.loopexit174 ], [ %.sroa.09.i.sroa.0.0.copyload, %bb.di ]
  %i.ev = phi <2 x i16> [ %i.bw, %bb.ac ], [ <i16 -1, i16 undef>, %bb.cu ], [ %i.en, %.loopexit174 ], [ %i.es, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ew = extractelement <2 x i16> %i.ev, i64 0
  %.not21 = icmp eq i16 %i.ew, -1
  br i1 %.not21, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 %.sroa.0102.1, ptr %i.aw, align 8
  %.sroa.7.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x i16> %i.ev, ptr %.sroa.7.0..sroa_idx106, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker9extend_to(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br i1 %.sroa.9114.1, label %bb.dp, label %bb.do

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker7abandon(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.ex, align 4
  br label %bb.ej

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %.backedge

bb.dp:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ap, i64 12, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ej

.backedge:                                        ; preds = %.backedge.backedge, %bb.do
  %i.ey = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 26)
  br i1 %i.ey, label %.noexc, label %bb.dq

bb.dq:                                            ; preds = %.backedge
  %i.ez = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 28) ; 2 uses
  %6 = select i1 %i.ez, i16 269, i16 179
  br label %.noexc

.noexc:                                           ; preds = %bb.dq, %.backedge
  %.sroa.02.0 = phi i16 [ 269, %.backedge ], [ %6, %bb.dq ]
  %.sroa.02.0.a = phi i1 [ true, %.backedge ], [ %i.ez, %bb.dq ]
  %i.fa = call noundef i16 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser7current(ptr noundef nonnull align 8 %1)
  switch i16 %i.fa, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit [
    i16 11, label %.noexc25
    i16 12, label %.noexc26
    i16 17, label %.noexc27
    i16 18, label %.noexc28
    i16 19, label %.noexc29
    i16 20, label %.noexc30
    i16 21, label %.noexc31
    i16 22, label %.noexc32
    i16 23, label %.noexc33
    i16 25, label %.noexc34
    i16 31, label %.noexc35
    i16 34, label %.noexc36
    i16 36, label %.noexc37
    i16 56, label %bb.dr
  ]

.noexc25:                                         ; preds = %.noexc
  %i.fb = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 38)
  br i1 %i.fb, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc38

.noexc26:                                         ; preds = %.noexc
  %i.fc = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 53)
  br i1 %i.fc, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc40

.noexc27:                                         ; preds = %.noexc
  %i.fd = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 43)
  br i1 %i.fd, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc42

.noexc28:                                         ; preds = %.noexc
  %i.fe = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 49)
  br i1 %i.fe, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc43

.noexc29:                                         ; preds = %.noexc
  %i.ff = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 40)
  %..i = select i1 %i.ff, i32 16842792, i32 655379
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc30:                                         ; preds = %.noexc
  %i.fg = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 46)
  %.1.i = select i1 %i.fg, i32 16842798, i32 720916
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc31:                                         ; preds = %.noexc
  %i.fh = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 45)
  %.2.i = select i1 %i.fh, i32 16842797, i32 720917
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc32:                                         ; preds = %.noexc
  %i.fi = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 44)
  %.3.i = select i1 %i.fi, i32 16842796, i32 458774
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc33:                                         ; preds = %.noexc
  %i.fj = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 47)
  %.4.i = select i1 %i.fj, i32 16842799, i32 720919
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc34:                                         ; preds = %.noexc
  %i.fk = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 28)
  br i1 %i.fk, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc44

.noexc35:                                         ; preds = %.noexc
  %i.fl = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 32)
  br i1 %i.fl, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc45

.noexc36:                                         ; preds = %.noexc
  %i.fm = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 35)
  %spec.select.i = select i1 %i.fm, i32 327715, i32 13
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc37:                                         ; preds = %.noexc
  %i.fn = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 41)
  %.5.i = select i1 %i.fn, i32 16842793, i32 655396
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

bb.dr:                                            ; preds = %.noexc
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc38:                                         ; preds = %.noexc25
  %i.fo = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 52)
  br i1 %i.fo, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc39

.noexc39:                                         ; preds = %.noexc38
  %i.fp = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 50)
  %.6.i = select i1 %i.fp, i32 589874, i32 327691
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc40:                                         ; preds = %.noexc26
  %i.fq = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 51)
  br i1 %i.fq, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, label %.noexc41

.noexc41:                                         ; preds = %.noexc40
  %i.fr = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 39)
  %.7.i = select i1 %i.fr, i32 327719, i32 327692
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc42:                                         ; preds = %.noexc27
  %i.fs = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 48)
  %.8.i = select i1 %i.fs, i32 262192, i32 524305
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc43:                                         ; preds = %.noexc28
  %i.ft = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 42)
  %.9.i = select i1 %i.ft, i32 16842794, i32 393234
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc44:                                         ; preds = %.noexc34
  %i.fu = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 26)
  %spec.select10.i = select i1 %i.fu, i32 131098, i32 13
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

.noexc45:                                         ; preds = %.noexc35
  %i.fv = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 33)
  %spec.select11.i = select i1 %i.fv, i32 13, i32 16842783
  br label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit: ; preds = %.noexc45, %.noexc44, %.noexc43, %.noexc42, %.noexc41, %.noexc40, %.noexc39, %.noexc38, %bb.dr, %.noexc37, %.noexc36, %.noexc35, %.noexc34, %.noexc33, %.noexc32, %.noexc31, %.noexc30, %.noexc29, %.noexc28, %.noexc27, %.noexc26, %.noexc25, %.noexc
  %.sroa.0.0.i24 = phi i32 [ 786488, %bb.dr ], [ %.5.i, %.noexc37 ], [ %.6.i, %.noexc39 ], [ 327718, %.noexc25 ], [ 16842804, %.noexc38 ], [ %.4.i, %.noexc33 ], [ %.7.i, %.noexc41 ], [ 16842805, %.noexc26 ], [ 589875, %.noexc40 ], [ %.8.i, %.noexc42 ], [ %.3.i, %.noexc32 ], [ 16842795, %.noexc27 ], [ %.9.i, %.noexc43 ], [ %.2.i, %.noexc31 ], [ 196657, %.noexc28 ], [ %..i, %.noexc29 ], [ %.1.i, %.noexc30 ], [ 327712, %.noexc35 ], [ 13, %.noexc ], [ %spec.select10.i, %.noexc44 ], [ %spec.select11.i, %.noexc45 ], [ 131100, %.noexc34 ], [ %spec.select.i, %.noexc36 ] ; 3 uses
  %.sroa.018.0.extract.trunc = trunc i32 %.sroa.0.0.i24 to i16
  %.sroa.419.0.extract.shift = lshr i32 %.sroa.0.0.i24, 16
  %.sroa.419.0.extract.trunc = trunc i32 %.sroa.419.0.extract.shift to i8 ; 2 uses
  %.not22 = icmp samesign ult i32 %.sroa.0.0.i24, 16777216
  %i.fw = icmp ugt i8 %5, %.sroa.419.0.extract.trunc
  br i1 %i.fw, label %.loopexit, label %bb.ds

bb.ds:                                            ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit
  %i.fx = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 56)
  br i1 %i.fx, label %.noexc46, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.at, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef %.sroa.018.0.extract.trunc)
          to label %bb.dy unwind label %bb.eh

.noexc46:                                         ; preds = %bb.ds
  %i.fy = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 56)
  br i1 %i.fy, label %.noexc48, label %.noexc47, !prof !7

.noexc47:                                         ; preds = %.noexc46
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #12
  unreachable

.noexc48:                                         ; preds = %.noexc46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !126
  call void @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker7precede(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 56)
          to label %bb.du unwind label %bb.dw, !noalias !127

bb.du:                                            ; preds = %.noexc48
  invoke void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5types14type_no_bounds(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.dv unwind label %bb.dw, !noalias !127

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false), !noalias !126
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 184)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !126
  br label %.backedge.backedge

bb.dw:                                            ; preds = %bb.du, %.noexc48
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w) #11
          to label %common.resume unwind label %bb.dx, !noalias !127

bb.dx:                                            ; preds = %bb.dw
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10, !noalias !127
  unreachable

bb.dy:                                            ; preds = %bb.dt
  br i1 %.sroa.02.0.a, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.ec, %bb.ef, %bb.dy
  %i.ga = zext i1 %.not22 to i8
  %.sroa.010.0 = add nuw nsw i8 %.sroa.419.0.extract.trunc, %i.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 -2, ptr %i.aq, align 8
  invoke fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.ar, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.aq, i1 noundef zeroext %3, i1 noundef zeroext false, i8 noundef %.sroa.010.0)
          to label %bb.eg unwind label %bb.eh

bb.ea:                                            ; preds = %bb.dy
  %i.gb = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5at_ts(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @25)
          to label %bb.eb unwind label %bb.eh

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.gb, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  br i1 %3, label %bb.ee, label %bb.dz

bb.ed:                                            ; preds = %bb.eb, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef 269)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.loopexit

bb.ee:                                            ; preds = %bb.ec
  %i.gc = invoke noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %1, i16 noundef 7)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.gc, label %bb.ed, label %bb.dz

.loopexit:                                        ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions10current_op.exit, %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ap, i64 12, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %.sroa.413.0..sroa_idx, align 4
  br label %bb.ej

bb.eg:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i16 noundef %.sroa.02.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.eg, %bb.dv
  br label %.backedge

bb.eh:                                            ; preds = %bb.dz, %bb.ee, %bb.ea, %bb.dt
  %lpad.thr_comm166 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.at) #11
          to label %common.resume unwind label %bb.ei

bb.ei:                                            ; preds = %.thread125, %bb.eh
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.ej:                                            ; preds = %bb.dk, %bb.dp, %bb.dn, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  ret void

.thread125:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cs, %bb.cl, %bb.bl, %bb.bp, %bb.ch, %bb.an, %.body58
  %eh.lpad-body128 = phi { ptr, i32 } [ %lpad.thr_comm.i7.i.i, %bb.ch ], [ %lpad.thr_comm.i.i.i, %bb.bl ], [ %lpad.thr_comm.split-lp149, %.body58 ], [ %lpad.thr_comm157, %bb.cs ], [ %i.ef, %bb.cl ], [ %lpad.thr_comm.i.i, %bb.bp ], [ %i.ci, %bb.an ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ay) #11
          to label %common.resume unwind label %bb.ei
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8arg_list(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 5)
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  invoke void @_RINvNtCsdVrXiLXuAnx_6parser7grammar9delimitedNCNvNtB2_11expressions8arg_list0NCBJ_s_0EB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 5, i16 noundef 6, i16 noundef 4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @25)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 159)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser6parser6MarkerEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #11
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8expr_let(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -2, ptr %i.a, align 8
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions8let_stmt(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [12 x i8], align 8                ; 6 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 89) ; 0 uses
  tail call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 74)
  tail call void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar8patterns7pattern(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  %i.h = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 29)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar5types10ascription(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 31)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 64)
  br i1 %i.j, label %.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131
  store i64 -2, ptr %i.a, align 8, !noalias !131
  call fastcc void @_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions7expr_bp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef 1), !noalias !132, !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i16, ptr %i.k, align 8, !range !9, !noalias !131, !noundef !5 ; 2 uses
  %.not.i = icmp eq i16 %i.l, -1
  br i1 %.not.i, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit.thread, label %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit: ; preds = %bb.e
  %.sroa.0.0.copyload9 = load i64, ptr %i.b, align 8, !noalias !133
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.5.0.copyload13 = load i16, ptr %.sroa.5.0..sroa_idx12, align 2, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  %i.m = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 64)
  br i1 %i.m, label %bb.g, label %bb.f

_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  %i.n = tail call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser2at(ptr noundef nonnull align 8 %0, i16 noundef 64)
  br i1 %i.n, label %.thread, label %bb.f

.thread.sink.split:                               ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit.thread, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  invoke void @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser4bump(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 64)
          to label %bb.i unwind label %bb.o

bb.f:                                             ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit.thread, %bb.d, %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit, %bb.j
  switch i8 %1, label %default.unreachable29 [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.g:                                             ; preds = %_RNvNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.0.copyload9, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i16 %i.l, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i16 %.sroa.5.0.copyload13, ptr %.sroa.5.0..sroa_idx, align 2
  %i.o = call noundef i16 @_RNvMs0_NtCsdVrXiLXuAnx_6parser6parserNtB5_15CompletedMarker10last_token(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.f, ptr noundef nonnull align 8 %0)
  %i.p = icmp eq i16 %i.o, 8
  br i1 %i.p, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  call void @_RINvMNtCsdVrXiLXuAnx_6parser6parserNtB3_6Parser5errorReEB5_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 75)
  br label %.thread.sink.split

bb.i:                                             ; preds = %.thread
  invoke void @_RNvNtNtNtCsdVrXiLXuAnx_6parser7grammar11expressions4atom10block_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @_RNvMs_NtCsdVrXiLXuAnx_6parser6parserNtB4_6Marker8complete(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 224)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

default.unreachable29:                            ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.q = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser6expect(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 3) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.r = call noundef zeroext i1 @_RNvMNtCsdVrXiLXuAnx_6parser6parserNtB2_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i16 noundef 3) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.f
  ret void

bb.n:                                             ; preds = %bb.o
end_hunk_0
