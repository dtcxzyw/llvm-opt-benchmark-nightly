Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jchuff?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@encode_mcu_gather:bb.a

bb.l:                                             ; preds = %bb.k
  %i.cq = load i64, ptr %i.as, align 8, !tbaa !40
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.as, align 8, !tbaa !40
  br label %htest_one_block.exit

htest_one_block.exit:                             ; preds = %.thread.i, %bb.k, %bb.l
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !58
  %i.cu = sext i16 %i.ct to i32
  store i32 %i.cu, ptr %i.ah, align 4, !tbaa !8
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.cv = load i32, ptr %i.r, align 8, !tbaa !54
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next40, %i.cw
  br i1 %i.cx, label %bb.e, label %._crit_edge36, !llvm.loop !97

._crit_edge36:                                    ; preds = %htest_one_block.exit, %bb.d
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = sext i32 %i.p to i64                     ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.s ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #7 ; 2 uses
  store ptr %i.y, ptr %i.v, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi ptr [ %i.y, %bb.d ], [ %i.w, %bb.c ]
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.s
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %i.z, ptr noundef %i.ab)
  store i32 1, ptr %i.t, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ac = sext i32 %i.r to i64                    ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #7 ; 2 uses
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ %i.ag, %bb.g ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef %i.al)
  store i32 1, ptr %i.ad, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.e, align 8, !tbaa !45
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @encode_mcu_huff(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %2 = alloca %struct.working_state, align 8      ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 7 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !102
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store ptr %0, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %emit_restart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !52
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %emit_restart.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !69   ; 2 uses
  %i.v = sub i32 64, %i.u                         ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.x = icmp ugt i64 %i.h, 511                   ; 2 uses
  %spec.select = select i1 %i.x, ptr %i.f, ptr %i.a ; 2 uses
  %i.y = icmp slt i32 %i.u, 57
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.z = zext i32 %i.v to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.z, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.169.i.i = phi ptr [ %spec.select, %.lr.ph.preheader.i.i ], [ %.neg63.sroa.sel.i.i, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -8 ; 3 uses
  %i.aa = and i64 %indvars.iv.next.i.i, 4294967295
  %i.ab = lshr i64 %i.w, %i.aa                    ; 2 uses
  %i.ac = trunc i64 %i.ab to i8
  store i8 %i.ac, ptr %.169.i.i, align 1, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 1 ; 2 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !33
  %i.ae = and i64 %i.ab, 255
  %.not62.i.i = icmp eq i64 %i.ae, 255
  %.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.169.i.i, i64 2
  %.neg63.sroa.sel.i.i = select i1 %.not62.i.i, ptr %.sroa.gep.i.i, ptr %i.ad ; 2 uses
  %i.af = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ag = icmp sgt i32 %i.af, 15
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.1.lcssa.i.i = phi ptr [ %spec.select, %bb.c ], [ %.neg63.sroa.sel.i.i, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.052.lcssa.i.i = phi i32 [ %i.v, %bb.c ], [ %indvars.i.i, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.not.i.i = icmp eq i32 %.052.lcssa.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = sub nsw i32 8, %.052.lcssa.i.i
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl i64 %i.w, %i.ai
  %i.ak = lshr i32 255, %.052.lcssa.i.i
  %3 = trunc nuw nsw i32 %i.ak to i8
  %4 = trunc i64 %i.aj to i8
  %5 = or i8 %4, %3                               ; 2 uses
  store i8 %5, ptr %.1.lcssa.i.i, align 1, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 1 ; 2 uses
  store i8 0, ptr %i.al, align 1, !tbaa !33
  %.not57.i.i = icmp eq i8 %5, -1
  %.sroa.gep65.i.i = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 2
  %.neg.sroa.sel.i.i = select i1 %.not57.i.i, ptr %.sroa.gep65.i.i, ptr %i.al
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.2.i.i = phi ptr [ %.neg.sroa.sel.i.i, %bb.d ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !33
  store i32 64, ptr %i.t, align 8, !tbaa !69
  %i.am = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = ptrtoint ptr %i.a to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %.not6072.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not6072.i.i, label %.loopexit.i, label %.lr.ph76.i.i

.lr.ph76.i.i:                                     ; preds = %bb.f, %bb.h
  %i.ap = phi ptr [ %i.bg, %bb.h ], [ %i.f, %bb.f ]
  %i.aq = phi i64 [ %i.bh, %bb.h ], [ %i.h, %bb.f ]
  %.05074.i.i = phi i64 [ %i.bi, %bb.h ], [ %i.ao, %bb.f ] ; 2 uses
  %.373.i.i = phi ptr [ %i.at, %bb.h ], [ %i.a, %bb.f ] ; 2 uses
  %.050..i.i = call i64 @llvm.umin.i64(i64 %.05074.i.i, i64 %i.aq) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %.373.i.i, i64 %.050..i.i, i1 false)
  %i.ar = load ptr, ptr %2, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.050..i.i ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %.373.i.i, i64 %.050..i.i
  %i.au = load i64, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %i.av = sub i64 %i.au, %.050..i.i               ; 2 uses
  store i64 %i.av, ptr %i.i, align 8, !tbaa !67
  %i.aw = icmp eq i64 %i.au, %.050..i.i
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph76.i.i
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !68  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bc = call i32 %i.bb(ptr noundef %i.ax) #7, !inline_history !99
  %.not.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i, label %flush_bits.exit.i, label %dump_buffer.exit.i.i

dump_buffer.exit.i.i:                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !62 ; 2 uses
  store ptr %i.bd, ptr %2, align 8, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !66 ; 2 uses
  store i64 %i.bf, ptr %i.i, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %dump_buffer.exit.i.i, %.lr.ph76.i.i
  %i.bg = phi ptr [ %i.bd, %dump_buffer.exit.i.i ], [ %i.as, %.lr.ph76.i.i ] ; 2 uses
  %i.bh = phi i64 [ %i.bf, %dump_buffer.exit.i.i ], [ %i.av, %.lr.ph76.i.i ]
  %i.bi = sub nuw i64 %.05074.i.i, %.050..i.i     ; 2 uses
  %.not60.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not60.i.i, label %.loopexit.i, label %.lr.ph76.i.i, !llvm.loop !1

bb.i:                                             ; preds = %bb.e
  %i.bj = ptrtoint ptr %i.f to i64
  %.neg59.i.i = sub i64 %i.bj, %i.am
  %i.bk = add i64 %.neg59.i.i, %i.h
  store i64 %i.bk, ptr %i.i, align 8, !tbaa !67
  br label %.loopexit.i

flush_bits.exit.i:                                ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %emit_restart.exit.thread

.loopexit.i:                                      ; preds = %bb.h, %bb.i, %bb.f
  %i.bl = phi ptr [ %i.f, %bb.f ], [ %.2.i.i, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %2, align 8, !tbaa !65
  store i8 -1, ptr %i.bl, align 1, !tbaa !33
  %i.bn = load i64, ptr %i.i, align 8, !tbaa !67
  %i.bo = add i64 %i.bn, -1                       ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !68  ; 5 uses
  br i1 %i.bp, label %bb.j, label %.loopexit._crit_edge.i

bb.j:                                             ; preds = %.loopexit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.bv = call i32 %i.bu(ptr noundef %i.bq) #7, !inline_history !100
  %.not.i16.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i16.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !66
  br label %.loopexit._crit_edge.i

.loopexit._crit_edge.i:                           ; preds = %.loopexit.i, %dump_buffer.exit.i
  %i.by = phi i64 [ %i.bx, %dump_buffer.exit.i ], [ %i.bo, %.loopexit.i ]
  %.in = phi ptr [ %i.bs, %dump_buffer.exit.i ], [ %2, %.loopexit.i ]
  %i.bz = load ptr, ptr %.in, align 8, !tbaa !103 ; 2 uses
  %i.ca = trunc i32 %i.s to i8
  %i.cb = add i8 %i.ca, -48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  store ptr %i.cc, ptr %2, align 8, !tbaa !65
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !33
  %i.cd = add i64 %i.by, -1                       ; 3 uses
  store i64 %i.cd, ptr %i.i, align 8, !tbaa !67
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit._crit_edge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !59 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70
  %i.cj = call i32 %i.ci(ptr noundef %i.bq) #7, !inline_history !100
  %.not.i17.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i17.i, label %emit_restart.exit.thread, label %dump_buffer.exit19.i

dump_buffer.exit19.i:                             ; preds = %bb.k
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !62 ; 2 uses
  store ptr %i.ck, ptr %2, align 8, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !66 ; 2 uses
  store i64 %i.cm, ptr %i.i, align 8, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %dump_buffer.exit19.i, %.loopexit._crit_edge.i
  %i.cn = phi i64 [ %i.cm, %dump_buffer.exit19.i ], [ %i.cd, %.loopexit._crit_edge.i ] ; 2 uses
  %i.co = phi ptr [ %i.ck, %dump_buffer.exit19.i ], [ %i.cc, %.loopexit._crit_edge.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 368
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !45 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.i, label %emit_restart.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 0, i64 %i.cu, i1 false), !tbaa !8
  br label %emit_restart.exit

emit_restart.exit:                                ; preds = %.lr.ph.i, %bb.l, %bb.b, %bb.a
  %i.cv = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cn, %bb.l ], [ %i.h, %bb.b ], [ %i.h, %bb.a ]
  %i.cw = phi ptr [ %i.co, %.lr.ph.i ], [ %i.co, %bb.l ], [ %i.f, %bb.b ], [ %i.f, %bb.a ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !54
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %emit_restart.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !35 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !56
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dh ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !47
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !48
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !35
  %i.dy = call fastcc i32 @encode_one_block(ptr noundef %2, ptr noundef %i.dl, i32 noundef %i.dn, ptr noundef %i.ds, ptr noundef %i.dx)
  %.not39 = icmp eq i32 %i.dy, 0
  br i1 %.not39, label %emit_restart.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = load ptr, ptr %i.dk, align 8, !tbaa !56
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !58
  %i.eb = sext i16 %i.ea to i32
  store i32 %i.eb, ptr %i.dm, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = load i32, ptr %i.cx, align 8, !tbaa !54
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %bb.m, label %._crit_edge.loopexit, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !65
  %.pre45 = load i64, ptr %i.i, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %emit_restart.exit
  %i.ef = phi i64 [ %.pre45, %._crit_edge.loopexit ], [ %i.cv, %emit_restart.exit ]
  %i.eg = phi ptr [ %.pre44, %._crit_edge.loopexit ], [ %i.cw, %emit_restart.exit ]
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !62
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.ef, ptr %i.ei, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !tbaa.struct !102
  %i.ej = load i32, ptr %i.m, align 4, !tbaa !51  ; 2 uses
  %.not38 = icmp eq i32 %i.ej, 0
  br i1 %.not38, label %emit_restart.exit.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !52 ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !53
  %i.ep = add nsw i32 %i.eo, 1
  %i.eq = and i32 %i.ep, 7
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.er = phi i32 [ %i.ej, %bb.p ], [ %i.el, %bb.o ]
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.ek, align 8, !tbaa !52
  br label %emit_restart.exit.thread

emit_restart.exit.thread:                         ; preds = %bb.m, %flush_bits.exit.i, %bb.k, %bb.j, %._crit_edge, %bb.q
  %.035 = phi i32 [ 1, %._crit_edge ], [ 0, %flush_bits.exit.i ], [ 1, %bb.q ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %.sroa.26 = alloca [20 x i8], align 4           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.20.16.copyload18 = load i64, ptr %i.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.24.16..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.sroa.24.16.copyload20 = load i32, ptr %.sroa.24.16..sroa_idx19, align 8, !tbaa !8 ; 2 uses
  %.sroa.26.16..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.26, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.26.16..sroa_idx21, i64 20, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = sub i32 64, %.sroa.24.16.copyload20      ; 2 uses
  %i.k = icmp ugt i64 %i.h, 511                   ; 2 uses
  %spec.select = select i1 %i.k, ptr %i.f, ptr %i.a ; 2 uses
  %i.l = icmp slt i32 %.sroa.24.16.copyload20, 57
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.169.i = phi ptr [ %spec.select, %.lr.ph.preheader.i ], [ %.neg63.sroa.sel.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -8 ; 3 uses
  %i.n = and i64 %indvars.iv.next.i, 4294967295
  %i.o = lshr i64 %.sroa.20.16.copyload18, %i.n   ; 2 uses
  %i.p = trunc i64 %i.o to i8
  store i8 %i.p, ptr %.169.i, align 1, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %.169.i, i64 1 ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !33
  %i.r = and i64 %i.o, 255
  %.not62.i = icmp eq i64 %i.r, 255
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %.169.i, i64 2
  %.neg63.sroa.sel.i = select i1 %.not62.i, ptr %.sroa.gep.i, ptr %i.q ; 2 uses
  %i.s = trunc nuw i64 %indvars.iv.i to i32
  %i.t = icmp sgt i32 %i.s, 15
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.1.lcssa.i = phi ptr [ %spec.select, %bb.a ], [ %.neg63.sroa.sel.i, %._crit_edge.loopexit.i ] ; 4 uses
  %.052.lcssa.i = phi i32 [ %i.j, %bb.a ], [ %indvars.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.not.i = icmp eq i32 %.052.lcssa.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.u = sub nsw i32 8, %.052.lcssa.i
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %.sroa.20.16.copyload18, %i.v
  %i.x = lshr i32 255, %.052.lcssa.i
  %1 = trunc nuw nsw i32 %i.x to i8
  %2 = trunc i64 %i.w to i8
  %3 = or i8 %2, %1                               ; 2 uses
  store i8 %3, ptr %.1.lcssa.i, align 1, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1 ; 2 uses
  store i8 0, ptr %i.y, align 1, !tbaa !33
  %.not57.i = icmp eq i8 %3, -1
  %.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 2
  %.neg.sroa.sel.i = select i1 %.not57.i, ptr %.sroa.gep65.i, ptr %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.2.i = phi ptr [ %.neg.sroa.sel.i, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.z = ptrtoint ptr %.2.i to i64                ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %i.a to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %.not6072.i = icmp eq i64 %i.ab, 0
  br i1 %.not6072.i, label %flush_bits.exit.thread, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.d, %bb.f
  %.sroa.11.0 = phi i64 [ %.sroa.11.1, %bb.f ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.f ], [ %i.f, %bb.d ] ; 2 uses
  %.05074.i = phi i64 [ %i.am, %bb.f ], [ %i.ab, %bb.d ] ; 3 uses
  %.373.i = phi ptr [ %i.ad, %bb.f ], [ %i.a, %bb.d ] ; 2 uses
  %.050..i = call i64 @llvm.umin.i64(i64 %.05074.i, i64 %.sroa.11.0) ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0, ptr align 1 %.373.i, i64 %.050..i, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.050..i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.373.i, i64 %.050..i
  %i.ae = sub nuw i64 %.sroa.11.0, %.050..i
  %.not = icmp ugt i64 %.sroa.11.0, %.05074.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph76.i
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !59  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ai = call i32 %i.ah(ptr noundef %0) #7, !inline_history !104
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.h, label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.e
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %dump_buffer.exit.i, %.lr.ph76.i
  %.sroa.11.1 = phi i64 [ %i.al, %dump_buffer.exit.i ], [ %i.ae, %.lr.ph76.i ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.aj, %dump_buffer.exit.i ], [ %i.ac, %.lr.ph76.i ] ; 2 uses
  %i.am = sub nuw i64 %.05074.i, %.050..i         ; 2 uses
  %.not60.i = icmp eq i64 %i.am, 0
  br i1 %.not60.i, label %flush_bits.exit.thread, label %.lr.ph76.i, !llvm.loop !1

bb.g:                                             ; preds = %bb.c
  %i.an = ptrtoint ptr %i.f to i64
  %.neg59.i = add i64 %i.h, %i.an
  %i.ao = sub i64 %.neg59.i, %i.z
  br label %flush_bits.exit.thread

flush_bits.exit.thread:                           ; preds = %bb.f, %bb.g, %bb.d
  %.sroa.11.2.ph = phi i64 [ %i.ao, %bb.g ], [ %i.h, %bb.d ], [ %.sroa.11.1, %bb.f ]
  %.sroa.0.2.ph = phi ptr [ %.2.i, %bb.g ], [ %i.f, %bb.d ], [ %.sroa.0.1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ap = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 25, ptr %i.aq, align 8, !tbaa !32
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !34
  call void %i.ar(ptr noundef nonnull %0) #7
  br label %bb.i

bb.i:                                             ; preds = %flush_bits.exit.thread, %bb.h
  %.sroa.0.228 = phi ptr [ %.sroa.0.2.ph, %flush_bits.exit.thread ], [ %i.ac, %bb.h ]
  %.sroa.11.227 = phi i64 [ %.sroa.11.2.ph, %flush_bits.exit.thread ], [ 0, %bb.h ]
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  store ptr %.sroa.0.228, ptr %i.as, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.11.227, ptr %i.at, align 8, !tbaa !66
  store i64 0, ptr %i.i, align 8, !tbaa !33
  store i32 64, ptr %.sroa.24.16..sroa_idx19, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.26.16..sroa_idx21, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.26, i64 20, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @encode_one_block(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 65 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = add nsw i32 %i.e, 2                      ; 63 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67
  %i.m = icmp ugt i64 %i.l, 511                   ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.010915 = phi ptr [ %i.n, %bb.b ], [ %i.a, %bb.a ] ; 13 uses
  %i.o = load i16, ptr %1, align 2, !tbaa !58
  %i.p = sext i16 %i.o to i32
  %i.q = sub nsw i32 %i.p, %2                     ; 2 uses
  %i.r = ashr i32 %i.q, 31                        ; 2 uses
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = xor i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr @jpeg_nbits_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33    ; 2 uses
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = add nsw i32 %i.e, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 6, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !34
  tail call void %i.ac(ptr noundef nonnull %i.c) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = zext i8 %i.w to i64                     ; 3 uses
  %notmask = shl nsw i64 -1, %i.ad
  %i.ae = trunc i64 %notmask to i32
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.s, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = shl i32 %i.ai, %i.x
  %i.ak = or i32 %i.aj, %i.ag                     ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, %i.x                 ; 2 uses
  %i.aq = sub nsw i32 %i.i, %i.ap                 ; 4 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.as = zext nneg i32 %i.i to i64
  %i.at = shl i64 %i.j, %i.as
  %i.au = sub nsw i32 0, %i.aq
  %i.av = ashr i32 %i.ak, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = or i64 %i.at, %i.aw                     ; 24 uses
  %i.ay = and i64 %i.ax, -9187201950435737472
  %i.az = sub i64 -72340172838076674, %i.ax
  %i.ba = and i64 %i.ay, %i.az
  %.not = icmp eq i64 %i.ba, 0
  %i.bb = lshr i64 %i.ax, 56                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i8
  store i8 %i.bc, ptr %.010915, align 1, !tbaa !33
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.010915, i64 1 ; 2 uses
  store i8 0, ptr %i.bd, align 1, !tbaa !33
  %.not11871 = icmp eq i64 %i.bb, 255             ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %.010915, i64 2 ; 2 uses
  %.neg.sroa.sel = select i1 %.not11871, ptr %.sroa.gep, ptr %i.bd ; 2 uses
  %i.be = lshr i64 %i.ax, 48
  %i.bf = trunc i64 %i.be to i8
  store i8 %i.bf, ptr %.neg.sroa.sel, align 1, !tbaa !33
  %.sroa.gep16200 = getelementptr inbounds nuw i8, ptr %.010915, i64 3
  %.neg.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not11871, ptr %.sroa.gep16200, ptr %.sroa.gep
  store i8 0, ptr %.neg.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !33
  %i.bg = and i64 %i.ax, 71776119061217280
  %.not11872 = icmp eq i64 %i.bg, 71776119061217280
  %.neg11873 = select i1 %.not11872, i64 2, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.neg.sroa.sel, i64 %.neg11873 ; 4 uses
  %i.bi = lshr i64 %i.ax, 40
  %i.bj = trunc i64 %i.bi to i8
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store i8 0, ptr %i.bk, align 1, !tbaa !33
  %i.bl = and i64 %i.ax, 280375465082880
  %.not11874 = icmp eq i64 %i.bl, 280375465082880 ; 2 uses
  %.sroa.gep13841 = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %.neg11875.sroa.sel = select i1 %.not11874, ptr %.sroa.gep13841, ptr %i.bk ; 2 uses
  %i.bm = lshr i64 %i.ax, 32
  %i.bn = trunc i64 %i.bm to i8
  store i8 %i.bn, ptr %.neg11875.sroa.sel, align 1, !tbaa !33
  %.sroa.gep15310 = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %.neg11875.sroa.sel.sroa.sel.v.sroa.sel = select i1 %.not11874, ptr %.sroa.gep15310, ptr %.sroa.gep13841
  store i8 0, ptr %.neg11875.sroa.sel.sroa.sel.v.sroa.sel, align 1, !tbaa !33
  %i.bo = and i64 %i.ax, 1095216660480
end_hunk_0
