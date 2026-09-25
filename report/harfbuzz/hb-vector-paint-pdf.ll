Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-pdf?download=true
inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z26hb_vector_paint_render_pdfP17hb_vector_paint_t:bb.a
  %i.ua = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i391 = icmp ugt i32 %i.to, %i.ua
  br i1 %.not23.i.i.i.i391, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i392, label %bb.ej

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i388: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i386, %bb.ei, %bb.eh
  %.1.i.i52.i.i.i.i389 = phi ptr [ %i.tz, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i386 ], [ %i.tt, %bb.eh ], [ %i.tt, %bb.ei ]
  store ptr %.1.i.i52.i.i.i.i389, ptr %i.tq, align 8, !tbaa !15
  store i32 %i.to, ptr %1, align 8, !tbaa !16
  br label %bb.ej

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i392:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i390
  %i.ub = xor i32 %i.ua, -1
  store i32 %i.ub, ptr %1, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit396

bb.ej:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i388, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i390, %bb.ee
  store i32 %i.ti, ptr %i.bo, align 4, !tbaa !14
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !15
  %i.ue = zext i32 %i.tf to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ue
  store i16 15934, ptr %i.uf, align 1, !alias.scope !368
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit396

_ZN15hb_vector_buf_t10append_strEPKc.exit396:     ; preds = %bb.ej, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i392, %bb.ed, %_ZN15hb_vector_buf_t10append_lenEPKcj.exit377, %_ZN15hb_vector_buf_t10append_strEPKc.exit339
  %i.ug = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %i.uh = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ug, i32 3) ; 2 uses
  %i.ui = extractvalue { i32, i1 } %i.uh, 1
  %i.uj = extractvalue { i32, i1 } %i.uh, 0       ; 4 uses
  %i.uk = icmp slt i32 %i.uj, 0
  %or.cond.i.i397 = or i1 %i.ui, %i.uk
  br i1 %or.cond.i.i397, label %.critedge, label %bb.ek, !prof !62

bb.ek:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit396
  %i.ul = load i32, ptr %1, align 8, !tbaa !16    ; 4 uses
  %i.um = icmp slt i32 %i.ul, 0
  br i1 %i.um, label %.critedge, label %bb.el, !prof !23

bb.el:                                            ; preds = %bb.ek
  %.not.i.i.i.i398 = icmp samesign ugt i32 %i.uj, %i.ul
  br i1 %.not.i.i.i.i398, label %.preheader.i.i.i.i401, label %bb.eq, !prof !23

.preheader.i.i.i.i401:                            ; preds = %bb.el, %.preheader.i.i.i.i401
  %.053.i.i.i.i402 = phi i32 [ %i.up, %.preheader.i.i.i.i401 ], [ %i.ul, %bb.el ] ; 2 uses
  %i.un = lshr i32 %.053.i.i.i.i402, 1
  %i.uo = add nuw i32 %.053.i.i.i.i402, 8
  %i.up = add nuw i32 %i.uo, %i.un                ; 6 uses
  %i.uq = icmp ugt i32 %i.uj, %i.up
  br i1 %i.uq, label %.preheader.i.i.i.i401, label %.thread39.i.i.i.i403, !llvm.loop !0

.thread39.i.i.i.i403:                             ; preds = %.preheader.i.i.i.i401
  %.not8.i.i.i.i.i.i404 = icmp eq i32 %i.ul, 0
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i404, label %bb.em, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i405

bb.em:                                            ; preds = %.thread39.i.i.i.i403
  %.not9.i.i.i.i.i.i412 = icmp eq ptr %i.us, null
  br i1 %.not9.i.i.i.i.i.i412, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i405, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ut = zext i32 %i.up to i64
  %i.uu = call ptr @hb_malloc(i64 noundef %i.ut) #12 ; 4 uses
  %.not10.i.i.i.i.i.i413 = icmp eq ptr %i.uu, null
  br i1 %.not10.i.i.i.i.i.i413, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i409, label %bb.eo, !prof !23

bb.eo:                                            ; preds = %bb.en
  %i.uv = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i414 = icmp eq i32 %i.uv, 0
  br i1 %.not.i.i.i.i.i.i.i414, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i407, label %bb.ep, !prof !23

bb.ep:                                            ; preds = %bb.eo
  %i.uw = zext i32 %i.uv to i64
  %i.ux = load ptr, ptr %i.ur, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uu, ptr readonly align 1 %i.ux, i64 range(i64 0, 103079215081) %i.uw, i1 false), !alias.scope !369
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i407

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i405: ; preds = %bb.em, %.thread39.i.i.i.i403
  %i.uy = phi ptr [ null, %bb.em ], [ %i.us, %.thread39.i.i.i.i403 ]
  %i.uz = zext i32 %i.up to i64
  %i.va = call ptr @hb_realloc(ptr noundef %i.uy, i64 noundef %i.uz) #12 ; 2 uses
  %.not22.i.i.i.i406 = icmp eq ptr %i.va, null
  br i1 %.not22.i.i.i.i406, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i409, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i407, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i409: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i405, %bb.en
  %i.vb = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i410 = icmp ugt i32 %i.up, %i.vb
  br i1 %.not23.i.i.i.i410, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i411, label %bb.eq

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i407: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i405, %bb.ep, %bb.eo
  %.1.i.i52.i.i.i.i408 = phi ptr [ %i.va, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i405 ], [ %i.uu, %bb.eo ], [ %i.uu, %bb.ep ]
  store ptr %.1.i.i52.i.i.i.i408, ptr %i.ur, align 8, !tbaa !15
  store i32 %i.up, ptr %1, align 8, !tbaa !16
  br label %bb.eq

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i411:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i409
  %i.vc = xor i32 %i.vb, -1
  store i32 %i.vc, ptr %1, align 8, !tbaa !16
  br label %.critedge

bb.eq:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i407, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i409, %bb.el
  store i32 %i.uj, ptr %i.bo, align 4, !tbaa !14
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !15
  %i.vf = zext i32 %i.ug to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.vg, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.10, i64 range(i64 0, 103079215081) 3, i1 false), !alias.scope !370
  br label %.critedge

.critedge:                                        ; preds = %bb.eq, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i411, %bb.ek, %_ZN15hb_vector_buf_t10append_strEPKc.exit396, %_ZN15hb_vector_buf_t10append_strEPKc.exit210, %bb.bl
  %i.vh = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %i.vi = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.vh, i32 11) ; 2 uses
  %i.vj = extractvalue { i32, i1 } %i.vi, 1
  %i.vk = extractvalue { i32, i1 } %i.vi, 0       ; 4 uses
  %i.vl = icmp slt i32 %i.vk, 0
  %or.cond.i.i416 = or i1 %i.vj, %i.vl
  br i1 %or.cond.i.i416, label %_ZN15hb_vector_buf_t10append_strEPKc.exit434, label %bb.er, !prof !62

bb.er:                                            ; preds = %.critedge
  %i.vm = load i32, ptr %1, align 8, !tbaa !16    ; 4 uses
  %i.vn = icmp slt i32 %i.vm, 0
  br i1 %i.vn, label %_ZN15hb_vector_buf_t10append_strEPKc.exit434, label %bb.es, !prof !23

bb.es:                                            ; preds = %bb.er
  %.not.i.i.i.i417 = icmp samesign ugt i32 %i.vk, %i.vm
  br i1 %.not.i.i.i.i417, label %.preheader.i.i.i.i420, label %bb.ex, !prof !23

.preheader.i.i.i.i420:                            ; preds = %bb.es, %.preheader.i.i.i.i420
  %.053.i.i.i.i421 = phi i32 [ %i.vq, %.preheader.i.i.i.i420 ], [ %i.vm, %bb.es ] ; 2 uses
  %i.vo = lshr i32 %.053.i.i.i.i421, 1
  %i.vp = add nuw i32 %.053.i.i.i.i421, 8
  %i.vq = add nuw i32 %i.vp, %i.vo                ; 6 uses
  %i.vr = icmp ugt i32 %i.vk, %i.vq
  br i1 %i.vr, label %.preheader.i.i.i.i420, label %.thread39.i.i.i.i422, !llvm.loop !0

.thread39.i.i.i.i422:                             ; preds = %.preheader.i.i.i.i420
  %.not8.i.i.i.i.i.i423 = icmp eq i32 %i.vm, 0
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i423, label %bb.et, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i424

bb.et:                                            ; preds = %.thread39.i.i.i.i422
  %.not9.i.i.i.i.i.i431 = icmp eq ptr %i.vt, null
  br i1 %.not9.i.i.i.i.i.i431, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i424, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.vu = zext i32 %i.vq to i64
  %i.vv = call ptr @hb_malloc(i64 noundef %i.vu) #12 ; 4 uses
  %.not10.i.i.i.i.i.i432 = icmp eq ptr %i.vv, null
  br i1 %.not10.i.i.i.i.i.i432, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i428, label %bb.ev, !prof !23

bb.ev:                                            ; preds = %bb.eu
  %i.vw = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i433 = icmp eq i32 %i.vw, 0
  br i1 %.not.i.i.i.i.i.i.i433, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i426, label %bb.ew, !prof !23

bb.ew:                                            ; preds = %bb.ev
  %i.vx = zext i32 %i.vw to i64
  %i.vy = load ptr, ptr %i.vs, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vv, ptr readonly align 1 %i.vy, i64 range(i64 0, 103079215081) %i.vx, i1 false), !alias.scope !371
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i426

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i424: ; preds = %bb.et, %.thread39.i.i.i.i422
  %i.vz = phi ptr [ null, %bb.et ], [ %i.vt, %.thread39.i.i.i.i422 ]
  %i.wa = zext i32 %i.vq to i64
  %i.wb = call ptr @hb_realloc(ptr noundef %i.vz, i64 noundef %i.wa) #12 ; 2 uses
  %.not22.i.i.i.i425 = icmp eq ptr %i.wb, null
  br i1 %.not22.i.i.i.i425, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i428, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i426, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i428: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i424, %bb.eu
  %i.wc = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i429 = icmp ugt i32 %i.vq, %i.wc
  br i1 %.not23.i.i.i.i429, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i430, label %bb.ex

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i426: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i424, %bb.ew, %bb.ev
  %.1.i.i52.i.i.i.i427 = phi ptr [ %i.wb, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i424 ], [ %i.vv, %bb.ev ], [ %i.vv, %bb.ew ]
  store ptr %.1.i.i52.i.i.i.i427, ptr %i.vs, align 8, !tbaa !15
  store i32 %i.vq, ptr %1, align 8, !tbaa !16
  br label %bb.ex

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i430:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i428
  %i.wd = xor i32 %i.wc, -1
  store i32 %i.wd, ptr %1, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit434

bb.ex:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i426, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i428, %bb.es
  store i32 %i.vk, ptr %i.bo, align 4, !tbaa !14
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !15
  %i.wg = zext i32 %i.vh to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.wg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.wh, ptr noundef nonnull readonly align 1 dereferenceable(11) @.str.11, i64 range(i64 0, 103079215081) 11, i1 false), !alias.scope !372
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit434

_ZN15hb_vector_buf_t10append_strEPKc.exit434:     ; preds = %.critedge, %bb.er, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i430, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 16, i1 false)
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i32 2, ptr %i.wi, align 8, !tbaa !53
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !373 ; 2 uses
  %i.wl = and i32 %i.wk, 255
  %.not89 = icmp eq i32 %i.wl, 0
  br i1 %.not89, label %_ZN15hb_vector_buf_t10append_strEPKc.exit605, label %bb.ey

bb.ey:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit434
  %3 = bitcast i32 %i.wk to <4 x i8>
  %4 = shufflevector <4 x i8> %3, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.wm = uitofp <4 x i8> %4 to <4 x float>
  %i.wn = fdiv <4 x float> %i.wm, splat (float 2.550000e+02) ; 4 uses
  %i.wo = extractelement <4 x float> %i.wn, i64 3 ; 2 uses
  %i.wp = fcmp olt float %i.wo, f0x3F7F8000
  %or.cond = and i1 %i.t, %i.wp
  br i1 %or.cond, label %bb.ez, label %_ZN15hb_vector_buf_t10append_strEPKc.exit472

bb.ez:                                            ; preds = %bb.ey
  %i.wq = call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_alphaEf(ptr noundef nonnull align 8 dereferenceable(100) %i.k, float noundef %i.wo)
  %i.wr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !14 ; 2 uses
  %i.wt = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ws, i32 3) ; 2 uses
  %i.wu = extractvalue { i32, i1 } %i.wt, 1
  %i.wv = extractvalue { i32, i1 } %i.wt, 0       ; 4 uses
  %i.ww = icmp slt i32 %i.wv, 0
  %or.cond.i.i435 = or i1 %i.wu, %i.ww
  br i1 %or.cond.i.i435, label %_ZN15hb_vector_buf_t10append_strEPKc.exit453, label %bb.fa, !prof !62

bb.fa:                                            ; preds = %bb.ez
  %i.wx = load i32, ptr %2, align 8, !tbaa !16    ; 4 uses
  %i.wy = icmp slt i32 %i.wx, 0
  br i1 %i.wy, label %_ZN15hb_vector_buf_t10append_strEPKc.exit453, label %bb.fb, !prof !23

bb.fb:                                            ; preds = %bb.fa
  %.not.i.i.i.i436 = icmp samesign ugt i32 %i.wv, %i.wx
  br i1 %.not.i.i.i.i436, label %.preheader.i.i.i.i439, label %bb.fg, !prof !23

.preheader.i.i.i.i439:                            ; preds = %bb.fb, %.preheader.i.i.i.i439
  %.053.i.i.i.i440 = phi i32 [ %i.xb, %.preheader.i.i.i.i439 ], [ %i.wx, %bb.fb ] ; 2 uses
  %i.wz = lshr i32 %.053.i.i.i.i440, 1
  %i.xa = add nuw i32 %.053.i.i.i.i440, 8
  %i.xb = add nuw i32 %i.xa, %i.wz                ; 6 uses
  %i.xc = icmp ugt i32 %i.wv, %i.xb
  br i1 %i.xc, label %.preheader.i.i.i.i439, label %.thread39.i.i.i.i441, !llvm.loop !0

.thread39.i.i.i.i441:                             ; preds = %.preheader.i.i.i.i439
  %.not8.i.i.i.i.i.i442 = icmp eq i32 %i.wx, 0
  %i.xd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i442, label %bb.fc, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i443

bb.fc:                                            ; preds = %.thread39.i.i.i.i441
  %.not9.i.i.i.i.i.i450 = icmp eq ptr %i.xe, null
  br i1 %.not9.i.i.i.i.i.i450, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i443, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xf = zext i32 %i.xb to i64
  %i.xg = call ptr @hb_malloc(i64 noundef %i.xf) #12 ; 4 uses
  %.not10.i.i.i.i.i.i451 = icmp eq ptr %i.xg, null
  br i1 %.not10.i.i.i.i.i.i451, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i447, label %bb.fe, !prof !23

bb.fe:                                            ; preds = %bb.fd
  %i.xh = load i32, ptr %i.wr, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i452 = icmp eq i32 %i.xh, 0
  br i1 %.not.i.i.i.i.i.i.i452, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i445, label %bb.ff, !prof !23

bb.ff:                                            ; preds = %bb.fe
  %i.xi = zext i32 %i.xh to i64
  %i.xj = load ptr, ptr %i.xd, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xg, ptr readonly align 1 %i.xj, i64 range(i64 0, 103079215081) %i.xi, i1 false), !alias.scope !374
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i445

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i443: ; preds = %bb.fc, %.thread39.i.i.i.i441
  %i.xk = phi ptr [ null, %bb.fc ], [ %i.xe, %.thread39.i.i.i.i441 ]
  %i.xl = zext i32 %i.xb to i64
  %i.xm = call ptr @hb_realloc(ptr noundef %i.xk, i64 noundef %i.xl) #12 ; 2 uses
  %.not22.i.i.i.i444 = icmp eq ptr %i.xm, null
  br i1 %.not22.i.i.i.i444, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i447, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i445, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i447: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i443, %bb.fd
  %i.xn = load i32, ptr %2, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i448 = icmp ugt i32 %i.xb, %i.xn
  br i1 %.not23.i.i.i.i448, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i449, label %bb.fg

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i445: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i443, %bb.ff, %bb.fe
  %.1.i.i52.i.i.i.i446 = phi ptr [ %i.xm, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i443 ], [ %i.xg, %bb.fe ], [ %i.xg, %bb.ff ]
  store ptr %.1.i.i52.i.i.i.i446, ptr %i.xd, align 8, !tbaa !15
  store i32 %i.xb, ptr %2, align 8, !tbaa !16
  br label %bb.fg

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i449:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i447
  %i.xo = xor i32 %i.xn, -1
  store i32 %i.xo, ptr %2, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit453

bb.fg:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i445, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i447, %bb.fb
  store i32 %i.wv, ptr %i.wr, align 4, !tbaa !14
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !15
  %i.xr = zext i32 %i.ws to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xs, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.12, i64 range(i64 0, 103079215081) 3, i1 false), !alias.scope !375
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit453

_ZN15hb_vector_buf_t10append_strEPKc.exit453:     ; preds = %bb.ez, %bb.fa, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i449, %bb.fg
  %i.xt = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %2, i32 noundef %i.wq) ; 0 uses
  %i.xu = load i32, ptr %i.wr, align 4, !tbaa !14 ; 2 uses
  %i.xv = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xu, i32 4) ; 2 uses
  %i.xw = extractvalue { i32, i1 } %i.xv, 1
  %i.xx = extractvalue { i32, i1 } %i.xv, 0       ; 4 uses
  %i.xy = icmp slt i32 %i.xx, 0
  %or.cond.i.i454 = or i1 %i.xw, %i.xy
  br i1 %or.cond.i.i454, label %_ZN15hb_vector_buf_t10append_strEPKc.exit472, label %bb.fh, !prof !62

bb.fh:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit453
  %i.xz = load i32, ptr %2, align 8, !tbaa !16    ; 4 uses
  %i.ya = icmp slt i32 %i.xz, 0
  br i1 %i.ya, label %_ZN15hb_vector_buf_t10append_strEPKc.exit472, label %bb.fi, !prof !23

bb.fi:                                            ; preds = %bb.fh
  %.not.i.i.i.i455 = icmp samesign ugt i32 %i.xx, %i.xz
  br i1 %.not.i.i.i.i455, label %.preheader.i.i.i.i458, label %bb.fn, !prof !23

.preheader.i.i.i.i458:                            ; preds = %bb.fi, %.preheader.i.i.i.i458
  %.053.i.i.i.i459 = phi i32 [ %i.yd, %.preheader.i.i.i.i458 ], [ %i.xz, %bb.fi ] ; 2 uses
  %i.yb = lshr i32 %.053.i.i.i.i459, 1
  %i.yc = add nuw i32 %.053.i.i.i.i459, 8
  %i.yd = add nuw i32 %i.yc, %i.yb                ; 6 uses
  %i.ye = icmp ugt i32 %i.xx, %i.yd
  br i1 %i.ye, label %.preheader.i.i.i.i458, label %.thread39.i.i.i.i460, !llvm.loop !0

.thread39.i.i.i.i460:                             ; preds = %.preheader.i.i.i.i458
  %.not8.i.i.i.i.i.i461 = icmp eq i32 %i.xz, 0
  %i.yf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i461, label %bb.fj, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i462

bb.fj:                                            ; preds = %.thread39.i.i.i.i460
  %.not9.i.i.i.i.i.i469 = icmp eq ptr %i.yg, null
  br i1 %.not9.i.i.i.i.i.i469, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i462, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.yh = zext i32 %i.yd to i64
  %i.yi = call ptr @hb_malloc(i64 noundef %i.yh) #12 ; 4 uses
  %.not10.i.i.i.i.i.i470 = icmp eq ptr %i.yi, null
  br i1 %.not10.i.i.i.i.i.i470, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i466, label %bb.fl, !prof !23

bb.fl:                                            ; preds = %bb.fk
  %i.yj = load i32, ptr %i.wr, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i471 = icmp eq i32 %i.yj, 0
  br i1 %.not.i.i.i.i.i.i.i471, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i464, label %bb.fm, !prof !23

bb.fm:                                            ; preds = %bb.fl
  %i.yk = zext i32 %i.yj to i64
  %i.yl = load ptr, ptr %i.yf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yi, ptr readonly align 1 %i.yl, i64 range(i64 0, 103079215081) %i.yk, i1 false), !alias.scope !376
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i464

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i462: ; preds = %bb.fj, %.thread39.i.i.i.i460
  %i.ym = phi ptr [ null, %bb.fj ], [ %i.yg, %.thread39.i.i.i.i460 ]
  %i.yn = zext i32 %i.yd to i64
  %i.yo = call ptr @hb_realloc(ptr noundef %i.ym, i64 noundef %i.yn) #12 ; 2 uses
  %.not22.i.i.i.i463 = icmp eq ptr %i.yo, null
  br i1 %.not22.i.i.i.i463, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i466, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i464, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i466: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i462, %bb.fk
  %i.yp = load i32, ptr %2, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i467 = icmp ugt i32 %i.yd, %i.yp
  br i1 %.not23.i.i.i.i467, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i468, label %bb.fn

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i464: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i462, %bb.fm, %bb.fl
  %.1.i.i52.i.i.i.i465 = phi ptr [ %i.yo, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i462 ], [ %i.yi, %bb.fl ], [ %i.yi, %bb.fm ]
  store ptr %.1.i.i52.i.i.i.i465, ptr %i.yf, align 8, !tbaa !15
  store i32 %i.yd, ptr %2, align 8, !tbaa !16
  br label %bb.fn

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i468:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i466
  %i.yq = xor i32 %i.yp, -1
  store i32 %i.yq, ptr %2, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit472

bb.fn:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i464, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i466, %bb.fi
  store i32 %i.xx, ptr %i.wr, align 4, !tbaa !14
  %i.yr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !15
  %i.yt = zext i32 %i.xu to i64
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yt
  store i32 175335200, ptr %i.yu, align 1, !alias.scope !377
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit472

_ZN15hb_vector_buf_t10append_strEPKc.exit472:     ; preds = %bb.fn, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i468, %bb.fh, %_ZN15hb_vector_buf_t10append_strEPKc.exit453, %bb.ey
  %i.yv = extractelement <4 x float> %i.wn, i64 0
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %2, float noundef %i.yv, i32 noundef 4)
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 26 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !14 ; 2 uses
  %i.yy = load i32, ptr %2, align 8, !tbaa !16    ; 5 uses
  %.not.i.i473 = icmp slt i32 %i.yx, %i.yy
  br i1 %.not.i.i473, label %.critedge.i.i475, label %bb.fo

bb.fo:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit472
  %i.yz = add i32 %i.yx, 1                        ; 2 uses
  %i.za = icmp slt i32 %i.yy, 0
  br i1 %i.za, label %_ZN15hb_vector_buf_t8append_cEc.exit491, label %bb.fp, !prof !23

bb.fp:                                            ; preds = %bb.fo
  %.not.i.i.i474 = icmp ugt i32 %i.yz, %i.yy
  br i1 %.not.i.i.i474, label %.preheader.i.i.i477, label %.critedge.i.i475, !prof !23

.preheader.i.i.i477:                              ; preds = %bb.fp, %.preheader.i.i.i477
  %.053.i.i.i478 = phi i32 [ %i.zd, %.preheader.i.i.i477 ], [ %i.yy, %bb.fp ] ; 2 uses
  %i.zb = lshr i32 %.053.i.i.i478, 1
end_hunk_0
begin_hunk_1_@_ZL27hb_vector_blob_meta_destroyPv:bb.a
  br i1 %.not.i, label %_ZL34hb_vector_blob_meta_release_bufferP21hb_vector_blob_meta_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !55, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @hb_free(ptr noundef nonnull %i.d) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !57
  store i8 1, ptr %i.a, align 4, !tbaa !55
  br label %_ZL34hb_vector_blob_meta_release_bufferP21hb_vector_blob_meta_t.exit

_ZL34hb_vector_blob_meta_release_bufferP21hb_vector_blob_meta_t.exit: ; preds = %bb.a, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !65, !range !48, !noundef !49
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL34hb_vector_blob_meta_release_bufferP21hb_vector_blob_meta_t.exit
  store i8 0, ptr %i.f, align 1, !tbaa !65
  br label %bb.h

bb.g:                                             ; preds = %_ZL34hb_vector_blob_meta_release_bufferP21hb_vector_blob_meta_t.exit
  tail call void @hb_free(ptr noundef nonnull %0) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare ptr @hb_blob_create_or_fail(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hb_blob_set_user_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @hb_blob_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tI16hb_paint_funcs_t32hb_pdf_paint_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_paint_funcs_get_empty() #12
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_paint_funcs_destroy(ptr noundef nonnull %0) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @hb_paint_funcs_get_empty() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN32hb_pdf_paint_funcs_lazy_loader_t6createEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_paint_funcs_create() #12 ; 18 uses
  tail call void @hb_paint_funcs_set_push_transform_func(ptr noundef %i.a, ptr noundef nonnull @_ZL27hb_pdf_paint_push_transformP16hb_paint_funcs_tPvffffffS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_pop_transform_func(ptr noundef %i.a, ptr noundef nonnull @_ZL26hb_pdf_paint_pop_transformP16hb_paint_funcs_tPvS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_fill_glyph_func(ptr noundef %i.a, ptr noundef nonnull @_ZL23hb_pdf_paint_fill_glyphP16hb_paint_funcs_tPvjP9hb_font_tijS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_push_clip_glyph_func(ptr noundef %i.a, ptr noundef nonnull @_ZL28hb_pdf_paint_push_clip_glyphP16hb_paint_funcs_tPvjP9hb_font_tS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_push_clip_rectangle_func(ptr noundef %i.a, ptr noundef nonnull @_ZL32hb_pdf_paint_push_clip_rectangleP16hb_paint_funcs_tPvffffS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_push_clip_path_start_func(ptr noundef %i.a, ptr noundef nonnull @_ZL33hb_pdf_paint_push_clip_path_startP16hb_paint_funcs_tPvPS1_S1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_push_clip_path_end_func(ptr noundef %i.a, ptr noundef nonnull @_ZL31hb_pdf_paint_push_clip_path_endP16hb_paint_funcs_tPvS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_pop_clip_func(ptr noundef %i.a, ptr noundef nonnull @_ZL21hb_pdf_paint_pop_clipP16hb_paint_funcs_tPvS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_color_func(ptr noundef %i.a, ptr noundef nonnull @_ZL18hb_pdf_paint_colorP16hb_paint_funcs_tPvijS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_image_func(ptr noundef %i.a, ptr noundef nonnull @_ZL18hb_pdf_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_linear_gradient_func(ptr noundef %i.a, ptr noundef nonnull @_ZL28hb_pdf_paint_linear_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_radial_gradient_func(ptr noundef %i.a, ptr noundef nonnull @_ZL28hb_pdf_paint_radial_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_sweep_gradient_func(ptr noundef %i.a, ptr noundef nonnull @_ZL27hb_pdf_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_push_group_func(ptr noundef %i.a, ptr noundef nonnull @_ZL23hb_pdf_paint_push_groupP16hb_paint_funcs_tPvS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_push_group_for_func(ptr noundef %i.a, ptr noundef nonnull @_ZL27hb_pdf_paint_push_group_forP16hb_paint_funcs_tPv25hb_paint_composite_mode_tS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_set_pop_group_func(ptr noundef %i.a, ptr noundef nonnull @_ZL22hb_pdf_paint_pop_groupP16hb_paint_funcs_tPv25hb_paint_composite_mode_tS1_, ptr noundef null, ptr noundef null) #12
  tail call void @hb_paint_funcs_make_immutable(ptr noundef %i.a) #12
  %i.b = tail call i32 @atexit(ptr noundef nonnull @_ZL27free_static_pdf_paint_funcsv) #12 ; 0 uses
  ret ptr %i.a
}

declare ptr @hb_paint_funcs_create() local_unnamed_addr #3

declare void @hb_paint_funcs_set_push_transform_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL27hb_pdf_paint_push_transformP16hb_paint_funcs_tPvffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr nofree readnone captures(none) %8) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ] ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53
  %spec.select.i = tail call noundef i32 @llvm.umax.i32(i32 %i.j, i32 7) ; 4 uses
  %i.k = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %2, i32 noundef %spec.select.i)
  %i.l = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %3, i32 noundef %spec.select.i)
  %i.m = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %4, i32 noundef %spec.select.i)
  %i.n = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %5, i32 noundef %spec.select.i)
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = load float, ptr %i.p, align 4, !tbaa !71
  %i.r = fdiv float %6, %i.q
  %i.s = load i32, ptr %i.i, align 8, !tbaa !53
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.r, i32 noundef %i.s)
  %i.t = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load float, ptr %i.u, align 8, !tbaa !72
  %i.w = fdiv float %7, %i.v
  %i.x = load i32, ptr %i.i, align 8, !tbaa !53
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.w, i32 noundef %i.x)
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.33) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_pop_transform_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL26hb_pdf_paint_pop_transformP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.34) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_fill_glyph_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23hb_pdf_paint_fill_glyphP16hb_paint_funcs_tPvjP9hb_font_tijS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, i32 %4, i32 noundef %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.h, !prof !24

bb.b:                                             ; preds = %bb.a
  %7 = bitcast i32 %5 to <4 x i8>
  %8 = shufflevector <4 x i8> %7, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.b = uitofp <4 x i8> %8 to <4 x float>
  %i.c = fdiv <4 x float> %i.b, splat (float 2.550000e+02) ; 10 uses
  %i.d = extractelement <4 x float> %i.c, i64 3   ; 3 uses
  %i.e = fcmp olt float %i.d, f0x3B808081
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.g = load i32, ptr %i.f, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.h = add i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.k
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.l, %bb.e ] ; 27 uses
  %i.m = fcmp olt float %i.d, f0x3F7F8000
  br i1 %i.m, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %i.n = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not.not = icmp eq ptr %i.n, null
  br i1 %.not.not, label %.critedge36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_alphaEf(ptr noundef nonnull align 8 dereferenceable(100) %i.n, float noundef %i.d)
  %i.p = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.12) ; 0 uses
  %i.r = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i32 noundef %i.o) ; 0 uses
  %i.s = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.13) ; 0 uses
  %i.t = extractelement <4 x float> %i.c, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.t, i32 noundef 4)
  %i.u = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.v = extractelement <4 x float> %i.c, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.v, i32 noundef 4)
  %i.w = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.x = extractelement <4 x float> %i.c, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.x, i32 noundef 4)
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  tail call fastcc void @_ZL22hb_pdf_emit_glyph_pathP17hb_vector_paint_tP9hb_font_tjP15hb_vector_buf_t(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %2, ptr noundef %.0.i.i.i)
  %i.z = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.35) ; 0 uses
  br label %.sink.split

.critedge:                                        ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %i.aa = extractelement <4 x float> %i.c, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.aa, i32 noundef 4)
  %i.ab = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ac = extractelement <4 x float> %i.c, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ac, i32 noundef 4)
  %i.ad = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ae = extractelement <4 x float> %i.c, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ae, i32 noundef 4)
  %i.af = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  tail call fastcc void @_ZL22hb_pdf_emit_glyph_pathP17hb_vector_paint_tP9hb_font_tjP15hb_vector_buf_t(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %2, ptr noundef %.0.i.i.i)
  br label %.sink.split

.critedge36:                                      ; preds = %bb.f
  %i.ag = extractelement <4 x float> %i.c, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ag, i32 noundef 4)
  %i.ah = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ai = extractelement <4 x float> %i.c, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ai, i32 noundef 4)
  %i.aj = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ak = extractelement <4 x float> %i.c, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ak, i32 noundef 4)
  %i.al = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  tail call fastcc void @_ZL22hb_pdf_emit_glyph_pathP17hb_vector_paint_tP9hb_font_tjP15hb_vector_buf_t(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %2, ptr noundef %.0.i.i.i)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %.critedge, %.critedge36
  %.str.35.sink = phi ptr [ @.str.35, %.critedge36 ], [ @.str.35, %.critedge ], [ @.str.34, %bb.g ]
  %i.am = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull %.str.35.sink) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_push_clip_glyph_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28hb_pdf_paint_push_clip_glyphP16hb_paint_funcs_tPvjP9hb_font_tS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  tail call fastcc void @_ZL22hb_pdf_emit_glyph_pathP17hb_vector_paint_tP9hb_font_tjP15hb_vector_buf_t(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %2, ptr noundef %.0.i.i.i)
  %i.j = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.36) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_push_clip_rectangle_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL32hb_pdf_paint_push_clip_rectangleP16hb_paint_funcs_tPvffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !71
  %i.l = fdiv float %2, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !53
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.l, i32 noundef %i.n)
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !72
  %i.r = fdiv float %3, %i.q
  %i.s = load i32, ptr %i.m, align 8, !tbaa !53
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.r, i32 noundef %i.s)
  %i.t = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.u = fsub float %4, %2
  %i.v = load float, ptr %i.j, align 4, !tbaa !71
  %i.w = fdiv float %i.u, %i.v
  %i.x = load i32, ptr %i.m, align 8, !tbaa !53
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.w, i32 noundef %i.x)
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.z = fsub float %5, %3
  %i.aa = load float, ptr %i.p, align 8, !tbaa !72
  %i.ab = fdiv float %i.z, %i.aa
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !53
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ab, i32 noundef %i.ac)
  %i.ad = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.37) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_push_clip_path_start_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL33hb_pdf_paint_push_clip_path_startP16hb_paint_funcs_tPvPS1_S1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !478
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.k = load i32, ptr %i.j, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !479
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !74
  store <2 x float> %i.n, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !74
  store ptr %i.m, ptr %2, align 8, !tbaa !478
  %i.o = tail call noundef ptr @_Z33hb_vector_pdf_path_draw_funcs_getv() #12
  br label %bb.f

bb.f:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.o, %_ZN17hb_vector_paint_t12current_bodyEv.exit ]
  ret ptr %.0
}

declare void @hb_paint_funcs_set_push_clip_path_end_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31hb_pdf_paint_push_clip_path_endP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.36) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_pop_clip_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL21hb_pdf_paint_pop_clipP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.34) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_color_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL18hb_pdf_paint_colorP16hb_paint_funcs_tPvijS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 %2, i32 noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit.i

_ZN17hb_vector_paint_t12current_bodyEv.exit.i:    ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %5 = bitcast i32 %3 to <4 x i8>
  %6 = shufflevector <4 x i8> %5, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.i = uitofp <4 x i8> %6 to <4 x float>
  %i.j = fdiv <4 x float> %i.i, splat (float 2.550000e+02) ; 4 uses
  %i.k = extractelement <4 x float> %i.j, i64 3   ; 3 uses
  %i.l = fcmp olt float %i.k, f0x3B808081
  br i1 %i.l, label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit.i
  %i.m = fcmp olt float %i.k, f0x3F7F8000
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_alphaEf(ptr noundef nonnull align 8 dereferenceable(100) %i.n, float noundef %i.k)
  %i.p = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.12) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i32 noundef %i.o) ; 0 uses
  %i.r = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.s = extractelement <4 x float> %i.j, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.s, i32 noundef 4)
  %i.t = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.u = extractelement <4 x float> %i.j, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.u, i32 noundef 4)
  %i.v = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.w = extractelement <4 x float> %i.j, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.w, i32 noundef 4)
  %i.x = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.38) ; 0 uses
  br label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit

_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit: ; preds = %bb.h, %_ZN17hb_vector_paint_t12current_bodyEv.exit.i, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_image_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL18hb_pdf_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree readnone captures(none) %8) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i32 %5, 1886283552
  br i1 %.not, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %7, null
  %i.c = icmp ne i32 %3, 0
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne i32 %4, 0
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.e, label %bb.d, label %bb.z, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not145 = icmp eq ptr %i.f, null
  br i1 %.not145, label %bb.z, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !61
  %i.g = call ptr @hb_blob_get_data(ptr noundef %2, ptr noundef nonnull %i.a) #12 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = load i32, ptr %i.a, align 4              ; 2 uses
  %i.j = icmp ult i32 %i.i, 8
  %or.cond5 = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond5, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.g, align 1
  %i.l = icmp ne i64 %i.k, 727905341920923785
  %i.m = zext i1 %i.l to i32
  %.not146 = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.i, -8                         ; 2 uses
  %i.o = icmp ugt i32 %i.n, 11
  %or.cond286 = select i1 %.not146, i1 %i.o, i1 false
  br i1 %or.cond286, label %.lr.ph, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

.lr.ph:                                           ; preds = %bb.f, %.thread
  %i.p = phi i32 [ %i.ck, %.thread ], [ %i.n, %bb.f ]
  %.093218 = phi i32 [ %.194, %.thread ], [ 0, %bb.f ] ; 9 uses
  %.098217 = phi i32 [ %i.ci, %.thread ], [ 8, %bb.f ] ; 2 uses
  %.0101216 = phi i32 [ %.1102, %.thread ], [ 0, %bb.f ] ; 12 uses
  %.0106215 = phi ptr [ %.1107, %.thread ], [ null, %bb.f ] ; 12 uses
  %.0111214 = phi i32 [ %.1112, %.thread ], [ 0, %bb.f ] ; 12 uses
  %.0116213 = phi ptr [ %.1117, %.thread ], [ null, %bb.f ] ; 12 uses
  %.0121212 = phi i1 [ %.3124, %.thread ], [ false, %bb.f ] ; 9 uses
  %.0128211 = phi i32 [ %.3131, %.thread ], [ 3, %bb.f ] ; 9 uses
  %.0135210 = phi i32 [ %.1136, %.thread ], [ 0, %bb.f ] ; 9 uses
  %.sroa.13.0209 = phi ptr [ %.sroa.13.1, %.thread ], [ null, %bb.f ] ; 18 uses
  %.sroa.0.0208 = phi i32 [ %.sroa.0.1, %.thread ], [ 0, %bb.f ] ; 19 uses
  %.sroa.8.0207 = phi i32 [ %.sroa.8.1, %.thread ], [ 0, %bb.f ] ; 15 uses
  %i.q = zext i32 %.098217 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q ; 12 uses
  %i.s = load i32, ptr %i.r, align 1              ; 2 uses
  %i.t = call i32 @llvm.bswap.i32(i32 %i.s)       ; 7 uses
  %i.u = add i32 %i.p, -12
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %.thread179, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 1
  %i.y = call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  switch i32 %i.y, label %.fold.split [
    i32 1229472850, label %bb.h
    i32 1347179589, label %.thread
    i32 1951551059, label %bb.n
    i32 1229209940, label %bb.o
    i32 1229278788, label %.thread179
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ult i32 %i.t, 13
  br i1 %i.aa, label %.thread164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !63
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw i32 %i.ac, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !63
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 16
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !63
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = or disjoint i32 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !63
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.at = load i8, ptr %i.as, align 1, !tbaa !63
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw i32 %i.au, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !63
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 16
  %i.ba = or disjoint i32 %i.az, %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !63
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = or disjoint i32 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !63
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !63
  %.not147 = icmp eq i8 %i.bl, 8
  br i1 %.not147, label %bb.j, label %.thread164

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !63
  switch i8 %i.bn, label %.thread164 [
    i8 0, label %bb.m
    i8 2, label %.thread
    i8 3, label %bb.m
    i8 4, label %bb.k
    i8 6, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %.thread

bb.l:                                             ; preds = %bb.j
  br label %.thread

bb.m:                                             ; preds = %bb.j, %bb.j
  br label %.thread

bb.n:                                             ; preds = %bb.g
  br label %.thread

bb.o:                                             ; preds = %bb.g
  %i.bo = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.sroa.8.0207, i32 %i.t) ; 2 uses
  %i.bp = extractvalue { i32, i1 } %i.bo, 1
  %i.bq = extractvalue { i32, i1 } %i.bo, 0       ; 5 uses
  %i.br = icmp slt i32 %i.bq, 0
  %or.cond.i = or i1 %i.bp, %i.br
  %i.bs = icmp slt i32 %.sroa.0.0208, 0
  %or.cond193 = select i1 %or.cond.i, i1 true, i1 %i.bs, !prof !64
  br i1 %or.cond193, label %.thread, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i = icmp samesign ugt i32 %i.bq, %.sroa.0.0208
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !23
end_hunk_1
begin_hunk_2_@_ZL35hb_pdf_build_interpolation_functionP15hb_vector_buf_tjj:bb.a
  %i.d = lshr i32 %1, 16
  %i.e = lshr i32 %2, 8
  %i.f = lshr i32 %1, 24
  %i.g = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.h = insertelement <4 x i32> %i.g, i32 %i.d, i64 1
  %i.i = insertelement <4 x i32> %i.h, i32 %i.f, i64 2
  %i.j = insertelement <4 x i32> %i.i, i32 %i.e, i64 3
  %i.k = and <4 x i32> %i.j, <i32 255, i32 255, i32 -1, i32 255>
  %i.l = uitofp nneg <4 x i32> %i.k to <4 x float>
  %i.m = fdiv <4 x float> %i.l, splat (float 2.550000e+02) ; 4 uses
  %i.n = extractelement <4 x float> %i.m, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.n, i32 noundef 4)
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 32) ; 0 uses
  %i.p = extractelement <4 x float> %i.m, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.p, i32 noundef 4)
  %i.q = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 32) ; 0 uses
  %i.r = extractelement <4 x float> %i.m, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.r, i32 noundef 4)
  %i.s = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull @.str.81) ; 0 uses
  %i.t = extractelement <4 x float> %i.m, i64 3
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.t, i32 noundef 4)
  %i.u = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 32) ; 0 uses
  %i.v = lshr i32 %2, 16
  %i.w = lshr i32 %2, 24
  %i.x = and i32 %i.v, 255
  %i.y = uitofp nneg i32 %i.w to float
  %i.z = uitofp nneg i32 %i.x to float
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.y, i64 1
  %i.ac = fdiv <2 x float> %i.ab, splat (float 2.550000e+02) ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.ad, i32 noundef 4)
  %i.ae = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 32) ; 0 uses
  %i.af = extractelement <2 x float> %i.ac, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.af, i32 noundef 4)
  %i.ag = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull @.str.78) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_"(ptr noundef %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %2 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %3 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %4 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %6 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %7 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %i.a = icmp ugt i64 %1, 24
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.04671 = phi i64 [ %.147, %bb.n ], [ %1, %bb.a ] ; 3 uses
  %.04870 = phi ptr [ %.149, %bb.n ], [ %0, %bb.a ] ; 12 uses
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %.04870, i64 %.04671 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -12 ; 3 uses
  %i.d = lshr i64 %.04671, 1
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.04870, i64 %i.d ; 11 uses
  %.048.val63 = load float, ptr %.04870, align 4, !tbaa !82
  %.val64 = load float, ptr %i.e, align 4, !tbaa !82 ; 2 uses
  %i.f = fcmp ogt float %.048.val63, %.val64
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %.04870, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.04870, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.val61.pre = load float, ptr %i.e, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.val61 = phi float [ %.val61.pre, %bb.b ], [ %.val64, %.lr.ph ]
  %.val62 = load float, ptr %i.c, align 4, !tbaa !82
  %i.g = fcmp ogt float %.val61, %.val62
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.048.val = load float, ptr %.04870, align 4, !tbaa !82
  %.val60 = load float, ptr %i.e, align 4, !tbaa !82
  %i.h = fcmp ogt float %.048.val, %.val60
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %.04870, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.04870, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.044 = phi ptr [ %.04870, %bb.f ], [ %i.j, %bb.j ]
  %.0 = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.j ]
  %.val59 = load float, ptr %i.i, align 4, !tbaa !82 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.145 = phi ptr [ %.044, %bb.g ], [ %i.j, %bb.h ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.145, i64 12 ; 9 uses
  %.val58 = load float, ptr %i.j, align 4, !tbaa !82
  %i.k = fcmp olt float %.val58, %.val59
  br i1 %i.k, label %bb.h, label %.preheader, !llvm.loop !1304

.preheader:                                       ; preds = %bb.h, %.preheader
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.h ]
  %i.l = getelementptr inbounds i8, ptr %.1, i64 -12 ; 6 uses
  %.val = load float, ptr %i.l, align 4, !tbaa !82
  %i.m = fcmp ogt float %.val, %.val59
  br i1 %i.m, label %.preheader, label %bb.i, !llvm.loop !1305

bb.i:                                             ; preds = %.preheader
  %.not = icmp ult ptr %i.j, %i.l
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g, !llvm.loop !1306

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %.04870 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 12                  ; 4 uses
  %i.r = xor i64 %i.q, -1
  %i.s = add i64 %.04671, %i.r                    ; 3 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_"(ptr noundef nonnull %.04870, i64 noundef %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %.145, i64 24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.145, i64 24
  tail call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_"(ptr noundef nonnull %i.v, i64 noundef %i.s)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.149 = phi ptr [ %i.u, %bb.l ], [ %.04870, %bb.m ]
  %.147 = phi i64 [ %i.s, %bb.l ], [ %i.q, %bb.m ] ; 2 uses
  %i.w = icmp ugt i64 %.147, 24
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !1307

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void
}

declare void @hb_paint_sweep_gradient_tiles(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23hb_pdf_sweep_emit_patchfjfjPv(float noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !85     ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 44 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !1333
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.g = load float, ptr %i.f, align 4, !tbaa !1334
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !1335 ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !1336 ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load float, ptr %i.l, align 8, !tbaa !1337 ; 24 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = load float, ptr %i.n, align 4, !tbaa !1338 ; 24 uses
  %i.p = fsub float %2, %0                        ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fdiv float %i.q, f0x3FC90FDB
  %i.s = tail call float @llvm.ceil.f32(float %i.r)
  %i.t = fptosi float %i.s to i32
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %i.u = uitofp nneg i32 %spec.store.select.i to float
  %5 = bitcast i32 %3 to <4 x i8>
  %6 = shufflevector <4 x i8> %5, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %7 = zext <4 x i8> %6 to <4 x i32>
  %8 = bitcast i32 %1 to <4 x i8>
  %9 = shufflevector <4 x i8> %8, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %10 = zext <4 x i8> %9 to <4 x i32>
  %i.v = sub nsw <4 x i32> %7, %10
  %i.w = uitofp <4 x i8> %9 to <4 x float>        ; 2 uses
  %i.x = sitofp <4 x i32> %i.v to <4 x float>     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 16 uses
  %i.aa = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.u, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x float> poison, float %0, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit332.i, %bb.a
  %.0336.i = phi i32 [ 0, %bb.a ], [ %i.ak, %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit332.i ] ; 2 uses
  %i.ak = add nuw nsw i32 %.0336.i, 1             ; 3 uses
  %i.al = uitofp nneg i32 %.0336.i to float
  %i.am = uitofp nneg i32 %i.ak to float
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.al, i64 1
  %i.ap = fdiv <2 x float> %i.ao, %i.af           ; 3 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ah, <2 x float> %i.aj) ; 2 uses
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.x, <4 x float> %i.w)
  %i.at = fadd <4 x float> %i.as, splat (float 5.000000e-01)
  %i.au = fptoui <4 x float> %i.at to <4 x i32>   ; 2 uses
  %i.av = shufflevector <4 x i32> %i.au, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.aw = trunc <4 x i32> %i.av to <4 x i8>
  %i.ax = bitcast <4 x i8> %i.aw to i32           ; 2 uses
  %i.ay = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> zeroinitializer
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.x, <4 x float> %i.w)
  %i.ba = fadd <4 x float> %i.az, splat (float 5.000000e-01)
  %i.bb = fptoui <4 x float> %i.ba to <4 x i32>   ; 2 uses
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.bd = trunc <4 x i32> %i.bc to <4 x i8>
  %i.be = bitcast <4 x i8> %i.bd to i32           ; 2 uses
  %i.bf = extractelement <2 x float> %i.aq, i64 0 ; 3 uses
  %i.bg = extractelement <2 x float> %i.aq, i64 1 ; 3 uses
  %i.bh = fsub float %i.bf, %i.bg
  %i.bi = fmul float %i.bh, 2.500000e-01
  %i.bj = tail call float @tanf(float noundef %i.bi) #12
  %i.bk = fmul float %i.bj, f0x3FAAAAAB           ; 2 uses
  %i.bl = tail call float @cosf(float noundef %i.bg) #12 ; 3 uses
  %i.bm = tail call float @sinf(float noundef %i.bg) #12 ; 3 uses
  %i.bn = tail call float @cosf(float noundef %i.bf) #12 ; 3 uses
  %i.bo = tail call float @sinf(float noundef %i.bf) #12 ; 3 uses
  %i.bp = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> <float 3.276700e+04, float 5.000000e-01>, <2 x float> %i.ab) ; 4 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1 ; 5 uses
  %i.bt = extractelement <2 x float> %i.br, i64 0 ; 3 uses
  %i.bu = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> <float 3.276700e+04, float 5.000000e-01>, <2 x float> %i.ad) ; 4 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 5 uses
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> <float 5.000000e-01, float 3.276700e+04>, <2 x float> %i.ab) ; 4 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 1 ; 5 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 0 ; 3 uses
  %i.ce = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> <float 5.000000e-01, float 3.276700e+04>, <2 x float> %i.ad) ; 4 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 1 ; 5 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 3 uses
  %i.cj = shufflevector <2 x float> %i.br, <2 x float> %i.bw, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ck = shufflevector <2 x float> %i.br, <2 x float> %i.bw, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.cl = fsub <4 x float> %i.cj, %i.ck
  %i.cm = fmul <4 x float> %i.cl, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.cn = fdiv <4 x float> %i.cm, splat (float 3.000000e+00) ; 4 uses
  %i.co = extractelement <4 x float> %i.cn, i64 0
  %i.cp = fadd float %i.bs, %i.co                 ; 2 uses
  %i.cq = extractelement <4 x float> %i.cn, i64 1
  %i.cr = fadd float %i.bx, %i.cq                 ; 2 uses
  %i.cs = extractelement <4 x float> %i.cn, i64 2
  %i.ct = fadd float %i.bs, %i.cs                 ; 2 uses
  %i.cu = extractelement <4 x float> %i.cn, i64 3
  %i.cv = fadd float %i.bx, %i.cu                 ; 2 uses
  %i.cw = fmul float %i.bk, 3.276700e+04          ; 4 uses
  %i.cx = fneg float %i.bm
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cx, float %i.bt) ; 2 uses
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.bl, float %i.by) ; 2 uses
  %i.da = fneg float %i.bo
  %i.db = fneg float %i.cw
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.bo, float %i.cc) ; 2 uses
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.db, float %i.bn, float %i.ch) ; 2 uses
  %i.de = shufflevector <2 x float> %i.cb, <2 x float> %i.cg, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.df = shufflevector <2 x float> %i.cb, <2 x float> %i.cg, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.dg = fsub <4 x float> %i.de, %i.df
  %i.dh = fmul <4 x float> %i.dg, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.di = fdiv <4 x float> %i.dh, splat (float 3.000000e+00) ; 4 uses
  %i.dj = extractelement <4 x float> %i.di, i64 0
  %i.dk = fadd float %i.cc, %i.dj                 ; 2 uses
  %i.dl = extractelement <4 x float> %i.di, i64 1
  %i.dm = fadd float %i.ch, %i.dl                 ; 2 uses
  %i.dn = extractelement <4 x float> %i.di, i64 2
  %i.do = fadd float %i.cc, %i.dn                 ; 2 uses
  %i.dp = extractelement <4 x float> %i.di, i64 3
  %i.dq = fadd float %i.ch, %i.dp                 ; 2 uses
  %i.dr = fmul float %i.bk, 5.000000e-01          ; 4 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.da, float %i.cd) ; 2 uses
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.bn, float %i.ci) ; 2 uses
  %i.du = fneg float %i.dr
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.bm, float %i.bs) ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.du, float %i.bl, float %i.bx) ; 2 uses
  %i.dx = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 0) ; 0 uses
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.bs, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.bx, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cp, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cr, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ct, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cv, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.bt, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.by, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cy, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cz, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dc, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dd, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cc, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ch, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dk, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dm, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.do, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dq, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.cd, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ci, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.ds, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dt, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dv, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.a, float noundef %i.dw, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %i.ax)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %i.ax)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %i.be)
  tail call fastcc void @_ZL23hb_pdf_encode_color_rgbP15hb_vector_buf_tj(ptr noundef nonnull %i.a, i32 noundef %i.be)
  br i1 %.not.i, label %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit332.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dy = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 noundef signext 0) ; 0 uses
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.bs, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.bx, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cp, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cr, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ct, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cv, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.bt, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.by, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cy, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cz, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dc, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dd, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cc, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ch, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dk, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dm, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.do, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dq, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.cd, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ci, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.ds, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dt, float noundef %i.m, float noundef %i.o)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dv, float noundef %i.i, float noundef %i.k)
  tail call fastcc void @_ZL19hb_pdf_encode_coordP15hb_vector_buf_tfff(ptr noundef nonnull %i.c, float noundef %i.dw, float noundef %i.m, float noundef %i.o)
  %i.dz = bitcast <4 x i32> %i.au to <16 x i8>
  %i.ea = extractelement <16 x i8> %i.dz, i64 8   ; 2 uses
  %i.eb = load i32, ptr %i.y, align 4, !tbaa !14  ; 2 uses
  %i.ec = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.eb, i32 1) ; 2 uses
  %i.ed = extractvalue { i32, i1 } %i.ec, 1
  %i.ee = extractvalue { i32, i1 } %i.ec, 0       ; 4 uses
  %i.ef = icmp slt i32 %i.ee, 0
  %or.cond.i.i.i = or i1 %i.ed, %i.ef
  br i1 %or.cond.i.i.i, label %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit.i, label %bb.d, !prof !62

bb.d:                                             ; preds = %bb.c
  %i.eg = load i32, ptr %i.c, align 8, !tbaa !16  ; 4 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %_ZL25hb_pdf_encode_color_alphaP15hb_vector_buf_tj.exit.i, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.ee, %i.eg
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.j, !prof !23

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i
  %.053.i.i.i.i.i = phi i32 [ %i.ek, %.preheader.i.i.i.i.i ], [ %i.eg, %bb.e ] ; 2 uses
  %i.ei = lshr i32 %.053.i.i.i.i.i, 1
  %i.ej = add nuw i32 %.053.i.i.i.i.i, 8
  %i.ek = add nuw i32 %i.ej, %i.ei                ; 6 uses
  %i.el = icmp ugt i32 %i.ee, %i.ek
  br i1 %i.el, label %.preheader.i.i.i.i.i, label %.thread39.i.i.i.i.i, !llvm.loop !0

.thread39.i.i.i.i.i:                              ; preds = %.preheader.i.i.i.i.i
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.eg, 0
  %i.em = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  br i1 %.not8.i.i.i.i.i.i.i, label %bb.f, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i

bb.f:                                             ; preds = %.thread39.i.i.i.i.i
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.en = zext i32 %i.ek to i64
  %i.eo = tail call ptr @hb_malloc(i64 noundef %i.en) #12 ; 4 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.ep = load i32, ptr %i.y, align 4, !tbaa !14  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.eq = zext i32 %i.ep to i64
  %i.er = load ptr, ptr %i.z, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr readonly align 1 %i.er, i64 range(i64 0, 103079215081) %i.eq, i1 false), !alias.scope !1339
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i: ; preds = %bb.f, %.thread39.i.i.i.i.i
  %i.es = phi ptr [ null, %bb.f ], [ %i.em, %.thread39.i.i.i.i.i ]
  %i.et = zext i32 %i.ek to i64
  %i.eu = tail call ptr @hb_realloc(ptr noundef %i.es, i64 noundef %i.et) #12 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not22.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i, %bb.g
  %i.ev = load i32, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %.not23.i.i.i.i.i = icmp ugt i32 %i.ek, %i.ev
  br i1 %.not23.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i.i, label %bb.j

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i, %bb.i, %bb.h
  %.1.i.i52.i.i.i.i.i = phi ptr [ %i.eu, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i.i ], [ %i.eo, %bb.h ], [ %i.eo, %bb.i ]
  store ptr %.1.i.i52.i.i.i.i.i, ptr %i.z, align 8, !tbaa !15
end_hunk_2
