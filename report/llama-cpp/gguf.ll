Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/gguf?download=true
inline.NumInlined: 3401
inline.NumDeleted: 1047
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params:bb.a
  br i1 %or.cond.i581, label %.loopexit703, label %.preheader.i.i582

.preheader.i.i582:                                ; preds = %bb.ed, %bb.ef
  %.025.i.i583 = phi i64 [ %i.tg, %bb.ef ], [ 0, %bb.ed ] ; 7 uses
  %i.sx = icmp ult i64 %.025.i.i583, 8
  %.pre37.i.i584 = load i64, ptr %i.cy, align 8, !tbaa !68 ; 4 uses
  br i1 %i.sx, label %bb.ee, label %.thread.i.i585

bb.ee:                                            ; preds = %.preheader.i.i582
  %i.sy = add i64 %.pre37.i.i584, %.025.i.i583    ; 2 uses
  %i.sz = icmp ult i64 %i.sy, %.pre37.i.i584
  br i1 %i.sz, label %.thread.i.i585, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ta = sub nuw nsw i64 8, %.025.i.i583
  %i.tb = load i64, ptr %i.cz, align 8, !tbaa !81
  %.sroa.speculated.i.i591 = call i64 @llvm.umin.i64(i64 %i.ta, i64 %i.tb) ; 2 uses
  %i.tc = load ptr, ptr %0, align 8, !tbaa !65
  %i.td = load ptr, ptr %i.da, align 8, !tbaa !66
  %i.te = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.025.i.i583
  %i.tf = call noundef i64 %i.tc(ptr noundef %i.td, ptr noundef nonnull %i.te, i64 noundef %i.sy, i64 noundef %.sroa.speculated.i.i591), !inline_history !2 ; 2 uses
  %i.tg = add i64 %i.tf, %.025.i.i583             ; 2 uses
  %.not.i.i592 = icmp eq i64 %i.tf, %.sroa.speculated.i.i591
  br i1 %.not.i.i592, label %.preheader.i.i582, label %..thread_crit_edge.i.i593

..thread_crit_edge.i.i593:                        ; preds = %bb.ef
  %.pre.i.i594 = load i64, ptr %i.cy, align 8, !tbaa !68
  br label %.thread.i.i585

.thread.i.i585:                                   ; preds = %bb.ee, %.preheader.i.i582, %..thread_crit_edge.i.i593
  %i.th = phi i64 [ %.pre.i.i594, %..thread_crit_edge.i.i593 ], [ %.pre37.i.i584, %.preheader.i.i582 ], [ %.pre37.i.i584, %bb.ee ]
  %.227.i.i586 = phi i64 [ %i.tg, %..thread_crit_edge.i.i593 ], [ %.025.i.i583, %.preheader.i.i582 ], [ %.025.i.i583, %bb.ee ] ; 4 uses
  %.3.i.i587 = phi i1 [ true, %..thread_crit_edge.i.i593 ], [ false, %.preheader.i.i582 ], [ false, %bb.ee ]
  %i.ti = add i64 %.227.i.i586, %i.th
  store i64 %i.ti, ptr %i.cy, align 8, !tbaa !68
  %i.tj = load i64, ptr %i.ct, align 8, !tbaa !69 ; 2 uses
  %.not32.i.i588 = icmp ugt i64 %.227.i.i586, %i.tj
  br i1 %.not32.i.i588, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.thread.i.i585
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 404, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.60) #34
  unreachable

bb.eh:                                            ; preds = %.thread.i.i585
  %i.tk = sub nuw i64 %i.tj, %.227.i.i586
  %spec.select.i.i589 = select i1 %.3.i.i587, i64 0, i64 %i.tk ; 2 uses
  store i64 %spec.select.i.i589, ptr %i.ct, align 8, !tbaa !69
  %i.tl = icmp eq i64 %.227.i.i586, 8
  %.pr.pre = load i64, ptr %i.sq, align 8, !tbaa !81 ; 2 uses
  %i.tm = icmp slt i64 %.pr.pre, 0
  br i1 %i.tm, label %.thread661, label %.thread658

.thread661:                                       ; preds = %bb.eh
  %i.tn = trunc nuw nsw i64 %indvars.iv to i32
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, ptr noundef nonnull %i.pa, i32 noundef %i.tn, i64 noundef %.pr.pre)
  br label %.loopexit703

.thread658:                                       ; preds = %.lr.ph912, %bb.eh
  %i.to = phi i64 [ %spec.select.i.i589, %bb.eh ], [ %i.sp, %.lr.ph912 ]
  %.20660 = phi i1 [ %i.tl, %bb.eh ], [ true, %.lr.ph912 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.tp = icmp samesign ult i64 %indvars.iv, 3
  %i.tq = select i1 %.20660, i1 %i.tp, i1 false
  br i1 %i.tq, label %.lr.ph912, label %._crit_edge913, !llvm.loop !217

._crit_edge913:                                   ; preds = %.thread658
  br i1 %.20660, label %bb.ei, label %.loopexit703

bb.ei:                                            ; preds = %._crit_edge913
  %i.tr = call i64 @ggml_nelements(ptr noundef nonnull %5)
  %i.ts = icmp sgt i64 %i.tr, 0
  br i1 %i.ts, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.tt = load i64, ptr %i.pd, align 8, !tbaa !81 ; 3 uses
  %i.tu = sdiv i64 9223372036854775807, %i.tt
  %i.tv = load i64, ptr %i.pc, align 8, !tbaa !81 ; 3 uses
  %.not411 = icmp sgt i64 %i.tu, %i.tv
  %.pre1038 = load i64, ptr %i.pe, align 8, !tbaa !81 ; 3 uses
  br i1 %.not411, label %bb.ek, label %._crit_edge1039

._crit_edge1039:                                  ; preds = %bb.ej
  %.pre1040 = load i64, ptr %i.pf, align 8, !tbaa !81
  br label %split

bb.ek:                                            ; preds = %bb.ej
  %i.tw = sdiv i64 9223372036854775807, %.pre1038
  %i.tx = mul nsw i64 %i.tv, %i.tt                ; 2 uses
  %.not412 = icmp sgt i64 %i.tw, %i.tx
  %.pre1041 = load i64, ptr %i.pf, align 8, !tbaa !81 ; 3 uses
  br i1 %.not412, label %bb.el, label %split

bb.el:                                            ; preds = %bb.ek
  %i.ty = sdiv i64 9223372036854775807, %.pre1041
  %i.tz = mul nsw i64 %.pre1038, %i.tx
  %.not413 = icmp sgt i64 %i.ty, %i.tz
  br i1 %.not413, label %bb.en, label %split

split:                                            ; preds = %bb.el, %bb.ek, %._crit_edge1039
  %i.ua = phi i64 [ %.pre1040, %._crit_edge1039 ], [ %.pre1041, %bb.ek ], [ %.pre1041, %bb.el ]
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, ptr noundef nonnull %i.pa, i64 noundef %i.tv, i64 noundef %i.tt, i64 noundef %.pre1038, i64 noundef %i.ua, i64 noundef 9223372036854775807)
  br label %bb.em

bb.em:                                            ; preds = %split, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  br label %.thread688

.loopexit703:                                     ; preds = %bb.dy, %.preheader, %._crit_edge913, %bb.ed, %.thread661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  br label %.thread688

bb.en:                                            ; preds = %bb.ei, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 -1, ptr %i.a, align 4, !tbaa !87
  %i.ub = load i64, ptr %i.ct, align 8, !tbaa !69
  %i.uc = icmp ult i64 %i.ub, 4
  %i.ud = load ptr, ptr %0, align 8
  %i.ue = icmp eq ptr %i.ud, null
  %or.cond.i.i596 = select i1 %i.uc, i1 true, i1 %i.ue
  br i1 %or.cond.i.i596, label %_ZNK11gguf_reader4readER9ggml_type.exitthread-pre-split, label %.preheader.i.i.i597

.preheader.i.i.i597:                              ; preds = %bb.en, %bb.ep
  %.025.i.i.i598 = phi i64 [ %i.uo, %bb.ep ], [ 0, %bb.en ] ; 7 uses
  %i.uf = icmp ult i64 %.025.i.i.i598, 4
  %.pre37.i.i.i599 = load i64, ptr %i.cy, align 8, !tbaa !68 ; 4 uses
  br i1 %i.uf, label %bb.eo, label %.thread.i.i.i600

bb.eo:                                            ; preds = %.preheader.i.i.i597
  %i.ug = add i64 %.pre37.i.i.i599, %.025.i.i.i598 ; 2 uses
  %i.uh = icmp ult i64 %i.ug, %.pre37.i.i.i599
  br i1 %i.uh, label %.thread.i.i.i600, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ui = sub nuw nsw i64 4, %.025.i.i.i598
  %i.uj = load i64, ptr %i.cz, align 8, !tbaa !81
  %.sroa.speculated.i.i.i607 = call i64 @llvm.umin.i64(i64 %i.ui, i64 %i.uj) ; 2 uses
  %i.uk = load ptr, ptr %0, align 8, !tbaa !65
  %i.ul = load ptr, ptr %i.da, align 8, !tbaa !66
  %i.um = getelementptr inbounds nuw i8, ptr %i.a, i64 %.025.i.i.i598
  %i.un = call noundef i64 %i.uk(ptr noundef %i.ul, ptr noundef nonnull %i.um, i64 noundef %i.ug, i64 noundef %.sroa.speculated.i.i.i607), !inline_history !218 ; 2 uses
  %i.uo = add i64 %i.un, %.025.i.i.i598           ; 2 uses
  %.not.i.i.i608 = icmp eq i64 %i.un, %.sroa.speculated.i.i.i607
  br i1 %.not.i.i.i608, label %.preheader.i.i.i597, label %..thread_crit_edge.i.i.i609

..thread_crit_edge.i.i.i609:                      ; preds = %bb.ep
  %.pre.i.i.i610 = load i64, ptr %i.cy, align 8, !tbaa !68
  br label %.thread.i.i.i600

.thread.i.i.i600:                                 ; preds = %bb.eo, %.preheader.i.i.i597, %..thread_crit_edge.i.i.i609
  %i.up = phi i64 [ %.pre.i.i.i610, %..thread_crit_edge.i.i.i609 ], [ %.pre37.i.i.i599, %.preheader.i.i.i597 ], [ %.pre37.i.i.i599, %bb.eo ]
  %.227.i.i.i601 = phi i64 [ %i.uo, %..thread_crit_edge.i.i.i609 ], [ %.025.i.i.i598, %.preheader.i.i.i597 ], [ %.025.i.i.i598, %bb.eo ] ; 4 uses
  %.3.i.i.i602 = phi i1 [ true, %..thread_crit_edge.i.i.i609 ], [ false, %.preheader.i.i.i597 ], [ false, %bb.eo ]
  %i.uq = add i64 %.227.i.i.i601, %i.up
  store i64 %i.uq, ptr %i.cy, align 8, !tbaa !68
  %i.ur = load i64, ptr %i.ct, align 8, !tbaa !69 ; 2 uses
  %.not32.i.i.i603 = icmp ugt i64 %.227.i.i.i601, %i.ur
  br i1 %.not32.i.i.i603, label %bb.eq, label %_ZNK11gguf_reader4readIiEEbRT_.exit.i604

bb.eq:                                            ; preds = %.thread.i.i.i600
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 404, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.60) #34
  unreachable

_ZNK11gguf_reader4readIiEEbRT_.exit.i604:         ; preds = %.thread.i.i.i600
  %i.us = sub nuw i64 %i.ur, %.227.i.i.i601
  %spec.select.i.i.i605 = select i1 %.3.i.i.i602, i64 0, i64 %i.us
  store i64 %spec.select.i.i.i605, ptr %i.ct, align 8, !tbaa !69
  %i.ut = icmp eq i64 %.227.i.i.i601, 4
  br i1 %i.ut, label %bb.er, label %_ZNK11gguf_reader4readER9ggml_type.exitthread-pre-split

bb.er:                                            ; preds = %_ZNK11gguf_reader4readIiEEbRT_.exit.i604
  %i.uu = load i32, ptr %i.a, align 4, !tbaa !87  ; 2 uses
  store i32 %i.uu, ptr %5, align 8, !tbaa !105
  br label %_ZNK11gguf_reader4readER9ggml_type.exit

_ZNK11gguf_reader4readER9ggml_type.exitthread-pre-split: ; preds = %_ZNK11gguf_reader4readIiEEbRT_.exit.i604, %bb.en
  %.pr672 = load i32, ptr %5, align 8, !tbaa !111
  br label %_ZNK11gguf_reader4readER9ggml_type.exit

_ZNK11gguf_reader4readER9ggml_type.exit:          ; preds = %_ZNK11gguf_reader4readER9ggml_type.exitthread-pre-split, %bb.er
  %i.uv = phi i32 [ %.pr672, %_ZNK11gguf_reader4readER9ggml_type.exitthread-pre-split ], [ %i.uu, %bb.er ] ; 3 uses
  %.0.i4.i606 = phi i1 [ false, %_ZNK11gguf_reader4readER9ggml_type.exitthread-pre-split ], [ true, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %or.cond19 = icmp ugt i32 %i.uv, 42
  br i1 %or.cond19, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_ZNK11gguf_reader4readER9ggml_type.exit
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, ptr noundef nonnull %i.pa, i32 noundef %i.uv, i32 noundef 43)
  br label %.thread688

bb.et:                                            ; preds = %_ZNK11gguf_reader4readER9ggml_type.exit
  %i.uw = call i64 @ggml_type_size(i32 noundef %i.uv) ; 4 uses
  %i.ux = load i32, ptr %5, align 8, !tbaa !111
  %i.uy = call i64 @ggml_blck_size(i32 noundef %i.ux) ; 5 uses
  %i.uz = icmp eq i64 %i.uy, 0
  br i1 %i.uz, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.va = load i64, ptr %i.pc, align 8, !tbaa !81 ; 2 uses
  %i.vb = srem i64 %i.va, %i.uy
  %i.vc = sdiv i64 %i.va, %i.uy
  %.not414 = icmp eq i64 %i.vb, 0
  br i1 %.not414, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.vd = load i32, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.ve = call ptr @ggml_type_name(i32 noundef %i.vd)
  %i.vf = load i64, ptr %i.pc, align 8, !tbaa !81
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, ptr noundef nonnull %i.pa, i32 noundef %i.vd, ptr noundef %i.ve, i64 noundef %i.vf, i64 noundef %i.uy)
  br label %.thread688

bb.ew:                                            ; preds = %bb.eu
  br i1 %.0.i4.i606, label %bb.ex, label %.thread688.loopexit.critedge

bb.ex:                                            ; preds = %bb.ew
  %i.vg = call i64 @ggml_nelements(ptr noundef nonnull %5)
  %i.vh = load i32, ptr %5, align 8, !tbaa !111
  %i.vi = call i64 @ggml_blck_size(i32 noundef %i.vh)
  %i.vj = sdiv i64 %i.vg, %i.vi
  %i.vk = load i32, ptr %5, align 8, !tbaa !111
  %i.vl = call i64 @ggml_type_size(i32 noundef %i.vk)
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.vl, i64 %i.vj)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %.pre1042 = load i64, ptr %i.pc, align 8, !tbaa !81 ; 2 uses
  br i1 %mul.ov, label %bb.ey, label %.thread683

bb.ey:                                            ; preds = %bb.ex
  %i.vm = load i64, ptr %i.pd, align 8, !tbaa !81
  %i.vn = load i64, ptr %i.pe, align 8, !tbaa !81
  %i.vo = load i64, ptr %i.pf, align 8, !tbaa !81
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, ptr noundef nonnull %i.pa, i64 noundef %.pre1042, i64 noundef %i.vm, i64 noundef %i.vn, i64 noundef %i.vo, i64 noundef -1)
  br label %.thread688

.thread683:                                       ; preds = %bb.ex
  store i64 %i.uw, ptr %i.pg, align 8, !tbaa !81
  %i.vp = sdiv i64 %.pre1042, %i.uy
  %i.vq = mul i64 %i.vp, %i.uw                    ; 2 uses
  store i64 %i.vq, ptr %i.ph, align 8, !tbaa !81
  %i.vr = load i64, ptr %i.pj, align 8, !tbaa !81
  %i.vs = mul i64 %i.vr, %i.vq                    ; 2 uses
  store i64 %i.vs, ptr %i.pk, align 8, !tbaa !81
  %i.vt = load i64, ptr %i.pl, align 8, !tbaa !81
  %i.vu = mul i64 %i.vt, %i.vs
  store i64 %i.vu, ptr %i.pm, align 8, !tbaa !81
  %i.vv = call noundef zeroext i1 @_ZNK11gguf_reader4readImEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.pi) ; 2 uses
  call void @_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, ptr noundef nonnull align 8 dereferenceable(344) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.vw = add nuw nsw i64 %.0313916, 1            ; 2 uses
  %i.vx = load i64, ptr %i.e, align 8
  %i.vy = icmp slt i64 %i.vw, %i.vx
  %i.vz = select i1 %i.vv, i1 %i.vy, i1 false
  br i1 %i.vz, label %bb.dd, label %.loopexit701, !llvm.loop !219

.thread688.loopexit.critedge:                     ; preds = %bb.ew
  store i64 %i.uw, ptr %i.pg, align 8, !tbaa !81
  %i.wa = mul i64 %i.vc, %i.uw                    ; 2 uses
  store i64 %i.wa, ptr %i.ph, align 8, !tbaa !81
  %i.wb = load i64, ptr %i.pj, align 8, !tbaa !81
  %i.wc = mul i64 %i.wb, %i.wa                    ; 2 uses
  store i64 %i.wc, ptr %i.pk, align 8, !tbaa !81
  %i.wd = load i64, ptr %i.pl, align 8, !tbaa !81
  %i.we = mul i64 %i.wd, %i.wc
  store i64 %i.we, ptr %i.pm, align 8, !tbaa !81
  br label %.thread688

.thread688:                                       ; preds = %bb.dx, %.thread688.loopexit.critedge, %bb.ey, %bb.ev, %bb.em, %.loopexit703, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ez

.split:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.wf = trunc nuw i8 %.18 to i1
  br i1 %i.wf, label %.loopexit701.thread, label %bb.ez

.loopexit701:                                     ; preds = %.thread683
  br i1 %i.vv, label %.loopexit701.thread, label %bb.ez

bb.ez:                                            ; preds = %.split, %.thread688, %.loopexit701
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params)
  call void @gguf_free(ptr noundef nonnull %i.h)
  br label %.critedge436

.loopexit701.thread:                              ; preds = %.preheader700, %.split, %.loopexit701
  %i.wg = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !112 ; 2 uses
  %i.wj = load ptr, ptr %i.wg, align 8, !tbaa !74 ; 3 uses
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = sub i64 %i.wk, %i.wl                    ; 2 uses
  %i.wn = sdiv exact i64 %i.wm, 344
  %i.wo = load i64, ptr %i.e, align 8, !tbaa !81
  %i.wp = icmp eq i64 %i.wn, %i.wo
  br i1 %i.wp, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.loopexit701.thread
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 762, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.49) #34
  unreachable

bb.fb:                                            ; preds = %.loopexit701.thread
  %i.wq = icmp sgt i64 %i.wm, 0
  %.pre1043 = load i64, ptr %i.cy, align 8, !tbaa !68 ; 3 uses
  br i1 %i.wq, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.wr = load i64, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %i.ws = add i64 %.pre1043, -1
  %i.wt = add i64 %i.ws, %i.wr
  %i.wu = sub i64 0, %i.wr
  %i.wv = and i64 %i.wt, %i.wu                    ; 4 uses
  %i.ww = load i64, ptr %i.ct, align 8, !tbaa !69
  %i.wx = add i64 %i.ww, %.pre1043                ; 2 uses
  %.not696 = icmp ugt i64 %i.wv, %i.wx
  br i1 %.not696, label %_ZNK11gguf_reader4seekEm.exit, label %_ZNK11gguf_reader4seekEm.exit.thread

_ZNK11gguf_reader4seekEm.exit.thread:             ; preds = %bb.fc
  store i64 %i.wv, ptr %i.cy, align 8, !tbaa !68
  %i.wy = sub nuw i64 %i.wx, %i.wv
  store i64 %i.wy, ptr %i.ct, align 8, !tbaa !69
  br label %bb.fd

_ZNK11gguf_reader4seekEm.exit:                    ; preds = %bb.fc
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params)
  call void @gguf_free(ptr noundef nonnull %i.h)
  br label %.critedge436

bb.fd:                                            ; preds = %_ZNK11gguf_reader4seekEm.exit.thread, %bb.fb
  %i.wz = phi i64 [ %i.wv, %_ZNK11gguf_reader4seekEm.exit.thread ], [ %.pre1043, %bb.fb ]
  store i64 %i.wz, ptr %i.k, align 8, !tbaa !113
  %i.xa = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 6 uses
  store i64 0, ptr %i.xa, align 8, !tbaa !223
  %.not416921.not = icmp eq ptr %i.wi, %i.wj
  br i1 %.not416921.not, label %.critedge440, label %.lr.ph924

.lr.ph924:                                        ; preds = %bb.fd, %bb.fk
  %i.xb = phi i64 [ %i.yg, %bb.fk ], [ 0, %bb.fd ] ; 2 uses
  %i.xc = phi ptr [ %i.yj, %bb.fk ], [ %i.wj, %bb.fd ]
  %.0309922 = phi i64 [ %i.yh, %bb.fk ], [ 0, %bb.fd ] ; 2 uses
  %i.xd = getelementptr inbounds nuw [344 x i8], ptr %i.xc, i64 %.0309922 ; 4 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 336
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !114 ; 2 uses
  %.not415 = icmp eq i64 %i.xf, %i.xb
  br i1 %.not415, label %bb.fe, label %.critedge438

.critedge438:                                     ; preds = %.lr.ph924
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 256
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, ptr noundef nonnull %i.xg, i64 noundef %i.xf, i64 noundef %i.xb)
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params)
  call void @gguf_free(ptr noundef nonnull %i.h)
  br label %.critedge436

bb.fe:                                            ; preds = %.lr.ph924
  %i.xh = call i64 @ggml_nbytes(ptr noundef nonnull %i.xd)
  %i.xi = load i64, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %i.xj = add i64 %i.xh, -1
  %i.xk = add i64 %i.xj, %i.xi
  %i.xl = sub i64 0, %i.xi
  %i.xm = and i64 %i.xk, %i.xl                    ; 3 uses
  %i.xn = load i64, ptr %i.xa, align 8, !tbaa !223 ; 3 uses
  %i.xo = xor i64 %i.xn, -1
  %.not698 = icmp ugt i64 %i.xm, %i.xo
  br i1 %.not698, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xd, i64 256
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, ptr noundef nonnull %i.xp, i64 noundef %i.xn, i64 noundef %i.xm)
  %i.xq = load ptr, ptr %i.wg, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i611 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i.i611, label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i612, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.xr = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !75
  %i.xt = ptrtoint ptr %i.xs to i64
  %i.xu = ptrtoint ptr %i.xq to i64
  %i.xv = sub i64 %i.xt, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xq, i64 noundef %i.xv) #33
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i612

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i612: ; preds = %bb.fg, %bb.ff
  %i.xw = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.xx = load ptr, ptr %i.md, align 8, !tbaa !77
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7gguf_kvEEvT_S4_(ptr noundef %i.xw, ptr noundef %i.xx)
          to label %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i613 unwind label %bb.fi

_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i613: ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i612
  %i.xy = load ptr, ptr %i.i, align 8, !tbaa !76  ; 3 uses
  %.not.i.i.i1.i.i614 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i1.i.i614, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i613
  %i.xz = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !78
  %i.yb = ptrtoint ptr %i.ya to i64
  %i.yc = ptrtoint ptr %i.xy to i64
  %i.yd = sub i64 %i.yb, %i.yc
  call void @_ZdlPvm(ptr noundef nonnull %i.xy, i64 noundef %i.yd) #33
  br label %bb.fj

bb.fi:                                            ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i612
  %i.ye = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@gguf_get_key:bb.a

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define i32 @gguf_get_arr_type(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1060, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.71) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !99, !range !100, !noundef !101
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1061, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.72) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45
  ret i32 %i.p
}

; Function Attrs: mustprogress uwtable
define ptr @gguf_get_arr_data(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1066, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.71) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %.not = icmp eq i32 %i.m, 8
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1067, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.73) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  ret ptr %i.o
}

; Function Attrs: mustprogress uwtable
define ptr @gguf_get_arr_str(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1072, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.71) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %i.n = icmp eq i32 %i.m, 8
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1073, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.74) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %2
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define i64 @gguf_get_arr_n(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1078, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.71) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !166  ; 3 uses
  %i.n = icmp eq i32 %i.m, 8
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 5
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39, !nonnull !101, !noundef !101
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %bb.f ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45
  %i.z = icmp slt i32 %i.y, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.z, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = icmp ne ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ad = icmp sge i32 %i.m, %i.ac
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !167
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !120
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = urem i64 %i.am, %i.af
  %i.ao = udiv i64 %i.am, %i.af
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1085, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.75) #34
  unreachable

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, %bb.e
  %.0 = phi i64 [ %i.v, %bb.e ], [ %i.ao, %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define zeroext i8 @gguf_get_val_u8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1090, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.71) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1
  %i.l = tail call noundef i64 @_ZNK7gguf_kv6get_neEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k)
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1091, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.76) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !166
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 194, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.79) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39, !nonnull !101, !noundef !101
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.h
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.s, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %i.v = icmp slt i32 %i.u, 0                     ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.v, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.w = icmp ne ptr %.19.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !120 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = urem i64 %i.af, %i.y
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 200, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #34
  unreachable

bb.j:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i
  %.not.i = icmp ult i64 %i.af, %i.y
  br i1 %.not.i, label %bb.k, label %_ZNK7gguf_kv7get_valIhEERKT_m.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 201, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.80) #34
  unreachable

_ZNK7gguf_kv7get_valIhEERKT_m.exit:               ; preds = %bb.j
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !80
  ret i8 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7gguf_kv6get_neEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !166  ; 3 uses
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !99, !range !100, !noundef !101
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp eq i64 %i.j, 32
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 182, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.77) #34
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39, !nonnull !101, !noundef !101
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = icmp slt i32 %i.r, %i.b                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp ne ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45
  %i.w = icmp sge i32 %i.b, %i.v
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !120
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = urem i64 %i.af, %i.y
  %i.ah = udiv i64 %i.af, %i.y                    ; 2 uses
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 186, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #34
  unreachable

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !99, !range !100, !noundef !101
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = icmp eq i64 %i.ah, 1
  %or.cond3 = or i1 %i.am, %i.al
  br i1 %or.cond3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 188, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.77) #34
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i64 [ %i.k, %bb.b ], [ %i.ah, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define signext i8 @gguf_get_val_i8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1096, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.71) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1
  %i.l = tail call noundef i64 @_ZNK7gguf_kv6get_neEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k)
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1097, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.76) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !166
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 194, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.79) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39, !nonnull !101, !noundef !101
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.h
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.s, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %i.v = icmp slt i32 %i.u, 1                     ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.v, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.w = icmp ne ptr %.19.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !120 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = urem i64 %i.af, %i.y
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 200, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #34
  unreachable

bb.j:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i
  %.not.i = icmp ult i64 %i.af, %i.y
  br i1 %.not.i, label %bb.k, label %_ZNK7gguf_kv7get_valIaEERKT_m.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 201, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.80) #34
  unreachable

_ZNK7gguf_kv7get_valIaEERKT_m.exit:               ; preds = %bb.j
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !80
  ret i8 %i.ai
}

; Function Attrs: mustprogress uwtable
define zeroext i16 @gguf_get_val_u16(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88
  %i.j = icmp slt i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1102, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.71) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1
  %i.l = tail call noundef i64 @_ZNK7gguf_kv6get_neEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k)
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1103, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.76) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !166
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 194, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.79) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39, !nonnull !101, !noundef !101
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.h
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.s, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %i.v = icmp slt i32 %i.u, 2                     ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.v, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.w = icmp ne ptr %.19.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !120 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = urem i64 %i.af, %i.y
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 200, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #34
  unreachable

bb.j:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i
  %.not.i = icmp ult i64 %i.af, %i.y
  br i1 %.not.i, label %bb.k, label %_ZNK7gguf_kv7get_valItEERKT_m.exit

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 201, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.80) #34
  unreachable

_ZNK7gguf_kv7get_valItEERKT_m.exit:               ; preds = %bb.j
  %i.ai = load i16, ptr %i.ac, align 2, !tbaa !127
  ret i16 %i.ai
}

end_hunk_1
begin_hunk_2_@gguf_set_kv:bb.a
  %.not.i.i.i169 = icmp eq ptr %.sroa.0171.0190, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit170, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kb = ptrtoint ptr %.sroa.0171.0190 to i64
  %i.kc = sub i64 %.sroa.11.0188, %i.kb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0190, i64 noundef %i.kc) #33
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit170

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit170:             ; preds = %bb.bd, %bb.bc
  resume { ptr, i32 } %i.ka

bb.be:                                            ; preds = %bb.ax
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1379, ptr noundef nonnull @.str.88) #34
  unreachable

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %bb.bb, %bb.ba, %bb.ay, %_ZNK7gguf_kv7get_valIhEERKT_m.exit, %_ZNK7gguf_kv7get_valIaEERKT_m.exit, %_ZNK7gguf_kv7get_valItEERKT_m.exit, %_ZNK7gguf_kv7get_valIsEERKT_m.exit, %_ZNK7gguf_kv7get_valIjEERKT_m.exit, %_ZNK7gguf_kv7get_valIiEERKT_m.exit, %_ZNK7gguf_kv7get_valIfEERKT_m.exit, %_ZNK7gguf_kv7get_valImEERKT_m.exit, %_ZNK7gguf_kv7get_valIlEERKT_m.exit, %_ZNK7gguf_kv7get_valIdEERKT_m.exit, %_ZNK7gguf_kv7get_valIbEERKT_m.exit, %_ZNK7gguf_kv7get_valINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_m.exit
  %i.kd = add nuw nsw i64 %.064177, 1             ; 2 uses
  %exitcond181.not = icmp eq i64 %i.kd, %i.i
  br i1 %exitcond181.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !747
}

; Function Attrs: mustprogress uwtable
define void @gguf_add_tensor(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.0 = alloca %struct.ggml_tensor, align 8  ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1387, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.89) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %gguf_get_tensor_name.exit.preheader.i, label %.loopexit

gguf_get_tensor_name.exit.preheader.i:            ; preds = %bb.c
  %i.j = udiv exact i64 %i.h, 344
  br label %gguf_get_tensor_name.exit.i

gguf_get_tensor_name.exit.i:                      ; preds = %bb.d, %gguf_get_tensor_name.exit.preheader.i
  %.09.i = phi i64 [ %i.o, %bb.d ], [ 0, %gguf_get_tensor_name.exit.preheader.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [344 x i8], ptr %i.e, i64 %.09.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.m = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.l) #29
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %gguf_find_tensor.exit, label %bb.d

bb.d:                                             ; preds = %gguf_get_tensor_name.exit.i
  %i.o = add nuw nsw i64 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.j
  br i1 %exitcond.not.i, label %.loopexit, label %gguf_get_tensor_name.exit.i, !llvm.loop !19

gguf_find_tensor.exit:                            ; preds = %gguf_get_tensor_name.exit.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1389, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.a) #34
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(336) %1, i64 336, i1 false), !tbaa.struct !752
  %i.p = icmp eq ptr %i.e, %i.d
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -344
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !114
  %i.t = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.w = add i64 %i.t, -1
  %i.x = add i64 %i.w, %i.v
  %i.y = sub i64 0, %i.v
  %i.z = and i64 %i.x, %i.y
  %i.aa = add i64 %i.z, %i.s
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %i.ab = phi ptr [ %.pre, %bb.e ], [ %i.d, %.loopexit ] ; 4 uses
  %i.ac = phi i64 [ %i.aa, %bb.e ], [ 0, %.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.ab, %i.ae
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.ab, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.0, i64 336, i1 false), !tbaa.struct !171
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 344
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !112
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE9push_backERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !74  ; 4 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 6 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775680
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #34
  unreachable

_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.am = sdiv exact i64 %i.ak, 344               ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 26812128014112720)
  %i.aq = select i1 %i.ao, i64 26812128014112720, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = mul nuw nsw i64 %i.aq, 344
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.at, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.0, i64 336, i1 false), !tbaa.struct !171
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.at, i64 336
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !81
  %i.au = icmp sgt i64 %i.ak, 0
  br i1 %i.au, label %bb.j, label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 344
  %.not.i17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #33
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.as, ptr %i.b, align 8, !tbaa !74
  store ptr %i.av, ptr %i.c, align 8, !tbaa !112
  %i.aw = getelementptr inbounds nuw [344 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !75
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.g, %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @gguf_set_tensor_type(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %gguf_get_tensor_name.exit.preheader.i, label %.loopexit

gguf_get_tensor_name.exit.preheader.i:            ; preds = %bb.a
  %i.i = udiv exact i64 %i.g, 344
  br label %gguf_get_tensor_name.exit.i

gguf_get_tensor_name.exit.i:                      ; preds = %bb.b, %gguf_get_tensor_name.exit.preheader.i
  %.09.i = phi i64 [ %i.n, %bb.b ], [ 0, %gguf_get_tensor_name.exit.preheader.i ] ; 5 uses
  %i.j = getelementptr inbounds nuw [344 x i8], ptr %i.d, i64 %.09.i ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.k) #29
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %gguf_find_tensor.exit, label %bb.b

bb.b:                                             ; preds = %gguf_get_tensor_name.exit.i
  %i.n = add nuw nsw i64 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %gguf_get_tensor_name.exit.i, !llvm.loop !19

.loopexit:                                        ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1402, ptr noundef nonnull @.str.91, ptr noundef %1) #34
  unreachable

gguf_find_tensor.exit:                            ; preds = %gguf_get_tensor_name.exit.i
  %i.o = tail call i64 @ggml_type_size(i32 noundef %2) ; 2 uses
  %i.p = tail call i64 @ggml_blck_size(i32 noundef %2) ; 2 uses
  store i32 %2, ptr %i.j, align 8, !tbaa !754
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !81   ; 2 uses
  %i.s = srem i64 %i.r, %i.p
  %i.t = sdiv i64 %i.r, %i.p
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %gguf_find_tensor.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1409, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.92) #34
  unreachable

bb.d:                                             ; preds = %gguf_find_tensor.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.o, ptr %i.v, align 8, !tbaa !81
  %i.w = mul i64 %i.t, %i.o                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.w, ptr %i.x, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !81
  %i.aa = mul i64 %i.z, %i.w                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !81
  %i.ae = mul i64 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !81
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !74  ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 344               ; 2 uses
  %.043 = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.am = icmp slt i64 %.043, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.phi.trans.insert = getelementptr inbounds nuw [344 x i8], ptr %i.ah, i64 %.09.i
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 336
  %.pre = load i64, ptr %.phi.trans.insert48, align 8, !tbaa !114
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.ao = phi i64 [ %.pre, %.lr.ph ], [ %i.ax, %bb.e ]
  %i.ap = phi ptr [ %i.ah, %.lr.ph ], [ %i.ay, %bb.e ]
  %.045 = phi i64 [ %.043, %.lr.ph ], [ %.0, %bb.e ] ; 3 uses
  %.0.in44 = phi i64 [ %.09.i, %.lr.ph ], [ %.045, %bb.e ]
  %i.aq = getelementptr inbounds nuw [344 x i8], ptr %i.ap, i64 %.0.in44
  %i.ar = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.aq)
  %i.as = load i64, ptr %i.an, align 8, !tbaa !63 ; 2 uses
  %i.at = add i64 %i.ar, -1
  %i.au = add i64 %i.at, %i.as
  %i.av = sub i64 0, %i.as
  %i.aw = and i64 %i.au, %i.av
  %i.ax = add i64 %i.aw, %i.ao                    ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.az = getelementptr inbounds nuw [344 x i8], ptr %i.ay, i64 %.045
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  store i64 %i.ax, ptr %i.ba, align 8, !tbaa !114
  %.0 = add i64 %.045, 1                          ; 2 uses
  %exitcond.not = icmp eq i64 %.0, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !753
}

; Function Attrs: mustprogress uwtable
define void @gguf_set_tensor_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %gguf_get_tensor_name.exit.preheader.i, label %.loopexit

gguf_get_tensor_name.exit.preheader.i:            ; preds = %bb.a
  %i.i = udiv exact i64 %i.g, 344
  br label %gguf_get_tensor_name.exit.i

gguf_get_tensor_name.exit.i:                      ; preds = %bb.b, %gguf_get_tensor_name.exit.preheader.i
  %.09.i = phi i64 [ %i.n, %bb.b ], [ 0, %gguf_get_tensor_name.exit.preheader.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [344 x i8], ptr %i.d, i64 %.09.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.k) #29
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %gguf_find_tensor.exit, label %bb.b

bb.b:                                             ; preds = %gguf_get_tensor_name.exit.i
  %i.n = add nuw nsw i64 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %gguf_get_tensor_name.exit.i, !llvm.loop !19

.loopexit:                                        ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1427, ptr noundef nonnull @.str.91, ptr noundef %1) #34
  unreachable

gguf_find_tensor.exit:                            ; preds = %gguf_get_tensor_name.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  store ptr %2, ptr %i.o, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17gguf_write_to_bufPK12gguf_contextRSt6vectorIaSaIaEEb(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.gguf_writer_buf, align 8    ; 47 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV15gguf_writer_buf, i64 16), ptr %3, align 8, !tbaa !196
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !759
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 88                  ; 9 uses
  %.sroa.072.0.extract.trunc.i = trunc i64 %i.j to i8
  %.sroa.5.0.extract.shift.i = lshr i64 %i.j, 8
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i8
  %.sroa.674.0.extract.shift.i = lshr i64 %i.j, 16
  %.sroa.674.0.extract.trunc.i = trunc i64 %.sroa.674.0.extract.shift.i to i8
  %.sroa.775.0.extract.shift.i = lshr i64 %i.j, 24
  %.sroa.775.0.extract.trunc.i = trunc i64 %.sroa.775.0.extract.shift.i to i8
  %.sroa.876.0.extract.shift.i = lshr i64 %i.j, 32
  %.sroa.876.0.extract.trunc.i = trunc i64 %.sroa.876.0.extract.shift.i to i8
  %.sroa.977.0.extract.shift.i = lshr i64 %i.j, 40
  %.sroa.977.0.extract.trunc.i = trunc i64 %.sroa.977.0.extract.shift.i to i8
  %.sroa.1078.0.extract.shift.i = lshr i64 %i.j, 48
  %.sroa.1078.0.extract.trunc.i = trunc i64 %.sroa.1078.0.extract.shift.i to i8
  %.sroa.1179.0.extract.shift.i = lshr i64 %i.j, 56
  %.sroa.1179.0.extract.trunc.i = trunc nuw i64 %.sroa.1179.0.extract.shift.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = sdiv exact i64 %i.q, 344                 ; 10 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.r to i8
  %.sroa.6.0.extract.shift.i = lshr i64 %i.r, 8
  %.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.6.0.extract.shift.i to i8
  %.sroa.7.0.extract.shift.i = lshr i64 %i.r, 16
  %.sroa.7.0.extract.trunc.i = trunc i64 %.sroa.7.0.extract.shift.i to i8
  %.sroa.8.0.extract.shift.i = lshr i64 %i.r, 24
  %.sroa.8.0.extract.trunc.i = trunc i64 %.sroa.8.0.extract.shift.i to i8
  %.sroa.9.0.extract.shift.i = lshr i64 %i.r, 32
  %.sroa.9.0.extract.trunc.i = trunc i64 %.sroa.9.0.extract.shift.i to i8
  %.sroa.10.0.extract.shift.i = lshr i64 %i.r, 40
  %.sroa.10.0.extract.trunc.i = trunc i64 %.sroa.10.0.extract.shift.i to i8
  %.sroa.11.0.extract.shift.i = lshr i64 %i.r, 48
  %.sroa.11.0.extract.trunc.i = trunc i64 %.sroa.11.0.extract.shift.i to i8
  %.sroa.12.0.extract.shift.i = lshr i64 %i.r, 56
  %.sroa.12.0.extract.trunc.i = trunc nuw i64 %.sroa.12.0.extract.shift.i to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !167  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  %.not.i.i31 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 71, ptr %i.t, align 1, !tbaa !80
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !167
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !167
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !121
  br label %.noexc

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !120    ; 4 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %.noexc32, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i

.noexc32:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #34
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807)
  %i.ag = select i1 %i.ae, i64 9223372036854775807, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #30 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab ; 2 uses
  store i8 71, ptr %i.ai, align 1, !tbaa !80
  %i.aj = icmp sgt i64 %i.ab, 0
  br i1 %i.aj, label %bb.d, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
end_hunk_2
