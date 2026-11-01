Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8LightGBM7Dataset12DumpTextFileEPKc:bb.a
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader176, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader176 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader176 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.gf = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !850
  store i64 %i.gf, ptr %.012.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !849
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !194, !alias.scope !850
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gg, %i.dl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !844

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc74
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fn, %.noexc74 ], [ %i.fy, %middle.block ], [ %i.gh, %.lr.ph.i.i.i.i.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.fe) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.fn, ptr %4, align 8, !tbaa !191
  store ptr %i.gi, ptr %i.cf, align 8, !tbaa !192
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl ; 2 uses
  store ptr %i.gj, ptr %i.bw, align 8, !tbaa !195
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.m
  %i.gk = phi ptr [ %i.fn, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.dk, %bb.m ] ; 2 uses
  %i.gl = phi ptr [ %i.gj, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.dl, %bb.m ] ; 2 uses
  %i.gm = phi ptr [ %i.gi, %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.fb, %bb.m ] ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.gn = load i32, ptr %i.d, align 8, !tbaa !304
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv.next129, %i.go
  br i1 %i.gp, label %bb.j, label %.preheader, !llvm.loop !845

._crit_edge122:                                   ; preds = %._crit_edge119, %.preheader
  %i.gq = call i32 @fclose(ptr noundef %i.c)      ; 0 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.dg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge122, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge122 ] ; 2 uses
  %i.gr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !194 ; 3 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i75, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !134
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr) #19, !inline_history !846
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM11BinIteratorEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.gv, %i.dg
  br i1 %.not.i.i.i76, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %._crit_edge122
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.gw = ptrtoint ptr %i.df to i64
  %i.gx = ptrtoint ptr %.pr.i to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.gy) #36
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.q:                                             ; preds = %.lr.ph121, %._crit_edge119
  %.049120 = phi i32 [ 0, %.lr.ph121 ], [ %i.hb, %._crit_edge119 ] ; 2 uses
  %fputc60 = call i32 @fputc(i32 10, ptr %i.c)    ; 0 uses
  %i.gz = load i32, ptr %i.g, align 4, !tbaa !303
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph118, label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.u, %bb.q
  %i.hb = add nuw nsw i32 %.049120, 1             ; 2 uses
  %i.hc = load i32, ptr %i.m, align 8, !tbaa !117
  %i.hd = icmp slt i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.q, label %._crit_edge122, !llvm.loop !847

.lr.ph118:                                        ; preds = %bb.q, %bb.u
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.u ], [ 0, %bb.q ] ; 2 uses
  %i.he = load ptr, ptr %i.dj, align 8, !tbaa !200
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv131
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !138 ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph118
  %fwrite61 = call i64 @fwrite(ptr nonnull @.str.87, i64 4, i64 1, ptr %i.c) ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph118
  %i.hi = zext nneg i32 %i.hg to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.pr.i, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !194 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !134
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = invoke noundef i32 %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, i32 noundef %.049120)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.83, i32 noundef %i.hn) #19 ; 0 uses
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %.invoke, %.invoke162, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM11BinIteratorESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp178

bb.u:                                             ; preds = %bb.t, %bb.r
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.hp = load i32, ptr %i.g, align 4, !tbaa !303
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next132, %i.hq
  br i1 %i.hr, label %.lr.ph118, label %._crit_edge119, !llvm.loop !848
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN8LightGBM18MultiValBinWrapper9InitTrainERKSt6vectorIiSaIiEERKS1_ISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS7_EESaISA_EERKS1_IaSaIaEEPKii(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK8LightGBM7Dataset12FixHistogramEiddPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #28 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = sext i32 %i.e to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = sext i32 %i.i to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !168
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !182  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.s, align 8, !tbaa !243  ; 4 uses
  %i.x = shl nuw i32 %i.u, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %4, i64 %i.y ; 5 uses
  store double %2, ptr %i.z, align 8, !tbaa !125
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store double %3, ptr %i.aa, align 8, !tbaa !125
  %i.ab = icmp sgt i32 %i.w, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ac = zext nneg i32 %i.u to i64               ; 3 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %2, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %3, i64 1 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.w, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %i.ag = phi <2 x double> [ %i.ae, %.lr.ph.preheader.new ], [ %i.ao, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %.not = icmp eq i64 %indvars.iv, %i.ac
  br i1 %.not, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %5 = shl nuw i32 %indvars.iv.tr, 1
  %6 = sext i32 %5 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %4, i64 %6
  %i.ai = load <2 x double>, ptr %i.ah, align 8, !tbaa !125
  %i.aj = fsub <2 x double> %i.ag, %i.ai          ; 2 uses
  store <2 x double> %i.aj, ptr %i.z, align 8, !tbaa !125
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %i.ak = phi <2 x double> [ %i.ag, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %7 = shl nuw i32 %indvars.iv.tr.1, 1
  %8 = sext i32 %7 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %4, i64 %8
  %i.am = load <2 x double>, ptr %i.al, align 8, !tbaa !125
  %i.an = fsub <2 x double> %i.ak, %i.am          ; 2 uses
  store <2 x double> %i.an, ptr %i.z, align 8, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.ao = phi <2 x double> [ %i.ak, %.lr.ph.1 ], [ %i.an, %bb.d ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !854

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ %i.ae, %.lr.ph.preheader ], [ %i.ao, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %.not.epil = icmp eq i64 %indvars.iv.epil.init, %i.ac
  br i1 %.not.epil, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.epil.preheader
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ap = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aq
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !125
  %i.at = fsub <2 x double> %.epil.init, %i.as
  store <2 x double> %i.at, ptr %i.z, align 8, !tbaa !125
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %.lr.ph.epil.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM7Dataset15AddFeaturesFromEPS0_(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.120", align 8   ; 18 uses
  %3 = alloca %"class.std::unordered_set", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.89)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.i = load i8, ptr %i.h, align 8, !tbaa !248, !range !129, !noundef !130
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !248, !range !129, !noundef !130
  %.not165 = icmp eq i8 %i.i, %i.k
  br i1 %.not165, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.90)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 11 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !95   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0                     ; 2 uses
  br i1 %i.n, label %.lr.ph, label %.preheader491

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.m, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

.preheader491.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader491, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader491.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader491.loopexit.unr-lcssa ]
  %.0131554.epil.init = phi i32 [ -1, %.lr.ph ], [ %spec.select.3, %.preheader491.loopexit.unr-lcssa ]
  %lcmp.mod1116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1116)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %.0131554.epil = phi i32 [ %.0131554.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load i8, ptr %i.t, align 8, !tbaa !160, !range !129, !noundef !130
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = trunc nuw nsw i64 %indvars.iv.epil to i32
  %spec.select.epil = select i1 %i.v, i32 %i.w, i32 %.0131554.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader491, label %bb.f, !llvm.loop !855

.preheader491:                                    ; preds = %.preheader491.loopexit.unr-lcssa, %bb.f, %bb.e
  %.0131.lcssa = phi i32 [ -1, %bb.e ], [ %spec.select.3, %.preheader491.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph557, label %._crit_edge.thread

.lr.ph557:                                        ; preds = %.preheader491
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 5 uses
  %wide.trip.count674 = zext nneg i32 %i.y to i64 ; 2 uses
  %xtraiter1118 = and i64 %wide.trip.count674, 3  ; 3 uses
  %i.ac = icmp ult i32 %i.y, 4
  br i1 %i.ac, label %.epil.preheader1117, label %.lr.ph557.new

.lr.ph557.new:                                    ; preds = %.lr.ph557
  %unroll_iter1123 = and i64 %wide.trip.count674, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %.0131554 = phi i32 [ -1, %.lr.ph.new ], [ %spec.select.3, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !160, !range !129, !noundef !130
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.ah, i32 %i.ai, i32 %.0131554
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load i8, ptr %i.al, align 8, !tbaa !160, !range !129, !noundef !130
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.an, i32 %i.ao, i32 %spec.select
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !141
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !160, !range !129, !noundef !130
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %spec.select.2 = select i1 %i.at, i32 %i.au, i32 %spec.select.1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !160, !range !129, !noundef !130
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %spec.select.3 = select i1 %i.az, i32 %i.ba, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader491.loopexit.unr-lcssa, label %bb.g, !llvm.loop !856

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod1120.not = icmp eq i64 %xtraiter1118, 0
  br i1 %lcmp.mod1120.not, label %._crit_edge, label %.epil.preheader1117

.epil.preheader1117:                              ; preds = %._crit_edge.unr-lcssa, %.lr.ph557
  %indvars.iv671.epil.init = phi i64 [ 0, %.lr.ph557 ], [ %indvars.iv.next672.3, %._crit_edge.unr-lcssa ]
  %.0132556.epil.init = phi i32 [ -1, %.lr.ph557 ], [ %spec.select188.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod1122 = icmp ne i64 %xtraiter1118, 0
  tail call void @llvm.assume(i1 %lcmp.mod1122)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader1117
  %indvars.iv671.epil = phi i64 [ %indvars.iv671.epil.init, %.epil.preheader1117 ], [ %indvars.iv.next672.epil, %bb.h ] ; 3 uses
  %.0132556.epil = phi i32 [ %.0132556.epil.init, %.epil.preheader1117 ], [ %spec.select188.epil, %bb.h ]
  %epil.iter1119 = phi i64 [ 0, %.epil.preheader1117 ], [ %epil.iter1119.next, %bb.h ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv671.epil
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !160, !range !129, !noundef !130
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = trunc nuw nsw i64 %indvars.iv671.epil to i32
  %spec.select188.epil = select i1 %i.bf, i32 %i.bg, i32 %.0132556.epil ; 2 uses
end_hunk_0
