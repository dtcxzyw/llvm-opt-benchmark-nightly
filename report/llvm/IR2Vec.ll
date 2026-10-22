Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IR2Vec?download=true
inline.NumInlined: 3034
inline.NumDeleted: 1621
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm6ir2vec10Vocabulary23createDummyVocabForTestEj:_ZNSt12_Vector_baseIN4llvm6ir2vec9EmbeddingESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i105: ; preds = %bb.an, %.lr.ph.i.i.i102
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i103, i64 24 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.kr, %i.kk
  br i1 %.not.i.i.i106, label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i107, label %.lr.ph.i.i.i102, !llvm.loop !3

_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i107: ; preds = %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i105
  %.pr.i108 = load ptr, ptr %3, align 16, !tbaa !118
  br label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i109

_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i109: ; preds = %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i107, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit100
  %i.ks = phi ptr [ %.pr.i108, %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i107 ], [ %i.kj, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit100 ] ; 3 uses
  %.not.i.i1.i110 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i1.i110, label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit111, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i109
  %i.kt = load ptr, ptr %i.g, align 16, !tbaa !180
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kw) #29
  br label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit111

_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit111: ; preds = %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i109, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.kx = load ptr, ptr %2, align 8, !tbaa !115   ; 3 uses
  %i.ky = load ptr, ptr %i.d, align 8, !tbaa !152 ; 2 uses
  %.not4.i.i.i112 = icmp eq ptr %i.kx, %i.ky
  br i1 %.not4.i.i.i112, label %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i113

.lr.ph.i.i.i113:                                  ; preds = %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit111, %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i114 = phi ptr [ %i.lp, %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i ], [ %i.kx, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit111 ] ; 5 uses
  %i.kz = load ptr, ptr %.05.i.i.i114, align 8, !tbaa !118 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i114, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !146 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.kz, %i.lb
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i113, %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.li, %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.kz, %.lr.ph.i.i.i113 ] ; 3 uses
  %i.lc = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !50
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #29
  br label %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.li, %i.lb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i114, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i

_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i113
  %i.lj = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i ], [ %i.kz, %.lr.ph.i.i.i113 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i114, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !180
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #29
  br label %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.aq, %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %.05.i.i.i114, i64 24 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.lp, %i.ky
  br i1 %.not.i.i.i115, label %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i113, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i116 = load ptr, ptr %2, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i

_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit111
  %i.lq = phi ptr [ %.pr.i116, %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i ], [ %i.kx, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit111 ] ; 3 uses
  %.not.i.i1.i117 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i1.i117, label %_ZNSt6vectorIS_IN4llvm6ir2vec9EmbeddingESaIS2_EESaIS4_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i
  %i.lr = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.lu) #29
  br label %_ZNSt6vectorIS_IN4llvm6ir2vec9EmbeddingESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN4llvm6ir2vec9EmbeddingESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void

bb.as:                                            ; preds = %_ZNSt12_Vector_baseIN4llvm6ir2vec9EmbeddingESaIS2_EE13_M_deallocateEPS2_m.exit.i65, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EE12emplace_backIJRjRfEEERS2_DpOT_.exit126
  %.0130 = phi i32 [ 0, %_ZNSt12_Vector_baseIN4llvm6ir2vec9EmbeddingESaIS2_EE13_M_deallocateEPS2_m.exit.i65 ], [ %i.my, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EE12emplace_backIJRjRfEEERS2_DpOT_.exit126 ]
  %i.lv = load ptr, ptr %i.dq, align 8, !tbaa !146 ; 6 uses
  %i.lw = load ptr, ptr %i.dp, align 16, !tbaa !180
  %.not.i118 = icmp eq ptr %i.lv, %i.lw
  br i1 %.not.i118, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lx = load i32, ptr %i.a, align 4, !tbaa !139 ; 2 uses
  %i.ly = load float, ptr %i.b, align 4, !tbaa !179
  %i.lz = fpext float %i.ly to double             ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i119 = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i.i.i.i.i119, label %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.i123, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ma = zext i32 %i.lx to i64                   ; 2 uses
  %i.mb = shl nuw nsw i64 %i.ma, 3                ; 3 uses
  %i.mc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #31 ; 5 uses
  store ptr %i.mc, ptr %i.lv, align 8, !tbaa !48
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.ma
  %i.me = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store ptr %i.md, ptr %i.me, align 8, !tbaa !50
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mb ; 3 uses
  %i.mg = add nsw i64 %i.mb, -8                   ; 2 uses
  %i.mh = lshr exact i64 %i.mg, 3
  %i.mi = add nuw nsw i64 %i.mh, 1
  %xtraiter253 = and i64 %i.mi, 7                 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol:             ; preds = %bb.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol
  %.07.i.i.i.i.i.i.i.i.i.i.i121.prol = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol ], [ %i.mc, %bb.au ] ; 2 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol ], [ 0, %bb.au ]
  store double %i.lz, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121.prol, align 8, !tbaa !42
  %i.mj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121.prol, i64 8 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol, !llvm.loop !490

.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol, %bb.au
  %.07.i.i.i.i.i.i.i.i.i.i.i121.unr = phi ptr [ %i.mc, %bb.au ], [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol ]
  %i.mk = icmp ult i64 %i.mg, 56
  br i1 %i.mk, label %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.i123, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i120:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120
  %.07.i.i.i.i.i.i.i.i.i.i.i121 = phi ptr [ %i.ms, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120 ], [ %.07.i.i.i.i.i.i.i.i.i.i.i121.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit ] ; 9 uses
  store double %i.lz, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, align 8, !tbaa !42
  %i.ml = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 8
  store double %i.lz, ptr %i.ml, align 8, !tbaa !42
  %i.mm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 16
  store double %i.lz, ptr %i.mm, align 8, !tbaa !42
  %i.mn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 24
  store double %i.lz, ptr %i.mn, align 8, !tbaa !42
  %i.mo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 32
  store double %i.lz, ptr %i.mo, align 8, !tbaa !42
  %i.mp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 40
  store double %i.lz, ptr %i.mp, align 8, !tbaa !42
  %i.mq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 48
  store double %i.lz, ptr %i.mq, align 8, !tbaa !42
  %i.mr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 56
  store double %i.lz, ptr %i.mr, align 8, !tbaa !42
  %i.ms = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i121, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i122.7 = icmp eq ptr %i.ms, %i.mf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i122.7, label %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.i123, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120, !llvm.loop !2

_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.i123:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120, %bb.at
  %.0.i.i.i.i.i.i.i.i.i124 = phi ptr [ null, %bb.at ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i120.prol.loopexit ]
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i.i124, ptr %i.mt, align 8, !tbaa !47
  %i.mu = load ptr, ptr %i.dq, align 8, !tbaa !146
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store ptr %i.mv, ptr %i.dq, align 8, !tbaa !146
  br label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EE12emplace_backIJRjRfEEERS2_DpOT_.exit126

bb.av:                                            ; preds = %bb.as
  call void @_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.lv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EE12emplace_backIJRjRfEEERS2_DpOT_.exit126

_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EE12emplace_backIJRjRfEEERS2_DpOT_.exit126: ; preds = %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.i123, %bb.av
  %i.mw = load float, ptr %i.b, align 4, !tbaa !179
  %i.mx = fadd float %i.mw, 1.000000e-01
  store float %i.mx, ptr %i.b, align 4, !tbaa !179
  %i.my = add nuw nsw i32 %.0130, 1               ; 2 uses
  %exitcond133.not = icmp eq i32 %i.my, 26
  br i1 %exitcond133.not, label %bb.ae, label %bb.as, !llvm.loop !491
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6ir2vec10Vocabulary17buildVocabStorageERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9EmbeddingESt4lessIS8_ESaISt4pairIKS8_S9_EEESI_SI_(ptr dead_on_unwind noalias writable sret(%"class.llvm::ir2vec::VocabStorage") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.62", align 8   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = and i64 %i.n, 4294967295                 ; 9 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0           ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm6ir2vec9EmbeddingC2Em.exit, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i: ; preds = %bb.a
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 3 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31 ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.p, i1 false), !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.t = ptrtoint ptr %i.r to i64
  br label %_ZN4llvm6ir2vec9EmbeddingC2Em.exit

_ZN4llvm6ir2vec9EmbeddingC2Em.exit:               ; preds = %bb.a, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i
  %.sroa.10412.0 = phi i64 [ 0, %bb.a ], [ %i.t, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i ]
  %.sroa.0410.0 = phi ptr [ null, %bb.a ], [ %i.q, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i ] ; 6 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.s, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i ] ; 2 uses
  %i.u = tail call noalias noundef nonnull dereferenceable(1656) ptr @_Znwm(i64 noundef 1656) #31 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1656
  %i.w = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  %i.x = ptrtoint ptr %.sroa.0410.0 to i64        ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i.i, %.sroa.0410.0
  %i.z = icmp ugt i64 %i.y, 9223372036854775800
  %i.aa = icmp samesign ugt i64 %i.y, 8
  %i.ab = icmp eq i64 %i.y, 8
  %i.ac = getelementptr inbounds i8, ptr null, i64 %i.y ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZN4llvm6ir2vec9EmbeddingC2Em.exit
  %.010.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN4llvm6ir2vec9EmbeddingC2Em.exit ], [ %i.an, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 8 uses
  %.069.i.i.i.i.i.i = phi i64 [ 69, %_ZN4llvm6ir2vec9EmbeddingC2Em.exit ], [ %i.am, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.010.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !50
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.z, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #31 ; 5 uses
  store ptr %i.af, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8 ; 4 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.y ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !50
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !126

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %.sroa.0410.0, i64 %i.y, i1 false)
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i
  br i1 %i.ab, label %bb.g, label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aj = load double, ptr %.sroa.0410.0, align 8, !tbaa !42
  store double %i.aj, ptr %i.af, align 8, !tbaa !42
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %.thread, %bb.g, %bb.f, %bb.e
  %i.ak = phi ptr [ %i.ah, %bb.g ], [ %i.ah, %bb.f ], [ %i.ah, %bb.e ], [ %i.ac, %.thread ]
  %i.al = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %bb.f ], [ %i.ag, %bb.e ], [ %i.ad, %.thread ]
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !47
  %i.am = add nsw i64 %.069.i.i.i.i.i.i, -1       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit, label %bb.b, !llvm.loop !498

_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit: ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0410.0, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit
  %i.ao = sub i64 %.sroa.10412.0, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0410.0, i64 noundef %i.ao) #29
  br label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit

_ZN4llvm6ir2vec9EmbeddingD2Ev.exit:               ; preds = %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.ay

bb.i:                                             ; preds = %bb.bm
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm6ir2vec9EmbeddingC2Em.exit42, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i40

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i40: ; preds = %bb.i
  %i.av = shl nuw nsw i64 %i.o, 3                 ; 3 uses
  %i.aw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #31 ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.o
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.av, i1 false), !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  %i.az = ptrtoint ptr %i.ax to i64
  br label %_ZN4llvm6ir2vec9EmbeddingC2Em.exit42

_ZN4llvm6ir2vec9EmbeddingC2Em.exit42:             ; preds = %bb.i, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i40
  %.sroa.0386.0 = phi ptr [ null, %bb.i ], [ %i.aw, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i40 ] ; 30 uses
  %.sroa.10388.0 = phi i64 [ 0, %bb.i ], [ %i.az, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i40 ]
  %.0.i.i.i.i.i.i.i.i41 = phi ptr [ null, %bb.i ], [ %i.ay, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i40 ] ; 2 uses
  %i.ba = call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #31 ; 84 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 312
  %i.bc = ptrtoint ptr %.0.i.i.i.i.i.i.i.i41 to i64
  %i.bd = ptrtoint ptr %.sroa.0386.0 to i64       ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 67 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i47 = icmp eq ptr %.0.i.i.i.i.i.i.i.i41, %.sroa.0386.0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i47, label %.thread580, label %bb.j, !prof !516

bb.j:                                             ; preds = %_ZN4llvm6ir2vec9EmbeddingC2Em.exit42
  %i.bf = icmp ugt i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.k, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53, !prof !49

bb.k:                                             ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53: ; preds = %bb.j
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31 ; 5 uses
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !50
  %i.bk = icmp samesign ugt i64 %i.be, 8          ; 13 uses
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !126

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %.sroa.0386.0, i64 %i.be, i1 false)
  br label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i48.1

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53
  %i.bl = icmp eq i64 %i.be, 8
  br i1 %i.bl, label %bb.n, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i48.1

bb.n:                                             ; preds = %bb.m
  %i.bm = load double, ptr %.sroa.0386.0, align 8, !tbaa !42
  store double %i.bm, ptr %i.bg, align 8, !tbaa !42
  br label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i48.1

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i48.1: ; preds = %bb.l, %bb.m, %bb.n
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31 ; 5 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.be ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !50
  br i1 %i.bk, label %bb.q, label %bb.o, !prof !51

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i48.1
  %i.bs = icmp eq i64 %i.be, 8
  br i1 %i.bs, label %bb.p, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.2

bb.p:                                             ; preds = %bb.o
  %i.bt = load double, ptr %.sroa.0386.0, align 8, !tbaa !42
  store double %i.bt, ptr %i.bo, align 8, !tbaa !42
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.2

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i48.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %.sroa.0386.0, i64 %i.be, i1 false)
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.2

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.2: ; preds = %bb.q, %bb.p, %bb.o
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31 ; 5 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@_ZN4llvm6ir2vec10Vocabulary17buildVocabStorageERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9EmbeddingESt4lessIS8_ESaISt4pairIKS8_S9_EEESI_SI_:bb.a
  %i.dw = icmp eq i64 %i.be, 8
  br i1 %i.dw, label %bb.an, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.10

bb.an:                                            ; preds = %bb.am
  %i.dx = load double, ptr %.sroa.0386.0, align 8, !tbaa !42
  store double %i.dx, ptr %i.ds, align 8, !tbaa !42
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.10

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %.sroa.0386.0, i64 %i.be, i1 false)
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.10

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.10: ; preds = %bb.ao, %bb.an, %bb.am
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ba, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  %i.dz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31 ; 5 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !48
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ba, i64 248 ; 2 uses
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !47
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.be ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !50
  br i1 %i.bk, label %bb.ar, label %bb.ap, !prof !517

bb.ap:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.10
  %i.ed = icmp eq i64 %i.be, 8
  br i1 %i.ed, label %bb.aq, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.11

bb.aq:                                            ; preds = %bb.ap
  %i.ee = load double, ptr %.sroa.0386.0, align 8, !tbaa !42
  store double %i.ee, ptr %i.dz, align 8, !tbaa !42
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.11

bb.ar:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr align 8 %.sroa.0386.0, i64 %i.be, i1 false)
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.11

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.11: ; preds = %bb.ar, %bb.aq, %bb.ap
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ba, i64 264 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false)
  %i.eg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31 ; 5 uses
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ba, i64 272 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.be ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ba, i64 280
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !50
  br i1 %i.bk, label %bb.au, label %bb.as, !prof !517

bb.as:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.11
  %i.ek = icmp eq i64 %i.be, 8
  br i1 %i.ek, label %bb.at, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.12

bb.at:                                            ; preds = %bb.as
  %i.el = load double, ptr %.sroa.0386.0, align 8, !tbaa !42
  store double %i.el, ptr %i.eg, align 8, !tbaa !42
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.12

bb.au:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %.sroa.0386.0, i64 %i.be, i1 false)
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.12

.thread580:                                       ; preds = %_ZN4llvm6ir2vec9EmbeddingC2Em.exit42
  %i.em = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.en = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 0, ptr %i.ba, align 8
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !50
  store ptr %i.en, ptr %i.em, align 8, !tbaa !47
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.er = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i64 0, ptr %i.ep, align 8
  store ptr %i.er, ptr %i.es, align 8, !tbaa !50
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !47
  %i.et = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.ev = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i64 0, ptr %i.et, align 8
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !50
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.ez = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i64 0, ptr %i.ex, align 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !50
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !47
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.fd = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store i64 0, ptr %i.fb, align 8
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !50
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !47
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.fh = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i64 0, ptr %i.ff, align 8
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !50
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !47
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.fl = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  store i64 0, ptr %i.fj, align 8
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !50
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !47
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.fp = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  store i64 0, ptr %i.fn, align 8
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !50
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ba, i64 192
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  %i.ft = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  store i64 0, ptr %i.fr, align 8
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !50
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !47
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 224
  %i.fx = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  store i64 0, ptr %i.fv, align 8
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !50
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !47
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ba, i64 248
  %i.gb = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  store i64 0, ptr %i.fz, align 8
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !50
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !47
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ba, i64 264
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  %i.gf = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ba, i64 280
  store i64 0, ptr %i.gd, align 8
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !50
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !47
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ba, i64 296
  %i.gj = getelementptr inbounds i8, ptr null, i64 %i.be ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ba, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false)
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !50
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.12: ; preds = %bb.au, %bb.at, %bb.as
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !47
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ba, i64 288 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i8 0, i64 24, i1 false)
  %i.gm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31 ; 5 uses
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ba, i64 296 ; 4 uses
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !47
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.be ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ba, i64 304
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !50
  br i1 %i.bk, label %bb.aw, label %bb.av, !prof !517

bb.av:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.12
  %i.gq = icmp eq i64 %i.be, 8
  br i1 %i.gq, label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12.thread, label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12

_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12.thread: ; preds = %bb.av
  %i.gr = load double, ptr %.sroa.0386.0, align 8, !tbaa !42
  store double %i.gr, ptr %i.gm, align 8, !tbaa !42
  store ptr %i.go, ptr %i.gn, align 8, !tbaa !47
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ba, i64 312
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i53.12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr align 8 %.sroa.0386.0, i64 %i.be, i1 false)
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12

_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12: ; preds = %.thread580, %bb.aw, %bb.av
  %i.gt = phi ptr [ %i.go, %bb.aw ], [ %i.gj, %.thread580 ], [ %i.go, %bb.av ]
  %i.gu = phi ptr [ %i.gn, %bb.aw ], [ %i.gi, %.thread580 ], [ %i.gn, %bb.av ]
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !47
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ba, i64 312 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.sroa.0386.0, null
  br i1 %.not.i.i.i.i59, label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit60, label %bb.ax

bb.ax:                                            ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12.thread, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12
  %i.gw = phi ptr [ %i.gs, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12.thread ], [ %i.gv, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12 ]
  %i.gx = sub i64 %.sroa.10388.0, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0386.0, i64 noundef %i.gx) #29
  br label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit60

_ZN4llvm6ir2vec9EmbeddingD2Ev.exit60:             ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12, %bb.ax
  %i.gy = phi ptr [ %i.gv, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i56.12 ], [ %i.gw, %bb.ax ]
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %._crit_edge.i.i.i98

bb.ay:                                            ; preds = %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit, %bb.bm
  %.sroa.0404.0432 = phi i64 [ 0, %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit ], [ %i.jb, %bb.bm ] ; 3 uses
  %i.he = trunc i64 %.sroa.0404.0432 to i32
  %i.hf = add i32 %i.he, 1
  %i.hg = call { ptr, i64 } @_ZN4llvm6ir2vec10Vocabulary20getVocabKeyForOpcodeEj(i32 noundef %i.hf) ; 2 uses
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0      ; 5 uses
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %.not.i = icmp eq ptr %i.hh, null               ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !160, !alias.scope !519
  br i1 %.not.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i64 0, ptr %i.aq, align 8, !tbaa !161, !alias.scope !519
  store i8 0, ptr %i.ap, align 8, !tbaa !28, !alias.scope !519
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !519
  store i64 %i.hi, ptr %i.d, align 8, !tbaa !154, !noalias !519
  %i.hj = icmp ugt i64 %i.hi, 15
  br i1 %i.hj, label %bb.bb, label %._crit_edge.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.hk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #28 ; 2 uses
  store ptr %i.hk, ptr %4, align 8, !tbaa !27, !alias.scope !519
  %i.hl = load i64, ptr %i.d, align 8, !tbaa !154, !noalias !519
  store i64 %i.hl, ptr %i.ap, align 8, !tbaa !28, !alias.scope !519
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bb, %bb.ba
  %i.hm = phi ptr [ %i.hk, %bb.bb ], [ %i.ap, %bb.ba ] ; 2 uses
  switch i64 %i.hi, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.hn = load i8, ptr %i.hh, align 1, !tbaa !28
  store i8 %i.hn, ptr %i.hm, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr nonnull align 1 %i.hh, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i.i
  %i.ho = load i64, ptr %i.d, align 8, !tbaa !154, !noalias !519 ; 2 uses
  store i64 %i.ho, ptr %i.aq, align 8, !tbaa !161, !alias.scope !519
  %i.hp = load ptr, ptr %4, align 8, !tbaa !27, !alias.scope !519
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  store i8 0, ptr %i.hq, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !519
  %.pre.pre = load ptr, ptr %4, align 8
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %.pre = phi ptr [ %i.ap, %bb.az ], [ %.pre.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i ] ; 4 uses
  %i.hr = load ptr, ptr %i.ar, align 8, !tbaa !174 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm6ir2vec9EmbeddingESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.hs = load i64, ptr %i.aq, align 8, !tbaa !161 ; 4 uses
  br label %bb.be

bb.be:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !161 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hs, i64 %i.hu) ; 2 uses
  %i.hv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.hv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.be
  %i.hw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !27
  %i.hy = call i32 @memcmp(ptr noundef %i.hx, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i63, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.be
  %i.hz = sub i64 %i.hu, %i.hs
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.hy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ia = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ia, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ia, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.be, !llvm.loop !501

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ib = icmp eq ptr %.19.i.i.i, %i.as
  br i1 %i.ib, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm6ir2vec9EmbeddingESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !161 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.id, i64 %i.hs) ; 2 uses
  %i.ie = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ie, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.bf
  %i.if = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !27
  %i.ih = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ig, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i64 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i.i.i.i64, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.bf
  %i.ii = sub i64 %i.hs, %i.id
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ii, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ih, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ij = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ij, ptr %i.as, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm6ir2vec9EmbeddingESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm6ir2vec9EmbeddingESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.as, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ], [ %i.as, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.ik = icmp eq ptr %.pre, %i.ap
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm6ir2vec9EmbeddingESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.il = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.im) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm6ir2vec9EmbeddingESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not428 = icmp eq ptr %.sroa.0.0.i.i, %i.as
  br i1 %.not428, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.sroa.0404.0432
  %i.ip = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.in) ; 0 uses
  br label %bb.bm

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  store ptr %i.at, ptr %5, align 8, !tbaa !160, !alias.scope !520
  br i1 %.not.i, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit68.thread, label %bb.bi

_ZNK4llvm9StringRef3strB5cxx11Ev.exit68.thread:   ; preds = %bb.bh
  store i64 0, ptr %i.au, align 8, !tbaa !161, !alias.scope !520
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !520
  store i64 %i.hi, ptr %i.c, align 8, !tbaa !154, !noalias !520
  %i.iq = icmp ugt i64 %i.hi, 15
  br i1 %i.iq, label %bb.bj, label %._crit_edge.i.i.i66

bb.bj:                                            ; preds = %bb.bi
  %i.ir = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ir, ptr %5, align 8, !tbaa !27, !alias.scope !520
  %i.is = load i64, ptr %i.c, align 8, !tbaa !154, !noalias !520
  store i64 %i.is, ptr %i.at, align 8, !tbaa !28, !alias.scope !520
  br label %._crit_edge.i.i.i66

._crit_edge.i.i.i66:                              ; preds = %bb.bj, %bb.bi
  %i.it = phi ptr [ %i.ir, %bb.bj ], [ %i.at, %bb.bi ] ; 2 uses
  switch i64 %i.hi, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit68
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i66
  %i.iu = load i8, ptr %i.hh, align 1, !tbaa !28
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !28
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit68

bb.bl:                                            ; preds = %._crit_edge.i.i.i66
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr nonnull align 1 %i.hh, i64 %i.hi, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit68

_ZNK4llvm9StringRef3strB5cxx11Ev.exit68:          ; preds = %._crit_edge.i.i.i66, %bb.bk, %bb.bl
  %i.iv = load i64, ptr %i.c, align 8, !tbaa !154, !noalias !520 ; 2 uses
  store i64 %i.iv, ptr %i.au, align 8, !tbaa !161, !alias.scope !520
  %i.iw = load ptr, ptr %5, align 8, !tbaa !27, !alias.scope !520
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  store i8 0, ptr %i.ix, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !520
  %.pre439 = load ptr, ptr %5, align 8, !tbaa !27 ; 2 uses
  %i.iy = icmp eq ptr %.pre439, %i.at
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit68
  %i.iz = load i64, ptr %i.at, align 8, !tbaa !28
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %.pre439, i64 noundef %i.ja) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit68, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit68.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.bg
  %i.jb = add nuw nsw i64 %.sroa.0404.0432, 1     ; 2 uses
  %.not = icmp eq i64 %i.jb, 69
  br i1 %.not, label %bb.i, label %bb.ay

bb.bn:                                            ; preds = %bb.ch
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm6ir2vec9EmbeddingC2Em.exit75, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i73

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i73: ; preds = %bb.bn
  %i.jc = shl nuw nsw i64 %i.o, 3                 ; 3 uses
  %i.jd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #31 ; 4 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.o
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jd, i8 0, i64 %i.jc, i1 false), !tbaa !42
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jc
  %i.jg = ptrtoint ptr %i.je to i64
  br label %_ZN4llvm6ir2vec9EmbeddingC2Em.exit75

_ZN4llvm6ir2vec9EmbeddingC2Em.exit75:             ; preds = %bb.bn, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i73
  %.sroa.0362.0 = phi ptr [ null, %bb.bn ], [ %i.jd, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i73 ] ; 12 uses
  %.sroa.10364.0 = phi i64 [ 0, %bb.bn ], [ %i.jg, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i73 ]
  %.0.i.i.i.i.i.i.i.i74 = phi ptr [ null, %bb.bn ], [ %i.jf, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.loopexit.i73 ] ; 2 uses
  %i.jh = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31 ; 30 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.jj = ptrtoint ptr %.0.i.i.i.i.i.i.i.i74 to i64
  %i.jk = ptrtoint ptr %.sroa.0362.0 to i64       ; 2 uses
  %i.jl = sub i64 %i.jj, %i.jk                    ; 22 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i80 = icmp eq ptr %.0.i.i.i.i.i.i.i.i74, %.sroa.0362.0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i80, label %.thread596, label %bb.bo, !prof !516

bb.bo:                                            ; preds = %_ZN4llvm6ir2vec9EmbeddingC2Em.exit75
  %i.jm = icmp ugt i64 %i.jl, 9223372036854775800
  br i1 %i.jm, label %bb.bp, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86, !prof !49

bb.bp:                                            ; preds = %bb.bo
  call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86: ; preds = %bb.bo
  %i.jn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #31 ; 5 uses
  store ptr %i.jn, ptr %i.jh, align 8, !tbaa !48
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !47
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !50
  %i.jr = icmp samesign ugt i64 %i.jl, 8          ; 4 uses
  br i1 %i.jr, label %bb.bq, label %bb.br, !prof !126

bb.bq:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jn, ptr align 8 %.sroa.0362.0, i64 %i.jl, i1 false)
  br label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i81.1

bb.br:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86
  %i.js = icmp eq i64 %i.jl, 8
  br i1 %i.js, label %bb.bs, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i81.1

bb.bs:                                            ; preds = %bb.br
  %i.jt = load double, ptr %.sroa.0362.0, align 8, !tbaa !42
  store double %i.jt, ptr %i.jn, align 8, !tbaa !42
  br label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i81.1

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i81.1: ; preds = %bb.bq, %bb.br, %bb.bs
  store ptr %i.jp, ptr %i.jo, align 8, !tbaa !47
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #31 ; 5 uses
  store ptr %i.jv, ptr %i.ju, align 8, !tbaa !48
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jh, i64 32 ; 2 uses
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jl ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !50
  br i1 %i.jr, label %bb.bv, label %bb.bt, !prof !51

bb.bt:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i81.1
  %i.jz = icmp eq i64 %i.jl, 8
  br i1 %i.jz, label %bb.bu, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.2

bb.bu:                                            ; preds = %bb.bt
  %i.ka = load double, ptr %.sroa.0362.0, align 8, !tbaa !42
  store double %i.ka, ptr %i.jv, align 8, !tbaa !42
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.2

bb.bv:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i81.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %.sroa.0362.0, i64 %i.jl, i1 false)
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.2

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.2: ; preds = %bb.bv, %bb.bu, %bb.bt
  store ptr %i.jx, ptr %i.jw, align 8, !tbaa !47
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.kc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #31 ; 5 uses
  store ptr %i.kc, ptr %i.kb, align 8, !tbaa !48
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jh, i64 56 ; 2 uses
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !47
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jl ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !50
  br i1 %i.jr, label %bb.by, label %bb.bw, !prof !517

bb.bw:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.2
  %i.kg = icmp eq i64 %i.jl, 8
  br i1 %i.kg, label %bb.bx, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.3

bb.bx:                                            ; preds = %bb.bw
  %i.kh = load double, ptr %.sroa.0362.0, align 8, !tbaa !42
  store double %i.kh, ptr %i.kc, align 8, !tbaa !42
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.3

bb.by:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kc, ptr align 8 %.sroa.0362.0, i64 %i.jl, i1 false)
  br label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.3

.thread596:                                       ; preds = %_ZN4llvm6ir2vec9EmbeddingC2Em.exit75
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.kj = getelementptr inbounds i8, ptr null, i64 %i.jl ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i64 0, ptr %i.jh, align 8
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !50
  store ptr %i.kj, ptr %i.ki, align 8, !tbaa !47
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.km = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.kn = getelementptr inbounds i8, ptr null, i64 %i.jl ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store i64 0, ptr %i.kl, align 8
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !50
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !47
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.kr = getelementptr inbounds i8, ptr null, i64 %i.jl ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  store i64 0, ptr %i.kp, align 8
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !50
  store ptr %i.kr, ptr %i.kq, align 8, !tbaa !47
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jh, i64 80
  %i.kv = getelementptr inbounds i8, ptr null, i64 %i.jl ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jh, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 0, i64 16, i1 false)
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !50
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.3: ; preds = %bb.by, %bb.bx, %bb.bw
  store ptr %i.ke, ptr %i.kd, align 8, !tbaa !47
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.ky = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #31 ; 5 uses
  store ptr %i.ky, ptr %i.kx, align 8, !tbaa !48
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jh, i64 80 ; 4 uses
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !47
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.jl ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jh, i64 88
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !50
  br i1 %i.jr, label %bb.ca, label %bb.bz, !prof !517

bb.bz:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.3
  %i.lc = icmp eq i64 %i.jl, 8
  br i1 %i.lc, label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3.thread, label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3

_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3.thread: ; preds = %bb.bz
  %i.ld = load double, ptr %.sroa.0362.0, align 8, !tbaa !42
  store double %i.ld, ptr %i.ky, align 8, !tbaa !42
  store ptr %i.la, ptr %i.kz, align 8, !tbaa !47
  %i.le = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i86.3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ky, ptr align 8 %.sroa.0362.0, i64 %i.jl, i1 false)
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3

_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3: ; preds = %.thread596, %bb.ca, %bb.bz
  %i.lf = phi ptr [ %i.la, %bb.ca ], [ %i.kv, %.thread596 ], [ %i.la, %bb.bz ]
  %i.lg = phi ptr [ %i.kz, %bb.ca ], [ %i.ku, %.thread596 ], [ %i.kz, %bb.bz ]
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !47
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jh, i64 96 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %.sroa.0362.0, null
  br i1 %.not.i.i.i.i92, label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit93, label %bb.cb

bb.cb:                                            ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3.thread, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3
  %i.li = phi ptr [ %i.le, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3.thread ], [ %i.lh, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3 ]
  %i.lj = sub i64 %.sroa.10364.0, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0362.0, i64 noundef %i.lj) #29
  br label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit93

_ZN4llvm6ir2vec9EmbeddingD2Ev.exit93:             ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3, %bb.cb
  %i.lk = phi ptr [ %i.lh, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i89.3 ], [ %i.li, %bb.cb ]
  %i.ll = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %._crit_edge.i.i.i170

._crit_edge.i.i.i98:                              ; preds = %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit60, %bb.ch
  %.sroa.0380.0433 = phi i64 [ 0, %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit60 ], [ %i.mn, %bb.ch ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6ir2vec10Vocabulary18CanonicalTypeNamesE, i64 %.sroa.0380.0433 ; 2 uses
  %.sroa.0.0.copyload.i96 = load ptr, ptr %i.lq, align 16, !tbaa !153 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !154 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.gz, ptr %6, align 8, !tbaa !160, !alias.scope !521
  switch i64 %.sroa.2.0.copyload.i, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit100
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i.i98
  %i.lr = load i8, ptr %.sroa.0.0.copyload.i96, align 1, !tbaa !28
  store i8 %i.lr, ptr %i.gz, align 8, !tbaa !28
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit100

bb.cd:                                            ; preds = %._crit_edge.i.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr nonnull align 1 %.sroa.0.0.copyload.i96, i64 %.sroa.2.0.copyload.i, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit100

_ZNK4llvm9StringRef3strB5cxx11Ev.exit100:         ; preds = %bb.cd, %bb.cc, %._crit_edge.i.i.i98
  store i64 %.sroa.2.0.copyload.i, ptr %i.ha, align 8, !tbaa !161, !alias.scope !521
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.2.0.copyload.i
  store i8 0, ptr %i.ls, align 1, !tbaa !28
  %i.lt = load ptr, ptr %i.hb, align 8, !tbaa !174 ; 2 uses
  %.not10.i.i.i101 = icmp eq ptr %i.lt, null
  br i1 %.not10.i.i.i101, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i119, label %bb.ce

bb.ce:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit100, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i108
  %.012.i.i.i103 = phi ptr [ %.1.i.i.i113, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i108 ], [ %i.lt, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit100 ] ; 4 uses
  %.0811.i.i.i104 = phi ptr [ %.19.i.i.i110, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i108 ], [ %i.hc, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit100 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.012.i.i.i103, i64 40
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !161 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i105 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %i.lv) ; 2 uses
  %i.lw = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i105, 0
  br i1 %i.lw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i127, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i106

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i106: ; preds = %bb.ce
  %i.lx = getelementptr inbounds nuw i8, ptr %.012.i.i.i103, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !27
  %i.lz = call i32 @memcmp(ptr noundef %i.ly, ptr noundef nonnull %i.gz, i64 noundef %.sroa.speculated.i.i.i.i.i.i105) #28 ; 2 uses
  %.not.i.i.i.i.i.i107 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i.i.i.i.i107, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i127, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i108

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i127: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i106, %bb.ce
  %i.ma = sub i64 %i.lv, %.sroa.2.0.copyload.i
  %spec.select7.i.i.i.i.i.i.i128 = call i64 @llvm.smax.i64(i64 %i.ma, i64 -2147483648)
  %.08.i.i.i.i.i.i.i129 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i128, i64 2147483647)
  %.0.i6.i.i.i.i.i.i130 = trunc nsw i64 %.08.i.i.i.i.i.i.i129 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i108

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i108: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i127, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i106
  %.0.i.i.i.i.i.i109 = phi i32 [ %i.lz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i106 ], [ %.0.i6.i.i.i.i.i.i130, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i127 ]
  %i.mb = icmp slt i32 %.0.i.i.i.i.i.i109, 0      ; 2 uses
  %.19.i.i.i110 = select i1 %i.mb, ptr %.0811.i.i.i104, ptr %.012.i.i.i103 ; 5 uses
  %.1.in.v.i.i.i111 = select i1 %i.mb, i64 24, i64 16
  %.1.in.i.i.i112 = getelementptr inbounds nuw i8, ptr %.012.i.i.i103, i64 %.1.in.v.i.i.i111
  %.1.i.i.i113 = load ptr, ptr %.1.in.i.i.i112, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.1.i.i.i113, null
  br i1 %.not.i.i.i114, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i115, label %bb.ce, !llvm.loop !501

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i115: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i108
  %i.mc = icmp eq ptr %.19.i.i.i110, %i.hc
  br i1 %i.mc, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i119, label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i115
  %i.md = getelementptr inbounds nuw i8, ptr %.19.i.i.i110, i64 40
  %i.me = load i64, ptr %i.md, align 8, !tbaa !161 ; 2 uses
  %.sroa.speculated.i.i.i.i.i116 = call i64 @llvm.umin.i64(i64 %i.me, i64 %.sroa.2.0.copyload.i) ; 2 uses
  %i.mf = icmp eq i64 %.sroa.speculated.i.i.i.i.i116, 0
  br i1 %i.mf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i123, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i117

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i117: ; preds = %bb.cf
  %i.mg = getelementptr inbounds nuw i8, ptr %.19.i.i.i110, i64 32
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !27
  %i.mi = call i32 @memcmp(ptr noundef nonnull %i.gz, ptr noundef %i.mh, i64 noundef %.sroa.speculated.i.i.i.i.i116) #28 ; 2 uses
  %.not.i.i.i.i.i118 = icmp eq i32 %i.mi, 0
  br i1 %.not.i.i.i.i.i118, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i123: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i117, %bb.cf
  %i.mj = sub i64 %.sroa.2.0.copyload.i, %i.me
  %spec.select7.i.i.i.i.i.i124 = call i64 @llvm.smax.i64(i64 %i.mj, i64 -2147483648)
  %.08.i.i.i.i.i.i125 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i124, i64 2147483647)
  %.0.i6.i.i.i.i.i126 = trunc nsw i64 %.08.i.i.i.i.i.i125 to i32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i119: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit100, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i117, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i123
  %.0.i.i.i.i.i120 = phi i32 [ %i.mi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i117 ], [ %.0.i6.i.i.i.i.i126, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i123 ]
  %13 = icmp slt i32 %.0.i.i.i.i.i120, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  %i.mk = getelementptr inbounds nuw i8, ptr %.19.i.i.i110, i64 64
  %i.ml = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.sroa.0380.0433
  %i.mm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %i.mk) ; 0 uses
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %i.hd, ptr %7, align 8, !tbaa !160, !alias.scope !522
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  %i.mn = add nuw nsw i64 %.sroa.0380.0433, 1     ; 2 uses
  %.not422 = icmp eq i64 %i.mn, 13
  br i1 %.not422, label %bb.bn, label %._crit_edge.i.i.i98

bb.ci:                                            ; preds = %bb.cv
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit, label %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.loopexit

_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.loopexit:     ; preds = %bb.ci
  %i.mo = shl nuw nsw i64 %i.o, 3                 ; 3 uses
  %i.mp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mo) #31 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mp, i8 0, i64 %i.mo, i1 false), !tbaa !42
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.o
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mo
  %i.ms = ptrtoint ptr %i.mq to i64
  br label %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit

_ZN4llvm6ir2vec9EmbeddingC2Emd.exit:              ; preds = %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.loopexit, %bb.ci
  %.sroa.0342.0 = phi ptr [ null, %bb.ci ], [ %i.mp, %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.loopexit ] ; 6 uses
  %.sroa.10.0 = phi i64 [ 0, %bb.ci ], [ %i.ms, %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.loopexit ]
  %.0.i.i.i.i.i.i.i.i143 = phi ptr [ null, %bb.ci ], [ %i.mr, %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit.loopexit ] ; 2 uses
  %i.mt = call noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #31 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 624
  %i.mv = ptrtoint ptr %.0.i.i.i.i.i.i.i.i143 to i64
  %i.mw = ptrtoint ptr %.sroa.0342.0 to i64       ; 2 uses
  %i.mx = sub i64 %i.mv, %i.mw                    ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i148 = icmp eq ptr %.0.i.i.i.i.i.i.i.i143, %.sroa.0342.0
  %i.my = icmp ugt i64 %i.mx, 9223372036854775800
  %i.mz = icmp samesign ugt i64 %i.mx, 8
  %i.na = icmp eq i64 %i.mx, 8
  %i.nb = getelementptr inbounds i8, ptr null, i64 %i.mx ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157, %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit
  %.010.i.i.i.i.i.i146 = phi ptr [ %i.mt, %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit ], [ %i.nm, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157 ] ; 8 uses
  %.069.i.i.i.i.i.i147 = phi i64 [ 26, %_ZN4llvm6ir2vec9EmbeddingC2Emd.exit ], [ %i.nl, %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i.i.i.i.i146, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i148, label %.thread598, label %bb.ck

.thread598:                                       ; preds = %bb.cj
  %i.nc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i146, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i146, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.010.i.i.i.i.i.i146, i8 0, i64 16, i1 false)
  store ptr %i.nb, ptr %i.nd, align 8, !tbaa !50
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.my, label %bb.cl, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i154, !prof !49

bb.cl:                                            ; preds = %bb.ck
  call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i154: ; preds = %bb.ck
  %i.ne = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mx) #31 ; 5 uses
  store ptr %i.ne, ptr %.010.i.i.i.i.i.i146, align 8, !tbaa !48
  %i.nf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i146, i64 8 ; 4 uses
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !47
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.mx ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i146, i64 16
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !50
  br i1 %i.mz, label %bb.cm, label %bb.cn, !prof !126

bb.cm:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i154
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ne, ptr align 8 %.sroa.0342.0, i64 %i.mx, i1 false)
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157

bb.cn:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.i.i.i.i.i.i.i.i.i154
  br i1 %i.na, label %bb.co, label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157

bb.co:                                            ; preds = %bb.cn
  %i.ni = load double, ptr %.sroa.0342.0, align 8, !tbaa !42
  store double %i.ni, ptr %i.ne, align 8, !tbaa !42
  br label %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157

_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157: ; preds = %.thread598, %bb.co, %bb.cn, %bb.cm
  %i.nj = phi ptr [ %i.ng, %bb.co ], [ %i.ng, %bb.cn ], [ %i.ng, %bb.cm ], [ %i.nb, %.thread598 ]
  %i.nk = phi ptr [ %i.nf, %bb.co ], [ %i.nf, %bb.cn ], [ %i.nf, %bb.cm ], [ %i.nc, %.thread598 ]
  store ptr %i.nj, ptr %i.nk, align 8, !tbaa !47
  %i.nl = add nsw i64 %.069.i.i.i.i.i.i147, -1    ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i146, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i158 = icmp eq i64 %i.nl, 0
  br i1 %.not.i.i.i.i.i.i158, label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit159, label %bb.cj, !llvm.loop !498

_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit159: ; preds = %_ZSt10_ConstructIN4llvm6ir2vec9EmbeddingEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i157
  %.not.i.i.i.i160 = icmp eq ptr %.sroa.0342.0, null
  br i1 %.not.i.i.i.i160, label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit161, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit159
  %i.nn = sub i64 %.sroa.10.0, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0342.0, i64 noundef %i.nn) #29
  br label %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit161

_ZN4llvm6ir2vec9EmbeddingD2Ev.exit161:            ; preds = %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEC2EmRKS2_RKS3_.exit159, %bb.cp
  %i.no = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.np = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.cz

._crit_edge.i.i.i170:                             ; preds = %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit93, %bb.cv
  %.sroa.0356.0434 = phi i64 [ 0, %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit93 ], [ %i.op, %bb.cv ] ; 3 uses
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6ir2vec10Vocabulary16OperandKindNamesE, i64 %.sroa.0356.0434 ; 2 uses
  %.sroa.0.0.copyload.i164 = load ptr, ptr %i.ns, align 16, !tbaa !153 ; 2 uses
  %.sroa.2.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %.sroa.2.0.copyload.i166 = load i64, ptr %.sroa.2.0..sroa_idx.i165, align 8, !tbaa !154 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.ll, ptr %8, align 8, !tbaa !160, !alias.scope !523
  switch i64 %.sroa.2.0.copyload.i166, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit172
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i170
  %i.nt = load i8, ptr %.sroa.0.0.copyload.i164, align 1, !tbaa !28
  store i8 %i.nt, ptr %i.ll, align 8, !tbaa !28
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit172

bb.cr:                                            ; preds = %._crit_edge.i.i.i170
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr nonnull align 1 %.sroa.0.0.copyload.i164, i64 %.sroa.2.0.copyload.i166, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit172

_ZNK4llvm9StringRef3strB5cxx11Ev.exit172:         ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i170
  store i64 %.sroa.2.0.copyload.i166, ptr %i.lm, align 8, !tbaa !161, !alias.scope !523
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.sroa.2.0.copyload.i166
  store i8 0, ptr %i.nu, align 1, !tbaa !28
  %i.nv = load ptr, ptr %i.ln, align 8, !tbaa !174 ; 2 uses
  %.not10.i.i.i173 = icmp eq ptr %i.nv, null
  br i1 %.not10.i.i.i173, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i191, label %bb.cs

bb.cs:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit172, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i180
  %.012.i.i.i175 = phi ptr [ %.1.i.i.i185, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i180 ], [ %i.nv, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit172 ] ; 4 uses
  %.0811.i.i.i176 = phi ptr [ %.19.i.i.i182, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i180 ], [ %i.lo, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit172 ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.012.i.i.i175, i64 40
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !161 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i177 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i166, i64 %i.nx) ; 2 uses
  %i.ny = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i177, 0
  br i1 %i.ny, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i199, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i178

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i178: ; preds = %bb.cs
  %i.nz = getelementptr inbounds nuw i8, ptr %.012.i.i.i175, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !27
  %i.ob = call i32 @memcmp(ptr noundef %i.oa, ptr noundef nonnull %i.ll, i64 noundef %.sroa.speculated.i.i.i.i.i.i177) #28 ; 2 uses
  %.not.i.i.i.i.i.i179 = icmp eq i32 %i.ob, 0
  br i1 %.not.i.i.i.i.i.i179, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i199, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i180

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i199: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i178, %bb.cs
  %i.oc = sub i64 %i.nx, %.sroa.2.0.copyload.i166
  %spec.select7.i.i.i.i.i.i.i200 = call i64 @llvm.smax.i64(i64 %i.oc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i201 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i200, i64 2147483647)
  %.0.i6.i.i.i.i.i.i202 = trunc nsw i64 %.08.i.i.i.i.i.i.i201 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i180

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i180: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i199, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i178
  %.0.i.i.i.i.i.i181 = phi i32 [ %i.ob, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i178 ], [ %.0.i6.i.i.i.i.i.i202, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i199 ]
  %i.od = icmp slt i32 %.0.i.i.i.i.i.i181, 0      ; 2 uses
  %.19.i.i.i182 = select i1 %i.od, ptr %.0811.i.i.i176, ptr %.012.i.i.i175 ; 5 uses
  %.1.in.v.i.i.i183 = select i1 %i.od, i64 24, i64 16
  %.1.in.i.i.i184 = getelementptr inbounds nuw i8, ptr %.012.i.i.i175, i64 %.1.in.v.i.i.i183
  %.1.i.i.i185 = load ptr, ptr %.1.in.i.i.i184, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %.1.i.i.i185, null
  br i1 %.not.i.i.i186, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i187, label %bb.cs, !llvm.loop !501

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i187: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i180
  %i.oe = icmp eq ptr %.19.i.i.i182, %i.lo
  br i1 %i.oe, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i191, label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i187
  %i.of = getelementptr inbounds nuw i8, ptr %.19.i.i.i182, i64 40
  %i.og = load i64, ptr %i.of, align 8, !tbaa !161 ; 2 uses
  %.sroa.speculated.i.i.i.i.i188 = call i64 @llvm.umin.i64(i64 %i.og, i64 %.sroa.2.0.copyload.i166) ; 2 uses
  %i.oh = icmp eq i64 %.sroa.speculated.i.i.i.i.i188, 0
  br i1 %i.oh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i195, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i189

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i189: ; preds = %bb.ct
  %i.oi = getelementptr inbounds nuw i8, ptr %.19.i.i.i182, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !27
  %i.ok = call i32 @memcmp(ptr noundef nonnull %i.ll, ptr noundef %i.oj, i64 noundef %.sroa.speculated.i.i.i.i.i188) #28 ; 2 uses
  %.not.i.i.i.i.i190 = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i.i.i.i190, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i195: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i189, %bb.ct
  %i.ol = sub i64 %.sroa.2.0.copyload.i166, %i.og
  %spec.select7.i.i.i.i.i.i196 = call i64 @llvm.smax.i64(i64 %i.ol, i64 -2147483648)
  %.08.i.i.i.i.i.i197 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i196, i64 2147483647)
  %.0.i6.i.i.i.i.i198 = trunc nsw i64 %.08.i.i.i.i.i.i197 to i32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i191: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit172, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm6ir2vec9EmbeddingEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i189, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i195
  %.0.i.i.i.i.i192 = phi i32 [ %i.ok, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i189 ], [ %.0.i6.i.i.i.i.i198, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i195 ]
  %14 = icmp slt i32 %.0.i.i.i.i.i192, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  %i.om = getelementptr inbounds nuw i8, ptr %.19.i.i.i182, i64 64
  %i.on = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %.sroa.0356.0434
  %i.oo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.on, ptr noundef nonnull align 8 dereferenceable(24) %i.om) ; 0 uses
  br label %bb.cv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr %i.lp, ptr %9, align 8, !tbaa !160, !alias.scope !524
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %bb.cu
  %i.op = add nuw nsw i64 %.sroa.0356.0434, 1     ; 2 uses
  %.not423 = icmp eq i64 %i.op, 4
  br i1 %.not423, label %bb.ci, label %._crit_edge.i.i.i170

_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEaSEOS4_.exit242: ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.oq = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31 ; 14 uses
  store ptr %i.oq, ptr %12, align 8, !tbaa !115
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 96 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.or, ptr %i.ot, align 8, !tbaa !145
  store ptr %i.or, ptr %i.os, align 8, !tbaa !152
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store ptr %i.u, ptr %i.oq, align 8, !tbaa !118
  store ptr %i.an, ptr %i.ou, align 8, !tbaa !146
  store ptr %i.v, ptr %i.ov, align 8, !tbaa !180
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  store ptr %i.ba, ptr %i.ow, align 8, !tbaa !118
  store ptr %i.gy, ptr %i.ox, align 8, !tbaa !146
  store ptr %i.bb, ptr %i.oy, align 8, !tbaa !180
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  store ptr %i.jh, ptr %i.oz, align 8, !tbaa !118
  store ptr %i.lk, ptr %i.pa, align 8, !tbaa !146
  store ptr %i.ji, ptr %i.pb, align 8, !tbaa !180
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oq, i64 72
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  store ptr %i.mt, ptr %i.pc, align 8, !tbaa !118
  store ptr %i.nm, ptr %i.pd, align 8, !tbaa !146
  store ptr %i.mu, ptr %i.pe, align 8, !tbaa !180
  call void @_ZN4llvm6ir2vec12VocabStorageC1EOSt6vectorIS2_INS0_9EmbeddingESaIS3_EESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(24) %12) #28
  %i.pf = load ptr, ptr %12, align 8, !tbaa !115  ; 3 uses
  %i.pg = load ptr, ptr %i.os, align 8, !tbaa !152 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pf, %i.pg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i243

.lr.ph.i.i.i243:                                  ; preds = %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEaSEOS4_.exit242, %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.px, %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i ], [ %i.pf, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEaSEOS4_.exit242 ] ; 5 uses
  %i.ph = load ptr, ptr %.05.i.i.i, align 8, !tbaa !118 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !146 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ph, %i.pj
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i243, %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.pq, %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ph, %.lr.ph.i.i.i243 ] ; 3 uses
  %i.pk = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i244 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i244, label %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !50
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = ptrtoint ptr %i.pk to i64
  %i.pp = sub i64 %i.pn, %i.po
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pp) #29
  br label %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.cw, %.lr.ph.i.i.i.i.i.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.pq, %i.pj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm6ir2vec9EmbeddingEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i

_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i243
  %i.pr = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exitthread-pre-split.i.i.i.i.i ], [ %i.ph, %.lr.ph.i.i.i243 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.pr, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !180
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.pr to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef %i.pw) #29
  br label %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.cx, %_ZSt8_DestroyIPN4llvm6ir2vec9EmbeddingEEvT_S4_.exit.i.i.i.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %i.px, %i.pg
  br i1 %.not.i.i.i245, label %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i243, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i

_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEaSEOS4_.exit242
  %i.py = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exitthread-pre-split.i ], [ %i.pf, %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EEaSEOS4_.exit242 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.py, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit284, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i
  %i.pz = load ptr, ptr %i.ot, align 8, !tbaa !145
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.py to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.qc) #29
  br label %_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit284

_ZNSt6vectorIN4llvm6ir2vec9EmbeddingESaIS2_EED2Ev.exit284: ; preds = %_ZSt8_DestroyIPSt6vectorIN4llvm6ir2vec9EmbeddingESaIS3_EEEvT_S7_.exit.i, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret void

bb.cz:                                            ; preds = %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit161, %bb.dn
  %.sroa.0337.0435 = phi i64 [ 0, %_ZN4llvm6ir2vec9EmbeddingD2Ev.exit161 ], [ %i.sb, %bb.dn ] ; 3 uses
  %i.qd = trunc i64 %.sroa.0337.0435 to i32       ; 3 uses
  %i.qe = icmp ult i32 %i.qd, 16
  %i.qf = add i32 %i.qd, 16
  %.0.i.i = select i1 %i.qe, i32 %i.qd, i32 %i.qf
  %i.qg = call { ptr, i64 } @_ZN4llvm6ir2vec10Vocabulary23getVocabKeyForPredicateENS_7CmpInst9PredicateE(i32 noundef %.0.i.i) ; 2 uses
  %i.qh = extractvalue { ptr, i64 } %i.qg, 0      ; 5 uses
  %i.qi = extractvalue { ptr, i64 } %i.qg, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %.not.i285 = icmp eq ptr %i.qh, null            ; 2 uses
  store ptr %i.no, ptr %10, align 8, !tbaa !160, !alias.scope !525
  br i1 %.not.i285, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i64 0, ptr %i.np, align 8, !tbaa !161, !alias.scope !525
  store i8 0, ptr %i.no, align 8, !tbaa !28, !alias.scope !525
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit288

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !525
  store i64 %i.qi, ptr %i.b, align 8, !tbaa !154, !noalias !525
  %i.qj = icmp ugt i64 %i.qi, 15
  br i1 %i.qj, label %bb.dc, label %._crit_edge.i.i.i286

bb.dc:                                            ; preds = %bb.db
  %i.qk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28 ; 2 uses
  store ptr %i.qk, ptr %10, align 8, !tbaa !27, !alias.scope !525
  %i.ql = load i64, ptr %i.b, align 8, !tbaa !154, !noalias !525
  store i64 %i.ql, ptr %i.no, align 8, !tbaa !28, !alias.scope !525
  br label %._crit_edge.i.i.i286

._crit_edge.i.i.i286:                             ; preds = %bb.dc, %bb.db
  %i.qm = phi ptr [ %i.qk, %bb.dc ], [ %i.no, %bb.db ] ; 2 uses
  switch i64 %i.qi, label %bb.de [
    i64 1, label %bb.dd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i287
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i.i286
  %i.qn = load i8, ptr %i.qh, align 1, !tbaa !28
  store i8 %i.qn, ptr %i.qm, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i287

bb.de:                                            ; preds = %._crit_edge.i.i.i286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qm, ptr nonnull align 1 %i.qh, i64 %i.qi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i287: ; preds = %bb.de, %bb.dd, %._crit_edge.i.i.i286
  %i.qo = load i64, ptr %i.b, align 8, !tbaa !154, !noalias !525 ; 2 uses
  store i64 %i.qo, ptr %i.np, align 8, !tbaa !161, !alias.scope !525
  %i.qp = load ptr, ptr %10, align 8, !tbaa !27, !alias.scope !525
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qo
  store i8 0, ptr %i.qq, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !525
  %.pre444.pre = load ptr, ptr %10, align 8
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit288

_ZNK4llvm9StringRef3strB5cxx11Ev.exit288:         ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i287
  %.pre444.a = phi ptr [ %i.no, %bb.da ], [ %.pre444.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i287 ] ; 4 uses
  %i.qr = load ptr, ptr %i.ln, align 8, !tbaa !174 ; 2 uses
  %.not10.i.i.i289 = icmp eq ptr %i.qr, null
  br i1 %.not10.i.i.i289, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm6ir2vec9EmbeddingESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit319, label %.lr.ph.i.i.i290

.lr.ph.i.i.i290:                                  ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit288
  %i.qs = load i64, ptr %i.np, align 8, !tbaa !161 ; 4 uses
  br label %bb.df

bb.df:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i296, %.lr.ph.i.i.i290
  %.012.i.i.i291 = phi ptr [ %i.qr, %.lr.ph.i.i.i290 ], [ %.1.i.i.i301, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i296 ] ; 4 uses
  %.0811.i.i.i292 = phi ptr [ %i.lo, %.lr.ph.i.i.i290 ], [ %.19.i.i.i298, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i296 ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.012.i.i.i291, i64 40
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !161 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i293 = call i64 @llvm.umin.i64(i64 %i.qs, i64 %i.qu) ; 2 uses
  %i.qv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i293, 0
  br i1 %i.qv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294: ; preds = %bb.df
  %i.qw = getelementptr inbounds nuw i8, ptr %.012.i.i.i291, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !27
  %i.qy = call i32 @memcmp(ptr noundef %i.qx, ptr noundef %.pre444.a, i64 noundef %.sroa.speculated.i.i.i.i.i.i293) #28 ; 2 uses
  %.not.i.i.i.i.i.i295 = icmp eq i32 %i.qy, 0
  br i1 %.not.i.i.i.i.i.i295, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i296

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i315: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i294, %bb.df
end_hunk_1
