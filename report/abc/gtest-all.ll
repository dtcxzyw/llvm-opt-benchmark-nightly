Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/gtest-all?download=true
inline.NumInlined: 9241
inline.NumDeleted: 2357
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7testing9TestSuite3RunEv:bb.a
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 528 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !353 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.r, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge": ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit"
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !92
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.r:                                             ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit"
  %i.bb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bb, align 8, !tbaa !92
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !353
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge", %bb.r
  %i.bc = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.r ], [ %.pre, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge" ]
  %i.bd = phi ptr [ %i.bb, %bb.r ], [ %i.az, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge" ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.218)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !325 ; 3 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !327 ; 14 uses
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 112               ; 8 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %wide.trip.count.i = and i64 %i.bn, 2147483647  ; 2 uses
  br label %.lr.ph.i

bb.s:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !20

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.bn
  br i1 %exitcond.not.i, label %bb.t, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.545, i64 noundef %i.bn, i64 noundef %i.bn) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw [112 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !324
  %i.bs = add i32 %i.br, -1
  %spec.select.i.i = icmp ult i32 %i.bs, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.s

bb.u:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !20

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.bn
  br i1 %exitcond.not.i.i, label %bb.v, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.545, i64 noundef %i.bn, i64 noundef %i.bn) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds nuw [112 x i8], ptr %i.bj, i64 %indvars.iv.i.i
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !324
  %i.bv = add i32 %i.bu, -1
  %spec.select.i.i.i = icmp ult i32 %i.bv, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.u

.loopexit.i:                                      ; preds = %bb.u, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %.not7.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.bw = add i64 %i.bk, -112
  %i.bx = sub i64 %i.bw, %i.bl                    ; 2 uses
  %i.by = udiv i64 %i.bx, 112
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.bz, 576460752303423480      ; 3 uses
  %i.ca = mul i64 %n.vec, 112
  %i.cb = getelementptr i8, ptr %i.bj, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi106 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %i.cc = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.cc
  %i.cd = getelementptr i8, ptr %i.bj, i64 %i.cc
  %next.gep107 = getelementptr i8, ptr %i.cd, i64 112
  %i.ce = getelementptr i8, ptr %i.bj, i64 %i.cc
  %next.gep108 = getelementptr i8, ptr %i.ce, i64 224
  %i.cf = getelementptr i8, ptr %i.bj, i64 %i.cc
  %next.gep109 = getelementptr i8, ptr %i.cf, i64 336
  %i.cg = getelementptr i8, ptr %i.bj, i64 %i.cc
  %next.gep110 = getelementptr i8, ptr %i.cg, i64 448
  %i.ch = getelementptr i8, ptr %i.bj, i64 %i.cc
  %next.gep111 = getelementptr i8, ptr %i.ch, i64 560
  %i.ci = getelementptr i8, ptr %i.bj, i64 %i.cc
  %next.gep112 = getelementptr i8, ptr %i.ci, i64 672
  %i.cj = getelementptr i8, ptr %i.bj, i64 %i.cc
  %next.gep113 = getelementptr i8, ptr %i.cj, i64 784
  %i.ck = load i32, ptr %next.gep, align 8, !tbaa !324
  %i.cl = load i32, ptr %next.gep107, align 8, !tbaa !324
  %i.cm = load i32, ptr %next.gep108, align 8, !tbaa !324
  %i.cn = load i32, ptr %next.gep109, align 8, !tbaa !324
  %i.co = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.cl, i64 1
  %i.cq = insertelement <4 x i32> %i.cp, i32 %i.cm, i64 2
  %i.cr = insertelement <4 x i32> %i.cq, i32 %i.cn, i64 3
  %i.cs = load i32, ptr %next.gep110, align 8, !tbaa !324
  %i.ct = load i32, ptr %next.gep111, align 8, !tbaa !324
  %i.cu = load i32, ptr %next.gep112, align 8, !tbaa !324
  %i.cv = load i32, ptr %next.gep113, align 8, !tbaa !324
  %i.cw = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.ct, i64 1
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 2
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 3
  %i.da = icmp eq <4 x i32> %i.cr, splat (i32 3)
  %i.db = icmp eq <4 x i32> %i.cz, splat (i32 3)
  %i.dc = zext <4 x i1> %i.da to <4 x i32>
  %i.dd = zext <4 x i1> %i.db to <4 x i32>
  %i.de = add <4 x i32> %vec.phi, %i.dc           ; 2 uses
  %i.df = add <4 x i32> %vec.phi106, %i.dd        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !1355

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.df, %i.de
  %i.dh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader122

.lr.ph.i1.i.preheader122:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.dh, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.bj, %.lr.ph.i1.i.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader122, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i23, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader122 ]
  %.sroa.04.08.i.i = phi ptr [ %i.dl, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader122 ] ; 2 uses
  %i.di = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !324
  %i.dj = icmp eq i32 %i.di, 3
  %i.dk = zext i1 %i.dj to i32
  %spec.select.i.i23 = add nuw nsw i32 %.09.i.i, %i.dk ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.dl, %i.bi
  br i1 %.not.i.i24, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !1356

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dh, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.dm = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.dn = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.dm, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.do = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #55
  %i.dp = sdiv i64 %i.do, 1000000
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !486
  %i.dr = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !409
  %i.dt = load ptr, ptr %i.s, align 8, !tbaa !410 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = lshr exact i64 %i.dw, 3
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit42.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit42.thread ] ; 6 uses
  %i.ec = phi ptr [ %i.dt, %.lr.ph ], [ %.pre77, %_ZNK7testing10TestResult6FailedEv.exit42.thread ]
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !484
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !481 ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = shl i64 %i.eh, 30
  %i.ej = ashr i64 %i.ei, 32
  %.not.i.i25 = icmp slt i64 %indvars.iv, %i.ej
  tail call void @llvm.assume(i1 %.not.i.i25)
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !93 ; 2 uses
  %i.em = icmp sgt i32 %i.el, -1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = zext nneg i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !403 ; 2 uses
  br i1 %i.dn, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.w
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ep)
  br label %bb.x

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27: ; preds = %bb.w
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ep)
  br label %bb.x

bb.x:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.eq = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !87, !range !75, !noundef !76
  %i.er = trunc nuw i8 %i.eq to i1
  %.pre77 = load ptr, ptr %i.s, align 8, !tbaa !410 ; 5 uses
  br i1 %i.er, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30, label %_ZNK7testing10TestResult6FailedEv.exit42.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30: ; preds = %bb.x
  %i.es = load ptr, ptr %i.eb, align 8, !tbaa !484
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !481 ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = shl i64 %i.ew, 30
  %i.ey = ashr i64 %i.ex, 32
  %.not.i.i29 = icmp slt i64 %indvars.iv, %i.ey
  tail call void @llvm.assume(i1 %.not.i.i29)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !93 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.pre77, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !403 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 200
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 208
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !325
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !327 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 112               ; 5 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.preheader.i33, label %_ZNK7testing10TestResult6FailedEv.exit42.thread

.lr.ph.preheader.i33:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30
  %wide.trip.count.i34 = and i64 %i.fm, 2147483647
  br label %.lr.ph.i35

bb.y:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond16.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i34
  br i1 %exitcond16.not.i41, label %_ZNK7testing10TestResult6FailedEv.exit42.thread, label %.lr.ph.i35, !llvm.loop !20

.lr.ph.i35:                                       ; preds = %bb.y, %.lr.ph.preheader.i33
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.preheader.i33 ], [ %indvars.iv.next.i40, %bb.y ] ; 3 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.i36, %i.fm
  br i1 %exitcond.not.i37, label %bb.z, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38

bb.z:                                             ; preds = %.lr.ph.i35
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.545, i64 noundef %i.fm, i64 noundef %i.fm) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38: ; preds = %.lr.ph.i35
  %i.fp = getelementptr inbounds nuw [112 x i8], ptr %i.fi, i64 %indvars.iv.i36
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !324
  %i.fr = add i32 %i.fq, -1
  %spec.select.i.i39 = icmp ult i32 %i.fr, 2
  br i1 %spec.select.i.i39, label %_ZNK7testing10TestResult6FailedEv.exit42.preheader, label %bb.y

_ZNK7testing10TestResult6FailedEv.exit42.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38
  %i.fs = trunc nuw nsw i64 %indvars.iv to i32
  %.062 = add nuw nsw i32 %i.fs, 1                ; 2 uses
  %i.ft = load ptr, ptr %i.u, align 8, !tbaa !409
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %.pre77 to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = lshr exact i64 %i.fw, 3
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = icmp slt i32 %.062, %i.fy
  br i1 %i.fz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44.preheader, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44.preheader: ; preds = %_ZNK7testing10TestResult6FailedEv.exit42.preheader
  %1 = zext nneg i32 %.062 to i64
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44
  %indvars.iv74 = phi i64 [ %1, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44.preheader ], [ %indvars.iv.next75, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44 ] ; 3 uses
  %i.ga = phi ptr [ %.pre77, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44.preheader ], [ %i.gp, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44 ]
  %i.gb = load ptr, ptr %i.eb, align 8, !tbaa !484
  %i.gc = load ptr, ptr %i.ea, align 8, !tbaa !481 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = shl i64 %i.gf, 30
  %i.gh = ashr i64 %i.gg, 32
  %.not.i.i43 = icmp slt i64 %indvars.iv74, %i.gh
  tail call void @llvm.assume(i1 %.not.i.i43)
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv74
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !93 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !403
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gn)
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.go = load ptr, ptr %i.u, align 8, !tbaa !409
  %i.gp = load ptr, ptr %i.s, align 8, !tbaa !410 ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = lshr exact i64 %i.gs, 3
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = trunc nuw i64 %indvars.iv.next75 to i32
  %i.gw = icmp slt i32 %i.gv, %i.gu
  br i1 %i.gw, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, label %.loopexit, !llvm.loop !1357

_ZNK7testing10TestResult6FailedEv.exit42.thread:  ; preds = %bb.y, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gx = load ptr, ptr %i.u, align 8, !tbaa !409
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %.pre77 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = shl i64 %i.ha, 29
  %i.hc = ashr i64 %i.hb, 32
  %i.hd = icmp slt i64 %indvars.iv.next, %i.hc
  br i1 %i.hd, label %bb.w, label %.loopexit, !llvm.loop !1358

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit42.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit42.preheader
  %i.he = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.hf = sub nsw i64 %i.he, %i.dr
  %i.hg = sdiv i64 %i.hf, 1000000
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !487
  %i.hi = load ptr, ptr %i.ay, align 8, !tbaa !353 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.aa, label %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge

.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge: ; preds = %.loopexit
  %.pre78 = load ptr, ptr %i.hi, align 8, !tbaa !92
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46

bb.aa:                                            ; preds = %.loopexit
  %i.hk = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hk, align 8, !tbaa !92
  store ptr %i.hk, ptr %i.ay, align 8, !tbaa !353
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46: ; preds = %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge, %bb.aa
  %i.hl = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.aa ], [ %.pre78, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge ]
  %i.hm = phi ptr [ %i.hk, %bb.aa ], [ %i.hi, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  tail call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hm)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.219)
  %i.hp = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 96
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.hs = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 104
  %i.hu = load ptr, ptr %i.ht, align 8
  tail call void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.j, align 8, !tbaa !383
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !471, !range !75, !noundef !76
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !76
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1359

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #55
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #55
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 0 uses
  invoke void @__cxa_rethrow() #57
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #55
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #55
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !86
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !86
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.l
  %i.de = load ptr, ptr %i.ai, align 8, !tbaa !512
  %i.df = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.de)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.di = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.di, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.dj = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.o, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !94

bb.o:                                             ; preds = %bb.n
  %i.dl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i63 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i63, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.q unwind label %bb.r, !inline_history !2

bb.q:                                             ; preds = %bb.p
  %i.dm = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.av, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.dn, %bb.r ], [ %i.of, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.n, %bb.o, %bb.q
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !99 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 368
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !190 ; 2 uses
  %.not.i64 = icmp eq ptr %i.dq, null
  br i1 %.not.i64, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.t:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 360
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !383 ; 2 uses
  %.not4.i = icmp eq ptr %i.dt, null
  br i1 %.not4.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.v:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.s, %bb.u, %bb.v
  %.0.i = phi ptr [ %i.dr, %bb.s ], [ %i.du, %bb.u ], [ %i.dv, %bb.v ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !325 ; 2 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !327 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 112               ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ac, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.eg = load ptr, ptr @stdout, align 8, !tbaa !195
  %i.eh = call i32 @fflush(ptr noundef %i.eg)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.ac
  %i.ei = phi ptr [ %i.ff, %bb.ac ], [ %i.dz, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.ej = phi ptr [ %i.fg, %bb.ac ], [ %i.dy, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %bb.ac ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.ek = phi i64 [ %i.fk, %bb.ac ], [ %i.ed, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ek, %indvars.iv154
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.545, i64 noundef %indvars.iv154, i64 noundef %i.ek) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.el = getelementptr inbounds nuw [112 x i8], ptr %i.ei, i64 %indvars.iv154 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !324
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !83 ; 4 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !80
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.noexc, label %bb.y

.noexc:                                           ; preds = %bb.x
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.511) #57
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.er = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.er, ptr %i.a, align 8, !tbaa !85
  %i.es = icmp ugt i64 %i.er, 15
  br i1 %i.es, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.et = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.et, ptr %2, align 8, !tbaa !83
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.eu, ptr %i.bb, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.y
  %i.ev = phi ptr [ %i.et, %.noexc.i ], [ %i.bb, %bb.y ] ; 2 uses
  switch i64 %i.er, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ew = load i8, ptr %i.ep, align 1, !tbaa !86
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !86
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull align 1 %i.ep, i64 %i.er, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  store i64 %i.ex, ptr %i.bc, align 8, !tbaa !84
  %i.ey = load ptr, ptr %2, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.fa = load ptr, ptr %2, align 8, !tbaa !83
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.fa) ; 0 uses
  %i.fb = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.fd = load i64, ptr %i.bb, align 8, !tbaa !86
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.dx, align 8, !tbaa !325
  %.pre157 = load ptr, ptr %i.dw, align 8, !tbaa !327
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.ff = phi ptr [ %.pre157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ei, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.fg = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ej, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = sdiv exact i64 %i.fj, 112               ; 2 uses
  %i.fl = shl i64 %i.fk, 32
  %i.fm = ashr exact i64 %i.fl, 32
  %i.fn = icmp slt i64 %indvars.iv.next155, %i.fm
  br i1 %i.fn, label %.lr.ph, label %._crit_edge, !llvm.loop !1800

bb.ad:                                            ; preds = %bb.m
  %i.fo = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.fo, label %bb.af, label %.preheader99

.preheader99:                                     ; preds = %bb.ad
  %i.fp = load ptr, ptr %i.ax, align 8, !tbaa !400
  %i.fq = load ptr, ptr %i.aw, align 8, !tbaa !401 ; 2 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = lshr exact i64 %i.ft, 3
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader99, %bb.ae
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ 0, %.preheader99 ] ; 6 uses
  %i.fx = phi ptr [ %i.ij, %bb.ae ], [ %i.fq, %.preheader99 ]
  %i.fy = load ptr, ptr %i.ba, align 8, !tbaa !484
  %i.fz = load ptr, ptr %i.av, align 8, !tbaa !481 ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = shl i64 %i.gc, 30
  %i.ge = ashr i64 %i.gd, 32
  %.not.i.i67 = icmp slt i64 %indvars.iv, %i.ge
  call void @llvm.assume(i1 %.not.i.i67)
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !93 ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, -1
  call void @llvm.assume(i1 %i.gh)
  %i.gi = zext nneg i32 %i.gg to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !386
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gk)
  %i.gl = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !87, !range !75, !noundef !76
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69, label %bb.ae

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.gn = load ptr, ptr %i.ba, align 8, !tbaa !484
  %i.go = load ptr, ptr %i.av, align 8, !tbaa !481 ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = shl i64 %i.gr, 30
  %i.gt = ashr i64 %i.gs, 32
  %.not.i.i68 = icmp slt i64 %indvars.iv, %i.gt
  call void @llvm.assume(i1 %.not.i.i68)
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !93 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1
  call void @llvm.assume(i1 %i.gw)
  %i.gx = zext nneg i32 %i.gv to i64
  %i.gy = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !386
  %i.hb = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ha)
  br i1 %i.hb, label %.preheader97, label %bb.ae

.preheader97:                                     ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69
  %i.hc = trunc nuw nsw i64 %indvars.iv to i32
  %.055121 = add nuw nsw i32 %i.hc, 1             ; 2 uses
  %i.hd = load ptr, ptr %i.ax, align 8, !tbaa !400
  %i.he = load ptr, ptr %i.aw, align 8, !tbaa !401 ; 2 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = lshr exact i64 %i.hh, 3
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = icmp slt i32 %.055121, %i.hj
  br i1 %i.hk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader: ; preds = %.preheader97
  %3 = zext nneg i32 %.055121 to i64
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72
  %indvars.iv148.a = phi i64 [ %3, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader ], [ %indvars.iv.next149.a, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72 ] ; 3 uses
  %i.hl = phi ptr [ %i.he, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72.preheader ], [ %i.ia, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72 ]
  %i.hm = load ptr, ptr %i.ba, align 8, !tbaa !484
  %i.hn = load ptr, ptr %i.av, align 8, !tbaa !481 ; 2 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = shl i64 %i.hq, 30
  %i.hs = ashr i64 %i.hr, 32
  %.not.i.i71 = icmp slt i64 %indvars.iv148.a, %i.hs
  call void @llvm.assume(i1 %.not.i.i71)
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv148.a
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !93 ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, -1
  call void @llvm.assume(i1 %i.hv)
  %i.hw = zext nneg i32 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !386
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.hy)
  %indvars.iv.next149.a = add nuw nsw i64 %indvars.iv148.a, 1 ; 2 uses
  %i.hz = load ptr, ptr %i.ax, align 8, !tbaa !400
  %i.ia = load ptr, ptr %i.aw, align 8, !tbaa !401 ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = lshr exact i64 %i.id, 3
  %i.if = trunc i64 %i.ie to i32
  %i.ig = trunc nuw i64 %indvars.iv.next149.a to i32
  %i.ih = icmp slt i32 %i.ig, %i.if
  br i1 %i.ih, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72, label %.loopexit, !llvm.loop !1801

bb.ae:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ii = load ptr, ptr %i.ax, align 8, !tbaa !400
  %i.ij = load ptr, ptr %i.aw, align 8, !tbaa !401 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = shl i64 %i.im, 29
  %i.io = ashr i64 %i.in, 32
  %i.ip = icmp slt i64 %indvars.iv.next, %i.io
  br i1 %i.ip, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1802

bb.af:                                            ; preds = %bb.ad
  %i.iq = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.iq, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.af
  %i.ir = load ptr, ptr %i.ax, align 8, !tbaa !400
  %i.is = load ptr, ptr %i.aw, align 8, !tbaa !401 ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = lshr exact i64 %i.iv, 3
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75 ], [ 0, %.preheader ] ; 3 uses
  %i.iz = phi ptr [ %i.jo, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75 ], [ %i.is, %.preheader ]
  %i.ja = load ptr, ptr %i.ba, align 8, !tbaa !484
  %i.jb = load ptr, ptr %i.av, align 8, !tbaa !481 ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = shl i64 %i.je, 30
  %i.jg = ashr i64 %i.jf, 32
  %.not.i.i74 = icmp slt i64 %indvars.iv151, %i.jg
  call void @llvm.assume(i1 %.not.i.i74)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv151
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !93 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  call void @llvm.assume(i1 %i.jj)
  %i.jk = zext nneg i32 %i.ji to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !386
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.jm)
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.jn = load ptr, ptr %i.ax, align 8, !tbaa !400
  %i.jo = load ptr, ptr %i.aw, align 8, !tbaa !401 ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = shl i64 %i.jr, 29
  %i.jt = ashr i64 %i.js, 32
  %i.ju = icmp slt i64 %indvars.iv.next152, %i.jt
  br i1 %i.ju, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75, label %.loopexit, !llvm.loop !1803

.loopexit:                                        ; preds = %bb.ae, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i72, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i75, %.preheader99, %.preheader97, %.preheader, %bb.af, %._crit_edge
  %i.jv = icmp eq i32 %.059126, %i.bd
  %or.cond5 = select i1 %i.jv, i1 true, i1 %i.as
  br i1 %or.cond5, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %i.jw = load ptr, ptr %i.ai, align 8, !tbaa !512
  %i.jx = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 112
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.jw)
  %i.ka = load ptr, ptr %i.az, align 8, !tbaa !514, !noalias !1813 ; 2 uses
  %i.kb = load ptr, ptr %i.ay, align 8, !tbaa !514, !noalias !1814 ; 2 uses
  %.not4.i77 = icmp eq ptr %i.ka, %i.kb
  br i1 %.not4.i77, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.ag, %.lr.ph.i78
  %.sroa.092.0 = phi ptr [ %i.kc, %.lr.ph.i78 ], [ %i.ka, %bb.ag ]
  %i.kc = getelementptr inbounds i8, ptr %.sroa.092.0, i64 -8 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !510 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !92
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %i.kd), !inline_history !1808
  %.not.i79 = icmp eq ptr %i.kc, %i.kb
  br i1 %.not.i79, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i78, !llvm.loop !1809

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i78, %bb.ag
  %i.kh = load ptr, ptr %i.ai, align 8, !tbaa !512
  %i.ki = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 120
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.kh)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %.loopexit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.kl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.km = sub nsw i64 %i.kl, %i.bm
  %i.kn = sdiv i64 %i.km, 1000000
  store i64 %i.kn, ptr %i.be, align 8, !tbaa !489
  %i.ko = load ptr, ptr %i.ai, align 8, !tbaa !512
  %i.kp = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 128
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ko, i32 noundef %.059126)
  %i.ks = load ptr, ptr %i.aw, align 8, !tbaa !385 ; 4 uses
  %i.kt = load ptr, ptr %i.ax, align 8, !tbaa !385 ; 3 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ks, %i.kt       ; 2 uses
  br i1 %.not7.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ 0, %bb.ah ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.mj, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.ks, %bb.ah ] ; 2 uses
  %i.ku = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !386 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 112
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !399, !range !75, !noundef !76
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.ai, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !402 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 56
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !402 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.kz, %i.lb
  br i1 %.not7.i.i.i, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %.lr.ph.i.i.i85

.lr.ph.i.i.i85:                                   ; preds = %bb.ai, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ 0, %bb.ai ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.lu, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ %i.kz, %bb.ai ] ; 2 uses
  %i.lc = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !403 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 128
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !406, !range !75, !noundef !76
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.aj, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i85
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 200
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 208
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !325
  %i.lj = load ptr, ptr %i.lg, align 8, !tbaa !327 ; 2 uses
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = sdiv exact i64 %i.lm, 112               ; 5 uses
  %i.lo = trunc i64 %i.ln to i32
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.preheader.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.aj
  %wide.trip.count.i.i.i.i = and i64 %i.ln, 2147483647
  br label %.lr.ph.i.i.i.i91

bb.ak:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %.lr.ph.i.i.i.i91, !llvm.loop !20

.lr.ph.i.i.i.i91:                                 ; preds = %bb.ak, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ak ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.ln
  br i1 %exitcond.not.i.i.i.i, label %bb.al, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i.i91
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.545, i64 noundef %i.ln, i64 noundef %i.ln) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91
  %i.lq = getelementptr inbounds nuw [112 x i8], ptr %i.lj, i64 %indvars.iv.i.i.i.i
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !324
  %i.ls = add i32 %i.lr, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ls, 2
  br i1 %spec.select.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %bb.ak

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %bb.ak, %bb.aj, %.lr.ph.i.i.i85
  %i.lt = phi i32 [ 0, %.lr.ph.i.i.i85 ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i ]
  %spec.select.i.i.i = add nuw nsw i32 %i.lt, %.09.i.i.i ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.lu, %i.lb
  br i1 %.not.i.i.i86, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, label %.lr.ph.i.i.i85, !llvm.loop !21

_ZNK7testing9TestSuite17failed_test_countEv.exit.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.not.i87 = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %.not.i87, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i: ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, %bb.ai
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ku, i64 192
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ku, i64 200
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !325
  %i.ly = load ptr, ptr %i.lv, align 8, !tbaa !327 ; 2 uses
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = sdiv exact i64 %i.mb, 112               ; 5 uses
  %i.md = trunc i64 %i.mc to i32
  %i.me = icmp sgt i32 %i.md, 0
  br i1 %i.me, label %.lr.ph.preheader.i.i88, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

.lr.ph.preheader.i.i88:                           ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i
  %wide.trip.count.i.i = and i64 %i.mc, 2147483647
  br label %.lr.ph.i.i89

bb.am:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i, label %.lr.ph.i.i89, !llvm.loop !20

.lr.ph.i.i89:                                     ; preds = %bb.am, %.lr.ph.preheader.i.i88
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i88 ], [ %indvars.iv.next.i.i, %bb.am ] ; 3 uses
  %exitcond.not.i.i90 = icmp eq i64 %indvars.iv.i.i, %i.mc
  br i1 %exitcond.not.i.i90, label %bb.an, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

end_hunk_1
