Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/correlationtensor?download=true
inline.NumInlined: 368
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx17CorrelationTensor7addDataEdNS_8ArrayRefIKdEEbd:bb.a
  %wide.load46 = load <4 x double>, ptr %i.dm, align 8, !tbaa !12, !alias.scope !96
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.da, <4 x i64> %vec.ind ; 2 uses
  %i.dn = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.gep47 = getelementptr inbounds nuw [16 x i8], ptr %i.da, <4 x i64> %step.add ; 2 uses
  %i.do = extractelement <4 x ptr> %wide.gep47, i64 0
  %wide.gep48 = getelementptr inbounds nuw [16 x i8], ptr %i.da, <4 x i64> %step.add.2 ; 2 uses
  %i.dp = extractelement <4 x ptr> %wide.gep48, i64 0
  %wide.gep49 = getelementptr inbounds nuw [16 x i8], ptr %i.da, <4 x i64> %step.add.3 ; 2 uses
  %i.dq = extractelement <4 x ptr> %wide.gep49, i64 0
  %wide.vec = load <8 x double>, ptr %i.dn, align 8, !tbaa !47, !alias.scope !97, !noalias !96
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec50 = load <8 x double>, ptr %i.do, align 8, !tbaa !47, !alias.scope !97, !noalias !96
  %strided.vec51 = shufflevector <8 x double> %wide.vec50, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec52 = load <8 x double>, ptr %i.dp, align 8, !tbaa !47, !alias.scope !97, !noalias !96
  %strided.vec53 = shufflevector <8 x double> %wide.vec52, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec54 = load <8 x double>, ptr %i.dq, align 8, !tbaa !47, !alias.scope !97, !noalias !96
  %strided.vec55 = shufflevector <8 x double> %wide.vec54, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load, <4 x double> %strided.vec)
  %i.ds = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load44, <4 x double> %strided.vec51)
  %i.dt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load45, <4 x double> %strided.vec53)
  %i.du = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load46, <4 x double> %strided.vec55)
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dr, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !97, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ds, <4 x ptr> align 8 %wide.gep47, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !97, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dt, <4 x ptr> align 8 %wide.gep48, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !97, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.du, <4 x ptr> align 8 %wide.gep49, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !97, !noalias !96
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !89

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.di, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i22.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dw = and i64 %i.de, 3                        ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  %i.dy = select i1 %i.dx, i64 4, i64 %i.dw
  %n.vec56 = sub nsw i64 %i.de, %i.dy             ; 2 uses
  %broadcast.splatinsert59 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat60 = shufflevector <4 x i64> %broadcast.splatinsert59, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i64> %broadcast.splat60, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind62 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next68, %vec.epilog.vector.body ] ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %2, i64 %index61
  %wide.load63 = load <4 x double>, ptr %i.dz, align 8, !tbaa !12, !alias.scope !96
  %wide.gep64 = getelementptr inbounds nuw [16 x i8], ptr %i.da, <4 x i64> %vec.ind62 ; 2 uses
  %i.ea = extractelement <4 x ptr> %wide.gep64, i64 0
  %wide.vec65 = load <8 x double>, ptr %i.ea, align 8, !tbaa !47, !alias.scope !97, !noalias !96
  %strided.vec66 = shufflevector <8 x double> %wide.vec65, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.eb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat58, <4 x double> %wide.load63, <4 x double> %strided.vec66)
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.eb, <4 x ptr> align 8 %wide.gep64, <4 x i1> splat (i1 true)), !tbaa !47, !alias.scope !97, !noalias !96
  %index.next67 = add nuw i64 %index61, 4         ; 2 uses
  %vec.ind.next68 = add nuw <4 x i64> %vec.ind62, splat (i64 4)
  %i.ec = icmp eq i64 %index.next67, %n.vec56
  br i1 %i.ec, label %.lr.ph.i22.preheader, label %vec.epilog.vector.body, !llvm.loop !90

.lr.ph.i22.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %.08.i23.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec56, %vec.epilog.vector.body ] ; 4 uses
  %i.ed = sub nsw i64 %i.de, %.08.i23.ph
  %xtraiter = and i64 %i.ed, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader, %.lr.ph.i22.prol
  %.08.i23.prol = phi i64 [ %i.ej, %.lr.ph.i22.prol ], [ %.08.i23.ph, %.lr.ph.i22.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i22.prol ], [ 0, %.lr.ph.i22.preheader ]
  %i.ee = getelementptr inbounds [8 x i8], ptr %2, i64 %.08.i23.prol
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.08.i23.prol ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !47
  %i.ei = tail call double @llvm.fmuladd.f64(double %1, double %i.ef, double %i.eh)
  store double %i.ei, ptr %i.eg, align 8, !tbaa !47
  %i.ej = add nuw i64 %.08.i23.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol, !llvm.loop !91

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader
  %.08.i23.unr = phi i64 [ %.08.i23.ph, %.lr.ph.i22.preheader ], [ %i.ej, %.lr.ph.i22.prol ]
  %i.ek = sub nsw i64 %.08.i23.ph, %i.de
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit25, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %.08.i23 = phi i64 [ %i.fj, %.lr.ph.i22 ], [ %.08.i23.unr, %.lr.ph.i22.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %2, i64 %.08.i23
  %i.en = load double, ptr %i.em, align 8, !tbaa !12
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.08.i23 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !47
  %i.eq = tail call double @llvm.fmuladd.f64(double %1, double %i.en, double %i.ep)
  store double %i.eq, ptr %i.eo, align 8, !tbaa !47
  %i.er = add nuw i64 %.08.i23, 1                 ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %2, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.er ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !47
  %i.ew = tail call double @llvm.fmuladd.f64(double %1, double %i.et, double %i.ev)
  store double %i.ew, ptr %i.eu, align 8, !tbaa !47
  %i.ex = add nuw i64 %.08.i23, 2                 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.ex ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !47
  %i.fc = tail call double @llvm.fmuladd.f64(double %1, double %i.ez, double %i.fb)
  store double %i.fc, ptr %i.fa, align 8, !tbaa !47
  %i.fd = add nuw i64 %.08.i23, 3                 ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.fd ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !47
  %i.fi = tail call double @llvm.fmuladd.f64(double %1, double %i.ff, double %i.fh)
  store double %i.fi, ptr %i.fg, align 8, !tbaa !47
  %i.fj = add nuw i64 %.08.i23, 4                 ; 2 uses
  %exitcond.not.i24.3 = icmp eq i64 %i.fj, %i.de
  br i1 %exitcond.not.i24.3, label %_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit25, label %.lr.ph.i22, !llvm.loop !92

_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit25: ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %bb.f
  %i.fk = add nuw i64 %.031, 1                    ; 2 uses
  %i.fl = load ptr, ptr %i.h, align 8, !tbaa !36  ; 2 uses
  %i.fm = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sdiv exact i64 %i.fp, 96
  %i.fr = add nsw i64 %i.fq, -1
  %i.fs = icmp ult i64 %i.fk, %i.fr
  br i1 %i.fs, label %.lr.ph, label %._crit_edge, !llvm.loop !93

_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx17CorrelationTensorC2Eiid(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca double, align 8                   ; 5 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = icmp slt i32 %2, 32
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx17CorrelationTensorC1EiidENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 295) #19
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

._crit_edge:                                      ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12emplace_backIJRidEEERS1_DpOT_.exit, %.preheader
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12emplace_backIJRidEEERS1_DpOT_.exit
  %.016 = phi i32 [ 0, %.lr.ph ], [ %i.p, %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12emplace_backIJRidEEERS1_DpOT_.exit ]
  %.01115 = phi i32 [ 1, %.lr.ph ], [ %i.o, %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12emplace_backIJRidEEERS1_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.h = uitofp i32 %.01115 to double
  %i.i = fmul double %3, %i.h                     ; 2 uses
  store double %i.i, ptr %i.b, align 8, !tbaa !12
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 4, !tbaa !51
  invoke void @_ZN3gmx20CorrelationBlockDataC2Eid(ptr noundef nonnull align 8 dereferenceable(96) %i.j, i32 noundef %i.l, double noundef %i.i)
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %bb.e
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.n, ptr %i.e, align 8, !tbaa !36
  br label %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12emplace_backIJRidEEERS1_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE17_M_realloc_insertIJRidEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12emplace_backIJRidEEERS1_DpOT_.exit unwind label %bb.g

_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12emplace_backIJRidEEERS1_DpOT_.exit: ; preds = %bb.f, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.o = shl nuw i32 %.01115, 1
  %i.p = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !98

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.g, %bb.c ]
  call void @_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i:            ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #21
  br label %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !99

_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockDataESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #21
  br label %_ZNSt12_Vector_baseIN3gmx20CorrelationBlockDataESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx20CorrelationBlockDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE17_M_realloc_insertIJRidEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

_ZNKSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i32, ptr %2, align 4, !tbaa !51
  %i.s = load double, ptr %3, align 8, !tbaa !12
  invoke void @_ZN3gmx20CorrelationBlockDataC2Eid(ptr noundef nonnull align 8 dereferenceable(96) %i.q, i32 noundef %i.r, double noundef %i.s)
          to label %_ZNSt16allocator_traitsISaIN3gmx20CorrelationBlockDataEEE9constructIS1_JRidEEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN3gmx20CorrelationBlockDataEEE9constructIS1_JRidEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN3gmx20CorrelationBlockDataEEE9constructIS1_JRidEEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN3gmx20CorrelationBlockDataEEE9constructIS1_JRidEEEvRS2_PT_DpOT0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN3gmx20CorrelationBlockDataEEE9constructIS1_JRidEEEvRS2_PT_DpOT0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i, i64 44, i1 false), !alias.scope !109
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39, !alias.scope !108, !noalias !107
  store ptr %i.v, ptr %i.t, align 8, !tbaa !39, !alias.scope !107, !noalias !108
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38, !alias.scope !108, !noalias !107
  store ptr %i.y, ptr %i.w, align 8, !tbaa !38, !alias.scope !107, !noalias !108
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40, !alias.scope !108, !noalias !107
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !40, !alias.scope !107, !noalias !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !108, !noalias !107
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !110, !alias.scope !108, !noalias !107
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !110, !alias.scope !107, !noalias !108
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44, !alias.scope !108, !noalias !107
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !44, !alias.scope !107, !noalias !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !108, !noalias !107
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !103

_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN3gmx20CorrelationBlockDataEEE9constructIS1_JRidEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN3gmx20CorrelationBlockDataEEE9constructIS1_JRidEEEvRS2_PT_DpOT0_.exit ], [ %i.aj, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.bb, %.lr.ph.i.i.i28 ], [ %i.ak, %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i29, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i30, i64 44, i1 false), !alias.scope !113
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39, !alias.scope !112, !noalias !111
  store ptr %i.an, ptr %i.al, align 8, !tbaa !39, !alias.scope !111, !noalias !112
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38, !alias.scope !112, !noalias !111
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !38, !alias.scope !111, !noalias !112
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40, !alias.scope !112, !noalias !111
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !40, !alias.scope !111, !noalias !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !112, !noalias !111
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 72 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !110, !alias.scope !112, !noalias !111
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !110, !alias.scope !111, !noalias !112
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !alias.scope !112, !noalias !111
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !44, !alias.scope !111, !noalias !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !112, !noalias !111
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 96 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !103

_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ak, %_ZNSt6vectorIN3gmx20CorrelationBlockDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bb, %.lr.ph.i.i.i28 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
