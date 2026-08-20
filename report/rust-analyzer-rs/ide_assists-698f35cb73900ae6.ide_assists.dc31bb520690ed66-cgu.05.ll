inline.NumInlined: 5238
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then23convert_bool_then_to_if:bb.a
  store i32 %i.cn, ptr %i.cl, align 4, !noalias !762
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ai, label %.body105

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i) #30
          to label %.body105 unwind label %bb.ak, !noalias !762

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_B1t_EEECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_ECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i, %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !762, !noundef !5 ; 3 uses
  %i.cq = icmp eq ptr %.val.i.i, null
  br i1 %i.cq, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_B1t_EEECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !762, !noundef !5
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 4, !noalias !762
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !762
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.aj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #30
          to label %bb.an unwind label %bb.x

bb.al:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !5
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit110

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ax) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit110 unwind label %bb.ap

bb.an:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Exprj2_B1t_EEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !noundef !5
  %i.dc = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit113

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ax) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit113 unwind label %.split.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit142: ; preds = %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i140, %.thread188, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit113
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !noundef !5
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit142
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aw) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.p

.thread183.thread:                                ; preds = %bb.ax, %bb.av, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i126
  %lpad.thr_comm198 = landingpad { ptr, i32 }
          cleanup
  br label %.thread166

.thread183:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i129
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit151

bb.ap:                                            ; preds = %bb.am
  %lpad.thr_comm.split-lp182 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !noundef !5
  %i.dk = add i32 %i.dj, -1                       ; 2 uses
  store i32 %i.dk, ptr %i.di, align 4
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.invoke, label %.thread166

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit110: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dm = icmp eq i64 %i.bk, 9
  br i1 %i.dm, label %bb.aq, label %bb.bx

bb.aq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  store ptr %i.bm, ptr %i.i, align 8
  %i.dn = invoke { i64, ptr } @_RNvMsh_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes11ClosureExpr4body(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.at unwind label %bb.ar     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !noundef !5
  %i.dr = add i32 %i.dq, -1                       ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 4
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.as, label %.thread166

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #30
          to label %.thread166 unwind label %bb.bw

bb.at:                                            ; preds = %bb.aq
  %i.dt = extractvalue { i64, ptr } %i.dn, 0      ; 2 uses
  %.not44 = icmp eq i64 %i.dt, -1
  br i1 %.not44, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.du = extractvalue { i64, ptr } %i.dn, 1      ; 4 uses
  store i64 %i.dt, ptr %i.j, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.du, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !noundef !5
  %i.dy = add i32 %i.dx, -1                       ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 4
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit119

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit119 unwind label %.thread183.thread

bb.aw:                                            ; preds = %bb.at
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !noundef !5
  %i.ec = add i32 %i.eb, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 4
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ax, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit122

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit122 unwind label %.thread183.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit122: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.thread188

.thread188:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit122, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i126, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit142

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit119: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl19resolve_method_call(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull align 8 %i.ef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.bh, %bb.az
  %.val77 = phi ptr [ %.val77.pre, %bb.az ], [ %i.du, %bb.bh ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.az ], [ %i.es, %bb.bh ] ; 2 uses
  %.sroa.029.4 = phi i1 [ %.sroa.029.5, %bb.az ], [ true, %bb.bh ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.val77, i64 48 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !5
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 4
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i123, label %bb.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i123: ; preds = %bb.ay
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val77) #30
          to label %bb.t unwind label %bb.bw

bb.az:                                            ; preds = %bb.bi, %bb.bv, %bb.br, %bb.bq, %bb.bl, %bb.bj, %bb.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit119
  %.sroa.029.5 = phi i1 [ true, %bb.bv ], [ false, %bb.br ], [ true, %bb.bq ], [ true, %bb.bl ], [ true, %bb.bj ], [ true, %bb.bi ], [ true, %bb.bb ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit119 ]
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %.val77.pre = load ptr, ptr %i.dv, align 8
  br label %bb.ay

bb.ba:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit119
  %i.el = load i8, ptr %i.h, align 4, !range !592, !noundef !5
  %.not45 = icmp eq i8 %i.el, 2
  br i1 %.not45, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.em = load ptr, ptr %i.ee, align 8, !nonnull !5, !align !212, !noundef !5
  %i.en = invoke noundef nonnull ptr @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b, ptr noundef nonnull %i.em, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @68)
          to label %bb.be unwind label %bb.az     ; 3 uses

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bv, %bb.bo, %bb.bp, %bb.bm, %bb.bc
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !noundef !5
  %i.eq = add i32 %i.ep, -1                       ; 2 uses
  store i32 %i.eq, ptr %i.eo, align 4
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i126, label %.thread188

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i126: ; preds = %bb.bd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.du) #30
          to label %.thread188 unwind label %.thread183.thread

bb.be:                                            ; preds = %bb.bb
  %.not46 = icmp eq ptr %i.en, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4then10SYMBOL_STR
  br i1 %.not46, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsiU5vK8fN4ZC_11ide_assists(ptr nonnull @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4then10SYMBOL_STR)
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsiU5vK8fN4ZC_11ide_assists(ptr nonnull @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4then10SYMBOL_STR)
          to label %bb.bv unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.en) #32
          to label %bb.ay unwind label %bb.bw

bb.bi:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists(ptr nonnull @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4then10SYMBOL_STR)
          to label %bb.bj unwind label %bb.az

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.et = load ptr, ptr %i.ee, align 8, !nonnull !5, !align !212, !noundef !5
  invoke void @_RNvXsT_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b, ptr noundef nonnull %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @68)
          to label %bb.bk unwind label %bb.az

bb.bk:                                            ; preds = %bb.bj
  %i.eu = load i8, ptr %i.g, align 4, !range !763, !noundef !5
  %.not47 = icmp eq i8 %i.eu, -1
  br i1 %.not47, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ev = load ptr, ptr %i.ee, align 8, !nonnull !5, !align !212, !noundef !5
  invoke void @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem15implementing_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.f, ptr noundef nonnull %i.ev, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @68)
          to label %bb.bn unwind label %bb.az

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bd

bb.bn:                                            ; preds = %bb.bl
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !range !737, !noundef !5
  %.not48 = icmp eq i32 %i.ex, -1
  br i1 %.not48, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.032.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.034.0.copyload = load i32, ptr %.sroa.032.0.copyload, align 8 ; 2 uses
  %i.ey = icmp ne i32 %.sroa.034.0.copyload, 27
  call void @llvm.assume(i1 %i.ey)
  %i.ez = icmp eq i32 %.sroa.034.0.copyload, 2
  br i1 %i.ez, label %bb.bq, label %bb.bd

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bd

bb.bq:                                            ; preds = %bb.bo
  %i.fa = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.fb = invoke fastcc { i32, i32 } @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range(ptr noundef nonnull align 8 %i.fa)
          to label %bb.br unwind label %bb.az     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.fc = extractvalue { i32, i32 } %i.fb, 0
  %i.fd = extractvalue { i32, i32 } %i.fb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @100, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 23, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 5, ptr %i.fg, align 8
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.m, ptr %i.fi, align 8
  store i64 %i.av, ptr %i.c, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aw, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %i.fk, align 8
  %i.fl = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addReNCNvNtNtB7_8handlers17convert_bool_then23convert_bool_then_to_if0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 33, i32 noundef %i.fc, i32 noundef %i.fd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c)
          to label %bb.bs unwind label %bb.az     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val73 = load ptr, ptr %i.dv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val73, i64 48 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !noundef !5
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.fm, align 4
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i129, label %bb.bt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i129: ; preds = %bb.bs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val73) #30
          to label %bb.bt unwind label %.thread183

bb.bt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i129, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val61 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val61, i64 48 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !noundef !5
  %i.fs = add i32 %i.fr, -1                       ; 2 uses
  store i32 %i.fs, ptr %i.fq, align 4
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit134

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val61) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit134 unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit134: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !noundef !5
  %i.fw = add i32 %i.fv, -1                       ; 2 uses
  store i32 %i.fw, ptr %i.fu, align 8
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit97.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit97

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit97.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit134, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit102
  %.sroa.0.7.ph = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit102 ], [ %i.fl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit134 ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.q) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit97

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit97: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit97.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit134, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit102, %bb.a
  %.sroa.0.7 = phi i1 [ %i.fl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit134 ], [ false, %bb.a ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14MethodCallExprECsiU5vK8fN4ZC_11ide_assists.exit102 ], [ %.sroa.0.7.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit97.sink.split ]
  ret i1 %.sroa.0.7

bb.bv:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.en)
          to label %bb.bd unwind label %bb.az

bb.bw:                                            ; preds = %.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i123, %bb.as, %bb.y, %bb.o, %bb.e, %bb.bh
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !noundef !5
  %i.gb = add i32 %i.ga, -1                       ; 2 uses
  store i32 %i.gb, ptr %i.fz, align 4
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i140, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit142

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i140: ; preds = %bb.bx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit142 unwind label %.split.thread

.invoke:                                          ; preds = %bb.ap
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #30
          to label %.thread166 unwind label %bb.bw

.thread166:                                       ; preds = %bb.ap, %.invoke, %bb.as, %bb.ar, %.thread183.thread, %bb.y, %.body105, %.split.thread, %bb.t
  %.pn52169 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp182, %bb.ap ], [ %.pn, %bb.t ], [ %lpad.thr_comm, %.split.thread ], [ %eh.lpad-body106, %bb.y ], [ %eh.lpad-body106, %.body105 ], [ %i.do, %bb.as ], [ %lpad.thr_comm.split-lp182, %.invoke ], [ %i.do, %bb.ar ], [ %lpad.thr_comm198, %.thread183.thread ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !noundef !5
  %i.gf = add i32 %i.ge, -1                       ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 4
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit151

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149: ; preds = %.thread166
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aw) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit151 unwind label %bb.bw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %.pn56
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17convert_bool_then23convert_if_to_bool_then(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !noundef !5
  %i.n = tail call noundef ptr @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtNtB4_3ast9generated5nodes6IfExprECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i32 noundef %i.m) ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6IfExprECsiU5vK8fN4ZC_11ide_assists.exit95, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.n, ptr %i.j, align 8
  %i.o = invoke fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr nonnull %i.n, i16 noundef 71)
          to label %bb.e unwind label %bb.d       ; 11 uses

.body:                                            ; preds = %bb.bl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i131, %.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit130, %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.n, %bb.o, %bb.d, %bb.aa
  %.pn47 = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn43171, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9BlockExprECsiU5vK8fN4ZC_11ide_assists.exit130 ], [ %.pn43, %bb.aa ], [ %i.t, %bb.d ], [ %i.al, %bb.o ], [ %i.bj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i ], [ %i.bj, %bb.v ], [ %lpad.thr_comm.split-lp, %.split ], [ %.pn45160, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i131 ], [ %.pn45160, %bb.bl ]
  %.val64 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val64, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !5
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4
  %i.s = icmp eq i32 %i.r, 0
end_hunk_0
