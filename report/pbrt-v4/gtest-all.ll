Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/gtest-all?download=true
inline.NumInlined: 5401
inline.NumDeleted: 1176
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7testing8internal27PrettyUnitTestResultPrinter20OnTestIterationStartERKNS_8UnitTestEi:bb.a
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp eq i64 %i.ab, 8
  br i1 %i.ad, label %.lr.ph.split.us.i.i.i.epil.preheader, label %.lr.ph.split.us.i.preheader.i.i.new

.lr.ph.split.us.i.preheader.i.i.new:              ; preds = %.lr.ph.split.us.i.preheader.i.i
  %unroll_iter = and i64 %i.ac, -2
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1, %.lr.ph.split.us.i.preheader.i.i.new
  %.014.us.i.i.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.i.i.new ], [ %i.bd, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1 ] ; 3 uses
  %.01213.us.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.preheader.i.i.new ], [ %i.bc, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.preheader.i.i.new ], [ %niter.next.1, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1 ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.014.us.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !174 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !183 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !183 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not7.i.i.i.i, label %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load i8, ptr %i.al, align 8, !tbaa !187, !range !92, !noundef !93
  %i.an = zext nneg i8 %i.am to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %.09.i.i.i.i, %i.an ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not.i.i.i.i, label %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.us.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ap = add nsw i32 %.0.lcssa.i.i.i.i, %.01213.us.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.014.us.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !174 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !183 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183 ; 2 uses
  %.not7.i.i.i.i.1 = icmp eq ptr %i.au, %i.aw
  br i1 %.not7.i.i.i.i.1, label %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i, %.lr.ph.i.i.i.i.1
  %.09.i.i.i.i.1 = phi i32 [ %spec.select.i.i.i.i.1, %.lr.ph.i.i.i.i.1 ], [ 0, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i ]
  %.sroa.04.08.i.i.i.i.1 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.1 ], [ %i.au, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.04.08.i.i.i.i.1, align 8, !tbaa !184
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !187, !range !92, !noundef !93
  %i.ba = zext nneg i8 %i.az to i32
  %spec.select.i.i.i.i.1 = add nuw nsw i32 %.09.i.i.i.i.1, %i.ba ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.bb, %i.aw
  br i1 %.not.i.i.i.i.1, label %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !4

_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i
  %.0.lcssa.i.i.i.i.1 = phi i32 [ 0, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i ], [ %spec.select.i.i.i.i.1, %.lr.ph.i.i.i.i.1 ]
  %i.bc = add nsw i32 %.0.lcssa.i.i.i.i.1, %i.ap  ; 3 uses
  %i.bd = add nuw i64 %.014.us.i.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7testing8UnitTest17test_to_run_countEv.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.i.i.i, !llvm.loop !6

_ZNK7testing8UnitTest17test_to_run_countEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.1
  %i.be = and i64 %i.ab, 8
  %lcmp.mod.not = icmp eq i64 %i.be, 0
  br i1 %lcmp.mod.not, label %_ZNK7testing8UnitTest17test_to_run_countEv.exit, label %.lr.ph.split.us.i.i.i.epil.preheader

.lr.ph.split.us.i.i.i.epil.preheader:             ; preds = %_ZNK7testing8UnitTest17test_to_run_countEv.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader.i.i
  %.014.us.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader.i.i ], [ %i.bd, %_ZNK7testing8UnitTest17test_to_run_countEv.exit.loopexit.unr-lcssa ]
  %.01213.us.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.i.preheader.i.i ], [ %i.bc, %_ZNK7testing8UnitTest17test_to_run_countEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.014.us.i.i.i.epil.init
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !174 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !183 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !183 ; 2 uses
  %.not7.i.i.i.i.epil = icmp eq ptr %i.bi, %i.bk
  br i1 %.not7.i.i.i.i.epil, label %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.epil, label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.split.us.i.i.i.epil.preheader, %.lr.ph.i.i.i.i.epil
  %.09.i.i.i.i.epil = phi i32 [ %spec.select.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.split.us.i.i.i.epil.preheader ]
  %.sroa.04.08.i.i.i.i.epil = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.epil ], [ %i.bi, %.lr.ph.split.us.i.i.i.epil.preheader ] ; 2 uses
  %i.bl = load ptr, ptr %.sroa.04.08.i.i.i.i.epil, align 8, !tbaa !184
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !187, !range !92, !noundef !93
  %i.bo = zext nneg i8 %i.bn to i32
  %spec.select.i.i.i.i.epil = add nuw nsw i32 %.09.i.i.i.i.epil, %i.bo ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.epil, i64 8 ; 2 uses
  %.not.i.i.i.i.epil = icmp eq ptr %i.bp, %i.bk
  br i1 %.not.i.i.i.i.epil, label %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.epil, label %.lr.ph.i.i.i.i.epil, !llvm.loop !4

_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.epil: ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.split.us.i.i.i.epil.preheader
  %.0.lcssa.i.i.i.i.epil = phi i32 [ 0, %.lr.ph.split.us.i.i.i.epil.preheader ], [ %spec.select.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ]
  %i.bq = add nsw i32 %.0.lcssa.i.i.i.i.epil, %.01213.us.i.i.i.epil.init
  br label %_ZNK7testing8UnitTest17test_to_run_countEv.exit

_ZNK7testing8UnitTest17test_to_run_countEv.exit:  ; preds = %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.epil, %_ZNK7testing8UnitTest17test_to_run_countEv.exit.loopexit.unr-lcssa, %bb.h
  %.012.lcssa.i.i.i = phi i32 [ 0, %bb.h ], [ %i.bc, %_ZNK7testing8UnitTest17test_to_run_countEv.exit.loopexit.unr-lcssa ], [ %i.bq, %_ZNK7testing8TestCase17test_to_run_countEv.exit.i.i.epil ]
  call fastcc void @_ZN7testingL19FormatCountableNounB5cxx11EiPKcS1_(ptr dead_on_unwind noalias nonnull writable align 8 %3, i32 noundef %.012.lcssa.i.i.i, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142)
  %i.br = load ptr, ptr %3, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !80  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 184
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !173 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 192
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !173 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not7.i.i.i, label %_ZNK7testing8UnitTest22test_case_to_run_countEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK7testing8UnitTest17test_to_run_countEv.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %_ZNK7testing8UnitTest17test_to_run_countEv.exit ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %i.bu, %_ZNK7testing8UnitTest17test_to_run_countEv.exit ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !174
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !182, !range !92, !noundef !93
  %i.ca = zext nneg i8 %i.bz to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.ca ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cb, %i.bw
  br i1 %.not.i.i.i, label %_ZNK7testing8UnitTest22test_case_to_run_countEv.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNK7testing8UnitTest22test_case_to_run_countEv.exit: ; preds = %.lr.ph.i.i.i, %_ZNK7testing8UnitTest17test_to_run_countEv.exit
  %.0.lcssa.i.i.i = phi i32 [ 0, %_ZNK7testing8UnitTest17test_to_run_countEv.exit ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  invoke fastcc void @_ZN7testingL19FormatCountableNounB5cxx11EiPKcS1_(ptr dead_on_unwind noalias nonnull writable align 8 %4, i32 noundef %.0.lcssa.i.i.i, ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.336)
          to label %_ZN7testingL19FormatTestCaseCountB5cxx11Ei.exit unwind label %bb.i

_ZN7testingL19FormatTestCaseCountB5cxx11Ei.exit:  ; preds = %_ZNK7testing8UnitTest22test_case_to_run_countEv.exit
  %i.cc = load ptr, ptr %4, align 8, !tbaa !41
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.138, ptr noundef %i.br, ptr noundef %i.cc) ; 0 uses
  %i.ce = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testingL19FormatTestCaseCountB5cxx11Ei.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !42
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testingL19FormatTestCaseCountB5cxx11Ei.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.cj = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !42
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !60
  %i.cp = call i32 @fflush(ptr noundef %i.co)     ; 0 uses
  ret void

bb.i:                                             ; preds = %_ZNK7testing8UnitTest22test_case_to_run_countEv.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.cr = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !42
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %i.cq
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal11ShouldShardEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Message", align 8  ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.testing::Message", align 8  ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.testing::Message", align 8  ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br i1 %2, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN7testing8internal17Int32FromEnvOrDieEPKci(ptr noundef %0, i32 noundef -1) ; 6 uses
  %i.b = tail call noundef i32 @_ZN7testing8internal17Int32FromEnvOrDieEPKci(ptr noundef %1, i32 noundef -1) ; 6 uses
  %i.c = icmp eq i32 %i.b, -1                     ; 2 uses
  %i.d = and i32 %i.b, %i.a
  %or.cond = icmp eq i32 %i.d, -1
  br i1 %or.cond, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i32 %i.a, -1                     ; 2 uses
  %or.cond3.not = or i1 %i.e, %i.c
  br i1 %or.cond3.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @_ZN7testing7MessageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.f = load ptr, ptr %4, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.228, i64 noundef 40)
          to label %_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit:       ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i64 noundef 17)
          to label %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.229, i64 noundef 3)
          to label %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.b)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.230, i64 noundef 16)
          to label %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, i64 noundef 18)
          to label %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.231, i64 noundef 8)
          to label %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit
  %i.o = load ptr, ptr %4, align 8, !tbaa !46     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(128) %i.o) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.s = load ptr, ptr %3, align 8, !tbaa !46, !noalias !679
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.s)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.t = load ptr, ptr %5, align 8, !tbaa !41
  call void (i32, ptr, ...) @_ZN7testing8internal13ColoredPrintfENS0_10GTestColorEPKcz(i32 noundef 1, ptr noundef %i.t)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !60
  %i.v = call i32 @fflush(ptr noundef %i.u)       ; 0 uses
  call void @exit(i32 noundef 1) #60
  unreachable

bb.g:                                             ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIiEERS0_RKT_.exit, %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit, %bb.d, %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !46     ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i31, label %_ZN7testing7MessageD2Ev.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit32

_ZN7testing7MessageD2Ev.exit32:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %_ZN7testing7MessageD2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.ac = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i33, label %_ZN7testing7MessageD2Ev.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit34

_ZN7testing7MessageD2Ev.exit34:                   ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit32
  %.pn26.pn = phi { ptr, i32 } [ %i.w, %_ZN7testing7MessageD2Ev.exit32 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %bb.y

bb.j:                                             ; preds = %bb.c
  %or.cond5 = and i1 %i.e, %i.c
  br i1 %or.cond5, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  call void @_ZN7testing7MessageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ag = load ptr, ptr %7, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 7 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.228, i64 noundef 40)
          to label %_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit35 unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit35:     ; preds = %bb.k
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, i64 noundef 18)
          to label %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit36 unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit36:     ; preds = %_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit35
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.229, i64 noundef 3)
          to label %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit37 unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit37:      ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit36
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.a)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit38 unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit38:         ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit37
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.230, i64 noundef 16)
          to label %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit39 unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit39:     ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit38
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i64 noundef 17)
          to label %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit40 unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit40:     ; preds = %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit39
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.231, i64 noundef 8)
          to label %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit41 unwind label %bb.n ; 0 uses

_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit41:      ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit40
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit41
  %i.ap = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i42, label %_ZN7testing7MessageD2Ev.exit43, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit43

_ZN7testing7MessageD2Ev.exit43:                   ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  %i.at = load ptr, ptr %6, align 8, !tbaa !46, !noalias !680
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.at)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit44 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNK7testing7Message9GetStringB5cxx11Ev.exit44:   ; preds = %_ZN7testing7MessageD2Ev.exit43
  %i.au = load ptr, ptr %8, align 8, !tbaa !41
  call void (i32, ptr, ...) @_ZN7testing8internal13ColoredPrintfENS0_10GTestColorEPKcz(i32 noundef 1, ptr noundef %i.au)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !60
  %i.aw = call i32 @fflush(ptr noundef %i.av)     ; 0 uses
  call void @exit(i32 noundef 1) #60
  unreachable

bb.n:                                             ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit40, %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit39, %_ZN7testing7MessagelsIiEERS0_RKT_.exit38, %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit37, %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit36, %_ZN7testing7MessagelsIA41_cEERS0_RKT_.exit35, %bb.k, %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit41
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i45, label %_ZN7testing7MessageD2Ev.exit46, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit46

_ZN7testing7MessageD2Ev.exit46:                   ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %_ZN7testing7MessageD2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN7testing7MessageD2Ev.exit43
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  %i.bd = load ptr, ptr %6, align 8, !tbaa !46    ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i50, label %_ZN7testing7MessageD2Ev.exit51, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit51

_ZN7testing7MessageD2Ev.exit51:                   ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZN7testing7MessageD2Ev.exit46
  %.pn23.pn = phi { ptr, i32 } [ %i.ax, %_ZN7testing7MessageD2Ev.exit46 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.bc, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %bb.y

bb.q:                                             ; preds = %bb.j
  %i.bh = icmp sgt i32 %i.b, -1
  %.not = icmp slt i32 %i.b, %i.a
  %or.cond30 = and i1 %i.bh, %.not
  br i1 %or.cond30, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  call void @_ZN7testing7MessageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %i.bi = load ptr, ptr %10, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 13 uses
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.232, i64 noundef 47)
          to label %_ZN7testing7MessagelsIA48_cEERS0_RKT_.exit unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA48_cEERS0_RKT_.exit:       ; preds = %bb.r
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i64 noundef 17)
          to label %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit52 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit52:     ; preds = %_ZN7testing7MessagelsIA48_cEERS0_RKT_.exit
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.233, i64 noundef 3)
          to label %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit53 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit53:      ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit52
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, i64 noundef 18)
          to label %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit54 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit54:     ; preds = %_ZN7testing7MessagelsIA4_cEERS0_RKT_.exit53
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.234, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit54
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i64 noundef 17)
          to label %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit55 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit55:     ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.213, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA18_cEERS0_RKT_.exit55
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %i.b)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit56 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit56:         ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.235, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit56
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, i64 noundef 18)
          to label %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit57 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit57:     ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.213, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit58 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit58:      ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit57
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %i.a)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit59 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit59:         ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit58
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.103, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit60 unwind label %bb.u ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit60:      ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit59
  invoke void @_ZN7testing7MessageC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit60
  %i.bx = load ptr, ptr %10, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i61, label %_ZN7testing7MessageD2Ev.exit62, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(128) %i.bx) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  %i.cb = load ptr, ptr %9, align 8, !tbaa !46, !noalias !681
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.cb)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit63 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNK7testing7Message9GetStringB5cxx11Ev.exit63:   ; preds = %_ZN7testing7MessageD2Ev.exit62
  %i.cc = load ptr, ptr %11, align 8, !tbaa !41
  call void (i32, ptr, ...) @_ZN7testing8internal13ColoredPrintfENS0_10GTestColorEPKcz(i32 noundef 1, ptr noundef %i.cc)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !60
  %i.ce = call i32 @fflush(ptr noundef %i.cd)     ; 0 uses
  call void @exit(i32 noundef 1) #60
end_hunk_0
