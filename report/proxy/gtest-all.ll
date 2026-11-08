Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/gtest-all?download=true
inline.NumInlined: 9409
inline.NumDeleted: 2417
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !350 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.w, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !87
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

bb.w:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %i.bj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bj, align 8, !tbaa !87
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !350
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

_ZN7testing8UnitTest16UponLeavingGTestEv.exit:    ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i, %bb.w
  %i.bk = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.w ], [ %.pre.i, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bl = phi ptr [ %i.bj, %bb.w ], [ %i.bh, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bl), !inline_history !472
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.220)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !327 ; 3 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !329 ; 14 uses
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
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.557, i64 noundef %i.bv, i64 noundef %i.bv) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.by = getelementptr inbounds nuw [112 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !326
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
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.557, i64 noundef %i.bv, i64 noundef %i.bv) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw [112 x i8], ptr %i.br, i64 %indvars.iv.i.i
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !326
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
  %i.cs = load i32, ptr %next.gep, align 8, !tbaa !326
  %i.ct = load i32, ptr %next.gep111, align 8, !tbaa !326
  %i.cu = load i32, ptr %next.gep112, align 8, !tbaa !326
  %i.cv = load i32, ptr %next.gep113, align 8, !tbaa !326
  %i.cw = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.ct, i64 1
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 2
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 3
  %i.da = load i32, ptr %next.gep114, align 8, !tbaa !326
  %i.db = load i32, ptr %next.gep115, align 8, !tbaa !326
  %i.dc = load i32, ptr %next.gep116, align 8, !tbaa !326
  %i.dd = load i32, ptr %next.gep117, align 8, !tbaa !326
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
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1255

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
  %i.dq = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !326
  %i.dr = icmp eq i32 %i.dq, 3
  %i.ds = zext i1 %i.dr to i32
  %spec.select.i.i23 = add nuw nsw i32 %.09.i.i, %i.ds ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dt, %i.bq
  br i1 %.not.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !1256

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dp, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.du = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.dv = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.du, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.dw = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #55
  %i.dx = sdiv i64 %i.dw, 1000000
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !481
  %i.dz = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.ea = load ptr, ptr %i.w, align 8, !tbaa !403
  %i.eb = load ptr, ptr %i.u, align 8, !tbaa !404 ; 2 uses
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
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !479
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !476 ; 2 uses
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
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !395 ; 2 uses
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
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !404 ; 5 uses
  br i1 %i.ez, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, label %_ZNK7testing10TestResult6FailedEv.exit41.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29: ; preds = %bb.ac
  %i.fa = load ptr, ptr %i.ej, align 8, !tbaa !479
  %i.fb = load ptr, ptr %i.ei, align 8, !tbaa !476 ; 2 uses
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
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !395 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 200
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 208
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !327
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !329 ; 2 uses
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
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.557, i64 noundef %i.fu, i64 noundef %i.fu) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37: ; preds = %.lr.ph.i34
  %i.fx = getelementptr inbounds nuw [112 x i8], ptr %i.fq, i64 %indvars.iv.i35
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !326
  %i.fz = add i32 %i.fy, -1
  %spec.select.i.i38 = icmp ult i32 %i.fz, 2
  br i1 %spec.select.i.i38, label %_ZNK7testing10TestResult6FailedEv.exit41.preheader, label %bb.ad

_ZNK7testing10TestResult6FailedEv.exit41.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37
  %i.ga = trunc nuw nsw i64 %indvars.iv to i32
  %.068 = add nuw nsw i32 %i.ga, 1
  %i.gb = load ptr, ptr %i.w, align 8, !tbaa !403
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
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !479
  %i.gk = load ptr, ptr %i.ei, align 8, !tbaa !476 ; 2 uses
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
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !395
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gv)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.gw = load ptr, ptr %i.w, align 8, !tbaa !403
  %i.gx = load ptr, ptr %i.u, align 8, !tbaa !404 ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = lshr exact i64 %i.ha, 3
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = trunc nuw i64 %indvars.iv.next81 to i32
  %i.he = icmp slt i32 %i.hd, %i.hc
  br i1 %i.he, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, label %.loopexit, !llvm.loop !1257

_ZNK7testing10TestResult6FailedEv.exit41.thread:  ; preds = %bb.ad, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, %bb.ac
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hf = load ptr, ptr %i.w, align 8, !tbaa !403
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %.pre to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = shl i64 %i.hi, 29
  %i.hk = ashr i64 %i.hj, 32
  %i.hl = icmp slt i64 %indvars.iv.next, %i.hk
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br i1 %i.hl, label %bb.ab, label %.loopexit, !llvm.loop !1258

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit41.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit41.preheader
  %i.hm = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.hn = sub nsw i64 %i.hm, %i.dz
  %i.ho = sdiv i64 %i.hn, 1000000
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !482
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
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !350 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.aj, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %.pre.i48 = load ptr, ptr %i.hx, align 8, !tbaa !87
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

bb.aj:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %i.hz = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hz, align 8, !tbaa !87
  store ptr %i.hz, ptr %i.hw, align 8, !tbaa !350
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

_ZN7testing8UnitTest16UponLeavingGTestEv.exit49:  ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47, %bb.aj
  %i.ia = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.aj ], [ %.pre.i48, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.ib = phi ptr [ %i.hz, %bb.aj ], [ %i.hx, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  tail call void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ib), !inline_history !472
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.221)
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
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 8))
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 472
  store ptr null, ptr %i.iq, align 8, !tbaa !375
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 8))
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
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store ptr %1, ptr %i.d, align 8, !tbaa !375
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
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
  %i.h = load i8, ptr %i.g, align 8, !tbaa !465, !range !70, !noundef !71
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
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1259

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

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit130: ; preds = %.lr.ph.i.i127, %bb.ae
  %i.jh = load ptr, ptr %i.gb, align 8, !tbaa !509
  %i.ji = load ptr, ptr %i.fx, align 8, !tbaa !87
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.jh)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit130
  %i.jl = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.jl, label %bb.ag, label %bb.aw

bb.ag:                                            ; preds = %bb.af
  %i.jm = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.jn = icmp eq i8 %i.jm, 0
  br i1 %i.jn, label %bb.ah, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.ah:                                            ; preds = %bb.ag
  %i.jo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  %.not.i.i131 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i131, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.aj unwind label %bb.ak, !inline_history !1

bb.aj:                                            ; preds = %bb.ai
  %i.jp = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !1 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %bb.ak
  %common.resume.op = phi { ptr, i32 } [ %i.jq, %bb.ak ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ]
  resume { ptr, i32 } %common.resume.op

bb.ak:                                            ; preds = %bb.ai
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !1
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.ag, %bb.ah, %bb.aj
  %i.jr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 480
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !203 ; 2 uses
  %.not.i132 = icmp eq ptr %i.jt, null
  br i1 %.not.i132, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.am:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 472
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !375 ; 2 uses
  %.not4.i = icmp eq ptr %i.jw, null
  br i1 %.not4.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.al, %bb.an, %bb.ao
  %.0.i = phi ptr [ %i.ju, %bb.al ], [ %i.jx, %bb.an ], [ %i.jy, %bb.ao ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !327 ; 2 uses
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !329 ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = sdiv exact i64 %i.kf, 112               ; 2 uses
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.av, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.kj = load ptr, ptr @stdout, align 8, !tbaa !208
  %i.kk = call i32 @fflush(ptr noundef %i.kj)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.av
  %i.kl = phi ptr [ %i.li, %bb.av ], [ %i.kc, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.km = phi ptr [ %i.lj, %bb.av ], [ %i.kb, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.av ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.kn = phi i64 [ %i.ln, %bb.av ], [ %i.kg, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.kn, %indvars.iv248
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.557, i64 noundef %indvars.iv248, i64 noundef %i.kn) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.ko = getelementptr inbounds nuw [112 x i8], ptr %i.kl, i64 %indvars.iv248 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !326
  %i.kq = icmp eq i32 %i.kp, 3
  br i1 %i.kq, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 80
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !78 ; 4 uses
  store ptr %i.gs, ptr %5, align 8, !tbaa !75
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %.noexc136, label %bb.ar

.noexc136:                                        ; preds = %bb.aq
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.523) #57
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.ku = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ks) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.ku, ptr %i.a, align 8, !tbaa !80
  %i.kv = icmp ugt i64 %i.ku, 15
  br i1 %i.kv, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ar
  %i.kw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.kw, ptr %5, align 8, !tbaa !78
  %i.kx = load i64, ptr %i.a, align 8, !tbaa !80
  store i64 %i.kx, ptr %i.gs, align 8, !tbaa !81
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc.i135, %bb.ar
  %i.ky = phi ptr [ %i.kw, %.noexc.i135 ], [ %i.gs, %bb.ar ] ; 2 uses
  switch i64 %i.ku, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i134
  %i.kz = load i8, ptr %i.ks, align 1, !tbaa !81
  store i8 %i.kz, ptr %i.ky, align 1, !tbaa !81
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr nonnull align 1 %i.ks, i64 %i.ku, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i134
  %i.la = load i64, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  store i64 %i.la, ptr %i.gt, align 8, !tbaa !79
  %i.lb = load ptr, ptr %5, align 8, !tbaa !78
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  store i8 0, ptr %i.lc, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ld = load ptr, ptr %5, align 8, !tbaa !78
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.ld) ; 0 uses
  %i.le = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.gs
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.au
  %i.lg = load i64, ptr %i.gs, align 8, !tbaa !81
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %.pre = load ptr, ptr %i.ka, align 8, !tbaa !327
  %.pre251 = load ptr, ptr %i.jz, align 8, !tbaa !329
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.li = phi ptr [ %.pre251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.kl, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.lj = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.km, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = sdiv exact i64 %i.lm, 112               ; 2 uses
  %i.lo = shl i64 %i.ln, 32
  %i.lp = ashr exact i64 %i.lo, 32
  %i.lq = icmp slt i64 %indvars.iv.next249, %i.lp
  br i1 %i.lq, label %.lr.ph, label %._crit_edge, !llvm.loop !1645

bb.aw:                                            ; preds = %bb.af
  %i.lr = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.lr, label %bb.ay, label %.preheader203

.preheader203:                                    ; preds = %bb.aw
  %i.ls = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.lt = load ptr, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = lshr exact i64 %i.lw, 3
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader203, %bb.ax
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %bb.ax ], [ 1, %.preheader203 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ 0, %.preheader203 ] ; 6 uses
  %i.ma = phi ptr [ %i.om, %bb.ax ], [ %i.lt, %.preheader203 ]
  %i.mb = load ptr, ptr %i.gr, align 8, !tbaa !479
  %i.mc = load ptr, ptr %i.go, align 8, !tbaa !476 ; 2 uses
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = shl i64 %i.mf, 30
  %i.mh = ashr i64 %i.mg, 32
  %.not.i.i142 = icmp slt i64 %indvars.iv, %i.mh
  call void @llvm.assume(i1 %.not.i.i142)
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !97 ; 2 uses
  %i.mk = icmp sgt i32 %i.mj, -1
  call void @llvm.assume(i1 %i.mk)
  %i.ml = zext nneg i32 %i.mj to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !378
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.mn)
  %i.mo = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144, label %bb.ax

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.mq = load ptr, ptr %i.gr, align 8, !tbaa !479
  %i.mr = load ptr, ptr %i.go, align 8, !tbaa !476 ; 2 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = shl i64 %i.mu, 30
  %i.mw = ashr i64 %i.mv, 32
  %.not.i.i143 = icmp slt i64 %indvars.iv, %i.mw
  call void @llvm.assume(i1 %.not.i.i143)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !97 ; 2 uses
  %i.mz = icmp sgt i32 %i.my, -1
  call void @llvm.assume(i1 %i.mz)
  %i.na = zext nneg i32 %i.my to i64
  %i.nb = load ptr, ptr %i.i, align 8, !tbaa !393
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.na
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !378
  %i.ne = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.nd)
  br i1 %i.ne, label %.preheader201, label %bb.ax

.preheader201:                                    ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144
  %i.nf = trunc nuw nsw i64 %indvars.iv to i32
  %.059219 = add nuw nsw i32 %i.nf, 1
  %i.ng = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.nh = load ptr, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = lshr exact i64 %i.nk, 3
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = icmp slt i32 %.059219, %i.nm
  br i1 %i.nn, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147: ; preds = %.preheader201, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147
  %indvars.iv242.a = phi i64 [ %indvars.iv.next243.a, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147 ], [ %indvars.iv239, %.preheader201 ] ; 3 uses
  %i.no = phi ptr [ %i.od, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147 ], [ %i.nh, %.preheader201 ]
  %i.np = load ptr, ptr %i.gr, align 8, !tbaa !479
  %i.nq = load ptr, ptr %i.go, align 8, !tbaa !476 ; 2 uses
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = shl i64 %i.nt, 30
  %i.nv = ashr i64 %i.nu, 32
  %.not.i.i146 = icmp slt i64 %indvars.iv242.a, %i.nv
  call void @llvm.assume(i1 %.not.i.i146)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv242.a
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !97 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, -1
  call void @llvm.assume(i1 %i.ny)
  %i.nz = zext nneg i32 %i.nx to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !378
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ob)
  %indvars.iv.next243.a = add nuw nsw i64 %indvars.iv242.a, 1 ; 2 uses
  %i.oc = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.od = load ptr, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = lshr exact i64 %i.og, 3
  %i.oi = trunc i64 %i.oh to i32
  %i.oj = trunc nuw i64 %indvars.iv.next243.a to i32
  %i.ok = icmp slt i32 %i.oj, %i.oi
  br i1 %i.ok, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147, label %.loopexit, !llvm.loop !1646

bb.ax:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ol = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.om = load ptr, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = shl i64 %i.op, 29
  %i.or = ashr i64 %i.oq, 32
  %i.os = icmp slt i64 %indvars.iv.next, %i.or
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  br i1 %i.os, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1647

bb.ay:                                            ; preds = %bb.aw
  %i.ot = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.ot, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ay
  %i.ou = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.ov = load ptr, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = lshr exact i64 %i.oy, 3
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150 ], [ 0, %.preheader ] ; 3 uses
  %i.pc = phi ptr [ %i.pr, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150 ], [ %i.ov, %.preheader ]
  %i.pd = load ptr, ptr %i.gr, align 8, !tbaa !479
  %i.pe = load ptr, ptr %i.go, align 8, !tbaa !476 ; 2 uses
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = shl i64 %i.ph, 30
  %i.pj = ashr i64 %i.pi, 32
  %.not.i.i149 = icmp slt i64 %indvars.iv245, %i.pj
  call void @llvm.assume(i1 %.not.i.i149)
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv245
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !97 ; 2 uses
  %i.pm = icmp sgt i32 %i.pl, -1
  call void @llvm.assume(i1 %i.pm)
  %i.pn = zext nneg i32 %i.pl to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pn
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !378
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.pp)
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.pq = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.pr = load ptr, ptr %i.i, align 8, !tbaa !393 ; 2 uses
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = shl i64 %i.pu, 29
  %i.pw = ashr i64 %i.pv, 32
  %i.px = icmp slt i64 %indvars.iv.next246, %i.pw
  br i1 %i.px, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150, label %.loopexit, !llvm.loop !1648

.loopexit:                                        ; preds = %bb.ax, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150, %.preheader203, %.preheader201, %.preheader, %bb.ay, %._crit_edge
  %i.py = icmp eq i32 %.062224, %i.gu
  %or.cond5 = select i1 %i.py, i1 true, i1 %i.gl
  br i1 %or.cond5, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.loopexit
  %i.pz = load ptr, ptr %i.gb, align 8, !tbaa !509
  %i.qa = load ptr, ptr %i.fx, align 8, !tbaa !87
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 112
  %i.qc = load ptr, ptr %i.qb, align 8
  call void %i.qc(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.pz)
  %i.qd = load ptr, ptr %i.gq, align 8, !tbaa !510, !noalias !1665 ; 2 uses
  %i.qe = load ptr, ptr %i.gp, align 8, !tbaa !510, !noalias !1666 ; 2 uses
  %.not4.i152 = icmp eq ptr %i.qd, %i.qe
  br i1 %.not4.i152, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %bb.az, %.lr.ph.i153
  %.sroa.0196.0 = phi ptr [ %i.qf, %.lr.ph.i153 ], [ %i.qd, %bb.az ]
  %i.qf = getelementptr inbounds i8, ptr %.sroa.0196.0, i64 -8 ; 3 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !507 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !87
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qg), !inline_history !1653
  %.not.i154 = icmp eq ptr %i.qf, %i.qe
  br i1 %.not.i154, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i153, !llvm.loop !1654

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i153, %bb.az
  %i.qk = load ptr, ptr %i.gb, align 8, !tbaa !509
  %i.ql = load ptr, ptr %i.fx, align 8, !tbaa !87
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 120
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.qk)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %.loopexit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.qo = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.qp = sub nsw i64 %i.qo, %i.hp
  %i.qq = sdiv i64 %i.qp, 1000000
  store i64 %i.qq, ptr %i.gv, align 8, !tbaa !484
  %i.qr = load ptr, ptr %i.gb, align 8, !tbaa !509
  %i.qs = load ptr, ptr %i.fx, align 8, !tbaa !87
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 128
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.qr, i32 noundef %.062224)
  %i.qv = load ptr, ptr %i.i, align 8, !tbaa !377 ; 3 uses
  %i.qw = load ptr, ptr %i.j, align 8, !tbaa !377 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.qv, %i.qw
  br i1 %.not7.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %i.qx = phi ptr [ %i.re, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.qw, %bb.ba ]
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ 0, %bb.ba ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.rg, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.qv, %bb.ba ] ; 2 uses
  %i.qy = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !378 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 112
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !391, !range !70, !noundef !71
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.bb, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.rc = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.qy)
  %i.rd = zext i1 %i.rc to i32
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !377
  br label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i
  %i.re = phi ptr [ %i.qx, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i, %bb.bb ] ; 4 uses
  %i.rf = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.rd, %bb.bb ]
  %spec.select.i.i.i.i = add nuw nsw i32 %i.rf, %.09.i.i.i.i ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.rg, %i.re
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i: ; preds = %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %.not.i.i155 = icmp eq i32 %spec.select.i.i.i.i, 0
  br i1 %.not.i.i155, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i: ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i, %bb.ba
  %i.rh = phi ptr [ %i.re, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %i.qv, %bb.ba ] ; 3 uses
  %i.ri = load ptr, ptr %i.gx, align 8, !tbaa !327
  %i.rj = load ptr, ptr %i.gw, align 8, !tbaa !329 ; 2 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = sdiv exact i64 %i.rm, 112               ; 5 uses
  %i.ro = trunc i64 %i.rn to i32
  %i.rp = icmp sgt i32 %i.ro, 0
  br i1 %i.rp, label %.lr.ph.preheader.i.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i
  %wide.trip.count.i.i.i = and i64 %i.rn, 2147483647
  br label %.lr.ph.i.i.i

bb.bc:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit, label %.lr.ph.i.i.i, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bc ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.rn
  br i1 %exitcond.not.i.i.i, label %bb.bd, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.557, i64 noundef %i.rn, i64 noundef %i.rn) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.rq = getelementptr inbounds nuw [112 x i8], ptr %i.rj, i64 %indvars.iv.i.i.i
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !326
  %i.rs = add i32 %i.rr, -3
  %spec.select.i.i1.i.i = icmp ult i32 %i.rs, -2
  br i1 %spec.select.i.i1.i.i, label %bb.bc, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

_ZNK7testing8internal12UnitTestImpl6PassedEv.exit: ; preds = %bb.bc, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i
  %i.rt = phi ptr [ %i.rh, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i ], [ %i.re, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %i.rh, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ %i.rh, %bb.bc ] ; 2 uses
  %i.ru = phi i1 [ %.063223, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i ], [ true, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %.063223, %bb.bc ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ] ; 2 uses
  %i.rv = load ptr, ptr %i.i, align 8, !tbaa !393 ; 3 uses
  %.not.i156 = icmp eq ptr %i.rt, %i.rv
  br i1 %.not.i156, label %_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit
  %i.rw = ptrtoint ptr %i.rt to i64
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = sub i64 %i.rw, %i.rx
  %i.rz = ashr exact i64 %i.ry, 3
  %i.sa = load ptr, ptr %i.go, align 8, !tbaa !476
  br label %bb.be

bb.be:                                            ; preds = %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, %.lr.ph.i157
  %.05.i = phi i64 [ 0, %.lr.ph.i157 ], [ %i.st, %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i ] ; 4 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.05.i
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !378 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 72
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 80
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !479 ; 2 uses
  %i.sg = load ptr, ptr %i.sd, align 8, !tbaa !476 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.sf, %i.sg
  br i1 %.not.i.i158, label %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.be
  %i.sh = ptrtoint ptr %i.sf to i64
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = ashr exact i64 %i.sj, 2                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.sk, 8
  br i1 %min.iters.check, label %.lr.ph.i.i159.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.sk, -8                      ; 3 uses
  br label %vector.body
end_hunk_1
