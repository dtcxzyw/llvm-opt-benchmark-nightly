Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gtest?download=true
inline.NumInlined: 6564
inline.NumDeleted: 2145
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7testing9TestSuite3RunEv:bb.a
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #44, !inline_history !530
  %i.bf = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, !prof !519

bb.p:                                             ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %i.bh = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.bi = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit, %bb.p, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i54 = icmp eq ptr %i.bk, null
  br i1 %.not.i54, label %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit
  tail call void %i.bk() #44, !inline_history !968
  br label %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit

_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit:  ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = load ptr, ptr %i.bl, align 8            ; 14 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 112               ; 8 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit
  %wide.trip.count.i = and i64 %i.bs, 2147483647  ; 2 uses
  br label %.lr.ph.i

bb.s:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.bs
  br i1 %exitcond.not.i, label %bb.t, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.354, i64 noundef %i.bs, i64 noundef %i.bs) #43
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw [112 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = add i32 %i.bw, -1
  %spec.select.i.i = icmp ult i32 %i.bx, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.s

bb.u:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !8

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.bs
  br i1 %exitcond.not.i.i, label %bb.v, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.354, i64 noundef %i.bs, i64 noundef %i.bs) #43
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw [112 x i8], ptr %i.bo, i64 %indvars.iv.i.i
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = add i32 %i.bz, -1
  %spec.select.i.i.i = icmp ult i32 %i.ca, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.u

.loopexit.i:                                      ; preds = %bb.u, %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit
  %i.cb = icmp eq ptr %i.bo, %i.bn
  br i1 %i.cb, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.cc = add i64 %i.bp, -112
  %i.cd = sub i64 %i.cc, %i.bq                    ; 2 uses
  %i.ce = udiv i64 %i.cd, 112
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.cf, 576460752303423480      ; 3 uses
  %i.cg = mul i64 %n.vec, 112
  %i.ch = getelementptr i8, ptr %i.bo, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi115 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %i.ci = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.ci
  %i.cj = getelementptr i8, ptr %i.bo, i64 %i.ci
  %next.gep116 = getelementptr i8, ptr %i.cj, i64 112
  %i.ck = getelementptr i8, ptr %i.bo, i64 %i.ci
  %next.gep117 = getelementptr i8, ptr %i.ck, i64 224
  %i.cl = getelementptr i8, ptr %i.bo, i64 %i.ci
  %next.gep118 = getelementptr i8, ptr %i.cl, i64 336
  %i.cm = getelementptr i8, ptr %i.bo, i64 %i.ci
  %next.gep119 = getelementptr i8, ptr %i.cm, i64 448
  %i.cn = getelementptr i8, ptr %i.bo, i64 %i.ci
  %next.gep120 = getelementptr i8, ptr %i.cn, i64 560
  %i.co = getelementptr i8, ptr %i.bo, i64 %i.ci
  %next.gep121 = getelementptr i8, ptr %i.co, i64 672
  %i.cp = getelementptr i8, ptr %i.bo, i64 %i.ci
  %next.gep122 = getelementptr i8, ptr %i.cp, i64 784
  %i.cq = load i32, ptr %next.gep, align 8
  %i.cr = load i32, ptr %next.gep116, align 8
  %i.cs = load i32, ptr %next.gep117, align 8
  %i.ct = load i32, ptr %next.gep118, align 8
  %i.cu = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cr, i64 1
  %i.cw = insertelement <4 x i32> %i.cv, i32 %i.cs, i64 2
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.ct, i64 3
  %i.cy = load i32, ptr %next.gep119, align 8
  %i.cz = load i32, ptr %next.gep120, align 8
  %i.da = load i32, ptr %next.gep121, align 8
  %i.db = load i32, ptr %next.gep122, align 8
  %i.dc = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.cz, i64 1
  %i.de = insertelement <4 x i32> %i.dd, i32 %i.da, i64 2
  %i.df = insertelement <4 x i32> %i.de, i32 %i.db, i64 3
  %i.dg = icmp eq <4 x i32> %i.cx, splat (i32 3)
  %i.dh = icmp eq <4 x i32> %i.df, splat (i32 3)
  %i.di = zext <4 x i1> %i.dg to <4 x i32>
  %i.dj = zext <4 x i1> %i.dh to <4 x i32>
  %i.dk = add <4 x i32> %vec.phi, %i.di           ; 2 uses
  %i.dl = add <4 x i32> %vec.phi115, %i.dj        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !969

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dl, %i.dk
  %i.dn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader131

.lr.ph.i1.i.preheader131:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.dn, %middle.block ]
  %.sroa.04.07.i.i.ph = phi ptr [ %i.bo, %.lr.ph.i1.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader131, %.lr.ph.i1.i
  %.08.i.i = phi i32 [ %spec.select.i.i23, %.lr.ph.i1.i ], [ %.08.i.i.ph, %.lr.ph.i1.i.preheader131 ]
  %.sroa.04.07.i.i = phi ptr [ %i.dr, %.lr.ph.i1.i ], [ %.sroa.04.07.i.i.ph, %.lr.ph.i1.i.preheader131 ] ; 2 uses
  %i.do = load i32, ptr %.sroa.04.07.i.i, align 8
  %i.dp = icmp eq i32 %i.do, 3
  %i.dq = zext i1 %i.dp to i32
  %spec.select.i.i23 = add nuw nsw i32 %.08.i.i, %i.dq ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 112 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bn
  br i1 %i.ds, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !970

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dn, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.dt = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.du = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.dt, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.dv = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #44
  %i.dw = sdiv i64 %i.dv, 1000000
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dw, ptr %i.dx, align 8
  %i.dy = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #44
  %i.dz = load ptr, ptr %i.q, align 8
  %i.ea = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = lshr exact i64 %i.ed, 3
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit40.thread
  %indvars.iv79 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next80, %_ZNK7testing10TestResult6FailedEv.exit40.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit40.thread ] ; 6 uses
  %i.ej = phi ptr [ %i.ea, %.lr.ph ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit40.thread ]
  %i.ek = load ptr, ptr %i.ei, align 8
  %i.el = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = shl i64 %i.eo, 30
  %i.eq = ashr i64 %i.ep, 32
  %.not.i.i = icmp slt i64 %indvars.iv, %i.eq
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv
  %i.es = load i32, ptr %i.er, align 4            ; 2 uses
  %i.et = icmp sgt i32 %i.es, -1
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = zext nneg i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  br i1 %i.du, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i25

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.w
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ew)
  br label %bb.x

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i25: ; preds = %bb.w
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ew)
  br label %bb.x

bb.x:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i25, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.ex = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !range !521, !noundef !522
  %i.ey = trunc nuw i8 %i.ex to i1
  %.pre = load ptr, ptr %i.o, align 8             ; 5 uses
  br i1 %i.ey, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i28, label %_ZNK7testing10TestResult6FailedEv.exit40.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i28: ; preds = %bb.x
  %i.ez = load ptr, ptr %i.ei, align 8
  %i.fa = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = shl i64 %i.fd, 30
  %i.ff = ashr i64 %i.fe, 32
  %.not.i.i27 = icmp slt i64 %indvars.iv, %i.ff
  tail call void @llvm.assume(i1 %.not.i.i27)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv
  %i.fh = load i32, ptr %i.fg, align 4            ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, -1
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 200
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 208
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = sdiv exact i64 %i.fs, 112               ; 5 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.preheader.i31, label %_ZNK7testing10TestResult6FailedEv.exit40.thread

.lr.ph.preheader.i31:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i28
  %wide.trip.count.i32 = and i64 %i.ft, 2147483647
  br label %.lr.ph.i33

bb.y:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i36
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond16.not.i39 = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i32
  br i1 %exitcond16.not.i39, label %_ZNK7testing10TestResult6FailedEv.exit40.thread, label %.lr.ph.i33, !llvm.loop !8

.lr.ph.i33:                                       ; preds = %bb.y, %.lr.ph.preheader.i31
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.preheader.i31 ], [ %indvars.iv.next.i38, %bb.y ] ; 3 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.i34, %i.ft
  br i1 %exitcond.not.i35, label %bb.z, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i36

bb.z:                                             ; preds = %.lr.ph.i33
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.354, i64 noundef %i.ft, i64 noundef %i.ft) #43
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i36: ; preds = %.lr.ph.i33
  %i.fw = getelementptr inbounds nuw [112 x i8], ptr %i.fp, i64 %indvars.iv.i34
  %i.fx = load i32, ptr %i.fw, align 8
  %i.fy = add i32 %i.fx, -1
  %spec.select.i.i37 = icmp ult i32 %i.fy, 2
  br i1 %spec.select.i.i37, label %_ZNK7testing10TestResult6FailedEv.exit40.preheader, label %bb.y

_ZNK7testing10TestResult6FailedEv.exit40.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i36
  %i.fz = trunc nuw nsw i64 %indvars.iv to i32
  %.071 = add nuw nsw i32 %i.fz, 1
  %i.ga = load ptr, ptr %i.q, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.pre to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = lshr exact i64 %i.gd, 3
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = icmp slt i32 %.071, %i.gf
  br i1 %i.gg, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i42, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i42: ; preds = %_ZNK7testing10TestResult6FailedEv.exit40.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i42
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i42 ], [ %indvars.iv79, %_ZNK7testing10TestResult6FailedEv.exit40.preheader ] ; 3 uses
  %i.gh = phi ptr [ %i.gw, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i42 ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit40.preheader ]
  %i.gi = load ptr, ptr %i.ei, align 8
  %i.gj = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = shl i64 %i.gm, 30
  %i.go = ashr i64 %i.gn, 32
  %.not.i.i41 = icmp slt i64 %indvars.iv83, %i.go
  tail call void @llvm.assume(i1 %.not.i.i41)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv83
  %i.gq = load i32, ptr %i.gp, align 4            ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, -1
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = zext nneg i32 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gu)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gv = load ptr, ptr %i.q, align 8
  %i.gw = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = lshr exact i64 %i.gz, 3
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = trunc nuw i64 %indvars.iv.next84 to i32
  %i.hd = icmp slt i32 %i.hc, %i.hb
  br i1 %i.hd, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i42, label %.loopexit, !llvm.loop !971

_ZNK7testing10TestResult6FailedEv.exit40.thread:  ; preds = %bb.y, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i28, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.he = load ptr, ptr %i.q, align 8
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %.pre to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = shl i64 %i.hh, 29
  %i.hj = ashr i64 %i.hi, 32
  %i.hk = icmp slt i64 %indvars.iv.next, %i.hj
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br i1 %i.hk, label %bb.w, label %.loopexit, !llvm.loop !972

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit40.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i42, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit40.preheader
  %i.hl = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #44
  %i.hm = sub nsw i64 %i.hl, %i.dy
  %i.hn = sdiv i64 %i.hm, 1000000
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.hn, ptr %i.ho, align 8
  %i.hp = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hq = icmp eq i8 %i.hp, 0
  br i1 %i.hq, label %bb.aa, label %_ZN7testing8UnitTest11GetInstanceEv.exit45, !prof !519

bb.aa:                                            ; preds = %.loopexit
  %i.hr = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i44 = icmp eq i32 %i.hr, 0
  br i1 %.not.i44, label %_ZN7testing8UnitTest11GetInstanceEv.exit45, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.hs = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit45

_ZN7testing8UnitTest11GetInstanceEv.exit45:       ; preds = %.loopexit, %bb.aa, %bb.ab
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 640 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8            ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ac, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i46

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i46: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit45
  %.pre.i47 = load ptr, ptr %i.hv, align 8
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit48

bb.ac:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit45
  %i.hx = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hx, align 8
  store ptr %i.hx, ptr %i.hu, align 8
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit48

_ZN7testing8UnitTest16UponLeavingGTestEv.exit48:  ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i46, %bb.ac
  %i.hy = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.ac ], [ %.pre.i47, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i46 ]
  %i.hz = phi ptr [ %i.hx, %bb.ac ], [ %i.hv, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i46 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  tail call void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hz) #44, !inline_history !530
  %i.ic = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.ad, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit51, !prof !519

bb.ad:                                            ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit48
  %i.ie = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i.i.i50 = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i.i50, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit51, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.if = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit51

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit51: ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit48, %bb.ad, %bb.ae
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %.not.i55 = icmp eq ptr %i.ih, null
  br i1 %.not.i55, label %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit, label %bb.af

bb.af:                                            ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit51
  tail call void %i.ih() #44, !inline_history !973
  br label %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit

_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit: ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit51, %bb.af
  %i.ii = load ptr, ptr %i.n, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %i.ik = load ptr, ptr %i.ij, align 8
  tail call void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0) #44
  %i.il = load ptr, ptr %i.n, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 104
  %i.in = load ptr, ptr %i.im, align 8
  tail call void %i.in(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0) #44
  %i.io = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %bb.ag, label %_ZN7testing8UnitTest11GetInstanceEv.exit53, !prof !519

bb.ag:                                            ; preds = %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit
  %i.iq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i52 = icmp eq i32 %i.iq, 0
  br i1 %.not.i52, label %_ZN7testing8UnitTest11GetInstanceEv.exit53, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.ir = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit53

_ZN7testing8UnitTest11GetInstanceEv.exit53:       ; preds = %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit, %bb.ag, %bb.ah
  tail call void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef null)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %_ZN7testing8UnitTest11GetInstanceEv.exit53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !guid !975 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN7testing8internal9MutexBase4lockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.e, align 8
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #44 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.339, i32 noundef 1668) #44
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.342, i64 noundef 29) #44 ; 0 uses
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.341, i64 noundef 18) #44 ; 0 uses
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.f) #44 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #2 align 2 !guid !977 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !range !521, !noundef !522
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !519

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull %0)
  %i.h = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN7testing8UnitTest11GetInstanceEv.exit8, !prof !519

bb.e:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i7 = icmp eq i32 %i.j, 0
  br i1 %.not.i7, label %_ZN7testing8UnitTest11GetInstanceEv.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit8

_ZN7testing8UnitTest11GetInstanceEv.exit8:        ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.e, %bb.f
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0) #44
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0) #44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %._crit_edge

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
._crit_edge.i.i103:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i104, %bb.be
  %i.lw = phi ptr [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i104 ], [ %i.ic, %bb.be ] ; 3 uses
  switch i64 %i.lq, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit105
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i103
  %i.lx = load i8, ptr %i.lo, align 1
  store i8 %i.lx, ptr %i.lw, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit105

bb.bk:                                            ; preds = %._crit_edge.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lw, ptr nonnull align 1 %i.lo, i64 %i.lq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit105: ; preds = %._crit_edge.i.i103, %bb.bj, %bb.bk
  store i64 %i.lq, ptr %i.id, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lq
  store i8 0, ptr %i.ly, align 1
  %i.lz = load ptr, ptr %6, align 8
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.lz) ; 0 uses
  %i.ma = load ptr, ptr %6, align 8               ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.ic
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit105
  %i.mc = load i64, ptr %i.ic, align 8
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %.pre = load ptr, ptr %i.kw, align 8
  %.pre273.a = load ptr, ptr %i.kv, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.me = phi ptr [ %.pre273.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %i.lh, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.mf = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %i.li, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.me to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = sdiv exact i64 %i.mi, 112               ; 2 uses
  %i.mk = shl i64 %i.mj, 32
  %i.ml = ashr exact i64 %i.mk, 32
  %i.mm = icmp slt i64 %indvars.iv.next271, %i.ml
  br i1 %i.mm, label %.lr.ph, label %._crit_edge, !llvm.loop !1426

bb.bm:                                            ; preds = %bb.at
  br i1 %i.kk, label %bb.bn, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !519

bb.bn:                                            ; preds = %bb.bm
  %i.mn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i.i.i110 = icmp eq i32 %i.mn, 0
  br i1 %.not.i.i.i110, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.mo = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 480
  %i.mr = load ptr, ptr %i.mq, align 8            ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i109, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.bq:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 472
  %i.mu = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not4.i.i = icmp eq ptr %i.mu, null
  br i1 %.not4.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i: ; preds = %bb.bs, %bb.br, %bb.bp
  %.0.i.i = phi ptr [ %i.ms, %bb.bp ], [ %i.mv, %bb.br ], [ %i.mw, %bb.bs ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.my = load ptr, ptr %i.mx, align 8            ; 12 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.na = load ptr, ptr %i.mz, align 8            ; 3 uses
  %i.nb = icmp eq ptr %i.my, %i.na
  br i1 %i.nb, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.nc = ptrtoaddr ptr %i.na to i64
  %i.nd = ptrtoaddr ptr %i.my to i64
  %i.ne = add i64 %i.nc, -112
  %i.nf = sub i64 %i.ne, %i.nd                    ; 2 uses
  %i.ng = udiv i64 %i.nf, 112
  %i.nh = add nuw nsw i64 %i.ng, 1                ; 2 uses
  %min.iters.check428 = icmp ult i64 %i.nf, 784
  br i1 %min.iters.check428, label %.lr.ph.i.i.i.preheader452, label %vector.ph429

vector.ph429:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec430 = and i64 %i.nh, 576460752303423480   ; 3 uses
  %i.ni = mul i64 %n.vec430, 112
  %i.nj = getelementptr i8, ptr %i.my, i64 %i.ni
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next443, %vector.body431 ] ; 2 uses
  %vec.phi433 = phi <4 x i32> [ zeroinitializer, %vector.ph429 ], [ %i.om, %vector.body431 ]
  %vec.phi434 = phi <4 x i32> [ zeroinitializer, %vector.ph429 ], [ %i.on, %vector.body431 ]
  %i.nk = mul i64 %index432, 112                  ; 8 uses
  %next.gep435.a = getelementptr i8, ptr %i.my, i64 %i.nk
  %i.nl = getelementptr i8, ptr %i.my, i64 %i.nk
  %next.gep436.a = getelementptr i8, ptr %i.nl, i64 112
  %i.nm = getelementptr i8, ptr %i.my, i64 %i.nk
  %next.gep437.a = getelementptr i8, ptr %i.nm, i64 224
  %i.nn = getelementptr i8, ptr %i.my, i64 %i.nk
  %next.gep438 = getelementptr i8, ptr %i.nn, i64 336
  %i.no = getelementptr i8, ptr %i.my, i64 %i.nk
  %next.gep439 = getelementptr i8, ptr %i.no, i64 448
  %i.np = getelementptr i8, ptr %i.my, i64 %i.nk
  %next.gep440 = getelementptr i8, ptr %i.np, i64 560
  %i.nq = getelementptr i8, ptr %i.my, i64 %i.nk
  %next.gep441 = getelementptr i8, ptr %i.nq, i64 672
  %i.nr = getelementptr i8, ptr %i.my, i64 %i.nk
  %next.gep442 = getelementptr i8, ptr %i.nr, i64 784
  %i.ns = load i32, ptr %next.gep435.a, align 8
  %i.nt = load i32, ptr %next.gep436.a, align 8
  %i.nu = load i32, ptr %next.gep437.a, align 8
  %i.nv = load i32, ptr %next.gep438, align 8
  %i.nw = insertelement <4 x i32> poison, i32 %i.ns, i64 0
  %i.nx = insertelement <4 x i32> %i.nw, i32 %i.nt, i64 1
  %i.ny = insertelement <4 x i32> %i.nx, i32 %i.nu, i64 2
  %i.nz = insertelement <4 x i32> %i.ny, i32 %i.nv, i64 3
  %i.oa = load i32, ptr %next.gep439, align 8
  %i.ob = load i32, ptr %next.gep440, align 8
  %i.oc = load i32, ptr %next.gep441, align 8
  %i.od = load i32, ptr %next.gep442, align 8
  %i.oe = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %i.of = insertelement <4 x i32> %i.oe, i32 %i.ob, i64 1
  %i.og = insertelement <4 x i32> %i.of, i32 %i.oc, i64 2
  %i.oh = insertelement <4 x i32> %i.og, i32 %i.od, i64 3
  %i.oi = icmp eq <4 x i32> %i.nz, splat (i32 2)
  %i.oj = icmp eq <4 x i32> %i.oh, splat (i32 2)
  %i.ok = zext <4 x i1> %i.oi to <4 x i32>
  %i.ol = zext <4 x i1> %i.oj to <4 x i32>
  %i.om = add <4 x i32> %vec.phi433, %i.ok        ; 2 uses
  %i.on = add <4 x i32> %vec.phi434, %i.ol        ; 2 uses
  %index.next443 = add nuw i64 %index432, 8       ; 2 uses
  %i.oo = icmp eq i64 %index.next443, %n.vec430
  br i1 %i.oo, label %middle.block444, label %vector.body431, !llvm.loop !1427

middle.block444:                                  ; preds = %vector.body431
  %bin.rdx445 = add <4 x i32> %i.on, %i.om
  %i.op = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx445) ; 2 uses
  %cmp.n446 = icmp eq i64 %i.nh, %n.vec430
  br i1 %cmp.n446, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader452

.lr.ph.i.i.i.preheader452:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block444
  %.08.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.op, %middle.block444 ]
  %.sroa.04.07.i.i.i.ph = phi ptr [ %i.my, %.lr.ph.i.i.i.preheader ], [ %i.nj, %middle.block444 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader452, %.lr.ph.i.i.i
  %.08.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader452 ]
  %.sroa.04.07.i.i.i = phi ptr [ %i.ot, %.lr.ph.i.i.i ], [ %.sroa.04.07.i.i.i.ph, %.lr.ph.i.i.i.preheader452 ] ; 2 uses
  %i.oq = load i32, ptr %.sroa.04.07.i.i.i, align 8
  %i.or = icmp eq i32 %i.oq, 2
  %i.os = zext i1 %i.or to i32
  %spec.select.i.i.i = add nuw nsw i32 %.08.i.i.i, %i.os ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 112 ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.na
  br i1 %i.ou, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1428

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block444
  %spec.select.i.i.i.lcssa = phi i32 [ %i.op, %middle.block444 ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not211 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not211, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %bb.bt

_ZN7testing4Test15HasFatalFailureEv.exit.preheader: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.ov = load ptr, ptr %i.w, align 8
  %i.ow = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = lshr exact i64 %i.oz, 3
  %i.pb = trunc i64 %i.pa to i32
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %_ZN7testing4Test15HasFatalFailureEv.exit
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ 1, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 2 uses
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ 0, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 6 uses
  %i.pd = phi ptr [ %i.rp, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ %i.ow, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ]
  %i.pe = load ptr, ptr %i.ib, align 8
  %i.pf = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph
  %i.pj = shl i64 %i.pi, 30
  %i.pk = ashr i64 %i.pj, 32
  %.not.i.i111 = icmp slt i64 %indvars.iv261, %i.pk
  call void @llvm.assume(i1 %.not.i.i111)
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv261
  %i.pm = load i32, ptr %i.pl, align 4            ; 2 uses
  %i.pn = icmp sgt i32 %i.pm, -1
  call void @llvm.assume(i1 %i.pn)
  %i.po = zext nneg i32 %i.pm to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.po
  %i.pq = load ptr, ptr %i.pp, align 8
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.pq)
  %i.pr = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !range !521, !noundef !522
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i113, label %_ZN7testing4Test15HasFatalFailureEv.exit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i113: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.pt = load ptr, ptr %i.ib, align 8
  %i.pu = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = shl i64 %i.px, 30
  %i.pz = ashr i64 %i.py, 32
  %.not.i.i112 = icmp slt i64 %indvars.iv261, %i.pz
  call void @llvm.assume(i1 %.not.i.i112)
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %indvars.iv261
  %i.qb = load i32, ptr %i.qa, align 4            ; 2 uses
  %i.qc = icmp sgt i32 %i.qb, -1
  call void @llvm.assume(i1 %i.qc)
  %i.qd = zext nneg i32 %i.qb to i64
  %i.qe = load ptr, ptr %i.v, align 8
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qd
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.qg)
  br i1 %i.qh, label %.preheader, label %_ZN7testing4Test15HasFatalFailureEv.exit

.preheader:                                       ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i113
  %i.qi = trunc nuw nsw i64 %indvars.iv261 to i32
  %.061237 = add nuw nsw i32 %i.qi, 1
  %i.qj = load ptr, ptr %i.w, align 8
  %i.qk = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = sub i64 %i.ql, %i.qm
  %i.qo = lshr exact i64 %i.qn, 3
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = icmp slt i32 %.061237, %i.qp
  br i1 %i.qq, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i116, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i116: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i116
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i116 ], [ %indvars.iv264, %.preheader ] ; 3 uses
  %i.qr = phi ptr [ %i.rg, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i116 ], [ %i.qk, %.preheader ]
  %i.qs = load ptr, ptr %i.ib, align 8
  %i.qt = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = shl i64 %i.qw, 30
  %i.qy = ashr i64 %i.qx, 32
  %.not.i.i115 = icmp slt i64 %indvars.iv267, %i.qy
  call void @llvm.assume(i1 %.not.i.i115)
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv267
  %i.ra = load i32, ptr %i.qz, align 4            ; 2 uses
  %i.rb = icmp sgt i32 %i.ra, -1
  call void @llvm.assume(i1 %i.rb)
  %i.rc = zext nneg i32 %i.ra to i64
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.rc
  %i.re = load ptr, ptr %i.rd, align 8
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.re)
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.rf = load ptr, ptr %i.w, align 8
  %i.rg = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = lshr exact i64 %i.rj, 3
  %i.rl = trunc i64 %i.rk to i32
  %i.rm = trunc nuw i64 %indvars.iv.next268 to i32
  %i.rn = icmp slt i32 %i.rm, %i.rl
  br i1 %i.rn, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i116, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread, !llvm.loop !1429

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i113
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.ro = load ptr, ptr %i.w, align 8
  %i.rp = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = ptrtoint ptr %i.rp to i64
  %i.rs = sub i64 %i.rq, %i.rr
  %i.rt = shl i64 %i.rs, 29
  %i.ru = ashr i64 %i.rt, 32
  %i.rv = icmp slt i64 %indvars.iv.next262, %i.ru
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1
  br i1 %i.rv, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread, !llvm.loop !1430

bb.bt:                                            ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i
  %i.rw = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.rx = icmp eq i8 %i.rw, 0
  br i1 %i.rx, label %bb.bu, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i118, !prof !519

bb.bu:                                            ; preds = %bb.bt
  %i.ry = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i.i.i129 = icmp eq i32 %i.ry, 0
  br i1 %.not.i.i.i129, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i118, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.rz = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i118

_ZN7testing8internal15GetUnitTestImplEv.exit.i118: ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.sa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 480
  %i.sc = load ptr, ptr %i.sb, align 8            ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i119, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i118
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i120

bb.bx:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i118
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 472
  %i.sf = load ptr, ptr %i.se, align 8            ; 2 uses
  %.not4.i.i128 = icmp eq ptr %i.sf, null
  br i1 %.not4.i.i128, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i120

bb.bz:                                            ; preds = %bb.bx
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i120

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i120: ; preds = %bb.bz, %bb.by, %bb.bw
  %.0.i.i121 = phi ptr [ %i.sd, %bb.bw ], [ %i.sg, %bb.by ], [ %i.sh, %bb.bz ] ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i.i121, i64 56
  %i.sj = load ptr, ptr %i.si, align 8            ; 12 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.i.i121, i64 64
  %i.sl = load ptr, ptr %i.sk, align 8            ; 3 uses
  %i.sm = icmp eq ptr %i.sj, %i.sl
  br i1 %i.sm, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread, label %.lr.ph.i.i.i122.preheader

.lr.ph.i.i.i122.preheader:                        ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i120
  %i.sn = ptrtoaddr ptr %i.sl to i64
  %i.so = ptrtoaddr ptr %i.sj to i64
  %i.sp = add i64 %i.sn, -112
  %i.sq = sub i64 %i.sp, %i.so                    ; 2 uses
  %i.sr = udiv i64 %i.sq, 112
  %i.ss = add nuw nsw i64 %i.sr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.sq, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.i122.preheader451, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i122.preheader
  %n.vec = and i64 %i.ss, 576460752303423480      ; 3 uses
  %i.st = mul i64 %n.vec, 112
  %i.su = getelementptr i8, ptr %i.sj, i64 %i.st
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.tx, %vector.body ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ty, %vector.body ]
  %i.sv = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.sj, i64 %i.sv
  %i.sw = getelementptr i8, ptr %i.sj, i64 %i.sv
  %next.gep420.a = getelementptr i8, ptr %i.sw, i64 112
  %i.sx = getelementptr i8, ptr %i.sj, i64 %i.sv
  %next.gep421.a = getelementptr i8, ptr %i.sx, i64 224
  %i.sy = getelementptr i8, ptr %i.sj, i64 %i.sv
  %next.gep422 = getelementptr i8, ptr %i.sy, i64 336
  %i.sz = getelementptr i8, ptr %i.sj, i64 %i.sv
  %next.gep423 = getelementptr i8, ptr %i.sz, i64 448
  %i.ta = getelementptr i8, ptr %i.sj, i64 %i.sv
  %next.gep424 = getelementptr i8, ptr %i.ta, i64 560
  %i.tb = getelementptr i8, ptr %i.sj, i64 %i.sv
  %next.gep425 = getelementptr i8, ptr %i.tb, i64 672
  %i.tc = getelementptr i8, ptr %i.sj, i64 %i.sv
  %next.gep426 = getelementptr i8, ptr %i.tc, i64 784
  %i.td = load i32, ptr %next.gep, align 8
  %i.te = load i32, ptr %next.gep420.a, align 8
  %i.tf = load i32, ptr %next.gep421.a, align 8
  %i.tg = load i32, ptr %next.gep422, align 8
  %i.th = insertelement <4 x i32> poison, i32 %i.td, i64 0
  %i.ti = insertelement <4 x i32> %i.th, i32 %i.te, i64 1
  %i.tj = insertelement <4 x i32> %i.ti, i32 %i.tf, i64 2
  %i.tk = insertelement <4 x i32> %i.tj, i32 %i.tg, i64 3
  %i.tl = load i32, ptr %next.gep423, align 8
  %i.tm = load i32, ptr %next.gep424, align 8
  %i.tn = load i32, ptr %next.gep425, align 8
  %i.to = load i32, ptr %next.gep426, align 8
  %i.tp = insertelement <4 x i32> poison, i32 %i.tl, i64 0
  %i.tq = insertelement <4 x i32> %i.tp, i32 %i.tm, i64 1
  %i.tr = insertelement <4 x i32> %i.tq, i32 %i.tn, i64 2
  %i.ts = insertelement <4 x i32> %i.tr, i32 %i.to, i64 3
  %i.tt = icmp eq <4 x i32> %i.tk, splat (i32 2)
  %i.tu = icmp eq <4 x i32> %i.ts, splat (i32 2)
  %i.tv = zext <4 x i1> %i.tt to <4 x i32>
  %i.tw = zext <4 x i1> %i.tu to <4 x i32>
  %i.tx = add <4 x i32> %vec.phi, %i.tv           ; 2 uses
  %i.ty = add <4 x i32> %vec.phi419, %i.tw        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.tz = icmp eq i64 %index.next, %n.vec
  br i1 %i.tz, label %middle.block, label %vector.body, !llvm.loop !1431

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ty, %i.tx
  %i.ua = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ss, %n.vec
  br i1 %cmp.n, label %_ZN7testing4Test15HasFatalFailureEv.exit130, label %.lr.ph.i.i.i122.preheader451

.lr.ph.i.i.i122.preheader451:                     ; preds = %.lr.ph.i.i.i122.preheader, %middle.block
  %.08.i.i.i123.ph = phi i32 [ 0, %.lr.ph.i.i.i122.preheader ], [ %i.ua, %middle.block ]
  %.sroa.04.07.i.i.i124.ph = phi ptr [ %i.sj, %.lr.ph.i.i.i122.preheader ], [ %i.su, %middle.block ]
  br label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %.lr.ph.i.i.i122.preheader451, %.lr.ph.i.i.i122
  %.08.i.i.i123 = phi i32 [ %spec.select.i.i.i125, %.lr.ph.i.i.i122 ], [ %.08.i.i.i123.ph, %.lr.ph.i.i.i122.preheader451 ]
  %.sroa.04.07.i.i.i124 = phi ptr [ %i.ue, %.lr.ph.i.i.i122 ], [ %.sroa.04.07.i.i.i124.ph, %.lr.ph.i.i.i122.preheader451 ] ; 2 uses
  %i.ub = load i32, ptr %.sroa.04.07.i.i.i124, align 8
  %i.uc = icmp eq i32 %i.ub, 2
  %i.ud = zext i1 %i.uc to i32
  %spec.select.i.i.i125 = add nuw nsw i32 %.08.i.i.i123, %i.ud ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i124, i64 112 ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.sl
  br i1 %i.uf, label %_ZN7testing4Test15HasFatalFailureEv.exit130, label %.lr.ph.i.i.i122, !llvm.loop !1432

_ZN7testing4Test15HasFatalFailureEv.exit130:      ; preds = %.lr.ph.i.i.i122, %middle.block
  %spec.select.i.i.i125.lcssa = phi i32 [ %i.ua, %middle.block ], [ %spec.select.i.i.i125, %.lr.ph.i.i.i122 ]
  %.not212 = icmp eq i32 %spec.select.i.i.i125.lcssa, 0
  br i1 %.not212, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread, label %.preheader214

.preheader214:                                    ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit130
  %i.ug = load ptr, ptr %i.w, align 8
  %i.uh = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = sub i64 %i.ui, %i.uj
  %i.ul = lshr exact i64 %i.uk, 3
  %i.um = trunc i64 %i.ul to i32
  %i.un = icmp sgt i32 %i.um, 0
  br i1 %i.un, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i132, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i132: ; preds = %.preheader214, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i132
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i132 ], [ 0, %.preheader214 ] ; 3 uses
  %i.uo = phi ptr [ %i.vd, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i132 ], [ %i.uh, %.preheader214 ]
  %i.up = load ptr, ptr %i.ib, align 8
  %i.uq = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = ptrtoint ptr %i.uq to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = shl i64 %i.ut, 30
  %i.uv = ashr i64 %i.uu, 32
  %.not.i.i131 = icmp slt i64 %indvars.iv, %i.uv
  call void @llvm.assume(i1 %.not.i.i131)
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv
  %i.ux = load i32, ptr %i.uw, align 4            ; 2 uses
  %i.uy = icmp sgt i32 %i.ux, -1
  call void @llvm.assume(i1 %i.uy)
  %i.uz = zext nneg i32 %i.ux to i64
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.uz
  %i.vb = load ptr, ptr %i.va, align 8
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.vb)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vc = load ptr, ptr %i.w, align 8
  %i.vd = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = shl i64 %i.vg, 29
  %i.vi = ashr i64 %i.vh, 32
  %i.vj = icmp slt i64 %indvars.iv.next, %i.vi
  br i1 %i.vj, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i132, label %_ZN7testing4Test15HasFatalFailureEv.exit130.thread, !llvm.loop !1433

_ZN7testing4Test15HasFatalFailureEv.exit130.thread: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i132, %_ZN7testing4Test15HasFatalFailureEv.exit, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i116, %.preheader214, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %.preheader, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i120, %_ZN7testing4Test15HasFatalFailureEv.exit130, %._crit_edge
  %i.vk = icmp eq i32 %.065241, %i.ie
  %or.cond7 = select i1 %i.vk, i1 true, i1 %i.hv
  br i1 %or.cond7, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit130.thread
  %i.vl = load ptr, ptr %i.hl, align 8
  %i.vm = load ptr, ptr %i.hh, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 112
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull align 8 dereferenceable(72) %i.vl) #44
  %i.vp = load ptr, ptr %i.ia, align 8, !noalias !1449 ; 2 uses
  %i.vq = load ptr, ptr %i.hz, align 8, !noalias !1450 ; 2 uses
  %i.vr = icmp eq ptr %i.vp, %i.vq
  br i1 %i.vr, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %bb.ca, %.lr.ph.i134
end_hunk_1
