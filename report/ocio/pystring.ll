Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/pystring?download=true
inline.NumInlined: 1018
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8pystring4joinERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE:bb.a

bb.j:                                             ; preds = %._crit_edge.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit22: ; preds = %._crit_edge.i.i20, %bb.i, %bb.j
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !23
  %i.as = load ptr, ptr %0, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.au = icmp ugt i64 %i.j, 1
  br i1 %i.au, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit22
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.01443 = phi i64 [ 1, %.lr.ph ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ay = load ptr, ptr %2, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.01443 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ba = load ptr, ptr %1, align 8, !tbaa !20, !noalias !96
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !23, !noalias !96 ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !20, !noalias !96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !23, !noalias !96 ; 3 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !24, !alias.scope !97
  store i64 0, ptr %i.ax, align 8, !tbaa !23, !alias.scope !97
  store i8 0, ptr %i.aw, align 8, !tbaa !21, !alias.scope !97
  %i.bf = add i64 %i.be, %i.bb
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bf)
          to label %bb.l unwind label %.loopexit30

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !23, !alias.scope !97
  %i.bh = sub i64 4611686018427387903, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bb
  br i1 %i.bi, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit30 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !23, !alias.scope !97
  %i.bl = sub i64 4611686018427387903, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.be
  br i1 %i.bm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bc, i64 noundef %i.be)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit30 ; 0 uses

.loopexit30:                                      ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit30
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit30 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !20, !alias.scope !97 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aw
  br i1 %i.bp, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bq = load i64, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %i.br = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.bs = sub i64 4611686018427387903, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #25
          to label %.noexc unwind label %.loopexit.split-lp32

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.bu = load ptr, ptr %3, align 8, !tbaa !20
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bu, i64 noundef %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit31 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.aw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.by = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ca = add nuw i64 %.01443, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.j
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !95

.loopexit31:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit33 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp32:                             ; preds = %bb.n
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp32, %.loopexit31
  %lpad.phi35 = phi { ptr, i32 } [ %lpad.loopexit33, %.loopexit31 ], [ %lpad.loopexit.split-lp34, %.loopexit.split-lp32 ] ; 2 uses
  %i.cb = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.aw
  br i1 %i.cc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.m
  %.sink = phi ptr [ %i.bo, %bb.m ], [ %i.cb, %bb.o ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.m ], [ %lpad.phi35, %bb.o ]
  %i.cd = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ce) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.m
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.m ], [ %lpad.phi35, %bb.o ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.cf = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.k
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %.body
  %i.ch = load i64, ptr %i.k, align 8, !tbaa !21
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN8pystring8endswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.a, align 8, !tbaa !23
  %.val5 = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %i.c = trunc i64 %.val4 to i32                  ; 5 uses
  %i.d = trunc i64 %.val6 to i32                  ; 2 uses
  %i.e = icmp sgt i32 %3, %i.c
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %3, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %3, %i.c
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.037.i = phi i32 [ %3, %bb.b ], [ %spec.store.select.i, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp slt i32 %2, 0
  %i.i = add nsw i32 %2, %i.c
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 0)
  %.038.i = select i1 %i.h, i32 %spec.store.select1.i, i32 %2 ; 2 uses
  %i.j = sub nsw i32 %.037.i, %.038.i
  %i.k = icmp slt i32 %i.j, %i.d
  %i.l = icmp sgt i32 %.038.i, %i.c
  %or.cond.i = or i1 %i.l, %i.k
  br i1 %or.cond.i, label %_ZN8pystring12_GLOBAL__N_117_string_tailmatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = sub nsw i32 %.037.i, %i.d
  %4 = zext nneg i32 %i.m to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %4
  %sext.i = shl i64 %.val6, 32
  %i.o = ashr exact i64 %sext.i, 32
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.n, ptr readonly %.val5, i64 %i.o)
  %.not47.i = icmp eq i32 %bcmp.i, 0
  br label %_ZN8pystring12_GLOBAL__N_117_string_tailmatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iii.exit

_ZN8pystring12_GLOBAL__N_117_string_tailmatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iii.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i1 [ false, %bb.d ], [ %.not47.i, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN8pystring10startswithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.a, align 8, !tbaa !23
  %.val5 = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %i.c = trunc i64 %.val4 to i32                  ; 5 uses
  %i.d = trunc i64 %.val6 to i32                  ; 2 uses
  %i.e = icmp sgt i32 %3, %i.c
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %3, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %3, %i.c
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.037.i = phi i32 [ %3, %bb.b ], [ %spec.store.select.i, %bb.c ], [ %i.c, %bb.a ]
  %i.h = icmp slt i32 %2, 0
  %i.i = add nsw i32 %2, %i.c
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 0)
  %.038.i = select i1 %i.h, i32 %spec.store.select1.i, i32 %2 ; 3 uses
  %i.j = add nsw i32 %.038.i, %i.d
  %i.k = icmp sgt i32 %i.j, %i.c
  %i.l = sub nsw i32 %.037.i, %.038.i
  %.not.i = icmp slt i32 %i.l, %i.d
  %or.cond = select i1 %i.k, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZN8pystring12_GLOBAL__N_117_string_tailmatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %.038.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  %sext.i = shl i64 %.val6, 32
  %i.o = ashr exact i64 %sext.i, 32
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.n, ptr readonly %.val5, i64 %i.o)
  %.not47.i = icmp eq i32 %bcmp.i, 0
  br label %_ZN8pystring12_GLOBAL__N_117_string_tailmatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iii.exit

_ZN8pystring12_GLOBAL__N_117_string_tailmatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iii.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i1 [ false, %bb.d ], [ %.not47.i, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef zeroext i1 @_ZN8pystring7isalnumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  switch i64 %i.b, label %.lr.ph [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isalnum(i32 noundef %i.f) #23
  %i.h = icmp ne i32 %i.g, 0
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.011
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isalnum(i32 noundef %i.k) #23
  %.not.not = icmp ne i32 %i.l, 0                 ; 2 uses
  %i.m = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp ne i64 %i.m, %i.b
  %or.cond.not = select i1 %.not.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.09 = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ], [ %.not.not, %bb.c ]
  ret i1 %.09
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef zeroext i1 @_ZN8pystring7isalphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  switch i64 %i.b, label %.lr.ph [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isalpha(i32 noundef %i.f) #23
  %i.h = icmp ne i32 %i.g, 0
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.011
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isalpha(i32 noundef %i.k) #23
  %.not.not = icmp ne i32 %i.l, 0                 ; 2 uses
  %i.m = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp ne i64 %i.m, %i.b
  %or.cond.not = select i1 %.not.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.09 = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ], [ %.not.not, %bb.c ]
  ret i1 %.09
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN8pystring7isdigitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  switch i64 %i.b, label %.lr.ph [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = sext i8 %i.e to i32
  %isdigittmp11 = add nsw i32 %i.f, -48
  %isdigit12 = icmp ult i32 %isdigittmp11, 10
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.013
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21
  %i.i = sext i8 %i.h to i32
  %isdigittmp = add nsw i32 %i.i, -48
  %isdigit = icmp ult i32 %isdigittmp, 10         ; 2 uses
  %i.j = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp ne i64 %i.j, %i.b
  %or.cond.not = select i1 %isdigit, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.09 = phi i1 [ false, %bb.a ], [ %isdigit12, %bb.b ], [ %isdigit, %bb.c ]
  ret i1 %.09
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef zeroext i1 @_ZN8pystring7islowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  switch i64 %i.b, label %.lr.ph [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
end_hunk_0
