Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/gtest-all?download=true
inline.NumInlined: 9417
inline.NumDeleted: 2443
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7testing9TestSuite3RunEv:bb.a
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit22:       ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit", %bb.r, %bb.t
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 640 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2198 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.v, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !598
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

bb.v:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %i.bf = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bf, align 8, !tbaa !598
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !2198
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

_ZN7testing8UnitTest16UponLeavingGTestEv.exit:    ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i, %bb.v
  %i.bg = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.v ], [ %.pre.i, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bh = phi ptr [ %i.bf, %bb.v ], [ %i.bd, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bh), !call_target !2210, !inline_history !14292
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.220)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2121 ; 3 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !2123 ; 14 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 112               ; 8 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %wide.trip.count.i = and i64 %i.br, 2147483647  ; 2 uses
  br label %.lr.ph.i

bb.w:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !503

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.br
  br i1 %exitcond.not.i, label %bb.x, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.x:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.br, i64 noundef %i.br) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.bu = getelementptr inbounds nuw [112 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !2120
  %i.bw = add i32 %i.bv, -1
  %spec.select.i.i = icmp ult i32 %i.bw, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.w

bb.y:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !503

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.y
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.y ], [ 0, %bb.w ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.br
  br i1 %exitcond.not.i.i, label %bb.z, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.z:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.br, i64 noundef %i.br) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !2120
  %i.bz = add i32 %i.by, -1
  %spec.select.i.i.i = icmp ult i32 %i.bz, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.y

.loopexit.i:                                      ; preds = %bb.y, %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %.not7.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.ca = add i64 %i.bo, -112
  %i.cb = sub i64 %i.ca, %i.bp                    ; 2 uses
  %i.cc = udiv i64 %i.cb, 112
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.cd, 576460752303423480      ; 3 uses
  %i.ce = mul i64 %n.vec, 112
  %i.cf = getelementptr i8, ptr %i.bn, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.cg = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.cg
  %i.ch = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep110 = getelementptr i8, ptr %i.ch, i64 112
  %i.ci = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep111 = getelementptr i8, ptr %i.ci, i64 224
  %i.cj = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep112 = getelementptr i8, ptr %i.cj, i64 336
  %i.ck = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep113 = getelementptr i8, ptr %i.ck, i64 448
  %i.cl = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep114 = getelementptr i8, ptr %i.cl, i64 560
  %i.cm = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep115 = getelementptr i8, ptr %i.cm, i64 672
  %i.cn = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep116 = getelementptr i8, ptr %i.cn, i64 784
  %i.co = load i32, ptr %next.gep, align 8, !tbaa !2120
  %i.cp = load i32, ptr %next.gep110, align 8, !tbaa !2120
  %i.cq = load i32, ptr %next.gep111, align 8, !tbaa !2120
  %i.cr = load i32, ptr %next.gep112, align 8, !tbaa !2120
  %i.cs = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cp, i64 1
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cq, i64 2
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cr, i64 3
  %i.cw = load i32, ptr %next.gep113, align 8, !tbaa !2120
  %i.cx = load i32, ptr %next.gep114, align 8, !tbaa !2120
  %i.cy = load i32, ptr %next.gep115, align 8, !tbaa !2120
  %i.cz = load i32, ptr %next.gep116, align 8, !tbaa !2120
  %i.da = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 1
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cy, i64 2
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.cz, i64 3
  %i.de = icmp eq <4 x i32> %i.cv, splat (i32 3)
  %i.df = icmp eq <4 x i32> %i.dd, splat (i32 3)
  %i.dg = zext <4 x i1> %i.de to <4 x i32>
  %i.dh = zext <4 x i1> %i.df to <4 x i32>
  %i.di = add <4 x i32> %vec.phi, %i.dg           ; 2 uses
  %i.dj = add <4 x i32> %vec.phi109, %i.dh        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !15638

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader125

.lr.ph.i1.i.preheader125:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.dl, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i1.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader125, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i23, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader125 ]
  %.sroa.04.08.i.i = phi ptr [ %i.dp, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader125 ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !2120
  %i.dn = icmp eq i32 %i.dm, 3
  %i.do = zext i1 %i.dn to i32
  %spec.select.i.i23 = add nuw nsw i32 %.09.i.i, %i.do ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, %i.bm
  br i1 %.not.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !15639

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dl, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.dq = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.dr = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.dq, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.ds = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #55
  %i.dt = sdiv i64 %i.ds, 1000000
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !14301
  %i.dv = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.dw = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !14214 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = lshr exact i64 %i.ea, 3
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit41.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit41.thread ] ; 6 uses
  %i.eg = phi ptr [ %i.dx, %.lr.ph ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit41.thread ]
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !14299
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !14296 ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = shl i64 %i.el, 30
  %i.en = ashr i64 %i.em, 32
  %.not.i.i24 = icmp slt i64 %indvars.iv, %i.en
  tail call void @llvm.assume(i1 %.not.i.i24)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !608 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, -1
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = zext nneg i32 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !14205 ; 2 uses
  br i1 %i.dr, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.aa
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.et)
  br label %bb.ab

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26: ; preds = %bb.aa
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.et)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.eu = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.ev = trunc nuw i8 %i.eu to i1
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !14214 ; 5 uses
  br i1 %i.ev, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, label %_ZNK7testing10TestResult6FailedEv.exit41.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29: ; preds = %bb.ab
  %i.ew = load ptr, ptr %i.ef, align 8, !tbaa !14299
  %i.ex = load ptr, ptr %i.ee, align 8, !tbaa !14296 ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = shl i64 %i.fa, 30
  %i.fc = ashr i64 %i.fb, 32
  %.not.i.i28 = icmp slt i64 %indvars.iv, %i.fc
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !608 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !14205 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 200
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 208
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2121
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !2123 ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sdiv exact i64 %i.fp, 112               ; 5 uses
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.preheader.i32, label %_ZNK7testing10TestResult6FailedEv.exit41.thread

.lr.ph.preheader.i32:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29
  %wide.trip.count.i33 = and i64 %i.fq, 2147483647
  br label %.lr.ph.i34

bb.ac:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond16.not.i40 = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i33
  br i1 %exitcond16.not.i40, label %_ZNK7testing10TestResult6FailedEv.exit41.thread, label %.lr.ph.i34, !llvm.loop !503

.lr.ph.i34:                                       ; preds = %bb.ac, %.lr.ph.preheader.i32
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.preheader.i32 ], [ %indvars.iv.next.i39, %bb.ac ] ; 3 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.i35, %i.fq
  br i1 %exitcond.not.i36, label %bb.ad, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37

bb.ad:                                            ; preds = %.lr.ph.i34
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.fq, i64 noundef %i.fq) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37: ; preds = %.lr.ph.i34
  %i.ft = getelementptr inbounds nuw [112 x i8], ptr %i.fm, i64 %indvars.iv.i35
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !2120
  %i.fv = add i32 %i.fu, -1
  %spec.select.i.i38 = icmp ult i32 %i.fv, 2
  br i1 %spec.select.i.i38, label %_ZNK7testing10TestResult6FailedEv.exit41.preheader, label %bb.ac

_ZNK7testing10TestResult6FailedEv.exit41.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32
  %.067 = add nuw nsw i32 %i.fw, 1                ; 2 uses
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %.pre to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = lshr exact i64 %i.ga, 3
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = icmp slt i32 %.067, %i.gc
  br i1 %i.gd, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43.preheader, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43.preheader: ; preds = %_ZNK7testing10TestResult6FailedEv.exit41.preheader
  %1 = zext nneg i32 %.067 to i64
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43
  %indvars.iv79 = phi i64 [ %1, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43.preheader ], [ %indvars.iv.next80, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43 ] ; 3 uses
  %i.ge = phi ptr [ %.pre, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43.preheader ], [ %i.gt, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43 ]
  %i.gf = load ptr, ptr %i.ef, align 8, !tbaa !14299
  %i.gg = load ptr, ptr %i.ee, align 8, !tbaa !14296 ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = shl i64 %i.gj, 30
  %i.gl = ashr i64 %i.gk, 32
  %.not.i.i42 = icmp slt i64 %indvars.iv79, %i.gl
  tail call void @llvm.assume(i1 %.not.i.i42)
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv79
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !608 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, -1
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = zext nneg i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !14205
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gr)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.gs = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !14214 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = lshr exact i64 %i.gw, 3
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = trunc nuw i64 %indvars.iv.next80 to i32
  %i.ha = icmp slt i32 %i.gz, %i.gy
  br i1 %i.ha, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, label %.loopexit, !llvm.loop !15640

_ZNK7testing10TestResult6FailedEv.exit41.thread:  ; preds = %bb.ac, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %.pre to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = shl i64 %i.he, 29
  %i.hg = ashr i64 %i.hf, 32
  %i.hh = icmp slt i64 %indvars.iv.next, %i.hg
  br i1 %i.hh, label %bb.aa, label %.loopexit, !llvm.loop !15641

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit41.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit41.preheader
  %i.hi = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.hj = sub nsw i64 %i.hi, %i.dv
  %i.hk = sdiv i64 %i.hj, 1000000
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !14302
  %i.hm = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %bb.ae, label %_ZN7testing8UnitTest11GetInstanceEv.exit46, !prof !609

bb.ae:                                            ; preds = %.loopexit
  %i.ho = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i45 = icmp eq i32 %i.ho, 0
  br i1 %.not.i45, label %_ZN7testing8UnitTest11GetInstanceEv.exit46, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ag unwind label %bb.ah, !inline_history !2062

bb.ag:                                            ; preds = %bb.af
  %i.hp = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit46

bb.ah:                                            ; preds = %bb.af
  %i.hq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit46:       ; preds = %.loopexit, %bb.ae, %bb.ag
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 640 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !2198 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.ai, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %.pre.i48 = load ptr, ptr %i.ht, align 8, !tbaa !598
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

bb.ai:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %i.hv = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hv, align 8, !tbaa !598
  store ptr %i.hv, ptr %i.hs, align 8, !tbaa !2198
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

_ZN7testing8UnitTest16UponLeavingGTestEv.exit49:  ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47, %bb.ai
  %i.hw = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.ai ], [ %.pre.i48, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.hx = phi ptr [ %i.hv, %bb.ai ], [ %i.ht, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  tail call void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hx), !call_target !2210, !inline_history !14292
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.221)
  %i.ia = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.ic = load ptr, ptr %i.ib, align 8
  tail call void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2283
  %i.id = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 104
  %i.if = load ptr, ptr %i.ie, align 8
  tail call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2284
  %i.ig = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.aj, label %_ZN7testing8UnitTest11GetInstanceEv.exit51, !prof !609

bb.aj:                                            ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49
  %i.ii = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i50 = icmp eq i32 %i.ii, 0
  br i1 %.not.i50, label %_ZN7testing8UnitTest11GetInstanceEv.exit51, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.al unwind label %bb.am, !inline_history !2062

bb.al:                                            ; preds = %bb.ak
  %i.ij = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit51

bb.am:                                            ; preds = %bb.ak
  %i.ik = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit51:       ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49, %bb.aj, %bb.al
  tail call void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef null)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %_ZN7testing8UnitTest11GetInstanceEv.exit51
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1654)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.455, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.h, align 8, !tbaa !2189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !614
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 472
  store ptr %1, ptr %i.l, align 8, !tbaa !2245
  store i8 0, ptr %i.i, align 8, !tbaa !2190
  %i.m = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1666)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.457, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.m)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.q, %bb.g ]
  %i.s = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.s) #61
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit69: ; preds = %.lr.ph.i.i66, %bb.o
  %i.fo = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.fp = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.fo), !call_target !2264
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit69
  %i.fs = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.fs, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %bb.p
  %i.ft = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bb.r, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.r:                                             ; preds = %bb.q
  %i.fv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i70 = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i70, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.t unwind label %bb.u, !inline_history !2

bb.t:                                             ; preds = %bb.s
  %i.fw = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.ay, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.u ], [ %i.qp, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.s
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.q, %bb.r, %bb.t
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 480
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !714 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ga, null
  br i1 %.not.i71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.w:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 472
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !2245 ; 2 uses
  %.not4.i = icmp eq ptr %i.gd, null
  br i1 %.not4.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.y:                                             ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.v, %bb.x, %bb.y
  %.0.i = phi ptr [ %i.gb, %bb.v ], [ %i.ge, %bb.x ], [ %i.gf, %bb.y ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !2121 ; 2 uses
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !2123 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 112               ; 2 uses
  %i.go = trunc i64 %i.gn to i32
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.gq = load ptr, ptr @stdout, align 8, !tbaa !719
  %i.gr = call i32 @fflush(ptr noundef %i.gq)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.af
  %i.gs = phi ptr [ %i.hp, %bb.af ], [ %i.gj, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.gt = phi ptr [ %i.hq, %bb.af ], [ %i.gi, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %bb.af ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.gu = phi i64 [ %i.hu, %bb.af ], [ %i.gn, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.gu, %indvars.iv165
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %indvars.iv165, i64 noundef %i.gu) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.gv = getelementptr inbounds nuw [112 x i8], ptr %i.gs, i64 %indvars.iv165 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !2120
  %i.gx = icmp eq i32 %i.gw, 3
  br i1 %i.gx, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !589 ; 4 uses
  store ptr %i.da, ptr %2, align 8, !tbaa !586
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %.noexc, label %bb.ab

.noexc:                                           ; preds = %bb.aa
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.hb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.hb, ptr %i.a, align 8, !tbaa !591
  %i.hc = icmp ugt i64 %i.hb, 15
  br i1 %i.hc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ab
  %i.hd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.hd, ptr %2, align 8, !tbaa !589
  %i.he = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.he, ptr %i.da, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.ab
  %i.hf = phi ptr [ %i.hd, %.noexc.i ], [ %i.da, %bb.ab ] ; 2 uses
  switch i64 %i.hb, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.hg = load i8, ptr %i.gz, align 1, !tbaa !592
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !592
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr nonnull align 1 %i.gz, i64 %i.hb, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i
  %i.hh = load i64, ptr %i.a, align 8, !tbaa !591 ; 2 uses
  store i64 %i.hh, ptr %i.db, align 8, !tbaa !590
  %i.hi = load ptr, ptr %2, align 8, !tbaa !589
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.hk = load ptr, ptr %2, align 8, !tbaa !589
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.hk) ; 0 uses
  %i.hl = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.da
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.hn = load i64, ptr %i.da, align 8, !tbaa !592
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.gh, align 8, !tbaa !2121
  %.pre168 = load ptr, ptr %i.gg, align 8, !tbaa !2123
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.hp = phi ptr [ %.pre168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gs, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.hq = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gt, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 112               ; 2 uses
  %i.hv = shl i64 %i.hu, 32
  %i.hw = ashr exact i64 %i.hv, 32
  %i.hx = icmp slt i64 %indvars.iv.next166, %i.hw
  br i1 %i.hx, label %.lr.ph, label %._crit_edge, !llvm.loop !16088

bb.ag:                                            ; preds = %bb.p
  %i.hy = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.hy, label %bb.ai, label %.preheader108

.preheader108:                                    ; preds = %bb.ag
  %i.hz = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.ia = load ptr, ptr %i.cv, align 8, !tbaa !14203 ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = lshr exact i64 %i.id, 3
  %i.if = trunc i64 %i.ie to i32
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader108, %bb.ah
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ 0, %.preheader108 ] ; 6 uses
  %i.ih = phi ptr [ %i.kt, %bb.ah ], [ %i.ia, %.preheader108 ]
  %i.ii = load ptr, ptr %i.cz, align 8, !tbaa !14299
  %i.ij = load ptr, ptr %i.cu, align 8, !tbaa !14296 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = shl i64 %i.im, 30
  %i.io = ashr i64 %i.in, 32
  %.not.i.i74 = icmp slt i64 %indvars.iv, %i.io
  call void @llvm.assume(i1 %.not.i.i74)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !608 ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, -1
  call void @llvm.assume(i1 %i.ir)
  %i.is = zext nneg i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !14188
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.iu)
  %i.iv = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i76, label %bb.ah

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i76: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.ix = load ptr, ptr %i.cz, align 8, !tbaa !14299
  %i.iy = load ptr, ptr %i.cu, align 8, !tbaa !14296 ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = shl i64 %i.jb, 30
  %i.jd = ashr i64 %i.jc, 32
  %.not.i.i75 = icmp slt i64 %indvars.iv, %i.jd
  call void @llvm.assume(i1 %.not.i.i75)
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !608 ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, -1
  call void @llvm.assume(i1 %i.jg)
  %i.jh = zext nneg i32 %i.jf to i64
  %i.ji = load ptr, ptr %i.cv, align 8, !tbaa !14203
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jh
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !14188
  %i.jl = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.jk)
  br i1 %i.jl, label %.preheader106, label %bb.ah

.preheader106:                                    ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i76
  %i.jm = trunc nuw nsw i64 %indvars.iv to i32
  %.056131 = add nuw nsw i32 %i.jm, 1             ; 2 uses
  %i.jn = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.jo = load ptr, ptr %i.cv, align 8, !tbaa !14203 ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = lshr exact i64 %i.jr, 3
  %i.jt = trunc i64 %i.js to i32
  %i.ju = icmp slt i32 %.056131, %i.jt
  br i1 %i.ju, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79.preheader, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79.preheader: ; preds = %.preheader106
  %3 = zext nneg i32 %.056131 to i64
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79
  %indvars.iv159.a = phi i64 [ %3, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79.preheader ], [ %indvars.iv.next160.a, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79 ] ; 3 uses
  %i.jv = phi ptr [ %i.jo, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79.preheader ], [ %i.kk, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79 ]
  %i.jw = load ptr, ptr %i.cz, align 8, !tbaa !14299
  %i.jx = load ptr, ptr %i.cu, align 8, !tbaa !14296 ; 2 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = shl i64 %i.ka, 30
  %i.kc = ashr i64 %i.kb, 32
  %.not.i.i78 = icmp slt i64 %indvars.iv159.a, %i.kc
  call void @llvm.assume(i1 %.not.i.i78)
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv159.a
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !608 ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, -1
  call void @llvm.assume(i1 %i.kf)
  %i.kg = zext nneg i32 %i.ke to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.kg
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !14188
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ki)
  %indvars.iv.next160.a = add nuw nsw i64 %indvars.iv159.a, 1 ; 2 uses
  %i.kj = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.kk = load ptr, ptr %i.cv, align 8, !tbaa !14203 ; 2 uses
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = lshr exact i64 %i.kn, 3
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = trunc nuw i64 %indvars.iv.next160.a to i32
  %i.kr = icmp slt i32 %i.kq, %i.kp
  br i1 %i.kr, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79, label %.loopexit, !llvm.loop !16089

bb.ah:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ks = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.kt = load ptr, ptr %i.cv, align 8, !tbaa !14203 ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = shl i64 %i.kw, 29
  %i.ky = ashr i64 %i.kx, 32
  %i.kz = icmp slt i64 %indvars.iv.next, %i.ky
  br i1 %i.kz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !16090

bb.ai:                                            ; preds = %bb.ag
  %i.la = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.la, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ai
  %i.lb = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.lc = load ptr, ptr %i.cv, align 8, !tbaa !14203 ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = lshr exact i64 %i.lf, 3
  %i.lh = trunc i64 %i.lg to i32
  %i.li = icmp sgt i32 %i.lh, 0
  br i1 %i.li, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i82, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i82: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i82
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i82 ], [ 0, %.preheader ] ; 3 uses
  %i.lj = phi ptr [ %i.ly, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i82 ], [ %i.lc, %.preheader ]
  %i.lk = load ptr, ptr %i.cz, align 8, !tbaa !14299
  %i.ll = load ptr, ptr %i.cu, align 8, !tbaa !14296 ; 2 uses
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = shl i64 %i.lo, 30
  %i.lq = ashr i64 %i.lp, 32
  %.not.i.i81 = icmp slt i64 %indvars.iv162, %i.lq
  call void @llvm.assume(i1 %.not.i.i81)
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv162
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !608 ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, -1
  call void @llvm.assume(i1 %i.lt)
  %i.lu = zext nneg i32 %i.ls to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !14188
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.lw)
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.lx = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.ly = load ptr, ptr %i.cv, align 8, !tbaa !14203 ; 2 uses
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = shl i64 %i.mb, 29
  %i.md = ashr i64 %i.mc, 32
  %i.me = icmp slt i64 %indvars.iv.next163, %i.md
  br i1 %i.me, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i82, label %.loopexit, !llvm.loop !16091

.loopexit:                                        ; preds = %bb.ah, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i79, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i82, %.preheader108, %.preheader106, %.preheader, %bb.ai, %._crit_edge
  %i.mf = icmp eq i32 %.060136, %i.dc
  %or.cond5 = select i1 %i.mf, i1 true, i1 %i.cr
  br i1 %or.cond5, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.loopexit
  %i.mg = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.mh = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 112
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.mg), !call_target !2285
  %i.mk = load ptr, ptr %i.cy, align 8, !tbaa !14330, !noalias !16102 ; 2 uses
  %i.ml = load ptr, ptr %i.cx, align 8, !tbaa !14330, !noalias !16103 ; 2 uses
  %.not4.i84 = icmp eq ptr %i.mk, %i.ml
  br i1 %.not4.i84, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.aj, %.lr.ph.i85
  %.sroa.0100.0 = phi ptr [ %i.mm, %.lr.ph.i85 ], [ %i.mk, %bb.aj ]
  %i.mm = getelementptr inbounds i8, ptr %.sroa.0100.0, i64 -8 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !14327 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !598
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mn), !call_target !16104, !inline_history !16096
  %.not.i86 = icmp eq ptr %i.mm, %i.ml
  br i1 %.not.i86, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i85, !llvm.loop !16097

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i85, %bb.aj
  %i.mr = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.ms = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 120
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.mr), !call_target !2286
  br label %bb.ak

bb.ak:                                            ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %.loopexit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.mv = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.mw = sub nsw i64 %i.mv, %i.dw
  %i.mx = sdiv i64 %i.mw, 1000000
  store i64 %i.mx, ptr %i.dd, align 8, !tbaa !14304
  %i.my = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.mz = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 128
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.my, i32 noundef %.060136), !call_target !2287
  %i.nc = load ptr, ptr %i.cv, align 8, !tbaa !14187 ; 4 uses
  %i.nd = load ptr, ptr %i.cw, align 8, !tbaa !14187 ; 3 uses
  %.not7.i.i.i.i = icmp eq ptr %i.nc, %i.nd       ; 2 uses
  br i1 %.not7.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ 0, %bb.ak ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ot, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.nc, %bb.ak ] ; 2 uses
  %i.ne = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !14188 ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 112
  %i.ng = load i8, ptr %i.nf, align 8, !tbaa !14201, !range !581, !noundef !582
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.al, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !14204 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 56
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !14204 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.nj, %i.nl
  br i1 %.not7.i.i.i, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %.lr.ph.i.i.i93

.lr.ph.i.i.i93:                                   ; preds = %bb.al, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ 0, %bb.al ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.oe, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ %i.nj, %bb.al ] ; 2 uses
  %i.nm = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !14205 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 128
  %i.no = load i8, ptr %i.nn, align 8, !tbaa !14208, !range !581, !noundef !582
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.am, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

bb.am:                                            ; preds = %.lr.ph.i.i.i93
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 200
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 208
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !2121
  %i.nt = load ptr, ptr %i.nq, align 8, !tbaa !2123 ; 2 uses
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %i.nx = sdiv exact i64 %i.nw, 112               ; 5 uses
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %.lr.ph.preheader.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.am
  %wide.trip.count.i.i.i.i = and i64 %i.nx, 2147483647
  br label %.lr.ph.i.i.i.i99

bb.an:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %.lr.ph.i.i.i.i99, !llvm.loop !503

.lr.ph.i.i.i.i99:                                 ; preds = %bb.an, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.an ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.nx
  br i1 %exitcond.not.i.i.i.i, label %bb.ao, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i99
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.nx, i64 noundef %i.nx) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i99
  %i.oa = getelementptr inbounds nuw [112 x i8], ptr %i.nt, i64 %indvars.iv.i.i.i.i
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !2120
  %i.oc = add i32 %i.ob, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.oc, 2
  br i1 %spec.select.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %bb.an

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %bb.an, %bb.am, %.lr.ph.i.i.i93
  %i.od = phi i32 [ 0, %.lr.ph.i.i.i93 ], [ 0, %bb.am ], [ 0, %bb.an ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i ]
  %spec.select.i.i.i = add nuw nsw i32 %i.od, %.09.i.i.i ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.oe, %i.nl
  br i1 %.not.i.i.i94, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, label %.lr.ph.i.i.i93, !llvm.loop !504

_ZNK7testing9TestSuite17failed_test_countEv.exit.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.not.i95 = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %.not.i95, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i: ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, %bb.al
  %i.of = getelementptr inbounds nuw i8, ptr %i.ne, i64 192
  %i.og = getelementptr inbounds nuw i8, ptr %i.ne, i64 200
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !2121
  %i.oi = load ptr, ptr %i.of, align 8, !tbaa !2123 ; 2 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = sdiv exact i64 %i.ol, 112               ; 5 uses
  %i.on = trunc i64 %i.om to i32
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %.lr.ph.preheader.i.i96, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

.lr.ph.preheader.i.i96:                           ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i
  %wide.trip.count.i.i = and i64 %i.om, 2147483647
  br label %.lr.ph.i.i97

bb.ap:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i, label %.lr.ph.i.i97, !llvm.loop !503

.lr.ph.i.i97:                                     ; preds = %bb.ap, %.lr.ph.preheader.i.i96
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i96 ], [ %indvars.iv.next.i.i, %bb.ap ] ; 3 uses
  %exitcond.not.i.i98 = icmp eq i64 %indvars.iv.i.i, %i.om
  br i1 %exitcond.not.i.i98, label %bb.aq, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

end_hunk_1
