Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-pdf?download=true
inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_t:bb.a
  %i.bm = load <2 x i32>, ptr %4, align 8, !tbaa !61
  %i.bn = load i32, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %i.bl, align 4, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !68
  %i.bq = load i32, ptr %i.bd, align 8, !tbaa !53
  %i.br = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i45 = icmp slt i32 %i.bk, %i.br
  br i1 %.not.i.i45, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add i32 %i.bk, 1                        ; 2 uses
  %i.bt = icmp slt i32 %i.br, 0
  br i1 %i.bt, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57, label %bb.n, !prof !23

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i46 = icmp ugt i32 %i.bs, %i.br
  br i1 %.not.i.i.i46, label %.preheader.i.i.i48, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, !prof !23

.preheader.i.i.i48:                               ; preds = %bb.n, %.preheader.i.i.i48
  %.039.i.i.i49 = phi i32 [ %i.bw, %.preheader.i.i.i48 ], [ %i.br, %bb.n ] ; 2 uses
  %i.bu = lshr i32 %.039.i.i.i49, 1
  %i.bv = add i32 %.039.i.i.i49, 8
  %i.bw = add i32 %i.bv, %i.bu                    ; 6 uses
  %i.bx = icmp ugt i32 %i.bs, %i.bw
  br i1 %i.bx, label %.preheader.i.i.i48, label %.thread.i.i.i50, !llvm.loop !2

.thread.i.i.i50:                                  ; preds = %.preheader.i.i.i48
  %i.by = icmp ugt i32 %i.bw, 178956970
  br i1 %i.by, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, label %bb.o, !prof !23

bb.o:                                             ; preds = %.thread.i.i.i50
  %i.bz = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.bw) ; 2 uses
  %.not22.i.i.i51 = icmp eq ptr %i.bz, null
  br i1 %.not22.i.i.i51, label %bb.p, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52, !prof !23

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i53 = icmp ugt i32 %i.bw, %i.ca
  br i1 %.not23.i.i.i53, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54: ; preds = %bb.p, %.thread.i.i.i50
  %.sink.i.ph.in.i.i55 = phi i32 [ %i.br, %.thread.i.i.i50 ], [ %i.ca, %bb.p ]
  %.sink.i.ph.i.i56 = xor i32 %.sink.i.ph.in.i.i55, -1
  store i32 %.sink.i.ph.i.i56, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52: ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !21
  store i32 %i.bw, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52, %bb.p, %bb.n, %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = load i32, ptr %i.bj, align 4, !tbaa !20 ; 2 uses
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bj, align 4, !tbaa !20
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <2 x i32> %i.bm, ptr %i.ch, align 8, !tbaa !61
  store ptr %i.bp, ptr %i.ci, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 %i.bq, ptr %i.cj, align 8, !tbaa !53
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.ck = add i32 %i.bn, -1
  %spec.select.i.i.i.i.i58 = icmp ult i32 %i.ck, -2
  br i1 %spec.select.i.i.i.i.i58, label %bb.q, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

bb.q:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57
  call void @hb_free(ptr noundef %i.bp) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57, %bb.q
  %i.cl = load i32, ptr %4, align 8, !tbaa !16
  %i.cm = add i32 %i.cl, -1
  %spec.select.i.i.i60 = icmp ult i32 %i.cm, -2
  br i1 %spec.select.i.i.i60, label %bb.r, label %_ZN11hb_vector_tIcLb0EED2Ev.exit61

bb.r:                                             ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59
  store i32 0, ptr %i.bl, align 4, !tbaa !14
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.cn) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit61

_ZN11hb_vector_tIcLb0EED2Ev.exit61:               ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EED2Ev.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 2, ptr %i.co, align 8, !tbaa !53
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 38 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 48 uses
  %i.cr = call ptr @hb_realloc(ptr noundef null, i64 noundef 38) #12 ; 3 uses
  %.not22.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not22.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %.pre = load i32, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not23.i.i.i.i = icmp ult i32 %.pre, 38
  br i1 %.not23.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %.pre393 = load ptr, ptr %i.cq, align 8, !tbaa !15
  br label %bb.s

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !15
  store i32 38, ptr %6, align 8, !tbaa !16
  br label %bb.s

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i:      ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %i.cs = xor i32 %.pre, -1                       ; 2 uses
  store i32 %i.cs, ptr %6, align 8, !tbaa !16
  %.pre394 = load i32, ptr %i.cp, align 4, !tbaa !14
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

bb.s:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i
  %i.ct = phi i32 [ %.pre, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ 38, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  %i.cu = phi ptr [ %.pre393, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ %i.cr, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  store i32 33, ptr %i.cp, align 4, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.cu, ptr noundef nonnull readonly align 1 dereferenceable(33) @.str.71, i64 range(i64 0, 103079215081) 33, i1 false), !alias.scope !1035
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

_ZN15hb_vector_buf_t10append_strEPKc.exit:        ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, %bb.s
  %i.cv = phi i32 [ %i.cs, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ %i.ct, %bb.s ] ; 3 uses
  %i.cw = phi i32 [ %.pre394, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ 33, %bb.s ] ; 2 uses
  %i.cx = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.cw, i32 12) ; 2 uses
  %i.cy = extractvalue { i32, i1 } %i.cx, 1
  %i.cz = extractvalue { i32, i1 } %i.cx, 0       ; 4 uses
  %i.da = or i32 %i.cv, %i.cz
  %i.db = icmp slt i32 %i.da, 0
  %or.cond = or i1 %i.cy, %i.db
  br i1 %or.cond, label %_ZN15hb_vector_buf_t10append_strEPKc.exit81, label %bb.t, !prof !64

bb.t:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit
  %.not.i.i.i.i64 = icmp samesign ugt i32 %i.cz, %i.cv
  br i1 %.not.i.i.i.i64, label %.preheader.i.i.i.i67, label %bb.u, !prof !23

.preheader.i.i.i.i67:                             ; preds = %bb.t, %.preheader.i.i.i.i67
  %.053.i.i.i.i68 = phi i32 [ %i.de, %.preheader.i.i.i.i67 ], [ %i.cv, %bb.t ] ; 2 uses
  %i.dc = lshr i32 %.053.i.i.i.i68, 1
  %i.dd = add nuw i32 %.053.i.i.i.i68, 8
  %i.de = add nuw i32 %i.dd, %i.dc                ; 5 uses
  %i.df = icmp ugt i32 %i.cz, %i.de
  br i1 %i.df, label %.preheader.i.i.i.i67, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71, !llvm.loop !0

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71: ; preds = %.preheader.i.i.i.i67
  %i.dg = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.dh = zext i32 %i.de to i64
  %i.di = call ptr @hb_realloc(ptr noundef %i.dg, i64 noundef %i.dh) #12 ; 2 uses
  %.not22.i.i.i.i72 = icmp eq ptr %i.di, null
  br i1 %.not22.i.i.i.i72, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i73, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71
  %i.dj = load i32, ptr %6, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i76 = icmp ugt i32 %i.de, %i.dj
  br i1 %.not23.i.i.i.i76, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i77, label %bb.u

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i73: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71
  store ptr %i.di, ptr %i.cq, align 8, !tbaa !15
  store i32 %i.de, ptr %6, align 8, !tbaa !16
  br label %bb.u

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i77:    ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75
  %i.dk = xor i32 %i.dj, -1
  store i32 %i.dk, ptr %6, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit81

bb.u:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i73, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75, %bb.t
  store i32 %i.cz, ptr %i.cp, align 4, !tbaa !14
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.dm = zext i32 %i.cw to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dn, ptr noundef nonnull readonly align 1 dereferenceable(12) @.str.72, i64 range(i64 0, 103079215081) 12, i1 false), !alias.scope !1036
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit81

_ZN15hb_vector_buf_t10append_strEPKc.exit81:      ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i77, %bb.u
  %.not354 = icmp eq i32 %.sroa.8.1, 0
  br i1 %.not354, label %._crit_edge347, label %.lr.ph346

.lr.ph346:                                        ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit81
  %i.do = load i8, ptr @_hb_NullPool, align 16
  %wide.trip.count379 = zext i32 %.sroa.8.1 to i64
  br label %bb.aw

bb.v:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIcLb0EED2Ev.exit99
  %indvars.iv371 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next372, %_ZN11hb_vector_tIcLb0EED2Ev.exit99 ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIcLb0EED2Ev.exit99 ] ; 2 uses
  %.sroa.14.0341 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.2, %_ZN11hb_vector_tIcLb0EED2Ev.exit99 ] ; 6 uses
  %.sroa.8.0339 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN11hb_vector_tIcLb0EED2Ev.exit99 ] ; 6 uses
  %.sroa.0.0338 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.2, %_ZN11hb_vector_tIcLb0EED2Ev.exit99 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.aw, align 8, !tbaa !53
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !77 ; 2 uses
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %indvars.iv371
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !79
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !79
  call fastcc void @_ZL35hb_pdf_build_interpolation_functionP15hb_vector_buf_tjj(ptr noundef %5, i32 noundef %i.ds, i32 noundef %i.dv)
  %i.dw = load i32, ptr %i.ax, align 4, !tbaa !52 ; 3 uses
  %i.dx = load <2 x i32>, ptr %5, align 8, !tbaa !61
  %i.dy = load i32, ptr %5, align 8, !tbaa !61
  store i32 0, ptr %5, align 8, !tbaa !61
  store i32 0, ptr %i.ay, align 4, !tbaa !61
  %i.dz = load ptr, ptr %i.az, align 8, !tbaa !68 ; 2 uses
  store ptr null, ptr %i.az, align 8, !tbaa !68
  %i.ea = load i32, ptr %i.aw, align 8, !tbaa !53
  %i.eb = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i82 = icmp slt i32 %i.dw, %i.eb
  br i1 %.not.i.i82, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i84, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = add i32 %i.dw, 1                        ; 2 uses
  %i.ed = icmp slt i32 %i.eb, 0
  br i1 %i.ed, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i94, label %bb.x, !prof !23

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i83 = icmp ugt i32 %i.ec, %i.eb
  br i1 %.not.i.i.i83, label %.preheader.i.i.i85, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i84, !prof !23

.preheader.i.i.i85:                               ; preds = %bb.x, %.preheader.i.i.i85
  %.039.i.i.i86 = phi i32 [ %i.eg, %.preheader.i.i.i85 ], [ %i.eb, %bb.x ] ; 2 uses
  %i.ee = lshr i32 %.039.i.i.i86, 1
  %i.ef = add i32 %.039.i.i.i86, 8
  %i.eg = add i32 %i.ef, %i.ee                    ; 6 uses
  %i.eh = icmp ugt i32 %i.ec, %i.eg
  br i1 %i.eh, label %.preheader.i.i.i85, label %.thread.i.i.i87, !llvm.loop !2

.thread.i.i.i87:                                  ; preds = %.preheader.i.i.i85
  %i.ei = icmp ugt i32 %i.eg, 178956970
  br i1 %i.ei, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i91, label %bb.y, !prof !23

bb.y:                                             ; preds = %.thread.i.i.i87
  %i.ej = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.eg) ; 2 uses
  %.not22.i.i.i88 = icmp eq ptr %i.ej, null
  br i1 %.not22.i.i.i88, label %bb.z, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i89, !prof !23

bb.z:                                             ; preds = %bb.y
  %i.ek = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i90 = icmp ugt i32 %i.eg, %i.ek
  br i1 %.not23.i.i.i90, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i91, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i84

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i91: ; preds = %bb.z, %.thread.i.i.i87
  %.sink.i.ph.in.i.i92 = phi i32 [ %i.eb, %.thread.i.i.i87 ], [ %i.ek, %bb.z ]
  %.sink.i.ph.i.i93 = xor i32 %.sink.i.ph.in.i.i92, -1
  store i32 %.sink.i.ph.i.i93, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i94

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i89: ; preds = %bb.y
  store ptr %i.ej, ptr %i.ba, align 8, !tbaa !21
  store i32 %i.eg, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i84

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i84: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i89, %bb.z, %bb.x, %bb.v
  %i.el = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.em = load i32, ptr %i.ax, align 4, !tbaa !20 ; 2 uses
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ax, align 4, !tbaa !20
  %i.eo = zext i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store <2 x i32> %i.dx, ptr %i.ep, align 8, !tbaa !61
  store ptr %i.dz, ptr %i.eq, align 8, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i32 %i.ea, ptr %i.er, align 8, !tbaa !53
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i94: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i91, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.es = add i32 %i.dy, -1
  %spec.select.i.i.i.i.i95 = icmp ult i32 %i.es, -2
  br i1 %spec.select.i.i.i.i.i95, label %bb.aa, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96

bb.aa:                                            ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i94
  call void @hb_free(ptr noundef %i.dz) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i84, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i94, %bb.aa
  %i.et = add i32 %i.dw, 5
  %.not.i97 = icmp slt i32 %.sroa.8.0339, %.sroa.0.0338
  %.pre397 = add i32 %.sroa.8.0339, 1             ; 6 uses
  br i1 %.not.i97, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96
  %i.eu = icmp slt i32 %.sroa.0.0338, 0
  br i1 %i.eu, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %bb.ac, !prof !23

bb.ac:                                            ; preds = %bb.ab
  %.not.i295 = icmp ugt i32 %.pre397, %.sroa.0.0338
  br i1 %.not.i295, label %.preheader.i, label %.critedge.i, !prof !23

.preheader.i:                                     ; preds = %bb.ac, %.preheader.i
  %.043.i = phi i32 [ %i.ex, %.preheader.i ], [ %.sroa.0.0338, %bb.ac ] ; 2 uses
  %i.ev = lshr i32 %.043.i, 1
  %i.ew = add i32 %.043.i, 8
  %i.ex = add i32 %i.ew, %i.ev                    ; 8 uses
  %i.ey = icmp ugt i32 %.pre397, %i.ex
  br i1 %i.ey, label %.preheader.i, label %.thread.i, !llvm.loop !1

.thread.i:                                        ; preds = %.preheader.i
  %i.ez = icmp ugt i32 %i.ex, 1073741823
  br i1 %i.ez, label %.critedge.i298, label %bb.ad, !prof !23

.critedge.i298:                                   ; preds = %.thread.i
  %i.fa = xor i32 %.sroa.0.0338, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

bb.ad:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.0338, 0
  br i1 %.not49.i, label %bb.ae, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.ae:                                            ; preds = %bb.ad
  %.not9.i.i.i = icmp eq ptr %.sroa.14.0341, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = shl nuw i32 %i.ex, 2
  %i.fc = zext i32 %i.fb to i64
  %i.fd = call ptr @hb_malloc(i64 noundef %i.fc) #12 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %7, !prof !23

7:                                                ; preds = %bb.af
  %.not.i.i.i.i297 = icmp eq i32 %.sroa.8.0339, 0
  br i1 %.not.i.i.i.i297, label %.critedge.i, label %bb.ag, !prof !23

bb.ag:                                            ; preds = %7
  %i.fe = zext i32 %.sroa.8.0339 to i64
  %i.ff = shl nuw nsw i64 %i.fe, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull readonly align 1 %.sroa.14.0341, i64 range(i64 0, 103079215081) %i.ff, i1 false), !alias.scope !1037
  br label %.critedge.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.ae, %bb.ad
  %i.fg = phi ptr [ null, %bb.ae ], [ %.sroa.14.0341, %bb.ad ]
  %i.fh = shl nuw i32 %i.ex, 2
  %i.fi = zext i32 %i.fh to i64
  %i.fj = call ptr @hb_realloc(ptr noundef %i.fg, i64 noundef %i.fi) #12 ; 2 uses
  %.not22.i = icmp eq ptr %i.fj, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !60

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.af
  %i.fk = xor i32 %.sroa.0.0338, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.ab, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.critedge.i298
  %.sroa.0.3 = phi i32 [ %.sroa.0.0338, %bb.ab ], [ %i.fk, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.fa, %.critedge.i298 ]
  store i32 %i.bb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96, %7, %bb.ag, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.ac
  %.pre-phi = phi i32 [ %.pre397, %bb.ac ], [ 1, %7 ], [ %.pre397, %bb.ag ], [ %.pre397, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.pre397, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96 ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0338, %bb.ac ], [ %i.ex, %7 ], [ %i.ex, %bb.ag ], [ %i.ex, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.0338, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0341, %bb.ac ], [ %i.fd, %7 ], [ %i.fd, %bb.ag ], [ %i.fj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.14.0341, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit96 ] ; 2 uses
  %i.fl = zext i32 %.sroa.8.0339 to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.1, i64 %i.fl
  store i32 %i.et, ptr %i.fm, align 4, !tbaa !61
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit:   ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, %.critedge.i
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %.critedge.i ], [ %.sroa.0.3, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %.pre-phi, %.critedge.i ], [ %.sroa.8.0339, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %.critedge.i ], [ %.sroa.14.0341, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 3 uses
  %i.fn = load i32, ptr %5, align 8, !tbaa !16
  %i.fo = add i32 %i.fn, -1
  %spec.select.i.i.i98 = icmp ult i32 %i.fo, -2
  br i1 %spec.select.i.i.i98, label %bb.ah, label %_ZN11hb_vector_tIcLb0EED2Ev.exit99

bb.ah:                                            ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit
  store i32 0, ptr %i.ay, align 4, !tbaa !14
  %i.fp = load ptr, ptr %i.az, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.fp) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit99

_ZN11hb_vector_tIcLb0EED2Ev.exit99:               ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i, label %bb.v, !llvm.loop !980

._crit_edge347:                                   ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit162, %_ZN15hb_vector_buf_t10append_strEPKc.exit81
  %i.fq = load i32, ptr %i.cp, align 4, !tbaa !14 ; 2 uses
  %i.fr = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.fq, i32 2) ; 2 uses
  %i.fs = extractvalue { i32, i1 } %i.fr, 1
  %i.ft = extractvalue { i32, i1 } %i.fr, 0       ; 4 uses
  %i.fu = icmp slt i32 %i.ft, 0
  %or.cond.i.i100 = or i1 %i.fs, %i.fu
  br i1 %or.cond.i.i100, label %_ZN15hb_vector_buf_t10append_strEPKc.exit118, label %bb.ai, !prof !62

bb.ai:                                            ; preds = %._crit_edge347
  %i.fv = load i32, ptr %6, align 8, !tbaa !16    ; 4 uses
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %_ZN15hb_vector_buf_t10append_strEPKc.exit118, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i.i101 = icmp samesign ugt i32 %i.ft, %i.fv
  br i1 %.not.i.i.i.i101, label %.preheader.i.i.i.i104, label %bb.ao, !prof !23

.preheader.i.i.i.i104:                            ; preds = %bb.aj, %.preheader.i.i.i.i104
  %.053.i.i.i.i105 = phi i32 [ %i.fz, %.preheader.i.i.i.i104 ], [ %i.fv, %bb.aj ] ; 2 uses
  %i.fx = lshr i32 %.053.i.i.i.i105, 1
  %i.fy = add nuw i32 %.053.i.i.i.i105, 8
  %i.fz = add nuw i32 %i.fy, %i.fx                ; 6 uses
  %i.ga = icmp ugt i32 %i.ft, %i.fz
  br i1 %i.ga, label %.preheader.i.i.i.i104, label %.thread39.i.i.i.i106, !llvm.loop !0

.thread39.i.i.i.i106:                             ; preds = %.preheader.i.i.i.i104
  %.not8.i.i.i.i.i.i107 = icmp eq i32 %i.fv, 0
  %i.gb = load ptr, ptr %i.cq, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i107, label %bb.ak, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i108

bb.ak:                                            ; preds = %.thread39.i.i.i.i106
  %.not9.i.i.i.i.i.i115 = icmp eq ptr %i.gb, null
  br i1 %.not9.i.i.i.i.i.i115, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i108, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = zext i32 %i.fz to i64
  %i.gd = call ptr @hb_malloc(i64 noundef %i.gc) #12 ; 4 uses
  %.not10.i.i.i.i.i.i116 = icmp eq ptr %i.gd, null
  br i1 %.not10.i.i.i.i.i.i116, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i112, label %bb.am, !prof !23

bb.am:                                            ; preds = %bb.al
  %i.ge = load i32, ptr %i.cp, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i117 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i.i117, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i110, label %bb.an, !prof !23

bb.an:                                            ; preds = %bb.am
  %i.gf = zext i32 %i.ge to i64
  %i.gg = load ptr, ptr %i.cq, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gd, ptr readonly align 1 %i.gg, i64 range(i64 0, 103079215081) %i.gf, i1 false), !alias.scope !1038
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i110

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i108: ; preds = %bb.ak, %.thread39.i.i.i.i106
  %i.gh = phi ptr [ null, %bb.ak ], [ %i.gb, %.thread39.i.i.i.i106 ]
  %i.gi = zext i32 %i.fz to i64
  %i.gj = call ptr @hb_realloc(ptr noundef %i.gh, i64 noundef %i.gi) #12 ; 2 uses
  %.not22.i.i.i.i109 = icmp eq ptr %i.gj, null
  br i1 %.not22.i.i.i.i109, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i112, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i110, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i112: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i108, %bb.al
  %i.gk = load i32, ptr %6, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i113 = icmp ugt i32 %i.fz, %i.gk
  br i1 %.not23.i.i.i.i113, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i114, label %bb.ao

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i110: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i108, %bb.an, %bb.am
  %.1.i.i52.i.i.i.i111 = phi ptr [ %i.gj, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i108 ], [ %i.gd, %bb.am ], [ %i.gd, %bb.an ]
  store ptr %.1.i.i52.i.i.i.i111, ptr %i.cq, align 8, !tbaa !15
  store i32 %i.fz, ptr %6, align 8, !tbaa !16
  br label %bb.ao

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i114:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i112
  %i.gl = xor i32 %i.gk, -1
  store i32 %i.gl, ptr %6, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit118

bb.ao:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i110, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i112, %bb.aj
  store i32 %i.ft, ptr %i.cp, align 4, !tbaa !14
  %i.gm = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.gn = zext i32 %i.fq to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  store i16 2653, ptr %i.go, align 1, !alias.scope !1039
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit118

_ZN15hb_vector_buf_t10append_strEPKc.exit118:     ; preds = %._crit_edge347, %bb.ai, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i114, %bb.ao
  %i.gp = load i32, ptr %i.cp, align 4, !tbaa !14 ; 2 uses
  %i.gq = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.gp, i32 9) ; 2 uses
  %i.gr = extractvalue { i32, i1 } %i.gq, 1
  %i.gs = extractvalue { i32, i1 } %i.gq, 0       ; 4 uses
  %i.gt = icmp slt i32 %i.gs, 0
  %or.cond.i.i119 = or i1 %i.gr, %i.gt
  br i1 %or.cond.i.i119, label %.lr.ph349, label %bb.ap, !prof !62

bb.ap:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit118
  %i.gu = load i32, ptr %6, align 8, !tbaa !16    ; 4 uses
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph349, label %bb.aq, !prof !23

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i.i.i120 = icmp samesign ugt i32 %i.gs, %i.gu
  br i1 %.not.i.i.i.i120, label %.preheader.i.i.i.i123, label %bb.av, !prof !23

.preheader.i.i.i.i123:                            ; preds = %bb.aq, %.preheader.i.i.i.i123
  %.053.i.i.i.i124 = phi i32 [ %i.gy, %.preheader.i.i.i.i123 ], [ %i.gu, %bb.aq ] ; 2 uses
  %i.gw = lshr i32 %.053.i.i.i.i124, 1
  %i.gx = add nuw i32 %.053.i.i.i.i124, 8
  %i.gy = add nuw i32 %i.gx, %i.gw                ; 6 uses
  %i.gz = icmp ugt i32 %i.gs, %i.gy
  br i1 %i.gz, label %.preheader.i.i.i.i123, label %.thread39.i.i.i.i125, !llvm.loop !0

.thread39.i.i.i.i125:                             ; preds = %.preheader.i.i.i.i123
  %.not8.i.i.i.i.i.i126 = icmp eq i32 %i.gu, 0
  %i.ha = load ptr, ptr %i.cq, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i126, label %bb.ar, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i127

bb.ar:                                            ; preds = %.thread39.i.i.i.i125
  %.not9.i.i.i.i.i.i134 = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i.i.i.i.i134, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i127, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hb = zext i32 %i.gy to i64
  %i.hc = call ptr @hb_malloc(i64 noundef %i.hb) #12 ; 4 uses
  %.not10.i.i.i.i.i.i135 = icmp eq ptr %i.hc, null
  br i1 %.not10.i.i.i.i.i.i135, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i131, label %bb.at, !prof !23

bb.at:                                            ; preds = %bb.as
  %i.hd = load i32, ptr %i.cp, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i136 = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i136, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i129, label %bb.au, !prof !23

bb.au:                                            ; preds = %bb.at
  %i.he = zext i32 %i.hd to i64
  %i.hf = load ptr, ptr %i.cq, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr readonly align 1 %i.hf, i64 range(i64 0, 103079215081) %i.he, i1 false), !alias.scope !1040
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i129

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i127: ; preds = %bb.ar, %.thread39.i.i.i.i125
  %i.hg = phi ptr [ null, %bb.ar ], [ %i.ha, %.thread39.i.i.i.i125 ]
  %i.hh = zext i32 %i.gy to i64
  %i.hi = call ptr @hb_realloc(ptr noundef %i.hg, i64 noundef %i.hh) #12 ; 2 uses
  %.not22.i.i.i.i128 = icmp eq ptr %i.hi, null
  br i1 %.not22.i.i.i.i128, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i131, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i129, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i131: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i127, %bb.as
  %i.hj = load i32, ptr %6, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i132 = icmp ugt i32 %i.gy, %i.hj
  br i1 %.not23.i.i.i.i132, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i133, label %bb.av

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i129: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i127, %bb.au, %bb.at
  %.1.i.i52.i.i.i.i130 = phi ptr [ %i.hi, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i127 ], [ %i.hc, %bb.at ], [ %i.hc, %bb.au ]
  store ptr %.1.i.i52.i.i.i.i130, ptr %i.cq, align 8, !tbaa !15
  store i32 %i.gy, ptr %6, align 8, !tbaa !16
  br label %bb.av

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i133:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i131
  %i.hk = xor i32 %i.hj, -1
  store i32 %i.hk, ptr %6, align 8, !tbaa !16
  br label %.lr.ph349

bb.av:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i129, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i131, %bb.aq
  store i32 %i.gs, ptr %i.cp, align 4, !tbaa !14
  %i.hl = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.hm = zext i32 %i.gp to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.hn, ptr noundef nonnull readonly align 1 dereferenceable(9) @.str.75, i64 range(i64 0, 103079215081) 9, i1 false), !alias.scope !1041
  br label %.lr.ph349

.lr.ph349:                                        ; preds = %bb.av, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i133, %bb.ap, %_ZN15hb_vector_buf_t10append_strEPKc.exit118
  %i.ho = load i8, ptr @_hb_NullPool, align 16
  %umax388 = call i32 @llvm.umax.i32(i32 %i.b, i32 3)
  %i.hp = add i32 %umax388, -1
  %wide.trip.count389 = zext i32 %i.hp to i64
  br label %bb.ca

bb.aw:                                            ; preds = %.lr.ph346, %_ZN15hb_vector_buf_t10append_strEPKc.exit162
  %indvars.iv376 = phi i64 [ 0, %.lr.ph346 ], [ %indvars.iv.next377, %_ZN15hb_vector_buf_t10append_strEPKc.exit162 ] ; 3 uses
  %.not43 = icmp eq i64 %indvars.iv376, 0
  br i1 %.not43, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load i32, ptr %i.cp, align 4, !tbaa !14 ; 2 uses
  %i.hr = load i32, ptr %6, align 8, !tbaa !16    ; 5 uses
end_hunk_0
begin_hunk_1_@_ZL47hb_pdf_build_alpha_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_t:bb.a
  %i.gb = load <2 x i32>, ptr %3, align 8, !tbaa !61
  %i.gc = load i32, ptr %3, align 8, !tbaa !61
  store i32 0, ptr %3, align 8, !tbaa !61
  store i32 0, ptr %i.dp, align 4, !tbaa !61
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !68 ; 2 uses
  store ptr null, ptr %i.gd, align 8, !tbaa !68
  %i.gf = load i32, ptr %i.db, align 8, !tbaa !53
  %i.gg = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i44 = icmp slt i32 %i.ga, %i.gg
  br i1 %.not.i.i44, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i46, label %bb.an

bb.an:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit349
  %i.gh = add i32 %i.ga, 1                        ; 2 uses
  %i.gi = icmp slt i32 %i.gg, 0
  br i1 %i.gi, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i56, label %bb.ao, !prof !23

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i45 = icmp ugt i32 %i.gh, %i.gg
  br i1 %.not.i.i.i45, label %.preheader.i.i.i47, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i46, !prof !23

.preheader.i.i.i47:                               ; preds = %bb.ao, %.preheader.i.i.i47
  %.039.i.i.i48 = phi i32 [ %i.gl, %.preheader.i.i.i47 ], [ %i.gg, %bb.ao ] ; 2 uses
  %i.gj = lshr i32 %.039.i.i.i48, 1
  %i.gk = add i32 %.039.i.i.i48, 8
  %i.gl = add i32 %i.gk, %i.gj                    ; 6 uses
  %i.gm = icmp ugt i32 %i.gh, %i.gl
  br i1 %i.gm, label %.preheader.i.i.i47, label %.thread.i.i.i49, !llvm.loop !2

.thread.i.i.i49:                                  ; preds = %.preheader.i.i.i47
  %i.gn = icmp ugt i32 %i.gl, 178956970
  br i1 %i.gn, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i53, label %bb.ap, !prof !23

bb.ap:                                            ; preds = %.thread.i.i.i49
  %i.go = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.gl) ; 2 uses
  %.not22.i.i.i50 = icmp eq ptr %i.go, null
  br i1 %.not22.i.i.i50, label %bb.aq, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i51, !prof !23

bb.aq:                                            ; preds = %bb.ap
  %i.gp = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i52 = icmp ugt i32 %i.gl, %i.gp
  br i1 %.not23.i.i.i52, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i53, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i46

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i53: ; preds = %bb.aq, %.thread.i.i.i49
  %.sink.i.ph.in.i.i54 = phi i32 [ %i.gg, %.thread.i.i.i49 ], [ %i.gp, %bb.aq ]
  %.sink.i.ph.i.i55 = xor i32 %.sink.i.ph.in.i.i54, -1
  store i32 %.sink.i.ph.i.i55, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i56

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i51: ; preds = %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.go, ptr %i.gq, align 8, !tbaa !21
  store i32 %i.gl, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i46

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i46: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i51, %bb.aq, %bb.ao, %_ZN15hb_vector_buf_t10append_strEPKc.exit349
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !21
  %i.gt = load i32, ptr %i.fz, align 4, !tbaa !20 ; 2 uses
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.fz, align 4, !tbaa !20
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gv ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store <2 x i32> %i.gb, ptr %i.gw, align 8, !tbaa !61
  store ptr %i.ge, ptr %i.gx, align 8, !tbaa !15
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i32 %i.gf, ptr %i.gy, align 8, !tbaa !53
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit58

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i56: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i53, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.gz = add i32 %i.gc, -1
  %spec.select.i.i.i.i.i57 = icmp ult i32 %i.gz, -2
  br i1 %spec.select.i.i.i.i.i57, label %bb.ar, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit58

bb.ar:                                            ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i56
  call void @hb_free(ptr noundef %i.ge) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit58

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit58: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i46, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i56, %bb.ar
  %i.ha = load i32, ptr %3, align 8, !tbaa !16
  %i.hb = add i32 %i.ha, -1
  %spec.select.i.i.i59 = icmp ult i32 %i.hb, -2
  br i1 %spec.select.i.i.i59, label %bb.as, label %_ZN11hb_vector_tIcLb0EED2Ev.exit60

bb.as:                                            ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit58
  store i32 0, ptr %i.dp, align 4, !tbaa !14
  %i.hc = load ptr, ptr %i.gd, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.hc) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit60

_ZN11hb_vector_tIcLb0EED2Ev.exit60:               ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit58, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EED2Ev.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 16, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 2, ptr %i.hd, align 8, !tbaa !53
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 32 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 40 uses
  %i.hg = call ptr @hb_realloc(ptr noundef null, i64 noundef 38) #12 ; 3 uses
  %.not22.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not22.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %.pre601 = load i32, ptr %5, align 8, !tbaa !16 ; 3 uses
  %.not23.i.i.i.i = icmp ult i32 %.pre601, 38
  br i1 %.not23.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %.pre602 = load ptr, ptr %i.hf, align 8, !tbaa !15
  br label %bb.at

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !15
  store i32 38, ptr %5, align 8, !tbaa !16
  br label %bb.at

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i:      ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %i.hh = xor i32 %.pre601, -1                    ; 2 uses
  store i32 %i.hh, ptr %5, align 8, !tbaa !16
  %.pre603 = load i32, ptr %i.he, align 4, !tbaa !14
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

bb.at:                                            ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i
  %i.hi = phi i32 [ %.pre601, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ 38, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  %i.hj = phi ptr [ %.pre602, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ %i.hg, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  store i32 33, ptr %i.he, align 4, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.hj, ptr noundef nonnull readonly align 1 dereferenceable(33) @.str.71, i64 range(i64 0, 103079215081) 33, i1 false), !alias.scope !1173
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

_ZN15hb_vector_buf_t10append_strEPKc.exit:        ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, %bb.at
  %i.hk = phi i32 [ %i.hh, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ %i.hi, %bb.at ] ; 3 uses
  %i.hl = phi i32 [ %.pre603, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ 33, %bb.at ] ; 2 uses
  %i.hm = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.hl, i32 12) ; 2 uses
  %i.hn = extractvalue { i32, i1 } %i.hm, 1
  %i.ho = extractvalue { i32, i1 } %i.hm, 0       ; 4 uses
  %i.hp = or i32 %i.hk, %i.ho
  %i.hq = icmp slt i32 %i.hp, 0
  %or.cond = or i1 %i.hn, %i.hq
  br i1 %or.cond, label %_ZN15hb_vector_buf_t10append_strEPKc.exit80, label %bb.au, !prof !64

bb.au:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit
  %.not.i.i.i.i63 = icmp samesign ugt i32 %i.ho, %i.hk
  br i1 %.not.i.i.i.i63, label %.preheader.i.i.i.i66, label %bb.av, !prof !23

.preheader.i.i.i.i66:                             ; preds = %bb.au, %.preheader.i.i.i.i66
  %.053.i.i.i.i67 = phi i32 [ %i.ht, %.preheader.i.i.i.i66 ], [ %i.hk, %bb.au ] ; 2 uses
  %i.hr = lshr i32 %.053.i.i.i.i67, 1
  %i.hs = add nuw i32 %.053.i.i.i.i67, 8
  %i.ht = add nuw i32 %i.hs, %i.hr                ; 5 uses
  %i.hu = icmp ugt i32 %i.ho, %i.ht
  br i1 %i.hu, label %.preheader.i.i.i.i66, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i70, !llvm.loop !0

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i70: ; preds = %.preheader.i.i.i.i66
  %i.hv = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.hw = zext i32 %i.ht to i64
  %i.hx = call ptr @hb_realloc(ptr noundef %i.hv, i64 noundef %i.hw) #12 ; 2 uses
  %.not22.i.i.i.i71 = icmp eq ptr %i.hx, null
  br i1 %.not22.i.i.i.i71, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i74, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i72, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i74: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i70
  %i.hy = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i75 = icmp ugt i32 %i.ht, %i.hy
  br i1 %.not23.i.i.i.i75, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i76, label %bb.av

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i72: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i70
  store ptr %i.hx, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.ht, ptr %5, align 8, !tbaa !16
  br label %bb.av

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i76:    ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i74
  %i.hz = xor i32 %i.hy, -1
  store i32 %i.hz, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit80

bb.av:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i72, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i74, %bb.au
  store i32 %i.ho, ptr %i.he, align 4, !tbaa !14
  %i.ia = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.ib = zext i32 %i.hl to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ic, ptr noundef nonnull readonly align 1 dereferenceable(12) @.str.72, i64 range(i64 0, 103079215081) 12, i1 false), !alias.scope !1174
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit80

_ZN15hb_vector_buf_t10append_strEPKc.exit80:      ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i76, %bb.av
  %.not550 = icmp eq i32 %.sroa.8.1, 0
  br i1 %.not550, label %._crit_edge543, label %.lr.ph542

.lr.ph542:                                        ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit80
  %i.id = load i8, ptr @_hb_NullPool, align 16
  %wide.trip.count585 = zext i32 %.sroa.8.1 to i64
  br label %bb.cg

.preheader.i.i.i.i468.preheader:                  ; preds = %.lr.ph, %_ZN11hb_vector_tIcLb0EED2Ev.exit97
  %indvars.iv577 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next578, %_ZN11hb_vector_tIcLb0EED2Ev.exit97 ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIcLb0EED2Ev.exit97 ] ; 2 uses
  %.sroa.14.0537 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.2, %_ZN11hb_vector_tIcLb0EED2Ev.exit97 ] ; 6 uses
  %.sroa.8.0535 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN11hb_vector_tIcLb0EED2Ev.exit97 ] ; 6 uses
  %.sroa.0.0534 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.2, %_ZN11hb_vector_tIcLb0EED2Ev.exit97 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.ct, align 8, !tbaa !53
  %i.ie = load ptr, ptr %i.cu, align 8, !tbaa !77 ; 2 uses
  %i.if = getelementptr inbounds nuw [12 x i8], ptr %i.ie, i64 %indvars.iv577
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !79
  %i.ii = getelementptr inbounds nuw [12 x i8], ptr %i.ie, i64 %indvars.iv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !79
  %i.il = and i32 %i.ik, 255
  %i.im = and i32 %i.ih, 255
  %i.in = uitofp nneg i32 %i.il to float
  %i.io = uitofp nneg i32 %i.im to float
  %i.ip = insertelement <2 x float> poison, float %i.io, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.in, i64 1
  %i.ir = fdiv <2 x float> %i.iq, splat (float 2.550000e+02) ; 2 uses
  %i.is = call ptr @hb_realloc(ptr noundef null, i64 noundef 38) #12 ; 3 uses
  %.not22.i.i.i.i473 = icmp eq ptr %i.is, null
  br i1 %.not22.i.i.i.i473, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i474, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476: ; preds = %.preheader.i.i.i.i468.preheader
  %.pre = load i32, ptr %4, align 8, !tbaa !16    ; 3 uses
  %.not23.i.i.i.i477 = icmp ult i32 %.pre, 38
  br i1 %.not23.i.i.i.i477, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i478, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476._crit_edge

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476._crit_edge: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476
  %.pre599 = load ptr, ptr %i.cw, align 8, !tbaa !15
  br label %bb.aw

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i474: ; preds = %.preheader.i.i.i.i468.preheader
  store ptr %i.is, ptr %i.cw, align 8, !tbaa !15
  store i32 38, ptr %4, align 8, !tbaa !16
  br label %bb.aw

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i478:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476
  %i.it = xor i32 %.pre, -1                       ; 2 uses
  store i32 %i.it, ptr %4, align 8, !tbaa !16
  %.pre600 = load i32, ptr %i.cv, align 4, !tbaa !14
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit482

bb.aw:                                            ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476._crit_edge, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i474
  %i.iu = phi i32 [ %.pre, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476._crit_edge ], [ 38, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i474 ]
  %i.iv = phi ptr [ %.pre599, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i476._crit_edge ], [ %i.is, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i474 ]
  store i32 38, ptr %i.cv, align 4, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.iv, ptr noundef nonnull readonly align 1 dereferenceable(38) @.str.79, i64 range(i64 0, 103079215081) 38, i1 false), !alias.scope !1175
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit482

_ZN15hb_vector_buf_t10append_strEPKc.exit482:     ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i478, %bb.aw
  %i.iw = phi i32 [ %i.iu, %bb.aw ], [ %i.it, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i478 ] ; 3 uses
  %i.ix = phi i32 [ 38, %bb.aw ], [ %.pre600, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i478 ] ; 2 uses
  %i.iy = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ix, i32 5) ; 2 uses
  %i.iz = extractvalue { i32, i1 } %i.iy, 1
  %i.ja = extractvalue { i32, i1 } %i.iy, 0       ; 4 uses
  %i.jb = or i32 %i.iw, %i.ja
  %i.jc = icmp slt i32 %i.jb, 0
  %or.cond808 = or i1 %i.iz, %i.jc
  br i1 %or.cond808, label %_ZN15hb_vector_buf_t10append_strEPKc.exit463, label %bb.ax, !prof !64

bb.ax:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit482
  %.not.i.i.i.i446 = icmp samesign ugt i32 %i.ja, %i.iw
  br i1 %.not.i.i.i.i446, label %.preheader.i.i.i.i449, label %bb.ay, !prof !23

.preheader.i.i.i.i449:                            ; preds = %bb.ax, %.preheader.i.i.i.i449
  %.053.i.i.i.i450 = phi i32 [ %i.jf, %.preheader.i.i.i.i449 ], [ %i.iw, %bb.ax ] ; 2 uses
  %i.jd = lshr i32 %.053.i.i.i.i450, 1
  %i.je = add nuw i32 %.053.i.i.i.i450, 8
  %i.jf = add nuw i32 %i.je, %i.jd                ; 5 uses
  %i.jg = icmp ugt i32 %i.ja, %i.jf
  br i1 %i.jg, label %.preheader.i.i.i.i449, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i453, !llvm.loop !0

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i453: ; preds = %.preheader.i.i.i.i449
  %i.jh = load ptr, ptr %i.cw, align 8, !tbaa !15
  %i.ji = zext i32 %i.jf to i64
  %i.jj = call ptr @hb_realloc(ptr noundef %i.jh, i64 noundef %i.ji) #12 ; 2 uses
  %.not22.i.i.i.i454 = icmp eq ptr %i.jj, null
  br i1 %.not22.i.i.i.i454, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i457, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i455, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i457: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i453
  %i.jk = load i32, ptr %4, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i458 = icmp ugt i32 %i.jf, %i.jk
  br i1 %.not23.i.i.i.i458, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i459, label %bb.ay

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i455: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i453
  store ptr %i.jj, ptr %i.cw, align 8, !tbaa !15
  store i32 %i.jf, ptr %4, align 8, !tbaa !16
  br label %bb.ay

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i459:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i457
  %i.jl = xor i32 %i.jk, -1
  store i32 %i.jl, ptr %4, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit463

bb.ay:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i455, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i457, %bb.ax
  store i32 %i.ja, ptr %i.cv, align 4, !tbaa !14
  %i.jm = load ptr, ptr %i.cw, align 8, !tbaa !15
  %i.jn = zext i32 %i.ix to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.jo, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.80, i64 range(i64 0, 103079215081) 5, i1 false), !alias.scope !1176
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit463

_ZN15hb_vector_buf_t10append_strEPKc.exit463:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit482, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i459, %bb.ay
  %i.jp = extractelement <2 x float> %i.ir, i64 0
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %4, float noundef %i.jp, i32 noundef 4)
  %i.jq = load i32, ptr %i.cv, align 4, !tbaa !14 ; 2 uses
  %i.jr = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.jq, i32 7) ; 2 uses
  %i.js = extractvalue { i32, i1 } %i.jr, 1
  %i.jt = extractvalue { i32, i1 } %i.jr, 0       ; 4 uses
  %i.ju = icmp slt i32 %i.jt, 0
  %or.cond.i.i426 = or i1 %i.js, %i.ju
  br i1 %or.cond.i.i426, label %_ZN15hb_vector_buf_t10append_strEPKc.exit444, label %bb.az, !prof !62

bb.az:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit463
  %i.jv = load i32, ptr %4, align 8, !tbaa !16    ; 4 uses
  %i.jw = icmp slt i32 %i.jv, 0
  br i1 %i.jw, label %_ZN15hb_vector_buf_t10append_strEPKc.exit444, label %bb.ba, !prof !23

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i427 = icmp samesign ugt i32 %i.jt, %i.jv
  br i1 %.not.i.i.i.i427, label %.preheader.i.i.i.i430, label %bb.bf, !prof !23

.preheader.i.i.i.i430:                            ; preds = %bb.ba, %.preheader.i.i.i.i430
  %.053.i.i.i.i431 = phi i32 [ %i.jz, %.preheader.i.i.i.i430 ], [ %i.jv, %bb.ba ] ; 2 uses
  %i.jx = lshr i32 %.053.i.i.i.i431, 1
  %i.jy = add nuw i32 %.053.i.i.i.i431, 8
  %i.jz = add nuw i32 %i.jy, %i.jx                ; 6 uses
  %i.ka = icmp ugt i32 %i.jt, %i.jz
  br i1 %i.ka, label %.preheader.i.i.i.i430, label %.thread39.i.i.i.i432, !llvm.loop !0

.thread39.i.i.i.i432:                             ; preds = %.preheader.i.i.i.i430
  %.not8.i.i.i.i.i.i433 = icmp eq i32 %i.jv, 0
  %i.kb = load ptr, ptr %i.cw, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i433, label %bb.bb, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i434

bb.bb:                                            ; preds = %.thread39.i.i.i.i432
  %.not9.i.i.i.i.i.i441 = icmp eq ptr %i.kb, null
  br i1 %.not9.i.i.i.i.i.i441, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i434, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kc = zext i32 %i.jz to i64
  %i.kd = call ptr @hb_malloc(i64 noundef %i.kc) #12 ; 4 uses
  %.not10.i.i.i.i.i.i442 = icmp eq ptr %i.kd, null
  br i1 %.not10.i.i.i.i.i.i442, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i438, label %bb.bd, !prof !23

bb.bd:                                            ; preds = %bb.bc
  %i.ke = load i32, ptr %i.cv, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i443 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i.i.i.i.i443, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i436, label %bb.be, !prof !23

bb.be:                                            ; preds = %bb.bd
  %i.kf = zext i32 %i.ke to i64
  %i.kg = load ptr, ptr %i.cw, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr readonly align 1 %i.kg, i64 range(i64 0, 103079215081) %i.kf, i1 false), !alias.scope !1177
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i436

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i434: ; preds = %bb.bb, %.thread39.i.i.i.i432
  %i.kh = phi ptr [ null, %bb.bb ], [ %i.kb, %.thread39.i.i.i.i432 ]
  %i.ki = zext i32 %i.jz to i64
  %i.kj = call ptr @hb_realloc(ptr noundef %i.kh, i64 noundef %i.ki) #12 ; 2 uses
  %.not22.i.i.i.i435 = icmp eq ptr %i.kj, null
  br i1 %.not22.i.i.i.i435, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i438, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i436, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i438: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i434, %bb.bc
  %i.kk = load i32, ptr %4, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i439 = icmp ugt i32 %i.jz, %i.kk
  br i1 %.not23.i.i.i.i439, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i440, label %bb.bf

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i436: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i434, %bb.be, %bb.bd
  %.1.i.i52.i.i.i.i437 = phi ptr [ %i.kj, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i434 ], [ %i.kd, %bb.bd ], [ %i.kd, %bb.be ]
  store ptr %.1.i.i52.i.i.i.i437, ptr %i.cw, align 8, !tbaa !15
  store i32 %i.jz, ptr %4, align 8, !tbaa !16
  br label %bb.bf

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i440:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i438
  %i.kl = xor i32 %i.kk, -1
  store i32 %i.kl, ptr %4, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit444

bb.bf:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i436, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i438, %bb.ba
  store i32 %i.jt, ptr %i.cv, align 4, !tbaa !14
  %i.km = load ptr, ptr %i.cw, align 8, !tbaa !15
  %i.kn = zext i32 %i.jq to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ko, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.81, i64 range(i64 0, 103079215081) 7, i1 false), !alias.scope !1178
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit444

_ZN15hb_vector_buf_t10append_strEPKc.exit444:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit463, %bb.az, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i440, %bb.bf
  %i.kp = extractelement <2 x float> %i.ir, i64 1
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %4, float noundef %i.kp, i32 noundef 4)
  %i.kq = load i32, ptr %i.cv, align 4, !tbaa !14 ; 2 uses
  %i.kr = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.kq, i32 4) ; 2 uses
  %i.ks = extractvalue { i32, i1 } %i.kr, 1
  %i.kt = extractvalue { i32, i1 } %i.kr, 0       ; 4 uses
  %i.ku = icmp slt i32 %i.kt, 0
  %or.cond.i.i407 = or i1 %i.ks, %i.ku
  br i1 %or.cond.i.i407, label %_ZN15hb_vector_buf_t10append_strEPKc.exit425, label %bb.bg, !prof !62

bb.bg:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit444
  %i.kv = load i32, ptr %4, align 8, !tbaa !16    ; 4 uses
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %_ZN15hb_vector_buf_t10append_strEPKc.exit425, label %bb.bh, !prof !23

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i.i408 = icmp samesign ugt i32 %i.kt, %i.kv
  br i1 %.not.i.i.i.i408, label %.preheader.i.i.i.i411, label %bb.bm, !prof !23

.preheader.i.i.i.i411:                            ; preds = %bb.bh, %.preheader.i.i.i.i411
  %.053.i.i.i.i412 = phi i32 [ %i.kz, %.preheader.i.i.i.i411 ], [ %i.kv, %bb.bh ] ; 2 uses
  %i.kx = lshr i32 %.053.i.i.i.i412, 1
  %i.ky = add nuw i32 %.053.i.i.i.i412, 8
  %i.kz = add nuw i32 %i.ky, %i.kx                ; 6 uses
  %i.la = icmp ugt i32 %i.kt, %i.kz
  br i1 %i.la, label %.preheader.i.i.i.i411, label %.thread39.i.i.i.i413, !llvm.loop !0

.thread39.i.i.i.i413:                             ; preds = %.preheader.i.i.i.i411
  %.not8.i.i.i.i.i.i414 = icmp eq i32 %i.kv, 0
  %i.lb = load ptr, ptr %i.cw, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i414, label %bb.bi, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i415

bb.bi:                                            ; preds = %.thread39.i.i.i.i413
  %.not9.i.i.i.i.i.i422 = icmp eq ptr %i.lb, null
  br i1 %.not9.i.i.i.i.i.i422, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i415, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lc = zext i32 %i.kz to i64
  %i.ld = call ptr @hb_malloc(i64 noundef %i.lc) #12 ; 4 uses
  %.not10.i.i.i.i.i.i423 = icmp eq ptr %i.ld, null
  br i1 %.not10.i.i.i.i.i.i423, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i419, label %bb.bk, !prof !23

bb.bk:                                            ; preds = %bb.bj
  %i.le = load i32, ptr %i.cv, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i424 = icmp eq i32 %i.le, 0
  br i1 %.not.i.i.i.i.i.i.i424, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i417, label %bb.bl, !prof !23

bb.bl:                                            ; preds = %bb.bk
  %i.lf = zext i32 %i.le to i64
  %i.lg = load ptr, ptr %i.cw, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr readonly align 1 %i.lg, i64 range(i64 0, 103079215081) %i.lf, i1 false), !alias.scope !1179
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i417

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i415: ; preds = %bb.bi, %.thread39.i.i.i.i413
  %i.lh = phi ptr [ null, %bb.bi ], [ %i.lb, %.thread39.i.i.i.i413 ]
  %i.li = zext i32 %i.kz to i64
  %i.lj = call ptr @hb_realloc(ptr noundef %i.lh, i64 noundef %i.li) #12 ; 2 uses
  %.not22.i.i.i.i416 = icmp eq ptr %i.lj, null
  br i1 %.not22.i.i.i.i416, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i419, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i417, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i419: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i415, %bb.bj
  %i.lk = load i32, ptr %4, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i420 = icmp ugt i32 %i.kz, %i.lk
  br i1 %.not23.i.i.i.i420, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i421, label %bb.bm

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i417: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i415, %bb.bl, %bb.bk
  %.1.i.i52.i.i.i.i418 = phi ptr [ %i.lj, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i415 ], [ %i.ld, %bb.bk ], [ %i.ld, %bb.bl ]
  store ptr %.1.i.i52.i.i.i.i418, ptr %i.cw, align 8, !tbaa !15
  store i32 %i.kz, ptr %4, align 8, !tbaa !16
  br label %bb.bm

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i421:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i419
  %i.ll = xor i32 %i.lk, -1
  store i32 %i.ll, ptr %4, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit425

bb.bm:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i417, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i419, %bb.bh
  store i32 %i.kt, ptr %i.cv, align 4, !tbaa !14
  %i.lm = load ptr, ptr %i.cw, align 8, !tbaa !15
  %i.ln = zext i32 %i.kq to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ln
  store i32 1044258909, ptr %i.lo, align 1, !alias.scope !1180
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit425

_ZN15hb_vector_buf_t10append_strEPKc.exit425:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit444, %bb.bg, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i421, %bb.bm
  %i.lp = load i32, ptr %i.cx, align 4, !tbaa !52 ; 3 uses
  %i.lq = load <2 x i32>, ptr %4, align 8, !tbaa !61
  %i.lr = load i32, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %i.cv, align 4, !tbaa !61
  %i.ls = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 2 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !68
  %i.lt = load i32, ptr %i.ct, align 8, !tbaa !53
  %i.lu = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i81 = icmp slt i32 %i.lp, %i.lu
  br i1 %.not.i.i81, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i83, label %bb.bn

bb.bn:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit425
  %i.lv = add i32 %i.lp, 1                        ; 2 uses
  %i.lw = icmp slt i32 %i.lu, 0
  br i1 %i.lw, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93, label %bb.bo, !prof !23

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i.i82 = icmp ugt i32 %i.lv, %i.lu
  br i1 %.not.i.i.i82, label %.preheader.i.i.i84, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i83, !prof !23

.preheader.i.i.i84:                               ; preds = %bb.bo, %.preheader.i.i.i84
  %.039.i.i.i85 = phi i32 [ %i.lz, %.preheader.i.i.i84 ], [ %i.lu, %bb.bo ] ; 2 uses
  %i.lx = lshr i32 %.039.i.i.i85, 1
  %i.ly = add i32 %.039.i.i.i85, 8
  %i.lz = add i32 %i.ly, %i.lx                    ; 6 uses
  %i.ma = icmp ugt i32 %i.lv, %i.lz
  br i1 %i.ma, label %.preheader.i.i.i84, label %.thread.i.i.i86, !llvm.loop !2

.thread.i.i.i86:                                  ; preds = %.preheader.i.i.i84
  %i.mb = icmp ugt i32 %i.lz, 178956970
  br i1 %i.mb, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i90, label %bb.bp, !prof !23

bb.bp:                                            ; preds = %.thread.i.i.i86
  %i.mc = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.lz) ; 2 uses
  %.not22.i.i.i87 = icmp eq ptr %i.mc, null
  br i1 %.not22.i.i.i87, label %bb.bq, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i88, !prof !23

bb.bq:                                            ; preds = %bb.bp
  %i.md = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i89 = icmp ugt i32 %i.lz, %i.md
  br i1 %.not23.i.i.i89, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i90, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i83

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i90: ; preds = %bb.bq, %.thread.i.i.i86
  %.sink.i.ph.in.i.i91 = phi i32 [ %i.lu, %.thread.i.i.i86 ], [ %i.md, %bb.bq ]
  %.sink.i.ph.i.i92 = xor i32 %.sink.i.ph.in.i.i91, -1
  store i32 %.sink.i.ph.i.i92, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i88: ; preds = %bb.bp
  store ptr %i.mc, ptr %i.cy, align 8, !tbaa !21
  store i32 %i.lz, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i83

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i83: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i88, %bb.bq, %bb.bo, %_ZN15hb_vector_buf_t10append_strEPKc.exit425
  %i.me = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.mf = load i32, ptr %i.cx, align 4, !tbaa !20 ; 2 uses
  %i.mg = add i32 %i.mf, 1
  store i32 %i.mg, ptr %i.cx, align 4, !tbaa !20
  %i.mh = zext i32 %i.mf to i64
  %i.mi = getelementptr inbounds nuw [24 x i8], ptr %i.me, i64 %i.mh ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store <2 x i32> %i.lq, ptr %i.mi, align 8, !tbaa !61
  store ptr %i.ls, ptr %i.mj, align 8, !tbaa !15
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store i32 %i.lt, ptr %i.mk, align 8, !tbaa !53
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i90, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.ml = add i32 %i.lr, -1
  %spec.select.i.i.i.i.i94 = icmp ult i32 %i.ml, -2
  br i1 %spec.select.i.i.i.i.i94, label %bb.br, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95

bb.br:                                            ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93
  call void @hb_free(ptr noundef %i.ls) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i83, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93, %bb.br
  %i.mm = add i32 %i.lp, 5
  %.not.i = icmp slt i32 %.sroa.8.0535, %.sroa.0.0534
  %.pre607 = add i32 %.sroa.8.0535, 1             ; 6 uses
  br i1 %.not.i, label %.critedge.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95
  %i.mn = icmp slt i32 %.sroa.0.0534, 0
  br i1 %i.mn, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %bb.bt, !prof !23

bb.bt:                                            ; preds = %bb.bs
  %.not.i483 = icmp ugt i32 %.pre607, %.sroa.0.0534
  br i1 %.not.i483, label %.preheader.i, label %.critedge.i, !prof !23

.preheader.i:                                     ; preds = %bb.bt, %.preheader.i
  %.043.i = phi i32 [ %i.mq, %.preheader.i ], [ %.sroa.0.0534, %bb.bt ] ; 2 uses
  %i.mo = lshr i32 %.043.i, 1
  %i.mp = add i32 %.043.i, 8
  %i.mq = add i32 %i.mp, %i.mo                    ; 8 uses
  %i.mr = icmp ugt i32 %.pre607, %i.mq
  br i1 %i.mr, label %.preheader.i, label %.thread.i, !llvm.loop !1

.thread.i:                                        ; preds = %.preheader.i
  %i.ms = icmp ugt i32 %i.mq, 1073741823
  br i1 %i.ms, label %.critedge.i486, label %bb.bu, !prof !23

.critedge.i486:                                   ; preds = %.thread.i
  %i.mt = xor i32 %.sroa.0.0534, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

bb.bu:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.0534, 0
  br i1 %.not49.i, label %bb.bv, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.bv:                                            ; preds = %bb.bu
  %.not9.i.i.i = icmp eq ptr %.sroa.14.0537, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mu = shl nuw i32 %i.mq, 2
  %i.mv = zext i32 %i.mu to i64
  %i.mw = call ptr @hb_malloc(i64 noundef %i.mv) #12 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.mw, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %6, !prof !23

6:                                                ; preds = %bb.bw
  %.not.i.i.i.i485 = icmp eq i32 %.sroa.8.0535, 0
  br i1 %.not.i.i.i.i485, label %.critedge.i, label %bb.bx, !prof !23

bb.bx:                                            ; preds = %6
  %i.mx = zext i32 %.sroa.8.0535 to i64
  %i.my = shl nuw nsw i64 %i.mx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mw, ptr nonnull readonly align 1 %.sroa.14.0537, i64 range(i64 0, 103079215081) %i.my, i1 false), !alias.scope !1181
  br label %.critedge.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.bv, %bb.bu
  %i.mz = phi ptr [ null, %bb.bv ], [ %.sroa.14.0537, %bb.bu ]
  %i.na = shl nuw i32 %i.mq, 2
  %i.nb = zext i32 %i.na to i64
  %i.nc = call ptr @hb_realloc(ptr noundef %i.mz, i64 noundef %i.nb) #12 ; 2 uses
  %.not22.i = icmp eq ptr %i.nc, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !60

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.bw
  %i.nd = xor i32 %.sroa.0.0534, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.bs, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.critedge.i486
  %.sroa.0.3 = phi i32 [ %.sroa.0.0534, %bb.bs ], [ %i.nd, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.mt, %.critedge.i486 ]
  store i32 %i.cz, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95, %6, %bb.bx, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.bt
  %.pre-phi = phi i32 [ %.pre607, %bb.bt ], [ 1, %6 ], [ %.pre607, %bb.bx ], [ %.pre607, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.pre607, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95 ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0534, %bb.bt ], [ %i.mq, %6 ], [ %i.mq, %bb.bx ], [ %i.mq, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.0534, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0537, %bb.bt ], [ %i.mw, %6 ], [ %i.mw, %bb.bx ], [ %i.nc, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.14.0537, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95 ] ; 2 uses
  %i.ne = zext i32 %.sroa.8.0535 to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.1, i64 %i.ne
  store i32 %i.mm, ptr %i.nf, align 4, !tbaa !61
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit:   ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, %.critedge.i
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %.critedge.i ], [ %.sroa.0.3, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %.pre-phi, %.critedge.i ], [ %.sroa.8.0535, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %.critedge.i ], [ %.sroa.14.0537, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 3 uses
  %i.ng = load i32, ptr %4, align 8, !tbaa !16
  %i.nh = add i32 %i.ng, -1
  %spec.select.i.i.i96 = icmp ult i32 %i.nh, -2
  br i1 %spec.select.i.i.i96, label %bb.by, label %_ZN11hb_vector_tIcLb0EED2Ev.exit97

bb.by:                                            ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit
  store i32 0, ptr %i.cv, align 4, !tbaa !14
  %i.ni = load ptr, ptr %i.cw, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.ni) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit97

_ZN11hb_vector_tIcLb0EED2Ev.exit97:               ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i, label %.preheader.i.i.i.i468.preheader, !llvm.loop !1118

._crit_edge543:                                   ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit141, %_ZN15hb_vector_buf_t10append_strEPKc.exit80
  %i.nj = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.nk = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.nj, i32 11) ; 2 uses
  %i.nl = extractvalue { i32, i1 } %i.nk, 1
  %i.nm = extractvalue { i32, i1 } %i.nk, 0       ; 4 uses
  %i.nn = icmp slt i32 %i.nm, 0
  %or.cond.i.i98 = or i1 %i.nl, %i.nn
  br i1 %or.cond.i.i98, label %.lr.ph545, label %bb.bz, !prof !62

bb.bz:                                            ; preds = %._crit_edge543
  %i.no = load i32, ptr %5, align 8, !tbaa !16    ; 4 uses
  %i.np = icmp slt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph545, label %bb.ca, !prof !23

bb.ca:                                            ; preds = %bb.bz
  %.not.i.i.i.i99 = icmp samesign ugt i32 %i.nm, %i.no
  br i1 %.not.i.i.i.i99, label %.preheader.i.i.i.i102, label %bb.cf, !prof !23

.preheader.i.i.i.i102:                            ; preds = %bb.ca, %.preheader.i.i.i.i102
  %.053.i.i.i.i103 = phi i32 [ %i.ns, %.preheader.i.i.i.i102 ], [ %i.no, %bb.ca ] ; 2 uses
  %i.nq = lshr i32 %.053.i.i.i.i103, 1
  %i.nr = add nuw i32 %.053.i.i.i.i103, 8
  %i.ns = add nuw i32 %i.nr, %i.nq                ; 6 uses
  %i.nt = icmp ugt i32 %i.nm, %i.ns
  br i1 %i.nt, label %.preheader.i.i.i.i102, label %.thread39.i.i.i.i104, !llvm.loop !0

.thread39.i.i.i.i104:                             ; preds = %.preheader.i.i.i.i102
  %.not8.i.i.i.i.i.i105 = icmp eq i32 %i.no, 0
  %i.nu = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i105, label %bb.cb, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106

bb.cb:                                            ; preds = %.thread39.i.i.i.i104
  %.not9.i.i.i.i.i.i113 = icmp eq ptr %i.nu, null
  br i1 %.not9.i.i.i.i.i.i113, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nv = zext i32 %i.ns to i64
  %i.nw = call ptr @hb_malloc(i64 noundef %i.nv) #12 ; 4 uses
  %.not10.i.i.i.i.i.i114 = icmp eq ptr %i.nw, null
  br i1 %.not10.i.i.i.i.i.i114, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110, label %bb.cd, !prof !23

bb.cd:                                            ; preds = %bb.cc
  %i.nx = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i115 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i.i.i.i.i.i115, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108, label %bb.ce, !prof !23

bb.ce:                                            ; preds = %bb.cd
  %i.ny = zext i32 %i.nx to i64
  %i.nz = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nw, ptr readonly align 1 %i.nz, i64 range(i64 0, 103079215081) %i.ny, i1 false), !alias.scope !1182
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106: ; preds = %bb.cb, %.thread39.i.i.i.i104
  %i.oa = phi ptr [ null, %bb.cb ], [ %i.nu, %.thread39.i.i.i.i104 ]
  %i.ob = zext i32 %i.ns to i64
  %i.oc = call ptr @hb_realloc(ptr noundef %i.oa, i64 noundef %i.ob) #12 ; 2 uses
  %.not22.i.i.i.i107 = icmp eq ptr %i.oc, null
  br i1 %.not22.i.i.i.i107, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106, %bb.cc
  %i.od = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i111 = icmp ugt i32 %i.ns, %i.od
  br i1 %.not23.i.i.i.i111, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i112, label %bb.cf

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106, %bb.ce, %bb.cd
  %.1.i.i52.i.i.i.i109 = phi ptr [ %i.oc, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106 ], [ %i.nw, %bb.cd ], [ %i.nw, %bb.ce ]
  store ptr %.1.i.i52.i.i.i.i109, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.ns, ptr %5, align 8, !tbaa !16
  br label %bb.cf

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i112:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110
  %i.oe = xor i32 %i.od, -1
  store i32 %i.oe, ptr %5, align 8, !tbaa !16
  br label %.lr.ph545

bb.cf:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110, %bb.ca
  store i32 %i.nm, ptr %i.he, align 4, !tbaa !14
  %i.of = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.og = zext i32 %i.nj to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.oh, ptr noundef nonnull readonly align 1 dereferenceable(11) @.str.82, i64 range(i64 0, 103079215081) 11, i1 false), !alias.scope !1183
  br label %.lr.ph545

.lr.ph545:                                        ; preds = %bb.cf, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i112, %bb.bz, %._crit_edge543
  %i.oi = load i8, ptr @_hb_NullPool, align 16
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %umax = call i32 @llvm.umax.i32(i32 %i.b, i32 3)
  %i.ok = add i32 %umax, -1
  %wide.trip.count594 = zext i32 %i.ok to i64
  br label %bb.dd

bb.cg:                                            ; preds = %.lr.ph542, %_ZN15hb_vector_buf_t10append_strEPKc.exit141
  %indvars.iv582 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next583, %_ZN15hb_vector_buf_t10append_strEPKc.exit141 ] ; 3 uses
  %.not42 = icmp eq i64 %indvars.iv582, 0
  br i1 %.not42, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ol = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.om = load i32, ptr %5, align 8, !tbaa !16    ; 5 uses
  %.not.i.i117 = icmp slt i32 %i.ol, %i.om
  br i1 %.not.i.i117, label %.critedge.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.on = add i32 %i.ol, 1                        ; 2 uses
  %i.oo = icmp slt i32 %i.om, 0
  br i1 %i.oo, label %_ZN15hb_vector_buf_t8append_cEc.exit, label %bb.cj, !prof !23

bb.cj:                                            ; preds = %bb.ci
  %.not.i.i.i118 = icmp ugt i32 %i.on, %i.om
  br i1 %.not.i.i.i118, label %.preheader.i.i.i120, label %.critedge.i.i, !prof !23

.preheader.i.i.i120:                              ; preds = %bb.cj, %.preheader.i.i.i120
  %.053.i.i.i = phi i32 [ %i.or, %.preheader.i.i.i120 ], [ %i.om, %bb.cj ] ; 2 uses
  %i.op = lshr i32 %.053.i.i.i, 1
  %i.oq = add i32 %.053.i.i.i, 8
  %i.or = add i32 %i.oq, %i.op                    ; 6 uses
  %i.os = icmp ugt i32 %i.on, %i.or
  br i1 %i.os, label %.preheader.i.i.i120, label %.thread39.i.i.i, !llvm.loop !0

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i120
  %.not8.i.i.i.i.i = icmp eq i32 %i.om, 0
  %i.ot = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.ck, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.ck:                                            ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ou = zext i32 %i.or to i64
  %i.ov = call ptr @hb_malloc(i64 noundef %i.ou) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.cm, !prof !23

bb.cm:                                            ; preds = %bb.cl
  %i.ow = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ow, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.cn, !prof !23

bb.cn:                                            ; preds = %bb.cm
  %i.ox = zext i32 %i.ow to i64
  %i.oy = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr readonly align 1 %i.oy, i64 range(i64 0, 103079215081) %i.ox, i1 false), !alias.scope !1184
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.ck, %.thread39.i.i.i
  %i.oz = phi ptr [ null, %bb.ck ], [ %i.ot, %.thread39.i.i.i ]
  %i.pa = zext i32 %i.or to i64
  %i.pb = call ptr @hb_realloc(ptr noundef %i.oz, i64 noundef %i.pa) #12 ; 2 uses
  %.not22.i.i.i121 = icmp eq ptr %i.pb, null
  br i1 %.not22.i.i.i121, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.cl
  %i.pc = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i122 = icmp ugt i32 %i.or, %i.pc
  br i1 %.not23.i.i.i122, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i, label %.critedge.i.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.pd = xor i32 %i.pc, -1
  store i32 %i.pd, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t8append_cEc.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.cn, %bb.cm
  %.1.i.i52.i.i.i = phi ptr [ %i.pb, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.ov, %bb.cm ], [ %i.ov, %bb.cn ]
  store ptr %.1.i.i52.i.i.i, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.or, ptr %5, align 8, !tbaa !16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.cj, %bb.ch
  %i.pe = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.pf = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.pg = add i32 %i.pf, 1
  store i32 %i.pg, ptr %i.he, align 4, !tbaa !14
  %i.ph = zext i32 %i.pf to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.ph
  store i8 32, ptr %i.pi, align 1, !tbaa !63
  br label %_ZN15hb_vector_buf_t8append_cEc.exit

_ZN15hb_vector_buf_t8append_cEc.exit:             ; preds = %bb.ci, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i, %.critedge.i.i
  store i8 %i.id, ptr @_hb_CrapPool, align 16
  br label %bb.co
end_hunk_1
