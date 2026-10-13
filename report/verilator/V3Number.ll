Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN8V3Number7opIToRDERKS_b:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !65
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #31
  br label %_ZN8V3NumberD2Ev.exit

_ZN8V3NumberD2Ev.exit:                            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNK8V3Number10isNegativeEv.exit.thread

bb.p:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.r:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aa

_ZNK8V3Number10isNegativeEv.exit.thread:          ; preds = %_ZNK12V3NumberData3numEv.exit.i.i, %bb.h, %bb.g, %bb.f, %_ZN8V3NumberD2Ev.exit, %_ZNK8V3Number10isNegativeEv.exit
  %i.bg = phi i1 [ false, %_ZNK8V3Number10isNegativeEv.exit ], [ true, %_ZN8V3NumberD2Ev.exit ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNK12V3NumberData3numEv.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !47 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK8V3Number10isNegativeEv.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !48
  %i.bm = add i8 %i.bl, -1
  %spec.select.i.i = icmp ult i8 %i.bm, 2
  %i.bn = icmp samesign ult i32 %i.bi, 129
  %i.bo = load ptr, ptr %3, align 8
  %spec.select.i10.i = select i1 %i.bn, ptr %3, ptr %i.bo
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.i.us, label %._crit_edge

_ZNK12V3NumberData3numEv.exit.i.us:               ; preds = %.lr.ph, %_ZNK8V3Number6bitIs1Ei.exit.thread.us
  %.037.us.in = phi i32 [ %.037.us, %_ZNK8V3Number6bitIs1Ei.exit.thread.us ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.01736.us = phi double [ %.1.us, %_ZNK8V3Number6bitIs1Ei.exit.thread.us ], [ 0.000000e+00, %.lr.ph ] ; 3 uses
  %.037.us = add nsw i32 %.037.us.in, -1          ; 4 uses
  %i.bp = lshr i32 %.037.us, 5
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.br, align 4, !tbaa !66
  %i.bs = zext i32 %.sroa.0.0.copyload.i.us to i64
  %i.bt = and i32 %.037.us, 31
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 1, %i.bu                ; 2 uses
  %i.bw = and i64 %i.bv, %i.bs
  %.not7.i.us = icmp eq i64 %i.bw, 0
  br i1 %.not7.i.us, label %_ZNK8V3Number6bitIs1Ei.exit.thread.us, label %_ZNK8V3Number6bitIs1Ei.exit.us

_ZNK8V3Number6bitIs1Ei.exit.us:                   ; preds = %_ZNK12V3NumberData3numEv.exit.i.us
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.sroa.4.0.copyload.i.us = load i32, ptr %.sroa.4.0..sroa_idx.i.us, align 4, !tbaa !66
  %i.bx = zext i32 %.sroa.4.0.copyload.i.us to i64
  %i.by = and i64 %i.bv, %i.bx
  %.not8.i.us = icmp eq i64 %i.by, 0
  br i1 %.not8.i.us, label %bb.u, label %_ZNK8V3Number6bitIs1Ei.exit.thread.us

bb.u:                                             ; preds = %_ZNK8V3Number6bitIs1Ei.exit.us
  %i.bz = uitofp nneg i32 %.037.us to double
  %i.ca = call double @exp2(double noundef %i.bz) #30
  %i.cb = fadd double %.01736.us, %i.ca
  br label %_ZNK8V3Number6bitIs1Ei.exit.thread.us

_ZNK8V3Number6bitIs1Ei.exit.thread.us:            ; preds = %bb.u, %_ZNK8V3Number6bitIs1Ei.exit.us, %_ZNK12V3NumberData3numEv.exit.i.us
  %.1.us = phi double [ %i.cb, %bb.u ], [ %.01736.us, %_ZNK8V3Number6bitIs1Ei.exit.us ], [ %.01736.us, %_ZNK12V3NumberData3numEv.exit.i.us ] ; 2 uses
  %i.cc = icmp samesign ugt i32 %.037.us.in, 1
  br i1 %i.cc, label %_ZNK12V3NumberData3numEv.exit.i.us, label %._crit_edge, !llvm.loop !479

._crit_edge:                                      ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread.us, %.lr.ph, %_ZNK8V3Number10isNegativeEv.exit.thread
  %.017.lcssa = phi double [ 0.000000e+00, %_ZNK8V3Number10isNegativeEv.exit.thread ], [ 0.000000e+00, %.lr.ph ], [ %.1.us, %_ZNK8V3Number6bitIs1Ei.exit.thread.us ] ; 2 uses
  %i.cd = fneg double %.017.lcssa
  %.2 = select i1 %i.bg, double %i.cd, double %.017.lcssa
  %i.ce = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(56) %0, double noundef %.2)
          to label %bb.v unwind label %bb.q       ; 0 uses

bb.v:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !48  ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 3
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN8V3NumberD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %bb.w
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !29
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #31
  br label %_ZN8V3NumberD2Ev.exit32

bb.x:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.bh, align 8, !tbaa !47
  %i.co = icmp sgt i32 %i.cn, 128
  %i.cp = icmp eq i8 %i.cg, 1
  %i.cq = and i1 %i.cp, %i.co
  br i1 %i.cq, label %bb.y, label %_ZN8V3NumberD2Ev.exit32

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %3, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZN8V3NumberD2Ev.exit32, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #31
  br label %_ZN8V3NumberD2Ev.exit32

_ZN8V3NumberD2Ev.exit32:                          ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %0

bb.aa:                                            ; preds = %bb.q, %bb.t, %bb.p
  %.pn26.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %.pn, %bb.t ], [ %i.bd, %bb.q ]
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7opRToISERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2546) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !48
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2547) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.96)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %.not7 = icmp eq i32 %i.m, 64
  br i1 %.not7, label %_ZNK8V3Number8toDoubleEv.exit, label %.critedge.i, !prof !158

.critedge.i:                                      ; preds = %bb.e
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.p) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.e
  %i.q = load i32, ptr %1, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.s to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.t = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %2 = tail call double @llvm.trunc.f64(double %i.t)
  %i.u = fptosi double %2 to i32
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8setLongSEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.u) ; 0 uses
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #11

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number12opRealToBitsERKS_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2584) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !48
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2585) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.96)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp ne i32 %i.m, 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ne i32 %i.p, 64
  %or.cond = select i1 %i.n, i1 true, i1 %i.q, !prof !157
  br i1 %or.cond, label %.critedge, label %_ZNK8V3Number8toDoubleEv.exit, !prof !157

.critedge:                                        ; preds = %bb.e
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2586) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.16)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.t) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.e
  %i.u = load i32, ptr %1, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.u to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.w to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.x = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setQuadEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.sroa.0.4.insert.insert.i) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number13opBitsToRealDERKS_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2595) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47
  %i.f = icmp ne i32 %i.e, 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp ne i32 %i.h, 64
  %or.cond = select i1 %i.f, i1 true, i1 %i.i, !prof !157
  br i1 %or.cond, label %.critedge, label %bb.d, !prof !157

.critedge:                                        ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2596) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.16)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.n = bitcast i64 %i.m to double
  %i.o = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(56) %0, double noundef %i.n) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9opNegateDERKS_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2605) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !48
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2606) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.96)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %.not6 = icmp eq i32 %i.m, 64
  br i1 %.not6, label %_ZNK8V3Number8toDoubleEv.exit, label %.critedge.i, !prof !158

.critedge.i:                                      ; preds = %bb.e
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 1073) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.68)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.p) #32
  unreachable

_ZNK8V3Number8toDoubleEv.exit:                    ; preds = %bb.e
  %i.q = load i32, ptr %1, align 8, !tbaa !51
  %.sroa.0.0.insert.ext.i = zext i32 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !51
  %.sroa.0.4.insert.ext.i = zext i32 %i.s to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.t = bitcast i64 %.sroa.0.4.insert.insert.i to double
  %i.u = fneg double %i.t
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(56) %0, double noundef %i.u) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number6opAddDERKS_S1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not10 = or i1 %i.a, %i.b
  br i1 %.not10, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2610) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2611) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.96)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.m) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.o = load i8, ptr %i.n, align 4, !tbaa !48
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2611) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.96)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %2)
end_hunk_0
