Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/gblinear?download=true
inline.NumInlined: 3102
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNS_3gbm8GBLinear20PredictBatchInternalEPNS_7DMatrixEPSt6vectorIfSaIfEEEUlmE_EEvT_iNS0_5SchedEOT0_:bb.a
.lr.ph100:                                        ; preds = %.preheader79, %bb.l
  %.04299 = phi i64 [ %i.y, %bb.l ], [ 0, %.preheader79 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost3gbm8GBLinear20PredictBatchInternalEPNS2_7DMatrixEPSt6vectorIfSaIfEEEUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.175) align 8 %4, i64 noundef %.04299)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph100
  %i.y = add nuw i64 %.04299, 1                   ; 2 uses
  %exitcond132.not = icmp eq i64 %i.y, %0
  br i1 %exitcond132.not, label %thread-pre-split147, label %.lr.ph100, !llvm.loop !550

bb.m:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.z = icmp eq i64 %3, 0
  %.not109 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.z, label %.preheader83, label %.preheader88

.preheader88:                                     ; preds = %bb.m
  br i1 %.not109, label %bb.q, label %.lr.ph96

.preheader83:                                     ; preds = %bb.m
  br i1 %.not109, label %bb.q, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader83, %bb.n
  %.04197 = phi i64 [ %i.aa, %bb.n ], [ 0, %.preheader83 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost3gbm8GBLinear20PredictBatchInternalEPNS2_7DMatrixEPSt6vectorIfSaIfEEEUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.175) align 8 %4, i64 noundef %.04197)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph98
  %i.aa = add nuw i64 %.04197, 1                  ; 2 uses
  %exitcond131.not = icmp eq i64 %i.aa, %0
  br i1 %exitcond131.not, label %thread-pre-split147, label %.lr.ph98, !llvm.loop !551

.lr.ph96:                                         ; preds = %.preheader88, %bb.o
  %.04095 = phi i64 [ %i.ab, %bb.o ], [ 0, %.preheader88 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost3gbm8GBLinear20PredictBatchInternalEPNS2_7DMatrixEPSt6vectorIfSaIfEEEUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.175) align 8 %4, i64 noundef %.04095)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph96
  %i.ab = add nuw i64 %.04095, 1                  ; 2 uses
  %exitcond130.not = icmp eq i64 %i.ab, %0
  br i1 %exitcond130.not, label %thread-pre-split147, label %.lr.ph96, !llvm.loop !552

.lr.ph:                                           ; preds = %.preheader92, %bb.p
  %.094 = phi i64 [ %i.ac, %bb.p ], [ 0, %.preheader92 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost3gbm8GBLinear20PredictBatchInternalEPNS2_7DMatrixEPSt6vectorIfSaIfEEEUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.175) align 8 %4, i64 noundef %.094)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph
  %i.ac = add nuw i64 %.094, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %0
  br i1 %exitcond.not, label %thread-pre-split147, label %.lr.ph, !llvm.loop !553

thread-pre-split147:                              ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i
  %.pr71.pr = load ptr, ptr %8, align 8, !tbaa !256
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split147, %.preheader72, %.preheader74, %.preheader79, %.preheader83, %.preheader88, %.preheader92
  %.pr71 = phi ptr [ %.pr71.pr, %thread-pre-split147 ], [ null, %.preheader72 ], [ null, %.preheader74 ], [ null, %.preheader79 ], [ null, %.preheader83 ], [ null, %.preheader88 ], [ null, %.preheader92 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i64 = icmp eq ptr %.pr71, null
  br i1 %.not.i64, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.q
  store ptr %.pr71, ptr %5, align 8, !tbaa !256
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #37
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !256
  %.not.i2.i = icmp eq ptr %i.ae, null
  br i1 %.not.i2.i, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph106, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph98, %.lr.ph100, %.lr.ph104, %.lr.ph102, %.lr.ph96, %.lr.ph
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.s ], [ %i.ad, %bb.t ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.af = load ptr, ptr %8, align 8, !tbaa !256
  %.not.i.i66 = icmp eq ptr %i.af, null
  br i1 %.not.i.i66, label %_ZN4dmlc12OMPExceptionD2Ev.exit68, label %bb.u

bb.u:                                             ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #11
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit68

_ZN4dmlc12OMPExceptionD2Ev.exit68:                ; preds = %.body, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.v

bb.v:                                             ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit68, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit68 ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %.pn52.pn

bb.w:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3gbm8GBLinear20PredictBatchInternalEPNS_7DMatrixEPSt6vectorIfSaIfEEENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !565, !nonnull !92, !align !257
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !263
  %i.d = add i64 %i.c, %1                         ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !566, !nonnull !92, !align !264
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !567, !nonnull !92, !align !257 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !215
  %.not = icmp eq i64 %i.l, 0                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !92, !align !257
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !568, !nonnull !92, !align !257 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !265
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32   ; 4 uses
  %i.y = load i64, ptr %i.v, align 8, !tbaa !32   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !267 ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = icmp eq i64 %i.x, %i.y                  ; 2 uses
  %i.ad = or i1 %i.ac, %i.ab
  %i.ae = sub i64 %i.x, %i.y                      ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y ; 6 uses
  br i1 %i.ad, label %.lr.ph.split.us, label %.lr.ph.split, !prof !241

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !249 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = zext nneg i32 %i.g to i64               ; 17 uses
  %i.al = mul i64 %i.d, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !569, !nonnull !92, !align !257
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149 ; 3 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.al ; 14 uses
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !146 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !204 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !205 ; 2 uses
  %i.aw = mul i32 %i.av, %i.at
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !149 ; 5 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax ; 13 uses
  %i.bb = zext i32 %i.av to i64                   ; 6 uses
  br i1 %i.ac, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !270 ; 8 uses
  %min.iters.check55 = icmp ult i32 %i.g, 20
  br i1 %min.iters.check55, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.split.us.split.us.split.us
  %i.bd = shl i64 %i.d, 2
  %i.be = add i64 %i.bd, 4
  %i.bf = mul i64 %i.be, %i.ak
  %i.bg = getelementptr i8, ptr %i.ao, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bc, i64 4
  %2 = add nuw nsw i64 %i.ak, %i.ax
  %3 = shl nuw nsw i64 %2, 2
  %4 = getelementptr i8, ptr %i.ay, i64 %3
  %bound0 = icmp ult ptr %i.aq, %i.bh
  %bound1 = icmp ult ptr %i.bc, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %i.aq, %4
  %bound158 = icmp ult ptr %i.ba, %i.bg
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %found.conflict, %found.conflict59
  br i1 %conflict.rdx60, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck56
  %n.vec62 = and i64 %i.ak, 2147483640            ; 3 uses
  %i.bi = load float, ptr %i.bc, align 4, !tbaa !103, !alias.scope !570
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body63 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load65 = load <4 x float>, ptr %i.bj, align 4, !tbaa !103, !alias.scope !571
  %wide.load66 = load <4 x float>, ptr %i.bk, align 4, !tbaa !103, !alias.scope !571
  %i.bl = fadd <4 x float> %broadcast.splat, %wide.load65
  %i.bm = fadd <4 x float> %broadcast.splat, %wide.load66
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x float> %i.bl, ptr %i.bn, align 4, !tbaa !103, !alias.scope !572, !noalias !573
  store <4 x float> %i.bm, ptr %i.bo, align 4, !tbaa !103, !alias.scope !572, !noalias !573
  %index.next67 = add nuw i64 %index64, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.bp, label %middle.block68, label %vector.body63, !llvm.loop !559

middle.block68:                                   ; preds = %vector.body63
  %cmp.n69 = icmp eq i64 %n.vec62, %i.ak
  br i1 %cmp.n69, label %._crit_edge, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader: ; preds = %vector.memcheck56, %.lr.ph.split.us.split.us.split.us, %middle.block68
  %indvars.iv27.ph = phi i64 [ 0, %vector.memcheck56 ], [ 0, %.lr.ph.split.us.split.us.split.us ], [ %n.vec62, %middle.block68 ] ; 3 uses
  %xtraiter88 = and i64 %i.ak, 3                  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol.loopexit, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol: ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol
  %indvars.iv27.prol = phi i64 [ %indvars.iv.next28.prol, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol ], [ %indvars.iv27.ph, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol ], [ 0, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader ]
  %i.bq = load float, ptr %i.bc, align 4, !tbaa !103
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv27.prol
  %i.bs = load float, ptr %i.br, align 4, !tbaa !103
  %i.bt = fadd float %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv27.prol
  store float %i.bt, ptr %i.bu, align 4, !tbaa !103
  %indvars.iv.next28.prol = add nuw nsw i64 %indvars.iv27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter88
  br i1 %prol.iter.cmp.not, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol.loopexit, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol, !llvm.loop !560

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol.loopexit: ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader
  %indvars.iv27.unr = phi i64 [ %indvars.iv27.ph, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.preheader ], [ %indvars.iv.next28.prol, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol ]
  %i.bv = sub nsw i64 %indvars.iv27.ph, %i.ak
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us: ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol.loopexit, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us
  %indvars.iv27 = phi i64 [ %indvars.iv.next28.3, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us ], [ %indvars.iv27.unr, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us.prol.loopexit ] ; 6 uses
  %i.bx = load float, ptr %i.bc, align 4, !tbaa !103
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv27
  %i.bz = load float, ptr %i.by, align 4, !tbaa !103
  %i.ca = fadd float %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv27
  store float %i.ca, ptr %i.cb, align 4, !tbaa !103
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.cc = load float, ptr %i.bc, align 4, !tbaa !103
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next28
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !103
  %i.cf = fadd float %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next28
  store float %i.cf, ptr %i.cg, align 4, !tbaa !103
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27, 2 ; 2 uses
  %i.ch = load float, ptr %i.bc, align 4, !tbaa !103
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next28.1
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !103
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next28.1
  store float %i.ck, ptr %i.cl, align 4, !tbaa !103
  %indvars.iv.next28.2 = add nuw nsw i64 %indvars.iv27, 3 ; 2 uses
  %i.cm = load float, ptr %i.bc, align 4, !tbaa !103
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next28.2
  %i.co = load float, ptr %i.cn, align 4, !tbaa !103
  %i.cp = fadd float %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next28.2
  store float %i.cp, ptr %i.cq, align 4, !tbaa !103
  %indvars.iv.next28.3 = add nuw nsw i64 %indvars.iv27, 4 ; 2 uses
  %exitcond31.not.3 = icmp eq i64 %indvars.iv.next28.3, %i.ak
  br i1 %exitcond31.not.3, label %._crit_edge, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.us, !llvm.loop !561

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us
  %i.cr = load i64, ptr %i.j, align 8, !tbaa !32  ; 2 uses
  %i.cs = mul i64 %i.cr, %i.d
  %i.ct = load i64, ptr %i.m, align 8, !tbaa !32  ; 4 uses
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !214 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.cs ; 4 uses
  %min.iters.check = icmp ugt i32 %i.g, 31
  %ident.check.not = icmp eq i64 %i.ct, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.preheader

vector.memcheck:                                  ; preds = %.lr.ph.split.us.split.us.split
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = sub i64 %i.ak, %i.cr
  %i.cy = shl i64 %i.cx, 2
  %i.cz = mul i64 %i.d, %i.cy
  %i.da = add i64 %i.cz, %i.ap
  %i.db = sub i64 %i.cw, %i.da
  %diff.check = icmp ugt i64 %i.db, -32
  %i.dc = mul i64 %i.d, %i.ak
  %i.dd = shl i64 %i.dc, 2
  %i.de = shl nuw nsw i64 %i.ax, 2
  %i.df = add i64 %i.dd, %i.ap
  %i.dg = add i64 %i.de, %i.az
  %i.dh = sub i64 %i.dg, %i.df
  %diff.check43 = icmp ugt i64 %i.dh, -32
  %conflict.rdx = or i1 %diff.check, %diff.check43
  br i1 %conflict.rdx, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.di = getelementptr [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %wide.load = load <4 x float>, ptr %i.di, align 4, !tbaa !103
  %wide.load44 = load <4 x float>, ptr %i.dj, align 4, !tbaa !103
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load45 = load <4 x float>, ptr %i.dk, align 4, !tbaa !103
  %wide.load46 = load <4 x float>, ptr %i.dl, align 4, !tbaa !103
  %i.dm = fadd <4 x float> %wide.load, %wide.load45
  %i.dn = fadd <4 x float> %wide.load44, %wide.load46
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x float> %i.dm, ptr %i.do, align 4, !tbaa !103
  store <4 x float> %i.dn, ptr %i.dp, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %._crit_edge, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.preheader

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us.split.us.split, %middle.block
  %indvars.iv22.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.split.us.split ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter86 = and i64 %i.ak, 1
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol.loopexit, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol: ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.preheader
  %i.dr = mul i64 %i.ct, %indvars.iv22.ph
  %i.ds = getelementptr [4 x i8], ptr %i.cv, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !103
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv22.ph
  %i.dv = load float, ptr %i.du, align 4, !tbaa !103
  %i.dw = fadd float %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv22.ph
  store float %i.dw, ptr %i.dx, align 4, !tbaa !103
  %indvars.iv.next23.prol = or disjoint i64 %indvars.iv22.ph, 1
  br label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol.loopexit

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol.loopexit: ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.preheader
  %indvars.iv22.unr = phi i64 [ %indvars.iv22.ph, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.preheader ], [ %indvars.iv.next23.prol, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol ]
  %i.dy = add nsw i64 %i.ak, -1
  %i.dz = icmp eq i64 %indvars.iv22.ph, %i.dy
  br i1 %i.dz, label %._crit_edge, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us

_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us:  ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol.loopexit, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us
  %indvars.iv22 = phi i64 [ %indvars.iv.next23.1, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us ], [ %indvars.iv22.unr, %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us.prol.loopexit ] ; 5 uses
  %i.ea = mul i64 %i.ct, %indvars.iv22
  %i.eb = getelementptr [4 x i8], ptr %i.cv, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !103
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv22
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !103
  %i.ef = fadd float %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv22
  store float %i.ef, ptr %i.eg, align 4, !tbaa !103
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 3 uses
  %i.eh = mul i64 %i.ct, %indvars.iv.next23
  %i.ei = getelementptr [4 x i8], ptr %i.cv, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !103
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next23
  %i.el = load float, ptr %i.ek, align 4, !tbaa !103
  %i.em = fadd float %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next23
  store float %i.em, ptr %i.en, align 4, !tbaa !103
  %indvars.iv.next23.1 = add nuw nsw i64 %indvars.iv22, 2 ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %indvars.iv.next23.1, %i.ak
  br i1 %exitcond26.not.1, label %._crit_edge, label %_ZNK7xgboost18HostSparsePageViewixEm.exit.us.us, !llvm.loop !563

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common11ParallelForIjZNS_3gbm8GBLinear19PredictContributionEPNS_7DMatrixEPNS_16HostDeviceVectorIfEEiibEUljE_EEvT_iNS0_5SchedEOT0_:bb.a
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph
  %i.ac = add nuw i32 %.094, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %0
  br i1 %exitcond.not, label %thread-pre-split147, label %.lr.ph, !llvm.loop !589

thread-pre-split147:                              ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i
  %.pr71.pr = load ptr, ptr %8, align 8, !tbaa !256
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split147, %.preheader72, %.preheader74, %.preheader79, %.preheader83, %.preheader88, %.preheader92
  %.pr71 = phi ptr [ %.pr71.pr, %thread-pre-split147 ], [ null, %.preheader72 ], [ null, %.preheader74 ], [ null, %.preheader79 ], [ null, %.preheader83 ], [ null, %.preheader88 ], [ null, %.preheader92 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i64 = icmp eq ptr %.pr71, null
  br i1 %.not.i64, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.q
  store ptr %.pr71, ptr %5, align 8, !tbaa !256
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #37
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !256
  %.not.i2.i = icmp eq ptr %i.ae, null
  br i1 %.not.i2.i, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph106, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph98, %.lr.ph100, %.lr.ph104, %.lr.ph102, %.lr.ph96, %.lr.ph
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.s ], [ %i.ad, %bb.t ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.af = load ptr, ptr %8, align 8, !tbaa !256
  %.not.i.i66 = icmp eq ptr %i.af, null
  br i1 %.not.i.i66, label %_ZN4dmlc12OMPExceptionD2Ev.exit68, label %bb.u

bb.u:                                             ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #11
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit68

_ZN4dmlc12OMPExceptionD2Ev.exit68:                ; preds = %.body, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.v

bb.v:                                             ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit68, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit68 ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %.pn52.pn

bb.w:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost3gbm8GBLinear19PredictContributionEPNS_7DMatrixEPNS_16HostDeviceVectorIfEEiibENKUljE_clEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !92, !align !257 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32   ; 4 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !32   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !267  ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp eq i64 %i.i, %i.j                   ; 2 uses
  %i.o = or i1 %i.n, %i.m
  br i1 %i.o, label %_ZNK7xgboost18HostSparsePageViewixEm.exit, label %bb.b, !prof !241

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #36
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit:        ; preds = %bb.a
  %i.p = sub i64 %i.i, %i.j                       ; 6 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !605, !nonnull !92, !align !257
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !263
  %i.v = add i64 %i.u, %i.d                       ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !606, !nonnull !92, !align !264
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21   ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.split.lr.ph, label %._crit_edge33

.split.lr.ph:                                     ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !607, !nonnull !92, !align !257
  %i.ac = zext nneg i32 %i.y to i64               ; 24 uses
  %i.ad = mul i64 %i.v, %i.ac                     ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !608, !nonnull !92, !align !257
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32 ; 29 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !146 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !204 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !205
  %i.ap = mul i32 %i.ao, %i.am
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !149 ; 5 uses
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.aq ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !609, !nonnull !92, !align !257 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !215
  %.not = icmp eq i64 %i.aw, 0                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.n, label %.split.lr.ph.split.us, label %.split.lr.ph.split

.split.lr.ph.split.us:                            ; preds = %.split.lr.ph
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.ag ; 14 uses
  br i1 %.not, label %.split.lr.ph.split.us.split.us, label %.split.lr.ph.split.us.split

.split.lr.ph.split.us.split.us:                   ; preds = %.split.lr.ph.split.us
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !610, !nonnull !92, !align !257
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !270 ; 6 uses
  %min.iters.check101 = icmp ult i32 %i.y, 76
  br i1 %min.iters.check101, label %.split.us.us.preheader, label %vector.scevcheck82

vector.scevcheck82:                               ; preds = %.split.lr.ph.split.us.split.us
  %i.bd = add nsw i64 %i.ac, -1
  %i.be = shl i64 %i.ag, 2                        ; 2 uses
  %i.bf = mul i64 %i.ag, -4
  %i.bg = mul i64 %i.v, %i.ac
  %i.bh = shl i64 %i.bg, 2
  %i.bi = add i64 %i.bh, 4
  %i.bj = mul i64 %i.ag, %i.bi
  %i.bk = getelementptr i8, ptr %i.ah, i64 %i.bj
  %scevgep83 = getelementptr i8, ptr %i.bk, i64 -4 ; 4 uses
  %i.bl = icmp slt i64 %i.be, 0                   ; 2 uses
  %i.bm = select i1 %i.bl, i64 %i.bf, i64 %i.be
  %mul84 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bm, i64 %i.bd) ; 2 uses
  %mul.result85 = extractvalue { i64, i1 } %mul84, 0 ; 2 uses
  %mul.overflow86 = extractvalue { i64, i1 } %mul84, 1
  %i.bn = sub i64 0, %mul.result85
  %i.bo = getelementptr i8, ptr %scevgep83, i64 %mul.result85
  %i.bp = getelementptr i8, ptr %scevgep83, i64 %i.bn
  %i.bq = icmp ult ptr %i.bo, %scevgep83
  %i.br = icmp ugt ptr %i.bp, %scevgep83
  %i.bs = select i1 %i.bl, i1 %i.br, i1 %i.bq
  %i.bt = or i1 %i.bs, %mul.overflow86
  br i1 %i.bt, label %.split.us.us.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %vector.scevcheck82
  %i.bu = add nuw nsw i64 %i.ac, %i.aq
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = getelementptr i8, ptr %i.ar, i64 %i.bv
  %i.bx = shl i64 %i.v, 2
  %i.by = add i64 %i.bx, 4
  %i.bz = mul i64 %i.ag, %i.by
  %i.ca = mul i64 %i.bz, %i.ac
  %i.cb = getelementptr i8, ptr %i.ah, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4     ; 4 uses
  %i.cd = mul i64 %i.v, %i.ac
  %i.ce = shl i64 %i.cd, 2
  %i.cf = add i64 %i.ce, 4
  %i.cg = mul i64 %i.ag, %i.cf
  %i.ch = getelementptr i8, ptr %i.ah, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4     ; 4 uses
  %i.cj = icmp ult ptr %i.cc, %i.ci
  %i.ck = select i1 %i.cj, ptr %i.cc, ptr %i.ci   ; 2 uses
  %i.cl = icmp ugt ptr %i.cc, %i.ci
  %i.cm = select i1 %i.cl, ptr %i.cc, ptr %i.ci
  %i.cn = getelementptr i8, ptr %i.cm, i64 4      ; 2 uses
  %2 = getelementptr i8, ptr %i.bc, i64 4
  %bound0103.a = icmp ult ptr %i.as, %i.cn
  %bound1104 = icmp ult ptr %i.ck, %i.bw
  %found.conflict105 = and i1 %bound0103.a, %bound1104
  %bound0106 = icmp ult ptr %i.bc, %i.cn
  %bound1107 = icmp ult ptr %i.ck, %2
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %found.conflict105, %found.conflict108
  br i1 %conflict.rdx109, label %.split.us.us.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck102
  %n.vec111 = and i64 %i.ac, 2147483644           ; 3 uses
  %i.co = load float, ptr %i.bc, align 4, !tbaa !103, !alias.scope !611, !noalias !612
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.co, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next115, %vector.body112 ] ; 6 uses
  %i.cp = or disjoint i64 %index113, 1
  %i.cq = or disjoint i64 %index113, 2
  %i.cr = or disjoint i64 %index113, 3
  %i.cs = add i64 %i.ad, %index113
  %i.ct = add i64 %i.ad, %i.cp
  %i.cu = add i64 %i.ad, %i.cq
  %i.cv = add i64 %i.ad, %i.cr
  %i.cw = mul i64 %i.ag, %i.cs
  %i.cx = mul i64 %i.ag, %i.ct
  %i.cy = mul i64 %i.ag, %i.cu
  %i.cz = mul i64 %i.ag, %i.cv
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index113
  %wide.load114 = load <4 x float>, ptr %i.da, align 4, !tbaa !103, !alias.scope !613, !noalias !612
  %i.db = fadd <4 x float> %wide.load114, %broadcast.splat ; 4 uses
  %i.dc = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cw
  %i.dd = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cx
  %i.de = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cy
  %i.df = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cz
  %i.dg = getelementptr i8, ptr %i.dc, i64 -4
  %i.dh = getelementptr i8, ptr %i.dd, i64 -4
  %i.di = getelementptr i8, ptr %i.de, i64 -4
  %i.dj = getelementptr i8, ptr %i.df, i64 -4
  %i.dk = extractelement <4 x float> %i.db, i64 0
  store float %i.dk, ptr %i.dg, align 4, !tbaa !103, !alias.scope !612
  %i.dl = extractelement <4 x float> %i.db, i64 1
  store float %i.dl, ptr %i.dh, align 4, !tbaa !103, !alias.scope !612
  %i.dm = extractelement <4 x float> %i.db, i64 2
  store float %i.dm, ptr %i.di, align 4, !tbaa !103, !alias.scope !612
  %i.dn = extractelement <4 x float> %i.db, i64 3
  store float %i.dn, ptr %i.dj, align 4, !tbaa !103, !alias.scope !612
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next115, %n.vec111
  br i1 %i.do, label %middle.block116, label %vector.body112, !llvm.loop !595

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %n.vec111, %i.ac
  br i1 %cmp.n117, label %._crit_edge33, label %.split.us.us.preheader

.split.us.us.preheader:                           ; preds = %vector.memcheck102, %vector.scevcheck82, %.split.lr.ph.split.us.split.us, %middle.block116
  %indvars.iv51.ph = phi i64 [ 0, %vector.memcheck102 ], [ 0, %vector.scevcheck82 ], [ 0, %.split.lr.ph.split.us.split.us ], [ %n.vec111, %middle.block116 ] ; 5 uses
  %xtraiter130 = and i64 %i.ac, 1
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.split.us.us.prol.loopexit, label %.split.us.us.prol

.split.us.us.prol:                                ; preds = %.split.us.us.preheader
  %i.dp = add i64 %i.ad, %indvars.iv51.ph
  %i.dq = mul i64 %i.ag, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv51.ph
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !103
  %i.dt = load float, ptr %i.bc, align 4, !tbaa !103
  %i.du = fadd float %i.ds, %i.dt
  %gep.us.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dq
  %i.dv = getelementptr i8, ptr %gep.us.prol, i64 -4
  store float %i.du, ptr %i.dv, align 4, !tbaa !103
  %indvars.iv.next52.prol = or disjoint i64 %indvars.iv51.ph, 1
  br label %.split.us.us.prol.loopexit

.split.us.us.prol.loopexit:                       ; preds = %.split.us.us.prol, %.split.us.us.preheader
  %indvars.iv51.unr = phi i64 [ %indvars.iv51.ph, %.split.us.us.preheader ], [ %indvars.iv.next52.prol, %.split.us.us.prol ]
  %i.dw = add nsw i64 %i.ac, -1
  %i.dx = icmp eq i64 %indvars.iv51.ph, %i.dw
  br i1 %i.dx, label %._crit_edge33, label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.prol.loopexit, %.split.us.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.1, %.split.us.us ], [ %indvars.iv51.unr, %.split.us.us.prol.loopexit ] ; 4 uses
  %i.dy = add i64 %i.ad, %indvars.iv51
  %i.dz = mul i64 %i.ag, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv51
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !103
  %i.ec = load float, ptr %i.bc, align 4, !tbaa !103
  %i.ed = fadd float %i.eb, %i.ec
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dz
  %i.ee = getelementptr i8, ptr %gep.us, i64 -4
  store float %i.ed, ptr %i.ee, align 4, !tbaa !103
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.ef = add i64 %i.ad, %indvars.iv.next52
  %i.eg = mul i64 %i.ag, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next52
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !103
  %i.ej = load float, ptr %i.bc, align 4, !tbaa !103
  %i.ek = fadd float %i.ei, %i.ej
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eg
  %i.el = getelementptr i8, ptr %gep.us.1, i64 -4
  store float %i.ek, ptr %i.el, align 4, !tbaa !103
  %indvars.iv.next52.1 = add nuw nsw i64 %indvars.iv51, 2 ; 2 uses
  %exitcond55.not.1 = icmp eq i64 %indvars.iv.next52.1, %i.ac
  br i1 %exitcond55.not.1, label %._crit_edge33, label %.split.us.us, !llvm.loop !596

.split.lr.ph.split.us.split:                      ; preds = %.split.lr.ph.split.us
  %i.em = load i64, ptr %i.au, align 8, !tbaa !32 ; 2 uses
  %i.en = mul i64 %i.em, %i.v
  %i.eo = load i64, ptr %i.ax, align 8, !tbaa !32 ; 4 uses
  %i.ep = load ptr, ptr %i.ay, align 8, !tbaa !214 ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.en ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 124
  br i1 %min.iters.check, label %.split.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.split.lr.ph.split.us.split
  %ident.check = icmp ne i64 %i.eo, 1
  %i.er = add nsw i64 %i.ac, -1
  %i.es = shl i64 %i.ag, 2                        ; 2 uses
  %i.et = mul i64 %i.ag, -4
  %i.eu = mul i64 %i.v, %i.ac
  %i.ev = shl i64 %i.eu, 2
  %i.ew = add i64 %i.ev, 4
  %i.ex = mul i64 %i.ag, %i.ew
  %i.ey = getelementptr i8, ptr %i.ah, i64 %i.ex
  %scevgep = getelementptr i8, ptr %i.ey, i64 -4  ; 4 uses
  %i.ez = icmp slt i64 %i.es, 0                   ; 2 uses
  %i.fa = select i1 %i.ez, i64 %i.et, i64 %i.es
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fa, i64 %i.er) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.fb = sub i64 0, %mul.result
  %i.fc = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.fd = getelementptr i8, ptr %scevgep, i64 %i.fb
  %i.fe = icmp ult ptr %i.fc, %scevgep
  %i.ff = icmp ugt ptr %i.fd, %scevgep
  %i.fg = select i1 %i.ez, i1 %i.ff, i1 %i.fe
  %i.fh = or i1 %i.fg, %mul.overflow
  %i.fi = or i1 %ident.check, %i.fh
  br i1 %i.fi, label %.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fj = add nuw nsw i64 %i.ac, %i.aq
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = getelementptr i8, ptr %i.ar, i64 %i.fk
  %i.fm = shl i64 %i.v, 2
  %i.fn = add i64 %i.fm, 4
  %i.fo = mul i64 %i.ag, %i.fn
  %i.fp = mul i64 %i.fo, %i.ac
  %i.fq = getelementptr i8, ptr %i.ah, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 -4     ; 4 uses
  %i.fs = mul i64 %i.v, %i.ac
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, 4
  %i.fv = mul i64 %i.ag, %i.fu
  %i.fw = getelementptr i8, ptr %i.ah, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 -4     ; 4 uses
  %i.fy = icmp ult ptr %i.fr, %i.fx
  %i.fz = select i1 %i.fy, ptr %i.fr, ptr %i.fx   ; 2 uses
  %i.ga = icmp ugt ptr %i.fr, %i.fx
  %i.gb = select i1 %i.ga, ptr %i.fr, ptr %i.fx
  %i.gc = getelementptr i8, ptr %i.gb, i64 4      ; 2 uses
  %3 = mul i64 %i.em, %i.v
  %4 = add i64 %3, %i.ac
  %5 = shl i64 %4, 2
  %6 = getelementptr i8, ptr %i.ep, i64 %5
  %bound0 = icmp ult ptr %i.as, %i.gc
  %bound1 = icmp ult ptr %i.fz, %i.fl
  %found.conflict = and i1 %bound0, %bound1
  %bound078 = icmp ult ptr %i.eq, %i.gc
  %bound179 = icmp ult ptr %i.fz, %6
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  br i1 %conflict.rdx, label %.split.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.gd = or disjoint i64 %index, 1
  %i.ge = or disjoint i64 %index, 2
  %i.gf = or disjoint i64 %index, 3
  %i.gg = add i64 %i.ad, %index
  %i.gh = add i64 %i.ad, %i.gd
  %i.gi = add i64 %i.ad, %i.ge
  %i.gj = add i64 %i.ad, %i.gf
  %i.gk = mul i64 %i.ag, %i.gg
  %i.gl = mul i64 %i.ag, %i.gh
  %i.gm = mul i64 %i.ag, %i.gi
  %i.gn = mul i64 %i.ag, %i.gj
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index
  %wide.load = load <4 x float>, ptr %i.go, align 4, !tbaa !103, !alias.scope !614, !noalias !615
  %i.gp = getelementptr [4 x i8], ptr %i.eq, i64 %index
  %wide.load81 = load <4 x float>, ptr %i.gp, align 4, !tbaa !103, !alias.scope !616, !noalias !615
  %i.gq = fadd <4 x float> %wide.load, %wide.load81 ; 4 uses
  %i.gr = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gk
  %i.gs = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gl
  %i.gt = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gm
  %i.gu = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gn
  %i.gv = getelementptr i8, ptr %i.gr, i64 -4
  %i.gw = getelementptr i8, ptr %i.gs, i64 -4
  %i.gx = getelementptr i8, ptr %i.gt, i64 -4
  %i.gy = getelementptr i8, ptr %i.gu, i64 -4
  %i.gz = extractelement <4 x float> %i.gq, i64 0
  store float %i.gz, ptr %i.gv, align 4, !tbaa !103, !alias.scope !615
  %i.ha = extractelement <4 x float> %i.gq, i64 1
  store float %i.ha, ptr %i.gw, align 4, !tbaa !103, !alias.scope !615
  %i.hb = extractelement <4 x float> %i.gq, i64 2
  store float %i.hb, ptr %i.gx, align 4, !tbaa !103, !alias.scope !615
  %i.hc = extractelement <4 x float> %i.gq, i64 3
  store float %i.hc, ptr %i.gy, align 4, !tbaa !103, !alias.scope !615
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hd = icmp eq i64 %index.next, %n.vec
  br i1 %i.hd, label %middle.block, label %vector.body, !llvm.loop !601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge33, label %.split.us.preheader

.split.us.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.split.lr.ph.split.us.split, %middle.block
  %indvars.iv46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.split.lr.ph.split.us.split ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter128 = and i64 %i.ac, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.split.us.prol.loopexit, label %.split.us.prol

.split.us.prol:                                   ; preds = %.split.us.preheader
  %i.he = add i64 %i.ad, %indvars.iv46.ph
  %i.hf = mul i64 %i.ag, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv46.ph
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !103
  %i.hi = mul i64 %i.eo, %indvars.iv46.ph
  %i.hj = getelementptr [4 x i8], ptr %i.eq, i64 %i.hi
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !103
  %i.hl = fadd float %i.hh, %i.hk
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hf
  %i.hm = getelementptr i8, ptr %gep.prol, i64 -4
  store float %i.hl, ptr %i.hm, align 4, !tbaa !103
  %indvars.iv.next47.prol = or disjoint i64 %indvars.iv46.ph, 1
  br label %.split.us.prol.loopexit

.split.us.prol.loopexit:                          ; preds = %.split.us.prol, %.split.us.preheader
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %.split.us.preheader ], [ %indvars.iv.next47.prol, %.split.us.prol ]
  %i.hn = add nsw i64 %i.ac, -1
  %i.ho = icmp eq i64 %indvars.iv46.ph, %i.hn
  br i1 %i.ho, label %._crit_edge33, label %.split.us

.split.us:                                        ; preds = %.split.us.prol.loopexit, %.split.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.1, %.split.us ], [ %indvars.iv46.unr, %.split.us.prol.loopexit ] ; 5 uses
  %i.hp = add i64 %i.ad, %indvars.iv46
  %i.hq = mul i64 %i.ag, %i.hp
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv46
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !103
  %i.ht = mul i64 %i.eo, %indvars.iv46
  %i.hu = getelementptr [4 x i8], ptr %i.eq, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !103
  %i.hw = fadd float %i.hs, %i.hv
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hq
  %i.hx = getelementptr i8, ptr %gep, i64 -4
  store float %i.hw, ptr %i.hx, align 4, !tbaa !103
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 3 uses
  %i.hy = add i64 %i.ad, %indvars.iv.next47
  %i.hz = mul i64 %i.ag, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next47
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !103
  %i.ic = mul i64 %i.eo, %indvars.iv.next47
  %i.id = getelementptr [4 x i8], ptr %i.eq, i64 %i.ic
  %i.ie = load float, ptr %i.id, align 4, !tbaa !103
  %i.if = fadd float %i.ib, %i.ie
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hz
  %i.ig = getelementptr i8, ptr %gep.1, i64 -4
  store float %i.if, ptr %i.ig, align 4, !tbaa !103
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %exitcond50.not.1 = icmp eq i64 %indvars.iv.next47.1, %i.ac
  br i1 %exitcond50.not.1, label %._crit_edge33, label %.split.us, !llvm.loop !602

.split.lr.ph.split:                               ; preds = %.split.lr.ph
  br i1 %.not, label %.split.lr.ph.split.split.us, label %.split.lr.ph.split.split

.split.lr.ph.split.split.us:                      ; preds = %.split.lr.ph.split
  %i.ih = load ptr, ptr %i.az, align 8, !tbaa !610, !nonnull !92, !align !257
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !270
  %.neg132 = add i64 %i.j, 1
  %xtraiter123 = and i64 %i.p, 1
  %i.ik = icmp eq i64 %i.i, %.neg132
  %unroll_iter126 = and i64 %i.p, -2
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  %lcmp.mod125 = trunc i64 %i.p to i1
  br label %.split.us34

.split.us34:                                      ; preds = %._crit_edge.us, %.split.lr.ph.split.split.us
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %._crit_edge.us ], [ 0, %.split.lr.ph.split.split.us ] ; 4 uses
  %i.il = add i64 %i.ad, %indvars.iv41
  %i.im = mul i64 %i.ag, %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.im ; 4 uses
  %invariant.gep65 = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv41 ; 3 uses
  br i1 %i.ik, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us.epil.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us: ; preds = %.split.us34, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us.1
  %.sroa.6.031.us = phi i64 [ %i.jp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us.1 ], [ 0, %.split.us34 ] ; 3 uses
  %niter127 = phi i64 [ %niter127.next.1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us.1 ], [ 0, %.split.us34 ]
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.6.031.us ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !272 ; 2 uses
  %.not15.us = icmp ult i32 %i.ip, %i.am
  br i1 %.not15.us, label %bb.c, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !273
  %i.is = zext i32 %i.ip to i64                   ; 2 uses
  %i.it = load ptr, ptr %i.aj, align 8, !tbaa !146
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 28
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !205
  %i.iw = zext i32 %i.iv to i64
  %i.ix = mul nuw i64 %i.iw, %i.is
  %gep66 = getelementptr [4 x i8], ptr %invariant.gep65, i64 %i.ix
  %i.iy = load float, ptr %gep66, align 4, !tbaa !103
  %i.iz = fmul float %i.ir, %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.is
  store float %i.iz, ptr %i.ja, align 4, !tbaa !103
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us: ; preds = %bb.c, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.6.031.us ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !272 ; 2 uses
  %.not15.us.1 = icmp ult i32 %i.jd, %i.am
  br i1 %.not15.us.1, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us.1

bb.d:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.jf = load float, ptr %i.je, align 4, !tbaa !273
  %i.jg = zext i32 %i.jd to i64                   ; 2 uses
  %i.jh = load ptr, ptr %i.aj, align 8, !tbaa !146
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 28
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !205
  %i.jk = zext i32 %i.jj to i64
  %i.jl = mul nuw i64 %i.jk, %i.jg
  %gep66.1 = getelementptr [4 x i8], ptr %invariant.gep65, i64 %i.jl
  %i.jm = load float, ptr %gep66.1, align 4, !tbaa !103
  %i.jn = fmul float %i.jf, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.jg
  store float %i.jn, ptr %i.jo, align 4, !tbaa !103
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us.1

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us.1: ; preds = %bb.d, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us
  %i.jp = add nuw i64 %.sroa.6.031.us, 2          ; 2 uses
  %niter127.next.1 = add i64 %niter127, 2         ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %._crit_edge.us.unr-lcssa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us

._crit_edge.us.unr-lcssa:                         ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEppEv.exit.us.1
  br i1 %lcmp.mod124.not, label %._crit_edge.us, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us.epil.preheader

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us.epil.preheader: ; preds = %._crit_edge.us.unr-lcssa, %.split.us34
  %.sroa.6.031.us.epil.init = phi i64 [ 0, %.split.us34 ], [ %i.jp, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.6.031.us.epil.init ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !272 ; 2 uses
  %.not15.us.epil = icmp ult i32 %i.jr, %i.am
  br i1 %.not15.us.epil, label %bb.e, label %._crit_edge.us

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_5EntryELm18446744073709551615EEELb0EEdeEv.exit.us.epil.preheader
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jt = load float, ptr %i.js, align 4, !tbaa !273
  %i.ju = zext i32 %i.jr to i64                   ; 2 uses
  %i.jv = load ptr, ptr %i.aj, align 8, !tbaa !146
end_hunk_1
