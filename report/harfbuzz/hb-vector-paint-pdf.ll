Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-pdf?download=true
inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z26hb_vector_paint_render_pdfP17hb_vector_paint_t:bb.a

bb.ls:                                            ; preds = %bb.lr
  %i.axe = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %.not.i.i.i.i.i.i873 = icmp eq i32 %i.axe, 0
  br i1 %.not.i.i.i.i.i.i873, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i866, label %bb.lt, !prof !22

bb.lt:                                            ; preds = %bb.ls
  %i.axf = zext i32 %i.axe to i64
  %i.axg = load ptr, ptr %i.aom, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axd, ptr readonly align 1 %i.axg, i64 range(i64 0, 103079215081) %i.axf, i1 false), !alias.scope !387
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i866

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i864: ; preds = %bb.lq, %.thread39.i.i.i862
  %i.axh = phi ptr [ null, %bb.lq ], [ %i.axb, %.thread39.i.i.i862 ]
  %i.axi = zext i32 %i.awz to i64
  %i.axj = call ptr @hb_realloc(ptr noundef %i.axh, i64 noundef %i.axi) #12 ; 2 uses
  %.not22.i.i.i865 = icmp eq ptr %i.axj, null
  br i1 %.not22.i.i.i865, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i868, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i866, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i868: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i864, %bb.lr
  %i.axk = load i32, ptr %1, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i869 = icmp ugt i32 %i.awz, %i.axk
  br i1 %.not23.i.i.i869, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i870, label %bb.lu

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i866: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i864, %bb.lt, %bb.ls
  %.1.i.i52.i.i.i867 = phi ptr [ %i.axj, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i864 ], [ %i.axd, %bb.ls ], [ %i.axd, %bb.lt ]
  store ptr %.1.i.i52.i.i.i867, ptr %i.aom, align 8, !tbaa !12
  store i32 %i.awz, ptr %1, align 8, !tbaa !13
  br label %bb.lu

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i870:     ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i868
  %i.axl = xor i32 %i.axk, -1
  store i32 %i.axl, ptr %1, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit874

bb.lu:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i866, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i868, %bb.lp
  store i32 %i.awt, ptr %i.bo, align 4, !tbaa !8
  %i.axm = load ptr, ptr %i.aom, align 8, !tbaa !12
  %i.axn = zext i32 %i.awq to i64
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axm, i64 %i.axn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.axo, ptr noundef nonnull readonly align 16 dereferenceable(20) %i.a, i64 range(i64 0, 103079215081) 20, i1 false), !alias.scope !391
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit874

_ZN15hb_vector_buf_t10append_lenEPKcj.exit874:    ; preds = %bb.ln, %bb.lo, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i870, %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 1 ; 2 uses
  %exitcond1034.not = icmp eq i64 %indvars.iv.next1031, %wide.trip.count1033
  br i1 %exitcond1034.not, label %._crit_edge982, label %bb.ln, !llvm.loop !395

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %bb.lm, %_ZL16hb_buf_blob_fromPP9hb_blob_tP15hb_vector_buf_t.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br i1 %.not.i878.not.not, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %bb.lv

bb.lv:                                            ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  call void @hb_free(ptr noundef nonnull %.sroa.11.0.ph) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %.thread.i881, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, %bb.lv
  %.0932 = phi ptr [ %.142.i, %bb.lv ], [ %.142.i, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit ], [ null, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit ], [ null, %.thread.i881 ], [ null, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ]
  %i.axp = load i32, ptr %1, align 8, !tbaa !13
  %i.axq = add i32 %i.axp, -1
  %spec.select.i.i.i876 = icmp ult i32 %i.axq, -2
  br i1 %spec.select.i.i.i876, label %bb.lw, label %_ZN11hb_vector_tIcLb0EED2Ev.exit877

bb.lw:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.axr, align 4, !tbaa !8
  %i.axs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.axt) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit877

_ZN11hb_vector_tIcLb0EED2Ev.exit877:              ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.lx

bb.lx:                                            ; preds = %bb.b, %bb.c, %bb.a, %_ZN11hb_vector_tIcLb0EED2Ev.exit877
  %.1 = phi ptr [ %.0932, %_ZN11hb_vector_tIcLb0EED2Ev.exit877 ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 104) #12 ; 11 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %.thread, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  store i32 2, ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 2, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 2, ptr %i.i, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  store i32 0, ptr %i.j, align 4, !tbaa !396
  %i.k = load i32, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ult i32 %i.k, 8
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i, !prof !22

.preheader.i.i:                                   ; preds = %bb.d
  %i.m = lshr i32 %i.k, 1
  %i.n = or disjoint i32 %i.k, 8
  %i.o = add nuw nsw i32 %i.n, %i.m               ; 4 uses
  %.not8.i.i.i.i = icmp eq i32 %i.k, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.o to i64
  %i.s = tail call ptr @hb_malloc(i64 noundef %i.r) #12 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr readonly align 1 %i.v, i64 range(i64 0, 103079215081) %i.u, i1 false), !alias.scope !397
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.e, %.preheader.i.i
  %i.w = phi ptr [ null, %bb.e ], [ %i.q, %.preheader.i.i ]
  %i.x = zext nneg i32 %i.o to i64
  %i.y = tail call ptr @hb_realloc(ptr noundef %i.w, i64 noundef %i.x) #12 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.y, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, %bb.f
  %i.z = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.o, %i.z
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i, !prof !401

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, %bb.h, %bb.g
  %.1.i.i52.i.i = phi ptr [ %i.y, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i ], [ %i.s, %bb.g ], [ %i.s, %bb.h ]
  store ptr %.1.i.i52.i.i, ptr %i.p, align 8, !tbaa !12
  store i32 %i.o, ptr %i.a, align 8, !tbaa !13
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i
  %i.aa = xor i32 %i.z, -1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !13
  br label %bb.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i:   ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i, %bb.d
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !8   ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 8
  br i1 %i.ac, label %_ZN11hb_vector_tIcLb0EE11grow_vectorIcTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.j

_ZN11hb_vector_tIcLb0EE11grow_vectorIcTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i
  %i.ad = sub nuw nsw i32 8, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = zext nneg i32 %i.ab to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = zext nneg i32 %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 0, i64 %i.ai, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i
  tail call void @_ZN18hb_pdf_resources_tD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %i.d) #12
  tail call void @hb_free(ptr noundef nonnull %i.d) #12
  br label %.thread

bb.j:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i, %_ZN11hb_vector_tIcLb0EE11grow_vectorIcTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  store i32 8, ptr %i.b, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12
  store ptr %i.d, ptr %i.ak, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  %.0.copyload = load ptr, ptr %i.am, align 1
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.i, %bb.k
  %.1 = phi ptr [ %.0.copyload, %bb.k ], [ null, %bb.i ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %i.e = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.d, i32 %i.b) ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 1
  %i.g = extractvalue { i32, i1 } %i.e, 0         ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  %or.cond.i = or i1 %i.f, %i.h
  br i1 %or.cond.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.h, !prof !22

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.m, %.preheader.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = lshr i32 %.053.i.i.i, 1
  %i.l = add nuw i32 %.053.i.i.i, 8
  %i.m = add nuw i32 %i.l, %i.k                   ; 6 uses
  %i.n = icmp ugt i32 %i.g, %i.m
  br i1 %i.n, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !66

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.i, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.d:                                             ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = zext i32 %i.m to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.u, i64 range(i64 0, 103079215081) %i.t, i1 false), !alias.scope !402
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.d, %.thread39.i.i.i
  %i.v = phi ptr [ null, %bb.d ], [ %i.p, %.thread39.i.i.i ]
  %i.w = zext i32 %i.m to i64
  %i.x = tail call ptr @hb_realloc(ptr noundef %i.v, i64 noundef %i.w) #12 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.e
  %i.y = load i32, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.m, %i.y
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.h

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i.i = phi ptr [ %i.x, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  store ptr %.1.i.i52.i.i.i, ptr %i.o, align 8, !tbaa !12
  store i32 %i.m, ptr %0, align 8, !tbaa !13
  br label %bb.h

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.z = xor i32 %i.y, -1
  store i32 %i.z, ptr %0, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

bb.h:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.c
  store i32 %i.g, ptr %i.c, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.aa = and i64 %i.a, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ad = zext i32 %i.d to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull readonly align 1 %1, i64 range(i64 0, 103079215081) %i.aa, i1 false), !alias.scope !406
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

_ZN15hb_vector_buf_t10append_lenEPKcj.exit:       ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %bb.h, %bb.i
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ], [ false, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !13     ; 5 uses
  %.not.i = icmp slt i32 %i.b, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1                          ; 2 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ugt i32 %i.d, %i.c
  br i1 %.not.i.i, label %.preheader.i.i, label %.critedge.i, !prof !22

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.h, %.preheader.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.f = lshr i32 %.053.i.i, 1
  %i.g = add i32 %.053.i.i, 8
  %i.h = add i32 %i.g, %i.f                       ; 6 uses
  %i.i = icmp ugt i32 %i.d, %i.h
  br i1 %i.i, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !66

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.c, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i32 %i.h to i64
  %i.m = tail call ptr @hb_malloc(i64 noundef %i.l) #12 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %i.p, i64 range(i64 0, 103079215081) %i.o, i1 false), !alias.scope !410
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.d, %.thread39.i.i
  %i.q = phi ptr [ null, %bb.d ], [ %i.k, %.thread39.i.i ]
  %i.r = zext i32 %i.h to i64
  %i.s = tail call ptr @hb_realloc(ptr noundef %i.q, i64 noundef %i.r) #12 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.s, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, %bb.e
  %i.t = load i32, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.h, %i.t
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i, label %.critedge.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i:  ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i
  %i.u = xor i32 %i.t, -1
  store i32 %i.u, ptr %0, align 8, !tbaa !13
  br label %_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i = phi ptr [ %i.s, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  store ptr %.1.i.i52.i.i, ptr %i.j, align 8, !tbaa !12
  store i32 %i.h, ptr %0, align 8, !tbaa !13
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i, %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.a, align 4, !tbaa !8
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z ; 2 uses
  store i8 %1, ptr %i.aa, align 1, !tbaa !104
  %i.ab = icmp ne ptr %i.aa, @_hb_CrapPool
  br label %_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit

_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit:  ; preds = %bb.b, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i, %.critedge.i
  %.0.i = phi i1 [ %i.ab, %.critedge.i ], [ false, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i ], [ false, %bb.b ]
  %i.ac = load i8, ptr @_hb_NullPool, align 16
  store i8 %i.ac, ptr @_hb_CrapPool, align 16
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_alphaEf(ptr noundef nonnull align 8 dereferenceable(100) %0, float noundef %1) local_unnamed_addr #0 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZL23hb_pdf_paint_fill_glyphP16hb_paint_funcs_tPvjP9hb_font_tijS1_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !455
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.t, %bb.e ] ; 27 uses
  %i.u = fcmp olt float %i.l, f0x3F7F8000
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %i.v = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not.not = icmp eq ptr %i.v, null
  br i1 %.not.not, label %.critedge36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_alphaEf(ptr noundef nonnull align 8 dereferenceable(100) %i.v, float noundef %i.l)
  %i.x = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.12) ; 0 uses
  %i.z = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i32 noundef %i.w) ; 0 uses
  %i.aa = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.13) ; 0 uses
  %i.ab = extractelement <4 x float> %i.k, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ab, i32 noundef 4)
  %i.ac = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ad = extractelement <4 x float> %i.k, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ad, i32 noundef 4)
  %i.ae = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.af = extractelement <4 x float> %i.k, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.af, i32 noundef 4)
  %i.ag = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  tail call fastcc void @_ZL22hb_pdf_emit_glyph_pathP17hb_vector_paint_tP9hb_font_tjP15hb_vector_buf_t(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %2, ptr noundef %.0.i.i.i)
  %i.ah = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.35) ; 0 uses
  br label %.sink.split

.critedge:                                        ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %i.ai = extractelement <4 x float> %i.k, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ai, i32 noundef 4)
  %i.aj = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ak = extractelement <4 x float> %i.k, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ak, i32 noundef 4)
  %i.al = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.am = extractelement <4 x float> %i.k, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.am, i32 noundef 4)
  %i.an = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  tail call fastcc void @_ZL22hb_pdf_emit_glyph_pathP17hb_vector_paint_tP9hb_font_tjP15hb_vector_buf_t(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %2, ptr noundef %.0.i.i.i)
  br label %.sink.split

.critedge36:                                      ; preds = %bb.f
  %i.ao = extractelement <4 x float> %i.k, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.ao, i32 noundef 4)
  %i.ap = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.aq = extractelement <4 x float> %i.k, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.aq, i32 noundef 4)
  %i.ar = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.as = extractelement <4 x float> %i.k, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.as, i32 noundef 4)
  %i.at = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  tail call fastcc void @_ZL22hb_pdf_emit_glyph_pathP17hb_vector_paint_tP9hb_font_tjP15hb_vector_buf_t(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %2, ptr noundef %.0.i.i.i)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %.critedge, %.critedge36
  %.str.35.sink = phi ptr [ @.str.35, %.critedge36 ], [ @.str.35, %.critedge ], [ @.str.34, %bb.g ]
  %i.au = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull %.str.35.sink) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_push_clip_glyph_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28hb_pdf_paint_push_clip_glyphP16hb_paint_funcs_tPvjP9hb_font_tS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !454  ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455
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
  br i1 %i.a, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !454  ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !456
  %i.l = fdiv float %2, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !59
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.l, i32 noundef %i.n)
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !457
  %i.r = fdiv float %3, %i.q
  %i.s = load i32, ptr %i.m, align 8, !tbaa !59
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.r, i32 noundef %i.s)
  %i.t = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.u = fsub float %4, %2
  %i.v = load float, ptr %i.j, align 4, !tbaa !456
  %i.w = fdiv float %i.u, %i.v
  %i.x = load i32, ptr %i.m, align 8, !tbaa !59
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.w, i32 noundef %i.x)
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.z = fsub float %5, %3
  %i.aa = load float, ptr %i.p, align 8, !tbaa !457
  %i.ab = fdiv float %i.z, %i.aa
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !59
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
  br i1 %i.a, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !458
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !454  ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.k = load i32, ptr %i.j, align 8, !tbaa !459
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !460
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !74
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 260
  %4 = load <2 x float>, ptr %i.l, align 4, !tbaa !461
  store <2 x float> %4, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !461
  store ptr %i.m, ptr %2, align 8, !tbaa !458
  %i.n = tail call noundef ptr @_Z33hb_vector_pdf_path_draw_funcs_getv() #12
  br label %bb.f

bb.f:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.n, %_ZN17hb_vector_paint_t12current_bodyEv.exit ]
  ret ptr %.0
}

declare void @hb_paint_funcs_set_push_clip_path_end_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31hb_pdf_paint_push_clip_path_endP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !454  ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455
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
  br i1 %i.a, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !454  ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455
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
  br i1 %i.a, label %bb.b, label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !454  ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i.i, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit.i

_ZN17hb_vector_paint_t12current_bodyEv.exit.i:    ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = lshr i32 %3, 24
  %i.j = lshr i32 %3, 16
  %i.k = lshr i32 %3, 8
  %i.l = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %i.m = insertelement <4 x i32> %i.l, i32 %i.j, i64 1
  %i.n = insertelement <4 x i32> %i.m, i32 %i.i, i64 2
  %i.o = insertelement <4 x i32> %i.n, i32 %3, i64 3
  %i.p = and <4 x i32> %i.o, <i32 255, i32 255, i32 -1, i32 255>
  %i.q = uitofp <4 x i32> %i.p to <4 x float>
  %i.r = fdiv <4 x float> %i.q, splat (float 2.550000e+02) ; 4 uses
  %i.s = extractelement <4 x float> %i.r, i64 3   ; 3 uses
  %i.t = fcmp olt float %i.s, f0x3B808081
  br i1 %i.t, label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit.i
  %i.u = fcmp olt float %i.s, f0x3F7F8000
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_alphaEf(ptr noundef nonnull align 8 dereferenceable(100) %i.v, float noundef %i.s)
  %i.x = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.12) ; 0 uses
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i32 noundef %i.w) ; 0 uses
  %i.z = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = extractelement <4 x float> %i.r, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.aa, i32 noundef 4)
  %i.ab = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ac = extractelement <4 x float> %i.r, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.ac, i32 noundef 4)
  %i.ad = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ae = extractelement <4 x float> %i.r, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.ae, i32 noundef 4)
  %i.af = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  %i.ag = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.38) ; 0 uses
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
  br i1 %i.e, label %bb.d, label %bb.z, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not145 = icmp eq ptr %i.f, null
  br i1 %.not145, label %bb.z, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !74
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

end_hunk_1
