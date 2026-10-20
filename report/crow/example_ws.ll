Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow8mustache10template_t5parseEv:._crit_edge.i.i
          to label %bb.fm unwind label %bb.fr

bb.fm:                                            ; preds = %bb.fl
  invoke void @__cxa_throw(ptr nonnull %i.afv, ptr nonnull @_ZTIN4crow8mustache26invalid_template_exceptionE, ptr nonnull @_ZN4crow8mustache26invalid_template_exceptionD2Ev) #39
          to label %bb.gh unwind label %bb.fr

bb.fn:                                            ; preds = %_ZNKSt6vectorIN4crow8mustache6ActionESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.fe
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432.thread: ; preds = %bb.fg
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1822

bb.fo:                                            ; preds = %bb.fi
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.fp:                                            ; preds = %bb.fj
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

bb.fq:                                            ; preds = %bb.fk
  %i.agn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

bb.fr:                                            ; preds = %bb.fm, %bb.fl
  %.092 = phi i1 [ false, %bb.fm ], [ true, %bb.fl ] ; 2 uses
  %i.ago = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agp = load ptr, ptr %37, align 8, !tbaa !164 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.agr = icmp eq ptr %i.agp, %i.agq
  br i1 %i.agr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %bb.fr
  %i.ags = load i64, ptr %i.agq, align 8, !tbaa !165
  %i.agt = add i64 %i.ags, 1
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.agt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %bb.fq
  %.pn236 = phi { ptr, i32 } [ %i.agn, %bb.fq ], [ %i.ago, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %i.ago, %bb.fr ] ; 2 uses
  %.193 = phi i1 [ true, %bb.fq ], [ %.092, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %.092, %bb.fr ] ; 2 uses
  %i.agu = load ptr, ptr %42, align 8, !tbaa !164 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.agw = icmp eq ptr %i.agu, %i.agv
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
  %i.agx = load i64, ptr %i.agv, align 8, !tbaa !165
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agu, i64 noundef %i.agy) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.fp
  %.pn236.pn = phi { ptr, i32 } [ %i.agm, %bb.fp ], [ %.pn236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %.pn236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.fp ], [ %.193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %.193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #40
  %i.agz = load ptr, ptr %38, align 8, !tbaa !164 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ahb = icmp eq ptr %i.agz, %i.aha
  br i1 %i.ahb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %i.ahc = load i64, ptr %i.aha, align 8, !tbaa !165
  %i.ahd = add i64 %i.ahc, 1
  call void @_ZdlPvm(ptr noundef %i.agz, i64 noundef %i.ahd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424, %bb.fo
  %.pn236.pn.pn = phi { ptr, i32 } [ %i.agl, %bb.fo ], [ %.pn236.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.pn236.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 4 uses
  %.3 = phi i1 [ true, %bb.fo ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 2 uses
  %i.ahe = load ptr, ptr %39, align 8, !tbaa !164 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ahg = icmp eq ptr %i.ahe, %i.ahf
  br i1 %i.ahg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
  %i.ahh = load i64, ptr %i.ahf, align 8, !tbaa !165
  %i.ahi = add i64 %i.ahh, 1
  call void @_ZdlPvm(ptr noundef %i.ahe, i64 noundef %i.ahi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427
  %i.ahj = load ptr, ptr %40, align 8, !tbaa !164 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.ahl = icmp eq ptr %i.ahj, %i.ahk
  br i1 %i.ahl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread: ; preds = %bb.fh
  %i.ahm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahn = load ptr, ptr %40, align 8, !tbaa !164 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.ahp = icmp eq ptr %i.ahn, %i.aho
  br i1 %i.ahp, label %.sink.split1822, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread
  %i.ahq = load i64, ptr %i.aho, align 8, !tbaa !165
  %i.ahr = add i64 %i.ahq, 1
  call void @_ZdlPvm(ptr noundef %i.ahn, i64 noundef %i.ahr) #41
  br label %.sink.split1822

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.ahs = load i64, ptr %i.ahk, align 8, !tbaa !165
  %i.aht = add i64 %i.ahs, 1
  call void @_ZdlPvm(ptr noundef %i.ahj, i64 noundef %i.aht) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  br i1 %.3, label %bb.fs, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  br i1 %.3, label %bb.fs, label %.body

.sink.split1822:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread
  %.pn236.pn.pn.pn.pn875.ph = phi { ptr, i32 } [ %i.ahm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread ], [ %i.agk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432.thread ], [ %i.ahm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  br label %bb.fs

bb.fs:                                            ; preds = %.sink.split1822, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %.pn236.pn.pn.pn.pn875 = phi { ptr, i32 } [ %.pn236.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.pn236.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.pn236.pn.pn.pn.pn875.ph, %.sink.split1822 ]
  call void @__cxa_free_exception(ptr %i.afv) #40
  br label %.body

_ZNK4crow8mustache6Action16missing_end_pairEv.exit.thread: ; preds = %.lr.ph1181, %.lr.ph1181, %.lr.ph1181, %.lr.ph1181, %.lr.ph1181, %_ZNK4crow8mustache6Action16missing_end_pairEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1181, !llvm.loop !2407

._crit_edge1193:                                  ; preds = %.loopexit, %.preheader, %._crit_edge
  %.not.i.i.i433 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i433, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %._crit_edge1193
  %i.ahu = ptrtoint ptr %.sroa.22.0.lcssa to i64
  %i.ahv = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ahw = sub i64 %i.ahu, %i.ahv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.ahw) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge1193, %bb.ft
  %i.ahx = load ptr, ptr %2, align 8, !tbaa !164  ; 2 uses
  %i.ahy = icmp eq ptr %i.ahx, %i.f
  br i1 %i.ahy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ahz = load i64, ptr %i.f, align 8, !tbaa !165
  %i.aia = add i64 %i.ahz, 1
  call void @_ZdlPvm(ptr noundef %i.ahx, i64 noundef %i.aia) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.aib = load ptr, ptr %1, align 8, !tbaa !164  ; 2 uses
  %i.aic = icmp eq ptr %i.aib, %i.c
  br i1 %i.aic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.aid = load i64, ptr %i.c, align 8, !tbaa !165
  %i.aie = add i64 %i.aid, 1
  call void @_ZdlPvm(ptr noundef %i.aib, i64 noundef %i.aie) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void

bb.fu:                                            ; preds = %.lr.ph1192, %.loopexit
  %indvars.iv1373 = phi i64 [ %i.afn, %.lr.ph1192 ], [ %indvars.iv.next1374, %.loopexit ] ; 6 uses
  %i.aif = getelementptr inbounds nuw [20 x i8], ptr %i.aff, i64 %indvars.iv1373 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 16
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !1058 ; 2 uses
  %.off = add i32 %i.aih, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.loopexit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aii = load ptr, ptr %0, align 8, !tbaa !1002
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.aii, i64 %indvars.iv1373 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 8 ; 2 uses
  %.not907 = icmp eq i64 %indvars.iv1373, %i.afn
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !2413 ; 2 uses
  %i.ain = load i32, ptr %i.aij, align 4, !tbaa !2412
  %i.aio = sext i32 %i.aim to i64                 ; 3 uses
  %i.aip = sext i32 %i.ain to i64                 ; 2 uses
  %indvars.iv.next13662078 = add nsw i64 %i.aio, -1 ; 2 uses
  %.not2312079 = icmp slt i64 %indvars.iv.next13662078, %i.aip
  br i1 %.not2312079, label %._crit_edge2081, label %.lr.ph2080.preheader

.lr.ph2080.preheader:                             ; preds = %bb.fv
  %i.aiq = load ptr, ptr %i.i, align 8, !tbaa !164
  br label %.lr.ph2080

bb.fw:                                            ; preds = %.lr.ph2080
  %indvars.iv.next1366 = add nsw i64 %indvars.iv13642078, -1 ; 2 uses
  %.not231 = icmp slt i64 %indvars.iv.next1366, %i.aip
  br i1 %.not231, label %._crit_edge2081, label %.lr.ph2080, !llvm.loop !2408

.lr.ph2080:                                       ; preds = %.lr.ph2080.preheader, %bb.fw
  %indvars.iv13642078 = phi i64 [ %indvars.iv.next1366, %bb.fw ], [ %indvars.iv.next13662078, %.lr.ph2080.preheader ] ; 4 uses
  %indvars.iv13652080 = phi i64 [ %indvars.iv13642078, %bb.fw ], [ %i.aio, %.lr.ph2080.preheader ]
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %indvars.iv13642078
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !165
  switch i8 %i.ais, label %.loopexit [
    i8 32, label %bb.fw
    i8 10, label %.thread886
  ]

._crit_edge2081:                                  ; preds = %bb.fw, %bb.fv
  %indvars.iv1364.lcssa = phi i64 [ %i.aio, %bb.fv ], [ %indvars.iv13642078, %bb.fw ]
  %.not906 = icmp eq i64 %indvars.iv1373, 0
  br i1 %.not906, label %.thread886, label %.loopexit

.thread886:                                       ; preds = %.lr.ph2080, %._crit_edge2081
  %indvars.iv13641827 = phi i64 [ %indvars.iv1364.lcssa, %._crit_edge2081 ], [ %indvars.iv13652080, %.lr.ph2080 ]
  %.089.in1196 = trunc i64 %indvars.iv13641827 to i32 ; 2 uses
  %i.ait = load i32, ptr %i.aik, align 4, !tbaa !2412 ; 4 uses
  %i.aiu = load i64, ptr %i.o, align 8, !tbaa !166
  %i.aiv = trunc i64 %i.aiu to i32                ; 4 uses
  %i.aiw = icmp slt i32 %i.ait, %i.aiv
  br i1 %i.aiw, label %.lr.ph1185, label %.critedge

.lr.ph1185:                                       ; preds = %.thread886
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aij, i64 12
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !2413
  %i.aiz = sext i32 %i.ait to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.aiy, i32 %i.ait) ; 2 uses
  %wide.trip.count1370 = sext i32 %smax to i64
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph1185, %bb.fz
  %indvars.iv1367 = phi i64 [ %i.aiz, %.lr.ph1185 ], [ %indvars.iv.next1368, %bb.fz ] ; 4 uses
  %exitcond1371.not = icmp eq i64 %indvars.iv1367, %wide.trip.count1370
  br i1 %exitcond1371.not, label %.critedge, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aja = load ptr, ptr %i.i, align 8, !tbaa !164 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 %indvars.iv1367
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !165 ; 2 uses
  %.not234 = icmp eq i8 %i.ajc, 32
  br i1 %.not234, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %indvars.iv.next1368 = add nsw i64 %indvars.iv1367, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1368 to i32
  %exitcond1372.not = icmp eq i32 %lftr.wideiv, %i.aiv
  br i1 %exitcond1372.not, label %.critedge, label %bb.fx, !llvm.loop !2409

.critedge:                                        ; preds = %bb.fx, %bb.fz, %.thread886
  %.088.lcssa = phi i32 [ %i.ait, %.thread886 ], [ %i.aiv, %bb.fz ], [ %smax, %bb.fx ]
  br i1 %.not907, label %.thread890, label %.loopexit

bb.ga:                                            ; preds = %bb.fy
  %i.ajd = trunc nsw i64 %indvars.iv1367 to i32   ; 3 uses
  switch i8 %i.ajc, label %.loopexit [
    i8 10, label %.thread890
    i8 13, label %bb.gb
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.aje = add nsw i32 %i.ajd, 1                  ; 2 uses
  %i.ajf = icmp slt i32 %i.aje, %i.aiv
  br i1 %i.ajf, label %bb.gc, label %.loopexit

bb.gc:                                            ; preds = %bb.gb
  %i.ajg = sext i32 %i.aje to i64
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aja, i64 %i.ajg
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !165
  %i.ajj = icmp eq i8 %i.aji, 10
  br i1 %i.ajj, label %.thread890, label %.loopexit

.thread890:                                       ; preds = %bb.ga, %.critedge, %bb.gc
  %.088949 = phi i32 [ %i.ajd, %bb.ga ], [ %i.ajd, %bb.gc ], [ %.088.lcssa, %.critedge ] ; 2 uses
  %.0889892 = phi i1 [ false, %bb.ga ], [ false, %bb.gc ], [ true, %.critedge ]
  %i.ajk = icmp eq i32 %i.aih, 6
  br i1 %i.ajk, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.thread890
  %i.ajl = sub i32 %i.aim, %.089.in1196
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aif, i64 12
  store i32 %i.ajl, ptr %i.ajm, align 4, !tbaa !1057
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.thread890
  store i32 %.089.in1196, ptr %i.ail, align 4, !tbaa !2413
  br i1 %.0889892, label %.loopexit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ajn = sext i32 %.088949 to i64
  %i.ajo = load ptr, ptr %i.i, align 8, !tbaa !164
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 %i.ajn
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !165
  %i.ajr = icmp eq i8 %i.ajq, 10
  %.1.v = select i1 %i.ajr, i32 1, i32 2
  %.1 = add nsw i32 %.1.v, %.088949
  store i32 %.1, ptr %i.aik, align 4, !tbaa !2412
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph2080, %bb.fu, %bb.ga, %._crit_edge2081, %bb.ge, %bb.gf, %bb.gb, %bb.gc, %.critedge
  %indvars.iv.next1374 = add nsw i64 %indvars.iv1373, -1
  %i.ajs = icmp sgt i64 %indvars.iv1373, 0
  br i1 %i.ajs, label %bb.fu, label %._crit_edge1193, !llvm.loop !2410

.body:                                            ; preds = %.loopexit.loopexit, %.loopexit.split-lp, %.loopexit.split-lp935.loopexit.split-lp, %.loopexit.split-lp940.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430, %bb.fn, %bb.ff, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %bb.bg, %.loopexit.split-lp925.loopexit.split-lp, %.loopexit.split-lp930.loopexit.split-lp, %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %bb.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %bb.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %.sroa.0.6 = phi ptr [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.sroa.0.0.lcssa, %bb.fs ], [ %.sroa.0.0.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.sroa.0.0.lcssa, %bb.fn ], [ %.sroa.0.0.lcssa, %bb.ff ], [ %.sroa.0.02069, %bb.o ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0.02069, %bb.u ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.0.8, %.loopexit.split-lp935.loopexit.split-lp ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.sroa.0.02069, %bb.dc ], [ %.sroa.0.02069, %bb.ao ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %.sroa.0.02069, %bb.bg ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.sroa.0.7, %.loopexit.split-lp940.loopexit.split-lp ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.sroa.0.02069, %bb.cf ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.sroa.0.02069, %bb.ck ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.sroa.0.02069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.sroa.0.02069, %.loopexit.split-lp925.loopexit.split-lp ], [ %.sroa.0.02069, %.loopexit.split-lp930.loopexit.split-lp ], [ %.sroa.0.02069, %bb.ee ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %.sroa.0.02069, %bb.ek ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.sroa.0.02069, %bb.ey ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.sroa.0.02069, %bb.et ], [ %.sroa.0.02069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.sroa.0.02059, %.loopexit.split-lp ], [ %.sroa.0.02069, %.loopexit.loopexit ] ; 3 uses
  %.sroa.22.6 = phi ptr [ %.sroa.22.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.sroa.22.0.lcssa, %bb.fs ], [ %.sroa.22.0.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.sroa.22.0.lcssa, %bb.fn ], [ %.sroa.22.0.lcssa, %bb.ff ], [ %.sroa.22.02071, %bb.o ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.22.02071, %bb.u ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.22.8, %.loopexit.split-lp935.loopexit.split-lp ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.sroa.22.02071, %bb.dc ], [ %.sroa.22.02071, %bb.ao ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %.sroa.22.02071, %bb.bg ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.sroa.22.7, %.loopexit.split-lp940.loopexit.split-lp ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.sroa.22.02071, %bb.cf ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.sroa.22.02071, %bb.ck ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.sroa.22.02071, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.sroa.22.02071, %.loopexit.split-lp925.loopexit.split-lp ], [ %.sroa.22.02071, %.loopexit.split-lp930.loopexit.split-lp ], [ %.sroa.22.02071, %bb.ee ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %.sroa.22.02071, %bb.ek ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.sroa.22.02071, %bb.ey ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.sroa.22.02071, %bb.et ], [ %.sroa.22.02071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.sroa.22.01320, %.loopexit.split-lp ], [ %.sroa.22.0.lcssa1285.ph, %.loopexit.loopexit ]
  %.pn236.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn236.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %i.adf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.pn236.pn.pn.pn.pn875, %bb.fs ], [ %.pn236.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %i.agj, %bb.fn ], [ %i.afs, %bb.ff ], [ %.pn226801, %bb.o ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn224804, %bb.u ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp2105.a, %.loopexit.split-lp935.loopexit.split-lp ], [ %.pn185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.pn195.pn841, %bb.dc ], [ %.pn217.pn.pn807, %bb.ao ], [ %.pn217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.abv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %i.abl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %.pn207.pn.pn.pn.pn.pn.pn.pn821, %bb.bg ], [ %.pn207.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %i.xo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %lpad.loopexit.split-lp2108.a, %.loopexit.split-lp940.loopexit.split-lp ], [ %i.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %i.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn201835, %bb.cf ], [ %i.sc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %.pn207.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.pn199838, %bb.ck ], [ %i.sn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.pn217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %i.xo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %lpad.loopexit.split-lp2100, %.loopexit.split-lp925.loopexit.split-lp ], [ %lpad.loopexit.split-lp2102, %.loopexit.split-lp930.loopexit.split-lp ], [ %.pn191853, %bb.ee ], [ %i.abl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %.pn189856, %bb.ek ], [ %i.abv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.pn871, %bb.ey ], [ %i.adf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.pn185.pn.pn859, %bb.et ], [ %.pn185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit1563, %.loopexit.loopexit ]
  %.not.i.i.i440 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i.i.i440, label %_ZNSt6vectorIiSaIiEED2Ev.exit441, label %bb.gg

bb.gg:                                            ; preds = %.body
  %i.ajt = ptrtoint ptr %.sroa.22.6 to i64
  %i.aju = ptrtoint ptr %.sroa.0.6 to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6, i64 noundef %i.ajv) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit441

_ZNSt6vectorIiSaIiEED2Ev.exit441:                 ; preds = %.body, %bb.gg
  %i.ajw = load ptr, ptr %2, align 8, !tbaa !164  ; 2 uses
  %i.ajx = icmp eq ptr %i.ajw, %i.f
  br i1 %i.ajx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit441
  %i.ajy = load i64, ptr %i.f, align 8, !tbaa !165
  %i.ajz = add i64 %i.ajy, 1
  call void @_ZdlPvm(ptr noundef %i.ajw, i64 noundef %i.ajz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit441, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.aka = load ptr, ptr %1, align 8, !tbaa !164  ; 2 uses
  %i.akb = icmp eq ptr %i.aka, %i.c
  br i1 %i.akb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444
  %i.akc = load i64, ptr %i.c, align 8, !tbaa !165
  %i.akd = add i64 %i.akc, 1
  call void @_ZdlPvm(ptr noundef %i.aka, i64 noundef %i.akd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %.pn236.pn.pn.pn.pn.pn.pn

bb.gh:                                            ; preds = %bb.fm, %bb.ew, %bb.eq, %bb.ei, %bb.ec, %bb.da, %bb.ci, %bb.cd, %bb.ay, %bb.al, %bb.s, %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow8mustache26invalid_template_exceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow8mustache26invalid_template_exceptionE, i64 16), ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  %i.b = load ptr, ptr %1, align 8, !tbaa !164, !noalias !2439
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !166, !noalias !2439 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !160, !alias.scope !2440
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !166, !alias.scope !2440
  store i8 0, ptr %i.e, align 8, !tbaa !165, !alias.scope !2440
  %i.g = add i64 %i.d, 22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !166, !alias.scope !2440
  %i.i = add i64 %i.h, -4611686018427387882
  %i.j = icmp ult i64 %i.i, 22
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull @.str.376, i64 noundef 22)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !166, !alias.scope !2440
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !164, !alias.scope !2440 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !165, !alias.scope !2440
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #41
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #40
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_0
