Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gdb-jit?download=true
inline.NumInlined: 1377
inline.NumDeleted: 615
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal15GDBJITInterface16DebugInfoSection17WriteBodyInternalEPNS1_6WriterE:bb.a
  %i.agx = icmp samesign ugt i64 %indvars.iv, 99
  %i.agy = trunc nuw nsw i64 %indvars.iv to i32   ; 2 uses
  br i1 %i.agx, label %.lr.ph.i11.i, label %._crit_edge.i.i

.lr.ph.i11.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i, %.lr.ph.i11.i
  %.020.i.i = phi i32 [ %i.ahb, %.lr.ph.i11.i ], [ %i.agy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ahm, %.lr.ph.i11.i ], [ %.022.i.i1157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ] ; 3 uses
  %i.agz = urem i32 %.020.i.i, 100
  %i.aha = shl nuw nsw i32 %i.agz, 1
  %i.ahb = udiv i32 %.020.i.i, 100                ; 2 uses
  %i.ahc = zext nneg i32 %i.aha to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ahc ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 1
  %i.ahf = load i8, ptr %i.ahe, align 1, !noalias !53
  %i.ahg = zext i32 %.01819.i.i to i64
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.ahg
  store i8 %i.ahf, ptr %i.ahh, align 1
  %i.ahi = load i8, ptr %i.ahd, align 2, !noalias !53
  %i.ahj = add i32 %.01819.i.i, -1
  %i.ahk = zext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.ahk
  store i8 %i.ahi, ptr %i.ahl, align 1
  %i.ahm = add i32 %.01819.i.i, -2
  %i.ahn = icmp samesign ugt i32 %.020.i.i, 9999
  br i1 %i.ahn, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.agy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ahb, %.lr.ph.i11.i ] ; 3 uses
  %i.aho = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aho, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.ahp = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ahq = zext nneg i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ahq ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1
  %i.aht = load i8, ptr %i.ahs, align 1, !noalias !53
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agw, i64 1
  store i8 %i.aht, ptr %i.ahu, align 1
  %i.ahv = load i8, ptr %i.ahr, align 2, !noalias !53
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.ahw = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ahx = or disjoint i8 %i.ahw, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.u, %bb.v
  %storemerge.i.i = phi i8 [ %i.ahx, %bb.v ], [ %i.ahv, %bb.u ]
  store i8 %storemerge.i.i, ptr %i.agw, align 1
  %i.ahy = load ptr, ptr %4, align 8
  %i.ahz = load i64, ptr %i.a, align 8            ; 2 uses
  %i.aia = add i64 %i.ahz, 8                      ; 2 uses
  %i.aib = load i64, ptr %i.d, align 8            ; 2 uses
  %i.aic = icmp ult i64 %i.aib, %i.aia
  br i1 %i.aic, label %.lr.ph.i.i296, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i293

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i293: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %.pre2.i295 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIPKcEEvRKT_.exit

.lr.ph.i.i296:                                    ; preds = %_ZNSt7__cxx119to_stringEi.exit, %.lr.ph.i.i296
  %i.aid = phi i64 [ %i.aie, %.lr.ph.i.i296 ], [ %i.aib, %_ZNSt7__cxx119to_stringEi.exit ]
  %i.aie = shl i64 %i.aid, 1                      ; 4 uses
  %i.aif = icmp ult i64 %i.aie, %i.aia
  br i1 %i.aif, label %.lr.ph.i.i296, label %_ZN2v84base7ReallocEPvm.exit.i.i297, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i297:              ; preds = %.lr.ph.i.i296
  store i64 %i.aie, ptr %i.d, align 8
  %i.aig = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.aih = call noundef ptr @realloc(ptr noundef %i.aig, i64 noundef %i.aie) #24 ; 2 uses
  store ptr %i.aih, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i298 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIPKcEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteIPKcEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i293, %_ZN2v84base7ReallocEPvm.exit.i.i297
  %i.aii = phi ptr [ %.pre2.i295, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i293 ], [ %i.aih, %_ZN2v84base7ReallocEPvm.exit.i.i297 ]
  %i.aij = phi i64 [ %i.ahz, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i293 ], [ %.pre.i298, %_ZN2v84base7ReallocEPvm.exit.i.i297 ]
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aij
  store ptr %i.ahy, ptr %i.aik, align 1
  %i.ail = load i64, ptr %i.a, align 8
  %i.aim = add i64 %i.ail, 8                      ; 2 uses
  store i64 %i.aim, ptr %i.a, align 8
  %i.ain = load ptr, ptr %4, align 8              ; 2 uses
  %i.aio = icmp eq ptr %i.ain, %i.pu
  br i1 %i.aio, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIPKcEEvRKT_.exit
  %i.aip = load i64, ptr %i.pu, align 8
  %i.aiq = add i64 %i.aip, 1
  call void @_ZdlPvm(ptr noundef %i.ain, i64 noundef %i.aiq) #29
  %.pre778 = load i64, ptr %i.a, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIPKcEEvRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.air = phi i64 [ %.pre778, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aim, %_ZN2v88internal15GDBJITInterface6Writer5WriteIPKcEEvRKT_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ais = add i64 %i.air, 4                      ; 2 uses
  %i.ait = load i64, ptr %i.d, align 8            ; 2 uses
  %i.aiu = icmp ult i64 %i.ait, %i.ais
  br i1 %i.aiu, label %.lr.ph.i.i302, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i299

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre2.i301 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIjEEvRKT_.exit305

.lr.ph.i.i302:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i302
  %i.aiv = phi i64 [ %i.aiw, %.lr.ph.i.i302 ], [ %i.ait, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aiw = shl i64 %i.aiv, 1                      ; 4 uses
  %i.aix = icmp ult i64 %i.aiw, %i.ais
  br i1 %i.aix, label %.lr.ph.i.i302, label %_ZN2v84base7ReallocEPvm.exit.i.i303, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i303:              ; preds = %.lr.ph.i.i302
  store i64 %i.aiw, ptr %i.d, align 8
  %i.aiy = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.aiz = call noundef ptr @realloc(ptr noundef %i.aiy, i64 noundef %i.aiw) #24 ; 2 uses
  store ptr %i.aiz, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i304 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIjEEvRKT_.exit305

_ZN2v88internal15GDBJITInterface6Writer5WriteIjEEvRKT_.exit305: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i299, %_ZN2v84base7ReallocEPvm.exit.i.i303
  %i.aja = phi ptr [ %.pre2.i301, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i299 ], [ %i.aiz, %_ZN2v84base7ReallocEPvm.exit.i.i303 ]
  %i.ajb = phi i64 [ %i.air, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i299 ], [ %.pre.i304, %_ZN2v84base7ReallocEPvm.exit.i.i303 ]
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 %i.ajb
  store i32 %i.fs, ptr %i.ajc, align 1
  %i.ajd = load i64, ptr %i.a, align 8            ; 2 uses
  %i.aje = add i64 %i.ajd, 8                      ; 5 uses
  store i64 %i.aje, ptr %i.a, align 8
  %i.ajf = load i64, ptr %i.d, align 8            ; 3 uses
  %i.ajg = icmp ult i64 %i.ajf, %i.aje
  br i1 %i.ajg, label %.lr.ph.i.i.i311, label %_ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit.i.i306

.lr.ph.i.i.i311:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIjEEvRKT_.exit305, %.lr.ph.i.i.i311
  %i.ajh = phi i64 [ %i.aji, %.lr.ph.i.i.i311 ], [ %i.ajf, %_ZN2v88internal15GDBJITInterface6Writer5WriteIjEEvRKT_.exit305 ]
  %i.aji = shl i64 %i.ajh, 1                      ; 4 uses
  %i.ajj = icmp ult i64 %i.aji, %i.aje
  br i1 %i.ajj, label %.lr.ph.i.i.i311, label %_ZN2v84base7ReallocEPvm.exit.i.i.i312, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i312:            ; preds = %.lr.ph.i.i.i311
  store i64 %i.aji, ptr %i.d, align 8
  %i.ajk = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ajl = call noundef ptr @realloc(ptr noundef %i.ajk, i64 noundef %i.aji) #24
  store ptr %i.ajl, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i313 = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit.i.i306

_ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit.i.i306: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i312, %_ZN2v88internal15GDBJITInterface6Writer5WriteIjEEvRKT_.exit305
  %i.ajm = phi i64 [ %i.ajf, %_ZN2v88internal15GDBJITInterface6Writer5WriteIjEEvRKT_.exit305 ], [ %.pre.i.i313, %_ZN2v84base7ReallocEPvm.exit.i.i.i312 ] ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, %i.aje
  br i1 %i.ajn, label %.lr.ph.i.i.i.i309, label %_ZN2v88internal15GDBJITInterface6Writer14CreateSlotHereIjEENS2_4SlotIT_EEv.exit314

.lr.ph.i.i.i.i309:                                ; preds = %_ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit.i.i306, %.lr.ph.i.i.i.i309
  %i.ajo = phi i64 [ %i.ajp, %.lr.ph.i.i.i.i309 ], [ %i.ajm, %_ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit.i.i306 ]
  %i.ajp = shl i64 %i.ajo, 1                      ; 4 uses
  %i.ajq = icmp ult i64 %i.ajp, %i.aje
  br i1 %i.ajq, label %.lr.ph.i.i.i.i309, label %_ZN2v84base7ReallocEPvm.exit.i.i.i.i310, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i.i310:          ; preds = %.lr.ph.i.i.i.i309
  store i64 %i.ajp, ptr %i.d, align 8
  %i.ajr = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ajs = call noundef ptr @realloc(ptr noundef %i.ajr, i64 noundef %i.ajp) #24
  store ptr %i.ajs, ptr %.phi.trans.insert.i.i, align 8
  %.pre779 = load i64, ptr %i.d, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer14CreateSlotHereIjEENS2_4SlotIT_EEv.exit314

_ZN2v88internal15GDBJITInterface6Writer14CreateSlotHereIjEENS2_4SlotIT_EEv.exit314: ; preds = %_ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit.i.i306, %_ZN2v84base7ReallocEPvm.exit.i.i.i.i310
  %i.ajt = phi i64 [ %i.ajm, %_ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit.i.i306 ], [ %.pre779, %_ZN2v84base7ReallocEPvm.exit.i.i.i.i310 ] ; 2 uses
  %i.aju = load i64, ptr %i.a, align 8            ; 3 uses
  %i.ajv = add i64 %i.aju, 1                      ; 2 uses
  %i.ajw = icmp ult i64 %i.ajt, %i.ajv
  br i1 %i.ajw, label %.lr.ph.i.i318, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i315

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i315: ; preds = %_ZN2v88internal15GDBJITInterface6Writer14CreateSlotHereIjEENS2_4SlotIT_EEv.exit314
  %.pre2.i317 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit321

.lr.ph.i.i318:                                    ; preds = %_ZN2v88internal15GDBJITInterface6Writer14CreateSlotHereIjEENS2_4SlotIT_EEv.exit314, %.lr.ph.i.i318
  %i.ajx = phi i64 [ %i.ajy, %.lr.ph.i.i318 ], [ %i.ajt, %_ZN2v88internal15GDBJITInterface6Writer14CreateSlotHereIjEENS2_4SlotIT_EEv.exit314 ]
  %i.ajy = shl i64 %i.ajx, 1                      ; 4 uses
  %i.ajz = icmp ult i64 %i.ajy, %i.ajv
  br i1 %i.ajz, label %.lr.ph.i.i318, label %_ZN2v84base7ReallocEPvm.exit.i.i319, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i319:              ; preds = %.lr.ph.i.i318
  store i64 %i.ajy, ptr %i.d, align 8
  %i.aka = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.akb = call noundef ptr @realloc(ptr noundef %i.aka, i64 noundef %i.ajy) #24 ; 2 uses
  store ptr %i.akb, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i320 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit321

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit321: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i315, %_ZN2v84base7ReallocEPvm.exit.i.i319
  %i.akc = phi ptr [ %.pre2.i317, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i315 ], [ %i.akb, %_ZN2v84base7ReallocEPvm.exit.i.i319 ]
  %i.akd = phi i64 [ %i.aju, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i315 ], [ %.pre.i320, %_ZN2v84base7ReallocEPvm.exit.i.i319 ]
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.akd
  store i8 -111, ptr %i.ake, align 1
  %i.akf = load i64, ptr %i.a, align 8
  %i.akg = add i64 %i.akf, 1                      ; 2 uses
  store i64 %i.akg, ptr %i.a, align 8
  %i.akh = xor i64 %indvars.iv, -1
  %i.aki = add nsw i64 %i.pl, %i.akh
  %i.akj = shl nsw i64 %i.aki, 3
  %i.akk = add nsw i64 %i.akj, 16
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit321
  %i.akl = phi i64 [ %i.akg, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit321 ], [ %i.alb, %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i ] ; 2 uses
  %.01014.i = phi i64 [ %i.akk, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit321 ], [ %7, %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i ] ; 2 uses
  %i.akm = trunc i64 %.01014.i to i8
  %i.akn = and i8 %i.akm, 127                     ; 2 uses
  %6 = icmp samesign ugt i8 %i.akn, 63            ; 2 uses
  %7 = ashr i64 %.01014.i, 7                      ; 3 uses
  %8 = icmp ne i64 %7, 0
  %or.cond.i = select i1 %8, i1 true, i1 %6
  %or.cond.not.i = xor i1 %or.cond.i, true
  %i.ako = icmp eq i64 %7, -1
  %or.cond3.i = select i1 %i.ako, i1 %6, i1 false
  %or.cond11.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond3.i ; 2 uses
  %masksel.i324 = select i1 %or.cond11.i, i8 0, i8 -128
  %spec.select.i = or disjoint i8 %masksel.i324, %i.akn
  %i.akp = add i64 %i.akl, 1                      ; 2 uses
  %i.akq = load i64, ptr %i.d, align 8            ; 2 uses
  %i.akr = icmp ult i64 %i.akq, %i.akp
  br i1 %i.akr, label %.lr.ph.i.i.i327, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i325

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i325: ; preds = %bb.w
  %.pre2.i.i326 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

.lr.ph.i.i.i327:                                  ; preds = %bb.w, %.lr.ph.i.i.i327
  %i.aks = phi i64 [ %i.akt, %.lr.ph.i.i.i327 ], [ %i.akq, %bb.w ]
  %i.akt = shl i64 %i.aks, 1                      ; 4 uses
  %i.aku = icmp ult i64 %i.akt, %i.akp
  br i1 %i.aku, label %.lr.ph.i.i.i327, label %_ZN2v84base7ReallocEPvm.exit.i.i.i328, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i328:            ; preds = %.lr.ph.i.i.i327
  store i64 %i.akt, ptr %i.d, align 8
  %i.akv = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.akw = call noundef ptr @realloc(ptr noundef %i.akv, i64 noundef %i.akt) #24 ; 2 uses
  store ptr %i.akw, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i329 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i328, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i325
  %i.akx = phi ptr [ %.pre2.i.i326, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i325 ], [ %i.akw, %_ZN2v84base7ReallocEPvm.exit.i.i.i328 ]
  %i.aky = phi i64 [ %i.akl, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i325 ], [ %.pre.i.i329, %_ZN2v84base7ReallocEPvm.exit.i.i.i328 ]
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.aky
  store i8 %spec.select.i, ptr %i.akz, align 1
  %i.ala = load i64, ptr %i.a, align 8
  %i.alb = add i64 %i.ala, 1                      ; 3 uses
  store i64 %i.alb, ptr %i.a, align 8
  br i1 %or.cond11.i, label %_ZN2v88internal15GDBJITInterface6Writer12WriteSLEB128El.exit, label %bb.w, !llvm.loop !9

_ZN2v88internal15GDBJITInterface6Writer12WriteSLEB128El.exit: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i
  %i.alc = sub i64 %i.alb, %i.aju
  %i.ald = trunc i64 %i.alc to i32
  %i.ale = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.alf = getelementptr i8, ptr %i.ale, i64 %i.ajd
  %i.alg = getelementptr i8, ptr %i.alf, i64 4
  store i32 %i.ald, ptr %i.alg, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.pl
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !48

bb.x:                                             ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i262.9
  %i.alh = zext nneg i32 %i.aci to i64
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i338, %bb.x
  %i.ali = phi i64 [ %i.ach, %bb.x ], [ %i.aly, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i338 ] ; 2 uses
  %.0.i332 = phi i64 [ %i.alh, %bb.x ], [ %i.all, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i338 ] ; 2 uses
  %i.alj = trunc i64 %.0.i332 to i8
  %i.alk = and i8 %i.alj, 127
  %i.all = lshr i64 %.0.i332, 7                   ; 2 uses
  %.not.i333 = icmp eq i64 %i.all, 0              ; 2 uses
  %masksel.i334 = select i1 %.not.i333, i8 0, i8 -128
  %storemerge.i335 = or disjoint i8 %masksel.i334, %i.alk
  %i.alm = add i64 %i.ali, 1                      ; 2 uses
  %i.aln = load i64, ptr %i.d, align 8            ; 2 uses
  %i.alo = icmp ult i64 %i.aln, %i.alm
  br i1 %i.alo, label %.lr.ph.i.i.i339, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i336

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i336: ; preds = %bb.y
  %.pre2.i.i337 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i338

.lr.ph.i.i.i339:                                  ; preds = %bb.y, %.lr.ph.i.i.i339
  %i.alp = phi i64 [ %i.alq, %.lr.ph.i.i.i339 ], [ %i.aln, %bb.y ]
  %i.alq = shl i64 %i.alp, 1                      ; 4 uses
  %i.alr = icmp ult i64 %i.alq, %i.alm
  br i1 %i.alr, label %.lr.ph.i.i.i339, label %_ZN2v84base7ReallocEPvm.exit.i.i.i340, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i340:            ; preds = %.lr.ph.i.i.i339
  store i64 %i.alq, ptr %i.d, align 8
  %i.als = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.alt = call noundef ptr @realloc(ptr noundef %i.als, i64 noundef %i.alq) #24 ; 2 uses
  store ptr %i.alt, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i341 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i338

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i338: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i340, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i336
  %i.alu = phi ptr [ %.pre2.i.i337, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i336 ], [ %i.alt, %_ZN2v84base7ReallocEPvm.exit.i.i.i340 ]
  %i.alv = phi i64 [ %i.ali, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i336 ], [ %.pre.i.i341, %_ZN2v84base7ReallocEPvm.exit.i.i.i340 ]
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alu, i64 %i.alv
  store i8 %storemerge.i335, ptr %i.alw, align 1
  %i.alx = load i64, ptr %i.a, align 8            ; 2 uses
  %i.aly = add i64 %i.alx, 1                      ; 3 uses
  store i64 %i.aly, ptr %i.a, align 8
  br i1 %.not.i333, label %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit342.preheader, label %bb.y, !llvm.loop !8

_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit342.preheader: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i338
  %i.alz = add i64 %i.alx, 2                      ; 2 uses
  %i.ama = load i64, ptr %i.d, align 8            ; 2 uses
  %i.amb = icmp ult i64 %i.ama, %i.alz
  br i1 %i.amb, label %.lr.ph.i.i.i350, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346: ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit342.preheader
  %.pre2.i.i347 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348

.lr.ph.i.i.i350:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit342.preheader, %.lr.ph.i.i.i350
  %i.amc = phi i64 [ %i.amd, %.lr.ph.i.i.i350 ], [ %i.ama, %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit342.preheader ]
  %i.amd = shl i64 %i.amc, 1                      ; 4 uses
  %i.ame = icmp ult i64 %i.amd, %i.alz
  br i1 %i.ame, label %.lr.ph.i.i.i350, label %_ZN2v84base7ReallocEPvm.exit.i.i.i351, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i351:            ; preds = %.lr.ph.i.i.i350
  store i64 %i.amd, ptr %i.d, align 8
  %i.amf = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.amg = call noundef ptr @realloc(ptr noundef %i.amf, i64 noundef %i.amd) #24 ; 2 uses
  store ptr %i.amg, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i352 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348

_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i351, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346
  %i.amh = phi ptr [ %.pre2.i.i347, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346 ], [ %i.amg, %_ZN2v84base7ReallocEPvm.exit.i.i.i351 ]
  %i.ami = phi i64 [ %i.aly, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346 ], [ %.pre.i.i352, %_ZN2v84base7ReallocEPvm.exit.i.i.i351 ]
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.ami
  store i8 46, ptr %i.amj, align 1
  %i.amk = load i64, ptr %i.a, align 8            ; 2 uses
  %i.aml = add i64 %i.amk, 1                      ; 2 uses
  store i64 %i.aml, ptr %i.a, align 8
  %i.amm = add i64 %i.amk, 2                      ; 2 uses
  %i.amn = load i64, ptr %i.d, align 8            ; 2 uses
  %i.amo = icmp ult i64 %i.amn, %i.amm
  br i1 %i.amo, label %.lr.ph.i.i.i350.1, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.1

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.1: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348
  %.pre2.i.i347.1 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.1

.lr.ph.i.i.i350.1:                                ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348, %.lr.ph.i.i.i350.1
  %i.amp = phi i64 [ %i.amq, %.lr.ph.i.i.i350.1 ], [ %i.amn, %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348 ]
  %i.amq = shl i64 %i.amp, 1                      ; 4 uses
  %i.amr = icmp ult i64 %i.amq, %i.amm
  br i1 %i.amr, label %.lr.ph.i.i.i350.1, label %_ZN2v84base7ReallocEPvm.exit.i.i.i351.1, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i351.1:          ; preds = %.lr.ph.i.i.i350.1
  store i64 %i.amq, ptr %i.d, align 8
  %i.ams = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.amt = call noundef ptr @realloc(ptr noundef %i.ams, i64 noundef %i.amq) #24 ; 2 uses
  store ptr %i.amt, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i352.1 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.1

_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.1: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i351.1, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.1
  %i.amu = phi ptr [ %.pre2.i.i347.1, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.1 ], [ %i.amt, %_ZN2v84base7ReallocEPvm.exit.i.i.i351.1 ]
  %i.amv = phi i64 [ %i.aml, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.1 ], [ %.pre.i.i352.1, %_ZN2v84base7ReallocEPvm.exit.i.i.i351.1 ]
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.amv
  store i8 101, ptr %i.amw, align 1
  %i.amx = load i64, ptr %i.a, align 8            ; 2 uses
  %i.amy = add i64 %i.amx, 1                      ; 2 uses
  store i64 %i.amy, ptr %i.a, align 8
  %i.amz = add i64 %i.amx, 2                      ; 2 uses
  %i.ana = load i64, ptr %i.d, align 8            ; 2 uses
  %i.anb = icmp ult i64 %i.ana, %i.amz
  br i1 %i.anb, label %.lr.ph.i.i.i350.2, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.2

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.2: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.1
  %.pre2.i.i347.2 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.2

.lr.ph.i.i.i350.2:                                ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.1, %.lr.ph.i.i.i350.2
  %i.anc = phi i64 [ %i.and, %.lr.ph.i.i.i350.2 ], [ %i.ana, %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.1 ]
  %i.and = shl i64 %i.anc, 1                      ; 4 uses
  %i.ane = icmp ult i64 %i.and, %i.amz
  br i1 %i.ane, label %.lr.ph.i.i.i350.2, label %_ZN2v84base7ReallocEPvm.exit.i.i.i351.2, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i351.2:          ; preds = %.lr.ph.i.i.i350.2
  store i64 %i.and, ptr %i.d, align 8
  %i.anf = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ang = call noundef ptr @realloc(ptr noundef %i.anf, i64 noundef %i.and) #24 ; 2 uses
  store ptr %i.ang, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i352.2 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.2

_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.2: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i351.2, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.2
  %i.anh = phi ptr [ %.pre2.i.i347.2, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.2 ], [ %i.ang, %_ZN2v84base7ReallocEPvm.exit.i.i.i351.2 ]
  %i.ani = phi i64 [ %i.amy, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.2 ], [ %.pre.i.i352.2, %_ZN2v84base7ReallocEPvm.exit.i.i.i351.2 ]
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anh, i64 %i.ani
  store i8 120, ptr %i.anj, align 1
  %i.ank = load i64, ptr %i.a, align 8            ; 2 uses
  %i.anl = add i64 %i.ank, 1                      ; 2 uses
  store i64 %i.anl, ptr %i.a, align 8
  %i.anm = add i64 %i.ank, 2                      ; 2 uses
  %i.ann = load i64, ptr %i.d, align 8            ; 2 uses
  %i.ano = icmp ult i64 %i.ann, %i.anm
  br i1 %i.ano, label %.lr.ph.i.i.i350.3, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.3

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i346.3: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.2
  %.pre2.i.i347.3 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.3

.lr.ph.i.i.i350.3:                                ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.2, %.lr.ph.i.i.i350.3
  %i.anp = phi i64 [ %i.anq, %.lr.ph.i.i.i350.3 ], [ %i.ann, %_ZN2v88internal15GDBJITInterface6Writer5WriteIcEEvRKT_.exit.i348.2 ]
  %i.anq = shl i64 %i.anp, 1                      ; 4 uses
  %i.anr = icmp ult i64 %i.anq, %i.anm
  br i1 %i.anr, label %.lr.ph.i.i.i350.3, label %_ZN2v84base7ReallocEPvm.exit.i.i.i351.3, !llvm.loop !0
end_hunk_0
