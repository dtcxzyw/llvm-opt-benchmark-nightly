Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/gtest-all?download=true
inline.NumInlined: 8188
inline.NumDeleted: 2579
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7testing9TestSuite3RunEv:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #48
  %i.bc = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, !prof !98

bb.n:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.be = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.bf = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit, %bb.n, %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !460 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bh, null
  br i1 %.not.i50, label %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit
  tail call void %i.bh() #48, !inline_history !1319
  br label %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit

_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit:  ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !333 ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !335 ; 14 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 112               ; 8 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit
  %wide.trip.count.i = and i64 %i.bp, 2147483647  ; 2 uses
  br label %.lr.ph.i

bb.q:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !23

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.bp
  br i1 %exitcond.not.i, label %bb.r, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %i.bp, i64 noundef %i.bp) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !332
  %i.bu = add i32 %i.bt, -1
  %spec.select.i.i = icmp ult i32 %i.bu, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.q

bb.s:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.s
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.bp
  br i1 %exitcond.not.i.i, label %bb.t, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %i.bp, i64 noundef %i.bp) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !332
  %i.bx = add i32 %i.bw, -1
  %spec.select.i.i.i = icmp ult i32 %i.bx, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.s

.loopexit.i:                                      ; preds = %bb.s, %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit
  %.not7.i.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.by = add i64 %i.bm, -112
  %i.bz = sub i64 %i.by, %i.bn                    ; 2 uses
  %i.ca = udiv i64 %i.bz, 112
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader129, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.cb, 576460752303423480      ; 3 uses
  %i.cc = mul i64 %n.vec, 112
  %i.cd = getelementptr i8, ptr %i.bl, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi113 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.ce = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.ce
  %i.cf = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep114 = getelementptr i8, ptr %i.cf, i64 112
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep115 = getelementptr i8, ptr %i.cg, i64 224
  %i.ch = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep116 = getelementptr i8, ptr %i.ch, i64 336
  %i.ci = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep117 = getelementptr i8, ptr %i.ci, i64 448
  %i.cj = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep118 = getelementptr i8, ptr %i.cj, i64 560
  %i.ck = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep119 = getelementptr i8, ptr %i.ck, i64 672
  %i.cl = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep120 = getelementptr i8, ptr %i.cl, i64 784
  %i.cm = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.cn = load i32, ptr %next.gep114, align 8, !tbaa !332
  %i.co = load i32, ptr %next.gep115, align 8, !tbaa !332
  %i.cp = load i32, ptr %next.gep116, align 8, !tbaa !332
  %i.cq = insertelement <4 x i32> poison, i32 %i.cm, i64 0
  %i.cr = insertelement <4 x i32> %i.cq, i32 %i.cn, i64 1
  %i.cs = insertelement <4 x i32> %i.cr, i32 %i.co, i64 2
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cp, i64 3
  %i.cu = load i32, ptr %next.gep117, align 8, !tbaa !332
  %i.cv = load i32, ptr %next.gep118, align 8, !tbaa !332
  %i.cw = load i32, ptr %next.gep119, align 8, !tbaa !332
  %i.cx = load i32, ptr %next.gep120, align 8, !tbaa !332
  %i.cy = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 1
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 2
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 3
  %i.dc = icmp eq <4 x i32> %i.ct, splat (i32 3)
  %i.dd = icmp eq <4 x i32> %i.db, splat (i32 3)
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = add <4 x i32> %vec.phi, %i.de           ; 2 uses
  %i.dh = add <4 x i32> %vec.phi113, %i.df        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1320

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dh, %i.dg
  %i.dj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader129

.lr.ph.i1.i.preheader129:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.dj, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i1.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader129, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i23, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader129 ]
  %.sroa.04.08.i.i = phi ptr [ %i.dn, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader129 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !332
  %i.dl = icmp eq i32 %i.dk, 3
  %i.dm = zext i1 %i.dl to i32
  %spec.select.i.i23 = add nuw nsw i32 %.09.i.i, %i.dm ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.dn, %i.bk
  br i1 %.not.i.i24, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !1321

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dj, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.do = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.dp = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.do, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.dq = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #48
  %i.dr = sdiv i64 %i.dq, 1000000
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !467
  %i.dt = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.du = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !414 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = lshr exact i64 %i.dy, 3
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit42.thread
  %indvars.iv75 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next76, %_ZNK7testing10TestResult6FailedEv.exit42.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit42.thread ] ; 6 uses
  %i.ee = phi ptr [ %i.dv, %.lr.ph ], [ %.pre82, %_ZNK7testing10TestResult6FailedEv.exit42.thread ]
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !465
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !462 ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = shl i64 %i.ej, 30
  %i.el = ashr i64 %i.ek, 32
  %.not.i.i25 = icmp slt i64 %indvars.iv, %i.el
  tail call void @llvm.assume(i1 %.not.i.i25)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.en = load i32, ptr %i.em, align 4, !tbaa !97 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !407 ; 2 uses
  br i1 %i.dp, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.u
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.er)
  br label %bb.v

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27: ; preds = %bb.u
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.er)
  br label %bb.v

bb.v:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.es = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.et = trunc nuw i8 %i.es to i1
  %.pre82 = load ptr, ptr %i.q, align 8, !tbaa !414 ; 5 uses
  br i1 %i.et, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30, label %_ZNK7testing10TestResult6FailedEv.exit42.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30: ; preds = %bb.v
  %i.eu = load ptr, ptr %i.ed, align 8, !tbaa !465
  %i.ev = load ptr, ptr %i.ec, align 8, !tbaa !462 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = shl i64 %i.ey, 30
  %i.fa = ashr i64 %i.ez, 32
  %.not.i.i29 = icmp slt i64 %indvars.iv, %i.fa
  tail call void @llvm.assume(i1 %.not.i.i29)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !97 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = zext nneg i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.pre82, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !407 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 200
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !333
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !335 ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 112               ; 5 uses
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph.preheader.i33, label %_ZNK7testing10TestResult6FailedEv.exit42.thread

.lr.ph.preheader.i33:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30
  %wide.trip.count.i34 = and i64 %i.fo, 2147483647
  br label %.lr.ph.i35

bb.w:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond16.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i34
  br i1 %exitcond16.not.i41, label %_ZNK7testing10TestResult6FailedEv.exit42.thread, label %.lr.ph.i35, !llvm.loop !23

.lr.ph.i35:                                       ; preds = %bb.w, %.lr.ph.preheader.i33
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.preheader.i33 ], [ %indvars.iv.next.i40, %bb.w ] ; 3 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.i36, %i.fo
  br i1 %exitcond.not.i37, label %bb.x, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38

bb.x:                                             ; preds = %.lr.ph.i35
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %i.fo, i64 noundef %i.fo) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38: ; preds = %.lr.ph.i35
  %i.fr = getelementptr inbounds nuw [112 x i8], ptr %i.fk, i64 %indvars.iv.i36
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !332
  %i.ft = add i32 %i.fs, -1
  %spec.select.i.i39 = icmp ult i32 %i.ft, 2
  br i1 %spec.select.i.i39, label %_ZNK7testing10TestResult6FailedEv.exit42.preheader, label %bb.w

_ZNK7testing10TestResult6FailedEv.exit42.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38
  %i.fu = trunc nuw nsw i64 %indvars.iv to i32
  %.067 = add nuw nsw i32 %i.fu, 1
  %i.fv = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %.pre82 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = lshr exact i64 %i.fy, 3
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = icmp slt i32 %.067, %i.ga
  br i1 %i.gb, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44: ; preds = %_ZNK7testing10TestResult6FailedEv.exit42.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44 ], [ %indvars.iv75, %_ZNK7testing10TestResult6FailedEv.exit42.preheader ] ; 3 uses
  %i.gc = phi ptr [ %i.gr, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44 ], [ %.pre82, %_ZNK7testing10TestResult6FailedEv.exit42.preheader ]
  %i.gd = load ptr, ptr %i.ed, align 8, !tbaa !465
  %i.ge = load ptr, ptr %i.ec, align 8, !tbaa !462 ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = shl i64 %i.gh, 30
  %i.gj = ashr i64 %i.gi, 32
  %.not.i.i43 = icmp slt i64 %indvars.iv79, %i.gj
  tail call void @llvm.assume(i1 %.not.i.i43)
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv79
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !97 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = zext nneg i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !407
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gp)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.gq = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !414 ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = lshr exact i64 %i.gu, 3
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = trunc nuw i64 %indvars.iv.next80 to i32
  %i.gy = icmp slt i32 %i.gx, %i.gw
  br i1 %i.gy, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, label %.loopexit, !llvm.loop !1322

_ZNK7testing10TestResult6FailedEv.exit42.thread:  ; preds = %bb.w, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %.pre82 to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = shl i64 %i.hc, 29
  %i.he = ashr i64 %i.hd, 32
  %i.hf = icmp slt i64 %indvars.iv.next, %i.he
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br i1 %i.hf, label %bb.u, label %.loopexit, !llvm.loop !1323

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit42.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit42.preheader
  %i.hg = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.hh = sub nsw i64 %i.hg, %i.dt
  %i.hi = sdiv i64 %i.hh, 1000000
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !468
  %i.hk = load ptr, ptr %i.au, align 8, !tbaa !358 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.y, label %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge

.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge: ; preds = %.loopexit
  %.pre83 = load ptr, ptr %i.hk, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46

bb.y:                                             ; preds = %.loopexit
  %i.hm = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hm, align 8, !tbaa !94
  store ptr %i.hm, ptr %i.au, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46: ; preds = %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge, %bb.y
  %i.hn = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.y ], [ %.pre83, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge ]
  %i.ho = phi ptr [ %i.hm, %bb.y ], [ %i.hk, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #48
  %i.hr = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.z, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49, !prof !98

bb.z:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46
  %i.ht = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i48 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i.i48, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.hu = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46, %bb.z, %bb.aa
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !461 ; 2 uses
  %.not.i51 = icmp eq ptr %i.hw, null
  br i1 %.not.i51, label %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49
  tail call void %i.hw() #48, !inline_history !1324
  br label %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit

_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit: ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49, %bb.ab
  %i.hx = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8
  tail call void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.ia = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.ic = load ptr, ptr %i.ib, align 8
  tail call void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  store ptr null, ptr %i.i, align 8, !tbaa !387
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !403, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !387
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.m = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.e, %bb.f
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 504
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !413
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !414  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %._crit_edge

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

._crit_edge:                                      ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  store ptr null, ptr %i.i, align 8, !tbaa !387
  br label %bb.g

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ] ; 3 uses
  %i.ao = phi ptr [ %i.z, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.bd, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ]
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !465
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !462 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = shl i64 %i.at, 30
  %i.av = ashr i64 %i.au, 32
  %.not.i.i9 = icmp slt i64 %indvars.iv, %i.av
  tail call void @llvm.assume(i1 %.not.i.i9)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !97 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !407
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bb)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !413
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !414 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = shl i64 %i.bg, 29
  %i.bi = ashr i64 %i.bh, 32
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %._crit_edge, !llvm.loop !1325

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite11ClearResultEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !406  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fj = load i8, ptr %i.fc, align 1, !tbaa !82
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.ab:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr nonnull align 1 %i.fc, i64 %i.fe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.aa, %bb.ab
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  store i64 %i.fk, ptr %i.bq, align 8, !tbaa !80
  %i.fl = load ptr, ptr %3, align 8, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 0, ptr %i.fm, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.fn = load ptr, ptr %3, align 8, !tbaa !79
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.fn) ; 0 uses
  %i.fo = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bp
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.fq = load i64, ptr %i.bp, align 8, !tbaa !82
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %.pre = load ptr, ptr %i.ek, align 8, !tbaa !333
  %.pre178 = load ptr, ptr %i.ej, align 8, !tbaa !335
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.fs = phi ptr [ %.pre178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ev, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.ft = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ew, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 112               ; 2 uses
  %i.fy = shl i64 %i.fx, 32
  %i.fz = ashr exact i64 %i.fy, 32
  %i.ga = icmp slt i64 %indvars.iv.next176, %i.fz
  br i1 %i.ga, label %.lr.ph, label %._crit_edge, !llvm.loop !1759

bb.ad:                                            ; preds = %bb.n
  br i1 %i.dy, label %bb.ae, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !98

bb.ae:                                            ; preds = %bb.ad
  %i.gb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i65 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i65, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.gc = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.af, %bb.ae, %bb.ad
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 368
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !194 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i64, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.ah:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 360
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !387 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.gi, null
  br i1 %.not4.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i.i = phi ptr [ %i.gg, %bb.ag ], [ %i.gj, %bb.ai ], [ %i.gk, %bb.aj ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !433 ; 12 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !433 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.gm, %i.go
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.gp = ptrtoaddr ptr %i.go to i64
  %i.gq = ptrtoaddr ptr %i.gm to i64
  %i.gr = add i64 %i.gp, -112
  %i.gs = sub i64 %i.gr, %i.gq                    ; 2 uses
  %i.gt = udiv i64 %i.gs, 112
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check270 = icmp ult i64 %i.gs, 784
  br i1 %min.iters.check270, label %.lr.ph.i.i.i.preheader296, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec272 = and i64 %i.gu, 576460752303423480   ; 3 uses
  %i.gv = mul i64 %n.vec272, 112
  %i.gw = getelementptr i8, ptr %i.gm, i64 %i.gv
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next285, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i32> [ zeroinitializer, %vector.ph271 ], [ %i.hz, %vector.body273 ]
  %vec.phi276 = phi <4 x i32> [ zeroinitializer, %vector.ph271 ], [ %i.ia, %vector.body273 ]
  %i.gx = mul i64 %index274, 112                  ; 8 uses
  %next.gep277.a = getelementptr i8, ptr %i.gm, i64 %i.gx
  %i.gy = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep278.a = getelementptr i8, ptr %i.gy, i64 112
  %i.gz = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep279.a = getelementptr i8, ptr %i.gz, i64 224
  %i.ha = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep280 = getelementptr i8, ptr %i.ha, i64 336
  %i.hb = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep281 = getelementptr i8, ptr %i.hb, i64 448
  %i.hc = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep282 = getelementptr i8, ptr %i.hc, i64 560
  %i.hd = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep283 = getelementptr i8, ptr %i.hd, i64 672
  %i.he = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep284 = getelementptr i8, ptr %i.he, i64 784
  %i.hf = load i32, ptr %next.gep277.a, align 8, !tbaa !332
  %i.hg = load i32, ptr %next.gep278.a, align 8, !tbaa !332
  %i.hh = load i32, ptr %next.gep279.a, align 8, !tbaa !332
  %i.hi = load i32, ptr %next.gep280, align 8, !tbaa !332
  %i.hj = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 2
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 3
  %i.hn = load i32, ptr %next.gep281, align 8, !tbaa !332
  %i.ho = load i32, ptr %next.gep282, align 8, !tbaa !332
  %i.hp = load i32, ptr %next.gep283, align 8, !tbaa !332
  %i.hq = load i32, ptr %next.gep284, align 8, !tbaa !332
  %i.hr = insertelement <4 x i32> poison, i32 %i.hn, i64 0
  %i.hs = insertelement <4 x i32> %i.hr, i32 %i.ho, i64 1
  %i.ht = insertelement <4 x i32> %i.hs, i32 %i.hp, i64 2
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hq, i64 3
  %i.hv = icmp eq <4 x i32> %i.hm, splat (i32 2)
  %i.hw = icmp eq <4 x i32> %i.hu, splat (i32 2)
  %i.hx = zext <4 x i1> %i.hv to <4 x i32>
  %i.hy = zext <4 x i1> %i.hw to <4 x i32>
  %i.hz = add <4 x i32> %vec.phi275, %i.hx        ; 2 uses
  %i.ia = add <4 x i32> %vec.phi276, %i.hy        ; 2 uses
  %index.next285 = add nuw i64 %index274, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next285, %n.vec272
  br i1 %i.ib, label %middle.block286, label %vector.body273, !llvm.loop !1760

middle.block286:                                  ; preds = %vector.body273
  %bin.rdx287 = add <4 x i32> %i.ia, %i.hz
  %i.ic = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx287) ; 2 uses
  %cmp.n288 = icmp eq i64 %i.gu, %n.vec272
  br i1 %cmp.n288, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader296

.lr.ph.i.i.i.preheader296:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block286
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ic, %middle.block286 ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.gm, %.lr.ph.i.i.i.preheader ], [ %i.gw, %middle.block286 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader296, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ] ; 2 uses
  %i.id = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !332
  %i.ie = icmp eq i32 %i.id, 2
  %i.if = zext i1 %i.ie to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.if ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ig, %i.go
  br i1 %.not.i.i1.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1761

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block286
  %spec.select.i.i.i.lcssa = phi i32 [ %i.ic, %middle.block286 ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not117 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not117, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %bb.ak

_ZN7testing4Test15HasFatalFailureEv.exit.preheader: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.ih = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.ii = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = lshr exact i64 %i.il, 3
  %i.in = trunc i64 %i.im to i32
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %_ZN7testing4Test15HasFatalFailureEv.exit
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ 1, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 2 uses
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ 0, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 6 uses
  %i.ip = phi ptr [ %i.lb, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ %i.ii, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ]
  %i.iq = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.ir = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = shl i64 %i.iu, 30
  %i.iw = ashr i64 %i.iv, 32
  %.not.i.i66 = icmp slt i64 %indvars.iv166, %i.iw
  call void @llvm.assume(i1 %.not.i.i66)
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv166
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !97 ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, -1
  call void @llvm.assume(i1 %i.iz)
  %i.ja = zext nneg i32 %i.iy to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !390
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.jc)
  %i.jd = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68, label %_ZN7testing4Test15HasFatalFailureEv.exit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.jf = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.jg = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = shl i64 %i.jj, 30
  %i.jl = ashr i64 %i.jk, 32
  %.not.i.i67 = icmp slt i64 %indvars.iv166, %i.jl
  call void @llvm.assume(i1 %.not.i.i67)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv166
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !97 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, -1
  call void @llvm.assume(i1 %i.jo)
  %i.jp = zext nneg i32 %i.jn to i64
  %i.jq = load ptr, ptr %i.bk, align 8, !tbaa !405
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jp
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !390
  %i.jt = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.js)
  br i1 %i.jt, label %.preheader, label %_ZN7testing4Test15HasFatalFailureEv.exit

.preheader:                                       ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68
  %i.ju = trunc nuw nsw i64 %indvars.iv166 to i32
  %.053143 = add nuw nsw i32 %i.ju, 1
  %i.jv = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.jw = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = lshr exact i64 %i.jz, 3
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = icmp slt i32 %.053143, %i.kb
  br i1 %i.kc, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71 ], [ %indvars.iv169, %.preheader ] ; 3 uses
  %i.kd = phi ptr [ %i.ks, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71 ], [ %i.jw, %.preheader ]
  %i.ke = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.kf = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = shl i64 %i.ki, 30
  %i.kk = ashr i64 %i.kj, 32
  %.not.i.i70 = icmp slt i64 %indvars.iv172, %i.kk
  call void @llvm.assume(i1 %.not.i.i70)
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv172
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !97 ; 2 uses
  %i.kn = icmp sgt i32 %i.km, -1
  call void @llvm.assume(i1 %i.kn)
  %i.ko = zext nneg i32 %i.km to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !390
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.kq)
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.kr = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.ks = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = lshr exact i64 %i.kv, 3
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = trunc nuw i64 %indvars.iv.next173 to i32
  %i.kz = icmp slt i32 %i.ky, %i.kx
  br i1 %i.kz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, !llvm.loop !1762

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.la = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.lb = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = shl i64 %i.le, 29
  %i.lg = ashr i64 %i.lf, 32
  %i.lh = icmp slt i64 %indvars.iv.next167, %i.lg
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br i1 %i.lh, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, !llvm.loop !1763

bb.ak:                                            ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i
  %i.li = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.lj = icmp eq i8 %i.li, 0
  br i1 %i.lj, label %bb.al, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i73, !prof !98

bb.al:                                            ; preds = %bb.ak
  %i.lk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i86 = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i86, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i73, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.ll = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i73

_ZN7testing8internal15GetUnitTestImplEv.exit.i73: ; preds = %bb.am, %bb.al, %bb.ak
  %i.lm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 368
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !194 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i74, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i73
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75

bb.ao:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i73
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 360
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !387 ; 2 uses
  %.not4.i.i85 = icmp eq ptr %i.lr, null
  br i1 %.not4.i.i85, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75

bb.aq:                                            ; preds = %bb.ao
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75: ; preds = %bb.aq, %bb.ap, %bb.an
  %.0.i.i76 = phi ptr [ %i.lp, %bb.an ], [ %i.ls, %bb.ap ], [ %i.lt, %bb.aq ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 56
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !433 ; 12 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 64
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !433 ; 3 uses
  %.not7.i.i.i77 = icmp eq ptr %i.lv, %i.lx
  br i1 %.not7.i.i.i77, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, label %.lr.ph.i.i.i78.preheader

.lr.ph.i.i.i78.preheader:                         ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75
  %i.ly = ptrtoaddr ptr %i.lx to i64
  %i.lz = ptrtoaddr ptr %i.lv to i64
  %i.ma = add i64 %i.ly, -112
  %i.mb = sub i64 %i.ma, %i.lz                    ; 2 uses
  %i.mc = udiv i64 %i.mb, 112
  %i.md = add nuw nsw i64 %i.mc, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.mb, 784
  br i1 %min.iters.check252, label %.lr.ph.i.i.i78.preheader295, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph.i.i.i78.preheader
  %n.vec254 = and i64 %i.md, 576460752303423480   ; 3 uses
  %i.me = mul i64 %n.vec254, 112
  %i.mf = getelementptr i8, ptr %i.lv, i64 %i.me
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next265, %vector.body255 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph253 ], [ %i.ni, %vector.body255 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %vector.ph253 ], [ %i.nj, %vector.body255 ]
  %i.mg = mul i64 %index256, 112                  ; 8 uses
  %next.gep = getelementptr i8, ptr %i.lv, i64 %i.mg
  %i.mh = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep258.a = getelementptr i8, ptr %i.mh, i64 112
  %i.mi = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep259.a = getelementptr i8, ptr %i.mi, i64 224
  %i.mj = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep260 = getelementptr i8, ptr %i.mj, i64 336
  %i.mk = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep261 = getelementptr i8, ptr %i.mk, i64 448
  %i.ml = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep262 = getelementptr i8, ptr %i.ml, i64 560
  %i.mm = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep263 = getelementptr i8, ptr %i.mm, i64 672
  %i.mn = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep264 = getelementptr i8, ptr %i.mn, i64 784
  %i.mo = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.mp = load i32, ptr %next.gep258.a, align 8, !tbaa !332
  %i.mq = load i32, ptr %next.gep259.a, align 8, !tbaa !332
  %i.mr = load i32, ptr %next.gep260, align 8, !tbaa !332
  %i.ms = insertelement <4 x i32> poison, i32 %i.mo, i64 0
  %i.mt = insertelement <4 x i32> %i.ms, i32 %i.mp, i64 1
  %i.mu = insertelement <4 x i32> %i.mt, i32 %i.mq, i64 2
  %i.mv = insertelement <4 x i32> %i.mu, i32 %i.mr, i64 3
  %i.mw = load i32, ptr %next.gep261, align 8, !tbaa !332
  %i.mx = load i32, ptr %next.gep262, align 8, !tbaa !332
  %i.my = load i32, ptr %next.gep263, align 8, !tbaa !332
  %i.mz = load i32, ptr %next.gep264, align 8, !tbaa !332
  %i.na = insertelement <4 x i32> poison, i32 %i.mw, i64 0
  %i.nb = insertelement <4 x i32> %i.na, i32 %i.mx, i64 1
  %i.nc = insertelement <4 x i32> %i.nb, i32 %i.my, i64 2
  %i.nd = insertelement <4 x i32> %i.nc, i32 %i.mz, i64 3
  %i.ne = icmp eq <4 x i32> %i.mv, splat (i32 2)
  %i.nf = icmp eq <4 x i32> %i.nd, splat (i32 2)
  %i.ng = zext <4 x i1> %i.ne to <4 x i32>
  %i.nh = zext <4 x i1> %i.nf to <4 x i32>
  %i.ni = add <4 x i32> %vec.phi, %i.ng           ; 2 uses
  %i.nj = add <4 x i32> %vec.phi257, %i.nh        ; 2 uses
  %index.next265 = add nuw i64 %index256, 8       ; 2 uses
  %i.nk = icmp eq i64 %index.next265, %n.vec254
  br i1 %i.nk, label %middle.block266, label %vector.body255, !llvm.loop !1764

middle.block266:                                  ; preds = %vector.body255
  %bin.rdx = add <4 x i32> %i.nj, %i.ni
  %i.nl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n267 = icmp eq i64 %i.md, %n.vec254
  br i1 %cmp.n267, label %_ZN7testing4Test15HasFatalFailureEv.exit87, label %.lr.ph.i.i.i78.preheader295

.lr.ph.i.i.i78.preheader295:                      ; preds = %.lr.ph.i.i.i78.preheader, %middle.block266
  %.09.i.i.i79.ph = phi i32 [ 0, %.lr.ph.i.i.i78.preheader ], [ %i.nl, %middle.block266 ]
  %.sroa.04.08.i.i.i80.ph = phi ptr [ %i.lv, %.lr.ph.i.i.i78.preheader ], [ %i.mf, %middle.block266 ]
  br label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i78.preheader295, %.lr.ph.i.i.i78
  %.09.i.i.i79 = phi i32 [ %spec.select.i.i.i81, %.lr.ph.i.i.i78 ], [ %.09.i.i.i79.ph, %.lr.ph.i.i.i78.preheader295 ]
  %.sroa.04.08.i.i.i80 = phi ptr [ %i.np, %.lr.ph.i.i.i78 ], [ %.sroa.04.08.i.i.i80.ph, %.lr.ph.i.i.i78.preheader295 ] ; 2 uses
  %i.nm = load i32, ptr %.sroa.04.08.i.i.i80, align 8, !tbaa !332
  %i.nn = icmp eq i32 %i.nm, 2
  %i.no = zext i1 %i.nn to i32
  %spec.select.i.i.i81 = add nuw nsw i32 %.09.i.i.i79, %i.no ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i80, i64 112 ; 2 uses
  %.not.i.i1.i82 = icmp eq ptr %i.np, %i.lx
  br i1 %.not.i.i1.i82, label %_ZN7testing4Test15HasFatalFailureEv.exit87, label %.lr.ph.i.i.i78, !llvm.loop !1765

_ZN7testing4Test15HasFatalFailureEv.exit87:       ; preds = %.lr.ph.i.i.i78, %middle.block266
  %spec.select.i.i.i81.lcssa = phi i32 [ %i.nl, %middle.block266 ], [ %spec.select.i.i.i81, %.lr.ph.i.i.i78 ]
  %.not118 = icmp eq i32 %spec.select.i.i.i81.lcssa, 0
  br i1 %.not118, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, label %.preheader122

.preheader122:                                    ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit87
  %i.nq = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.nr = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = lshr exact i64 %i.nu, 3
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = icmp sgt i32 %i.nw, 0
  br i1 %i.nx, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89: ; preds = %.preheader122, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89 ], [ 0, %.preheader122 ] ; 3 uses
  %i.ny = phi ptr [ %i.on, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89 ], [ %i.nr, %.preheader122 ]
  %i.nz = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.oa = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = shl i64 %i.od, 30
  %i.of = ashr i64 %i.oe, 32
  %.not.i.i88 = icmp slt i64 %indvars.iv, %i.of
  call void @llvm.assume(i1 %.not.i.i88)
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !97 ; 2 uses
  %i.oi = icmp sgt i32 %i.oh, -1
  call void @llvm.assume(i1 %i.oi)
  %i.oj = zext nneg i32 %i.oh to i64
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.oj
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !390
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ol)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.om = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.on = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = shl i64 %i.oq, 29
  %i.os = ashr i64 %i.or, 32
  %i.ot = icmp slt i64 %indvars.iv.next, %i.os
  br i1 %i.ot, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, !llvm.loop !1766

_ZN7testing4Test15HasFatalFailureEv.exit87.thread: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89, %_ZN7testing4Test15HasFatalFailureEv.exit, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71, %.preheader122, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %.preheader, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75, %_ZN7testing4Test15HasFatalFailureEv.exit87, %._crit_edge
  %i.ou = icmp eq i32 %.057147, %i.br
  %or.cond5 = select i1 %i.ou, i1 true, i1 %i.bg
  br i1 %or.cond5, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit87.thread
  %i.ov = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.ow = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 112
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.ov) #48
  %i.oz = load ptr, ptr %i.bn, align 8, !tbaa !496, !noalias !1776 ; 2 uses
  %i.pa = load ptr, ptr %i.bm, align 8, !tbaa !496, !noalias !1777 ; 2 uses
  %.not4.i91 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not4.i91, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %bb.ar, %.lr.ph.i92
end_hunk_1
