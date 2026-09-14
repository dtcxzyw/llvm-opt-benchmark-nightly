Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pshinter?download=true
inline.NumInlined: 99
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@psh_glyph_interpolate_other_points:bb.a
  %.4.be = phi ptr [ %i.ax, %bb.f ], [ %i.be, %bb.t ]
  br label %.preheader123, !llvm.loop !191

.preheader:                                       ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.4, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.g
  %.093 = phi ptr [ %i.be, %bb.g ], [ %i.ax, %.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.093, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !53
  %i.bh = and i32 %i.bg, 32
  %.not113 = icmp eq i32 %i.bh, 0
  br i1 %.not113, label %bb.g, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.4, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !56 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !56 ; 4 uses
  %.not114 = icmp sgt i64 %i.bj, %i.bl
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = sub nsw i64 %i.bl, %i.bj
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bn = sub nsw i64 %i.bj, %i.bl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4.lcssa.sink = phi ptr [ %.4, %bb.j ], [ %i.be, %bb.i ]
  %.pn = phi ptr [ %i.be, %bb.j ], [ %.4, %bb.i ]
  %.089 = phi i64 [ %i.bl, %bb.j ], [ %i.bj, %bb.i ]
  %.088 = phi i64 [ %i.bn, %bb.j ], [ %i.bm, %bb.i ] ; 4 uses
  %.sink179.in = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %.sink179 = load i64, ptr %.sink179.in, align 8, !tbaa !79 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.4.lcssa.sink, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !79 ; 2 uses
  %.not115 = icmp eq i64 %.088, 0
  br i1 %.not115, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = sub nsw i64 %i.bp, %.sink179
  %i.br = tail call i64 @FT_DivFix(i64 noundef %i.bq, i64 noundef %.088) #12
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bs = phi ptr [ %.pre, %bb.l ], [ %i.ax, %bb.k ]
  %.0 = phi i64 [ %i.br, %bb.l ], [ 65536, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  %.2 = phi ptr [ %i.bs, %bb.m ], [ %i.cs, %bb.s ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !56
  %i.bv = sub nsw i64 %i.bu, %.089                ; 5 uses
  %i.bw = icmp slt i64 %i.bv, 1
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = mul i64 %i.bv, %i.g                     ; 2 uses
  %i.by = ashr i64 %i.bx, 63
  %i.bz = add i64 %i.bx, 32768
  %i.ca = add i64 %i.bz, %i.by
  %i.cb = ashr i64 %i.ca, 16
  %i.cc = add nsw i64 %i.cb, %.sink179
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %.not116 = icmp slt i64 %i.bv, %.088
  br i1 %.not116, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = sub nsw i64 %i.bv, %.088
  %i.ce = mul i64 %i.cd, %i.g                     ; 2 uses
  %i.cf = ashr i64 %i.ce, 63
  %i.cg = add i64 %i.ce, 32768
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = ashr i64 %i.ch, 16
  %i.cj = add nsw i64 %i.bp, %i.ci
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ck = mul i64 %i.bv, %.0                      ; 2 uses
  %i.cl = ashr i64 %i.ck, 63
  %i.cm = add i64 %i.ck, 32768
  %i.cn = add i64 %i.cm, %i.cl
  %i.co = ashr i64 %i.cn, 16
  %i.cp = add nsw i64 %i.co, %.sink179
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.085 = phi i64 [ %i.cc, %bb.o ], [ %i.cj, %bb.q ], [ %i.cp, %bb.r ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.2, i64 64
  store i64 %.085, ptr %i.cq, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %.not117 = icmp eq ptr %i.cs, %i.be
  br i1 %.not117, label %bb.t, label %bb.n, !llvm.loop !192

bb.t:                                             ; preds = %bb.s
  %.not118 = icmp eq ptr %i.be, %.296
  br i1 %.not118, label %.loopexit, label %.preheader123.backedge

.loopexit:                                        ; preds = %bb.t, %.preheader123, %bb.e, %.lr.ph141
  %.2101 = phi i64 [ %.099137, %.lr.ph141 ], [ %.1100.ph, %bb.e ], [ %.099137, %.preheader123 ], [ %.099137, %bb.t ]
  %i.ct = add i32 %.097139, -1                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.098138, i64 16
  %.not = icmp eq i32 %i.ct, 0
  br i1 %.not, label %._crit_edge142, label %.lr.ph141, !llvm.loop !193

._crit_edge142:                                   ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ps_hinter_init(ptr noundef initializes((24, 168), (176, 224)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @psh_globals_new, ptr %i.e, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @psh_globals_set_scale, ptr %i.f, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @psh_globals_destroy, ptr %i.g, align 8, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @t1_hints_open, ptr %i.i, align 8, !tbaa !198
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @t1_hints_close, ptr %i.j, align 8, !tbaa !199
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @t1_hints_stem, ptr %i.k, align 8, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @ps_hints_t1stem3, ptr %i.l, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @ps_hints_t1reset, ptr %i.m, align 8, !tbaa !202
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @t1_hints_apply, ptr %i.n, align 8, !tbaa !203
  store ptr %i.c, ptr %i.h, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr @t2_hints_open, ptr %i.p, align 8, !tbaa !204
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @t2_hints_close, ptr %i.q, align 8, !tbaa !205
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @t2_hints_stems, ptr %i.r, align 8, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @ps_hints_t2mask, ptr %i.s, align 8, !tbaa !207
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @ps_hints_t2counter, ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @t2_hints_apply, ptr %i.u, align 8, !tbaa !209
  store ptr %i.c, ptr %i.o, align 8, !tbaa !114
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ps_hinter_done(ptr nofree noundef captures(none) initializes((168, 176), (224, 232)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @ps_dimension_done(ptr noundef nonnull %i.e, ptr noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @ps_dimension_done(ptr noundef nonnull %i.f, ptr noundef %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !115
  store ptr null, ptr %i.c, align 8, !tbaa !112
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @ft_corner_is_flat(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psh_hint_table_init(ptr nofree noundef nonnull captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load i32, ptr %1, align 8, !tbaa !118    ; 12 uses
  %i.c = shl i32 %i.b, 1                          ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 8, i64 noundef 0, i64 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !76
  %i.g = load i32, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.b to i64                     ; 4 uses
  %i.i = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 48, i64 noundef 0, i64 noundef %i.h, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !63
  %i.k = load i32, ptr %i.a, align 4, !tbaa !24
  %.not56 = icmp eq i32 %i.k, 0
  br i1 %.not56, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = or disjoint i32 %i.c, 1
  %i.m = zext i32 %i.l to i64
  %i.n = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 32, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !88
  %i.p = load i32, ptr %i.a, align 4, !tbaa !24
  %.not57 = icmp eq i32 %i.p, 0
  br i1 %.not57, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store i32 %i.b, ptr %0, align 8, !tbaa !62
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %.not58 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.h ; 3 uses
  %spec.select = select i1 %.not58, ptr null, ptr %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %spec.select, ptr %i.s, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 0, ptr %i.t, align 4, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.u, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !216
  %.not595 = icmp eq i32 %i.b, 0
  br i1 %.not595, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !119  ; 2 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %xtraiter = and i32 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0508.prol = phi ptr [ %i.af, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 3 uses
  %.0517.prol = phi ptr [ %i.ae, %.lr.ph.prol ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %.0526.prol = phi i32 [ %i.ad, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.z = load <2 x i32>, ptr %.0508.prol, align 4, !tbaa !24
  store <2 x i32> %i.z, ptr %.0517.prol, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.0508.prol, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %.0517.prol, i64 24
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !74
  %i.ad = add i32 %.0526.prol, -1                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0517.prol, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0508.prol, i64 12 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !210

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0508.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.0517.unr = phi ptr [ %i.y, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %.0526.unr = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %i.ag = icmp ult i32 %i.b, 4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0508 = phi ptr [ %i.bf, %.lr.ph ], [ %.0508.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0517 = phi ptr [ %i.be, %.lr.ph ], [ %.0517.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0526 = phi i32 [ %i.bd, %.lr.ph ], [ %.0526.unr, %.lr.ph.prol.loopexit ]
  %i.ah = load <2 x i32>, ptr %.0508, align 4, !tbaa !24
  store <2 x i32> %i.ah, ptr %.0517, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.0508, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %.0517, i64 24
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %.0517, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.0508, i64 12
  %i.an = load <2 x i32>, ptr %i.am, align 4, !tbaa !24
  store <2 x i32> %i.an, ptr %i.al, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0508, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !121
  %i.aq = getelementptr inbounds nuw i8, ptr %.0517, i64 72
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %.0517, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %.0508, i64 24
  %i.at = load <2 x i32>, ptr %i.as, align 4, !tbaa !24
  store <2 x i32> %i.at, ptr %i.ar, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %.0508, i64 32
  %i.av = load i32, ptr %i.au, align 4, !tbaa !121
  %i.aw = getelementptr inbounds nuw i8, ptr %.0517, i64 120
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %.0517, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %.0508, i64 36
  %i.az = load <2 x i32>, ptr %i.ay, align 4, !tbaa !24
  store <2 x i32> %i.az, ptr %i.ax, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0508, i64 44
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !121
  %i.bc = getelementptr inbounds nuw i8, ptr %.0517, i64 168
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !74
  %i.bd = add i32 %.0526, -4                      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0517, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %.0508, i64 48
  %.not59.3 = icmp eq i32 %i.bd, 0
  br i1 %.not59.3, label %._crit_edge, label %.lr.ph, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %.loopexit1, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67
  %i.bi = load i32, ptr %2, align 8, !tbaa !68    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.bj, align 8, !tbaa !64
  %.not619 = icmp eq i32 %i.bi, 0
  br i1 %.not619, label %.loopexit1, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.e, %psh_hint_table_record_mask.exit
  %i.bk = phi i32 [ %i.co, %psh_hint_table_record_mask.exit ], [ 0, %bb.e ] ; 2 uses
  %.04911 = phi ptr [ %i.cq, %psh_hint_table_record_mask.exit ], [ %i.bh, %bb.e ] ; 3 uses
  %.110 = phi i32 [ %i.cp, %psh_hint_table_record_mask.exit ], [ %i.bi, %bb.e ]
  %.049.val = load i32, ptr %.04911, align 8, !tbaa !71 ; 2 uses
  %.not6.i = icmp eq i32 %.049.val, 0
  br i1 %.not6.i, label %psh_hint_table_record_mask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph13
  %i.bl = getelementptr i8, ptr %.04911, i64 8
  %.049.val63 = load ptr, ptr %i.bl, align 8, !tbaa !72
  %wide.trip.count.i = zext i32 %.049.val to i64
  br label %bb.f

bb.f:                                             ; preds = %psh_hint_table_record.exit.i, %.lr.ph.i
  %i.bm = phi i32 [ %i.bk, %.lr.ph.i ], [ %i.cm, %psh_hint_table_record.exit.i ] ; 9 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %psh_hint_table_record.exit.i ] ; 3 uses
  %.0114.i = phi ptr [ %.049.val63, %.lr.ph.i ], [ %.1.i, %psh_hint_table_record.exit.i ] ; 3 uses
  %.0123.i = phi i32 [ 0, %.lr.ph.i ], [ %.113.i, %psh_hint_table_record.exit.i ]
  %.0142.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cn, %psh_hint_table_record.exit.i ] ; 2 uses
  %i.bn = icmp eq i32 %.0142.i, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.0114.i, i64 1
  %i.bp = load i8, ptr %.0114.i, align 1, !tbaa !38
  %i.bq = zext i8 %i.bp to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.115.i = phi i32 [ 128, %bb.g ], [ %.0142.i, %bb.f ] ; 2 uses
  %.113.i = phi i32 [ %i.bq, %bb.g ], [ %.0123.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %i.bo, %bb.g ], [ %.0114.i, %bb.f ]
  %i.br = and i32 %.113.i, %.115.i
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %psh_hint_table_record.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %indvars.iv.i ; 5 uses
  %.not.i.i = icmp samesign ult i64 %indvars.iv.i, %i.h
  br i1 %.not.i.i, label %bb.j, label %psh_hint_table_record.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !74 ; 2 uses
  %i.bw = and i32 %i.bv, 4
  %.not23.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not23.i.i, label %bb.k, label %psh_hint_table_record.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bx = or disjoint i32 %i.bv, 4
  store i32 %i.bx, ptr %i.bu, align 8, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  store ptr null, ptr %i.by, align 8, !tbaa !122
  %.not2429.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not2429.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %.val.i.i = load i32, ptr %i.bt, align 8, !tbaa !78 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bt, i64 4
  %.val26.i.i = load i32, ptr %i.bz, align 4, !tbaa !99
  %i.ca = add i32 %.val26.i.i, %.val.i.i
  br label %bb.l

bb.l:                                             ; preds = %psh_hint_overlap.exit.thread.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.bm, %.lr.ph.i.i ], [ %i.cg, %psh_hint_overlap.exit.thread.i.i ]
  %.02130.i.i = phi ptr [ %spec.select, %.lr.ph.i.i ], [ %i.ch, %psh_hint_overlap.exit.thread.i.i ] ; 2 uses
  %i.cb = load ptr, ptr %.02130.i.i, align 8, !tbaa !77 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.ca, %i.cc
  br i1 %.not.i.i.i, label %psh_hint_overlap.exit.thread.i.i, label %psh_hint_overlap.exit.i.i

psh_hint_overlap.exit.i.i:                        ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !99
  %i.cf = add i32 %i.ce, %i.cc
  %.not28.i.i = icmp slt i32 %i.cf, %.val.i.i
  br i1 %.not28.i.i, label %psh_hint_overlap.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %psh_hint_overlap.exit.i.i
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !122
  br label %.loopexit.i.i

psh_hint_overlap.exit.thread.i.i:                 ; preds = %psh_hint_overlap.exit.i.i, %bb.l
  %i.cg = add i32 %.031.i.i, -1                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 8
  %.not24.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not24.i.i, label %.loopexit.i.i, label %bb.l, !llvm.loop !212

.loopexit.i.i:                                    ; preds = %psh_hint_overlap.exit.thread.i.i, %bb.m, %bb.k
  %i.ci = icmp ult i32 %i.bm, %i.b
  br i1 %i.ci, label %bb.n, label %psh_hint_table_record.exit.i

bb.n:                                             ; preds = %.loopexit.i.i
  %i.cj = add nuw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.cj, ptr %i.t, align 4, !tbaa !75
  %i.ck = zext i32 %i.bm to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ck
  store ptr %i.bt, ptr %i.cl, align 8, !tbaa !77
  br label %psh_hint_table_record.exit.i

psh_hint_table_record.exit.i:                     ; preds = %bb.n, %.loopexit.i.i, %bb.j, %bb.i, %bb.h
  %i.cm = phi i32 [ %i.cj, %bb.n ], [ %i.bm, %.loopexit.i.i ], [ %i.bm, %bb.j ], [ %i.bm, %bb.i ], [ %i.bm, %bb.h ] ; 2 uses
  %i.cn = lshr i32 %.115.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %psh_hint_table_record_mask.exit, label %bb.f, !llvm.loop !213

psh_hint_table_record_mask.exit:                  ; preds = %psh_hint_table_record.exit.i, %.lr.ph13
  %i.co = phi i32 [ %i.bk, %.lr.ph13 ], [ %i.cm, %psh_hint_table_record.exit.i ] ; 2 uses
  %i.cp = add i32 %.110, -1                       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04911, i64 24
  %.not61 = icmp eq i32 %i.cp, 0
  br i1 %.not61, label %.loopexit1, label %.lr.ph13, !llvm.loop !214

.loopexit1:                                       ; preds = %psh_hint_table_record_mask.exit, %bb.e, %._crit_edge
  %i.cr = phi i32 [ 0, %._crit_edge ], [ 0, %bb.e ], [ %i.co, %psh_hint_table_record_mask.exit ] ; 2 uses
  %.not62 = icmp ne i32 %i.cr, %i.b
  %i.cs = icmp ne i32 %i.b, 0
  %or.cond = and i1 %.not62, %i.cs
  br i1 %or.cond, label %.lr.ph15, label %.loopexit

.lr.ph15:                                         ; preds = %.loopexit1, %psh_hint_table_record.exit
  %i.ct = phi i32 [ %i.do, %psh_hint_table_record.exit ], [ %i.cr, %.loopexit1 ] ; 7 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %psh_hint_table_record.exit ], [ 0, %.loopexit1 ] ; 2 uses
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cu, i64 %indvars.iv ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !74 ; 2 uses
  %i.cy = and i32 %i.cx, 4
  %.not23.i = icmp eq i32 %i.cy, 0
  br i1 %.not23.i, label %bb.o, label %psh_hint_table_record.exit

bb.o:                                             ; preds = %.lr.ph15
  %i.cz = or disjoint i32 %i.cx, 4
  store i32 %i.cz, ptr %i.cw, align 8, !tbaa !74
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  store ptr null, ptr %i.da, align 8, !tbaa !122
  %.not2429.i = icmp eq i32 %i.ct, 0
  br i1 %.not2429.i, label %.loopexit.i, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %bb.o
  %.val.i = load i32, ptr %i.cv, align 8, !tbaa !78 ; 2 uses
  %i.db = getelementptr i8, ptr %i.cv, i64 4
  %.val26.i = load i32, ptr %i.db, align 4, !tbaa !99
  %i.dc = add i32 %.val26.i, %.val.i
  br label %bb.p

bb.p:                                             ; preds = %psh_hint_overlap.exit.thread.i, %.lr.ph.i65
  %.031.i = phi i32 [ %i.ct, %.lr.ph.i65 ], [ %i.di, %psh_hint_overlap.exit.thread.i ]
  %.02130.i = phi ptr [ %spec.select, %.lr.ph.i65 ], [ %i.dj, %psh_hint_overlap.exit.thread.i ] ; 2 uses
  %i.dd = load ptr, ptr %.02130.i, align 8, !tbaa !77 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !78 ; 2 uses
  %.not.i.i66 = icmp slt i32 %i.dc, %i.de
  br i1 %.not.i.i66, label %psh_hint_overlap.exit.thread.i, label %psh_hint_overlap.exit.i

psh_hint_overlap.exit.i:                          ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !99
  %i.dh = add i32 %i.dg, %i.de
  %.not28.i = icmp slt i32 %i.dh, %.val.i
  br i1 %.not28.i, label %psh_hint_overlap.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %psh_hint_overlap.exit.i
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !122
  br label %.loopexit.i

psh_hint_overlap.exit.thread.i:                   ; preds = %psh_hint_overlap.exit.i, %bb.p
  %i.di = add i32 %.031.i, -1                     ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02130.i, i64 8
  %.not24.i = icmp eq i32 %i.di, 0
  br i1 %.not24.i, label %.loopexit.i, label %bb.p, !llvm.loop !212

.loopexit.i:                                      ; preds = %psh_hint_overlap.exit.thread.i, %bb.q, %bb.o
  %i.dk = icmp ult i32 %i.ct, %i.b
  br i1 %i.dk, label %bb.r, label %psh_hint_table_record.exit

bb.r:                                             ; preds = %.loopexit.i
  %i.dl = add nuw i32 %i.ct, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.t, align 4, !tbaa !75
  %i.dm = zext i32 %i.ct to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dm
  store ptr %i.cv, ptr %i.dn, align 8, !tbaa !77
  br label %psh_hint_table_record.exit

psh_hint_table_record.exit:                       ; preds = %.lr.ph15, %.loopexit.i, %bb.r
  %i.do = phi i32 [ %i.ct, %.lr.ph15 ], [ %i.ct, %.loopexit.i ], [ %i.dl, %bb.r ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph15, !llvm.loop !215

.loopexit:                                        ; preds = %psh_hint_table_record.exit, %.loopexit1, %bb.a, %bb.b, %bb.c
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.dp
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @psh_hint_align(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr inbounds nuw [408 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = and i32 %i.g, 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91
  %i.k = load i32, ptr %0, align 8, !tbaa !78     ; 4 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = mul i64 %i.e, %i.l                       ; 2 uses
  %i.n = ashr i64 %i.m, 63
  %i.o = add i64 %i.m, 32768
  %i.p = add i64 %i.o, %i.n
  %i.q = ashr i64 %i.p, 16
  %i.r = add nsw i64 %i.q, %i.j                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !99   ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %i.e, %i.u                       ; 2 uses
  %i.w = ashr i64 %i.v, 63
  %i.x = add i64 %i.v, 32768
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %i.z = ashr i64 %i.y, 16                        ; 18 uses
  %i.aa = icmp eq i32 %2, 0
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !48
  %.not125 = icmp eq i8 %i.ac, 0
  br i1 %.not125, label %.critedge, label %psh_blues_snap_stem.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 193
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !49
  %.not127 = icmp eq i8 %i.ae, 0
  br i1 %.not127, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.af, align 8, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.ag, align 8, !tbaa !98
  br label %.sink.split

psh_blues_snap_stem.exit.thread:                  ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 194
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !50
  %.not128 = icmp ne i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.aj, align 8, !tbaa !98
  br label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 195
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51
  %i.am = icmp ne i8 %i.al, 0                     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 %i.z, ptr %i.an, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 2 uses
  %i.ap = add i32 %i.t, %i.k                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3948
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !84  ; 2 uses
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !80 ; 2 uses
  %.not54.i = icmp eq i32 %i.as, 0
  br i1 %.not54.i, label %.loopexit50.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !81 ; 2 uses
  %i.ax = sub nsw i32 0, %i.aw
  %i.ay = sext i32 %i.ax to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %.056.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.bn, %bb.k ] ; 4 uses
  %.04055.i = phi i32 [ %i.as, %.lr.ph.i ], [ %i.bm, %bb.k ]
  %i.az = getelementptr inbounds nuw i8, ptr %.056.i, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !82
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sub nsw i64 %i.au, %i.bb                ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %i.ay
  br i1 %i.bd, label %.loopexit50.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !83
  %i.bg = add nsw i32 %i.bf, %i.aw
  %.not44.i = icmp sgt i32 %i.ap, %i.bg
  br i1 %.not44.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not45.i = icmp eq i8 %i.ar, 0
  br i1 %.not45.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 3940
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !85
  %i.bj = sext i32 %i.bi to i64
  %.not46.i = icmp sgt i64 %i.bc, %i.bj
  br i1 %.not46.i, label %.loopexit50.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.056.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !96
  br label %.loopexit50.i

bb.k:                                             ; preds = %bb.g
  %i.bm = add i32 %.04055.i, -1                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.056.i, i64 48
  %.not.i = icmp eq i32 %i.bm, 0
end_hunk_0
