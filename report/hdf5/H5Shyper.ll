Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 68
begin_hunk_0_@H5S_combine_hyperslab:bb.a

bb.aq:                                            ; preds = %.thread140, %._crit_edge
  %i.he = tail call ptr @H5S_copy(ptr noundef nonnull %0, i1 noundef zeroext true, i1 noundef zeroext true) #14 ; 3 uses
  store ptr %i.he, ptr %6, align 8, !tbaa !54
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hg = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.hh = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !18
  %i.hi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_combine_hyperslab, i32 noundef 10577, i64 noundef %i.hg, i64 noundef %i.hh, ptr noundef nonnull @.str.34) #14 ; 0 uses
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.hj = tail call i32 @H5S_select_hyperslab(ptr noundef nonnull %i.he, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %spec.store.select, ptr noundef %4, ptr noundef nonnull %spec.store.select1)
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hl = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.hm = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !18
  %i.hn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_combine_hyperslab, i32 noundef 10581, i64 noundef %i.hl, i64 noundef %i.hm, ptr noundef nonnull @.str.33) #14 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.d, %bb.as, %bb.at, %bb.ar, %bb.q, %bb.p, %bb.n, %bb.l, %bb.h, %bb.c, %bb.m, %bb.o
  %.4 = phi i32 [ -1, %bb.c ], [ -1, %bb.h ], [ -1, %bb.q ], [ -1, %bb.l ], [ -1, %bb.n ], [ 0, %bb.d ], [ -1, %bb.p ], [ 0, %bb.m ], [ -1, %bb.ar ], [ -1, %bb.at ], [ 0, %bb.as ], [ %.0125, %bb.ap ], [ 0, %bb.o ]
  ret i32 %.4
}

declare ptr @H5S_copy(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @H5S__hyper_make_spans(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %0, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.i = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !18
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_make_spans, i32 noundef 8659, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.95) #14 ; 0 uses
  br label %.thread127

bb.d:                                             ; preds = %bb.b
  %i.k = add i32 %0, -1                           ; 4 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.lr.ph164, label %.thread127

.lr.ph164:                                        ; preds = %bb.d
  %i.m = shl i32 %0, 1
  %i.n = zext i32 %i.m to i64
  %i.o = zext i32 %0 to i64
  %i.p = zext nneg i32 %i.k to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %._crit_edge241, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.p
  %i.t = add nsw i32 %.090162239, -1              ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge241, label %.lr.ph.preheader, !llvm.loop !192

._crit_edge241:                                   ; preds = %bb.e, %.lr.ph164
  %.091161.lcssa = phi ptr [ null, %.lr.ph164 ], [ %.394.ph, %bb.e ]
  %.099160.lcssa = phi ptr [ null, %.lr.ph164 ], [ %i.bh, %bb.e ]
  %i.y = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.z = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !18
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_make_spans, i32 noundef 8669, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.114) #14 ; 0 uses
  br label %.thread127

.lr.ph.preheader:                                 ; preds = %.lr.ph164, %bb.e
  %i.ab = phi ptr [ %i.v, %bb.e ], [ %i.q, %.lr.ph164 ]
  %i.ac = phi i64 [ %i.u, %bb.e ], [ %i.p, %.lr.ph164 ] ; 3 uses
  %.099160240 = phi ptr [ %i.bh, %bb.e ], [ null, %.lr.ph164 ] ; 4 uses
  %.090162239 = phi i32 [ %i.t, %bb.e ], [ %i.k, %.lr.ph164 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.ah = add i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ac
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = add i64 %i.ah, %i.aj
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.085157 = phi i32 [ %i.au, %bb.i ], [ 0, %.lr.ph.preheader ]
  %.086156 = phi i64 [ %i.aw, %bb.i ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.087155 = phi i64 [ %i.av, %bb.i ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %.192154 = phi ptr [ %.394.ph, %bb.i ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.097153 = phi ptr [ %i.al, %bb.i ], [ null, %.lr.ph.preheader ]
  %i.al = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_hyper_span_t_reg_free_list) #14 ; 10 uses
  %.not114 = icmp eq ptr %i.al, null
  br i1 %.not114, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.087155, ptr %i.al, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.086156, ptr %i.am, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr null, ptr %i.an, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.099160240, ptr %i.ao, align 8, !tbaa !62
  %i.ap = icmp eq ptr %.192154, null
  br i1 %i.ap, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.097153, i64 24
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !64
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ar = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.as = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_make_spans, i32 noundef 8684, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.98) #14 ; 0 uses
  br label %.thread127

bb.i:                                             ; preds = %bb.g, %bb.f
  %.394.ph = phi ptr [ %i.al, %bb.f ], [ %.192154, %bb.g ] ; 6 uses
  %i.au = add i32 %.085157, 1                     ; 2 uses
  %i.av = add i64 %.087155, %i.ae
  %i.aw = add i64 %.086156, %i.ae
  %i.ax = zext i32 %i.au to i64
  %i.ay = load i64, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.az = icmp ugt i64 %i.ay, %i.ax
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %bb.i
  %.not112 = icmp eq ptr %.099160240, null
  br i1 %.not112, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ba = trunc nuw i64 %i.ay to i32
  store i32 %i.ba, ptr %.099160240, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.bb = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = xor i1 %i.be, true
  %i.bg = select i1 %i.bc, i1 true, i1 %i.bf
  br i1 %i.bg, label %bb.l, label %.thread, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.bh = tail call noalias ptr @H5FL_arr_calloc(ptr noundef nonnull @H5_hbounds_t_arr_free_list, i64 noundef %i.n) #14 ; 11 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.bk = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.bl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_new_span_info, i32 noundef 2837, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.9) #14 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m
  %i.bm = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.bn = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.bo = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_make_spans, i32 noundef 8711, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.98) #14 ; 0 uses
  br label %.preheader

bb.n:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 72 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.o ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store ptr %.394.ph, ptr %i.bt, align 8, !tbaa !59
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %i.al, ptr %i.bu, align 8, !tbaa !59
  %i.bv = load i64, ptr %.394.ph, align 8, !tbaa !61
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !65
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.394.ph, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62 ; 2 uses
  %.not113 = icmp eq ptr %i.bz, null
  br i1 %.not113, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !38
  %i.cd = sub nuw nsw i32 %i.k, %.090162239
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.cc, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr align 8 %i.cj, i64 %i.cf, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ck = icmp sgt i32 %.090162239, 0
  br i1 %i.ck, label %bb.e, label %._crit_edge165, !llvm.loop !192

._crit_edge165:                                   ; preds = %bb.p
  store i32 1, ptr %i.bh, align 8, !tbaa !26
  br label %.loopexit

.thread127:                                       ; preds = %bb.d, %bb.h, %._crit_edge241, %bb.c
  %.2101.ph = phi ptr [ %.099160240, %bb.h ], [ null, %bb.c ], [ %.099160.lcssa, %._crit_edge241 ], [ null, %bb.d ] ; 4 uses
  %.596.ph = phi ptr [ %.192154, %bb.h ], [ null, %bb.c ], [ %.091161.lcssa, %._crit_edge241 ], [ null, %bb.d ] ; 4 uses
  %i.cl = icmp ne ptr %.596.ph, null              ; 2 uses
  %i.cm = icmp ne ptr %.2101.ph, null             ; 2 uses
  %or.cond = or i1 %i.cm, %i.cl
  br i1 %or.cond, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %.thread127
  %or.cond3 = and i1 %i.cm, %i.cl
  br i1 %or.cond3, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %.2101.ph, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !59
  %.not116 = icmp eq ptr %i.co, %.596.ph
  %spec.store.select = select i1 %.not116, ptr %.2101.ph, ptr null
  br label %.preheader

.preheader:                                       ; preds = %.thread, %bb.r, %bb.q
  %.4103.ph = phi ptr [ null, %.thread ], [ %.2101.ph, %bb.q ], [ %spec.store.select, %bb.r ]
  %.6.ph = phi ptr [ %.394.ph, %.thread ], [ %.596.ph, %bb.q ], [ %.596.ph, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %._crit_edge172
  %.4103 = phi ptr [ %i.ct, %._crit_edge172 ], [ %.4103.ph, %.preheader ] ; 3 uses
  %.6 = phi ptr [ null, %._crit_edge172 ], [ %.6.ph, %.preheader ]
  %.not117 = icmp eq ptr %.4103, null
  br i1 %.not117, label %.lr.ph171.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %.4103, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !59
  %i.cr = tail call ptr @H5FL_arr_free(ptr noundef nonnull @H5_hbounds_t_arr_free_list, ptr noundef nonnull %.4103) #14 ; 0 uses
  br label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.s, %bb.t
  %.7 = phi ptr [ %i.cq, %bb.t ], [ %.6, %bb.s ]  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.7, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !62 ; 2 uses
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.lr.ph171
  %.8169 = phi ptr [ %i.cv, %.lr.ph171 ], [ %.7, %.lr.ph171.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.8169, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !64 ; 2 uses
  %i.cw = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_hyper_span_t_reg_free_list, ptr noundef nonnull %.8169) #14 ; 0 uses
  %.not118 = icmp eq ptr %i.cv, null
  br i1 %.not118, label %._crit_edge172, label %.lr.ph171, !llvm.loop !194

._crit_edge172:                                   ; preds = %.lr.ph171
  %.not119 = icmp eq ptr %i.ct, null
  br i1 %.not119, label %.loopexit, label %bb.s, !llvm.loop !195

.loopexit:                                        ; preds = %._crit_edge172, %._crit_edge165, %bb.a, %.thread127
  %.5 = phi ptr [ %i.bh, %._crit_edge165 ], [ null, %bb.a ], [ null, %.thread127 ], [ null, %._crit_edge172 ]
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @H5S__hyper_copy_span(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18
  %i.i = tail call fastcc ptr @H5S__hyper_copy_span_helper(ptr noundef %0, i32 noundef %1, i32 noundef 0, i64 noundef %i.g) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.l = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_copy_span, i32 noundef 2979, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.112) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.c ], [ %i.i, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5S__hyper_add_disjoint_spans(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %H5S__hyper_spans_nelem.exit, label %bb.e, !prof !16

H5S__hyper_spans_nelem.exit:                      ; preds = %bb.a
  %i.g = load i64, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18
  %i.i = tail call fastcc i64 @H5S__hyper_spans_nelem_helper(ptr noundef %1, i64 noundef %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = add i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !36
  %i.m = tail call fastcc i32 @H5S__hyper_merge_spans(ptr noundef %0, ptr noundef %1)
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %H5S__hyper_spans_nelem.exit
  %i.o = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.p = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !18
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_add_disjoint_spans, i32 noundef 8605, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.116) #14 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %H5S__hyper_spans_nelem.exit
  %i.r = tail call fastcc i32 @H5S__hyper_free_span_info(ptr noundef %1)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.u = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !18
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_add_disjoint_spans, i32 noundef 8609, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.13) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5S__hyper_update_diminfo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca [32 x %struct.H5S_hyper_dim_t], align 16 ; 5 uses
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.ak, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 1                        ; 2 uses
  %.phi.trans.insert212 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 12 uses
  %.pre213 = load ptr, ptr %.phi.trans.insert212, align 8, !tbaa !24 ; 5 uses
  switch i32 %1, label %._crit_edge211 [
    i32 3, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = load i32, ptr %.pre213, align 8, !tbaa !25
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.d, label %._crit_edge211

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pre213, i64 2584
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %.not175 = icmp eq ptr %i.l, null
  br i1 %.not175, label %._crit_edge211, label %bb.e

._crit_edge211:                                   ; preds = %bb.b, %bb.d, %bb.c
  store i32 1, ptr %.pre213, align 8, !tbaa !25
  br label %bb.ak

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.m = getelementptr inbounds nuw i8, ptr %.pre213, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %3, ptr noundef nonnull align 8 dereferenceable(1024) %i.m, i64 1024, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33   ; 3 uses
  %.not201 = icmp eq i32 %i.o, 0
  br i1 %.not201, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
end_hunk_0
