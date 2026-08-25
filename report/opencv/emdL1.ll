Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/emdL1?download=true
inline.NumInlined: 1078
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5EmdL115greedySolution3Ev:bb.a
  %i.so = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.so, %i.sh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !214

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.sp = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.sf, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.sp, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !185
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = ptrtoint ptr %i.sp to i64
  %i.su = sub i64 %i.ss, %i.st
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sp, i64 noundef %i.su) #20
  br label %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.aw, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.sv, %i.se
  br i1 %.not.i.i.i197, label %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !256

_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit196
  %.not.i.i1.i = icmp eq ptr %i.sd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_IfSaIfEESaIS1_EESaIS3_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.sw = load ptr, ptr %i.ff, align 8, !tbaa !218
  %i.sx = ptrtoint ptr %i.sw to i64
  %i.sy = ptrtoint ptr %i.sd to i64
  %i.sz = sub i64 %i.sx, %i.sy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sd, i64 noundef %i.sz) #20
  br label %_ZNSt6vectorIS_IS_IfSaIfEESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IS_IfSaIfEESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i1 true

_ZNSt6vectorIfSaIfEED2Ev.exit199:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.u
  %.pn = phi { ptr, i32 } [ %i.lj, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.jl, %bb.u ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fi) #20
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit243, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.r, %_ZNSt6vectorIfSaIfEED2Ev.exit199
  %.pn160 = phi { ptr, i32 } [ %i.hi, %bb.r ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit199 ], [ %lpad.loopexit, %.loopexit243 ], [ %lpad.loopexit244, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IS_IfSaIfEESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn160
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !186  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !214

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IS_IfSaIfEESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !182 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !186  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !213
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #20
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !214

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !185
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #20
  br label %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !256

_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIS0_IfSaIfEESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIS0_IfSaIfEESaIS2_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #20
  br label %_ZNSt12_Vector_baseISt6vectorIS0_IfSaIfEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIS0_IfSaIfEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IfSaIfEESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5EmdL119findLoopFromEnterBVEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(336) initializes((264, 272), (328, 336)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !175
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  store ptr null, ptr %i.i, align 8, !tbaa !174
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !110  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !110  ; 2 uses
  %i.n = icmp sgt i32 %i.m, %i.k
  br i1 %i.n, label %.lr.ph, label %.preheader60

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  br label %bb.b

..preheader60_crit_edge:                          ; preds = %bb.e
  %i.q = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.q, ptr %i.g, align 8, !tbaa !175
  br label %.preheader60

.preheader60:                                     ; preds = %..preheader60_crit_edge, %bb.a
  %.042.lcssa = phi ptr [ %i.ac, %..preheader60_crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %.0.lcssa = phi float [ %.1, %..preheader60_crit_edge ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %.lcssa = phi i32 [ %i.ae, %..preheader60_crit_edge ], [ %i.m, %bb.a ] ; 2 uses
  %i.r = icmp sgt i32 %i.k, %.lcssa
  br i1 %i.r, label %.lr.ph69, label %.preheader

.lr.ph69:                                         ; preds = %.preheader60
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.062 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.1, %bb.e ] ; 3 uses
  %.04261 = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04261, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !171  ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr %i.v, ptr %i.w, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !111
  %.not59 = icmp eq i32 %i.y, 0
  br i1 %.not59, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = load float, ptr %i.v, align 8, !tbaa !124 ; 2 uses
  %i.aa = fcmp olt float %i.z, %.062
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.v, ptr %i.i, align 8, !tbaa !174
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi float [ %.062, %bb.b ], [ %i.z, %bb.d ], [ %.062, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.04261, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !173 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !110 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, %i.k
  br i1 %i.af, label %bb.b, label %..preheader60_crit_edge, !llvm.loop !257

..preheader_crit_edge:                            ; preds = %bb.i
  %i.ag = trunc nsw i64 %indvars.iv.next95 to i32
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !176
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader60
  %.promoted84 = phi i64 [ %indvars.iv.next95, %..preheader_crit_edge ], [ 0, %.preheader60 ]
  %.246.lcssa = phi i32 [ %.347, %..preheader_crit_edge ], [ 0, %.preheader60 ] ; 2 uses
  %.040.lcssa = phi ptr [ %i.at, %..preheader_crit_edge ], [ %i.f, %.preheader60 ] ; 2 uses
  %.2.lcssa = phi float [ %.3, %..preheader_crit_edge ], [ %.0.lcssa, %.preheader60 ]
  %.not75 = icmp eq ptr %.040.lcssa, %.042.lcssa
  br i1 %.not75, label %bb.q, label %.lr.ph80

.lr.ph80:                                         ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118
  %.promoted82 = load i32, ptr %i.g, align 8, !tbaa !175
  %1 = sext i32 %.promoted82 to i64
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph69, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next95, %bb.i ] ; 2 uses
  %.268 = phi float [ %.0.lcssa, %.lr.ph69 ], [ %.3, %bb.i ] ; 3 uses
  %.04067 = phi ptr [ %i.f, %.lr.ph69 ], [ %i.at, %bb.i ] ; 2 uses
  %.24666 = phi i32 [ 0, %.lr.ph69 ], [ %.347, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04067, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !171 ; 4 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv94
  store ptr %i.am, ptr %i.an, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !111
  %.not58 = icmp eq i32 %i.ap, 0
  br i1 %.not58, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load float, ptr %i.am, align 8, !tbaa !124 ; 2 uses
  %i.ar = fcmp olt float %i.aq, %.268
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.am, ptr %i.i, align 8, !tbaa !174
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.347 = phi i32 [ 1, %bb.h ], [ %.24666, %bb.g ], [ %.24666, %bb.f ] ; 2 uses
  %.3 = phi float [ %i.aq, %bb.h ], [ %.268, %bb.g ], [ %.268, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04067, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !173 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !110
  %i.aw = icmp sgt i32 %i.av, %.lcssa
  br i1 %i.aw, label %bb.f, label %..preheader_crit_edge, !llvm.loop !258

bb.j:                                             ; preds = %.lr.ph80, %bb.p
  %indvars.iv99 = phi i64 [ %1, %.lr.ph80 ], [ %indvars.iv.next100, %bb.p ] ; 2 uses
  %indvars.iv97 = phi i64 [ %.promoted84, %.lr.ph80 ], [ %indvars.iv.next98, %bb.p ] ; 2 uses
  %.479 = phi float [ %.2.lcssa, %.lr.ph80 ], [ %.6, %bb.p ] ; 3 uses
  %.14178 = phi ptr [ %.040.lcssa, %.lr.ph80 ], [ %i.bo, %bb.p ] ; 2 uses
  %.14377 = phi ptr [ %.042.lcssa, %.lr.ph80 ], [ %i.bf, %bb.p ] ; 2 uses
  %.44876 = phi i32 [ %.246.lcssa, %.lr.ph80 ], [ %.650, %bb.p ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.14377, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !171 ; 4 uses
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv99
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !111
  %.not56 = icmp eq i32 %i.bb, 0
  br i1 %.not56, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = load float, ptr %i.ay, align 8, !tbaa !124 ; 2 uses
  %i.bd = fcmp olt float %i.bc, %.479
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !174
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.549 = phi i32 [ %.44876, %bb.j ], [ 0, %bb.l ], [ %.44876, %bb.k ] ; 2 uses
  %.5 = phi float [ %.479, %bb.j ], [ %i.bc, %bb.l ], [ %.479, %bb.k ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.14377, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !173 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.14178, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !171 ; 4 uses
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv97
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !119
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !111
  %.not57 = icmp eq i32 %i.bk, 0
  br i1 %.not57, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load float, ptr %i.bh, align 8, !tbaa !124 ; 2 uses
  %i.bm = fcmp olt float %i.bl, %.5
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bh, ptr %i.i, align 8, !tbaa !174
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.650 = phi i32 [ 1, %bb.o ], [ %.549, %bb.n ], [ %.549, %bb.m ] ; 2 uses
  %.6 = phi float [ %i.bl, %bb.o ], [ %.5, %bb.n ], [ %.5, %bb.m ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.14178, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !173 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.bf
  br i1 %.not, label %._crit_edge, label %bb.j, !llvm.loop !259

._crit_edge:                                      ; preds = %bb.p
  %i.bp = trunc nsw i64 %indvars.iv.next100 to i32
  %i.bq = trunc nsw i64 %indvars.iv.next98 to i32
  store i32 %i.bp, ptr %i.g, align 8, !tbaa !175
  store i32 %i.bq, ptr %i.h, align 4, !tbaa !176
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.preheader
  %.448.lcssa = phi i32 [ %.650, %._crit_edge ], [ %.246.lcssa, %.preheader ]
  %i.br = icmp eq i32 %.448.lcssa, 0
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !104
  %i.bv = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bv, ptr %i.bt, align 8, !tbaa !104
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !111
  %.not55 = icmp eq i32 %i.bx, 0
  %i.by = zext i1 %.not55 to i32
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !111
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN2cv5EMDL1ERKNS_11_InputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %class.EmdL1, align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv5EMDL1ERKNS_11_InputArrayES2_E25__cv_trace_location_fn792)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !260, !noalias !263
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.i

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260, !noalias !266
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit12 unwind label %bb.j

bb.e:                                             ; preds = %.noexc9
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit12 unwind label %bb.j

_ZNK2cv11_InputArray6getMatEi.exit12:             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.i, i8 0, i64 224, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  store i32 500, ptr %i.k, align 4, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 264
  store ptr null, ptr %i.l, align 8, !tbaa !174
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 256
  store i32 0, ptr %i.m, align 8, !tbaa !116
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !117
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 272
  store i32 0, ptr %i.o, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 332
  store i32 0, ptr %i.p, align 4, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 328
  store i32 0, ptr %i.q, align 8, !tbaa !175
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 248
  store ptr null, ptr %i.r, align 8, !tbaa !115
  %i.s = invoke noundef float @_ZN5EmdL18getEMDL1ERN2cv3MatES2_(ptr noundef nonnull align 8 dereferenceable(336) %5, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit12
  call void @_ZN5EmdL1D2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !269
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret float %i.s

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit12
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5EmdL1D2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
end_hunk_0
