inline.NumInlined: 1547
inline.NumDeleted: 579
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN13hilbert_basis8saturateEv:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEd.exit
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.az)
          to label %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #24
  unreachable

_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i:        ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.bc = load ptr, ptr %1, align 8, !tbaa !166   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZN10statisticsD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bd)
          to label %_ZN10statisticsD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZN10statisticsD2Ev.exit:                         ; preds = %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @_Z14verbose_unlockv()
  br label %bb.z

bb.n:                                             ; preds = %_ZNSolsEd.exit, %bb.i, %bb.h, %.noexc13, %_ZNK13hilbert_basis14get_basis_sizeEv.exit.i, %.noexc11, %.noexc, %bb.d, %bb.g, %bb.f, %_ZNK13hilbert_basis18collect_statisticsER10statistics.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10statisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.ab

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bh = load i32, ptr %i.f, align 8, !tbaa !113
  invoke void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef %i.bh)
          to label %.noexc21 unwind label %bb.y

.noexc21:                                         ; preds = %bb.o
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !114
  invoke void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef %i.bi)
          to label %.noexc22 unwind label %bb.y

.noexc22:                                         ; preds = %.noexc21
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !115
  invoke void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.2, i32 noundef %i.bj)
          to label %.noexc23 unwind label %bb.y

.noexc23:                                         ; preds = %.noexc22
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !91  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZNK13hilbert_basis14get_basis_sizeEv.exit.i19, label %bb.p

bb.p:                                             ; preds = %.noexc23
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !77
  br label %_ZNK13hilbert_basis14get_basis_sizeEv.exit.i19

_ZNK13hilbert_basis14get_basis_sizeEv.exit.i19:   ; preds = %bb.p, %.noexc23
  %.0.i.i.i20 = phi i32 [ %i.bn, %bb.p ], [ 0, %.noexc23 ]
  invoke void @_ZN10statistics6updateEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.3, i32 noundef %.0.i.i.i20)
          to label %.noexc24 unwind label %bb.y

.noexc24:                                         ; preds = %_ZNK13hilbert_basis14get_basis_sizeEv.exit.i19
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !34
  invoke void @_ZNK13hilbert_basis5index18collect_statisticsER10statistics(ptr noundef nonnull align 8 dereferenceable(1340) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNK13hilbert_basis18collect_statisticsER10statistics.exit26 unwind label %bb.y

_ZNK13hilbert_basis18collect_statisticsER10statistics.exit26: ; preds = %.noexc24
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZNK13hilbert_basis18collect_statisticsER10statistics.exit26
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10statistics7displayERSo(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.r unwind label %bb.y       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.br = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %i.bs = sub i64 %i.br, %i.s
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.s unwind label %bb.y       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.4, i64 noundef 6)
          to label %bb.t unwind label %bb.y       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bv = sdiv i64 %i.bs, 1000000
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = fdiv double %i.bw, 1.000000e+03
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, double noundef %i.bx)
          to label %_ZNSolsEd.exit35 unwind label %bb.y

_ZNSolsEd.exit35:                                 ; preds = %bb.t
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %_ZNSolsEd.exit35
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i38, label %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i39, label %bb.u

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cb)
          to label %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i39 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #24
  unreachable

_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i39:      ; preds = %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.ce = load ptr, ptr %2, align 8, !tbaa !166   ; 2 uses
  %.not.i.i1.i40 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i40, label %_ZN10statisticsD2Ev.exit41, label %bb.w

bb.w:                                             ; preds = %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i39
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cf)
          to label %_ZN10statisticsD2Ev.exit41 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #24
  unreachable

_ZN10statisticsD2Ev.exit41:                       ; preds = %_ZN6vectorISt4pairIPKcdELb0EjED2Ev.exit.i39, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.z

bb.y:                                             ; preds = %_ZNSolsEd.exit35, %bb.t, %bb.s, %.noexc24, %_ZNK13hilbert_basis14get_basis_sizeEv.exit.i19, %.noexc22, %.noexc21, %bb.o, %bb.r, %bb.q, %_ZNK13hilbert_basis18collect_statisticsER10statistics.exit26
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10statisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ab

bb.z:                                             ; preds = %_ZN10statisticsD2Ev.exit, %_ZN10statisticsD2Ev.exit41, %_ZN9stopwatch5startEv.exit
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !115
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.h, align 8, !tbaa !115
  %.not.not = icmp eq i32 %i.ab, 1
  br i1 %.not.not, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !96
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.a, align 8, !tbaa !96
  %i.cn = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !107, !align !108
  %i.co = call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cn)
  br i1 %i.co, label %bb.b, label %.critedge

bb.ab:                                            ; preds = %bb.y, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.ci, %bb.y ]
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit, %bb.aa, %bb.b, %bb.a
  %i.cp = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !107, !align !108
  %i.cq = call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cp)
  %. = zext i1 %i.cq to i32
  br label %.thread

.thread:                                          ; preds = %bb.z, %.critedge
  %.2 = phi i32 [ %., %.critedge ], [ %i.ab, %bb.z ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13hilbert_basis10checkpointEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !107, !align !108
  %i.b = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13hilbert_basis17select_inequalityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.hilbert_basis::values", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i: ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77   ; 3 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i
  %wide.trip.count.i = zext i32 %i.j to i64       ; 3 uses
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi156 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !tbaa !154
  %wide.load157 = load <2 x i64>, ptr %i.l, align 8, !tbaa !154
  %i.m = icmp ne <2 x i64> %wide.load, zeroinitializer
  %i.n = icmp ne <2 x i64> %wide.load157, zeroinitializer
  %i.o = zext <2 x i1> %i.m to <2 x i32>
  %i.p = zext <2 x i1> %i.n to <2 x i32>
  %i.q = add <2 x i32> %vec.phi, %i.o             ; 2 uses
  %i.r = add <2 x i32> %vec.phi156, %i.p          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.preheader

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.preheader: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i ], [ %n.vec, %middle.block ]
  %.06712.i.ph = phi i32 [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i ], [ %i.t, %middle.block ]
  br label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.preheader, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i ], [ %indvars.iv.i.ph, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.preheader ] ; 2 uses
  %.06712.i = phi i32 [ %spec.select.i, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i ], [ %.06712.i.ph, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154
  %i.w = icmp ne i64 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %spec.select.i = add i32 %.06712.i, %i.x        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i, !llvm.loop !170

_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i, %middle.block, %bb.a, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i
  %.06.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i ], [ %i.t, %middle.block ], [ %spec.select.i, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK13hilbert_basis3vecENS_8offset_tE.exit.i, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit
  %.sroa.4.0.i = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit ], [ %i.at, %_ZNK13hilbert_basis3vecENS_8offset_tE.exit.i ] ; 3 uses
  %.010.i = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit ], [ %.111.i, %_ZNK13hilbert_basis3vecENS_8offset_tE.exit.i ] ; 2 uses
  %.0.i = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit ], [ %.1.i, %_ZNK13hilbert_basis3vecENS_8offset_tE.exit.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !91  ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  br i1 %i.ab, label %_ZNK13hilbert_basis3endEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !77
  br label %_ZNK13hilbert_basis3endEv.exit.i

_ZNK13hilbert_basis3endEv.exit.i:                 ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.ad, %bb.c ], [ 0, %bb.b ]
  %.not.i39 = icmp eq i32 %.sroa.4.0.i, %.0.i.i.i
  br i1 %.not.i39, label %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK13hilbert_basis3endEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ae = zext i32 %.sroa.4.0.i to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ae
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.af, align 4, !tbaa !77
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK13hilbert_basis3vecENS_8offset_tE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !77
  %i.ak = zext i32 %i.aj to i64
  br label %_ZNK13hilbert_basis3vecENS_8offset_tE.exit.i

_ZNK13hilbert_basis3vecENS_8offset_tE.exit.i:     ; preds = %bb.e, %bb.d
  %.0.i.i14.i = phi i64 [ %i.ak, %bb.e ], [ 0, %bb.d ]
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !92
  %i.am = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.i.i14.i
  store ptr %i.ao, ptr %1, align 8
  %i.ap = call i64 @_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE(ptr noundef nonnull readonly align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0                   ; 2 uses
  %.lobit.i = lshr i64 %i.ap, 63
  %i.ar = trunc nuw nsw i64 %.lobit.i to i32
  %spec.select.i40 = select i1 %i.aq, i32 0, i32 %i.ar
  %.111.i = add i32 %spec.select.i40, %.010.i
  %i.as = zext i1 %i.aq to i32
  %.1.i = add i32 %.0.i, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.at = add i32 %.sroa.4.0.i, 1
  br label %bb.b, !llvm.loop !171

_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit: ; preds = %_ZNK13hilbert_basis3endEv.exit.i
  %i.au = mul i32 %.0.i, %.010.i                  ; 2 uses
  %.not95 = icmp eq i32 %i.au, 0
  br i1 %.not95, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !94  ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = getelementptr inbounds i8, ptr %i.aa, i64 -4
  br i1 %i.aw, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !77 ; 4 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add i32 %i.az, -1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bc
  %indvars.iv.next150 = add nuw nsw i64 %i.e, 1   ; 2 uses
  %indvars151 = trunc i64 %indvars.iv.next150 to i32 ; 2 uses
  %2 = icmp ugt i32 %i.az, %indvars151
  br i1 %2, label %.lr.ph154, label %.critedge

.lr.ph154:                                        ; preds = %.lr.ph.split, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit
  %.02599153 = phi i32 [ %indvars, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %indvars151, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next155 = phi i64 [ %indvars.iv.next, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %indvars.iv.next150, %.lr.ph.split ] ; 2 uses
  %.03096152 = phi i32 [ %.232, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %i.b, %.lr.ph.split ]
  %.02797151 = phi i32 [ %.229, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %.06.lcssa.i, %.lr.ph.split ] ; 3 uses
  %.02698150 = phi i32 [ %.2, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %i.au, %.lr.ph.split ] ; 2 uses
  %3 = and i64 %indvars.iv.next155, 4294967295
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %3
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !92 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42: ; preds = %.lr.ph154
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !77 ; 3 uses
  %.not.i43 = icmp eq i32 %i.bi, 0
  br i1 %.not.i43, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42
  %wide.trip.count.i45 = zext i32 %i.bi to i64    ; 3 uses
  %min.iters.check159 = icmp ult i32 %i.bi, 4
  br i1 %min.iters.check159, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44
  %n.vec161 = and i64 %wide.trip.count.i45, 4294967292 ; 3 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <2 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.bp, %vector.body162 ]
  %vec.phi165 = phi <2 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.bq, %vector.body162 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index163 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load166 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !154
  %wide.load167 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !154
  %i.bl = icmp ne <2 x i64> %wide.load166, zeroinitializer
  %i.bm = icmp ne <2 x i64> %wide.load167, zeroinitializer
  %i.bn = zext <2 x i1> %i.bl to <2 x i32>
  %i.bo = zext <2 x i1> %i.bm to <2 x i32>
  %i.bp = add <2 x i32> %vec.phi164, %i.bn        ; 2 uses
  %i.bq = add <2 x i32> %vec.phi165, %i.bo        ; 2 uses
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.br, label %middle.block169, label %vector.body162, !llvm.loop !172

middle.block169:                                  ; preds = %vector.body162
  %bin.rdx170 = add <2 x i32> %i.bq, %i.bp
  %i.bs = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %n.vec161, %wide.trip.count.i45
  br i1 %cmp.n171, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44, %middle.block169
  %indvars.iv.i47.ph = phi i64 [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44 ], [ %n.vec161, %middle.block169 ]
  %.06712.i48.ph = phi i32 [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44 ], [ %i.bs, %middle.block169 ]
  br label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i50, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46 ], [ %indvars.iv.i47.ph, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader ] ; 2 uses
  %.06712.i48 = phi i32 [ %spec.select.i49, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46 ], [ %.06712.i48.ph, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i47
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !154
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %spec.select.i49 = add i32 %.06712.i48, %i.bw   ; 2 uses
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, %wide.trip.count.i45
  br i1 %exitcond.not.i51, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46, !llvm.loop !173

_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46, %middle.block169, %.lr.ph154, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42
  %.06.lcssa.i52 = phi i32 [ 0, %.lr.ph154 ], [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42 ], [ %i.bs, %middle.block169 ], [ %spec.select.i49, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46 ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53
  %.sroa.4.0.i54 = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53 ], [ %i.dq, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit ] ; 3 uses
  %.010.i55 = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53 ], [ %.111.i65, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit ] ; 2 uses
  %.0.i56 = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53 ], [ %.1.i66, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit ] ; 2 uses
  br i1 %i.ab, label %_ZNK13hilbert_basis3endEv.exit.i57, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = load i32, ptr %i.ax, align 4, !tbaa !77
  br label %_ZNK13hilbert_basis3endEv.exit.i57

_ZNK13hilbert_basis3endEv.exit.i57:               ; preds = %bb.g, %bb.f
  %.0.i.i.i58 = phi i32 [ %i.bx, %bb.g ], [ 0, %bb.f ]
  %.not.i59 = icmp eq i32 %.sroa.4.0.i54, %.0.i.i.i58
  br i1 %.not.i59, label %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i: ; preds = %_ZNK13hilbert_basis3endEv.exit.i57
  %i.by = zext i32 %.sroa.4.0.i54 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.by
  %.sroa.0.0.copyload.i.i60 = load i32, ptr %i.bz, align 4, !tbaa !77
  %i.ca = load ptr, ptr %i.z, align 8, !tbaa !92
  %i.cb = zext i32 %.sroa.0.0.copyload.i.i60 to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ba
  %i.ce = load ptr, ptr %i.bd, align 8, !tbaa !92 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i

_ZNK13hilbert_basis12get_num_varsEv.exit.i:       ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !77 ; 2 uses
  %.not.i68 = icmp eq i32 %i.ch, 0
  br i1 %.not.i68, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK13hilbert_basis12get_num_varsEv.exit.i
  %wide.trip.count.i69 = zext i32 %i.ch to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i71, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %.sroa.07.011.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.de, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i70
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i70
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !132
  %.fr.i = freeze i64 %i.ck                       ; 9 uses
  %i.cl = add i64 %.fr.i, 2147483647
  %or.cond29.i = icmp ult i64 %i.cl, 4294967295
  %.pre.i = load i64, ptr %i.cj, align 8, !tbaa !154 ; 8 uses
  br i1 %or.cond29.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.cm = add i64 %.pre.i, 2147483647
  %or.cond30.i = icmp ult i64 %i.cm, 4294967295
  br i1 %or.cond30.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cn = mul nsw i64 %.pre.i, %.fr.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.co = icmp eq i64 %.fr.i, 0
  br i1 %i.co, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %.lr.ph.i
  %i.cp = icmp eq i64 %.fr.i, 1
  %i.cq = icmp ult i64 %.pre.i, 2
  %or.cond35.i = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond35.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread.i, %bb.j
  %i.cr = mul nsw i64 %.pre.i, %.fr.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.l:                                             ; preds = %.thread.i
  %i.cs = icmp eq i64 %.fr.i, -9223372036854775808
  %i.ct = icmp eq i64 %.pre.i, -9223372036854775808
  %or.cond33.i = or i1 %i.cs, %i.ct
  br i1 %or.cond33.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cu, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cv = tail call i64 @llvm.abs.i64(i64 %.fr.i, i1 true)
  %i.cw = tail call i64 @llvm.abs.i64(i64 %.pre.i, i1 true)
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cw, i64 %i.cv) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0 ; 5 uses
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %i.cx = icmp slt i64 %mul.val.i, 0
  %or.cond.i = or i1 %mul.ov.i, %i.cx
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cy, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cz = icmp slt i64 %.fr.i, 0
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = icmp sgt i64 %.pre.i, 0
  %i.db = sub nsw i64 0, %mul.val.i
  %spec.select = select i1 %i.da, i64 %i.db, i64 %mul.val.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.r:                                             ; preds = %bb.p
  %.not.i73 = icmp ne i64 %.fr.i, 0
  %i.dc = icmp slt i64 %.pre.i, 0
  %or.cond81 = select i1 %.not.i73, i1 %i.dc, i1 false
  %i.dd = sub nsw i64 0, %mul.val.i
  %spec.select82 = select i1 %or.cond81, i64 %i.dd, i64 %mul.val.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

_ZN13checked_int64ILb1EEmLERKS0_.exit:            ; preds = %bb.r, %bb.q, %bb.i, %bb.k
  %.sroa.074.0 = phi i64 [ %i.cr, %bb.k ], [ %spec.select, %bb.q ], [ %spec.select82, %bb.r ], [ %i.cn, %bb.i ] ; 3 uses
  %i.de = add i64 %.sroa.074.0, %.sroa.07.011.i   ; 4 uses
  %i.df = icmp sgt i64 %.sroa.07.011.i, 0
  br i1 %i.df, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %i.dg = icmp sgt i64 %.sroa.074.0, 0
  %i.dh = icmp slt i64 %i.de, 1
  %or.cond.i.i = and i1 %i.dg, %i.dh
  br i1 %or.cond.i.i, label %bb.t, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.di = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.di, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.u:                                             ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %i.dj = icmp slt i64 %.sroa.07.011.i, 0
  br i1 %i.dj, label %bb.v, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp slt i64 %.sroa.074.0, 0
  %i.dl = icmp sgt i64 %i.de, -1
  %or.cond3.i.i = and i1 %i.dk, %i.dl
  br i1 %or.cond3.i.i, label %bb.w, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.dm = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dm, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit.i:          ; preds = %bb.v, %bb.u, %bb.s
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i69
  br i1 %exitcond.not.i72, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %.lr.ph.i, !llvm.loop !174

_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit: ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i, %_ZNK13hilbert_basis12get_num_varsEv.exit.i
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %_ZNK13hilbert_basis12get_num_varsEv.exit.i ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i ], [ %i.de, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 2 uses
  %i.dn = icmp sgt i64 %.sroa.07.0.lcssa.i, 0     ; 2 uses
  %.lobit.i63 = lshr i64 %.sroa.07.0.lcssa.i, 63
  %i.do = trunc nuw nsw i64 %.lobit.i63 to i32
  %spec.select.i64 = select i1 %i.dn, i32 0, i32 %i.do
  %.111.i65 = add i32 %spec.select.i64, %.010.i55
  %i.dp = zext i1 %i.dn to i32
  %.1.i66 = add i32 %.0.i56, %i.dp
  %i.dq = add i32 %.sroa.4.0.i54, 1
  br label %bb.f, !llvm.loop !171

_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67: ; preds = %_ZNK13hilbert_basis3endEv.exit.i57
  %i.dr = mul i32 %.0.i56, %.010.i55              ; 3 uses
  %.not37 = icmp eq i32 %i.dr, 0
  br i1 %.not37, label %.critedge, label %bb.x

bb.x:                                             ; preds = %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67
  %i.ds = icmp ult i32 %.06.lcssa.i52, %.02797151
  br i1 %i.ds, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = icmp eq i32 %.06.lcssa.i52, %.02797151
  %i.du = icmp ult i32 %i.dr, %.02698150
  %or.cond = and i1 %i.dt, %i.du
  br i1 %or.cond, label %bb.z, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  br label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit: ; preds = %bb.y, %bb.z
  %.232 = phi i32 [ %.03096152, %bb.y ], [ %.02599153, %bb.z ] ; 2 uses
  %.229 = phi i32 [ %.02797151, %bb.y ], [ %.06.lcssa.i52, %bb.z ]
  %.2 = phi i32 [ %.02698150, %bb.y ], [ %i.dr, %bb.z ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next155, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %4 = icmp ugt i32 %i.az, %indvars
  br i1 %4, label %.lr.ph154, label %.critedge, !llvm.loop !175

.critedge:                                        ; preds = %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit, %.lr.ph.split, %.lr.ph, %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit
  %.3 = phi i32 [ %i.b, %.lr.ph ], [ %i.b, %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit ], [ %i.b, %.lr.ph.split ], [ %.232, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %.02599153, %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67 ] ; 2 uses
  %i.dv = load i32, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %.not38 = icmp eq i32 %.3, %i.dv
  br i1 %.not38, label %bb.aa, label %_ZN6vectorI13checked_int64ILb1EELb1EjEaSEOS2_.exit.thread.i

_ZN6vectorI13checked_int64ILb1EELb1EjEaSEOS2_.exit.thread.i: ; preds = %.critedge
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.dx = zext i32 %i.dv to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dx ; 3 uses
  %i.dz = zext i32 %.3 to i64                     ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dz ; 2 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !92
  store ptr null, ptr %i.dy, align 8, !tbaa !92
  %.pr.i = load ptr, ptr %i.ea, align 8, !tbaa !92
  store ptr %.pr.i, ptr %i.dy, align 8, !tbaa !92
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !92
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !93 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dz ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !141, !range !162, !noundef !107
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !141, !range !162, !noundef !107
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !141
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !141
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6vectorI13checked_int64ILb1EELb1EjEaSEOS2_.exit.thread.i, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN13hilbert_basis8saturateERK6vectorI13checked_int64ILb1EELb1EjEb(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.hilbert_basis::values", align 8 ; 4 uses
  %6 = alloca %"class.hilbert_basis::values", align 8 ; 7 uses
  %7 = alloca %"struct.hilbert_basis::offset_t", align 4 ; 5 uses
  %8 = alloca %"struct.hilbert_basis::offset_t", align 4 ; 5 uses
  %9 = alloca %"class.hilbert_basis::values", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !77
  br label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96
  %i.h = add i32 %i.g, 1
  tail call void @_ZN13hilbert_basis5index5resetEj(ptr noundef nonnull align 8 dereferenceable(1340) %i.e, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  tail call void @_ZN13hilbert_basis8passive25resetEv(ptr noundef nonnull align 8 dereferenceable(120) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91   ; 2 uses
  %.not.i40 = icmp eq ptr %i.l, null
  br i1 %.not.i40, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  store i32 0, ptr %i.m, align 4, !tbaa !77
  br label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41: ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit.thread, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph: ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph ], [ %indvars.iv.next, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit ] ; 3 uses
  %i.s = phi ptr [ %i.o, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph ], [ %i.ig, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit ] ; 4 uses
  %.035171 = phi i32 [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph ], [ %.2, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit ] ; 10 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !77   ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i: ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit
  %.not.not.i = icmp eq i32 %.2, 0
  br i1 %.not.not.i, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit.thread, label %thread-pre-split.i.preheader

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread
  %.not15.i = icmp ugt i32 %.035171, %i.u
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i
  %.035156.ph = phi i32 [ %.035171, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i ], [ %.2, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i ] ; 4 uses
  %.ph406 = phi ptr [ %i.s, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.u, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 %.035171, ptr %i.x, align 4, !tbaa !77
  %i.y = icmp eq i32 %.035171, 0
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !36
  call void @_ZN13hilbert_basis8passive24initERK7svectorINS_8offset_tEjE(ptr noundef nonnull align 8 dereferenceable(120) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.y, label %.critedge, label %.lr.ph174

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i
  %i.aa = phi ptr [ %.pr.pre.i, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i ], [ %.ph406, %thread-pre-split.i.preheader ] ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.i: ; preds = %thread-pre-split.i
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !77
  %i.ae = icmp ugt i32 %.035156.ph, %i.ad
  br i1 %i.ae, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i, label %bb.d

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.i, %thread-pre-split.i
  call void @_ZN6vectorIN13hilbert_basis8offset_tELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pr.pre.i = load ptr, ptr %i.n, align 8, !tbaa !91
  br label %thread-pre-split.i, !llvm.loop !176

bb.d:                                             ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 -4
  store i32 %.035156.ph, ptr %i.af, align 4, !tbaa !77
  %.not1218.i = icmp eq i32 %.0.i16.i.ph, %.035156.ph
  br i1 %.not1218.i, label %.lr.ph174.critedge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ag = zext i32 %.035156.ph to i64
  %i.ah = zext i32 %.0.i16.i.ph to i64            ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = sub nsw i64 %i.ag, %i.ah
  %i.ak = shl nsw i64 %i.aj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.ak, i1 false), !tbaa !56
  br label %.lr.ph174.critedge

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit.thread: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !36
  call void @_ZN13hilbert_basis8passive24initERK7svectorINS_8offset_tEjE(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %.critedge

.lr.ph174.critedge:                               ; preds = %bb.d, %.lr.ph.preheader.i
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !36
  call void @_ZN13hilbert_basis8passive24initERK7svectorINS_8offset_tEjE(ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.critedge, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !91  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.critedge, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit49

bb.e:                                             ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !77 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !94  ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNK13hilbert_basis3vecENS_8offset_tE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !77
  %i.ax = zext i32 %i.aw to i64
  br label %_ZNK13hilbert_basis3vecENS_8offset_tE.exit

_ZNK13hilbert_basis3vecENS_8offset_tE.exit:       ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.ax, %bb.f ], [ 0, %bb.e ]
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.az = zext i32 %i.as to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0.i.i
  store ptr %i.bb, ptr %6, align 8
  %i.bc = call i64 @_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bd = load ptr, ptr %6, align 8, !tbaa !177   ; 27 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !132
  %i.bf = load i32, ptr %i.f, align 8, !tbaa !96  ; 26 uses
  %.not183 = icmp eq i32 %i.bf, 0
  br i1 %.not183, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK13hilbert_basis3vecENS_8offset_tE.exit
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !94  ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.us.preheader, label %.lr.ph.split

_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.us.preheader: ; preds = %.lr.ph
  %i.bi = add i32 %i.bf, 2147483647
end_hunk_0
