Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow8mustache10template_t5parseEv:._crit_edge.i.i
          cleanup                                 ; 2 uses
  %i.agq = load ptr, ptr %37, align 8, !tbaa !164 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.ags = icmp eq ptr %i.agq, %i.agr
  br i1 %i.ags, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %bb.gg
  %i.agt = load i64, ptr %i.agr, align 8, !tbaa !165
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.agq, i64 noundef %i.agu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %bb.gf
  %.pn236 = phi { ptr, i32 } [ %i.ago, %bb.gf ], [ %i.agp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %i.agp, %bb.gg ] ; 2 uses
  %.193 = phi i1 [ true, %bb.gf ], [ %.092, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %.092, %bb.gg ] ; 2 uses
  %i.agv = load ptr, ptr %42, align 8, !tbaa !164 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.agx = icmp eq ptr %i.agv, %i.agw
  br i1 %i.agx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
  %i.agy = load i64, ptr %i.agw, align 8, !tbaa !165
  %i.agz = add i64 %i.agy, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.ge
  %.pn236.pn = phi { ptr, i32 } [ %i.agn, %bb.ge ], [ %.pn236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %.pn236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ge ], [ %.193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %.193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #40
  %i.aha = load ptr, ptr %38, align 8, !tbaa !164 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ahc = icmp eq ptr %i.aha, %i.ahb
  br i1 %i.ahc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %i.ahd = load i64, ptr %i.ahb, align 8, !tbaa !165
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahe) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424, %bb.gd
  %.pn236.pn.pn = phi { ptr, i32 } [ %i.agm, %bb.gd ], [ %.pn236.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.pn236.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 4 uses
  %.3 = phi i1 [ true, %bb.gd ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ] ; 2 uses
  %i.ahf = load ptr, ptr %39, align 8, !tbaa !164 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ahh = icmp eq ptr %i.ahf, %i.ahg
  br i1 %i.ahh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
  %i.ahi = load i64, ptr %i.ahg, align 8, !tbaa !165
  %i.ahj = add i64 %i.ahi, 1
  call void @_ZdlPvm(ptr noundef %i.ahf, i64 noundef %i.ahj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427
  %i.ahk = load ptr, ptr %40, align 8, !tbaa !164 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.ahm = icmp eq ptr %i.ahk, %i.ahl
  br i1 %i.ahm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread: ; preds = %bb.fw
  %i.ahn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aho = load ptr, ptr %40, align 8, !tbaa !164 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.ahq = icmp eq ptr %i.aho, %i.ahp
  br i1 %i.ahq, label %.sink.split2021, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread
  %i.ahr = load i64, ptr %i.ahp, align 8, !tbaa !165
  %i.ahs = add i64 %i.ahr, 1
  call void @_ZdlPvm(ptr noundef %i.aho, i64 noundef %i.ahs) #41
  br label %.sink.split2021

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.aht = load i64, ptr %i.ahl, align 8, !tbaa !165
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahk, i64 noundef %i.ahu) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  br i1 %.3, label %bb.gh, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  br i1 %.3, label %bb.gh, label %.body

.sink.split2021:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread
  %.pn236.pn.pn.pn.pn875.ph = phi { ptr, i32 } [ %i.ahn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430.thread ], [ %i.agl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432.thread ], [ %i.ahn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40
  br label %bb.gh

bb.gh:                                            ; preds = %.sink.split2021, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %.pn236.pn.pn.pn.pn875 = phi { ptr, i32 } [ %.pn236.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.pn236.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.pn236.pn.pn.pn.pn875.ph, %.sink.split2021 ]
  call void @__cxa_free_exception(ptr %i.afw) #40
  br label %.body

_ZNK4crow8mustache6Action16missing_end_pairEv.exit.thread: ; preds = %.lr.ph1308, %.lr.ph1308, %.lr.ph1308, %.lr.ph1308, %.lr.ph1308, %_ZNK4crow8mustache6Action16missing_end_pairEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1308, !llvm.loop !2411

._crit_edge1320:                                  ; preds = %.loopexit2320, %.preheader, %._crit_edge
  %.not.i.i.i433 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i433, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.gi

bb.gi:                                            ; preds = %._crit_edge1320
  %i.ahv = ptrtoint ptr %.sroa.22.0.lcssa to i64
  %i.ahw = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ahx = sub i64 %i.ahv, %i.ahw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.ahx) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge1320, %bb.gi
  %i.ahy = load ptr, ptr %2, align 8, !tbaa !164  ; 2 uses
  %i.ahz = icmp eq ptr %i.ahy, %i.f
  br i1 %i.ahz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aia = load i64, ptr %i.f, align 8, !tbaa !165
  %i.aib = add i64 %i.aia, 1
  call void @_ZdlPvm(ptr noundef %i.ahy, i64 noundef %i.aib) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.aic = load ptr, ptr %1, align 8, !tbaa !164  ; 2 uses
  %i.aid = icmp eq ptr %i.aic, %i.c
  br i1 %i.aid, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.aie = load i64, ptr %i.c, align 8, !tbaa !165
  %i.aif = add i64 %i.aie, 1
  call void @_ZdlPvm(ptr noundef %i.aic, i64 noundef %i.aif) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void

bb.gj:                                            ; preds = %.lr.ph1319, %.loopexit2320
  %indvars.iv1529 = phi i64 [ %i.afo, %.lr.ph1319 ], [ %indvars.iv.next1530, %.loopexit2320 ] ; 6 uses
  %i.aig = getelementptr inbounds nuw [20 x i8], ptr %i.afg, i64 %indvars.iv1529 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !1058 ; 2 uses
  %.off = add i32 %i.aii, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.loopexit2320, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aij = load ptr, ptr %0, align 8, !tbaa !1002
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %indvars.iv1529 ; 4 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 8 ; 2 uses
  %.not915 = icmp eq i64 %indvars.iv1529, %i.afo
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aik, i64 4 ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !2417 ; 3 uses
  %i.aio = load i32, ptr %i.aik, align 4, !tbaa !2416 ; 2 uses
  %i.aip = sext i32 %i.ain to i64                 ; 2 uses
  %i.aiq = sext i32 %i.aio to i64
  %.not231.not.not2314 = icmp sgt i32 %i.ain, %i.aio
  br i1 %.not231.not.not2314, label %.lr.ph2317.preheader, label %._crit_edge2318

.lr.ph2317.preheader:                             ; preds = %bb.gk
  %i.air = load ptr, ptr %i.i, align 8, !tbaa !164
  br label %.lr.ph2317

bb.gl:                                            ; preds = %.lr.ph2317
  %.not231.not.not = icmp sgt i64 %indvars.iv.next1521, %i.aiq
  br i1 %.not231.not.not, label %.lr.ph2317, label %._crit_edge2318, !llvm.loop !2412

.lr.ph2317:                                       ; preds = %.lr.ph2317.preheader, %bb.gl
  %indvars.iv15202315 = phi i64 [ %indvars.iv.next1521, %bb.gl ], [ %i.aip, %.lr.ph2317.preheader ] ; 2 uses
  %indvars.iv.next1521 = add nsw i64 %indvars.iv15202315, -1 ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 %indvars.iv.next1521
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !165
  switch i8 %i.ait, label %.loopexit2320 [
    i8 32, label %bb.gl
    i8 10, label %.thread886
  ]

._crit_edge2318:                                  ; preds = %bb.gl, %bb.gk
  %indvars.iv1520.lcssa = phi i64 [ %i.aip, %bb.gk ], [ %indvars.iv.next1521, %bb.gl ]
  %.not914 = icmp eq i64 %indvars.iv1529, 0
  br i1 %.not914, label %.thread886, label %.loopexit2320

.thread886:                                       ; preds = %.lr.ph2317, %._crit_edge2318
  %indvars.iv15202026 = phi i64 [ %indvars.iv1520.lcssa, %._crit_edge2318 ], [ %indvars.iv15202315, %.lr.ph2317 ]
  %.089.in1323 = trunc i64 %indvars.iv15202026 to i32 ; 2 uses
  %i.aiu = load i32, ptr %i.ail, align 4, !tbaa !2416 ; 4 uses
  %i.aiv = load i64, ptr %i.o, align 8, !tbaa !166 ; 2 uses
  %i.aiw = trunc i64 %i.aiv to i32                ; 3 uses
  %i.aix = icmp slt i32 %i.aiu, %i.aiw
  br i1 %i.aix, label %.lr.ph1312, label %.critedge

.lr.ph1312:                                       ; preds = %.thread886
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aik, i64 12
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !2417
  %i.aja = sext i32 %i.aiu to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.aiu, i32 %i.aiz) ; 2 uses
  %wide.trip.count1526 = sext i32 %smax to i64
  %sext = shl i64 %i.aiv, 32
  %wide.trip.count1528 = ashr exact i64 %sext, 32
  br label %bb.gm

bb.gm:                                            ; preds = %.lr.ph1312, %bb.go
  %indvars.iv1523 = phi i64 [ %i.aja, %.lr.ph1312 ], [ %indvars.iv.next1524, %bb.go ] ; 4 uses
  %exitcond1527.not = icmp eq i64 %indvars.iv1523, %wide.trip.count1526
  br i1 %exitcond1527.not, label %.critedge, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ajb = load ptr, ptr %i.i, align 8, !tbaa !164 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %indvars.iv1523
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !165 ; 2 uses
  %.not234 = icmp eq i8 %i.ajd, 32
  br i1 %.not234, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %indvars.iv.next1524 = add nsw i64 %indvars.iv1523, 1 ; 2 uses
  %exitcond1528.not = icmp eq i64 %indvars.iv.next1524, %wide.trip.count1528
  br i1 %exitcond1528.not, label %.critedge, label %bb.gm, !llvm.loop !2413

.critedge:                                        ; preds = %bb.gm, %bb.go, %.thread886
  %.088.lcssa = phi i32 [ %i.aiu, %.thread886 ], [ %i.aiw, %bb.go ], [ %smax, %bb.gm ]
  br i1 %.not915, label %.thread890, label %.loopexit2320

bb.gp:                                            ; preds = %bb.gn
  %i.aje = trunc nsw i64 %indvars.iv1523 to i32   ; 3 uses
  switch i8 %i.ajd, label %.loopexit2320 [
    i8 10, label %.thread890
    i8 13, label %bb.gq
  ]

bb.gq:                                            ; preds = %bb.gp
  %i.ajf = add nsw i32 %i.aje, 1                  ; 2 uses
  %i.ajg = icmp slt i32 %i.ajf, %i.aiw
  br i1 %i.ajg, label %bb.gr, label %.loopexit2320

bb.gr:                                            ; preds = %bb.gq
  %i.ajh = sext i32 %i.ajf to i64
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !165
  %i.ajk = icmp eq i8 %i.ajj, 10
  br i1 %i.ajk, label %.thread890, label %.loopexit2320

.thread890:                                       ; preds = %bb.gp, %.critedge, %bb.gr
  %.0881012 = phi i32 [ %i.aje, %bb.gp ], [ %i.aje, %bb.gr ], [ %.088.lcssa, %.critedge ] ; 2 uses
  %.0889892 = phi i1 [ false, %bb.gp ], [ false, %bb.gr ], [ true, %.critedge ]
  %i.ajl = icmp eq i32 %i.aii, 6
  br i1 %i.ajl, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %.thread890
  %i.ajm = sub i32 %i.ain, %.089.in1323
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aig, i64 12
  store i32 %i.ajm, ptr %i.ajn, align 4, !tbaa !1057
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %.thread890
  store i32 %.089.in1323, ptr %i.aim, align 4, !tbaa !2417
  br i1 %.0889892, label %.loopexit2320, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ajo = sext i32 %.0881012 to i64
  %i.ajp = load ptr, ptr %i.i, align 8, !tbaa !164
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.ajo
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !165
  %i.ajs = icmp eq i8 %i.ajr, 10
  %.1.v = select i1 %i.ajs, i32 1, i32 2
  %.1 = add nsw i32 %.1.v, %.0881012
  store i32 %.1, ptr %i.ail, align 4, !tbaa !2416
  br label %.loopexit2320

.loopexit2320:                                    ; preds = %.lr.ph2317, %bb.gj, %bb.gp, %._crit_edge2318, %bb.gt, %bb.gu, %bb.gq, %bb.gr, %.critedge
  %indvars.iv.next1530 = add nsw i64 %indvars.iv1529, -1
  %i.ajt = icmp sgt i64 %indvars.iv1529, 0
  br i1 %i.ajt, label %bb.gj, label %._crit_edge1320, !llvm.loop !2414

.body:                                            ; preds = %.loopexit992, %.loopexit.split-lp993, %.loopexit932, %.loopexit.split-lp933, %.loopexit947, %.loopexit.split-lp948, %.loopexit952, %.loopexit.split-lp953, %.loopexit957, %.loopexit.split-lp958, %.loopexit962, %.loopexit.split-lp963, %.loopexit972, %.loopexit.split-lp973, %.loopexit967, %.loopexit.split-lp968, %.loopexit977, %.loopexit.split-lp978, %.loopexit987, %.loopexit.split-lp988, %.loopexit982, %.loopexit.split-lp983, %.loopexit, %.loopexit.split-lp, %.loopexit1002, %.loopexit.split-lp1003, %.loopexit997, %.loopexit.split-lp998, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430, %bb.gc, %bb.fu, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %bb.bl, %bb.bd, %bb.ec, %bb.eq, %bb.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %bb.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %.sroa.0.6 = phi ptr [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.sroa.0.0.lcssa, %bb.gh ], [ %.sroa.0.0.lcssa, %bb.gc ], [ %.sroa.0.0.lcssa, %.loopexit.split-lp998 ], [ %.sroa.0.0.lcssa, %.loopexit.split-lp1003 ], [ %.sroa.0.02306, %bb.r ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0.02306, %bb.x ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.0.02306, %.loopexit.split-lp933 ], [ %.sroa.0.02306, %.loopexit.split-lp ], [ %.sroa.0.02306, %.loopexit.split-lp983 ], [ %.sroa.0.02306, %bb.as ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.sroa.0.02306, %bb.bd ], [ %.sroa.0.7, %.loopexit.split-lp988 ], [ %.sroa.0.02306, %bb.bl ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.sroa.0.02306, %.loopexit.split-lp978 ], [ %.sroa.0.02306, %.loopexit.split-lp968 ], [ %.sroa.0.8, %.loopexit.split-lp973 ], [ %.sroa.0.02306, %.loopexit.split-lp963 ], [ %.sroa.0.02306, %bb.co ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %.sroa.0.02306, %.loopexit.split-lp958 ], [ %.sroa.0.02306, %bb.ct ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.sroa.0.02306, %.loopexit.split-lp953 ], [ %.sroa.0.02306, %.loopexit.split-lp948 ], [ %.sroa.0.02306, %bb.ec ], [ %.sroa.0.02306, %bb.eq ], [ %.sroa.0.02306, %bb.es ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %.sroa.0.02306, %bb.ey ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.sroa.0.02306, %bb.fm ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.sroa.0.02306, %bb.fh ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.sroa.0.02306, %bb.do ], [ %.sroa.0.02306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.sroa.0.0.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.sroa.0.02306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.sroa.0.0.lcssa, %bb.fu ], [ %.sroa.0.0.lcssa, %.loopexit997 ], [ %.sroa.0.0.lcssa, %.loopexit1002 ], [ %.sroa.0.02306, %.loopexit ], [ %.sroa.0.02306, %.loopexit982 ], [ %.sroa.0.7, %.loopexit987 ], [ %.sroa.0.02306, %.loopexit977 ], [ %.sroa.0.02306, %.loopexit967 ], [ %.sroa.0.8, %.loopexit972 ], [ %.sroa.0.02306, %.loopexit962 ], [ %.sroa.0.02306, %.loopexit957 ], [ %.sroa.0.02306, %.loopexit952 ], [ %.sroa.0.02306, %.loopexit947 ], [ %.sroa.0.02306, %.loopexit932 ], [ %.sroa.0.02306, %.loopexit992 ], [ %.sroa.0.02306, %.loopexit.split-lp993 ] ; 3 uses
  %.sroa.22.6 = phi ptr [ %.sroa.22.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.sroa.22.0.lcssa, %bb.gh ], [ %.sroa.22.0.lcssa, %bb.gc ], [ %.sroa.22.0.lcssa, %.loopexit.split-lp998 ], [ %.sroa.22.0.lcssa, %.loopexit.split-lp1003 ], [ %.sroa.22.02308, %bb.r ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.22.02308, %bb.x ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.22.02308, %.loopexit.split-lp933 ], [ %.sroa.22.02308, %.loopexit.split-lp ], [ %.sroa.11.02307, %.loopexit.split-lp983 ], [ %.sroa.22.02308, %bb.as ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.sroa.22.02308, %bb.bd ], [ %.sroa.22.7, %.loopexit.split-lp988 ], [ %.sroa.22.02308, %bb.bl ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.sroa.22.02308, %.loopexit.split-lp978 ], [ %.sroa.11.02307, %.loopexit.split-lp968 ], [ %.sroa.22.8, %.loopexit.split-lp973 ], [ %.sroa.22.02308, %.loopexit.split-lp963 ], [ %.sroa.22.02308, %bb.co ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %.sroa.22.02308, %.loopexit.split-lp958 ], [ %.sroa.22.02308, %bb.ct ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.sroa.22.02308, %.loopexit.split-lp953 ], [ %.sroa.22.02308, %.loopexit.split-lp948 ], [ %.sroa.22.02308, %bb.ec ], [ %.sroa.22.02308, %bb.eq ], [ %.sroa.22.02308, %bb.es ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %.sroa.22.02308, %bb.ey ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.sroa.22.02308, %bb.fm ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.sroa.22.02308, %bb.fh ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.sroa.22.02308, %bb.do ], [ %.sroa.22.02308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.sroa.22.0.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.sroa.22.02308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.sroa.22.0.lcssa, %bb.fu ], [ %.sroa.22.0.lcssa, %.loopexit997 ], [ %.sroa.22.0.lcssa, %.loopexit1002 ], [ %.sroa.22.02308, %.loopexit ], [ %.sroa.11.02307, %.loopexit982 ], [ %.sroa.22.7, %.loopexit987 ], [ %.sroa.22.02308, %.loopexit977 ], [ %.sroa.11.02307, %.loopexit967 ], [ %.sroa.22.8, %.loopexit972 ], [ %.sroa.22.02308, %.loopexit962 ], [ %.sroa.22.02308, %.loopexit957 ], [ %.sroa.22.02308, %.loopexit952 ], [ %.sroa.22.02308, %.loopexit947 ], [ %.sroa.22.02308, %.loopexit932 ], [ %.sroa.22.02308, %.loopexit992 ], [ %.sroa.22.02308, %.loopexit.split-lp993 ]
  %.pn236.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn236.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %i.adg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.pn236.pn.pn.pn.pn875, %bb.gh ], [ %i.agk, %bb.gc ], [ %lpad.loopexit.split-lp1000, %.loopexit.split-lp998 ], [ %lpad.loopexit.split-lp1005, %.loopexit.split-lp1003 ], [ %.pn226801, %bb.r ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn224804, %bb.x ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp935, %.loopexit.split-lp933 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp985, %.loopexit.split-lp983 ], [ %.pn217.pn.pn807, %bb.as ], [ %.pn217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.iu, %bb.bd ], [ %lpad.loopexit.split-lp990, %.loopexit.split-lp988 ], [ %.pn207.pn.pn.pn.pn.pn.pn.pn821, %bb.bl ], [ %.pn207.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %lpad.loopexit.split-lp980, %.loopexit.split-lp978 ], [ %lpad.loopexit.split-lp970, %.loopexit.split-lp968 ], [ %lpad.loopexit.split-lp975, %.loopexit.split-lp973 ], [ %lpad.loopexit.split-lp965, %.loopexit.split-lp963 ], [ %.pn201835, %bb.co ], [ %i.sd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %lpad.loopexit.split-lp960, %.loopexit.split-lp958 ], [ %.pn199838, %bb.ct ], [ %i.so, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %lpad.loopexit.split-lp955, %.loopexit.split-lp953 ], [ %lpad.loopexit.split-lp950, %.loopexit.split-lp948 ], [ %lpad.phi941, %bb.ec ], [ %lpad.phi946, %bb.eq ], [ %.pn191853, %bb.es ], [ %i.abm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %.pn189856, %bb.ey ], [ %i.abw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.pn871, %bb.fm ], [ %i.adg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.pn185.pn.pn859, %bb.fh ], [ %.pn185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %.pn195.pn841, %bb.do ], [ %i.xp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.pn236.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.pn217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %.pn207.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %i.sd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %i.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %i.xp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %i.abm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %i.abw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.pn185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %i.aft, %bb.fu ], [ %lpad.loopexit999, %.loopexit997 ], [ %lpad.loopexit1004, %.loopexit1002 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit984, %.loopexit982 ], [ %lpad.loopexit989, %.loopexit987 ], [ %lpad.loopexit979, %.loopexit977 ], [ %lpad.loopexit969, %.loopexit967 ], [ %lpad.loopexit974, %.loopexit972 ], [ %lpad.loopexit964, %.loopexit962 ], [ %lpad.loopexit959, %.loopexit957 ], [ %lpad.loopexit954, %.loopexit952 ], [ %lpad.loopexit949, %.loopexit947 ], [ %lpad.loopexit934, %.loopexit932 ], [ %lpad.loopexit994, %.loopexit992 ], [ %lpad.loopexit.split-lp995, %.loopexit.split-lp993 ]
  %.not.i.i.i440 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i.i.i440, label %_ZNSt6vectorIiSaIiEED2Ev.exit441, label %.body.thread

.body.thread:                                     ; preds = %.body
  %i.aju = ptrtoint ptr %.sroa.22.6 to i64
  %i.ajv = ptrtoint ptr %.sroa.0.6 to i64
  %i.ajw = sub i64 %i.aju, %i.ajv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6, i64 noundef %i.ajw) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit441

_ZNSt6vectorIiSaIiEED2Ev.exit441:                 ; preds = %.body, %.body.thread
  %i.ajx = load ptr, ptr %2, align 8, !tbaa !164  ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, %i.f
  br i1 %i.ajy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit441
  %i.ajz = load i64, ptr %i.f, align 8, !tbaa !165
  %i.aka = add i64 %i.ajz, 1
  call void @_ZdlPvm(ptr noundef %i.ajx, i64 noundef %i.aka) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit441, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.akb = load ptr, ptr %1, align 8, !tbaa !164  ; 2 uses
  %i.akc = icmp eq ptr %i.akb, %i.c
  br i1 %i.akc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444
  %i.akd = load i64, ptr %i.c, align 8, !tbaa !165
  %i.ake = add i64 %i.akd, 1
  call void @_ZdlPvm(ptr noundef %i.akb, i64 noundef %i.ake) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %.pn236.pn.pn.pn.pn.pn.pn

bb.gv:                                            ; preds = %bb.gb, %bb.fk, %bb.fe, %bb.ew, %bb.ep, %bb.dm, %bb.cr, %bb.cm, %bb.bc, %bb.ap, %bb.v, %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow8mustache26invalid_template_exceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow8mustache26invalid_template_exceptionE, i64 16), ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  %i.b = load ptr, ptr %1, align 8, !tbaa !164, !noalias !2443
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !166, !noalias !2443 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !160, !alias.scope !2444
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !166, !alias.scope !2444
  store i8 0, ptr %i.e, align 8, !tbaa !165, !alias.scope !2444
  %i.g = add i64 %i.d, 22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !166, !alias.scope !2444
  %i.i = add i64 %i.h, -4611686018427387882
  %i.j = icmp ult i64 %i.i, 22
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull @.str.376, i64 noundef 22)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !166, !alias.scope !2444
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
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !164, !alias.scope !2444 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !165, !alias.scope !2444
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
define linkonce_odr dso_local void @_ZN4crow8mustache26invalid_template_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4crow8mustache26invalid_template_exceptionE, i64 16), ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !165
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #40
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !166  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !166  ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
end_hunk_0
