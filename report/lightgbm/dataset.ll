Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd:bb.a
  %i.ew = icmp eq ptr %i.ev, %i.eq
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %.noexc59
  %i.ex = load i64, ptr %i.eq, align 8, !tbaa !48
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56: ; preds = %.noexc59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !126 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i57, label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 64
  invoke void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %i.fa, ptr noundef %i.eg, i32 noundef %i.eh, ptr noundef %i.ei, ptr noundef %i.ej, ptr noundef nonnull %i.fb, ptr noundef %i.ep)
          to label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit unwind label %bb.z

bb.y:                                             ; preds = %.noexc.i49
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ad

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %i.fe = load ptr, ptr %i.h, align 8, !tbaa !203
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fg = zext nneg i32 %.0.lcssa to i64
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !210
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !45
  %.idx = shl i64 %i.fj, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.fl, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 36, ptr %i.a, align 8, !tbaa !45
  %i.fm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc65 unwind label %bb.z   ; 3 uses

.noexc65:                                         ; preds = %bb.aa
  store ptr %i.fm, ptr %10, align 8, !tbaa !47
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.fm, ptr noundef nonnull align 1 dereferenceable(36) @.str.16, i64 36, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !49
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.fq = load ptr, ptr %10, align 8, !tbaa !47   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fl
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %.noexc65
  %i.fs = load i64, ptr %i.fl, align 8, !tbaa !48
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62: ; preds = %.noexc65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !126 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i63, label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 64
  invoke void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb0ELb0ELb1ELi32EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %i.fv, ptr noundef %i.eg, i32 noundef %i.eh, ptr noundef %4, ptr noundef %i.fe, ptr noundef nonnull %i.fw, ptr noundef %i.fk)
          to label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit unwind label %bb.z

_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %i.fx = load ptr, ptr %14, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit
  %i.fy = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gb) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb0ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit

_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb0ELb1ELi32EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.z, %bb.y, %.body
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.z ], [ %i.fc, %bb.y ], [ %i.dp, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.dr, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %.pn40 = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.gc = load ptr, ptr %14, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIiSaIiEED2Ev.exit70, label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp
  %i.gd = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !201
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

_ZNSt6vectorIiSaIiEED2Ev.exit70:                  ; preds = %.loopexit.split-lp, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  resume { ptr, i32 } %.pn40
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !138
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !138
  %i.j = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not23 = icmp sgt i32 %i.j, %i.i
  br i1 %.not23, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !203
  %i.l = load ptr, ptr %5, align 8, !tbaa !184
  %i.m = load ptr, ptr %3, align 8, !tbaa !203
  %i.n = load ptr, ptr %7, align 8, !tbaa !203
  %i.o = load ptr, ptr %6, align 8, !tbaa !203
  %i.p = load i32, ptr %i.c, align 4, !tbaa !138  ; 2 uses
  %i.q = sext i32 %i.j to i64
  %i.r = sext i32 %i.p to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.q, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %i.t = sext i32 %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv25 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next26, %bb.c ] ; 5 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv25
  %i.v = load i32, ptr %i.u, align 4, !tbaa !138
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !213
  %i.z = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv25
  store float %i.y, ptr %i.z, align 4, !tbaa !213
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.w
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !213
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv25
  store float %i.ab, ptr %i.ac, align 4, !tbaa !213
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  %.not21.not = icmp slt i64 %indvars.iv25, %i.t
  br i1 %.not21.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add i64 %indvars.iv.a, %i.r  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !138
  %i.ad = add nsw i32 %i.p, %i.s
  %i.ae = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.f) ; 3 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !138
  %.not = icmp slt i32 %i.ae, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #19

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare !callback !215 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #19

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined.15(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not29 = icmp sgt i32 %i.k, %i.j
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %.idx = shl i64 %i.aa, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !184
  %i.ak = load i32, ptr %7, align 4, !tbaa !138
  %i.al = load ptr, ptr %8, align 8, !tbaa !203
  %i.am = load ptr, ptr %9, align 8, !tbaa !203
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.am, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = extractvalue { ptr, i32 } %i.aq, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.au = icmp eq i32 %i.as, %i.at
  %i.av = call ptr @__cxa_begin_catch(ptr %i.ar) #19 ; 2 uses
  br i1 %i.au, label %bb.e, label %.invoke33

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !134
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.az)
          to label %.invoke33 unwind label %bb.h

bb.f:                                             ; preds = %.invoke, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bb = sext i32 %i.ba to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bb
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke33:                                        ; preds = %bb.d, %bb.e
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %.invoke33
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %.invoke33, %.invoke, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #40
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !209
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #38
  unreachable

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2:  ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !209
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.c, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.c:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.e = load ptr, ptr %2, align 8, !tbaa !209
  store ptr null, ptr %2, align 8, !tbaa !209
  %i.f = load ptr, ptr %0, align 8, !tbaa !209    ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !209
  store ptr %i.e, ptr %0, align 8, !tbaa !209
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

end_hunk_0
begin_hunk_1_@_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb1ELb1ELb0ELi0EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd.omp_outlined:bb.a
  %i.y = icmp eq i32 %i.x, 8
  %i.z = load ptr, ptr %5, align 8, !tbaa !132    ; 2 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !184
  %i.ab = load ptr, ptr %7, align 8, !tbaa !203
  %i.ac = load ptr, ptr %8, align 8, !tbaa !203
  %i.ad = load ptr, ptr %9, align 8, !tbaa !218   ; 6 uses
  %i.ae = icmp eq i64 %indvars.iv, 0              ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !232
  %i.ag = load i8, ptr %2, align 8, !tbaa !226, !range !129, !noundef !130
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !135 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !233
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an
  %i.ap = load i32, ptr %i.n, align 8, !tbaa !234
  %i.aq = sext i32 %i.ap to i64
  %.idx14.i = mul nsw i64 %i.aq, -16
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %.idx14.i
  br label %.invoke

bb.g:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.at = load i32, ptr %i.n, align 8, !tbaa !234
  %i.au = sext i32 %i.at to i64
  %i.av = shl i64 %indvars.iv, 4
  %i.aw = add i64 %i.av, -16
  %.idx.i = mul i64 %i.aw, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  br label %.invoke

bb.h:                                             ; preds = %.invoke
  %i.ay = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  %i.ba = extractvalue { ptr, i32 } %i.ay, 1
  %i.bb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.bc = icmp eq i32 %i.ba, %i.bb
  %i.bd = call ptr @__cxa_begin_catch(ptr %i.az) #19 ; 2 uses
  br i1 %i.bc, label %bb.i, label %.invoke44

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !134
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.bh)
          to label %.invoke44 unwind label %bb.o

_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb0ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit: ; preds = %.invoke43, %.invoke
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bj = sext i32 %i.bi to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bj
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke44:                                        ; preds = %bb.h, %bb.i
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.invoke43 unwind label %bb.o

.invoke43:                                        ; preds = %.invoke44
  invoke void @__cxa_end_catch()
          to label %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb0ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit unwind label %bb.o

bb.j:                                             ; preds = %bb.c
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !232
  %i.bl = load i8, ptr %2, align 8, !tbaa !226, !range !129, !noundef !130
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.l, label %.invoke

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.ad, align 8, !tbaa !135 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !233
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.n, align 8, !tbaa !234
  %i.bv = sext i32 %i.bu to i64
  %.idx14.i32 = mul nsw i64 %i.bv, -16
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %.idx14.i32
  br label %.invoke

bb.m:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !135
  %i.by = load i32, ptr %i.n, align 8, !tbaa !234
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl i64 %indvars.iv, 4
  %i.cb = add i64 %i.ca, -16
  %.idx.i30 = mul i64 %i.cb, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i30
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.l, %bb.m, %bb.e, %bb.f, %bb.g
  %.0.i.sink = phi ptr [ %i.ax, %bb.g ], [ %i.ar, %bb.f ], [ %i.af, %bb.e ], [ %i.bw, %bb.l ], [ %i.bk, %bb.k ], [ %i.cc, %bb.m ] ; 2 uses
  %i.cd = load i32, ptr %i.p, align 4, !tbaa !235
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !236
  %i.cg = mul i64 %i.cf, %i.ce
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.sink, i8 0, i64 %i.cg, i1 false)
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !134
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa, i32 noundef %i.u, i32 noundef %.sroa.speculated, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %.0.i.sink)
          to label %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb0ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit unwind label %bb.h, !inline_history !402

._crit_edge:                                      ; preds = %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb0ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.o:                                             ; preds = %.invoke44, %.invoke43, %bb.i
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #40
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !138
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !138
  %i.j = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not19 = icmp sgt i32 %i.j, %i.i
  br i1 %.not19, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !203
  %i.l = load ptr, ptr %5, align 8, !tbaa !184
  %i.m = load ptr, ptr %3, align 8, !tbaa !203
  %i.n = load i32, ptr %i.c, align 4, !tbaa !138  ; 2 uses
  %i.o = sext i32 %i.j to i64
  %i.p = sext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.o, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.r = sext i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv21 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next22, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv21
  %i.t = load i32, ptr %i.s, align 4, !tbaa !138
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !213
  %i.x = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv21
  store float %i.w, ptr %i.x, align 4, !tbaa !213
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  %.not17.not = icmp slt i64 %indvars.iv21, %i.r
  br i1 %.not17.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add i64 %indvars.iv.a, %i.p  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !138
  %i.y = add nsw i32 %i.n, %i.q
  %i.z = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.f) ; 3 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !138
  %.not = icmp slt i32 %i.z, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined.23(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not39 = icmp sgt i32 %i.k, %i.j
  br i1 %.not39, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %.loopexit
  %indvars.iv43 = phi i64 [ %i.n, %.lr.ph41 ], [ %indvars.iv.next44, %.loopexit ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv43
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216  ; 3 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %.idx = shl i64 %i.aa, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 8 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 4
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !184
  %i.ak = load i32, ptr %7, align 4, !tbaa !138
  %i.al = load ptr, ptr %8, align 8, !tbaa !203
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.ab)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  %i.aq = icmp sgt i32 %i.w, 0
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ar = shl nuw nsw i32 %i.w, 1
  %i.as = load ptr, ptr %10, align 8, !tbaa !203
  %i.at = load float, ptr %i.as, align 4, !tbaa !213
  %i.au = fpext float %i.at to double             ; 5 uses
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = add nsw i64 %i.av, -2                   ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 1
  %i.ay = add nuw i64 %i.ax, 1                    ; 2 uses
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.aw, 6
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ay, -4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = extractvalue { ptr, i32 } %i.ba, 1
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.be = icmp eq i32 %i.bc, %i.bd
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.bb) #19 ; 2 uses
  br i1 %i.be, label %bb.f, label %.invoke47

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !134
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.bj)
          to label %.invoke47 unwind label %bb.j

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod48)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.epil
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !45
  %i.bm = uitofp i64 %i.bl to double
  %i.bn = fmul double %i.bm, %i.au
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.epil
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store double %i.bn, ptr %i.bp, align 8, !tbaa !125
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.g, !llvm.loop !403

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.g, %.invoke, %bb.d
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  %i.bq = load i32, ptr %i.b, align 4, !tbaa !138
  %i.br = sext i32 %i.bq to i64
  %.not.not = icmp slt i64 %indvars.iv43, %i.br
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke47:                                        ; preds = %bb.e, %bb.f
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %.invoke47
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.j

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !45
  %i.bu = uitofp i64 %i.bt to double
  %i.bv = fmul double %i.bu, %i.au
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store double %i.bv, ptr %i.bx, align 8, !tbaa !125
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !45
  %i.ca = uitofp i64 %i.bz to double
  %i.cb = fmul double %i.ca, %i.au
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store double %i.cb, ptr %i.cd, align 8, !tbaa !125
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cg = uitofp i64 %i.cf to double
  %i.ch = fmul double %i.cg, %i.au
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store double %i.ch, ptr %i.cj, align 8, !tbaa !125
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !45
  %i.cm = uitofp i64 %i.cl to double
  %i.cn = fmul double %i.cm, %i.au
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store double %i.cn, ptr %i.cp, align 8, !tbaa !125
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb0ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  %i.ap = icmp sgt i32 %i.w, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.aq = shl nuw nsw i32 %i.w, 1
  %i.ar = load ptr, ptr %10, align 8, !tbaa !203
  %i.as = load float, ptr %i.ar, align 4, !tbaa !213
  %i.at = fpext float %i.as to double             ; 5 uses
  %i.au = zext nneg i32 %i.aq to i64
  %i.av = add nsw i64 %i.au, -2                   ; 2 uses
  %i.aw = lshr exact i64 %i.av, 1
  %i.ax = add nuw i64 %i.aw, 1                    ; 2 uses
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.ay = icmp ult i64 %i.av, 6
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ax, -4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  %i.bb = extractvalue { ptr, i32 } %i.az, 1
  %i.bc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.bd = icmp eq i32 %i.bb, %i.bc
  %i.be = call ptr @__cxa_begin_catch(ptr %i.ba) #19 ; 2 uses
  br i1 %i.bd, label %bb.f, label %.invoke46

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !134
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.bi)
          to label %.invoke46 unwind label %bb.j

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.epil
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !45
  %i.bl = uitofp i64 %i.bk to double
  %i.bm = fmul double %i.bl, %i.at
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.epil
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %i.bm, ptr %i.bo, align 8, !tbaa !125
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.g, !llvm.loop !407

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.g, %.invoke, %bb.d
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bq = sext i32 %i.bp to i64
  %.not.not = icmp slt i64 %indvars.iv42, %i.bq
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke46:                                        ; preds = %bb.e, %bb.f
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %.invoke46
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.j

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !45
  %i.bt = uitofp i64 %i.bs to double
  %i.bu = fmul double %i.bt, %i.at
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store double %i.bu, ptr %i.bw, align 8, !tbaa !125
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !45
  %i.bz = uitofp i64 %i.by to double
  %i.ca = fmul double %i.bz, %i.at
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store double %i.ca, ptr %i.cc, align 8, !tbaa !125
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.1
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !45
  %i.cf = uitofp i64 %i.ce to double
  %i.cg = fmul double %i.cf, %i.at
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store double %i.cg, ptr %i.ci, align 8, !tbaa !125
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.2
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.cl = uitofp i64 %i.ck to double
  %i.cm = fmul double %i.cl, %i.at
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store double %i.cm, ptr %i.co, align 8, !tbaa !125
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !408

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.j:                                             ; preds = %.invoke46, %.invoke, %bb.f
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #40
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !138
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !138
  %i.j = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not19 = icmp sgt i32 %i.j, %i.i
  br i1 %.not19, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !212
  %i.l = load ptr, ptr %5, align 8, !tbaa !184
  %i.m = load ptr, ptr %3, align 8, !tbaa !212
  %i.n = load i32, ptr %i.c, align 4, !tbaa !138  ; 2 uses
  %i.o = sext i32 %i.j to i64
  %i.p = sext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.o, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.r = sext i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv21 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next22, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv21
  %i.t = load i32, ptr %i.s, align 4, !tbaa !138
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !238
  %i.x = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv21
  store i16 %i.w, ptr %i.x, align 2, !tbaa !238
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  %.not17.not = icmp slt i64 %indvars.iv21, %i.r
  br i1 %.not17.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add i64 %indvars.iv.a, %i.p  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !138
  %i.y = add nsw i32 %i.n, %i.q
  %i.z = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.f) ; 3 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !138
  %.not = icmp slt i32 %i.z, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined.24(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not29 = icmp sgt i32 %i.k, %i.j
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !184
  %i.ak = load i32, ptr %7, align 4, !tbaa !138
  %i.al = load ptr, ptr %8, align 8, !tbaa !203
  %i.am = load ptr, ptr %9, align 8, !tbaa !203
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.am, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = extractvalue { ptr, i32 } %i.aq, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.au = icmp eq i32 %i.as, %i.at
  %i.av = call ptr @__cxa_begin_catch(ptr %i.ar) #19 ; 2 uses
  br i1 %i.au, label %bb.e, label %.invoke33

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !134
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.az)
          to label %.invoke33 unwind label %bb.h

bb.f:                                             ; preds = %.invoke, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bb = sext i32 %i.ba to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bb
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke33:                                        ; preds = %bb.d, %bb.e
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %.invoke33
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %.invoke33, %.invoke, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb1ELb0ELb1ELi16EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 2 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %10 = alloca %class.ThreadExceptionHelper, align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.g, align 8, !tbaa !184
  store i32 %2, ptr %i.h, align 4, !tbaa !138
  store ptr %3, ptr %i.i, align 8, !tbaa !203
  store ptr %4, ptr %i.j, align 8, !tbaa !203
  store ptr %5, ptr %i.k, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %i.o = load i8, ptr %0, align 8, !tbaa !226, !range !129, !noundef !130
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !227, !range !129, !noundef !130
  %i.s = trunc nuw i8 %i.r to i1
  %spec.select = select i1 %i.s, i64 16, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 16, %bb.a ], [ %spec.select, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !132  ; 2 uses
  store ptr %i.u, ptr %i.l, align 8, !tbaa !132
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %.noexc.i

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.v, ptr %9, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i64 29, ptr %i.f, align 8, !tbaa !45
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !47
  %i.x = load i64, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.w, ptr noundef nonnull align 1 dereferenceable(29) @.str.17, i64 29, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_2
begin_hunk_3_@_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb1ELb1ELb1ELi16EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd.omp_outlined:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.s = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit ] ; 6 uses
  %i.t = load i32, ptr %i.m, align 8, !tbaa !228  ; 2 uses
  %i.u = trunc nsw i64 %indvars.iv to i32
  %i.v = mul nsw i32 %i.t, %i.u                   ; 2 uses
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = load i32, ptr %3, align 4, !tbaa !138
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.w)
  %i.y = load i32, ptr %4, align 4, !tbaa !138
  %i.z = icmp eq i32 %i.y, 8
  %i.aa = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !184
  %i.ac = load ptr, ptr %7, align 8, !tbaa !203
  %i.ad = load ptr, ptr %8, align 8, !tbaa !203
  %i.ae = load ptr, ptr %9, align 8, !tbaa !218   ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !135 ; 4 uses
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !234
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %indvars.iv, 1
  %i.aj = mul i64 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.p, align 4, !tbaa !235
  %i.am = sext i32 %i.al to i64
  %i.an = load i64, ptr %i.r, align 8, !tbaa !240
  %i.ao = mul i64 %i.an, %i.am
  call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %.invoke

bb.e:                                             ; preds = %.invoke
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  %i.ar = extractvalue { ptr, i32 } %i.ap, 1
  %i.as = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.at = icmp eq i32 %i.ar, %i.as
  %i.au = call ptr @__cxa_begin_catch(ptr %i.aq) #19 ; 2 uses
  br i1 %i.at, label %bb.f, label %.invoke40

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.ay)
          to label %.invoke40 unwind label %bb.m

_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit: ; preds = %.invoke39, %.invoke
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.az = load i32, ptr %i.b, align 4, !tbaa !138
  %i.ba = sext i32 %i.az to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ba
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke40:                                        ; preds = %bb.e, %bb.f
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.invoke39 unwind label %bb.m

.invoke39:                                        ; preds = %.invoke40
  invoke void @__cxa_end_catch()
          to label %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.bb = icmp eq i64 %indvars.iv, 0
  br i1 %i.bb, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !232
  %i.bd = load i8, ptr %2, align 8, !tbaa !226, !range !129, !noundef !130
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !233
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.af to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bk
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !234
  %i.bn = sext i32 %i.bm to i64
  %.idx15.i = mul nsw i64 %i.bn, -4
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %.idx15.i
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !234
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl i64 %indvars.iv, 2
  %i.bs = add i64 %i.br, -4
  %.idx.i = mul i64 %i.bs, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i = phi ptr [ %i.bo, %bb.i ], [ %i.bc, %bb.h ], [ %i.bt, %bb.j ] ; 2 uses
  %i.bu = load i32, ptr %i.p, align 4, !tbaa !235
  %i.bv = sext i32 %i.bu to i64
  %i.bw = load i64, ptr %i.q, align 8, !tbaa !241
  %i.bx = mul i64 %i.bw, %i.bv
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i, i8 0, i64 %i.bx, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.k
  %.sink38 = phi i64 [ 184, %bb.d ], [ 160, %bb.k ]
  %i.by = phi ptr [ %i.ak, %bb.d ], [ %.0.i, %bb.k ]
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink38
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab, i32 noundef %i.v, i32 noundef %.sroa.speculated, ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef %i.by)
          to label %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit unwind label %bb.e, !inline_history !410

._crit_edge:                                      ; preds = %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %.invoke40, %.invoke39, %bb.f
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #40
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !138
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !138
  %i.j = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not19 = icmp sgt i32 %i.j, %i.i
  br i1 %.not19, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !212
  %i.l = load ptr, ptr %5, align 8, !tbaa !184
  %i.m = load ptr, ptr %3, align 8, !tbaa !212
  %i.n = load i32, ptr %i.c, align 4, !tbaa !138  ; 2 uses
  %i.o = sext i32 %i.j to i64
  %i.p = sext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.o, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.r = sext i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv21 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next22, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv21
  %i.t = load i32, ptr %i.s, align 4, !tbaa !138
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !238
  %i.x = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv21
  store i16 %i.w, ptr %i.x, align 2, !tbaa !238
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  %.not17.not = icmp slt i64 %indvars.iv21, %i.r
  br i1 %.not17.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add i64 %indvars.iv.a, %i.p  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !138
  %i.y = add nsw i32 %i.n, %i.q
  %i.z = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.f) ; 3 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !138
  %.not = icmp slt i32 %i.z, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined.25(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not28 = icmp sgt i32 %i.k, %i.j
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !184
  %i.ak = load i32, ptr %7, align 4, !tbaa !138
  %i.al = load ptr, ptr %8, align 8, !tbaa !203
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  %i.ar = extractvalue { ptr, i32 } %i.ap, 1
  %i.as = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.at = icmp eq i32 %i.ar, %i.as
  %i.au = call ptr @__cxa_begin_catch(ptr %i.aq) #19 ; 2 uses
  br i1 %i.at, label %bb.e, label %.invoke32

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.ay)
          to label %.invoke32 unwind label %bb.h

bb.f:                                             ; preds = %.invoke, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.az = load i32, ptr %i.b, align 4, !tbaa !138
  %i.ba = sext i32 %i.az to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ba
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke32:                                        ; preds = %bb.d, %bb.e
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %.invoke32
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %.invoke32, %.invoke, %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #40
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not28 = icmp sgt i32 %i.k, %i.j
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load i32, ptr %7, align 4, !tbaa !138
  %i.ak = load ptr, ptr %8, align 8, !tbaa !203
  %i.al = load ptr, ptr %9, align 8, !tbaa !203
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !134
end_hunk_3
begin_hunk_4_@_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd.omp_outlined:bb.a

._crit_edge:                                      ; preds = %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb0ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %.invoke40, %.invoke39, %bb.f
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #40
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb0ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not27 = icmp sgt i32 %i.k, %i.j
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load i32, ptr %7, align 4, !tbaa !138
  %i.ak = load ptr, ptr %8, align 8, !tbaa !203
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef 0, i32 noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = extractvalue { ptr, i32 } %i.ao, 1
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.as = icmp eq i32 %i.aq, %i.ar
  %i.at = call ptr @__cxa_begin_catch(ptr %i.ap) #19 ; 2 uses
  br i1 %i.as, label %bb.e, label %.invoke31

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.ax)
          to label %.invoke31 unwind label %bb.h

bb.f:                                             ; preds = %.invoke, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !138
  %i.az = sext i32 %i.ay to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.az
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke31:                                        ; preds = %bb.d, %bb.e
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %.invoke31
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %.invoke31, %.invoke, %bb.e
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #40
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !138
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !138
  %i.j = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not19 = icmp sgt i32 %i.j, %i.i
  br i1 %.not19, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !212
  %i.l = load ptr, ptr %5, align 8, !tbaa !184
  %i.m = load ptr, ptr %3, align 8, !tbaa !212
  %i.n = load i32, ptr %i.c, align 4, !tbaa !138  ; 2 uses
  %i.o = sext i32 %i.j to i64
  %i.p = sext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.o, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.r = sext i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv21 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next22, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv21
  %i.t = load i32, ptr %i.s, align 4, !tbaa !138
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !238
  %i.x = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv21
  store i16 %i.w, ptr %i.x, align 2, !tbaa !238
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  %.not17.not = icmp slt i64 %indvars.iv21, %i.r
  br i1 %.not17.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add i64 %indvars.iv.a, %i.p  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !138
  %i.y = add nsw i32 %i.n, %i.q
  %i.z = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.f) ; 3 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !138
  %.not = icmp slt i32 %i.z, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb1ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined.26(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not29 = icmp sgt i32 %i.k, %i.j
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !184
  %i.ak = load i32, ptr %7, align 4, !tbaa !138
  %i.al = load ptr, ptr %8, align 8, !tbaa !203
  %i.am = load ptr, ptr %9, align 8, !tbaa !203
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.am, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = extractvalue { ptr, i32 } %i.aq, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.au = icmp eq i32 %i.as, %i.at
  %i.av = call ptr @__cxa_begin_catch(ptr %i.ar) #19 ; 2 uses
  br i1 %i.au, label %bb.e, label %.invoke33

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !134
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.az)
          to label %.invoke33 unwind label %bb.h

bb.f:                                             ; preds = %.invoke, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !138
  %i.bb = sext i32 %i.ba to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bb
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke33:                                        ; preds = %bb.d, %bb.e
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %.invoke33
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %.invoke33, %.invoke, %bb.e
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb1ELb0ELb1ELi32EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 2 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %10 = alloca %class.ThreadExceptionHelper, align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.g, align 8, !tbaa !184
  store i32 %2, ptr %i.h, align 4, !tbaa !138
  store ptr %3, ptr %i.i, align 8, !tbaa !203
  store ptr %4, ptr %i.j, align 8, !tbaa !203
  store ptr %5, ptr %i.k, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %i.o = load i8, ptr %0, align 8, !tbaa !226, !range !129, !noundef !130
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !227, !range !129, !noundef !130
  %i.s = trunc nuw i8 %i.r to i1
  %spec.select = select i1 %i.s, i64 16, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 16, %bb.a ], [ %spec.select, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !132  ; 2 uses
  store ptr %i.u, ptr %i.l, align 8, !tbaa !132
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %.noexc.i

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.v, ptr %9, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i64 29, ptr %i.f, align 8, !tbaa !45
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !47
  %i.x = load i64, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.w, ptr noundef nonnull align 1 dereferenceable(29) @.str.17, i64 29, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_4
begin_hunk_5_@_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb1ELb1ELb1ELi32EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd.omp_outlined:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.s = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit ] ; 6 uses
  %i.t = load i32, ptr %i.m, align 8, !tbaa !228  ; 2 uses
  %i.u = trunc nsw i64 %indvars.iv to i32
  %i.v = mul nsw i32 %i.t, %i.u                   ; 2 uses
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = load i32, ptr %3, align 4, !tbaa !138
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.w)
  %i.y = load i32, ptr %4, align 4, !tbaa !138
  %i.z = icmp eq i32 %i.y, 8
  %i.aa = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !184
  %i.ac = load ptr, ptr %7, align 8, !tbaa !203
  %i.ad = load ptr, ptr %8, align 8, !tbaa !203
  %i.ae = load ptr, ptr %9, align 8, !tbaa !218   ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !135 ; 4 uses
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !234
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %indvars.iv, 1
  %i.aj = mul i64 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.p, align 4, !tbaa !235
  %i.am = sext i32 %i.al to i64
  %i.an = load i64, ptr %i.r, align 8, !tbaa !240
  %i.ao = mul i64 %i.an, %i.am
  call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %.invoke

bb.e:                                             ; preds = %.invoke
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  %i.ar = extractvalue { ptr, i32 } %i.ap, 1
  %i.as = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.at = icmp eq i32 %i.ar, %i.as
  %i.au = call ptr @__cxa_begin_catch(ptr %i.aq) #19 ; 2 uses
  br i1 %i.at, label %bb.f, label %.invoke40

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.ay)
          to label %.invoke40 unwind label %bb.m

_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit: ; preds = %.invoke39, %.invoke
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.az = load i32, ptr %i.b, align 4, !tbaa !138
  %i.ba = sext i32 %i.az to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ba
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke40:                                        ; preds = %bb.e, %bb.f
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.invoke39 unwind label %bb.m

.invoke39:                                        ; preds = %.invoke40
  invoke void @__cxa_end_catch()
          to label %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.bb = icmp eq i64 %indvars.iv, 0
  br i1 %i.bb, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !232
  %i.bd = load i8, ptr %2, align 8, !tbaa !226, !range !129, !noundef !130
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !233
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.af to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bk
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !234
  %i.bn = sext i32 %i.bm to i64
  %.idx15.i = mul nsw i64 %i.bn, -8
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %.idx15.i
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !234
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl i64 %indvars.iv, 3
  %i.bs = add i64 %i.br, -8
  %.idx.i = mul i64 %i.bs, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i = phi ptr [ %i.bo, %bb.i ], [ %i.bc, %bb.h ], [ %i.bt, %bb.j ] ; 2 uses
  %i.bu = load i32, ptr %i.p, align 4, !tbaa !235
  %i.bv = sext i32 %i.bu to i64
  %i.bw = load i64, ptr %i.q, align 8, !tbaa !242
  %i.bx = mul i64 %i.bw, %i.bv
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i, i8 0, i64 %i.bx, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.k
  %.sink38 = phi i64 [ 184, %bb.d ], [ 136, %bb.k ]
  %i.by = phi ptr [ %i.ak, %bb.d ], [ %.0.i, %bb.k ]
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink38
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab, i32 noundef %i.v, i32 noundef %.sroa.speculated, ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef %i.by)
          to label %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit unwind label %bb.e, !inline_history !414

._crit_edge:                                      ; preds = %_ZN8LightGBM18MultiValBinWrapper27ConstructHistogramsForBlockILb1ELb1ELb1ELi8EEEvPKNS_11MultiValBinEiiPKiPKfS8_iPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %.invoke40, %.invoke39, %bb.f
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #40
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !138
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !138
  %i.j = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not19 = icmp sgt i32 %i.j, %i.i
  br i1 %.not19, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !212
  %i.l = load ptr, ptr %5, align 8, !tbaa !184
  %i.m = load ptr, ptr %3, align 8, !tbaa !212
  %i.n = load i32, ptr %i.c, align 4, !tbaa !138  ; 2 uses
  %i.o = sext i32 %i.j to i64
  %i.p = sext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.o, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.r = sext i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv21 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next22, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv21
  %i.t = load i32, ptr %i.s, align 4, !tbaa !138
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !238
  %i.x = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv21
  store i16 %i.w, ptr %i.x, align 2, !tbaa !238
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  %.not17.not = icmp slt i64 %indvars.iv21, %i.r
  br i1 %.not17.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add i64 %indvars.iv.a, %i.p  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !138
  %i.y = add nsw i32 %i.n, %i.q
  %i.z = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.f) ; 3 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !138
  %.not = icmp slt i32 %i.z, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb1ELb0ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined.27(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not28 = icmp sgt i32 %i.k, %i.j
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !184
  %i.ak = load i32, ptr %7, align 4, !tbaa !138
  %i.al = load ptr, ptr %8, align 8, !tbaa !203
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 208
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.al, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  %i.ar = extractvalue { ptr, i32 } %i.ap, 1
  %i.as = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.at = icmp eq i32 %i.ar, %i.as
  %i.au = call ptr @__cxa_begin_catch(ptr %i.aq) #19 ; 2 uses
  br i1 %i.at, label %bb.e, label %.invoke32

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #19
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.ay)
          to label %.invoke32 unwind label %bb.h

bb.f:                                             ; preds = %.invoke, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.az = load i32, ptr %i.b, align 4, !tbaa !138
  %i.ba = sext i32 %i.az to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ba
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke32:                                        ; preds = %bb.d, %bb.e
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %.invoke32
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.h:                                             ; preds = %.invoke32, %.invoke, %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #40
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb1ELi32EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr noundef nonnull align 8 dereferenceable(48) %11) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !138    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.g, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.h = load i32, ptr %0, align 4, !tbaa !138    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !138
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !138
  %i.k = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %.not28 = icmp sgt i32 %i.k, %i.j
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = load ptr, ptr %5, align 8, !tbaa !204
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !210
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = shl nsw i64 %i.ac, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.r
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %i.aj = load i32, ptr %7, align 4, !tbaa !138
  %i.ak = load ptr, ptr %8, align 8, !tbaa !203
  %i.al = load ptr, ptr %9, align 8, !tbaa !203
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !134
end_hunk_5
