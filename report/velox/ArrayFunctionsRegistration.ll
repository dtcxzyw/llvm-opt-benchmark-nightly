inline.NumInlined: 171859
inline.NumDeleted: 43813
loop-unroll.NumCompletelyUnrolled: 1306
loop-unroll.NumRuntimeUnrolled: 817
loop-unroll.NumUnrolled: 2123
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENS3_24ConstantFlatVectorReaderIiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSJ_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27412, !noalias !27415, !nonnull !797, !align !916 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27418, !noalias !27415, !nonnull !797, !align !916 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1526, !nonnull !797, !align !916 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 58
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.noexc9, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 59
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1255
  br label %.noexc9

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %indvars.iv295, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  br label %.noexc9

.noexc9:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bo, %bb.l ], [ %i.bj, %bb.k ], [ %i.as, %bb.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1261
  %i.bs = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1265
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bs
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.bz = load ptr, ptr %i.az, align 8, !tbaa !21305, !noalias !27419
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !21308, !noalias !27419
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %indvars.iv295, %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3, !noalias !27419 ; 7 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.noexc16, label %bb.o, !prof !81

.noexc16:                                         ; preds = %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !27422
  store i32 %i.cf, ptr %2, align 16, !tbaa !13, !alias.scope !27425, !noalias !27422
  store i32 0, ptr %i.aj, align 16, !tbaa !13, !alias.scope !27425, !noalias !27422
  store i32 %i.cf, ptr %i.ak, align 16, !tbaa !13, !alias.scope !27425, !noalias !27422
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %2)
          to label %.noexc17 unwind label %bb.bu

.noexc17:                                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !27422
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.302) #45
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc17
  unreachable

bb.n:                                             ; preds = %.noexc17
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ci = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.al
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ck = load i64, ptr %i.al, align 8, !tbaa !13
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.body

bb.o:                                             ; preds = %.noexc9
  %i.cm = icmp eq i32 %i.cf, 0
  %i.cn = icmp eq i32 %i.by, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond, label %bb.bq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = add nsw i32 %i.by, %i.bu
  %i.cp = zext nneg i32 %i.cf to i64
  %i.cq = sext i32 %i.bu to i64
  br label %bb.u

bb.q:                                             ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %i.cr = ptrtoint ptr %.sroa.20.1 to i64
  %i.cs = ptrtoint ptr %.sroa.0163.1 to i64       ; 4 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.r, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc21 unwind label %bb.bc

.noexc21:                                         ; preds = %bb.r
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.q
  %.not.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #42
          to label %.noexc22 unwind label %bb.bc  ; 5 uses

.noexc22:                                         ; preds = %bb.s
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.ct  ; 3 uses
  store i8 0, ptr %i.cv, align 1, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 2 uses
  %i.cy = add nsw i64 %i.ct, -1                   ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.t

bb.t:                                             ; preds = %.noexc22
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cx, i8 0, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit

bb.u:                                             ; preds = %bb.p, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %indvars.iv = phi i64 [ %i.cq, %bb.p ], [ %indvars.iv.next, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 10 uses
  %.028.i269 = phi i32 [ 0, %bb.p ], [ %.129.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 7 uses
  %.sroa.0163.0268 = phi ptr [ null, %bb.p ], [ %.sroa.0163.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 18 uses
  %.sroa.20.0267 = phi ptr [ null, %bb.p ], [ %.sroa.20.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 12 uses
  %.sroa.38.0266 = phi ptr [ null, %bb.p ], [ %.sroa.38.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 8 uses
  %i.da = load ptr, ptr %i.bp, align 8, !tbaa !1531, !nonnull !797, !align !916 ; 15 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 58
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 57
  %i.dh = load i8, ptr %i.dg, align 1, !range !796
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond.i.i.i = select i1 %i.df, i1 true, i1 %i.di
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dj = lshr i64 %indvars.iv, 6
  %i.dk = and i64 %i.dj, 67108863
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !855
  %i.dn = and i64 %indvars.iv, 63
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.dm, %i.do
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 59
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dt = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.du = and i64 %i.dt, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1529
  %i.dx = shl nsw i64 %indvars.iv, 2
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !855
  %i.ee = and i64 %i.ea, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %i.ed
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i.i.in = phi i64 [ %i.dp, %bb.w ], [ %i.du, %bb.y ], [ %i.eg, %bb.z ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.ax, label %.thread

.thread:                                          ; preds = %bb.u, %bb.aa
  %i.eh = ptrtoint ptr %.sroa.20.0267 to i64
  %i.ei = ptrtoint ptr %.sroa.0163.0268 to i64    ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 15 uses
  %i.ek = icmp ult i64 %i.ej, %i.cp
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1547 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.da, i64 58
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ep = trunc nuw i8 %i.eo to i1                ; 2 uses
  br i1 %i.ek, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %.thread
  %i.eq = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ep, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %i.da, i64 59
  %i.es = load i8, ptr %i.er, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !1255
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.ey = shl nsw i64 %indvars.iv, 2
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.fa, %bb.ae ], [ %i.ev, %bb.ad ], [ %i.eq, %bb.ab ]
  %i.fb = sext i32 %.0.i.i.i.i to i64
  %i.fc = getelementptr inbounds i8, ptr %i.em, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %.sroa.20.0267, %.sroa.38.0266
  br i1 %.not.i.i.i25, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %i.fd, ptr %.sroa.20.0267, align 1, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.af
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  %i.fe = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ej
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fe, i64 9223372036854775807) ; 2 uses
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #42
          to label %.noexc28 unwind label %.loopexit215 ; 5 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ej ; 3 uses
  store i8 %i.fd, ptr %i.fh, align 1, !tbaa !13
  %i.fi = icmp sgt i64 %i.ej, 0
  br i1 %i.fi, label %bb.ah, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.ah:                                            ; preds = %.noexc28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr align 1 %.sroa.0163.0268, i64 %i.ej, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ah, %.noexc28
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0163.0268, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0163.0268, i64 noundef %i.ej) #43
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ai, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  %.pre298 = load i8, ptr %i.fh, align 1, !tbaa !13
  %.pre299 = ptrtoint ptr %i.fg to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i:         ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.ag
  %.pre-phi = phi i64 [ %.pre299, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.ei, %bb.ag ]
  %i.fk = phi i8 [ %.pre298, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.fd, %bb.ag ] ; 2 uses
  %.sroa.38.2 = phi ptr [ %i.fj, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.38.0266, %bb.ag ]
  %.pn202 = phi ptr [ %i.fh, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.20.0267, %bb.ag ]
  %.sroa.0163.2 = phi ptr [ %i.fg, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0163.0268, %bb.ag ] ; 4 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn202, i64 1 ; 2 uses
  %i.fl = ptrtoint ptr %.sroa.20.3 to i64
  %i.fm = xor i64 %.pre-phi, -1
  %i.fn = add i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i, %bb.aj
  %.019.i.i.i = phi i64 [ %.0920.i56.i.i, %bb.aj ], [ %i.fn, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i56.i.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0163.2, i64 %.0920.i56.i.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13  ; 2 uses
  %i.fr = icmp sgt i8 %i.fq, %i.fk
  br i1 %i.fr, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0163.2, i64 %.019.i.i.i
  store i8 %i.fq, ptr %i.fs, align 1, !tbaa !13
  %.not.i.i26 = icmp eq i64 %.0920.i56.i.i, 0
  br i1 %.not.i.i26, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !27428

.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i.i.i, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.fn, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.aj ]
  %i.ft = getelementptr inbounds i8, ptr %.sroa.0163.2, i64 %.0.lcssa.i.i.i
  store i8 %i.fk, ptr %i.ft, align 1, !tbaa !13
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.loopexit215:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit217 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit90

bb.ak:                                            ; preds = %.thread
  br i1 %i.ep, label %.thread195, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %i.da, i64 59
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.am, label %.thread334

bb.am:                                            ; preds = %bb.al
  %i.fx = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %.0.i.i.i.i30 = load i32, ptr %i.fx, align 8, !tbaa !3
  %i.fy = sext i32 %.0.i.i.i.i30 to i64
  %i.fz = getelementptr inbounds i8, ptr %i.em, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.gb = load i8, ptr %.sroa.0163.0268, align 1, !tbaa !13
  %i.gc = icmp sgt i8 %i.ga, %i.gb
  br i1 %i.gc, label %bb.an, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread334:                                       ; preds = %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1529
  %i.gf = shl nsw i64 %indvars.iv, 2
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  %.0.i.i.i.i30336 = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gh = sext i32 %.0.i.i.i.i30336 to i64
  %i.gi = getelementptr inbounds i8, ptr %i.em, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !13
  %i.gk = load i8, ptr %.sroa.0163.0268, align 1, !tbaa !13
  %i.gl = icmp sgt i8 %i.gj, %i.gk
  br i1 %i.gl, label %.thread337, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread195:                                       ; preds = %bb.ak
  %i.gm = getelementptr inbounds i8, ptr %i.em, i64 %indvars.iv
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !13
  %i.go = load i8, ptr %.sroa.0163.0268, align 1, !tbaa !13
  %i.gp = icmp sgt i8 %i.gn, %i.go
  %i.gq = trunc nsw i64 %indvars.iv to i32
  br i1 %i.gp, label %.thread197, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.an:                                            ; preds = %bb.am
  %i.gr = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !1255
  br label %.thread197

.thread337:                                       ; preds = %.thread334
  %i.gt = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !1529
  %i.gv = shl nsw i64 %indvars.iv, 2
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3
  br label %.thread197

.thread197:                                       ; preds = %.thread195, %.thread337, %bb.an
  %.0.i.i.i.i33 = phi i32 [ %i.gx, %.thread337 ], [ %i.gs, %bb.an ], [ %i.gq, %.thread195 ]
  %i.gy = sext i32 %.0.i.i.i.i33 to i64
  %i.gz = getelementptr inbounds i8, ptr %i.em, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %.sroa.20.0267, %.sroa.38.0266
  br i1 %.not.i.i.i35, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread197
  store i8 %i.ha, ptr %.sroa.20.0267, align 1, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i37

bb.ap:                                            ; preds = %.thread197
  %i.hb = icmp eq i64 %i.ej, 9223372036854775807
  br i1 %i.hb, label %bb.aq, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i44

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc50 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit90.thread.loopexit.split-lp

.noexc50:                                         ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i44: ; preds = %bb.ap
  %7 = shl i64 %i.ej, 1
  %8 = icmp slt i64 %i.ej, 0
  %i.hc = call i64 @llvm.umin.i64(i64 %7, i64 9223372036854775807)
  %i.hd = select i1 %8, i64 9223372036854775807, i64 %i.hc ; 3 uses
  %.not.i.i.i.i.i46 = icmp ne i64 %i.hd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i46)
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #42
          to label %.noexc51 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit90.thread.loopexit ; 5 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i44
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.ej ; 3 uses
  store i8 %i.ha, ptr %i.hf, align 1, !tbaa !13
  %i.hg = icmp sgt i64 %i.ej, 0
  br i1 %i.hg, label %bb.ar, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49

bb.ar:                                            ; preds = %.noexc51
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.he, ptr nonnull align 1 %.sroa.0163.0268, i64 %i.ej, i1 false)
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49: ; preds = %bb.ar, %.noexc51
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0163.0268, i64 noundef %i.ej) #43
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hd
  %.pre = load i8, ptr %i.hf, align 1, !tbaa !13
  %.pre300 = ptrtoint ptr %i.he to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i37

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i37:       ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49, %bb.ao
  %.pre-phi301 = phi i64 [ %.pre300, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49 ], [ %i.ei, %bb.ao ] ; 3 uses
  %i.hi = phi i8 [ %.pre, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49 ], [ %i.ha, %bb.ao ] ; 2 uses
  %.sroa.38.3 = phi ptr [ %i.hh, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49 ], [ %.sroa.38.0266, %bb.ao ] ; 2 uses
  %.pn = phi ptr [ %i.hf, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49 ], [ %.sroa.20.0267, %bb.ao ] ; 6 uses
  %.sroa.0163.3 = phi ptr [ %i.he, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i49 ], [ %.sroa.0163.0268, %bb.ao ] ; 15 uses
  %.sroa.20.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.hj = ptrtoint ptr %.sroa.20.4 to i64         ; 2 uses
  %i.hk = xor i64 %.pre-phi301, -1
  %i.hl = add i64 %i.hj, %i.hk                    ; 3 uses
  %i.hm = icmp sgt i64 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i.i.i39, label %.loopexit203

.lr.ph.i.i.i39:                                   ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i37, %bb.as
  %.019.i.i.i40 = phi i64 [ %.0920.i56.i.i42, %bb.as ], [ %i.hl, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i37 ] ; 3 uses
  %.0920.in.i.i.i41 = add nsw i64 %.019.i.i.i40, -1
  %.0920.i56.i.i42 = lshr i64 %.0920.in.i.i.i41, 1 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0163.3, i64 %.0920.i56.i.i42
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !13  ; 2 uses
  %i.hp = icmp sgt i8 %i.ho, %i.hi
  br i1 %i.hp, label %bb.as, label %.loopexit203

bb.as:                                            ; preds = %.lr.ph.i.i.i39
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0163.3, i64 %.019.i.i.i40
  store i8 %i.ho, ptr %i.hq, align 1, !tbaa !13
  %.not.i.i43 = icmp eq i64 %.0920.i56.i.i42, 0
  br i1 %.not.i.i43, label %.loopexit203, label %.lr.ph.i.i.i39, !llvm.loop !27428

.loopexit203:                                     ; preds = %bb.as, %.lr.ph.i.i.i39, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i37
  %.0.lcssa.i.i.i38 = phi i64 [ %i.hl, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i37 ], [ %.019.i.i.i40, %.lr.ph.i.i.i39 ], [ 0, %bb.as ]
  %i.hr = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %.0.lcssa.i.i.i38
  store i8 %i.hi, ptr %i.hr, align 1, !tbaa !13
  %i.hs = sub i64 %i.hj, %.pre-phi301
  %i.ht = icmp sgt i64 %i.hs, 1
  br i1 %i.ht, label %bb.at, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.at:                                            ; preds = %.loopexit203
  %i.hu = load i8, ptr %.pn, align 1, !tbaa !13   ; 2 uses
  %i.hv = load i8, ptr %.sroa.0163.3, align 1, !tbaa !13
  store i8 %i.hv, ptr %.pn, align 1, !tbaa !13
  %i.hw = ptrtoint ptr %.pn to i64
  %i.hx = sub i64 %i.hw, %.pre-phi301             ; 4 uses
  %i.hy = add nsw i64 %i.hx, -1
  %i.hz = sdiv i64 %i.hy, 2
  %i.ia = icmp sgt i64 %i.hx, 2
  br i1 %i.ia, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.at, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.at ] ; 2 uses
  %i.ib = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.ic = add i64 %i.ib, 2                        ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %i.ic
  %i.ie = or disjoint i64 %i.ib, 1                ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %i.ie
  %i.ig = load i8, ptr %i.id, align 1, !tbaa !13
  %i.ih = load i8, ptr %i.if, align 1, !tbaa !13
  %i.ii = icmp sgt i8 %i.ig, %i.ih
  %spec.select.i.i.i.i = select i1 %i.ii, i64 %i.ie, i64 %i.ic ; 4 uses
  %i.ij = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %spec.select.i.i.i.i
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !13
  %i.il = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %.035.i.i.i.i
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !13
  %i.im = icmp slt i64 %spec.select.i.i.i.i, %i.hz
  br i1 %i.im, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27429

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.at
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.at ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.in = and i64 %i.hx, 1
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ip = add nsw i64 %i.hx, -2
  %i.iq = ashr exact i64 %i.ip, 1
  %i.ir = icmp eq i64 %.0.lcssa.i.i.i.i, %i.iq
  br i1 %i.ir, label %.thread.i.i.i, label %bb.av

.thread.i.i.i:                                    ; preds = %bb.au
  %i.is = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.it = or disjoint i64 %i.is, 1                ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0163.3, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !13
  %i.iw = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %.0.lcssa.i.i.i.i
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !13
  br label %.lr.ph.i.i.i.i.i.preheader

bb.av:                                            ; preds = %bb.au, %._crit_edge.i.i.i.i
  %.not.i.i.i53 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i53, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.av, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.av ], [ %i.it, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.aw
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.aw ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0163.3, i64 %.0920.i.i67.i.i.i
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !13  ; 2 uses
  %i.iz = icmp sgt i8 %i.iy, %i.hu
  br i1 %i.iz, label %bb.aw, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ja = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %.019.i.i.i.i.i
  store i8 %i.iy, ptr %i.ja, align 1, !tbaa !13
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i: ; preds = %bb.aw, %.lr.ph.i.i.i.i.i, %bb.av
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.av ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.aw ]
  %i.jb = getelementptr inbounds i8, ptr %.sroa.0163.3, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.hu, ptr %i.jb, align 1, !tbaa !13
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt6vectorIaSaIaEED2Ev.exit90.thread.loopexit:  ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i44
  %lpad.loopexit212 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit90.thread

_ZNSt6vectorIaSaIaEED2Ev.exit90.thread.loopexit.split-lp: ; preds = %bb.aq
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit90.thread

bb.ax:                                            ; preds = %bb.aa
  %i.jc = add nsw i32 %.028.i269, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit: ; preds = %.thread334, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, %.loopexit203, %.thread195, %bb.ax, %bb.am, %.loopexit
  %.sroa.38.1 = phi ptr [ %.sroa.38.2, %.loopexit ], [ %.sroa.38.0266, %.thread195 ], [ %.sroa.38.0266, %bb.am ], [ %.sroa.38.0266, %bb.ax ], [ %.sroa.38.3, %.loopexit203 ], [ %.sroa.38.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.38.0266, %.thread334 ] ; 5 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.3, %.loopexit ], [ %.sroa.20.0267, %.thread195 ], [ %.sroa.20.0267, %bb.am ], [ %.sroa.20.0267, %bb.ax ], [ %.pn, %.loopexit203 ], [ %.pn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.20.0267, %.thread334 ] ; 4 uses
  %.sroa.0163.1 = phi ptr [ %.sroa.0163.2, %.loopexit ], [ %.sroa.0163.0268, %.thread195 ], [ %.sroa.0163.0268, %bb.am ], [ %.sroa.0163.0268, %bb.ax ], [ %.sroa.0163.3, %.loopexit203 ], [ %.sroa.0163.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.0163.0268, %.thread334 ] ; 19 uses
  %.129.i = phi i32 [ %.028.i269, %.loopexit ], [ %.028.i269, %.thread195 ], [ %.028.i269, %bb.am ], [ %i.jc, %bb.ax ], [ %.028.i269, %.loopexit203 ], [ %.028.i269, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.028.i269, %.thread334 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jd = trunc nsw i64 %indvars.iv.next to i32
  %i.je = icmp eq i32 %i.co, %i.jd
  br i1 %i.je, label %bb.q, label %bb.u

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit:               ; preds = %bb.t, %.noexc22, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.cw, %bb.t ], [ %i.cw, %.noexc22 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0136.0 = phi ptr [ %i.cv, %bb.t ], [ %i.cv, %.noexc22 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cw, %bb.t ], [ %i.cx, %.noexc22 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.jf = icmp eq ptr %.sroa.0163.1, %.sroa.20.1
  br i1 %i.jf, label %.preheader206, label %.lr.ph

.preheader206:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit72, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit
  %i.jg = icmp eq ptr %.sroa.0136.0, %.0.i.i.i.i.i
  br i1 %i.jg, label %.preheader, label %.lr.ph273

.lr.ph273:                                        ; preds = %.preheader206
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aq, i64 60 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.aq, i64 68 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  br label %bb.bd

.lr.ph:                                           ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit72
  %.027.i271 = phi i64 [ %i.jm, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit72 ], [ %i.ct, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ]
  %.sroa.20.2270 = phi ptr [ %i.kz, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit72 ], [ %.sroa.20.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ] ; 3 uses
  %i.jl = load i8, ptr %.sroa.0163.1, align 1, !tbaa !13 ; 2 uses
  %i.jm = add i64 %.027.i271, -1                  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0136.0, i64 %i.jm
  store i8 %i.jl, ptr %i.jn, align 1, !tbaa !13
  %i.jo = ptrtoint ptr %.sroa.20.2270 to i64
  %i.jp = sub i64 %i.jo, %i.cs
  %i.jq = icmp sgt i64 %i.jp, 1
  br i1 %i.jq, label %bb.ay, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit72

bb.ay:                                            ; preds = %.lr.ph
  %i.jr = getelementptr inbounds i8, ptr %.sroa.20.2270, i64 -1 ; 3 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !13  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENS3_24ConstantFlatVectorReaderIiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSJ_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27412, !noalias !27444, !nonnull !797, !align !916 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27418, !noalias !27444, !nonnull !797, !align !916 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1526, !nonnull !797, !align !916 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.noexc16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 59
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1255
  br label %.noexc16

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1529
  %i.at = shl nsw i64 %i.ac, 2
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  br label %.noexc16

.noexc16:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.av, %bb.e ], [ %i.aq, %bb.d ], [ %i.u, %bb.b ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1261
  %i.az = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1265
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !21305, !noalias !27447
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !21308, !noalias !27447
  %i.bj = mul nsw i32 %i.bi, %i.u
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3, !noalias !27447 ; 7 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %.noexc23, label %bb.h, !prof !81

.noexc23:                                         ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !27450
  store i32 %i.bm, ptr %3, align 16, !tbaa !13, !alias.scope !27453, !noalias !27450
  store i32 0, ptr %i.o, align 16, !tbaa !13, !alias.scope !27453, !noalias !27450
  store i32 %i.bm, ptr %i.p, align 16, !tbaa !13, !alias.scope !27453, !noalias !27450
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %3)
          to label %.noexc24 unwind label %bb.bn

.noexc24:                                         ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !27450
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.302) #45
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc24
  unreachable

bb.g:                                             ; preds = %.noexc24
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bp = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.q
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.br = load i64, ptr %i.q, align 8, !tbaa !13
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.body

bb.h:                                             ; preds = %.noexc16
  %i.bt = icmp eq i32 %i.bm, 0
  %i.bu = icmp eq i32 %i.bf, 0
  %or.cond = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond, label %bb.bj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = add nsw i32 %i.bf, %i.bb
  %i.bw = zext nneg i32 %i.bm to i64
  %i.bx = sext i32 %i.bb to i64
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %i.by = ptrtoint ptr %.sroa.20.1 to i64
  %i.bz = ptrtoint ptr %.sroa.0169.1 to i64       ; 4 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.k, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc28 unwind label %bb.av

.noexc28:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #42
          to label %.noexc29 unwind label %bb.av  ; 5 uses

.noexc29:                                         ; preds = %bb.l
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ca  ; 3 uses
  store i8 0, ptr %i.cc, align 1, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cf = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %.noexc29
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ce, i8 0, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit

bb.n:                                             ; preds = %bb.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %indvars.iv = phi i64 [ %i.bx, %bb.i ], [ %indvars.iv.next, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 10 uses
  %.028.i276 = phi i32 [ 0, %bb.i ], [ %.129.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 7 uses
  %.sroa.0169.0275 = phi ptr [ null, %bb.i ], [ %.sroa.0169.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 18 uses
  %.sroa.20.0274 = phi ptr [ null, %bb.i ], [ %.sroa.20.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 12 uses
  %.sroa.38.0273 = phi ptr [ null, %bb.i ], [ %.sroa.38.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 8 uses
  %i.ch = load ptr, ptr %i.aw, align 8, !tbaa !1531, !nonnull !797, !align !916 ; 15 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 58
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 57
  %i.co = load i8, ptr %i.cn, align 1, !range !796
  %i.cp = trunc nuw i8 %i.co to i1
  %or.cond.i.i.i = select i1 %i.cm, i1 true, i1 %i.cp
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cq = lshr i64 %indvars.iv, 6
  %i.cr = and i64 %i.cq, 67108863
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %indvars.iv, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.ct, %i.cv
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 59
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.da = load i64, ptr %i.cj, align 8, !tbaa !855
  %i.db = and i64 %i.da, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1529
  %i.de = shl nsw i64 %indvars.iv, 2
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !855
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i.i.in = phi i64 [ %i.cw, %bb.p ], [ %i.db, %bb.r ], [ %i.dn, %bb.s ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.aq, label %.thread

.thread:                                          ; preds = %bb.n, %bb.t
  %i.do = ptrtoint ptr %.sroa.20.0274 to i64
  %i.dp = ptrtoint ptr %.sroa.0169.0275 to i64    ; 3 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 15 uses
  %i.dr = icmp ult i64 %i.dq, %i.bw
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1547 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ch, i64 58
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.dw = trunc nuw i8 %i.dv to i1                ; 2 uses
  br i1 %i.dr, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %.thread
  %i.dx = trunc nsw i64 %indvars.iv to i32
  br i1 %i.dw, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ch, i64 59
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !1255
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1529
  %i.ef = shl nsw i64 %indvars.iv, 2
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.eh, %bb.x ], [ %i.ec, %bb.w ], [ %i.dx, %bb.u ]
  %i.ei = sext i32 %.0.i.i.i.i to i64
  %i.ej = getelementptr inbounds i8, ptr %i.dt, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %.sroa.20.0274, %.sroa.38.0273
  br i1 %.not.i.i.i32, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 %i.ek, ptr %.sroa.20.0274, align 1, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.y
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.el = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dq
  %i.em = call i64 @llvm.umin.i64(i64 %i.el, i64 9223372036854775807) ; 2 uses
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #42
          to label %.noexc34 unwind label %.loopexit221 ; 5 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.dq ; 3 uses
  store i8 %i.ek, ptr %i.eo, align 1, !tbaa !13
  %i.ep = icmp sgt i64 %i.dq, 0
  br i1 %i.ep, label %bb.aa, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.aa:                                            ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %.sroa.0169.0275, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.aa, %.noexc34
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0169.0275, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0275, i64 noundef %i.dq) #43
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ab, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  %.pre300 = load i8, ptr %i.eo, align 1, !tbaa !13
  %.pre301 = ptrtoint ptr %i.en to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i:         ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.z
  %.pre-phi = phi i64 [ %.pre301, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.dp, %bb.z ]
  %i.er = phi i8 [ %.pre300, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.ek, %bb.z ] ; 2 uses
  %.sroa.38.2 = phi ptr [ %i.eq, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.38.0273, %bb.z ]
  %.pn208 = phi ptr [ %i.eo, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.20.0274, %bb.z ]
  %.sroa.0169.2 = phi ptr [ %i.en, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0169.0275, %bb.z ] ; 4 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn208, i64 1 ; 2 uses
  %i.es = ptrtoint ptr %.sroa.20.3 to i64
  %i.et = xor i64 %.pre-phi, -1
  %i.eu = add i64 %i.es, %i.et                    ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i, %bb.ac
  %.019.i.i.i = phi i64 [ %.0920.i56.i.i, %bb.ac ], [ %i.eu, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i56.i.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0169.2, i64 %.0920.i56.i.i
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !13  ; 2 uses
  %i.ey = icmp sgt i8 %i.ex, %i.er
  br i1 %i.ey, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0169.2, i64 %.019.i.i.i
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !13
  %.not.i.i = icmp eq i64 %.0920.i56.i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !27428

.loopexit:                                        ; preds = %bb.ac, %.lr.ph.i.i.i, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.eu, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.ac ]
  %i.fa = getelementptr inbounds i8, ptr %.sroa.0169.2, i64 %.0.lcssa.i.i.i
  store i8 %i.er, ptr %i.fa, align 1, !tbaa !13
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.loopexit221:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit96

bb.ad:                                            ; preds = %.thread
  br i1 %i.dw, label %.thread201, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ch, i64 59
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.af, label %.thread335

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %.0.i.i.i.i36 = load i32, ptr %i.fe, align 8, !tbaa !3
  %i.ff = sext i32 %.0.i.i.i.i36 to i64
  %i.fg = getelementptr inbounds i8, ptr %i.dt, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !13
  %i.fi = load i8, ptr %.sroa.0169.0275, align 1, !tbaa !13
  %i.fj = icmp sgt i8 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ag, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread335:                                       ; preds = %bb.ae
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1529
  %i.fm = shl nsw i64 %indvars.iv, 2
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  %.0.i.i.i.i36337 = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fo = sext i32 %.0.i.i.i.i36337 to i64
  %i.fp = getelementptr inbounds i8, ptr %i.dt, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13
  %i.fr = load i8, ptr %.sroa.0169.0275, align 1, !tbaa !13
  %i.fs = icmp sgt i8 %i.fq, %i.fr
  br i1 %i.fs, label %.thread338, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread201:                                       ; preds = %bb.ad
  %i.ft = getelementptr inbounds i8, ptr %i.dt, i64 %indvars.iv
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fv = load i8, ptr %.sroa.0169.0275, align 1, !tbaa !13
  %i.fw = icmp sgt i8 %i.fu, %i.fv
  %i.fx = trunc nsw i64 %indvars.iv to i32
  br i1 %i.fw, label %.thread203, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.ag:                                            ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !1255
  br label %.thread203

.thread338:                                       ; preds = %.thread335
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1529
  %i.gc = shl nsw i64 %indvars.iv, 2
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  br label %.thread203

.thread203:                                       ; preds = %.thread201, %.thread338, %bb.ag
  %.0.i.i.i.i39 = phi i32 [ %i.ge, %.thread338 ], [ %i.fz, %bb.ag ], [ %i.fx, %.thread201 ]
  %i.gf = sext i32 %.0.i.i.i.i39 to i64
  %i.gg = getelementptr inbounds i8, ptr %i.dt, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %.sroa.20.0274, %.sroa.38.0273
  br i1 %.not.i.i.i41, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread203
  store i8 %i.gh, ptr %.sroa.20.0274, align 1, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i43

bb.ai:                                            ; preds = %.thread203
  %i.gi = icmp eq i64 %i.dq, 9223372036854775807
  br i1 %i.gi, label %bb.aj, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i50

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc56 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit96.thread.loopexit.split-lp

.noexc56:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i50: ; preds = %bb.ai
  %8 = shl i64 %i.dq, 1
  %9 = icmp slt i64 %i.dq, 0
  %i.gj = call i64 @llvm.umin.i64(i64 %8, i64 9223372036854775807)
  %i.gk = select i1 %9, i64 9223372036854775807, i64 %i.gj ; 3 uses
  %.not.i.i.i.i.i52 = icmp ne i64 %i.gk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i52)
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #42
          to label %.noexc57 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit96.thread.loopexit ; 5 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i50
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.dq ; 3 uses
  store i8 %i.gh, ptr %i.gm, align 1, !tbaa !13
  %i.gn = icmp sgt i64 %i.dq, 0
  br i1 %i.gn, label %bb.ak, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55

bb.ak:                                            ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gl, ptr nonnull align 1 %.sroa.0169.0275, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55: ; preds = %bb.ak, %.noexc57
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0275, i64 noundef %i.dq) #43
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  %.pre = load i8, ptr %i.gm, align 1, !tbaa !13
  %.pre302 = ptrtoint ptr %i.gl to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i43

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i43:       ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55, %bb.ah
  %.pre-phi303 = phi i64 [ %.pre302, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55 ], [ %i.dp, %bb.ah ] ; 3 uses
  %i.gp = phi i8 [ %.pre, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55 ], [ %i.gh, %bb.ah ] ; 2 uses
  %.sroa.38.3 = phi ptr [ %i.go, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.38.0273, %bb.ah ] ; 2 uses
  %.pn = phi ptr [ %i.gm, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.20.0274, %bb.ah ] ; 6 uses
  %.sroa.0169.3 = phi ptr [ %i.gl, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i55 ], [ %.sroa.0169.0275, %bb.ah ] ; 15 uses
  %.sroa.20.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.gq = ptrtoint ptr %.sroa.20.4 to i64         ; 2 uses
  %i.gr = xor i64 %.pre-phi303, -1
  %i.gs = add i64 %i.gq, %i.gr                    ; 3 uses
  %i.gt = icmp sgt i64 %i.gs, 0
  br i1 %i.gt, label %.lr.ph.i.i.i45, label %.loopexit209

.lr.ph.i.i.i45:                                   ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i43, %bb.al
  %.019.i.i.i46 = phi i64 [ %.0920.i56.i.i48, %bb.al ], [ %i.gs, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i43 ] ; 3 uses
  %.0920.in.i.i.i47 = add nsw i64 %.019.i.i.i46, -1
  %.0920.i56.i.i48 = lshr i64 %.0920.in.i.i.i47, 1 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0169.3, i64 %.0920.i56.i.i48
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !13  ; 2 uses
  %i.gw = icmp sgt i8 %i.gv, %i.gp
  br i1 %i.gw, label %bb.al, label %.loopexit209

bb.al:                                            ; preds = %.lr.ph.i.i.i45
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0169.3, i64 %.019.i.i.i46
  store i8 %i.gv, ptr %i.gx, align 1, !tbaa !13
  %.not.i.i49 = icmp eq i64 %.0920.i56.i.i48, 0
  br i1 %.not.i.i49, label %.loopexit209, label %.lr.ph.i.i.i45, !llvm.loop !27428

.loopexit209:                                     ; preds = %bb.al, %.lr.ph.i.i.i45, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i43
  %.0.lcssa.i.i.i44 = phi i64 [ %i.gs, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i43 ], [ %.019.i.i.i46, %.lr.ph.i.i.i45 ], [ 0, %bb.al ]
  %i.gy = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %.0.lcssa.i.i.i44
  store i8 %i.gp, ptr %i.gy, align 1, !tbaa !13
  %i.gz = sub i64 %i.gq, %.pre-phi303
  %i.ha = icmp sgt i64 %i.gz, 1
  br i1 %i.ha, label %bb.am, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.am:                                            ; preds = %.loopexit209
  %i.hb = load i8, ptr %.pn, align 1, !tbaa !13   ; 2 uses
  %i.hc = load i8, ptr %.sroa.0169.3, align 1, !tbaa !13
  store i8 %i.hc, ptr %.pn, align 1, !tbaa !13
  %i.hd = ptrtoint ptr %.pn to i64
  %i.he = sub i64 %i.hd, %.pre-phi303             ; 4 uses
  %i.hf = add nsw i64 %i.he, -1
  %i.hg = sdiv i64 %i.hf, 2
  %i.hh = icmp sgt i64 %i.he, 2
  br i1 %i.hh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.am ] ; 2 uses
  %i.hi = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.hj = add i64 %i.hi, 2                        ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %i.hj
  %i.hl = or disjoint i64 %i.hi, 1                ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %i.hl
  %i.hn = load i8, ptr %i.hk, align 1, !tbaa !13
  %i.ho = load i8, ptr %i.hm, align 1, !tbaa !13
  %i.hp = icmp sgt i8 %i.hn, %i.ho
  %spec.select.i.i.i.i = select i1 %i.hp, i64 %i.hl, i64 %i.hj ; 4 uses
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %spec.select.i.i.i.i
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !13
  %i.hs = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %.035.i.i.i.i
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !13
  %i.ht = icmp slt i64 %spec.select.i.i.i.i, %i.hg
  br i1 %i.ht, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27429

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.am
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.am ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.hu = and i64 %i.he, 1
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hw = add nsw i64 %i.he, -2
  %i.hx = ashr exact i64 %i.hw, 1
  %i.hy = icmp eq i64 %.0.lcssa.i.i.i.i, %i.hx
  br i1 %i.hy, label %.thread.i.i.i, label %bb.ao

.thread.i.i.i:                                    ; preds = %bb.an
  %i.hz = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ia = or disjoint i64 %i.hz, 1                ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0169.3, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !13
  %i.id = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %.0.lcssa.i.i.i.i
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !13
  br label %.lr.ph.i.i.i.i.i.preheader

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i.i
  %.not.i.i.i59 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i59, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ao, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ao ], [ %i.ia, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.ap
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.ap ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0169.3, i64 %.0920.i.i67.i.i.i
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !13  ; 2 uses
  %i.ig = icmp sgt i8 %i.if, %i.hb
  br i1 %i.ig, label %bb.ap, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %.019.i.i.i.i.i
  store i8 %i.if, ptr %i.ih, align 1, !tbaa !13
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i.i.i, %bb.ao
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.ap ]
  %i.ii = getelementptr inbounds i8, ptr %.sroa.0169.3, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.hb, ptr %i.ii, align 1, !tbaa !13
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt6vectorIaSaIaEED2Ev.exit96.thread.loopexit:  ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i50
  %lpad.loopexit218 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit96.thread

_ZNSt6vectorIaSaIaEED2Ev.exit96.thread.loopexit.split-lp: ; preds = %bb.aj
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit96.thread

bb.aq:                                            ; preds = %bb.t
  %i.ij = add nsw i32 %.028.i276, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit: ; preds = %.thread335, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, %.loopexit209, %.thread201, %bb.aq, %bb.af, %.loopexit
  %.sroa.38.1 = phi ptr [ %.sroa.38.2, %.loopexit ], [ %.sroa.38.0273, %.thread201 ], [ %.sroa.38.0273, %bb.af ], [ %.sroa.38.0273, %bb.aq ], [ %.sroa.38.3, %.loopexit209 ], [ %.sroa.38.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.38.0273, %.thread335 ] ; 5 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.3, %.loopexit ], [ %.sroa.20.0274, %.thread201 ], [ %.sroa.20.0274, %bb.af ], [ %.sroa.20.0274, %bb.aq ], [ %.pn, %.loopexit209 ], [ %.pn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.20.0274, %.thread335 ] ; 4 uses
  %.sroa.0169.1 = phi ptr [ %.sroa.0169.2, %.loopexit ], [ %.sroa.0169.0275, %.thread201 ], [ %.sroa.0169.0275, %bb.af ], [ %.sroa.0169.0275, %bb.aq ], [ %.sroa.0169.3, %.loopexit209 ], [ %.sroa.0169.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.0169.0275, %.thread335 ] ; 19 uses
  %.129.i = phi i32 [ %.028.i276, %.loopexit ], [ %.028.i276, %.thread201 ], [ %.028.i276, %bb.af ], [ %i.ij, %bb.aq ], [ %.028.i276, %.loopexit209 ], [ %.028.i276, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.028.i276, %.thread335 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ik = trunc nsw i64 %indvars.iv.next to i32
  %i.il = icmp eq i32 %i.bv, %i.ik
  br i1 %i.il, label %bb.j, label %bb.n

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit:               ; preds = %bb.m, %.noexc29, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.cd, %bb.m ], [ %i.cd, %.noexc29 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0142.0 = phi ptr [ %i.cc, %bb.m ], [ %i.cc, %.noexc29 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cd, %bb.m ], [ %i.ce, %.noexc29 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.im = icmp eq ptr %.sroa.0169.1, %.sroa.20.1
  br i1 %i.im, label %.preheader212, label %.lr.ph

.preheader212:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit78, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit
  %i.in = icmp eq ptr %.sroa.0142.0, %.0.i.i.i.i.i
  br i1 %i.in, label %.preheader, label %.lr.ph280

.lr.ph280:                                        ; preds = %.preheader212
  %i.io = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.x, i64 68 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  br label %bb.aw

.lr.ph:                                           ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit78
  %.027.i278 = phi i64 [ %i.it, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit78 ], [ %i.ca, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ]
  %.sroa.20.2277 = phi ptr [ %i.kg, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit78 ], [ %.sroa.20.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ] ; 3 uses
  %i.is = load i8, ptr %.sroa.0169.1, align 1, !tbaa !13 ; 2 uses
  %i.it = add i64 %.027.i278, -1                  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 %i.it
  store i8 %i.is, ptr %i.iu, align 1, !tbaa !13
  %i.iv = ptrtoint ptr %.sroa.20.2277 to i64
  %i.iw = sub i64 %i.iv, %i.bz
  %i.ix = icmp sgt i64 %i.iw, 1
  br i1 %i.ix, label %bb.ar, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit78

bb.ar:                                            ; preds = %.lr.ph
  %i.iy = getelementptr inbounds i8, ptr %.sroa.20.2277, i64 -1 ; 3 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !13  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENS3_24ConstantFlatVectorReaderIiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSJ_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27412, !noalias !27463, !nonnull !797, !align !916 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27418, !noalias !27463, !nonnull !797, !align !916 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1526, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 58
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.noexc43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 59
  %i.at = load i8, ptr %i.as, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1255
  br label %.noexc43

bb.f:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1529
  %sext.i = shl i64 %.0670, 32
  %i.az = ashr exact i64 %sext.i, 30
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  br label %.noexc43

.noexc43:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i = phi i32 [ %i.bb, %bb.f ], [ %i.aw, %bb.e ], [ %i.ae, %bb.c ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1261
  %i.bf = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1265
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !21305, !noalias !27466
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !21308, !noalias !27466
  %i.bp = mul nsw i32 %i.bo, %i.ae
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !27466 ; 7 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.noexc44, label %bb.i, !prof !81

.noexc44:                                         ; preds = %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !27469
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !27472
  store i32 %i.bs, ptr %3, align 16, !tbaa !13, !alias.scope !27475, !noalias !27472
  store i32 0, ptr %i.x, align 16, !tbaa !13, !alias.scope !27475, !noalias !27472
  store i32 %i.bs, ptr %i.y, align 16, !tbaa !13, !alias.scope !27475, !noalias !27472
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %3)
          to label %.noexc45 unwind label %bb.bo

.noexc45:                                         ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !27472
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.302) #45
          to label %bb.g unwind label %bb.h, !noalias !27469

bb.g:                                             ; preds = %.noexc45
  unreachable

bb.h:                                             ; preds = %.noexc45
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bv = load ptr, ptr %4, align 8, !tbaa !7, !noalias !27469 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.z
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.bx = load i64, ptr %i.z, align 8, !tbaa !13, !noalias !27469
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #43, !noalias !27469
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !27469
  br label %.body38

bb.i:                                             ; preds = %.noexc43
  %i.bz = icmp eq i32 %i.bs, 0
  %i.ca = icmp eq i32 %i.bl, 0
  %or.cond = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond, label %bb.bk, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = add nsw i32 %i.bl, %i.bh
  %i.cc = zext nneg i32 %i.bs to i64
  %i.cd = sext i32 %i.bh to i64
  br label %bb.o

bb.k:                                             ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %i.ce = ptrtoint ptr %.sroa.20469.1 to i64
  %i.cf = ptrtoint ptr %.sroa.0457.1 to i64       ; 4 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.l, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc49 unwind label %bb.aw

.noexc49:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #42
          to label %.noexc50 unwind label %bb.aw  ; 5 uses

.noexc50:                                         ; preds = %bb.m
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.cg  ; 3 uses
  store i8 0, ptr %i.ci, align 1, !tbaa !13, !noalias !27469
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  %i.cl = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.n

bb.n:                                             ; preds = %.noexc50
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.cl, i1 false), !noalias !27469
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit

bb.o:                                             ; preds = %bb.j, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %indvars.iv = phi i64 [ %i.cd, %bb.j ], [ %indvars.iv.next, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 10 uses
  %.028.i.i661 = phi i32 [ 0, %bb.j ], [ %.129.i.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 7 uses
  %.sroa.0457.0660 = phi ptr [ null, %bb.j ], [ %.sroa.0457.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 18 uses
  %.sroa.20469.0659 = phi ptr [ null, %bb.j ], [ %.sroa.20469.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 12 uses
  %.sroa.38479.0658 = phi ptr [ null, %bb.j ], [ %.sroa.38479.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 8 uses
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !1531, !noalias !27469, !nonnull !797, !align !916 ; 15 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1530, !noalias !27469 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 58
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !1527, !range !796, !noalias !27469, !noundef !797
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 57
  %i.cu = load i8, ptr %i.ct, align 1, !range !796, !noalias !27469
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond.i.i.i = select i1 %i.cs, i1 true, i1 %i.cv
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = lshr i64 %indvars.iv, 6
  %i.cx = and i64 %i.cw, 67108863
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !855, !noalias !27469
  %i.da = and i64 %indvars.iv, 63
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.cz, %i.db
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 59
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !1528, !range !796, !noalias !27469, !noundef !797
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dg = load i64, ptr %i.cp, align 8, !tbaa !855, !noalias !27469
  %i.dh = and i64 %i.dg, 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1529, !noalias !27469
  %i.dk = shl nsw i64 %indvars.iv, 2
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3, !noalias !27469
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = lshr i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !855, !noalias !27469
  %i.dr = and i64 %i.dn, 63
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i.i.in = phi i64 [ %i.dc, %bb.q ], [ %i.dh, %bb.s ], [ %i.dt, %bb.t ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.ar, label %.thread

.thread:                                          ; preds = %bb.o, %bb.u
  %i.du = ptrtoint ptr %.sroa.20469.0659 to i64
  %i.dv = ptrtoint ptr %.sroa.0457.0660 to i64    ; 3 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 15 uses
  %i.dx = icmp ult i64 %i.dw, %i.cc
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1547, !noalias !27469 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cn, i64 58
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !1527, !range !796, !noalias !27469, !noundef !797
  %i.ec = trunc nuw i8 %i.eb to i1                ; 2 uses
  br i1 %i.dx, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %.thread
  %i.ed = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ec, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 59
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !1528, !range !796, !noalias !27469, !noundef !797
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1255, !noalias !27469
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1529, !noalias !27469
  %i.el = shl nsw i64 %indvars.iv, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !27469
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.en, %bb.y ], [ %i.ei, %bb.x ], [ %i.ed, %bb.v ]
  %i.eo = sext i32 %.0.i.i.i.i to i64
  %i.ep = getelementptr inbounds i8, ptr %i.dz, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !13, !noalias !27469 ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %.sroa.20469.0659, %.sroa.38479.0658
  br i1 %.not.i.i.i53, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 %i.eq, ptr %.sroa.20469.0659, align 1, !tbaa !13, !noalias !27469
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.z
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.er = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dw
  %i.es = call i64 @llvm.umin.i64(i64 %i.er, i64 9223372036854775807) ; 2 uses
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #42
          to label %.noexc55 unwind label %.loopexit525 ; 5 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.dw ; 3 uses
  store i8 %i.eq, ptr %i.eu, align 1, !tbaa !13, !noalias !27469
  %i.ev = icmp sgt i64 %i.dw, 0
  br i1 %i.ev, label %bb.ab, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.ab:                                            ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.et, ptr align 1 %.sroa.0457.0660, i64 %i.dw, i1 false), !noalias !27469
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ab, %.noexc55
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0457.0660, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0457.0660, i64 noundef %i.dw) #43, !noalias !27469
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ac, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  %.pre710 = load i8, ptr %i.eu, align 1, !tbaa !13, !noalias !27469
  %.pre716 = ptrtoint ptr %i.et to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i:         ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.aa
  %.pre-phi717 = phi i64 [ %.pre716, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.dv, %bb.aa ]
  %i.ex = phi i8 [ %.pre710, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.eq, %bb.aa ] ; 2 uses
  %.sroa.38479.2 = phi ptr [ %i.ew, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.38479.0658, %bb.aa ]
  %.pn512 = phi ptr [ %i.eu, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.20469.0659, %bb.aa ]
  %.sroa.0457.2 = phi ptr [ %i.et, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0457.0660, %bb.aa ] ; 4 uses
  %.sroa.20469.3 = getelementptr inbounds nuw i8, ptr %.pn512, i64 1 ; 2 uses
  %i.ey = ptrtoint ptr %.sroa.20469.3 to i64
  %i.ez = xor i64 %.pre-phi717, -1
  %i.fa = add i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i, %bb.ad
  %.019.i.i.i = phi i64 [ %.0920.i56.i.i, %bb.ad ], [ %i.fa, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i56.i.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0457.2, i64 %.0920.i56.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13, !noalias !27469 ; 2 uses
  %i.fe = icmp sgt i8 %i.fd, %i.ex
  br i1 %i.fe, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0457.2, i64 %.019.i.i.i
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !13, !noalias !27469
  %.not.i.i = icmp eq i64 %.0920.i56.i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !27428

.loopexit:                                        ; preds = %bb.ad, %.lr.ph.i.i.i, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.fa, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.ad ]
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0457.2, i64 %.0.lcssa.i.i.i
  store i8 %i.ex, ptr %i.fg, align 1, !tbaa !13, !noalias !27469
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.loopexit525:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit527 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit117

bb.ae:                                            ; preds = %.thread
  br i1 %i.ec, label %.thread493, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cn, i64 59
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !1528, !range !796, !noalias !27469, !noundef !797
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ag, label %.thread784

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %.0.i.i.i.i57 = load i32, ptr %i.fk, align 8, !tbaa !3, !noalias !27469
  %i.fl = sext i32 %.0.i.i.i.i57 to i64
  %i.fm = getelementptr inbounds i8, ptr %i.dz, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !13, !noalias !27469
  %i.fo = load i8, ptr %.sroa.0457.0660, align 1, !tbaa !13, !noalias !27469
  %i.fp = icmp sgt i8 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ah, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread784:                                       ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1529, !noalias !27469
  %i.fs = shl nsw i64 %indvars.iv, 2
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 %i.fs
  %.0.i.i.i.i57786 = load i32, ptr %i.ft, align 4, !tbaa !3, !noalias !27469
  %i.fu = sext i32 %.0.i.i.i.i57786 to i64
  %i.fv = getelementptr inbounds i8, ptr %i.dz, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13, !noalias !27469
  %i.fx = load i8, ptr %.sroa.0457.0660, align 1, !tbaa !13, !noalias !27469
  %i.fy = icmp sgt i8 %i.fw, %i.fx
  br i1 %i.fy, label %.thread787, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread493:                                       ; preds = %bb.ae
  %i.fz = getelementptr inbounds i8, ptr %i.dz, i64 %indvars.iv
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !13, !noalias !27469
  %i.gb = load i8, ptr %.sroa.0457.0660, align 1, !tbaa !13, !noalias !27469
  %i.gc = icmp sgt i8 %i.ga, %i.gb
  %i.gd = trunc nsw i64 %indvars.iv to i32
  br i1 %i.gc, label %.thread495, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !1255, !noalias !27469
  br label %.thread495

.thread787:                                       ; preds = %.thread784
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !1529, !noalias !27469
  %i.gi = shl nsw i64 %indvars.iv, 2
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !27469
  br label %.thread495

.thread495:                                       ; preds = %.thread493, %.thread787, %bb.ah
  %.0.i.i.i.i60 = phi i32 [ %i.gk, %.thread787 ], [ %i.gf, %bb.ah ], [ %i.gd, %.thread493 ]
  %i.gl = sext i32 %.0.i.i.i.i60 to i64
  %i.gm = getelementptr inbounds i8, ptr %i.dz, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !13, !noalias !27469 ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.20469.0659, %.sroa.38479.0658
  br i1 %.not.i.i.i62, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread495
  store i8 %i.gn, ptr %.sroa.20469.0659, align 1, !tbaa !13, !noalias !27469
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i64

bb.aj:                                            ; preds = %.thread495
  %i.go = icmp eq i64 %i.dw, 9223372036854775807
  br i1 %i.go, label %bb.ak, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i71

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc77 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit117.thread.loopexit.split-lp

.noexc77:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i71: ; preds = %bb.aj
  %12 = shl i64 %i.dw, 1
  %13 = icmp slt i64 %i.dw, 0
  %i.gp = call i64 @llvm.umin.i64(i64 %12, i64 9223372036854775807)
  %i.gq = select i1 %13, i64 9223372036854775807, i64 %i.gp ; 3 uses
  %.not.i.i.i.i.i73 = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i73), !noalias !27469
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #42
          to label %.noexc78 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit117.thread.loopexit ; 5 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i71
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.dw ; 3 uses
  store i8 %i.gn, ptr %i.gs, align 1, !tbaa !13, !noalias !27469
  %i.gt = icmp sgt i64 %i.dw, 0
  br i1 %i.gt, label %bb.al, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76

bb.al:                                            ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gr, ptr nonnull align 1 %.sroa.0457.0660, i64 %i.dw, i1 false), !noalias !27469
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76: ; preds = %bb.al, %.noexc78
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0457.0660, i64 noundef %i.dw) #43, !noalias !27469
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %.pre = load i8, ptr %i.gs, align 1, !tbaa !13, !noalias !27469
  %.pre718 = ptrtoint ptr %i.gr to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i64

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i64:       ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76, %bb.ai
  %.pre-phi719 = phi i64 [ %.pre718, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76 ], [ %i.dv, %bb.ai ] ; 3 uses
  %i.gv = phi i8 [ %.pre, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76 ], [ %i.gn, %bb.ai ] ; 2 uses
  %.sroa.38479.3 = phi ptr [ %i.gu, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76 ], [ %.sroa.38479.0658, %bb.ai ] ; 2 uses
  %.pn511 = phi ptr [ %i.gs, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76 ], [ %.sroa.20469.0659, %bb.ai ] ; 6 uses
  %.sroa.0457.3 = phi ptr [ %i.gr, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i76 ], [ %.sroa.0457.0660, %bb.ai ] ; 15 uses
  %.sroa.20469.4 = getelementptr inbounds nuw i8, ptr %.pn511, i64 1
  %i.gw = ptrtoint ptr %.sroa.20469.4 to i64      ; 2 uses
  %i.gx = xor i64 %.pre-phi719, -1
  %i.gy = add i64 %i.gw, %i.gx                    ; 3 uses
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %.lr.ph.i.i.i66, label %.loopexit513

.lr.ph.i.i.i66:                                   ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i64, %bb.am
  %.019.i.i.i67 = phi i64 [ %.0920.i56.i.i69, %bb.am ], [ %i.gy, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i64 ] ; 3 uses
  %.0920.in.i.i.i68 = add nsw i64 %.019.i.i.i67, -1
  %.0920.i56.i.i69 = lshr i64 %.0920.in.i.i.i68, 1 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0457.3, i64 %.0920.i56.i.i69
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !13, !noalias !27469 ; 2 uses
  %i.hc = icmp sgt i8 %i.hb, %i.gv
  br i1 %i.hc, label %bb.am, label %.loopexit513

bb.am:                                            ; preds = %.lr.ph.i.i.i66
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0457.3, i64 %.019.i.i.i67
  store i8 %i.hb, ptr %i.hd, align 1, !tbaa !13, !noalias !27469
  %.not.i.i70 = icmp eq i64 %.0920.i56.i.i69, 0
  br i1 %.not.i.i70, label %.loopexit513, label %.lr.ph.i.i.i66, !llvm.loop !27428

.loopexit513:                                     ; preds = %bb.am, %.lr.ph.i.i.i66, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i64
  %.0.lcssa.i.i.i65 = phi i64 [ %i.gy, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i64 ], [ %.019.i.i.i67, %.lr.ph.i.i.i66 ], [ 0, %bb.am ]
  %i.he = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %.0.lcssa.i.i.i65
  store i8 %i.gv, ptr %i.he, align 1, !tbaa !13, !noalias !27469
  %i.hf = sub i64 %i.gw, %.pre-phi719
  %i.hg = icmp sgt i64 %i.hf, 1
  br i1 %i.hg, label %bb.an, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.an:                                            ; preds = %.loopexit513
  %i.hh = load i8, ptr %.pn511, align 1, !tbaa !13, !noalias !27469 ; 2 uses
  %i.hi = load i8, ptr %.sroa.0457.3, align 1, !tbaa !13, !noalias !27469
  store i8 %i.hi, ptr %.pn511, align 1, !tbaa !13, !noalias !27469
  %i.hj = ptrtoint ptr %.pn511 to i64
  %i.hk = sub i64 %i.hj, %.pre-phi719             ; 4 uses
  %i.hl = add nsw i64 %i.hk, -1
  %i.hm = sdiv i64 %i.hl, 2
  %i.hn = icmp sgt i64 %i.hk, 2
  br i1 %i.hn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.an ] ; 2 uses
  %i.ho = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.hp = add i64 %i.ho, 2                        ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %i.hp
  %i.hr = or disjoint i64 %i.ho, 1                ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %i.hr
  %i.ht = load i8, ptr %i.hq, align 1, !tbaa !13, !noalias !27469
  %i.hu = load i8, ptr %i.hs, align 1, !tbaa !13, !noalias !27469
  %i.hv = icmp sgt i8 %i.ht, %i.hu
  %spec.select.i.i.i.i = select i1 %i.hv, i64 %i.hr, i64 %i.hp ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %spec.select.i.i.i.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !13, !noalias !27469
  %i.hy = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %.035.i.i.i.i
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !13, !noalias !27469
  %i.hz = icmp slt i64 %spec.select.i.i.i.i, %i.hm
  br i1 %i.hz, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27429

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.an
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.an ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ia = and i64 %i.hk, 1
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ic = add nsw i64 %i.hk, -2
  %i.id = ashr exact i64 %i.ic, 1
  %i.ie = icmp eq i64 %.0.lcssa.i.i.i.i, %i.id
  br i1 %i.ie, label %.thread.i.i.i, label %bb.ap

.thread.i.i.i:                                    ; preds = %bb.ao
  %i.if = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ig = or disjoint i64 %i.if, 1                ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0457.3, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !13, !noalias !27469
  %i.ij = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %.0.lcssa.i.i.i.i
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !13, !noalias !27469
  br label %.lr.ph.i.i.i.i.i.preheader

bb.ap:                                            ; preds = %bb.ao, %._crit_edge.i.i.i.i
  %.not.i.i.i80 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i80, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ap, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ap ], [ %i.ig, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.aq
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.aq ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0457.3, i64 %.0920.i.i67.i.i.i
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !13, !noalias !27469 ; 2 uses
  %i.im = icmp sgt i8 %i.il, %i.hh
  br i1 %i.im, label %bb.aq, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.in = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %.019.i.i.i.i.i
  store i8 %i.il, ptr %i.in, align 1, !tbaa !13, !noalias !27469
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i: ; preds = %bb.aq, %.lr.ph.i.i.i.i.i, %bb.ap
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ap ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.aq ]
  %i.io = getelementptr inbounds i8, ptr %.sroa.0457.3, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.hh, ptr %i.io, align 1, !tbaa !13, !noalias !27469
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt6vectorIaSaIaEED2Ev.exit117.thread.loopexit: ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i71
  %lpad.loopexit522 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit117.thread

_ZNSt6vectorIaSaIaEED2Ev.exit117.thread.loopexit.split-lp: ; preds = %bb.ak
  %lpad.loopexit.split-lp523 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit117.thread

bb.ar:                                            ; preds = %bb.u
  %i.ip = add nsw i32 %.028.i.i661, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit: ; preds = %.thread784, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, %.loopexit513, %.thread493, %bb.ar, %bb.ag, %.loopexit
  %.sroa.38479.1 = phi ptr [ %.sroa.38479.2, %.loopexit ], [ %.sroa.38479.0658, %.thread493 ], [ %.sroa.38479.0658, %bb.ag ], [ %.sroa.38479.0658, %bb.ar ], [ %.sroa.38479.3, %.loopexit513 ], [ %.sroa.38479.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.38479.0658, %.thread784 ] ; 5 uses
  %.sroa.20469.1 = phi ptr [ %.sroa.20469.3, %.loopexit ], [ %.sroa.20469.0659, %.thread493 ], [ %.sroa.20469.0659, %bb.ag ], [ %.sroa.20469.0659, %bb.ar ], [ %.pn511, %.loopexit513 ], [ %.pn511, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.20469.0659, %.thread784 ] ; 4 uses
  %.sroa.0457.1 = phi ptr [ %.sroa.0457.2, %.loopexit ], [ %.sroa.0457.0660, %.thread493 ], [ %.sroa.0457.0660, %bb.ag ], [ %.sroa.0457.0660, %bb.ar ], [ %.sroa.0457.3, %.loopexit513 ], [ %.sroa.0457.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.0457.0660, %.thread784 ] ; 19 uses
  %.129.i.i = phi i32 [ %.028.i.i661, %.loopexit ], [ %.028.i.i661, %.thread493 ], [ %.028.i.i661, %bb.ag ], [ %i.ip, %bb.ar ], [ %.028.i.i661, %.loopexit513 ], [ %.028.i.i661, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.028.i.i661, %.thread784 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.iq = trunc nsw i64 %indvars.iv.next to i32
  %i.ir = icmp eq i32 %i.cb, %i.iq
  br i1 %i.ir, label %bb.k, label %bb.o

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit:               ; preds = %bb.n, %.noexc50, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12429.0 = phi ptr [ %i.cj, %bb.n ], [ %i.cj, %.noexc50 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0424.0 = phi ptr [ %i.ci, %bb.n ], [ %i.ci, %.noexc50 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cj, %bb.n ], [ %i.ck, %.noexc50 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.is = icmp eq ptr %.sroa.0457.1, %.sroa.20469.1
  br i1 %i.is, label %.preheader516, label %.lr.ph664

.preheader516:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit99, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit
  %i.it = icmp eq ptr %.sroa.0424.0, %.0.i.i.i.i.i
  br i1 %i.it, label %.preheader, label %.lr.ph666

.lr.ph666:                                        ; preds = %.preheader516
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ad, i64 60 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ad, i64 68 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %bb.ax

.lr.ph664:                                        ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit99
  %.027.i.i663 = phi i64 [ %i.iz, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit99 ], [ %i.cg, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ]
  %.sroa.20469.2662 = phi ptr [ %i.km, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit99 ], [ %.sroa.20469.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ] ; 3 uses
  %i.iy = load i8, ptr %.sroa.0457.1, align 1, !tbaa !13, !noalias !27469 ; 2 uses
  %i.iz = add i64 %.027.i.i663, -1                ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0424.0, i64 %i.iz
  store i8 %i.iy, ptr %i.ja, align 1, !tbaa !13, !noalias !27469
  %i.jb = ptrtoint ptr %.sroa.20469.2662 to i64
  %i.jc = sub i64 %i.jb, %i.cf
  %i.jd = icmp sgt i64 %i.jc, 1
  br i1 %i.jd, label %bb.as, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit99

bb.as:                                            ; preds = %.lr.ph664
  %i.je = getelementptr inbounds i8, ptr %.sroa.20469.2662, i64 -1 ; 3 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !13, !noalias !27469 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENS3_24ConstantFlatVectorReaderIiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSJ_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !27412, !noalias !27482, !nonnull !797, !align !916 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !27418, !noalias !27482, !nonnull !797, !align !916 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 120
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !1526, !nonnull !797, !align !916 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 58
  %i.sv = load i8, ptr %i.su, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %.noexc22, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 59
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ta = getelementptr inbounds nuw i8, ptr %i.st, i64 64
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !1255
  br label %.noexc22

bb.ci:                                            ; preds = %bb.cg
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !1529
  %i.te = shl nsw i64 %i.sn, 2
  %i.tf = getelementptr inbounds i8, ptr %i.td, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !3
  br label %.noexc22

.noexc22:                                         ; preds = %bb.ci, %bb.ch, %bb.cf
  %.0.i.i149 = phi i32 [ %i.tg, %bb.ci ], [ %i.tb, %bb.ch ], [ %i.sf, %bb.cf ]
  %i.th = getelementptr inbounds nuw i8, ptr %i.sp, i64 152
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sp, i64 136
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !1261
  %i.tk = sext i32 %.0.i.i149 to i64              ; 2 uses
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !3  ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sp, i64 144
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !1265
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.tk
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !3  ; 2 uses
  %i.tr = load ptr, ptr %i.sr, align 8, !tbaa !21305, !noalias !27485
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !21308, !noalias !27485
  %i.tu = mul nsw i32 %i.tt, %i.sf
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !3, !noalias !27485 ; 7 uses
  %i.ty = icmp slt i32 %i.tx, 0
  br i1 %i.ty, label %.noexc29, label %bb.cl, !prof !81

.noexc29:                                         ; preds = %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !27488
  store i32 %i.tx, ptr %2, align 16, !tbaa !13, !alias.scope !27491, !noalias !27488
  store i32 0, ptr %i.n, align 16, !tbaa !13, !alias.scope !27491, !noalias !27488
  store i32 %i.tx, ptr %i.o, align 16, !tbaa !13, !alias.scope !27491, !noalias !27488
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %2)
          to label %.noexc30 unwind label %bb.er

.noexc30:                                         ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !27488
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.302) #45
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %.noexc30
  unreachable

bb.ck:                                            ; preds = %.noexc30
  %i.tz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ua = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.p
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.ck
  %i.uc = load i64, ptr %i.p, align 8, !tbaa !13
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.body

bb.cl:                                            ; preds = %.noexc22
  %i.ue = icmp eq i32 %i.tx, 0
  %i.uf = icmp eq i32 %i.tq, 0
  %or.cond509 = select i1 %i.ue, i1 true, i1 %i.uf
  br i1 %or.cond509, label %bb.en, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ug = add nsw i32 %i.tq, %i.tm
  %i.uh = zext nneg i32 %i.tx to i64
  %i.ui = sext i32 %i.tm to i64
  br label %bb.cr

bb.cn:                                            ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241
  %i.uj = ptrtoint ptr %.sroa.20.1 to i64
  %i.uk = ptrtoint ptr %.sroa.0375.1 to i64       ; 4 uses
  %i.ul = sub i64 %i.uj, %i.uk                    ; 6 uses
  %i.um = icmp slt i64 %i.ul, 0
  br i1 %i.um, label %bb.co, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i162

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc166 unwind label %bb.dz

.noexc166:                                        ; preds = %bb.co
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i162: ; preds = %bb.cn
  %.not.i.i.i.i163 = icmp eq i64 %i.ul, 0
  br i1 %.not.i.i.i.i163, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i162
  %i.un = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ul) #42
          to label %.noexc167 unwind label %bb.dz ; 5 uses

.noexc167:                                        ; preds = %bb.cp
  %i.uo = getelementptr i8, ptr %i.un, i64 %i.ul  ; 3 uses
  store i8 0, ptr %i.un, align 1, !tbaa !13
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 1 ; 2 uses
  %i.uq = add nsw i64 %i.ul, -1                   ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168, label %bb.cq

bb.cq:                                            ; preds = %.noexc167
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.up, i8 0, i64 %i.uq, i1 false)
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168

bb.cr:                                            ; preds = %bb.cm, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241
  %indvars.iv707 = phi i64 [ %i.ui, %bb.cm ], [ %indvars.iv.next708, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241 ] ; 10 uses
  %.028.i646 = phi i32 [ 0, %bb.cm ], [ %.129.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241 ] ; 7 uses
  %.sroa.0375.0645 = phi ptr [ null, %bb.cm ], [ %.sroa.0375.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241 ] ; 18 uses
  %.sroa.20.0644 = phi ptr [ null, %bb.cm ], [ %.sroa.20.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241 ] ; 12 uses
  %.sroa.38.0643 = phi ptr [ null, %bb.cm ], [ %.sroa.38.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241 ] ; 8 uses
  %i.us = load ptr, ptr %i.th, align 8, !tbaa !1531, !nonnull !797, !align !916 ; 15 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i171 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i171, label %.thread500, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 58
  %i.uw = load i8, ptr %i.uv, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ux = trunc nuw i8 %i.uw to i1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 57
  %i.uz = load i8, ptr %i.uy, align 1, !range !796
  %i.va = trunc nuw i8 %i.uz to i1
  %or.cond.i.i.i172 = select i1 %i.ux, i1 true, i1 %i.va
  br i1 %or.cond.i.i.i172, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.vb = lshr i64 %indvars.iv707, 6
  %i.vc = and i64 %i.vb, 67108863
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %i.vc
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !855
  %i.vf = and i64 %indvars.iv707, 63
  %i.vg = shl nuw i64 1, %i.vf
  %i.vh = and i64 %i.ve, %i.vg
  br label %bb.cx

bb.cu:                                            ; preds = %bb.cs
  %i.vi = getelementptr inbounds nuw i8, ptr %i.us, i64 59
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.vk = trunc nuw i8 %i.vj to i1
  br i1 %i.vk, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.vl = load i64, ptr %i.uu, align 8, !tbaa !855
  %i.vm = and i64 %i.vl, 1
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.vn = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !1529
  %i.vp = shl nsw i64 %indvars.iv707, 2
  %i.vq = getelementptr inbounds i8, ptr %i.vo, i64 %i.vp
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !3
  %i.vs = zext i32 %i.vr to i64                   ; 2 uses
  %i.vt = lshr i64 %i.vs, 6
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %i.vt
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !855
  %i.vw = and i64 %i.vs, 63
  %i.vx = shl nuw i64 1, %i.vw
  %i.vy = and i64 %i.vx, %i.vv
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.ct
  %.0.i.i.i175.in = phi i64 [ %i.vh, %bb.ct ], [ %i.vm, %bb.cv ], [ %i.vy, %bb.cw ]
  %.0.i.i.i175.not = icmp eq i64 %.0.i.i.i175.in, 0
  br i1 %.0.i.i.i175.not, label %bb.du, label %.thread500

.thread500:                                       ; preds = %bb.cr, %bb.cx
  %i.vz = ptrtoint ptr %.sroa.20.0644 to i64
  %i.wa = ptrtoint ptr %.sroa.0375.0645 to i64    ; 3 uses
  %i.wb = sub i64 %i.vz, %i.wa                    ; 15 uses
  %i.wc = icmp ult i64 %i.wb, %i.uh
  %i.wd = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !1547 ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.us, i64 58
  %i.wg = load i8, ptr %i.wf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.wh = trunc nuw i8 %i.wg to i1                ; 2 uses
  br i1 %i.wc, label %bb.cy, label %bb.dh

bb.cy:                                            ; preds = %.thread500
  %i.wi = trunc nsw i64 %indvars.iv707 to i32
  br i1 %i.wh, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.wj = getelementptr inbounds nuw i8, ptr %i.us, i64 59
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.wl = trunc nuw i8 %i.wk to i1
  br i1 %i.wl, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.wm = getelementptr inbounds nuw i8, ptr %i.us, i64 64
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !1255
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.wo = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !1529
  %i.wq = shl nsw i64 %indvars.iv707, 2
  %i.wr = getelementptr inbounds i8, ptr %i.wp, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !3
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cy
  %.0.i.i.i.i180 = phi i32 [ %i.ws, %bb.db ], [ %i.wn, %bb.da ], [ %i.wi, %bb.cy ]
  %i.wt = sext i32 %.0.i.i.i.i180 to i64
  %i.wu = getelementptr inbounds i8, ptr %i.we, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %.sroa.20.0644, %.sroa.38.0643
  br i1 %.not.i.i.i182, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i191, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i8 %i.wv, ptr %.sroa.20.0644, align 1, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i184

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i191: ; preds = %bb.dc
  %.sroa.speculated.i.i.i.i.i192 = call i64 @llvm.umax.i64(i64 %i.wb, i64 1)
  %i.ww = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i192, %i.wb
  %i.wx = call i64 @llvm.umin.i64(i64 %i.ww, i64 9223372036854775807) ; 2 uses
  %i.wy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wx) #42
          to label %.noexc198 unwind label %.loopexit555 ; 5 uses

.noexc198:                                        ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i191
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wb ; 3 uses
  store i8 %i.wv, ptr %i.wz, align 1, !tbaa !13
  %i.xa = icmp sgt i64 %i.wb, 0
  br i1 %i.xa, label %bb.de, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i194

bb.de:                                            ; preds = %.noexc198
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.wy, ptr align 1 %.sroa.0375.0645, i64 %i.wb, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i194

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i194: ; preds = %bb.de, %.noexc198
  %.not.i17.i.i.i.i195 = icmp eq ptr %.sroa.0375.0645, null
  br i1 %.not.i17.i.i.i.i195, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i194
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0375.0645, i64 noundef %i.wb) #43
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196: ; preds = %bb.df, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i194
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wx
  %.pre712 = load i8, ptr %i.wz, align 1, !tbaa !13
  %.pre713 = ptrtoint ptr %i.wy to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i184

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i184:      ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196, %bb.dd
  %.pre-phi = phi i64 [ %.pre713, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196 ], [ %i.wa, %bb.dd ]
  %i.xc = phi i8 [ %.pre712, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196 ], [ %i.wv, %bb.dd ] ; 2 uses
  %.sroa.38.2 = phi ptr [ %i.xb, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196 ], [ %.sroa.38.0643, %bb.dd ]
  %.pn510 = phi ptr [ %i.wz, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196 ], [ %.sroa.20.0644, %bb.dd ]
  %.sroa.0375.2 = phi ptr [ %i.wy, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i196 ], [ %.sroa.0375.0645, %bb.dd ] ; 4 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn510, i64 1 ; 2 uses
  %i.xd = ptrtoint ptr %.sroa.20.3 to i64
  %i.xe = xor i64 %.pre-phi, -1
  %i.xf = add i64 %i.xd, %i.xe                    ; 3 uses
  %i.xg = icmp sgt i64 %i.xf, 0
  br i1 %i.xg, label %.lr.ph.i.i.i186, label %.loopexit537

.lr.ph.i.i.i186:                                  ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i184, %bb.dg
  %.019.i.i.i187 = phi i64 [ %.0920.i56.i.i189, %bb.dg ], [ %i.xf, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i184 ] ; 3 uses
  %.0920.in.i.i.i188 = add nsw i64 %.019.i.i.i187, -1
  %.0920.i56.i.i189 = lshr i64 %.0920.in.i.i.i188, 1 ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0375.2, i64 %.0920.i56.i.i189
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !13  ; 2 uses
  %i.xj = icmp sgt i8 %i.xi, %i.xc
  br i1 %i.xj, label %bb.dg, label %.loopexit537

bb.dg:                                            ; preds = %.lr.ph.i.i.i186
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.0375.2, i64 %.019.i.i.i187
  store i8 %i.xi, ptr %i.xk, align 1, !tbaa !13
  %.not.i.i190 = icmp eq i64 %.0920.i56.i.i189, 0
  br i1 %.not.i.i190, label %.loopexit537, label %.lr.ph.i.i.i186, !llvm.loop !27428

.loopexit537:                                     ; preds = %bb.dg, %.lr.ph.i.i.i186, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i184
  %.0.lcssa.i.i.i185 = phi i64 [ %i.xf, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i184 ], [ %.019.i.i.i187, %.lr.ph.i.i.i186 ], [ 0, %bb.dg ]
  %i.xl = getelementptr inbounds i8, ptr %.sroa.0375.2, i64 %.0.lcssa.i.i.i185
  store i8 %i.xc, ptr %i.xl, align 1, !tbaa !13
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241

.loopexit555:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i191
  %lpad.loopexit557 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit288

bb.dh:                                            ; preds = %.thread500
  br i1 %i.wh, label %.thread502, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.xm = getelementptr inbounds nuw i8, ptr %i.us, i64 59
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.xo = trunc nuw i8 %i.xn to i1
  br i1 %i.xo, label %bb.dj, label %.thread788

bb.dj:                                            ; preds = %bb.di
  %i.xp = getelementptr inbounds nuw i8, ptr %i.us, i64 64
  %.0.i.i.i.i201 = load i32, ptr %i.xp, align 8, !tbaa !3
  %i.xq = sext i32 %.0.i.i.i.i201 to i64
  %i.xr = getelementptr inbounds i8, ptr %i.we, i64 %i.xq
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !13
  %i.xt = load i8, ptr %.sroa.0375.0645, align 1, !tbaa !13
  %i.xu = icmp sgt i8 %i.xs, %i.xt
  br i1 %i.xu, label %bb.dk, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241

.thread788:                                       ; preds = %bb.di
  %i.xv = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !1529
  %i.xx = shl nsw i64 %indvars.iv707, 2
  %i.xy = getelementptr inbounds i8, ptr %i.xw, i64 %i.xx
  %.0.i.i.i.i201790 = load i32, ptr %i.xy, align 4, !tbaa !3
  %i.xz = sext i32 %.0.i.i.i.i201790 to i64
  %i.ya = getelementptr inbounds i8, ptr %i.we, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !13
  %i.yc = load i8, ptr %.sroa.0375.0645, align 1, !tbaa !13
  %i.yd = icmp sgt i8 %i.yb, %i.yc
  br i1 %i.yd, label %.thread791, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241

.thread502:                                       ; preds = %bb.dh
  %i.ye = getelementptr inbounds i8, ptr %i.we, i64 %indvars.iv707
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !13
  %i.yg = load i8, ptr %.sroa.0375.0645, align 1, !tbaa !13
  %i.yh = icmp sgt i8 %i.yf, %i.yg
  %i.yi = trunc nsw i64 %indvars.iv707 to i32
  br i1 %i.yh, label %.thread504, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241

bb.dk:                                            ; preds = %bb.dj
  %i.yj = getelementptr inbounds nuw i8, ptr %i.us, i64 64
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !1255
  br label %.thread504

.thread791:                                       ; preds = %.thread788
  %i.yl = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !1529
  %i.yn = shl nsw i64 %indvars.iv707, 2
  %i.yo = getelementptr inbounds i8, ptr %i.ym, i64 %i.yn
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !3
  br label %.thread504

.thread504:                                       ; preds = %.thread502, %.thread791, %bb.dk
  %.0.i.i.i.i204 = phi i32 [ %i.yp, %.thread791 ], [ %i.yk, %bb.dk ], [ %i.yi, %.thread502 ]
  %i.yq = sext i32 %.0.i.i.i.i204 to i64
  %i.yr = getelementptr inbounds i8, ptr %i.we, i64 %i.yq
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !13  ; 3 uses
  %.not.i.i.i206 = icmp eq ptr %.sroa.20.0644, %.sroa.38.0643
  br i1 %.not.i.i.i206, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.thread504
  store i8 %i.ys, ptr %.sroa.20.0644, align 1, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i208

bb.dm:                                            ; preds = %.thread504
  %i.yt = icmp eq i64 %i.wb, 9223372036854775807
  br i1 %i.yt, label %bb.dn, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i215

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc221 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit288.thread.loopexit.split-lp

.noexc221:                                        ; preds = %bb.dn
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i215: ; preds = %bb.dm
  %14 = shl i64 %i.wb, 1
  %15 = icmp slt i64 %i.wb, 0
  %i.yu = call i64 @llvm.umin.i64(i64 %14, i64 9223372036854775807)
  %i.yv = select i1 %15, i64 9223372036854775807, i64 %i.yu ; 3 uses
  %.not.i.i.i.i.i217 = icmp ne i64 %i.yv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i217)
  %i.yw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yv) #42
          to label %.noexc222 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit288.thread.loopexit ; 5 uses

.noexc222:                                        ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i215
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.wb ; 3 uses
  store i8 %i.ys, ptr %i.yx, align 1, !tbaa !13
  %i.yy = icmp sgt i64 %i.wb, 0
  br i1 %i.yy, label %bb.do, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220

bb.do:                                            ; preds = %.noexc222
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yw, ptr nonnull align 1 %.sroa.0375.0645, i64 %i.wb, i1 false)
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220: ; preds = %bb.do, %.noexc222
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0375.0645, i64 noundef %i.wb) #43
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.yv
  %.pre711 = load i8, ptr %i.yx, align 1, !tbaa !13
  %.pre714 = ptrtoint ptr %i.yw to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i208

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i208:      ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220, %bb.dl
  %.pre-phi715 = phi i64 [ %.pre714, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220 ], [ %i.wa, %bb.dl ] ; 3 uses
  %i.za = phi i8 [ %.pre711, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220 ], [ %i.ys, %bb.dl ] ; 2 uses
  %.sroa.38.3 = phi ptr [ %i.yz, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220 ], [ %.sroa.38.0643, %bb.dl ] ; 2 uses
  %.pn = phi ptr [ %i.yx, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220 ], [ %.sroa.20.0644, %bb.dl ] ; 6 uses
  %.sroa.0375.3 = phi ptr [ %i.yw, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i220 ], [ %.sroa.0375.0645, %bb.dl ] ; 15 uses
  %.sroa.20.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.zb = ptrtoint ptr %.sroa.20.4 to i64         ; 2 uses
  %i.zc = xor i64 %.pre-phi715, -1
  %i.zd = add i64 %i.zb, %i.zc                    ; 3 uses
  %i.ze = icmp sgt i64 %i.zd, 0
  br i1 %i.ze, label %.lr.ph.i.i.i210, label %.loopexit538

.lr.ph.i.i.i210:                                  ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i208, %bb.dp
  %.019.i.i.i211 = phi i64 [ %.0920.i56.i.i213, %bb.dp ], [ %i.zd, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i208 ] ; 3 uses
  %.0920.in.i.i.i212 = add nsw i64 %.019.i.i.i211, -1
  %.0920.i56.i.i213 = lshr i64 %.0920.in.i.i.i212, 1 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.0375.3, i64 %.0920.i56.i.i213
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !13  ; 2 uses
  %i.zh = icmp sgt i8 %i.zg, %i.za
  br i1 %i.zh, label %bb.dp, label %.loopexit538

bb.dp:                                            ; preds = %.lr.ph.i.i.i210
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.0375.3, i64 %.019.i.i.i211
  store i8 %i.zg, ptr %i.zi, align 1, !tbaa !13
  %.not.i.i214 = icmp eq i64 %.0920.i56.i.i213, 0
  br i1 %.not.i.i214, label %.loopexit538, label %.lr.ph.i.i.i210, !llvm.loop !27428

.loopexit538:                                     ; preds = %bb.dp, %.lr.ph.i.i.i210, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i208
  %.0.lcssa.i.i.i209 = phi i64 [ %i.zd, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i208 ], [ %.019.i.i.i211, %.lr.ph.i.i.i210 ], [ 0, %bb.dp ]
  %i.zj = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %.0.lcssa.i.i.i209
  store i8 %i.za, ptr %i.zj, align 1, !tbaa !13
  %i.zk = sub i64 %i.zb, %.pre-phi715
  %i.zl = icmp sgt i64 %i.zk, 1
  br i1 %i.zl, label %bb.dq, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241

bb.dq:                                            ; preds = %.loopexit538
  %i.zm = load i8, ptr %.pn, align 1, !tbaa !13   ; 2 uses
  %i.zn = load i8, ptr %.sroa.0375.3, align 1, !tbaa !13
  store i8 %i.zn, ptr %.pn, align 1, !tbaa !13
  %i.zo = ptrtoint ptr %.pn to i64
  %i.zp = sub i64 %i.zo, %.pre-phi715             ; 4 uses
  %i.zq = add nsw i64 %i.zp, -1
  %i.zr = sdiv i64 %i.zq, 2
  %i.zs = icmp sgt i64 %i.zp, 2
  br i1 %i.zs, label %.lr.ph.i.i.i.i238, label %._crit_edge.i.i.i.i224

.lr.ph.i.i.i.i238:                                ; preds = %bb.dq, %.lr.ph.i.i.i.i238
  %.035.i.i.i.i239 = phi i64 [ %spec.select.i.i.i.i240, %.lr.ph.i.i.i.i238 ], [ 0, %bb.dq ] ; 2 uses
  %i.zt = shl i64 %.035.i.i.i.i239, 1             ; 2 uses
  %i.zu = add i64 %i.zt, 2                        ; 2 uses
  %i.zv = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %i.zu
  %i.zw = or disjoint i64 %i.zt, 1                ; 2 uses
  %i.zx = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %i.zw
  %i.zy = load i8, ptr %i.zv, align 1, !tbaa !13
  %i.zz = load i8, ptr %i.zx, align 1, !tbaa !13
  %i.aaa = icmp sgt i8 %i.zy, %i.zz
  %spec.select.i.i.i.i240 = select i1 %i.aaa, i64 %i.zw, i64 %i.zu ; 4 uses
  %i.aab = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %spec.select.i.i.i.i240
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !13
  %i.aad = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %.035.i.i.i.i239
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !13
  %i.aae = icmp slt i64 %spec.select.i.i.i.i240, %i.zr
  br i1 %i.aae, label %.lr.ph.i.i.i.i238, label %._crit_edge.i.i.i.i224, !llvm.loop !27429

._crit_edge.i.i.i.i224:                           ; preds = %.lr.ph.i.i.i.i238, %bb.dq
  %.0.lcssa.i.i.i.i225 = phi i64 [ 0, %bb.dq ], [ %spec.select.i.i.i.i240, %.lr.ph.i.i.i.i238 ] ; 5 uses
  %i.aaf = and i64 %i.zp, 1
  %i.aag = icmp eq i64 %i.aaf, 0
  br i1 %i.aag, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %._crit_edge.i.i.i.i224
  %i.aah = add nsw i64 %i.zp, -2
  %i.aai = ashr exact i64 %i.aah, 1
  %i.aaj = icmp eq i64 %.0.lcssa.i.i.i.i225, %i.aai
  br i1 %i.aaj, label %.thread.i.i.i237, label %bb.ds

.thread.i.i.i237:                                 ; preds = %bb.dr
  %i.aak = shl nuw nsw i64 %.0.lcssa.i.i.i.i225, 1
  %i.aal = or disjoint i64 %i.aak, 1              ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.0375.3, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !13
  %i.aao = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %.0.lcssa.i.i.i.i225
  store i8 %i.aan, ptr %i.aao, align 1, !tbaa !13
  br label %.lr.ph.i.i.i.i.i229.preheader

bb.ds:                                            ; preds = %bb.dr, %._crit_edge.i.i.i.i224
  %.not.i.i.i226 = icmp eq i64 %.0.lcssa.i.i.i.i225, 0
  br i1 %.not.i.i.i226, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233, label %.lr.ph.i.i.i.i.i229.preheader

.lr.ph.i.i.i.i.i229.preheader:                    ; preds = %bb.ds, %.thread.i.i.i237
  %.019.i.i.i.i.i230.ph = phi i64 [ %.0.lcssa.i.i.i.i225, %bb.ds ], [ %i.aal, %.thread.i.i.i237 ]
  br label %.lr.ph.i.i.i.i.i229

.lr.ph.i.i.i.i.i229:                              ; preds = %.lr.ph.i.i.i.i.i229.preheader, %bb.dt
  %.019.i.i.i.i.i230 = phi i64 [ %.0920.i.i67.i.i.i232, %bb.dt ], [ %.019.i.i.i.i.i230.ph, %.lr.ph.i.i.i.i.i229.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i231 = add nsw i64 %.019.i.i.i.i.i230, -1
  %.0920.i.i67.i.i.i232 = lshr i64 %.0920.in.i.i.i.i.i231, 1 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0375.3, i64 %.0920.i.i67.i.i.i232
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !13 ; 2 uses
  %i.aar = icmp sgt i8 %i.aaq, %i.zm
  br i1 %i.aar, label %bb.dt, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233

bb.dt:                                            ; preds = %.lr.ph.i.i.i.i.i229
  %i.aas = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %.019.i.i.i.i.i230
  store i8 %i.aaq, ptr %i.aas, align 1, !tbaa !13
  %.not8.i.i.i236 = icmp eq i64 %.0920.i.i67.i.i.i232, 0
  br i1 %.not8.i.i.i236, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233, label %.lr.ph.i.i.i.i.i229, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233: ; preds = %bb.dt, %.lr.ph.i.i.i.i.i229, %bb.ds
  %.0.lcssa.i.i.i.i.i234 = phi i64 [ 0, %bb.ds ], [ %.019.i.i.i.i.i230, %.lr.ph.i.i.i.i.i229 ], [ 0, %bb.dt ]
  %i.aat = getelementptr inbounds i8, ptr %.sroa.0375.3, i64 %.0.lcssa.i.i.i.i.i234
  store i8 %i.zm, ptr %i.aat, align 1, !tbaa !13
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241

_ZNSt6vectorIaSaIaEED2Ev.exit288.thread.loopexit: ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i215
  %lpad.loopexit552 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit288.thread

_ZNSt6vectorIaSaIaEED2Ev.exit288.thread.loopexit.split-lp: ; preds = %bb.dn
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit288.thread

bb.du:                                            ; preds = %bb.cx
  %i.aau = add nsw i32 %.028.i646, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit241: ; preds = %.thread788, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233, %.loopexit538, %.thread502, %bb.du, %bb.dj, %.loopexit537
  %.sroa.38.1 = phi ptr [ %.sroa.38.2, %.loopexit537 ], [ %.sroa.38.0643, %.thread502 ], [ %.sroa.38.0643, %bb.dj ], [ %.sroa.38.0643, %bb.du ], [ %.sroa.38.3, %.loopexit538 ], [ %.sroa.38.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233 ], [ %.sroa.38.0643, %.thread788 ] ; 5 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.3, %.loopexit537 ], [ %.sroa.20.0644, %.thread502 ], [ %.sroa.20.0644, %bb.dj ], [ %.sroa.20.0644, %bb.du ], [ %.pn, %.loopexit538 ], [ %.pn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233 ], [ %.sroa.20.0644, %.thread788 ] ; 4 uses
  %.sroa.0375.1 = phi ptr [ %.sroa.0375.2, %.loopexit537 ], [ %.sroa.0375.0645, %.thread502 ], [ %.sroa.0375.0645, %bb.dj ], [ %.sroa.0375.0645, %bb.du ], [ %.sroa.0375.3, %.loopexit538 ], [ %.sroa.0375.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233 ], [ %.sroa.0375.0645, %.thread788 ] ; 19 uses
  %.129.i = phi i32 [ %.028.i646, %.loopexit537 ], [ %.028.i646, %.thread502 ], [ %.028.i646, %bb.dj ], [ %i.aau, %bb.du ], [ %.028.i646, %.loopexit538 ], [ %.028.i646, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i233 ], [ %.028.i646, %.thread788 ] ; 3 uses
  %indvars.iv.next708 = add nsw i64 %indvars.iv707, 1 ; 2 uses
  %i.aav = trunc nsw i64 %indvars.iv.next708 to i32
  %i.aaw = icmp eq i32 %i.ug, %i.aav
  br i1 %i.aaw, label %bb.cn, label %bb.cr

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168:            ; preds = %bb.cq, %.noexc167, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i162
  %.sroa.0348.0 = phi ptr [ %i.un, %bb.cq ], [ %i.un, %.noexc167 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i162 ] ; 9 uses
  %.sroa.12.0 = phi ptr [ %i.uo, %bb.cq ], [ %i.uo, %.noexc167 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i162 ] ; 2 uses
  %.0.i.i.i.i.i164 = phi ptr [ %i.uo, %bb.cq ], [ %i.up, %.noexc167 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i162 ] ; 2 uses
  %i.aax = icmp eq ptr %.sroa.0375.1, %.sroa.20.1
  br i1 %i.aax, label %.preheader546, label %.lr.ph

.preheader546:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit259, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168
  %i.aay = icmp eq ptr %.sroa.0348.0, %.0.i.i.i.i.i164
  br i1 %i.aay, label %.preheader540, label %.lr.ph650

.lr.ph650:                                        ; preds = %.preheader546
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.si, i64 60 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.si, i64 64 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.si, i64 68 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.si, i64 48
  br label %bb.ea

.lr.ph:                                           ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit259
  %.027.i648 = phi i64 [ %i.abe, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit259 ], [ %i.ul, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168 ]
  %.sroa.20.2647 = phi ptr [ %i.acr, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit259 ], [ %.sroa.20.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit168 ] ; 3 uses
  %i.abd = load i8, ptr %.sroa.0375.1, align 1, !tbaa !13 ; 2 uses
  %i.abe = add i64 %.027.i648, -1                 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.0348.0, i64 %i.abe
  store i8 %i.abd, ptr %i.abf, align 1, !tbaa !13
  %i.abg = ptrtoint ptr %.sroa.20.2647 to i64
  %i.abh = sub i64 %i.abg, %i.uk
  %i.abi = icmp sgt i64 %i.abh, 1
  br i1 %i.abi, label %bb.dv, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit259

bb.dv:                                            ; preds = %.lr.ph
  %i.abj = getelementptr inbounds i8, ptr %.sroa.20.2647, i64 -1 ; 3 uses
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !13 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENSL_IiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKS1_ST_SV_EUlST_E_EEvST_:bb.a
  %i.bm = shl nsw i64 %indvars.iv293, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  br label %.noexc9

.noexc9:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bo, %bb.l ], [ %i.bj, %bb.k ], [ %i.as, %bb.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1261
  %i.bs = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1265
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bs
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.bz = load ptr, ptr %i.az, align 8, !tbaa !3587, !nonnull !797, !align !916 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1547
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 58
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.noexc11, label %bb.m

bb.m:                                             ; preds = %.noexc9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 59
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !1255
  br label %.noexc11

bb.o:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1529
  %i.cm = shl nsw i64 %indvars.iv293, 2
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  br label %.noexc11

.noexc11:                                         ; preds = %bb.o, %bb.n, %.noexc9
  %.0.i.i.i = phi i32 [ %i.co, %bb.o ], [ %i.cj, %bb.n ], [ %i.as, %.noexc9 ]
  %i.cp = sext i32 %.0.i.i.i to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 7 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %.noexc12, label %bb.r, !prof !81

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !27510
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !27515
  store i32 %i.cr, ptr %2, align 16, !tbaa !13, !alias.scope !27518, !noalias !27515
  store i32 0, ptr %i.aj, align 16, !tbaa !13, !alias.scope !27518, !noalias !27515
  store i32 %i.cr, ptr %i.ak, align 16, !tbaa !13, !alias.scope !27518, !noalias !27515
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %2)
          to label %.noexc13 unwind label %bb.bx

.noexc13:                                         ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !27515
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.302) #45
          to label %bb.p unwind label %bb.q, !noalias !27510

bb.p:                                             ; preds = %.noexc13
  unreachable

bb.q:                                             ; preds = %.noexc13
  %i.ct = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cu = load ptr, ptr %3, align 8, !tbaa !7, !noalias !27510 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.al
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.cw = load i64, ptr %i.al, align 8, !tbaa !13, !noalias !27510
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #43, !noalias !27510
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !27510
  br label %.body

bb.r:                                             ; preds = %.noexc11
  %i.cy = icmp eq i32 %i.cr, 0
  %i.cz = icmp eq i32 %i.by, 0
  %or.cond = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond, label %bb.bt, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = add nsw i32 %i.by, %i.bu
  %i.db = zext nneg i32 %i.cr to i64
  %i.dc = sext i32 %i.bu to i64
  br label %bb.x

bb.t:                                             ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %i.dd = ptrtoint ptr %.sroa.20.1 to i64
  %i.de = ptrtoint ptr %.sroa.0161.1 to i64       ; 4 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 6 uses
  %i.dg = icmp slt i64 %i.df, 0
  br i1 %i.dg, label %bb.u, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc18 unwind label %bb.bf

.noexc18:                                         ; preds = %bb.u
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.t
  %.not.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #42
          to label %.noexc19 unwind label %bb.bf  ; 5 uses

.noexc19:                                         ; preds = %bb.v
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df  ; 3 uses
  store i8 0, ptr %i.dh, align 1, !tbaa !13, !noalias !27510
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 2 uses
  %i.dk = add nsw i64 %i.df, -1                   ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.w

bb.w:                                             ; preds = %.noexc19
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 0, i64 %i.dk, i1 false), !noalias !27510
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit

bb.x:                                             ; preds = %bb.s, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %indvars.iv = phi i64 [ %i.dc, %bb.s ], [ %indvars.iv.next, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 10 uses
  %.028.i.i267 = phi i32 [ 0, %bb.s ], [ %.129.i.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 7 uses
  %.sroa.0161.0266 = phi ptr [ null, %bb.s ], [ %.sroa.0161.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 18 uses
  %.sroa.20.0265 = phi ptr [ null, %bb.s ], [ %.sroa.20.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 12 uses
  %.sroa.38.0264 = phi ptr [ null, %bb.s ], [ %.sroa.38.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 8 uses
  %i.dm = load ptr, ptr %i.bp, align 8, !tbaa !1531, !noalias !27510, !nonnull !797, !align !916 ; 15 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1530, !noalias !27510 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 58
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !1527, !range !796, !noalias !27510, !noundef !797
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 57
  %i.dt = load i8, ptr %i.ds, align 1, !range !796, !noalias !27510
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond.i.i.i = select i1 %i.dr, i1 true, i1 %i.du
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dv = lshr i64 %indvars.iv, 6
  %i.dw = and i64 %i.dv, 67108863
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !855, !noalias !27510
  %i.dz = and i64 %indvars.iv, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.dy, %i.ea
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 59
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !1528, !range !796, !noalias !27510, !noundef !797
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ef = load i64, ptr %i.do, align 8, !tbaa !855, !noalias !27510
  %i.eg = and i64 %i.ef, 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1529, !noalias !27510
  %i.ej = shl nsw i64 %indvars.iv, 2
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !27510
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = lshr i64 %i.em, 6
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !855, !noalias !27510
  %i.eq = and i64 %i.em, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.er, %i.ep
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i20.in = phi i64 [ %i.eb, %bb.z ], [ %i.eg, %bb.ab ], [ %i.es, %bb.ac ]
  %.0.i.i.i20.not = icmp eq i64 %.0.i.i.i20.in, 0
  br i1 %.0.i.i.i20.not, label %bb.ba, label %.thread

.thread:                                          ; preds = %bb.x, %bb.ad
  %i.et = ptrtoint ptr %.sroa.20.0265 to i64
  %i.eu = ptrtoint ptr %.sroa.0161.0266 to i64    ; 3 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 15 uses
  %i.ew = icmp ult i64 %i.ev, %i.db
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1547, !noalias !27510 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dm, i64 58
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !1527, !range !796, !noalias !27510, !noundef !797
  %i.fb = trunc nuw i8 %i.fa to i1                ; 2 uses
  br i1 %i.ew, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %.thread
  %i.fc = trunc nsw i64 %indvars.iv to i32
  br i1 %i.fb, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dm, i64 59
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !1528, !range !796, !noalias !27510, !noundef !797
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !1255, !noalias !27510
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1529, !noalias !27510
  %i.fk = shl nsw i64 %indvars.iv, 2
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !27510
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.fm, %bb.ah ], [ %i.fh, %bb.ag ], [ %i.fc, %bb.ae ]
  %i.fn = sext i32 %.0.i.i.i.i to i64
  %i.fo = getelementptr inbounds i8, ptr %i.ey, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13, !noalias !27510 ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %.sroa.20.0265, %.sroa.38.0264
  br i1 %.not.i.i.i23, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 %i.fp, ptr %.sroa.20.0265, align 1, !tbaa !13, !noalias !27510
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ai
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.fq = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ev
  %i.fr = call i64 @llvm.umin.i64(i64 %i.fq, i64 9223372036854775807) ; 2 uses
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #42
          to label %.noexc26 unwind label %.loopexit213 ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ev ; 3 uses
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !13, !noalias !27510
  %i.fu = icmp sgt i64 %i.ev, 0
  br i1 %i.fu, label %bb.ak, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.ak:                                            ; preds = %.noexc26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr align 1 %.sroa.0161.0266, i64 %i.ev, i1 false), !noalias !27510
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ak, %.noexc26
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0161.0266, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0266, i64 noundef %i.ev) #43, !noalias !27510
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.al, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  %.pre296 = load i8, ptr %i.ft, align 1, !tbaa !13, !noalias !27510
  %.pre297 = ptrtoint ptr %i.fs to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i:         ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.aj
  %.pre-phi = phi i64 [ %.pre297, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.eu, %bb.aj ]
  %i.fw = phi i8 [ %.pre296, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.fp, %bb.aj ] ; 2 uses
  %.sroa.38.2 = phi ptr [ %i.fv, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.38.0264, %bb.aj ]
  %.pn200 = phi ptr [ %i.ft, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.20.0265, %bb.aj ]
  %.sroa.0161.2 = phi ptr [ %i.fs, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0161.0266, %bb.aj ] ; 4 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn200, i64 1 ; 2 uses
  %i.fx = ptrtoint ptr %.sroa.20.3 to i64
  %i.fy = xor i64 %.pre-phi, -1
  %i.fz = add i64 %i.fx, %i.fy                    ; 3 uses
  %i.ga = icmp sgt i64 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i, %bb.am
  %.019.i.i.i = phi i64 [ %.0920.i56.i.i, %bb.am ], [ %i.fz, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i56.i.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0161.2, i64 %.0920.i56.i.i
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13, !noalias !27510 ; 2 uses
  %i.gd = icmp sgt i8 %i.gc, %i.fw
  br i1 %i.gd, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %.lr.ph.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0161.2, i64 %.019.i.i.i
  store i8 %i.gc, ptr %i.ge, align 1, !tbaa !13, !noalias !27510
  %.not.i.i24 = icmp eq i64 %.0920.i56.i.i, 0
  br i1 %.not.i.i24, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !27428

.loopexit:                                        ; preds = %bb.am, %.lr.ph.i.i.i, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.fz, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.am ]
  %i.gf = getelementptr inbounds i8, ptr %.sroa.0161.2, i64 %.0.lcssa.i.i.i
  store i8 %i.fw, ptr %i.gf, align 1, !tbaa !13, !noalias !27510
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.loopexit213:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit88

bb.an:                                            ; preds = %.thread
  br i1 %i.fb, label %.thread193, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dm, i64 59
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !1528, !range !796, !noalias !27510, !noundef !797
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.ap, label %.thread332

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %.0.i.i.i.i28 = load i32, ptr %i.gj, align 8, !tbaa !3, !noalias !27510
  %i.gk = sext i32 %.0.i.i.i.i28 to i64
  %i.gl = getelementptr inbounds i8, ptr %i.ey, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !13, !noalias !27510
  %i.gn = load i8, ptr %.sroa.0161.0266, align 1, !tbaa !13, !noalias !27510
  %i.go = icmp sgt i8 %i.gm, %i.gn
  br i1 %i.go, label %bb.aq, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread332:                                       ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !1529, !noalias !27510
  %i.gr = shl nsw i64 %indvars.iv, 2
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 %i.gr
  %.0.i.i.i.i28334 = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !27510
  %i.gt = sext i32 %.0.i.i.i.i28334 to i64
  %i.gu = getelementptr inbounds i8, ptr %i.ey, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !13, !noalias !27510
  %i.gw = load i8, ptr %.sroa.0161.0266, align 1, !tbaa !13, !noalias !27510
  %i.gx = icmp sgt i8 %i.gv, %i.gw
  br i1 %i.gx, label %.thread335, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread193:                                       ; preds = %bb.an
  %i.gy = getelementptr inbounds i8, ptr %i.ey, i64 %indvars.iv
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !13, !noalias !27510
  %i.ha = load i8, ptr %.sroa.0161.0266, align 1, !tbaa !13, !noalias !27510
  %i.hb = icmp sgt i8 %i.gz, %i.ha
  %i.hc = trunc nsw i64 %indvars.iv to i32
  br i1 %i.hb, label %.thread195, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.aq:                                            ; preds = %bb.ap
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !1255, !noalias !27510
  br label %.thread195

.thread335:                                       ; preds = %.thread332
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1529, !noalias !27510
  %i.hh = shl nsw i64 %indvars.iv, 2
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3, !noalias !27510
  br label %.thread195

.thread195:                                       ; preds = %.thread193, %.thread335, %bb.aq
  %.0.i.i.i.i31 = phi i32 [ %i.hj, %.thread335 ], [ %i.he, %bb.aq ], [ %i.hc, %.thread193 ]
  %i.hk = sext i32 %.0.i.i.i.i31 to i64
  %i.hl = getelementptr inbounds i8, ptr %i.ey, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !13, !noalias !27510 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %.sroa.20.0265, %.sroa.38.0264
  br i1 %.not.i.i.i33, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.thread195
  store i8 %i.hm, ptr %.sroa.20.0265, align 1, !tbaa !13, !noalias !27510
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i35

bb.as:                                            ; preds = %.thread195
  %i.hn = icmp eq i64 %i.ev, 9223372036854775807
  br i1 %i.hn, label %bb.at, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i42

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc48 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit88.thread.loopexit.split-lp

.noexc48:                                         ; preds = %bb.at
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i42: ; preds = %bb.as
  %7 = shl i64 %i.ev, 1
  %8 = icmp slt i64 %i.ev, 0
  %i.ho = call i64 @llvm.umin.i64(i64 %7, i64 9223372036854775807)
  %i.hp = select i1 %8, i64 9223372036854775807, i64 %i.ho ; 3 uses
  %.not.i.i.i.i.i44 = icmp ne i64 %i.hp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i44), !noalias !27510
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #42
          to label %.noexc49 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit88.thread.loopexit ; 5 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i42
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ev ; 3 uses
  store i8 %i.hm, ptr %i.hr, align 1, !tbaa !13, !noalias !27510
  %i.hs = icmp sgt i64 %i.ev, 0
  br i1 %i.hs, label %bb.au, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47

bb.au:                                            ; preds = %.noexc49
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull align 1 %.sroa.0161.0266, i64 %i.ev, i1 false), !noalias !27510
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47: ; preds = %bb.au, %.noexc49
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.0266, i64 noundef %i.ev) #43, !noalias !27510
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp
  %.pre = load i8, ptr %i.hr, align 1, !tbaa !13, !noalias !27510
  %.pre298 = ptrtoint ptr %i.hq to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i35

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i35:       ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47, %bb.ar
  %.pre-phi299 = phi i64 [ %.pre298, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47 ], [ %i.eu, %bb.ar ] ; 3 uses
  %i.hu = phi i8 [ %.pre, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47 ], [ %i.hm, %bb.ar ] ; 2 uses
  %.sroa.38.3 = phi ptr [ %i.ht, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47 ], [ %.sroa.38.0264, %bb.ar ] ; 2 uses
  %.pn = phi ptr [ %i.hr, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47 ], [ %.sroa.20.0265, %bb.ar ] ; 6 uses
  %.sroa.0161.3 = phi ptr [ %i.hq, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i47 ], [ %.sroa.0161.0266, %bb.ar ] ; 15 uses
  %.sroa.20.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.hv = ptrtoint ptr %.sroa.20.4 to i64         ; 2 uses
  %i.hw = xor i64 %.pre-phi299, -1
  %i.hx = add i64 %i.hv, %i.hw                    ; 3 uses
  %i.hy = icmp sgt i64 %i.hx, 0
  br i1 %i.hy, label %.lr.ph.i.i.i37, label %.loopexit201

.lr.ph.i.i.i37:                                   ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i35, %bb.av
  %.019.i.i.i38 = phi i64 [ %.0920.i56.i.i40, %bb.av ], [ %i.hx, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i35 ] ; 3 uses
  %.0920.in.i.i.i39 = add nsw i64 %.019.i.i.i38, -1
  %.0920.i56.i.i40 = lshr i64 %.0920.in.i.i.i39, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0161.3, i64 %.0920.i56.i.i40
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !13, !noalias !27510 ; 2 uses
  %i.ib = icmp sgt i8 %i.ia, %i.hu
  br i1 %i.ib, label %bb.av, label %.loopexit201

bb.av:                                            ; preds = %.lr.ph.i.i.i37
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0161.3, i64 %.019.i.i.i38
  store i8 %i.ia, ptr %i.ic, align 1, !tbaa !13, !noalias !27510
  %.not.i.i41 = icmp eq i64 %.0920.i56.i.i40, 0
  br i1 %.not.i.i41, label %.loopexit201, label %.lr.ph.i.i.i37, !llvm.loop !27428

.loopexit201:                                     ; preds = %bb.av, %.lr.ph.i.i.i37, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i35
  %.0.lcssa.i.i.i36 = phi i64 [ %i.hx, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i35 ], [ %.019.i.i.i38, %.lr.ph.i.i.i37 ], [ 0, %bb.av ]
  %i.id = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %.0.lcssa.i.i.i36
  store i8 %i.hu, ptr %i.id, align 1, !tbaa !13, !noalias !27510
  %i.ie = sub i64 %i.hv, %.pre-phi299
  %i.if = icmp sgt i64 %i.ie, 1
  br i1 %i.if, label %bb.aw, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.aw:                                            ; preds = %.loopexit201
  %i.ig = load i8, ptr %.pn, align 1, !tbaa !13, !noalias !27510 ; 2 uses
  %i.ih = load i8, ptr %.sroa.0161.3, align 1, !tbaa !13, !noalias !27510
  store i8 %i.ih, ptr %.pn, align 1, !tbaa !13, !noalias !27510
  %i.ii = ptrtoint ptr %.pn to i64
  %i.ij = sub i64 %i.ii, %.pre-phi299             ; 4 uses
  %i.ik = add nsw i64 %i.ij, -1
  %i.il = sdiv i64 %i.ik, 2
  %i.im = icmp sgt i64 %i.ij, 2
  br i1 %i.im, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aw, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.aw ] ; 2 uses
  %i.in = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.io = add i64 %i.in, 2                        ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %i.io
  %i.iq = or disjoint i64 %i.in, 1                ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %i.iq
  %i.is = load i8, ptr %i.ip, align 1, !tbaa !13, !noalias !27510
  %i.it = load i8, ptr %i.ir, align 1, !tbaa !13, !noalias !27510
  %i.iu = icmp sgt i8 %i.is, %i.it
  %spec.select.i.i.i.i = select i1 %i.iu, i64 %i.iq, i64 %i.io ; 4 uses
  %i.iv = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %spec.select.i.i.i.i
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !13, !noalias !27510
  %i.ix = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %.035.i.i.i.i
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !13, !noalias !27510
  %i.iy = icmp slt i64 %spec.select.i.i.i.i, %i.il
  br i1 %i.iy, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27429

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.aw
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.aw ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.iz = and i64 %i.ij, 1
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jb = add nsw i64 %i.ij, -2
  %i.jc = ashr exact i64 %i.jb, 1
  %i.jd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.jc
  br i1 %i.jd, label %.thread.i.i.i, label %bb.ay

.thread.i.i.i:                                    ; preds = %bb.ax
  %i.je = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.jf = or disjoint i64 %i.je, 1                ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0161.3, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !13, !noalias !27510
  %i.ji = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %.0.lcssa.i.i.i.i
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !13, !noalias !27510
  br label %.lr.ph.i.i.i.i.i.preheader

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i.i.i
  %.not.i.i.i51 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i51, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ay, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ay ], [ %i.jf, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.az
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.az ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0161.3, i64 %.0920.i.i67.i.i.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !13, !noalias !27510 ; 2 uses
  %i.jl = icmp sgt i8 %i.jk, %i.ig
  br i1 %i.jl, label %bb.az, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jm = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %.019.i.i.i.i.i
  store i8 %i.jk, ptr %i.jm, align 1, !tbaa !13, !noalias !27510
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i: ; preds = %bb.az, %.lr.ph.i.i.i.i.i, %bb.ay
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ay ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.az ]
  %i.jn = getelementptr inbounds i8, ptr %.sroa.0161.3, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.ig, ptr %i.jn, align 1, !tbaa !13, !noalias !27510
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt6vectorIaSaIaEED2Ev.exit88.thread.loopexit:  ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i42
  %lpad.loopexit210 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit88.thread

_ZNSt6vectorIaSaIaEED2Ev.exit88.thread.loopexit.split-lp: ; preds = %bb.at
  %lpad.loopexit.split-lp211 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit88.thread

bb.ba:                                            ; preds = %bb.ad
  %i.jo = add nsw i32 %.028.i.i267, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit: ; preds = %.thread332, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, %.loopexit201, %.thread193, %bb.ba, %bb.ap, %.loopexit
  %.sroa.38.1 = phi ptr [ %.sroa.38.2, %.loopexit ], [ %.sroa.38.0264, %.thread193 ], [ %.sroa.38.0264, %bb.ap ], [ %.sroa.38.0264, %bb.ba ], [ %.sroa.38.3, %.loopexit201 ], [ %.sroa.38.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.38.0264, %.thread332 ] ; 5 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.3, %.loopexit ], [ %.sroa.20.0265, %.thread193 ], [ %.sroa.20.0265, %bb.ap ], [ %.sroa.20.0265, %bb.ba ], [ %.pn, %.loopexit201 ], [ %.pn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.20.0265, %.thread332 ] ; 4 uses
  %.sroa.0161.1 = phi ptr [ %.sroa.0161.2, %.loopexit ], [ %.sroa.0161.0266, %.thread193 ], [ %.sroa.0161.0266, %bb.ap ], [ %.sroa.0161.0266, %bb.ba ], [ %.sroa.0161.3, %.loopexit201 ], [ %.sroa.0161.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.0161.0266, %.thread332 ] ; 19 uses
  %.129.i.i = phi i32 [ %.028.i.i267, %.loopexit ], [ %.028.i.i267, %.thread193 ], [ %.028.i.i267, %bb.ap ], [ %i.jo, %bb.ba ], [ %.028.i.i267, %.loopexit201 ], [ %.028.i.i267, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.028.i.i267, %.thread332 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jp = trunc nsw i64 %indvars.iv.next to i32
  %i.jq = icmp eq i32 %i.da, %i.jp
  br i1 %i.jq, label %bb.t, label %bb.x

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit:               ; preds = %bb.w, %.noexc19, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.di, %bb.w ], [ %i.di, %.noexc19 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0134.0 = phi ptr [ %i.dh, %bb.w ], [ %i.dh, %.noexc19 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.di, %bb.w ], [ %i.dj, %.noexc19 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.jr = icmp eq ptr %.sroa.0161.1, %.sroa.20.1
  br i1 %i.jr, label %.preheader204, label %.lr.ph

.preheader204:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit70, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit
  %i.js = icmp eq ptr %.sroa.0134.0, %.0.i.i.i.i.i
  br i1 %i.js, label %.preheader, label %.lr.ph271

.lr.ph271:                                        ; preds = %.preheader204
  %i.jt = getelementptr inbounds nuw i8, ptr %i.aq, i64 60 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.aq, i64 68 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  br label %bb.bg

.lr.ph:                                           ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit70
  %.027.i.i269 = phi i64 [ %i.jy, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit70 ], [ %i.df, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ]
  %.sroa.20.2268 = phi ptr [ %i.ll, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit70 ], [ %.sroa.20.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ] ; 3 uses
  %i.jx = load i8, ptr %.sroa.0161.1, align 1, !tbaa !13, !noalias !27510 ; 2 uses
  %i.jy = add i64 %.027.i.i269, -1                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0134.0, i64 %i.jy
  store i8 %i.jx, ptr %i.jz, align 1, !tbaa !13, !noalias !27510
  %i.ka = ptrtoint ptr %.sroa.20.2268 to i64
  %i.kb = sub i64 %i.ka, %i.de
  %i.kc = icmp sgt i64 %i.kb, 1
  br i1 %i.kc, label %bb.bb, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit70

bb.bb:                                            ; preds = %.lr.ph
  %i.kd = getelementptr inbounds i8, ptr %.sroa.20.2268, i64 -1 ; 3 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !13, !noalias !27510 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENSL_IiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_EUlST_E_EEvPKmiibST_ENKUlimE_clEim:bb.a
  %i.at = shl nsw i64 %i.ac, 2
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  br label %.noexc16

.noexc16:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.av, %bb.e ], [ %i.aq, %bb.d ], [ %i.u, %bb.b ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1261
  %i.az = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1265
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.az
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !3587, !nonnull !797, !align !916 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1547
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.noexc18, label %bb.f

bb.f:                                             ; preds = %.noexc16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 59
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1255
  br label %.noexc18

bb.h:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1529
  %i.bt = shl nsw i64 %i.ac, 2
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.h, %bb.g, %.noexc16
  %.0.i.i.i = phi i32 [ %i.bv, %bb.h ], [ %i.bq, %bb.g ], [ %i.u, %.noexc16 ]
  %i.bw = sext i32 %.0.i.i.i to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 7 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.noexc19, label %bb.k, !prof !81

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !27535
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !27540
  store i32 %i.by, ptr %3, align 16, !tbaa !13, !alias.scope !27543, !noalias !27540
  store i32 0, ptr %i.o, align 16, !tbaa !13, !alias.scope !27543, !noalias !27540
  store i32 %i.by, ptr %i.p, align 16, !tbaa !13, !alias.scope !27543, !noalias !27540
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %3)
          to label %.noexc20 unwind label %bb.bq

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !27540
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.302) #45
          to label %bb.i unwind label %bb.j, !noalias !27535

bb.i:                                             ; preds = %.noexc20
  unreachable

bb.j:                                             ; preds = %.noexc20
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cb = load ptr, ptr %4, align 8, !tbaa !7, !noalias !27535 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.q
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.cd = load i64, ptr %i.q, align 8, !tbaa !13, !noalias !27535
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #43, !noalias !27535
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !27535
  br label %.body

bb.k:                                             ; preds = %.noexc18
  %i.cf = icmp eq i32 %i.by, 0
  %i.cg = icmp eq i32 %i.bf, 0
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %or.cond, label %bb.bm, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = add nsw i32 %i.bf, %i.bb
  %i.ci = zext nneg i32 %i.by to i64
  %i.cj = sext i32 %i.bb to i64
  br label %bb.q

bb.m:                                             ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %i.ck = ptrtoint ptr %.sroa.20.1 to i64
  %i.cl = ptrtoint ptr %.sroa.0167.1 to i64       ; 4 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 6 uses
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.n, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc25 unwind label %bb.ay

.noexc25:                                         ; preds = %bb.n
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #42
          to label %.noexc26 unwind label %bb.ay  ; 5 uses

.noexc26:                                         ; preds = %bb.o
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cm  ; 3 uses
  store i8 0, ptr %i.co, align 1, !tbaa !13, !noalias !27535
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %i.cr = add nsw i64 %i.cm, -1                   ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.p

bb.p:                                             ; preds = %.noexc26
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 %i.cr, i1 false), !noalias !27535
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit

bb.q:                                             ; preds = %bb.l, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %indvars.iv = phi i64 [ %i.cj, %bb.l ], [ %indvars.iv.next, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 10 uses
  %.028.i.i274 = phi i32 [ 0, %bb.l ], [ %.129.i.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 7 uses
  %.sroa.0167.0273 = phi ptr [ null, %bb.l ], [ %.sroa.0167.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 18 uses
  %.sroa.20.0272 = phi ptr [ null, %bb.l ], [ %.sroa.20.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 12 uses
  %.sroa.38.0271 = phi ptr [ null, %bb.l ], [ %.sroa.38.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 8 uses
  %i.ct = load ptr, ptr %i.aw, align 8, !tbaa !1531, !noalias !27535, !nonnull !797, !align !916 ; 15 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1530, !noalias !27535 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !1527, !range !796, !noalias !27535, !noundef !797
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 57
  %i.da = load i8, ptr %i.cz, align 1, !range !796, !noalias !27535
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i.i.i = select i1 %i.cy, i1 true, i1 %i.db
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dc = lshr i64 %indvars.iv, 6
  %i.dd = and i64 %i.dc, 67108863
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !855, !noalias !27535
  %i.dg = and i64 %indvars.iv, 63
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !1528, !range !796, !noalias !27535, !noundef !797
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dm = load i64, ptr %i.cv, align 8, !tbaa !855, !noalias !27535
  %i.dn = and i64 %i.dm, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1529, !noalias !27535
  %i.dq = shl nsw i64 %indvars.iv, 2
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3, !noalias !27535
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 6
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !855, !noalias !27535
  %i.dx = and i64 %i.dt, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dy, %i.dw
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i27.in = phi i64 [ %i.di, %bb.s ], [ %i.dn, %bb.u ], [ %i.dz, %bb.v ]
  %.0.i.i.i27.not = icmp eq i64 %.0.i.i.i27.in, 0
  br i1 %.0.i.i.i27.not, label %bb.at, label %.thread

.thread:                                          ; preds = %bb.q, %bb.w
  %i.ea = ptrtoint ptr %.sroa.20.0272 to i64
  %i.eb = ptrtoint ptr %.sroa.0167.0273 to i64    ; 3 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 15 uses
  %i.ed = icmp ult i64 %i.ec, %i.ci
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1547, !noalias !27535 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ct, i64 58
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !1527, !range !796, !noalias !27535, !noundef !797
  %i.ei = trunc nuw i8 %i.eh to i1                ; 2 uses
  br i1 %i.ed, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %.thread
  %i.ej = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ei, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 59
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !1528, !range !796, !noalias !27535, !noundef !797
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !1255, !noalias !27535
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1529, !noalias !27535
  %i.er = shl nsw i64 %indvars.iv, 2
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3, !noalias !27535
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.et, %bb.aa ], [ %i.eo, %bb.z ], [ %i.ej, %bb.x ]
  %i.eu = sext i32 %.0.i.i.i.i to i64
  %i.ev = getelementptr inbounds i8, ptr %i.ef, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !13, !noalias !27535 ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %.sroa.20.0272, %.sroa.38.0271
  br i1 %.not.i.i.i30, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 %i.ew, ptr %.sroa.20.0272, align 1, !tbaa !13, !noalias !27535
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ab
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ex = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ec
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ex, i64 9223372036854775807) ; 2 uses
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #42
          to label %.noexc32 unwind label %.loopexit219 ; 5 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ec ; 3 uses
  store i8 %i.ew, ptr %i.fa, align 1, !tbaa !13, !noalias !27535
  %i.fb = icmp sgt i64 %i.ec, 0
  br i1 %i.fb, label %bb.ad, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.ad:                                            ; preds = %.noexc32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr align 1 %.sroa.0167.0273, i64 %i.ec, i1 false), !noalias !27535
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ad, %.noexc32
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0167.0273, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0167.0273, i64 noundef %i.ec) #43, !noalias !27535
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ae, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ey
  %.pre298 = load i8, ptr %i.fa, align 1, !tbaa !13, !noalias !27535
  %.pre299 = ptrtoint ptr %i.ez to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i:         ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.ac
  %.pre-phi = phi i64 [ %.pre299, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.eb, %bb.ac ]
  %i.fd = phi i8 [ %.pre298, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.ew, %bb.ac ] ; 2 uses
  %.sroa.38.2 = phi ptr [ %i.fc, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.38.0271, %bb.ac ]
  %.pn206 = phi ptr [ %i.fa, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.20.0272, %bb.ac ]
  %.sroa.0167.2 = phi ptr [ %i.ez, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0167.0273, %bb.ac ] ; 4 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn206, i64 1 ; 2 uses
  %i.fe = ptrtoint ptr %.sroa.20.3 to i64
  %i.ff = xor i64 %.pre-phi, -1
  %i.fg = add i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp sgt i64 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i, %bb.af
  %.019.i.i.i = phi i64 [ %.0920.i56.i.i, %bb.af ], [ %i.fg, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i56.i.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0167.2, i64 %.0920.i56.i.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !13, !noalias !27535 ; 2 uses
  %i.fk = icmp sgt i8 %i.fj, %i.fd
  br i1 %i.fk, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0167.2, i64 %.019.i.i.i
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !13, !noalias !27535
  %.not.i.i = icmp eq i64 %.0920.i56.i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !27428

.loopexit:                                        ; preds = %bb.af, %.lr.ph.i.i.i, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.fg, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.af ]
  %i.fm = getelementptr inbounds i8, ptr %.sroa.0167.2, i64 %.0.lcssa.i.i.i
  store i8 %i.fd, ptr %i.fm, align 1, !tbaa !13, !noalias !27535
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.loopexit219:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit221 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit94

bb.ag:                                            ; preds = %.thread
  br i1 %i.ei, label %.thread199, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ct, i64 59
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noalias !27535, !noundef !797
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ai, label %.thread333

bb.ai:                                            ; preds = %bb.ah
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %.0.i.i.i.i34 = load i32, ptr %i.fq, align 8, !tbaa !3, !noalias !27535
  %i.fr = sext i32 %.0.i.i.i.i34 to i64
  %i.fs = getelementptr inbounds i8, ptr %i.ef, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !13, !noalias !27535
  %i.fu = load i8, ptr %.sroa.0167.0273, align 1, !tbaa !13, !noalias !27535
  %i.fv = icmp sgt i8 %i.ft, %i.fu
  br i1 %i.fv, label %bb.aj, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread333:                                       ; preds = %bb.ah
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !1529, !noalias !27535
  %i.fy = shl nsw i64 %indvars.iv, 2
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 %i.fy
  %.0.i.i.i.i34335 = load i32, ptr %i.fz, align 4, !tbaa !3, !noalias !27535
  %i.ga = sext i32 %.0.i.i.i.i34335 to i64
  %i.gb = getelementptr inbounds i8, ptr %i.ef, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13, !noalias !27535
  %i.gd = load i8, ptr %.sroa.0167.0273, align 1, !tbaa !13, !noalias !27535
  %i.ge = icmp sgt i8 %i.gc, %i.gd
  br i1 %i.ge, label %.thread336, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread199:                                       ; preds = %bb.ag
  %i.gf = getelementptr inbounds i8, ptr %i.ef, i64 %indvars.iv
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !13, !noalias !27535
  %i.gh = load i8, ptr %.sroa.0167.0273, align 1, !tbaa !13, !noalias !27535
  %i.gi = icmp sgt i8 %i.gg, %i.gh
  %i.gj = trunc nsw i64 %indvars.iv to i32
  br i1 %i.gi, label %.thread201, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !1255, !noalias !27535
  br label %.thread201

.thread336:                                       ; preds = %.thread333
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !1529, !noalias !27535
  %i.go = shl nsw i64 %indvars.iv, 2
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !27535
  br label %.thread201

.thread201:                                       ; preds = %.thread199, %.thread336, %bb.aj
  %.0.i.i.i.i37 = phi i32 [ %i.gq, %.thread336 ], [ %i.gl, %bb.aj ], [ %i.gj, %.thread199 ]
  %i.gr = sext i32 %.0.i.i.i.i37 to i64
  %i.gs = getelementptr inbounds i8, ptr %i.ef, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !13, !noalias !27535 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %.sroa.20.0272, %.sroa.38.0271
  br i1 %.not.i.i.i39, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread201
  store i8 %i.gt, ptr %.sroa.20.0272, align 1, !tbaa !13, !noalias !27535
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i41

bb.al:                                            ; preds = %.thread201
  %i.gu = icmp eq i64 %i.ec, 9223372036854775807
  br i1 %i.gu, label %bb.am, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i48

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc54 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit94.thread.loopexit.split-lp

.noexc54:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i48: ; preds = %bb.al
  %8 = shl i64 %i.ec, 1
  %9 = icmp slt i64 %i.ec, 0
  %i.gv = call i64 @llvm.umin.i64(i64 %8, i64 9223372036854775807)
  %i.gw = select i1 %9, i64 9223372036854775807, i64 %i.gv ; 3 uses
  %.not.i.i.i.i.i50 = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i50), !noalias !27535
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #42
          to label %.noexc55 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit94.thread.loopexit ; 5 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ec ; 3 uses
  store i8 %i.gt, ptr %i.gy, align 1, !tbaa !13, !noalias !27535
  %i.gz = icmp sgt i64 %i.ec, 0
  br i1 %i.gz, label %bb.an, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53

bb.an:                                            ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull align 1 %.sroa.0167.0273, i64 %i.ec, i1 false), !noalias !27535
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53: ; preds = %bb.an, %.noexc55
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0167.0273, i64 noundef %i.ec) #43, !noalias !27535
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gw
  %.pre = load i8, ptr %i.gy, align 1, !tbaa !13, !noalias !27535
  %.pre300 = ptrtoint ptr %i.gx to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i41

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i41:       ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53, %bb.ak
  %.pre-phi301 = phi i64 [ %.pre300, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53 ], [ %i.eb, %bb.ak ] ; 3 uses
  %i.hb = phi i8 [ %.pre, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53 ], [ %i.gt, %bb.ak ] ; 2 uses
  %.sroa.38.3 = phi ptr [ %i.ha, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53 ], [ %.sroa.38.0271, %bb.ak ] ; 2 uses
  %.pn = phi ptr [ %i.gy, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53 ], [ %.sroa.20.0272, %bb.ak ] ; 6 uses
  %.sroa.0167.3 = phi ptr [ %i.gx, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i53 ], [ %.sroa.0167.0273, %bb.ak ] ; 15 uses
  %.sroa.20.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.hc = ptrtoint ptr %.sroa.20.4 to i64         ; 2 uses
  %i.hd = xor i64 %.pre-phi301, -1
  %i.he = add i64 %i.hc, %i.hd                    ; 3 uses
  %i.hf = icmp sgt i64 %i.he, 0
  br i1 %i.hf, label %.lr.ph.i.i.i43, label %.loopexit207

.lr.ph.i.i.i43:                                   ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i41, %bb.ao
  %.019.i.i.i44 = phi i64 [ %.0920.i56.i.i46, %bb.ao ], [ %i.he, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i41 ] ; 3 uses
  %.0920.in.i.i.i45 = add nsw i64 %.019.i.i.i44, -1
  %.0920.i56.i.i46 = lshr i64 %.0920.in.i.i.i45, 1 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0167.3, i64 %.0920.i56.i.i46
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !13, !noalias !27535 ; 2 uses
  %i.hi = icmp sgt i8 %i.hh, %i.hb
  br i1 %i.hi, label %bb.ao, label %.loopexit207

bb.ao:                                            ; preds = %.lr.ph.i.i.i43
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0167.3, i64 %.019.i.i.i44
  store i8 %i.hh, ptr %i.hj, align 1, !tbaa !13, !noalias !27535
  %.not.i.i47 = icmp eq i64 %.0920.i56.i.i46, 0
  br i1 %.not.i.i47, label %.loopexit207, label %.lr.ph.i.i.i43, !llvm.loop !27428

.loopexit207:                                     ; preds = %bb.ao, %.lr.ph.i.i.i43, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i41
  %.0.lcssa.i.i.i42 = phi i64 [ %i.he, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i41 ], [ %.019.i.i.i44, %.lr.ph.i.i.i43 ], [ 0, %bb.ao ]
  %i.hk = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %.0.lcssa.i.i.i42
  store i8 %i.hb, ptr %i.hk, align 1, !tbaa !13, !noalias !27535
  %i.hl = sub i64 %i.hc, %.pre-phi301
  %i.hm = icmp sgt i64 %i.hl, 1
  br i1 %i.hm, label %bb.ap, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.ap:                                            ; preds = %.loopexit207
  %i.hn = load i8, ptr %.pn, align 1, !tbaa !13, !noalias !27535 ; 2 uses
  %i.ho = load i8, ptr %.sroa.0167.3, align 1, !tbaa !13, !noalias !27535
  store i8 %i.ho, ptr %.pn, align 1, !tbaa !13, !noalias !27535
  %i.hp = ptrtoint ptr %.pn to i64
  %i.hq = sub i64 %i.hp, %.pre-phi301             ; 4 uses
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = sdiv i64 %i.hr, 2
  %i.ht = icmp sgt i64 %i.hq, 2
  br i1 %i.ht, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.ap ] ; 2 uses
  %i.hu = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.hv = add i64 %i.hu, 2                        ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %i.hv
  %i.hx = or disjoint i64 %i.hu, 1                ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %i.hx
  %i.hz = load i8, ptr %i.hw, align 1, !tbaa !13, !noalias !27535
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !13, !noalias !27535
  %i.ib = icmp sgt i8 %i.hz, %i.ia
  %spec.select.i.i.i.i = select i1 %i.ib, i64 %i.hx, i64 %i.hv ; 4 uses
  %i.ic = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %spec.select.i.i.i.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !13, !noalias !27535
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %.035.i.i.i.i
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !13, !noalias !27535
  %i.if = icmp slt i64 %spec.select.i.i.i.i, %i.hs
  br i1 %i.if, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27429

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ap
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.ap ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ig = and i64 %i.hq, 1
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ii = add nsw i64 %i.hq, -2
  %i.ij = ashr exact i64 %i.ii, 1
  %i.ik = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ij
  br i1 %i.ik, label %.thread.i.i.i, label %bb.ar

.thread.i.i.i:                                    ; preds = %bb.aq
  %i.il = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.im = or disjoint i64 %i.il, 1                ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0167.3, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !13, !noalias !27535
  %i.ip = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %.0.lcssa.i.i.i.i
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !13, !noalias !27535
  br label %.lr.ph.i.i.i.i.i.preheader

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i.i
  %.not.i.i.i57 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i57, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ar, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ar ], [ %i.im, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.as
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.as ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0167.3, i64 %.0920.i.i67.i.i.i
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !13, !noalias !27535 ; 2 uses
  %i.is = icmp sgt i8 %i.ir, %i.hn
  br i1 %i.is, label %bb.as, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.it = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %.019.i.i.i.i.i
  store i8 %i.ir, ptr %i.it, align 1, !tbaa !13, !noalias !27535
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i: ; preds = %bb.as, %.lr.ph.i.i.i.i.i, %bb.ar
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ar ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.as ]
  %i.iu = getelementptr inbounds i8, ptr %.sroa.0167.3, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.hn, ptr %i.iu, align 1, !tbaa !13, !noalias !27535
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt6vectorIaSaIaEED2Ev.exit94.thread.loopexit:  ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i48
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit94.thread

_ZNSt6vectorIaSaIaEED2Ev.exit94.thread.loopexit.split-lp: ; preds = %bb.am
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit94.thread

bb.at:                                            ; preds = %bb.w
  %i.iv = add nsw i32 %.028.i.i274, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit: ; preds = %.thread333, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, %.loopexit207, %.thread199, %bb.at, %bb.ai, %.loopexit
  %.sroa.38.1 = phi ptr [ %.sroa.38.2, %.loopexit ], [ %.sroa.38.0271, %.thread199 ], [ %.sroa.38.0271, %bb.ai ], [ %.sroa.38.0271, %bb.at ], [ %.sroa.38.3, %.loopexit207 ], [ %.sroa.38.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.38.0271, %.thread333 ] ; 5 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.3, %.loopexit ], [ %.sroa.20.0272, %.thread199 ], [ %.sroa.20.0272, %bb.ai ], [ %.sroa.20.0272, %bb.at ], [ %.pn, %.loopexit207 ], [ %.pn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.20.0272, %.thread333 ] ; 4 uses
  %.sroa.0167.1 = phi ptr [ %.sroa.0167.2, %.loopexit ], [ %.sroa.0167.0273, %.thread199 ], [ %.sroa.0167.0273, %bb.ai ], [ %.sroa.0167.0273, %bb.at ], [ %.sroa.0167.3, %.loopexit207 ], [ %.sroa.0167.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.0167.0273, %.thread333 ] ; 19 uses
  %.129.i.i = phi i32 [ %.028.i.i274, %.loopexit ], [ %.028.i.i274, %.thread199 ], [ %.028.i.i274, %bb.ai ], [ %i.iv, %bb.at ], [ %.028.i.i274, %.loopexit207 ], [ %.028.i.i274, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.028.i.i274, %.thread333 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.iw = trunc nsw i64 %indvars.iv.next to i32
  %i.ix = icmp eq i32 %i.ch, %i.iw
  br i1 %i.ix, label %bb.m, label %bb.q

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit:               ; preds = %bb.p, %.noexc26, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.cp, %bb.p ], [ %i.cp, %.noexc26 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0140.0 = phi ptr [ %i.co, %bb.p ], [ %i.co, %.noexc26 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cp, %bb.p ], [ %i.cq, %.noexc26 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.iy = icmp eq ptr %.sroa.0167.1, %.sroa.20.1
  br i1 %i.iy, label %.preheader210, label %.lr.ph

.preheader210:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit76, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit
  %i.iz = icmp eq ptr %.sroa.0140.0, %.0.i.i.i.i.i
  br i1 %i.iz, label %.preheader, label %.lr.ph278

.lr.ph278:                                        ; preds = %.preheader210
  %i.ja = getelementptr inbounds nuw i8, ptr %i.x, i64 60 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 68 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  br label %bb.az

.lr.ph:                                           ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit76
  %.027.i.i276 = phi i64 [ %i.jf, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit76 ], [ %i.cm, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ]
  %.sroa.20.2275 = phi ptr [ %i.ks, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit76 ], [ %.sroa.20.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ] ; 3 uses
  %i.je = load i8, ptr %.sroa.0167.1, align 1, !tbaa !13, !noalias !27535 ; 2 uses
  %i.jf = add i64 %.027.i.i276, -1                ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0140.0, i64 %i.jf
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !13, !noalias !27535
  %i.jh = ptrtoint ptr %.sroa.20.2275 to i64
  %i.ji = sub i64 %i.jh, %i.cl
  %i.jj = icmp sgt i64 %i.ji, 1
  br i1 %i.jj, label %bb.au, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit76

bb.au:                                            ; preds = %.lr.ph
  %i.jk = getelementptr inbounds i8, ptr %.sroa.20.2275, i64 -1 ; 3 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !13, !noalias !27535 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENSL_IiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  br label %.noexc39

.noexc39:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i = phi i32 [ %i.bb, %bb.f ], [ %i.aw, %bb.e ], [ %i.ae, %bb.c ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1261
  %i.bf = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1265
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !3587, !nonnull !797, !align !916 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1547
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 58
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.noexc40, label %bb.g

bb.g:                                             ; preds = %.noexc39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 59
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !1255
  br label %.noexc40

bb.i:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1529
  %sext.i45 = shl i64 %.0672, 32
  %i.bz = ashr exact i64 %sext.i45, 30
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  br label %.noexc40

.noexc40:                                         ; preds = %bb.i, %bb.h, %.noexc39
  %.0.i.i.i = phi i32 [ %i.cb, %bb.i ], [ %i.bw, %bb.h ], [ %i.ae, %.noexc39 ]
  %i.cc = sext i32 %.0.i.i.i to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3  ; 7 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %.noexc41, label %bb.l, !prof !81

.noexc41:                                         ; preds = %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !27556
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !27561
  store i32 %i.ce, ptr %3, align 16, !tbaa !13, !alias.scope !27564, !noalias !27561
  store i32 0, ptr %i.x, align 16, !tbaa !13, !alias.scope !27564, !noalias !27561
  store i32 %i.ce, ptr %i.y, align 16, !tbaa !13, !alias.scope !27564, !noalias !27561
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %3)
          to label %.noexc42 unwind label %bb.br

.noexc42:                                         ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !27561
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.302) #45
          to label %bb.j unwind label %bb.k, !noalias !27556

bb.j:                                             ; preds = %.noexc42
  unreachable

bb.k:                                             ; preds = %.noexc42
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ch = load ptr, ptr %4, align 8, !tbaa !7, !noalias !27556 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.z
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.cj = load i64, ptr %i.z, align 8, !tbaa !13, !noalias !27556
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #43, !noalias !27556
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !27556
  br label %.body34

bb.l:                                             ; preds = %.noexc40
  %i.cl = icmp eq i32 %i.ce, 0
  %i.cm = icmp eq i32 %i.bl, 0
  %or.cond = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond, label %bb.bn, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = add nsw i32 %i.bl, %i.bh
  %i.co = zext nneg i32 %i.ce to i64
  %i.cp = sext i32 %i.bh to i64
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %i.cq = ptrtoint ptr %.sroa.20471.1 to i64
  %i.cr = ptrtoint ptr %.sroa.0459.1 to i64       ; 4 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 6 uses
  %i.ct = icmp slt i64 %i.cs, 0
  br i1 %i.ct, label %bb.o, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc47 unwind label %bb.az

.noexc47:                                         ; preds = %bb.o
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.n
  %.not.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #42
          to label %.noexc48 unwind label %bb.az  ; 5 uses

.noexc48:                                         ; preds = %bb.p
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cs  ; 3 uses
  store i8 0, ptr %i.cu, align 1, !tbaa !13, !noalias !27556
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 2 uses
  %i.cx = add nsw i64 %i.cs, -1                   ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %.noexc48
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cw, i8 0, i64 %i.cx, i1 false), !noalias !27556
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit

bb.r:                                             ; preds = %bb.m, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit
  %indvars.iv = phi i64 [ %i.cp, %bb.m ], [ %indvars.iv.next, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 10 uses
  %.028.i.i.i663 = phi i32 [ 0, %bb.m ], [ %.129.i.i.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 7 uses
  %.sroa.0459.0662 = phi ptr [ null, %bb.m ], [ %.sroa.0459.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 18 uses
  %.sroa.20471.0661 = phi ptr [ null, %bb.m ], [ %.sroa.20471.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 12 uses
  %.sroa.38481.0660 = phi ptr [ null, %bb.m ], [ %.sroa.38481.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit ] ; 8 uses
  %i.cz = load ptr, ptr %i.bc, align 8, !tbaa !1531, !noalias !27556, !nonnull !797, !align !916 ; 15 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1530, !noalias !27556 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 58
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !1527, !range !796, !noalias !27556, !noundef !797
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 57
  %i.dg = load i8, ptr %i.df, align 1, !range !796, !noalias !27556
  %i.dh = trunc nuw i8 %i.dg to i1
  %or.cond.i.i.i = select i1 %i.de, i1 true, i1 %i.dh
  br i1 %or.cond.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.di = lshr i64 %indvars.iv, 6
  %i.dj = and i64 %i.di, 67108863
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !855, !noalias !27556
  %i.dm = and i64 %indvars.iv, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 59
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !1528, !range !796, !noalias !27556, !noundef !797
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = load i64, ptr %i.db, align 8, !tbaa !855, !noalias !27556
  %i.dt = and i64 %i.ds, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1529, !noalias !27556
  %i.dw = shl nsw i64 %indvars.iv, 2
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3, !noalias !27556
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = lshr i64 %i.dz, 6
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !855, !noalias !27556
  %i.ed = and i64 %i.dz, 63
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.ee, %i.ec
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i49.in = phi i64 [ %i.do, %bb.t ], [ %i.dt, %bb.v ], [ %i.ef, %bb.w ]
  %.0.i.i.i49.not = icmp eq i64 %.0.i.i.i49.in, 0
  br i1 %.0.i.i.i49.not, label %bb.au, label %.thread

.thread:                                          ; preds = %bb.r, %bb.x
  %i.eg = ptrtoint ptr %.sroa.20471.0661 to i64
  %i.eh = ptrtoint ptr %.sroa.0459.0662 to i64    ; 3 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 15 uses
  %i.ej = icmp ult i64 %i.ei, %i.co
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1547, !noalias !27556 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cz, i64 58
  %i.en = load i8, ptr %i.em, align 2, !tbaa !1527, !range !796, !noalias !27556, !noundef !797
  %i.eo = trunc nuw i8 %i.en to i1                ; 2 uses
  br i1 %i.ej, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %.thread
  %i.ep = trunc nsw i64 %indvars.iv to i32
  br i1 %i.eo, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cz, i64 59
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !1528, !range !796, !noalias !27556, !noundef !797
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !1255, !noalias !27556
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1529, !noalias !27556
  %i.ex = shl nsw i64 %indvars.iv, 2
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3, !noalias !27556
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.ez, %bb.ab ], [ %i.eu, %bb.aa ], [ %i.ep, %bb.y ]
  %i.fa = sext i32 %.0.i.i.i.i to i64
  %i.fb = getelementptr inbounds i8, ptr %i.el, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13, !noalias !27556 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.20471.0661, %.sroa.38481.0660
  br i1 %.not.i.i.i52, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 %i.fc, ptr %.sroa.20471.0661, align 1, !tbaa !13, !noalias !27556
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.fd = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ei
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fd, i64 9223372036854775807) ; 2 uses
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #42
          to label %.noexc54 unwind label %.loopexit527 ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ei ; 3 uses
  store i8 %i.fc, ptr %i.fg, align 1, !tbaa !13, !noalias !27556
  %i.fh = icmp sgt i64 %i.ei, 0
  br i1 %i.fh, label %bb.ae, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

bb.ae:                                            ; preds = %.noexc54
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ff, ptr align 1 %.sroa.0459.0662, i64 %i.ei, i1 false), !noalias !27556
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ae, %.noexc54
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0459.0662, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0459.0662, i64 noundef %i.ei) #43, !noalias !27556
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i: ; preds = %bb.af, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  %.pre712 = load i8, ptr %i.fg, align 1, !tbaa !13, !noalias !27556
  %.pre718 = ptrtoint ptr %i.ff to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i:         ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i, %bb.ad
  %.pre-phi719 = phi i64 [ %.pre718, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.eh, %bb.ad ]
  %i.fj = phi i8 [ %.pre712, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %i.fc, %bb.ad ] ; 2 uses
  %.sroa.38481.2 = phi ptr [ %i.fi, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.38481.0660, %bb.ad ]
  %.pn514 = phi ptr [ %i.fg, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.20471.0661, %bb.ad ]
  %.sroa.0459.2 = phi ptr [ %i.ff, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0459.0662, %bb.ad ] ; 4 uses
  %.sroa.20471.3 = getelementptr inbounds nuw i8, ptr %.pn514, i64 1 ; 2 uses
  %i.fk = ptrtoint ptr %.sroa.20471.3 to i64
  %i.fl = xor i64 %.pre-phi719, -1
  %i.fm = add i64 %i.fk, %i.fl                    ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i, %bb.ag
  %.019.i.i.i = phi i64 [ %.0920.i56.i.i, %bb.ag ], [ %i.fm, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i56.i.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0459.2, i64 %.0920.i56.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13, !noalias !27556 ; 2 uses
  %i.fq = icmp sgt i8 %i.fp, %i.fj
  br i1 %i.fq, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %.lr.ph.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0459.2, i64 %.019.i.i.i
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !13, !noalias !27556
  %.not.i.i = icmp eq i64 %.0920.i56.i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !27428

.loopexit:                                        ; preds = %bb.ag, %.lr.ph.i.i.i, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.fm, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.ag ]
  %i.fs = getelementptr inbounds i8, ptr %.sroa.0459.2, i64 %.0.lcssa.i.i.i
  store i8 %i.fj, ptr %i.fs, align 1, !tbaa !13, !noalias !27556
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.loopexit527:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit529 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit116

bb.ah:                                            ; preds = %.thread
  br i1 %i.eo, label %.thread495, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cz, i64 59
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !1528, !range !796, !noalias !27556, !noundef !797
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.aj, label %.thread786

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %.0.i.i.i.i56 = load i32, ptr %i.fw, align 8, !tbaa !3, !noalias !27556
  %i.fx = sext i32 %.0.i.i.i.i56 to i64
  %i.fy = getelementptr inbounds i8, ptr %i.el, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13, !noalias !27556
  %i.ga = load i8, ptr %.sroa.0459.0662, align 1, !tbaa !13, !noalias !27556
  %i.gb = icmp sgt i8 %i.fz, %i.ga
  br i1 %i.gb, label %bb.ak, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread786:                                       ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1529, !noalias !27556
  %i.ge = shl nsw i64 %indvars.iv, 2
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  %.0.i.i.i.i56788 = load i32, ptr %i.gf, align 4, !tbaa !3, !noalias !27556
  %i.gg = sext i32 %.0.i.i.i.i56788 to i64
  %i.gh = getelementptr inbounds i8, ptr %i.el, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13, !noalias !27556
  %i.gj = load i8, ptr %.sroa.0459.0662, align 1, !tbaa !13, !noalias !27556
  %i.gk = icmp sgt i8 %i.gi, %i.gj
  br i1 %i.gk, label %.thread789, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

.thread495:                                       ; preds = %bb.ah
  %i.gl = getelementptr inbounds i8, ptr %i.el, i64 %indvars.iv
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !13, !noalias !27556
  %i.gn = load i8, ptr %.sroa.0459.0662, align 1, !tbaa !13, !noalias !27556
  %i.go = icmp sgt i8 %i.gm, %i.gn
  %i.gp = trunc nsw i64 %indvars.iv to i32
  br i1 %i.go, label %.thread497, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !1255, !noalias !27556
  br label %.thread497

.thread789:                                       ; preds = %.thread786
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !1529, !noalias !27556
  %i.gu = shl nsw i64 %indvars.iv, 2
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !27556
  br label %.thread497

.thread497:                                       ; preds = %.thread495, %.thread789, %bb.ak
  %.0.i.i.i.i59 = phi i32 [ %i.gw, %.thread789 ], [ %i.gr, %bb.ak ], [ %i.gp, %.thread495 ]
  %i.gx = sext i32 %.0.i.i.i.i59 to i64
  %i.gy = getelementptr inbounds i8, ptr %i.el, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !13, !noalias !27556 ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.20471.0661, %.sroa.38481.0660
  br i1 %.not.i.i.i61, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread497
  store i8 %i.gz, ptr %.sroa.20471.0661, align 1, !tbaa !13, !noalias !27556
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i63

bb.am:                                            ; preds = %.thread497
  %i.ha = icmp eq i64 %i.ei, 9223372036854775807
  br i1 %i.ha, label %bb.an, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i70

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc76 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit116.thread.loopexit.split-lp

.noexc76:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i70: ; preds = %bb.am
  %12 = shl i64 %i.ei, 1
  %13 = icmp slt i64 %i.ei, 0
  %i.hb = call i64 @llvm.umin.i64(i64 %12, i64 9223372036854775807)
  %i.hc = select i1 %13, i64 9223372036854775807, i64 %i.hb ; 3 uses
  %.not.i.i.i.i.i72 = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i72), !noalias !27556
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #42
          to label %.noexc77 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit116.thread.loopexit ; 5 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i70
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ei ; 3 uses
  store i8 %i.gz, ptr %i.he, align 1, !tbaa !13, !noalias !27556
  %i.hf = icmp sgt i64 %i.ei, 0
  br i1 %i.hf, label %bb.ao, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75

bb.ao:                                            ; preds = %.noexc77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull align 1 %.sroa.0459.0662, i64 %i.ei, i1 false), !noalias !27556
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75: ; preds = %bb.ao, %.noexc77
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0459.0662, i64 noundef %i.ei) #43, !noalias !27556
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  %.pre = load i8, ptr %i.he, align 1, !tbaa !13, !noalias !27556
  %.pre720 = ptrtoint ptr %i.hd to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i63

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i63:       ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75, %bb.al
  %.pre-phi721 = phi i64 [ %.pre720, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75 ], [ %i.eh, %bb.al ] ; 3 uses
  %i.hh = phi i8 [ %.pre, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75 ], [ %i.gz, %bb.al ] ; 2 uses
  %.sroa.38481.3 = phi ptr [ %i.hg, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75 ], [ %.sroa.38481.0660, %bb.al ] ; 2 uses
  %.pn513 = phi ptr [ %i.he, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75 ], [ %.sroa.20471.0661, %bb.al ] ; 6 uses
  %.sroa.0459.3 = phi ptr [ %i.hd, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i75 ], [ %.sroa.0459.0662, %bb.al ] ; 15 uses
  %.sroa.20471.4 = getelementptr inbounds nuw i8, ptr %.pn513, i64 1
  %i.hi = ptrtoint ptr %.sroa.20471.4 to i64      ; 2 uses
  %i.hj = xor i64 %.pre-phi721, -1
  %i.hk = add i64 %i.hi, %i.hj                    ; 3 uses
  %i.hl = icmp sgt i64 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i.i.i65, label %.loopexit515

.lr.ph.i.i.i65:                                   ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i63, %bb.ap
  %.019.i.i.i66 = phi i64 [ %.0920.i56.i.i68, %bb.ap ], [ %i.hk, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i63 ] ; 3 uses
  %.0920.in.i.i.i67 = add nsw i64 %.019.i.i.i66, -1
  %.0920.i56.i.i68 = lshr i64 %.0920.in.i.i.i67, 1 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0459.3, i64 %.0920.i56.i.i68
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !13, !noalias !27556 ; 2 uses
  %i.ho = icmp sgt i8 %i.hn, %i.hh
  br i1 %i.ho, label %bb.ap, label %.loopexit515

bb.ap:                                            ; preds = %.lr.ph.i.i.i65
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0459.3, i64 %.019.i.i.i66
  store i8 %i.hn, ptr %i.hp, align 1, !tbaa !13, !noalias !27556
  %.not.i.i69 = icmp eq i64 %.0920.i56.i.i68, 0
  br i1 %.not.i.i69, label %.loopexit515, label %.lr.ph.i.i.i65, !llvm.loop !27428

.loopexit515:                                     ; preds = %bb.ap, %.lr.ph.i.i.i65, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i63
  %.0.lcssa.i.i.i64 = phi i64 [ %i.hk, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i63 ], [ %.019.i.i.i66, %.lr.ph.i.i.i65 ], [ 0, %bb.ap ]
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %.0.lcssa.i.i.i64
  store i8 %i.hh, ptr %i.hq, align 1, !tbaa !13, !noalias !27556
  %i.hr = sub i64 %i.hi, %.pre-phi721
  %i.hs = icmp sgt i64 %i.hr, 1
  br i1 %i.hs, label %bb.aq, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

bb.aq:                                            ; preds = %.loopexit515
  %i.ht = load i8, ptr %.pn513, align 1, !tbaa !13, !noalias !27556 ; 2 uses
  %i.hu = load i8, ptr %.sroa.0459.3, align 1, !tbaa !13, !noalias !27556
  store i8 %i.hu, ptr %.pn513, align 1, !tbaa !13, !noalias !27556
  %i.hv = ptrtoint ptr %.pn513 to i64
  %i.hw = sub i64 %i.hv, %.pre-phi721             ; 4 uses
  %i.hx = add nsw i64 %i.hw, -1
  %i.hy = sdiv i64 %i.hx, 2
  %i.hz = icmp sgt i64 %i.hw, 2
  br i1 %i.hz, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.aq ] ; 2 uses
  %i.ia = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.ib = add i64 %i.ia, 2                        ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %i.ib
  %i.id = or disjoint i64 %i.ia, 1                ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %i.id
  %i.if = load i8, ptr %i.ic, align 1, !tbaa !13, !noalias !27556
  %i.ig = load i8, ptr %i.ie, align 1, !tbaa !13, !noalias !27556
  %i.ih = icmp sgt i8 %i.if, %i.ig
  %spec.select.i.i.i.i = select i1 %i.ih, i64 %i.id, i64 %i.ib ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %spec.select.i.i.i.i
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !13, !noalias !27556
  %i.ik = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %.035.i.i.i.i
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !13, !noalias !27556
  %i.il = icmp slt i64 %spec.select.i.i.i.i, %i.hy
  br i1 %i.il, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !27429

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.aq
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.im = and i64 %i.hw, 1
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i
  %i.io = add nsw i64 %i.hw, -2
  %i.ip = ashr exact i64 %i.io, 1
  %i.iq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ip
  br i1 %i.iq, label %.thread.i.i.i, label %bb.as

.thread.i.i.i:                                    ; preds = %bb.ar
  %i.ir = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.is = or disjoint i64 %i.ir, 1                ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0459.3, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !13, !noalias !27556
  %i.iv = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %.0.lcssa.i.i.i.i
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !13, !noalias !27556
  br label %.lr.ph.i.i.i.i.i.preheader

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i
  %.not.i.i.i79 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i79, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.as, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.as ], [ %i.is, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.at
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i67.i.i.i, %bb.at ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i67.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0459.3, i64 %.0920.i.i67.i.i.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !13, !noalias !27556 ; 2 uses
  %i.iy = icmp sgt i8 %i.ix, %i.ht
  br i1 %i.iy, label %bb.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.iz = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %.019.i.i.i.i.i
  store i8 %i.ix, ptr %i.iz, align 1, !tbaa !13, !noalias !27556
  %.not8.i.i.i = icmp eq i64 %.0920.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i, %bb.as
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.as ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.at ]
  %i.ja = getelementptr inbounds i8, ptr %.sroa.0459.3, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.ht, ptr %i.ja, align 1, !tbaa !13, !noalias !27556
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt6vectorIaSaIaEED2Ev.exit116.thread.loopexit: ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i70
  %lpad.loopexit524 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit116.thread

_ZNSt6vectorIaSaIaEED2Ev.exit116.thread.loopexit.split-lp: ; preds = %bb.an
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit116.thread

bb.au:                                            ; preds = %bb.x
  %i.jb = add nsw i32 %.028.i.i.i663, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit: ; preds = %.thread786, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i, %.loopexit515, %.thread495, %bb.au, %bb.aj, %.loopexit
  %.sroa.38481.1 = phi ptr [ %.sroa.38481.2, %.loopexit ], [ %.sroa.38481.0660, %.thread495 ], [ %.sroa.38481.0660, %bb.aj ], [ %.sroa.38481.0660, %bb.au ], [ %.sroa.38481.3, %.loopexit515 ], [ %.sroa.38481.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.38481.0660, %.thread786 ] ; 5 uses
  %.sroa.20471.1 = phi ptr [ %.sroa.20471.3, %.loopexit ], [ %.sroa.20471.0661, %.thread495 ], [ %.sroa.20471.0661, %bb.aj ], [ %.sroa.20471.0661, %bb.au ], [ %.pn513, %.loopexit515 ], [ %.pn513, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.20471.0661, %.thread786 ] ; 4 uses
  %.sroa.0459.1 = phi ptr [ %.sroa.0459.2, %.loopexit ], [ %.sroa.0459.0662, %.thread495 ], [ %.sroa.0459.0662, %bb.aj ], [ %.sroa.0459.0662, %bb.au ], [ %.sroa.0459.3, %.loopexit515 ], [ %.sroa.0459.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.sroa.0459.0662, %.thread786 ] ; 19 uses
  %.129.i.i.i = phi i32 [ %.028.i.i.i663, %.loopexit ], [ %.028.i.i.i663, %.thread495 ], [ %.028.i.i.i663, %bb.aj ], [ %i.jb, %bb.au ], [ %.028.i.i.i663, %.loopexit515 ], [ %.028.i.i.i663, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i ], [ %.028.i.i.i663, %.thread786 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jc = trunc nsw i64 %indvars.iv.next to i32
  %i.jd = icmp eq i32 %i.cn, %i.jc
  br i1 %i.jd, label %bb.n, label %bb.r

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit:               ; preds = %bb.q, %.noexc48, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12431.0 = phi ptr [ %i.cv, %bb.q ], [ %i.cv, %.noexc48 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0426.0 = phi ptr [ %i.cu, %bb.q ], [ %i.cu, %.noexc48 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cv, %bb.q ], [ %i.cw, %.noexc48 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.je = icmp eq ptr %.sroa.0459.1, %.sroa.20471.1
  br i1 %i.je, label %.preheader518, label %.lr.ph666

.preheader518:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit98, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit
  %i.jf = icmp eq ptr %.sroa.0426.0, %.0.i.i.i.i.i
  br i1 %i.jf, label %.preheader, label %.lr.ph668

.lr.ph668:                                        ; preds = %.preheader518
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ad, i64 60 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ad, i64 68 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %bb.ba

.lr.ph666:                                        ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit98
  %.027.i.i.i665 = phi i64 [ %i.jl, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit98 ], [ %i.cs, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ]
  %.sroa.20471.2664 = phi ptr [ %i.ky, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit98 ], [ %.sroa.20471.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit ] ; 3 uses
  %i.jk = load i8, ptr %.sroa.0459.1, align 1, !tbaa !13, !noalias !27556 ; 2 uses
  %i.jl = add i64 %.027.i.i.i665, -1              ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0426.0, i64 %i.jl
  store i8 %i.jk, ptr %i.jm, align 1, !tbaa !13, !noalias !27556
  %i.jn = ptrtoint ptr %.sroa.20471.2664 to i64
  %i.jo = sub i64 %i.jn, %i.cr
  %i.jp = icmp sgt i64 %i.jo, 1
  br i1 %i.jp, label %bb.av, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit98

bb.av:                                            ; preds = %.lr.ph666
  %i.jq = getelementptr inbounds i8, ptr %.sroa.20471.2664, i64 -1 ; 3 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !13, !noalias !27556 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayTopNFunctionINS3_10VectorExecEEESB_NS0_5ArrayIaEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE8applyUdfIZNKSI_7iterateIJNS3_12VectorReaderISE_EENSL_IiEEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %i.tq = shl nsw i64 %i.sz, 2
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !3
  br label %.noexc22

.noexc22:                                         ; preds = %bb.cl, %bb.ck, %bb.ci
  %.0.i.i148 = phi i32 [ %i.ts, %bb.cl ], [ %i.tn, %bb.ck ], [ %i.sr, %bb.ci ]
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tb, i64 152
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tb, i64 136
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !1261
  %i.tw = sext i32 %.0.i.i148 to i64              ; 2 uses
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !3  ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tb, i64 144
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !1265
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.tw
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !3  ; 2 uses
  %i.ud = load ptr, ptr %i.td, align 8, !tbaa !3587, !nonnull !797, !align !916 ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !1547
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 58
  %i.uh = load i8, ptr %i.ug, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %.noexc24, label %bb.cm

bb.cm:                                            ; preds = %.noexc22
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 59
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.um = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  %i.un = load i32, ptr %i.um, align 8, !tbaa !1255
  br label %.noexc24

bb.co:                                            ; preds = %bb.cm
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !1529
  %i.uq = shl nsw i64 %i.sz, 2
  %i.ur = getelementptr inbounds i8, ptr %i.up, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !3
  br label %.noexc24

.noexc24:                                         ; preds = %bb.co, %bb.cn, %.noexc22
  %.0.i.i.i157 = phi i32 [ %i.us, %bb.co ], [ %i.un, %bb.cn ], [ %i.sr, %.noexc22 ]
  %i.ut = sext i32 %.0.i.i.i157 to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !3  ; 7 uses
  %i.uw = icmp slt i32 %i.uv, 0
  br i1 %i.uw, label %.noexc25, label %bb.cr, !prof !81

.noexc25:                                         ; preds = %.noexc24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !27574
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !27579
  store i32 %i.uv, ptr %2, align 16, !tbaa !13, !alias.scope !27582, !noalias !27579
  store i32 0, ptr %i.n, align 16, !tbaa !13, !alias.scope !27582, !noalias !27579
  store i32 %i.uv, ptr %i.o, align 16, !tbaa !13, !alias.scope !27582, !noalias !27579
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.302, i64 54, i64 273, ptr nonnull %2)
          to label %.noexc26 unwind label %bb.ex

.noexc26:                                         ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !27579
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions17ArrayTopNFunctionINS0_4exec10VectorExecEE4callINS3_11ArrayWriterIaEENS3_9ArrayViewILb1EaEEEEvRT_RKT0_iE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.302) #45
          to label %bb.cp unwind label %bb.cq, !noalias !27574

bb.cp:                                            ; preds = %.noexc26
  unreachable

bb.cq:                                            ; preds = %.noexc26
  %i.ux = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.uy = load ptr, ptr %8, align 8, !tbaa !7, !noalias !27574 ; 2 uses
  %i.uz = icmp eq ptr %i.uy, %i.p
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.cq
  %i.va = load i64, ptr %i.p, align 8, !tbaa !13, !noalias !27574
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vb) #43, !noalias !27574
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !27574
  br label %.body

bb.cr:                                            ; preds = %.noexc24
  %i.vc = icmp eq i32 %i.uv, 0
  %i.vd = icmp eq i32 %i.uc, 0
  %or.cond511 = select i1 %i.vc, i1 true, i1 %i.vd
  br i1 %or.cond511, label %bb.et, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ve = add nsw i32 %i.uc, %i.ty
  %i.vf = zext nneg i32 %i.uv to i64
  %i.vg = sext i32 %i.ty to i64
  br label %bb.cx

bb.ct:                                            ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243
  %i.vh = ptrtoint ptr %.sroa.20.1 to i64
  %i.vi = ptrtoint ptr %.sroa.0377.1 to i64       ; 4 uses
  %i.vj = sub i64 %i.vh, %i.vi                    ; 6 uses
  %i.vk = icmp slt i64 %i.vj, 0
  br i1 %i.vk, label %bb.cu, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i164

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #45
          to label %.noexc168 unwind label %bb.ef

.noexc168:                                        ; preds = %bb.cu
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %bb.ct
  %.not.i.i.i.i165 = icmp eq i64 %i.vj, 0
  br i1 %.not.i.i.i.i165, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.vl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vj) #42
          to label %.noexc169 unwind label %bb.ef ; 5 uses

.noexc169:                                        ; preds = %bb.cv
  %i.vm = getelementptr i8, ptr %i.vl, i64 %i.vj  ; 3 uses
  store i8 0, ptr %i.vl, align 1, !tbaa !13, !noalias !27574
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 1 ; 2 uses
  %i.vo = add nsw i64 %i.vj, -1                   ; 2 uses
  %i.vp = icmp eq i64 %i.vo, 0
  br i1 %i.vp, label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170, label %bb.cw

bb.cw:                                            ; preds = %.noexc169
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vn, i8 0, i64 %i.vo, i1 false), !noalias !27574
  br label %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170

bb.cx:                                            ; preds = %bb.cs, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243
  %indvars.iv709 = phi i64 [ %i.vg, %bb.cs ], [ %indvars.iv.next710, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243 ] ; 10 uses
  %.028.i.i648 = phi i32 [ 0, %bb.cs ], [ %.129.i.i, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243 ] ; 7 uses
  %.sroa.0377.0647 = phi ptr [ null, %bb.cs ], [ %.sroa.0377.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243 ] ; 18 uses
  %.sroa.20.0646 = phi ptr [ null, %bb.cs ], [ %.sroa.20.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243 ] ; 12 uses
  %.sroa.38.0645 = phi ptr [ null, %bb.cs ], [ %.sroa.38.1, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243 ] ; 8 uses
  %i.vq = load ptr, ptr %i.tt, align 8, !tbaa !1531, !noalias !27574, !nonnull !797, !align !916 ; 15 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 24
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !1530, !noalias !27574 ; 4 uses
  %.not.i.i.i173 = icmp eq ptr %i.vs, null
  br i1 %.not.i.i.i173, label %.thread502, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 58
  %i.vu = load i8, ptr %i.vt, align 2, !tbaa !1527, !range !796, !noalias !27574, !noundef !797
  %i.vv = trunc nuw i8 %i.vu to i1
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 57
  %i.vx = load i8, ptr %i.vw, align 1, !range !796, !noalias !27574
  %i.vy = trunc nuw i8 %i.vx to i1
  %or.cond.i.i.i174 = select i1 %i.vv, i1 true, i1 %i.vy
  br i1 %or.cond.i.i.i174, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.vz = lshr i64 %indvars.iv709, 6
  %i.wa = and i64 %i.vz, 67108863
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.wa
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !855, !noalias !27574
  %i.wd = and i64 %indvars.iv709, 63
  %i.we = shl nuw i64 1, %i.wd
  %i.wf = and i64 %i.wc, %i.we
  br label %bb.dd

bb.da:                                            ; preds = %bb.cy
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vq, i64 59
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !1528, !range !796, !noalias !27574, !noundef !797
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.wj = load i64, ptr %i.vs, align 8, !tbaa !855, !noalias !27574
  %i.wk = and i64 %i.wj, 1
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !1529, !noalias !27574
  %i.wn = shl nsw i64 %indvars.iv709, 2
  %i.wo = getelementptr inbounds i8, ptr %i.wm, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !3, !noalias !27574
  %i.wq = zext i32 %i.wp to i64                   ; 2 uses
  %i.wr = lshr i64 %i.wq, 6
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.wr
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !855, !noalias !27574
  %i.wu = and i64 %i.wq, 63
  %i.wv = shl nuw i64 1, %i.wu
  %i.ww = and i64 %i.wv, %i.wt
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.cz
  %.0.i.i.i177.in = phi i64 [ %i.wf, %bb.cz ], [ %i.wk, %bb.db ], [ %i.ww, %bb.dc ]
  %.0.i.i.i177.not = icmp eq i64 %.0.i.i.i177.in, 0
  br i1 %.0.i.i.i177.not, label %bb.ea, label %.thread502

.thread502:                                       ; preds = %bb.cx, %bb.dd
  %i.wx = ptrtoint ptr %.sroa.20.0646 to i64
  %i.wy = ptrtoint ptr %.sroa.0377.0647 to i64    ; 3 uses
  %i.wz = sub i64 %i.wx, %i.wy                    ; 15 uses
  %i.xa = icmp ult i64 %i.wz, %i.vf
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !1547, !noalias !27574 ; 5 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vq, i64 58
  %i.xe = load i8, ptr %i.xd, align 2, !tbaa !1527, !range !796, !noalias !27574, !noundef !797
  %i.xf = trunc nuw i8 %i.xe to i1                ; 2 uses
  br i1 %i.xa, label %bb.de, label %bb.dn

bb.de:                                            ; preds = %.thread502
  %i.xg = trunc nsw i64 %indvars.iv709 to i32
  br i1 %i.xf, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vq, i64 59
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !1528, !range !796, !noalias !27574, !noundef !797
  %i.xj = trunc nuw i8 %i.xi to i1
  br i1 %i.xj, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.xk = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !1255, !noalias !27574
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !1529, !noalias !27574
  %i.xo = shl nsw i64 %indvars.iv709, 2
  %i.xp = getelementptr inbounds i8, ptr %i.xn, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !3, !noalias !27574
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.de
  %.0.i.i.i.i182 = phi i32 [ %i.xq, %bb.dh ], [ %i.xl, %bb.dg ], [ %i.xg, %bb.de ]
  %i.xr = sext i32 %.0.i.i.i.i182 to i64
  %i.xs = getelementptr inbounds i8, ptr %i.xc, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !13, !noalias !27574 ; 3 uses
  %.not.i.i.i184 = icmp eq ptr %.sroa.20.0646, %.sroa.38.0645
  br i1 %.not.i.i.i184, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i193, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i8 %i.xt, ptr %.sroa.20.0646, align 1, !tbaa !13, !noalias !27574
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i186

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i193: ; preds = %bb.di
  %.sroa.speculated.i.i.i.i.i194 = call i64 @llvm.umax.i64(i64 %i.wz, i64 1)
  %i.xu = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i194, %i.wz
  %i.xv = call i64 @llvm.umin.i64(i64 %i.xu, i64 9223372036854775807) ; 2 uses
  %i.xw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xv) #42
          to label %.noexc200 unwind label %.loopexit557 ; 5 uses

.noexc200:                                        ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i193
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.wz ; 3 uses
  store i8 %i.xt, ptr %i.xx, align 1, !tbaa !13, !noalias !27574
  %i.xy = icmp sgt i64 %i.wz, 0
  br i1 %i.xy, label %bb.dk, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i196

bb.dk:                                            ; preds = %.noexc200
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.xw, ptr align 1 %.sroa.0377.0647, i64 %i.wz, i1 false), !noalias !27574
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i196

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i196: ; preds = %bb.dk, %.noexc200
  %.not.i17.i.i.i.i197 = icmp eq ptr %.sroa.0377.0647, null
  br i1 %.not.i17.i.i.i.i197, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i196
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0377.0647, i64 noundef %i.wz) #43, !noalias !27574
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198: ; preds = %bb.dl, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i196
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xv
  %.pre714 = load i8, ptr %i.xx, align 1, !tbaa !13, !noalias !27574
  %.pre715 = ptrtoint ptr %i.xw to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i186

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i186:      ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198, %bb.dj
  %.pre-phi = phi i64 [ %.pre715, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198 ], [ %i.wy, %bb.dj ]
  %i.ya = phi i8 [ %.pre714, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198 ], [ %i.xt, %bb.dj ] ; 2 uses
  %.sroa.38.2 = phi ptr [ %i.xz, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198 ], [ %.sroa.38.0645, %bb.dj ]
  %.pn512 = phi ptr [ %i.xx, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198 ], [ %.sroa.20.0646, %bb.dj ]
  %.sroa.0377.2 = phi ptr [ %i.xw, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i198 ], [ %.sroa.0377.0647, %bb.dj ] ; 4 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn512, i64 1 ; 2 uses
  %i.yb = ptrtoint ptr %.sroa.20.3 to i64
  %i.yc = xor i64 %.pre-phi, -1
  %i.yd = add i64 %i.yb, %i.yc                    ; 3 uses
  %i.ye = icmp sgt i64 %i.yd, 0
  br i1 %i.ye, label %.lr.ph.i.i.i188, label %.loopexit539

.lr.ph.i.i.i188:                                  ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i186, %bb.dm
  %.019.i.i.i189 = phi i64 [ %.0920.i56.i.i191, %bb.dm ], [ %i.yd, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i186 ] ; 3 uses
  %.0920.in.i.i.i190 = add nsw i64 %.019.i.i.i189, -1
  %.0920.i56.i.i191 = lshr i64 %.0920.in.i.i.i190, 1 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0377.2, i64 %.0920.i56.i.i191
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !13, !noalias !27574 ; 2 uses
  %i.yh = icmp sgt i8 %i.yg, %i.ya
  br i1 %i.yh, label %bb.dm, label %.loopexit539

bb.dm:                                            ; preds = %.lr.ph.i.i.i188
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.0377.2, i64 %.019.i.i.i189
  store i8 %i.yg, ptr %i.yi, align 1, !tbaa !13, !noalias !27574
  %.not.i.i192 = icmp eq i64 %.0920.i56.i.i191, 0
  br i1 %.not.i.i192, label %.loopexit539, label %.lr.ph.i.i.i188, !llvm.loop !27428

.loopexit539:                                     ; preds = %bb.dm, %.lr.ph.i.i.i188, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i186
  %.0.lcssa.i.i.i187 = phi i64 [ %i.yd, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i186 ], [ %.019.i.i.i189, %.lr.ph.i.i.i188 ], [ 0, %bb.dm ]
  %i.yj = getelementptr inbounds i8, ptr %.sroa.0377.2, i64 %.0.lcssa.i.i.i187
  store i8 %i.ya, ptr %i.yj, align 1, !tbaa !13, !noalias !27574
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243

.loopexit557:                                     ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i193
  %lpad.loopexit559 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit290

bb.dn:                                            ; preds = %.thread502
  br i1 %i.xf, label %.thread504, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.yk = getelementptr inbounds nuw i8, ptr %i.vq, i64 59
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !1528, !range !796, !noalias !27574, !noundef !797
  %i.ym = trunc nuw i8 %i.yl to i1
  br i1 %i.ym, label %bb.dp, label %.thread790

bb.dp:                                            ; preds = %bb.do
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  %.0.i.i.i.i203 = load i32, ptr %i.yn, align 8, !tbaa !3, !noalias !27574
  %i.yo = sext i32 %.0.i.i.i.i203 to i64
  %i.yp = getelementptr inbounds i8, ptr %i.xc, i64 %i.yo
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !13, !noalias !27574
  %i.yr = load i8, ptr %.sroa.0377.0647, align 1, !tbaa !13, !noalias !27574
  %i.ys = icmp sgt i8 %i.yq, %i.yr
  br i1 %i.ys, label %bb.dq, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243

.thread790:                                       ; preds = %bb.do
  %i.yt = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !1529, !noalias !27574
  %i.yv = shl nsw i64 %indvars.iv709, 2
  %i.yw = getelementptr inbounds i8, ptr %i.yu, i64 %i.yv
  %.0.i.i.i.i203792 = load i32, ptr %i.yw, align 4, !tbaa !3, !noalias !27574
  %i.yx = sext i32 %.0.i.i.i.i203792 to i64
  %i.yy = getelementptr inbounds i8, ptr %i.xc, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !13, !noalias !27574
  %i.za = load i8, ptr %.sroa.0377.0647, align 1, !tbaa !13, !noalias !27574
  %i.zb = icmp sgt i8 %i.yz, %i.za
  br i1 %i.zb, label %.thread793, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243

.thread504:                                       ; preds = %bb.dn
  %i.zc = getelementptr inbounds i8, ptr %i.xc, i64 %indvars.iv709
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !13, !noalias !27574
  %i.ze = load i8, ptr %.sroa.0377.0647, align 1, !tbaa !13, !noalias !27574
  %i.zf = icmp sgt i8 %i.zd, %i.ze
  %i.zg = trunc nsw i64 %indvars.iv709 to i32
  br i1 %i.zf, label %.thread506, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243

bb.dq:                                            ; preds = %bb.dp
  %i.zh = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !1255, !noalias !27574
  br label %.thread506

.thread793:                                       ; preds = %.thread790
  %i.zj = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !1529, !noalias !27574
  %i.zl = shl nsw i64 %indvars.iv709, 2
  %i.zm = getelementptr inbounds i8, ptr %i.zk, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !3, !noalias !27574
  br label %.thread506

.thread506:                                       ; preds = %.thread504, %.thread793, %bb.dq
  %.0.i.i.i.i206 = phi i32 [ %i.zn, %.thread793 ], [ %i.zi, %bb.dq ], [ %i.zg, %.thread504 ]
  %i.zo = sext i32 %.0.i.i.i.i206 to i64
  %i.zp = getelementptr inbounds i8, ptr %i.xc, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !13, !noalias !27574 ; 3 uses
  %.not.i.i.i208 = icmp eq ptr %.sroa.20.0646, %.sroa.38.0645
  br i1 %.not.i.i.i208, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.thread506
  store i8 %i.zq, ptr %.sroa.20.0646, align 1, !tbaa !13, !noalias !27574
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i210

bb.ds:                                            ; preds = %.thread506
  %i.zr = icmp eq i64 %i.wz, 9223372036854775807
  br i1 %i.zr, label %bb.dt, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i217

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #45
          to label %.noexc223 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit290.thread.loopexit.split-lp

.noexc223:                                        ; preds = %bb.dt
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i217: ; preds = %bb.ds
  %14 = shl i64 %i.wz, 1
  %15 = icmp slt i64 %i.wz, 0
  %i.zs = call i64 @llvm.umin.i64(i64 %14, i64 9223372036854775807)
  %i.zt = select i1 %15, i64 9223372036854775807, i64 %i.zs ; 3 uses
  %.not.i.i.i.i.i219 = icmp ne i64 %i.zt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i219), !noalias !27574
  %i.zu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zt) #42
          to label %.noexc224 unwind label %_ZNSt6vectorIaSaIaEED2Ev.exit290.thread.loopexit ; 5 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i217
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.wz ; 3 uses
  store i8 %i.zq, ptr %i.zv, align 1, !tbaa !13, !noalias !27574
  %i.zw = icmp sgt i64 %i.wz, 0
  br i1 %i.zw, label %bb.du, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222

bb.du:                                            ; preds = %.noexc224
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.zu, ptr nonnull align 1 %.sroa.0377.0647, i64 %i.wz, i1 false), !noalias !27574
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222: ; preds = %bb.du, %.noexc224
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0377.0647, i64 noundef %i.wz) #43, !noalias !27574
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zt
  %.pre713 = load i8, ptr %i.zv, align 1, !tbaa !13, !noalias !27574
  %.pre716 = ptrtoint ptr %i.zu to i64
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i210

_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i210:      ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222, %bb.dr
  %.pre-phi717 = phi i64 [ %.pre716, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222 ], [ %i.wy, %bb.dr ] ; 3 uses
  %i.zy = phi i8 [ %.pre713, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222 ], [ %i.zq, %bb.dr ] ; 2 uses
  %.sroa.38.3 = phi ptr [ %i.zx, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222 ], [ %.sroa.38.0645, %bb.dr ] ; 2 uses
  %.pn = phi ptr [ %i.zv, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222 ], [ %.sroa.20.0646, %bb.dr ] ; 6 uses
  %.sroa.0377.3 = phi ptr [ %i.zu, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i222 ], [ %.sroa.0377.0647, %bb.dr ] ; 15 uses
  %.sroa.20.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.zz = ptrtoint ptr %.sroa.20.4 to i64         ; 2 uses
  %i.aaa = xor i64 %.pre-phi717, -1
  %i.aab = add i64 %i.zz, %i.aaa                  ; 3 uses
  %i.aac = icmp sgt i64 %i.aab, 0
  br i1 %i.aac, label %.lr.ph.i.i.i212, label %.loopexit540

.lr.ph.i.i.i212:                                  ; preds = %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i210, %bb.dv
  %.019.i.i.i213 = phi i64 [ %.0920.i56.i.i215, %bb.dv ], [ %i.aab, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i210 ] ; 3 uses
  %.0920.in.i.i.i214 = add nsw i64 %.019.i.i.i213, -1
  %.0920.i56.i.i215 = lshr i64 %.0920.in.i.i.i214, 1 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0377.3, i64 %.0920.i56.i.i215
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !13, !noalias !27574 ; 2 uses
  %i.aaf = icmp sgt i8 %i.aae, %i.zy
  br i1 %i.aaf, label %bb.dv, label %.loopexit540

bb.dv:                                            ; preds = %.lr.ph.i.i.i212
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.0377.3, i64 %.019.i.i.i213
  store i8 %i.aae, ptr %i.aag, align 1, !tbaa !13, !noalias !27574
  %.not.i.i216 = icmp eq i64 %.0920.i56.i.i215, 0
  br i1 %.not.i.i216, label %.loopexit540, label %.lr.ph.i.i.i212, !llvm.loop !27428

.loopexit540:                                     ; preds = %bb.dv, %.lr.ph.i.i.i212, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i210
  %.0.lcssa.i.i.i211 = phi i64 [ %i.aab, %_ZNSt6vectorIaSaIaEE9push_backEOa.exit.i210 ], [ %.019.i.i.i213, %.lr.ph.i.i.i212 ], [ 0, %bb.dv ]
  %i.aah = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %.0.lcssa.i.i.i211
  store i8 %i.zy, ptr %i.aah, align 1, !tbaa !13, !noalias !27574
  %i.aai = sub i64 %i.zz, %.pre-phi717
  %i.aaj = icmp sgt i64 %i.aai, 1
  br i1 %i.aaj, label %bb.dw, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243

bb.dw:                                            ; preds = %.loopexit540
  %i.aak = load i8, ptr %.pn, align 1, !tbaa !13, !noalias !27574 ; 2 uses
  %i.aal = load i8, ptr %.sroa.0377.3, align 1, !tbaa !13, !noalias !27574
  store i8 %i.aal, ptr %.pn, align 1, !tbaa !13, !noalias !27574
  %i.aam = ptrtoint ptr %.pn to i64
  %i.aan = sub i64 %i.aam, %.pre-phi717           ; 4 uses
  %i.aao = add nsw i64 %i.aan, -1
  %i.aap = sdiv i64 %i.aao, 2
  %i.aaq = icmp sgt i64 %i.aan, 2
  br i1 %i.aaq, label %.lr.ph.i.i.i.i240, label %._crit_edge.i.i.i.i226

.lr.ph.i.i.i.i240:                                ; preds = %bb.dw, %.lr.ph.i.i.i.i240
  %.035.i.i.i.i241 = phi i64 [ %spec.select.i.i.i.i242, %.lr.ph.i.i.i.i240 ], [ 0, %bb.dw ] ; 2 uses
  %i.aar = shl i64 %.035.i.i.i.i241, 1            ; 2 uses
  %i.aas = add i64 %i.aar, 2                      ; 2 uses
  %i.aat = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %i.aas
  %i.aau = or disjoint i64 %i.aar, 1              ; 2 uses
  %i.aav = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %i.aau
  %i.aaw = load i8, ptr %i.aat, align 1, !tbaa !13, !noalias !27574
  %i.aax = load i8, ptr %i.aav, align 1, !tbaa !13, !noalias !27574
  %i.aay = icmp sgt i8 %i.aaw, %i.aax
  %spec.select.i.i.i.i242 = select i1 %i.aay, i64 %i.aau, i64 %i.aas ; 4 uses
  %i.aaz = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %spec.select.i.i.i.i242
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !13, !noalias !27574
  %i.abb = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %.035.i.i.i.i241
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !13, !noalias !27574
  %i.abc = icmp slt i64 %spec.select.i.i.i.i242, %i.aap
  br i1 %i.abc, label %.lr.ph.i.i.i.i240, label %._crit_edge.i.i.i.i226, !llvm.loop !27429

._crit_edge.i.i.i.i226:                           ; preds = %.lr.ph.i.i.i.i240, %bb.dw
  %.0.lcssa.i.i.i.i227 = phi i64 [ 0, %bb.dw ], [ %spec.select.i.i.i.i242, %.lr.ph.i.i.i.i240 ] ; 5 uses
  %i.abd = and i64 %i.aan, 1
  %i.abe = icmp eq i64 %i.abd, 0
  br i1 %i.abe, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %._crit_edge.i.i.i.i226
  %i.abf = add nsw i64 %i.aan, -2
  %i.abg = ashr exact i64 %i.abf, 1
  %i.abh = icmp eq i64 %.0.lcssa.i.i.i.i227, %i.abg
  br i1 %i.abh, label %.thread.i.i.i239, label %bb.dy

.thread.i.i.i239:                                 ; preds = %bb.dx
  %i.abi = shl nuw nsw i64 %.0.lcssa.i.i.i.i227, 1
  %i.abj = or disjoint i64 %i.abi, 1              ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.0377.3, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !13, !noalias !27574
  %i.abm = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %.0.lcssa.i.i.i.i227
  store i8 %i.abl, ptr %i.abm, align 1, !tbaa !13, !noalias !27574
  br label %.lr.ph.i.i.i.i.i231.preheader

bb.dy:                                            ; preds = %bb.dx, %._crit_edge.i.i.i.i226
  %.not.i.i.i228 = icmp eq i64 %.0.lcssa.i.i.i.i227, 0
  br i1 %.not.i.i.i228, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235, label %.lr.ph.i.i.i.i.i231.preheader

.lr.ph.i.i.i.i.i231.preheader:                    ; preds = %bb.dy, %.thread.i.i.i239
  %.019.i.i.i.i.i232.ph = phi i64 [ %.0.lcssa.i.i.i.i227, %bb.dy ], [ %i.abj, %.thread.i.i.i239 ]
  br label %.lr.ph.i.i.i.i.i231

.lr.ph.i.i.i.i.i231:                              ; preds = %.lr.ph.i.i.i.i.i231.preheader, %bb.dz
  %.019.i.i.i.i.i232 = phi i64 [ %.0920.i.i67.i.i.i234, %bb.dz ], [ %.019.i.i.i.i.i232.ph, %.lr.ph.i.i.i.i.i231.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i233 = add nsw i64 %.019.i.i.i.i.i232, -1
  %.0920.i.i67.i.i.i234 = lshr i64 %.0920.in.i.i.i.i.i233, 1 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.sroa.0377.3, i64 %.0920.i.i67.i.i.i234
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !13, !noalias !27574 ; 2 uses
  %i.abp = icmp sgt i8 %i.abo, %i.aak
  br i1 %i.abp, label %bb.dz, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i.i231
  %i.abq = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %.019.i.i.i.i.i232
  store i8 %i.abo, ptr %i.abq, align 1, !tbaa !13, !noalias !27574
  %.not8.i.i.i238 = icmp eq i64 %.0920.i.i67.i.i.i234, 0
  br i1 %.not8.i.i.i238, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235, label %.lr.ph.i.i.i.i.i231, !llvm.loop !27428

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235: ; preds = %bb.dz, %.lr.ph.i.i.i.i.i231, %bb.dy
  %.0.lcssa.i.i.i.i.i236 = phi i64 [ 0, %bb.dy ], [ %.019.i.i.i.i.i232, %.lr.ph.i.i.i.i.i231 ], [ 0, %bb.dz ]
  %i.abr = getelementptr inbounds i8, ptr %.sroa.0377.3, i64 %.0.lcssa.i.i.i.i.i236
  store i8 %i.aak, ptr %i.abr, align 1, !tbaa !13, !noalias !27574
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243

_ZNSt6vectorIaSaIaEED2Ev.exit290.thread.loopexit: ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i217
  %lpad.loopexit554 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit290.thread

_ZNSt6vectorIaSaIaEED2Ev.exit290.thread.loopexit.split-lp: ; preds = %bb.dt
  %lpad.loopexit.split-lp555 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit290.thread

bb.ea:                                            ; preds = %bb.dd
  %i.abs = add nsw i32 %.028.i.i648, 1
  br label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243

_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit243: ; preds = %.thread790, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235, %.loopexit540, %.thread504, %bb.ea, %bb.dp, %.loopexit539
  %.sroa.38.1 = phi ptr [ %.sroa.38.2, %.loopexit539 ], [ %.sroa.38.0645, %.thread504 ], [ %.sroa.38.0645, %bb.dp ], [ %.sroa.38.0645, %bb.ea ], [ %.sroa.38.3, %.loopexit540 ], [ %.sroa.38.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235 ], [ %.sroa.38.0645, %.thread790 ] ; 5 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.3, %.loopexit539 ], [ %.sroa.20.0646, %.thread504 ], [ %.sroa.20.0646, %bb.dp ], [ %.sroa.20.0646, %bb.ea ], [ %.pn, %.loopexit540 ], [ %.pn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235 ], [ %.sroa.20.0646, %.thread790 ] ; 4 uses
  %.sroa.0377.1 = phi ptr [ %.sroa.0377.2, %.loopexit539 ], [ %.sroa.0377.0647, %.thread504 ], [ %.sroa.0377.0647, %bb.dp ], [ %.sroa.0377.0647, %bb.ea ], [ %.sroa.0377.3, %.loopexit540 ], [ %.sroa.0377.3, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235 ], [ %.sroa.0377.0647, %.thread790 ] ; 19 uses
  %.129.i.i = phi i32 [ %.028.i.i648, %.loopexit539 ], [ %.028.i.i648, %.thread504 ], [ %.028.i.i648, %bb.dp ], [ %i.abs, %bb.ea ], [ %.028.i.i648, %.loopexit540 ], [ %.028.i.i648, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPaSt6vectorIaSaIaEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions17ArrayTopNFunctionINSA_4exec10VectorExecEE4callINSD_11ArrayWriterIaEENSD_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorEEEvSL_SL_SL_RSN_.exit.i.i235 ], [ %.028.i.i648, %.thread790 ] ; 3 uses
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, 1 ; 2 uses
  %i.abt = trunc nsw i64 %indvars.iv.next710 to i32
  %i.abu = icmp eq i32 %i.ve, %i.abt
  br i1 %i.abu, label %bb.ct, label %bb.cx

_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170:            ; preds = %bb.cw, %.noexc169, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i164
  %.sroa.0350.0 = phi ptr [ %i.vl, %bb.cw ], [ %i.vl, %.noexc169 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i164 ] ; 9 uses
  %.sroa.12.0 = phi ptr [ %i.vm, %bb.cw ], [ %i.vm, %.noexc169 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i164 ] ; 2 uses
  %.0.i.i.i.i.i166 = phi ptr [ %i.vm, %bb.cw ], [ %i.vn, %.noexc169 ], [ null, %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i164 ] ; 2 uses
  %i.abv = icmp eq ptr %.sroa.0377.1, %.sroa.20.1
  br i1 %i.abv, label %.preheader548, label %.lr.ph

.preheader548:                                    ; preds = %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit261, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170
  %i.abw = icmp eq ptr %.sroa.0350.0, %.0.i.i.i.i.i166
  br i1 %i.abw, label %.preheader542, label %.lr.ph652

.lr.ph652:                                        ; preds = %.preheader548
  %i.abx = getelementptr inbounds nuw i8, ptr %i.su, i64 60 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.su, i64 64 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.su, i64 68 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  br label %bb.eg

.lr.ph:                                           ; preds = %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit261
  %.027.i.i650 = phi i64 [ %i.acc, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit261 ], [ %i.vj, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170 ]
  %.sroa.20.2649 = phi ptr [ %i.adp, %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit261 ], [ %.sroa.20.1, %_ZNSt6vectorIaSaIaEEC2EmRKS0_.exit170 ] ; 3 uses
  %i.acb = load i8, ptr %.sroa.0377.1, align 1, !tbaa !13, !noalias !27574 ; 2 uses
  %i.acc = add i64 %.027.i.i650, -1               ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.0350.0, i64 %i.acc
  store i8 %i.acb, ptr %i.acd, align 1, !tbaa !13, !noalias !27574
  %i.ace = ptrtoint ptr %.sroa.20.2649 to i64
  %i.acf = sub i64 %i.ace, %i.vi
  %i.acg = icmp sgt i64 %i.acf, 1
  br i1 %i.acg, label %bb.eb, label %_ZNSt14priority_queueIaSt6vectorIaSaIaEEZN8facebook5velox9functions17ArrayTopNFunctionINS4_4exec10VectorExecEE4callINS7_11ArrayWriterIaEENS7_9ArrayViewILb1EaEEEEvRT_RKT0_iE21GreaterThanComparatorE3popEv.exit261

bb.eb:                                            ; preds = %.lr.ph
  %i.ach = getelementptr inbounds i8, ptr %.sroa.20.2649, i64 -1 ; 3 uses
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !13, !noalias !27574 ; 2 uses
end_hunk_7
