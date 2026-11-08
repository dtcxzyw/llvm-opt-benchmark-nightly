Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gtest-all?download=true
inline.NumInlined: 9435
inline.NumDeleted: 2438
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7testing9TestSuite3RunEv:bb.a
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !284
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit22:       ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit", %bb.s, %bb.u
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 640 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !347 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.w, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !87
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

bb.w:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %i.bj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bj, align 8, !tbaa !87
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !347
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

_ZN7testing8UnitTest16UponLeavingGTestEv.exit:    ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i, %bb.w
  %i.bk = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.w ], [ %.pre.i, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bl = phi ptr [ %i.bj, %bb.w ], [ %i.bh, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bl), !inline_history !474
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.222)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !322 ; 3 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !324 ; 14 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 112               ; 8 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %wide.trip.count.i = and i64 %i.bv, 2147483647  ; 2 uses
  br label %.lr.ph.i

bb.x:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !19

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.bv
  br i1 %exitcond.not.i, label %bb.y, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.y:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.bv, i64 noundef %i.bv) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.by = getelementptr inbounds nuw [112 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !321
  %i.ca = add i32 %i.bz, -1
  %spec.select.i.i = icmp ult i32 %i.ca, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.x

bb.z:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.z
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.bv
  br i1 %exitcond.not.i.i, label %bb.aa, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.bv, i64 noundef %i.bv) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw [112 x i8], ptr %i.br, i64 %indvars.iv.i.i
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !321
  %i.cd = add i32 %i.cc, -1
  %spec.select.i.i.i = icmp ult i32 %i.cd, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.z

.loopexit.i:                                      ; preds = %bb.z, %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %.not7.i.i = icmp eq ptr %i.br, %i.bq
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.ce = add i64 %i.bs, -112
  %i.cf = sub i64 %i.ce, %i.bt                    ; 2 uses
  %i.cg = udiv i64 %i.cf, 112
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.ch, 576460752303423480      ; 3 uses
  %i.ci = mul i64 %n.vec, 112
  %i.cj = getelementptr i8, ptr %i.br, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi110 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %i.ck = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.ck
  %i.cl = getelementptr i8, ptr %i.br, i64 %i.ck
  %next.gep111 = getelementptr i8, ptr %i.cl, i64 112
  %i.cm = getelementptr i8, ptr %i.br, i64 %i.ck
  %next.gep112 = getelementptr i8, ptr %i.cm, i64 224
  %i.cn = getelementptr i8, ptr %i.br, i64 %i.ck
  %next.gep113 = getelementptr i8, ptr %i.cn, i64 336
  %i.co = getelementptr i8, ptr %i.br, i64 %i.ck
  %next.gep114 = getelementptr i8, ptr %i.co, i64 448
  %i.cp = getelementptr i8, ptr %i.br, i64 %i.ck
  %next.gep115 = getelementptr i8, ptr %i.cp, i64 560
  %i.cq = getelementptr i8, ptr %i.br, i64 %i.ck
  %next.gep116 = getelementptr i8, ptr %i.cq, i64 672
  %i.cr = getelementptr i8, ptr %i.br, i64 %i.ck
  %next.gep117 = getelementptr i8, ptr %i.cr, i64 784
  %i.cs = load i32, ptr %next.gep, align 8, !tbaa !321
  %i.ct = load i32, ptr %next.gep111, align 8, !tbaa !321
  %i.cu = load i32, ptr %next.gep112, align 8, !tbaa !321
  %i.cv = load i32, ptr %next.gep113, align 8, !tbaa !321
  %i.cw = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.ct, i64 1
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 2
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 3
  %i.da = load i32, ptr %next.gep114, align 8, !tbaa !321
  %i.db = load i32, ptr %next.gep115, align 8, !tbaa !321
  %i.dc = load i32, ptr %next.gep116, align 8, !tbaa !321
  %i.dd = load i32, ptr %next.gep117, align 8, !tbaa !321
  %i.de = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %i.df = insertelement <4 x i32> %i.de, i32 %i.db, i64 1
  %i.dg = insertelement <4 x i32> %i.df, i32 %i.dc, i64 2
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.dd, i64 3
  %i.di = icmp eq <4 x i32> %i.cz, splat (i32 3)
  %i.dj = icmp eq <4 x i32> %i.dh, splat (i32 3)
  %i.dk = zext <4 x i1> %i.di to <4 x i32>
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = add <4 x i32> %vec.phi, %i.dk           ; 2 uses
  %i.dn = add <4 x i32> %vec.phi110, %i.dl        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1254

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dn, %i.dm
  %i.dp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader126

.lr.ph.i1.i.preheader126:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.dp, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.br, %.lr.ph.i1.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader126, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i23, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader126 ]
  %.sroa.04.08.i.i = phi ptr [ %i.dt, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader126 ] ; 2 uses
  %i.dq = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !321
  %i.dr = icmp eq i32 %i.dq, 3
  %i.ds = zext i1 %i.dr to i32
  %spec.select.i.i23 = add nuw nsw i32 %.09.i.i, %i.ds ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dt, %i.bq
  br i1 %.not.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !1255

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dp, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.du = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.dv = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.du, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.dw = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #55
  %i.dx = sdiv i64 %i.dw, 1000000
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !483
  %i.dz = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.ea = load ptr, ptr %i.w, align 8, !tbaa !400
  %i.eb = load ptr, ptr %i.u, align 8, !tbaa !401 ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = lshr exact i64 %i.ee, 3
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit41.thread
  %indvars.iv76 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next77, %_ZNK7testing10TestResult6FailedEv.exit41.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit41.thread ] ; 6 uses
  %i.ek = phi ptr [ %i.eb, %.lr.ph ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit41.thread ]
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !481
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !478 ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = shl i64 %i.ep, 30
  %i.er = ashr i64 %i.eq, 32
  %.not.i.i24 = icmp slt i64 %indvars.iv, %i.er
  tail call void @llvm.assume(i1 %.not.i.i24)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv
  %i.et = load i32, ptr %i.es, align 4, !tbaa !97 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !392 ; 2 uses
  br i1 %i.dv, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.ab
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ex)
  br label %bb.ac

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26: ; preds = %bb.ab
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ex)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.ey = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.ez = trunc nuw i8 %i.ey to i1
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !401 ; 5 uses
  br i1 %i.ez, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, label %_ZNK7testing10TestResult6FailedEv.exit41.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29: ; preds = %bb.ac
  %i.fa = load ptr, ptr %i.ej, align 8, !tbaa !481
  %i.fb = load ptr, ptr %i.ei, align 8, !tbaa !478 ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = shl i64 %i.fe, 30
  %i.fg = ashr i64 %i.ff, 32
  %.not.i.i28 = icmp slt i64 %indvars.iv, %i.fg
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !97 ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, -1
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = zext nneg i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !392 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 200
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 208
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !322
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !324 ; 2 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = sdiv exact i64 %i.ft, 112               ; 5 uses
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.preheader.i32, label %_ZNK7testing10TestResult6FailedEv.exit41.thread

.lr.ph.preheader.i32:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29
  %wide.trip.count.i33 = and i64 %i.fu, 2147483647
  br label %.lr.ph.i34

bb.ad:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond16.not.i40 = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i33
  br i1 %exitcond16.not.i40, label %_ZNK7testing10TestResult6FailedEv.exit41.thread, label %.lr.ph.i34, !llvm.loop !19

.lr.ph.i34:                                       ; preds = %bb.ad, %.lr.ph.preheader.i32
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.preheader.i32 ], [ %indvars.iv.next.i39, %bb.ad ] ; 3 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.i35, %i.fu
  br i1 %exitcond.not.i36, label %bb.ae, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37

bb.ae:                                            ; preds = %.lr.ph.i34
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.fu, i64 noundef %i.fu) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37: ; preds = %.lr.ph.i34
  %i.fx = getelementptr inbounds nuw [112 x i8], ptr %i.fq, i64 %indvars.iv.i35
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !321
  %i.fz = add i32 %i.fy, -1
  %spec.select.i.i38 = icmp ult i32 %i.fz, 2
  br i1 %spec.select.i.i38, label %_ZNK7testing10TestResult6FailedEv.exit41.preheader, label %bb.ad

_ZNK7testing10TestResult6FailedEv.exit41.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37
  %i.ga = trunc nuw nsw i64 %indvars.iv to i32
  %.068 = add nuw nsw i32 %i.ga, 1
  %i.gb = load ptr, ptr %i.w, align 8, !tbaa !400
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %.pre to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = lshr exact i64 %i.ge, 3
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = icmp slt i32 %.068, %i.gg
  br i1 %i.gh, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43: ; preds = %_ZNK7testing10TestResult6FailedEv.exit41.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43 ], [ %indvars.iv76, %_ZNK7testing10TestResult6FailedEv.exit41.preheader ] ; 3 uses
  %i.gi = phi ptr [ %i.gx, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43 ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit41.preheader ]
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !481
  %i.gk = load ptr, ptr %i.ei, align 8, !tbaa !478 ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = shl i64 %i.gn, 30
  %i.gp = ashr i64 %i.go, 32
  %.not.i.i42 = icmp slt i64 %indvars.iv80, %i.gp
  tail call void @llvm.assume(i1 %.not.i.i42)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv80
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !97 ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, -1
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = zext nneg i32 %i.gr to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !392
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gv)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.gw = load ptr, ptr %i.w, align 8, !tbaa !400
  %i.gx = load ptr, ptr %i.u, align 8, !tbaa !401 ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = lshr exact i64 %i.ha, 3
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = trunc nuw i64 %indvars.iv.next81 to i32
  %i.he = icmp slt i32 %i.hd, %i.hc
  br i1 %i.he, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, label %.loopexit, !llvm.loop !1256

_ZNK7testing10TestResult6FailedEv.exit41.thread:  ; preds = %bb.ad, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hf = load ptr, ptr %i.w, align 8, !tbaa !400
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %.pre to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = shl i64 %i.hi, 29
  %i.hk = ashr i64 %i.hj, 32
  %i.hl = icmp slt i64 %indvars.iv.next, %i.hk
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br i1 %i.hl, label %bb.ab, label %.loopexit, !llvm.loop !1257

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit41.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit41.preheader
  %i.hm = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.hn = sub nsw i64 %i.hm, %i.dz
  %i.ho = sdiv i64 %i.hn, 1000000
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !484
  %i.hq = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.af, label %_ZN7testing8UnitTest11GetInstanceEv.exit46, !prof !98

bb.af:                                            ; preds = %.loopexit
  %i.hs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !284
  %.not.i45 = icmp eq i32 %i.hs, 0
  br i1 %.not.i45, label %_ZN7testing8UnitTest11GetInstanceEv.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ah unwind label %bb.ai, !inline_history !284

bb.ah:                                            ; preds = %bb.ag
  %i.ht = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !284 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !284
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit46

bb.ai:                                            ; preds = %bb.ag
  %i.hu = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !284
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit46:       ; preds = %.loopexit, %bb.af, %bb.ah
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 640 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !347 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.aj, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %.pre.i48 = load ptr, ptr %i.hx, align 8, !tbaa !87
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

bb.aj:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %i.hz = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hz, align 8, !tbaa !87
  store ptr %i.hz, ptr %i.hw, align 8, !tbaa !347
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

_ZN7testing8UnitTest16UponLeavingGTestEv.exit49:  ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47, %bb.aj
  %i.ia = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.aj ], [ %.pre.i48, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.ib = phi ptr [ %i.hz, %bb.aj ], [ %i.hx, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  tail call void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ib), !inline_history !474
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.223)
  %i.ie = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %i.ig = load ptr, ptr %i.if, align 8
  tail call void %i.ig(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.ih = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 104
  %i.ij = load ptr, ptr %i.ii, align 8
  tail call void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.ik = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %bb.ak, label %_ZN7testing8UnitTest11GetInstanceEv.exit51, !prof !98

bb.ak:                                            ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49
  %i.im = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !284
  %.not.i50 = icmp eq i32 %i.im, 0
  br i1 %.not.i50, label %_ZN7testing8UnitTest11GetInstanceEv.exit51, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.am unwind label %bb.an, !inline_history !284

bb.am:                                            ; preds = %bb.al
  %i.in = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !284 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !284
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit51

bb.an:                                            ; preds = %bb.al
  %i.io = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !284
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit51:       ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49, %bb.ak, %bb.am
  tail call void @_ZN7testing8internal9MutexBase4lockEv(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 8))
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 472
  store ptr null, ptr %i.iq, align 8, !tbaa !372
  invoke void @_ZN7testing8internal9MutexBase6unlockEv(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 8))
          to label %_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE.exit52 unwind label %bb.ao

bb.ao:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit51
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  tail call void @__clang_call_terminate(ptr %i.is) #61
  unreachable

_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE.exit52: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit51, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN7testing8internal9MutexBase4lockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store ptr %1, ptr %i.d, align 8, !tbaa !372
  invoke void @_ZN7testing8internal9MutexBase6unlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #61
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !1 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.h = load i8, ptr %i.g, align 8, !tbaa !467, !range !70, !noundef !71
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !71
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1258

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.ad
  %i.ir = load ptr, ptr %i.gc, align 8, !tbaa !511
  %i.is = load ptr, ptr %i.fy, align 8, !tbaa !87
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %i.ir)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.iv = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.iv, label %bb.af, label %bb.av

bb.af:                                            ; preds = %bb.ae
  %i.iw = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ix = icmp eq i8 %i.iw, 0
  br i1 %i.ix, label %bb.ag, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.ag:                                            ; preds = %bb.af
  %i.iy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  %.not.i.i138 = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i138, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ai unwind label %bb.aj, !inline_history !1

bb.ai:                                            ; preds = %bb.ah
  %i.iz = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !1 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.ja, %bb.aj ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ]
  resume { ptr, i32 } %common.resume.op

bb.aj:                                            ; preds = %bb.ah
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.af, %bb.ag, %bb.ai
  %i.jb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 480
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !203 ; 2 uses
  %.not.i139 = icmp eq ptr %i.jd, null
  br i1 %.not.i139, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.al:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 472
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !372 ; 2 uses
  %.not4.i = icmp eq ptr %i.jg, null
  br i1 %.not4.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.an:                                            ; preds = %bb.al
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.ak, %bb.am, %bb.an
  %.0.i = phi ptr [ %i.je, %bb.ak ], [ %i.jh, %bb.am ], [ %i.ji, %bb.an ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !322 ; 2 uses
  %i.jm = load ptr, ptr %i.jj, align 8, !tbaa !324 ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = sdiv exact i64 %i.jp, 112               ; 2 uses
  %i.jr = trunc i64 %i.jq to i32
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.au, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.jt = load ptr, ptr @stdout, align 8, !tbaa !208
  %i.ju = call i32 @fflush(ptr noundef %i.jt)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.au
  %i.jv = phi ptr [ %i.ks, %bb.au ], [ %i.jm, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.jw = phi ptr [ %i.kt, %bb.au ], [ %i.jl, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %bb.au ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.jx = phi i64 [ %i.kx, %bb.au ], [ %i.jq, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.jx, %indvars.iv267
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %indvars.iv267, i64 noundef %i.jx) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.jy = getelementptr inbounds nuw [112 x i8], ptr %i.jv, i64 %indvars.iv267 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !321
  %i.ka = icmp eq i32 %i.jz, 3
  br i1 %i.ka, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 80
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !78 ; 4 uses
  store ptr %i.gt, ptr %5, align 8, !tbaa !75
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %.noexc143, label %bb.aq

.noexc143:                                        ; preds = %bb.ap
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.529) #57
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ke = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kc) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.ke, ptr %i.a, align 8, !tbaa !80
  %i.kf = icmp ugt i64 %i.ke, 15
  br i1 %i.kf, label %.noexc.i142, label %._crit_edge.i.i141

.noexc.i142:                                      ; preds = %bb.aq
  %i.kg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.kg, ptr %5, align 8, !tbaa !78
  %i.kh = load i64, ptr %i.a, align 8, !tbaa !80
  store i64 %i.kh, ptr %i.gt, align 8, !tbaa !81
  br label %._crit_edge.i.i141

._crit_edge.i.i141:                               ; preds = %.noexc.i142, %bb.aq
  %i.ki = phi ptr [ %i.kg, %.noexc.i142 ], [ %i.gt, %bb.aq ] ; 2 uses
  switch i64 %i.ke, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i141
  %i.kj = load i8, ptr %i.kc, align 1, !tbaa !81
  store i8 %i.kj, ptr %i.ki, align 1, !tbaa !81
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i141
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ki, ptr nonnull align 1 %i.kc, i64 %i.ke, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i141
  %i.kk = load i64, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  store i64 %i.kk, ptr %i.gu, align 8, !tbaa !79
  %i.kl = load ptr, ptr %5, align 8, !tbaa !78
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
  store i8 0, ptr %i.km, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.kn = load ptr, ptr %5, align 8, !tbaa !78
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.kn) ; 0 uses
  %i.ko = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.gt
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.at
  %i.kq = load i64, ptr %i.gt, align 8, !tbaa !81
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %.pre = load ptr, ptr %i.jk, align 8, !tbaa !322
  %.pre270 = load ptr, ptr %i.jj, align 8, !tbaa !324
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.ks = phi ptr [ %.pre270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.jv, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.kt = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.jw, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = sdiv exact i64 %i.kw, 112               ; 2 uses
  %i.ky = shl i64 %i.kx, 32
  %i.kz = ashr exact i64 %i.ky, 32
  %i.la = icmp slt i64 %indvars.iv.next268, %i.kz
  br i1 %i.la, label %.lr.ph, label %._crit_edge, !llvm.loop !1644

bb.av:                                            ; preds = %bb.ae
  %i.lb = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.lb, label %bb.ax, label %.preheader221

.preheader221:                                    ; preds = %bb.av
  %i.lc = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.ld = load ptr, ptr %i.j, align 8, !tbaa !390 ; 2 uses
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = lshr exact i64 %i.lg, 3
  %i.li = trunc i64 %i.lh to i32
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader221, %bb.aw
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %bb.aw ], [ 1, %.preheader221 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aw ], [ 0, %.preheader221 ] ; 6 uses
  %i.lk = phi ptr [ %i.nw, %bb.aw ], [ %i.ld, %.preheader221 ]
  %i.ll = load ptr, ptr %i.gs, align 8, !tbaa !481
  %i.lm = load ptr, ptr %i.gp, align 8, !tbaa !478 ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = shl i64 %i.lp, 30
  %i.lr = ashr i64 %i.lq, 32
  %.not.i.i149 = icmp slt i64 %indvars.iv, %i.lr
  call void @llvm.assume(i1 %.not.i.i149)
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !97 ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, -1
  call void @llvm.assume(i1 %i.lu)
  %i.lv = zext nneg i32 %i.lt to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.lv
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !375
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.lx)
  %i.ly = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i151, label %bb.aw

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i151: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.ma = load ptr, ptr %i.gs, align 8, !tbaa !481
  %i.mb = load ptr, ptr %i.gp, align 8, !tbaa !478 ; 2 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = shl i64 %i.me, 30
  %i.mg = ashr i64 %i.mf, 32
  %.not.i.i150 = icmp slt i64 %indvars.iv, %i.mg
  call void @llvm.assume(i1 %.not.i.i150)
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !97 ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, -1
  call void @llvm.assume(i1 %i.mj)
  %i.mk = zext nneg i32 %i.mi to i64
  %i.ml = load ptr, ptr %i.j, align 8, !tbaa !390
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !375
  %i.mo = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.mn)
  br i1 %i.mo, label %.preheader219, label %bb.aw

.preheader219:                                    ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i151
  %i.mp = trunc nuw nsw i64 %indvars.iv to i32
  %.063238 = add nuw nsw i32 %i.mp, 1
  %i.mq = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.mr = load ptr, ptr %i.j, align 8, !tbaa !390 ; 2 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = lshr exact i64 %i.mu, 3
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = icmp slt i32 %.063238, %i.mw
  br i1 %i.mx, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i154, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i154: ; preds = %.preheader219, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i154
  %indvars.iv261.a = phi i64 [ %indvars.iv.next262.a, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i154 ], [ %indvars.iv258, %.preheader219 ] ; 3 uses
  %i.my = phi ptr [ %i.nn, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i154 ], [ %i.mr, %.preheader219 ]
  %i.mz = load ptr, ptr %i.gs, align 8, !tbaa !481
  %i.na = load ptr, ptr %i.gp, align 8, !tbaa !478 ; 2 uses
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = sub i64 %i.nb, %i.nc
  %i.ne = shl i64 %i.nd, 30
  %i.nf = ashr i64 %i.ne, 32
  %.not.i.i153 = icmp slt i64 %indvars.iv261.a, %i.nf
  call void @llvm.assume(i1 %.not.i.i153)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv261.a
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !97 ; 2 uses
  %i.ni = icmp sgt i32 %i.nh, -1
  call void @llvm.assume(i1 %i.ni)
  %i.nj = zext nneg i32 %i.nh to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.nj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !375
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.nl)
  %indvars.iv.next262.a = add nuw nsw i64 %indvars.iv261.a, 1 ; 2 uses
  %i.nm = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.nn = load ptr, ptr %i.j, align 8, !tbaa !390 ; 2 uses
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = lshr exact i64 %i.nq, 3
  %i.ns = trunc i64 %i.nr to i32
  %i.nt = trunc nuw i64 %indvars.iv.next262.a to i32
  %i.nu = icmp slt i32 %i.nt, %i.ns
  br i1 %i.nu, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i154, label %.loopexit, !llvm.loop !1645

bb.aw:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i151
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nv = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.nw = load ptr, ptr %i.j, align 8, !tbaa !390 ; 2 uses
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = shl i64 %i.nz, 29
  %i.ob = ashr i64 %i.oa, 32
  %i.oc = icmp slt i64 %indvars.iv.next, %i.ob
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1
  br i1 %i.oc, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1646

bb.ax:                                            ; preds = %bb.av
  %i.od = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.od, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ax
  %i.oe = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.of = load ptr, ptr %i.j, align 8, !tbaa !390 ; 2 uses
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = lshr exact i64 %i.oi, 3
  %i.ok = trunc i64 %i.oj to i32
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i157, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i157: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i157
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i157 ], [ 0, %.preheader ] ; 3 uses
  %i.om = phi ptr [ %i.pb, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i157 ], [ %i.of, %.preheader ]
  %i.on = load ptr, ptr %i.gs, align 8, !tbaa !481
  %i.oo = load ptr, ptr %i.gp, align 8, !tbaa !478 ; 2 uses
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = sub i64 %i.op, %i.oq
  %i.os = shl i64 %i.or, 30
  %i.ot = ashr i64 %i.os, 32
  %.not.i.i156 = icmp slt i64 %indvars.iv264, %i.ot
  call void @llvm.assume(i1 %.not.i.i156)
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv264
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !97 ; 2 uses
  %i.ow = icmp sgt i32 %i.ov, -1
  call void @llvm.assume(i1 %i.ow)
  %i.ox = zext nneg i32 %i.ov to i64
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.ox
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !375
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.oz)
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.pa = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.pb = load ptr, ptr %i.j, align 8, !tbaa !390 ; 2 uses
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = shl i64 %i.pe, 29
  %i.pg = ashr i64 %i.pf, 32
  %i.ph = icmp slt i64 %indvars.iv.next265, %i.pg
  br i1 %i.ph, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i157, label %.loopexit, !llvm.loop !1647

.loopexit:                                        ; preds = %bb.aw, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i154, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i157, %.preheader221, %.preheader219, %.preheader, %bb.ax, %._crit_edge
  %i.pi = icmp eq i32 %.066243, %i.gv
  %or.cond7 = select i1 %i.pi, i1 true, i1 %i.gm
  br i1 %or.cond7, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.loopexit
  %i.pj = load ptr, ptr %i.gc, align 8, !tbaa !511
  %i.pk = load ptr, ptr %i.fy, align 8, !tbaa !87
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 112
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %i.pj)
  %i.pn = load ptr, ptr %i.gr, align 8, !tbaa !513, !noalias !1664 ; 2 uses
  %i.po = load ptr, ptr %i.gq, align 8, !tbaa !513, !noalias !1665 ; 2 uses
  %.not4.i159 = icmp eq ptr %i.pn, %i.po
  br i1 %.not4.i159, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.ay, %.lr.ph.i160
  %.sroa.0209.0 = phi ptr [ %i.pp, %.lr.ph.i160 ], [ %i.pn, %bb.ay ]
  %i.pp = getelementptr inbounds i8, ptr %.sroa.0209.0, i64 -8 ; 3 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !509 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !87
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(8) %i.pq), !inline_history !1652
  %.not.i161 = icmp eq ptr %i.pp, %i.po
  br i1 %.not.i161, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i160, !llvm.loop !1653

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i160, %bb.ay
  %i.pu = load ptr, ptr %i.gc, align 8, !tbaa !511
  %i.pv = load ptr, ptr %i.fy, align 8, !tbaa !87
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 120
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %i.pu)
  br label %bb.ba

bb.az:                                            ; preds = %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.py = load i8, ptr @_ZN7testing36FLAGS_gtest_fail_if_no_test_selectedE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %.thread217, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %.loopexit
  %i.qa = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.qb = sub nsw i64 %i.qa, %i.gz
  %i.qc = sdiv i64 %i.qb, 1000000
  store i64 %i.qc, ptr %i.gw, align 8, !tbaa !486
  %i.qd = load ptr, ptr %i.gc, align 8, !tbaa !511
  %i.qe = load ptr, ptr %i.fy, align 8, !tbaa !87
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 128
  %i.qg = load ptr, ptr %i.qf, align 8
  call void %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %i.qd, i32 noundef %.066243)
  %i.qh = load ptr, ptr %i.j, align 8, !tbaa !374 ; 3 uses
  %i.qi = load ptr, ptr %i.k, align 8, !tbaa !374 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.qh, %i.qi
  br i1 %.not7.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %i.qj = phi ptr [ %i.qq, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.qi, %bb.ba ]
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ 0, %bb.ba ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.qs, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.qh, %bb.ba ] ; 2 uses
  %i.qk = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !375 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 112
  %i.qm = load i8, ptr %i.ql, align 8, !tbaa !388, !range !70, !noundef !71
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.bb, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qo = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.qk)
  %i.qp = zext i1 %i.qo to i32
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !374
  br label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i
  %i.qq = phi ptr [ %i.qj, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i, %bb.bb ] ; 4 uses
  %i.qr = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.qp, %bb.bb ]
  %spec.select.i.i.i.i = add nuw nsw i32 %i.qr, %.09.i.i.i.i ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qs, %i.qq
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i: ; preds = %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %.not.i.i162 = icmp eq i32 %spec.select.i.i.i.i, 0
  br i1 %.not.i.i162, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i: ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i, %bb.ba
  %i.qt = phi ptr [ %i.qq, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %i.qh, %bb.ba ] ; 3 uses
  %i.qu = load ptr, ptr %i.gy, align 8, !tbaa !322
  %i.qv = load ptr, ptr %i.gx, align 8, !tbaa !324 ; 2 uses
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = sdiv exact i64 %i.qy, 112               ; 5 uses
  %i.ra = trunc i64 %i.qz to i32
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph.preheader.i.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i
  %wide.trip.count.i.i.i = and i64 %i.qz, 2147483647
  br label %.lr.ph.i.i.i

bb.bc:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit, label %.lr.ph.i.i.i, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bc ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.qz
  br i1 %exitcond.not.i.i.i, label %bb.bd, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.qz, i64 noundef %i.qz) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.rc = getelementptr inbounds nuw [112 x i8], ptr %i.qv, i64 %indvars.iv.i.i.i
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !321
  %i.re = add i32 %i.rd, -3
  %spec.select.i.i1.i.i = icmp ult i32 %i.re, -2
  br i1 %spec.select.i.i1.i.i, label %bb.bc, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

_ZNK7testing8internal12UnitTestImpl6PassedEv.exit: ; preds = %bb.bc, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i
  %i.rf = phi ptr [ %i.qt, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i ], [ %i.qq, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %i.qt, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ %i.qt, %bb.bc ] ; 2 uses
  %i.rg = phi i1 [ %.067242, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i ], [ true, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %.067242, %bb.bc ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ] ; 2 uses
  %i.rh = load ptr, ptr %i.j, align 8, !tbaa !390 ; 3 uses
  %.not.i163 = icmp eq ptr %i.rf, %i.rh
  br i1 %.not.i163, label %_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit
  %i.ri = ptrtoint ptr %i.rf to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = ashr exact i64 %i.rk, 3
  %i.rm = load ptr, ptr %i.gp, align 8, !tbaa !478
  br label %bb.be

bb.be:                                            ; preds = %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, %.lr.ph.i164
  %.05.i = phi i64 [ 0, %.lr.ph.i164 ], [ %i.sf, %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i ] ; 4 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %.05.i
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !375 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 72
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 80
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !481 ; 2 uses
  %i.rs = load ptr, ptr %i.rp, align 8, !tbaa !478 ; 4 uses
  %.not.i.i165 = icmp eq ptr %i.rr, %i.rs
  br i1 %.not.i.i165, label %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.be
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = ashr exact i64 %i.rv, 2                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.rw, 8
end_hunk_1
