Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type1cid?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@FT_Stream_Seek
declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #5

declare i32 @ps_property_set(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #5

declare i32 @ps_property_get(ptr noundef, ptr noundef, ptr noundef) #5

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_hex_to_binary(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr %.192.val, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call i32 @FT_Stream_Seek(ptr noundef %.192.val, i64 noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.192.val, i64 8
  br label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %bb.m, %.lr.ph.lr.ph
  %.053.ph71 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %i.ac, %bb.m ] ; 2 uses
  %.055.ph69 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.156, %bb.m ] ; 7 uses
  %.057.ph68 = phi ptr [ %i.a, %.lr.ph.lr.ph ], [ %.259.us, %bb.m ]
  %.060.ph67 = phi ptr [ %i.a, %.lr.ph.lr.ph ], [ %i.ad, %bb.m ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.j
  %.05723.us = phi ptr [ %.259.us, %bb.j ], [ %.057.ph68, %.lr.ph.split.us.preheader ] ; 2 uses
  %.06022.us = phi ptr [ %i.u, %bb.j ], [ %.060.ph67, %.lr.ph.split.us.preheader ] ; 2 uses
  %.not74.us = icmp ult ptr %.06022.us, %.05723.us
  br i1 %.not74.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.e = call i64 @FT_Stream_Pos(ptr noundef %.192.val) #14 ; 3 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.e
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 %i.f, %i.e
  %i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 256)
  %i.j = call i32 @FT_Stream_Read(ptr noundef nonnull %.192.val, ptr noundef nonnull %i.a, i64 noundef %i.i) #14 ; 2 uses
  %.not75.us = icmp eq i32 %i.j, 0
  br i1 %.not75.us, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = call i64 @FT_Stream_Pos(ptr noundef nonnull %.192.val) #14
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.m = sub i64 0, %i.e
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %.262.us = phi ptr [ %i.a, %bb.e ], [ %.06022.us, %.lr.ph.split.us ] ; 3 uses
  %.259.us = phi ptr [ %i.n, %bb.e ], [ %.05723.us, %.lr.ph.split.us ] ; 2 uses
  %i.o = load i8, ptr %.262.us, align 1, !tbaa !63 ; 6 uses
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i8 %i.o, -97
  %or.cond.us = icmp ult i8 %i.s, 6
  br i1 %or.cond.us, label %.split43.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add i8 %i.o, -65
  %or.cond78.us = icmp ult i8 %i.t, 6
  br i1 %or.cond78.us, label %.split48.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.o, label %.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 0, label %bb.j
    i8 62, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.262.us, i64 1
  br label %.lr.ph.split.us

.split.us:                                        ; preds = %bb.f
  %i.v = trunc nuw nsw i32 %i.q to i8
  br label %.loopexit

.split43.us:                                      ; preds = %bb.g
  %i.w = add nsw i8 %i.o, -87
  br label %.loopexit

.split48.us:                                      ; preds = %bb.h
  %i.x = add nsw i8 %i.o, -55
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.split43.us, %.split48.us, %.split.us
  %.054 = phi i8 [ %i.v, %.split.us ], [ %i.w, %.split43.us ], [ %i.x, %.split48.us ], [ 0, %bb.i ] ; 2 uses
  %.not77 = phi i1 [ true, %.split.us ], [ true, %.split43.us ], [ true, %.split48.us ], [ false, %bb.i ]
  %.not76 = icmp eq i8 %.053.ph71, 0
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.y = shl nuw i8 %.054, 4
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.z = load i8, ptr %.055.ph69, align 1, !tbaa !63
  %i.aa = add i8 %i.z, %.054
  %i.ab = getelementptr inbounds nuw i8, ptr %.055.ph69, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink = phi i8 [ %i.aa, %bb.l ], [ %i.y, %bb.k ]
  %.156 = phi ptr [ %i.ab, %bb.l ], [ %.055.ph69, %bb.k ] ; 3 uses
  store i8 %.sink, ptr %.055.ph69, align 1, !tbaa !63
  %i.ac = xor i8 %.053.ph71, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.262.us, i64 1
  %i.ae = icmp ult ptr %.156, %i.c
  %or.cond = select i1 %.not77, i1 %i.ae, i1 false
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %.thread, !llvm.loop !269

.thread:                                          ; preds = %bb.m, %bb.i, %bb.c, %bb.d, %bb.b, %bb.a
  %.164 = phi i32 [ %i.b, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ 160, %bb.c ], [ 160, %bb.i ], [ 0, %bb.m ]
  %.3 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.055.ph69, %bb.i ], [ %.055.ph69, %bb.d ], [ %.055.ph69, %bb.c ], [ %.156, %bb.m ]
  %i.af = ptrtoint ptr %.3 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  store i64 %i.ah, ptr %3, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.164
}

declare hidden void @FT_Stream_OpenMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_read_subrs(ptr nofree noundef captures(none) initializes((600, 608)) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69
  %i.j = zext i32 %i.i to i64
  %i.k = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 16, i64 noundef 0, i64 noundef %i.j, ptr noundef null, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !95
  %i.m = load i32, ptr %i.a, align 4, !tbaa !20
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.preheader169, label %.loopexit170

.preheader169:                                    ; preds = %bb.a
  %i.n = load i32, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %.not189 = icmp eq i32 %i.n, 0
  br i1 %.not189, label %.loopexit170, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader169
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread161
  %i.t = phi i32 [ %i.n, %.lr.ph ], [ %i.en, %.thread161 ]
  %indvars.iv214 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next215, %.thread161 ] ; 2 uses
  %.0119186 = phi ptr [ null, %.lr.ph ], [ %.3122166, %.thread161 ] ; 4 uses
  %.0123185 = phi i32 [ 0, %.lr.ph ], [ %.3126165, %.thread161 ] ; 5 uses
  %.0127184 = phi ptr [ %i.k, %.lr.ph ], [ %i.eo, %.thread161 ] ; 3 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw [336 x i8], ptr %i.u, i64 %indvars.iv214 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !150
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  %i.z = load i32, ptr %i.y, align 8, !tbaa !85   ; 6 uses
  %.not135 = icmp eq i32 %i.z, 0
  br i1 %.not135, label %.thread161, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.z, 1                         ; 7 uses
  %i.ab = icmp ugt i32 %i.aa, %.0123185
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ac = and i32 %i.z, -4
  %i.ad = add i32 %i.ac, 4                        ; 3 uses
  %.not136 = icmp ugt i32 %i.ad, %.0123185
  br i1 %.not136, label %bb.e, label %.thread154.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ae = zext i32 %.0123185 to i64
  %i.af = zext i32 %i.ad to i64
  %i.ag = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 8, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef %.0119186, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !20
  %.not137 = icmp eq i32 %i.ah, 0
  br i1 %.not137, label %bb.f, label %.thread154

bb.f:                                             ; preds = %bb.e, %bb.c
  %.2125 = phi i32 [ %i.ad, %bb.e ], [ %.0123185, %bb.c ]
  %.2121 = phi ptr [ %i.ag, %bb.e ], [ %.0119186, %bb.c ] ; 23 uses
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 320
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !87
  %i.al = add i64 %i.ak, %i.ai
  %i.am = call i32 @FT_Stream_Seek(ptr noundef %i.e, i64 noundef %i.al) #14 ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !20
  %.not138 = icmp eq i32 %i.am, 0
  br i1 %.not138, label %bb.g, label %.thread154

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 328 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !86
  %i.ap = mul i32 %i.ao, %i.aa
  %i.aq = zext i32 %i.ap to i64
  %i.ar = call i32 @FT_Stream_EnterFrame(ptr noundef %i.e, i64 noundef %i.aq) #14 ; 2 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !20
  %.not139 = icmp eq i32 %i.ar, 0
  br i1 %.not139, label %bb.h, label %.thread154

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %i.an, align 8, !tbaa !86 ; 5 uses
  %.not10.i = icmp eq i32 %i.as, 0
  %i.at = zext i32 %i.as to i64
  br i1 %.not10.i, label %cid_get_offset.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %bb.h
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !61
  %umax = call i32 @llvm.umax.i32(i32 %i.aa, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  %xtraiter = and i32 %i.as, 3                    ; 3 uses
  %i.av = icmp ult i32 %i.as, 4
  %unroll_iter = and i32 %i.as, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod244 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.i.preheader

cid_get_offset.exit.us.preheader:                 ; preds = %bb.h
  %i.aw = call i32 @llvm.umax.i32(i32 %i.aa, i32 1)
  %umax198 = zext i32 %i.aw to i64
  %i.ax = shl nuw nsw i64 %umax198, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.2121, i8 0, i64 %i.ax, i1 false), !tbaa !73
  br label %.split179.us

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %._crit_edge.loopexit.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvars.iv.next, %._crit_edge.loopexit.i ] ; 2 uses
  %.0176 = phi ptr [ %i.au, %.lr.ph.i.preheader.preheader ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  br i1 %i.av, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.0176, %.lr.ph.i.preheader ] ; 5 uses
  %.0812.i = phi i64 [ %i.br, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.az = load i8, ptr %.013.i, align 1, !tbaa !63
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl i64 %.0812.i, 16
  %i.bc = shl nuw nsw i64 %i.ba, 8
  %i.bd = or disjoint i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i, i64 2
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !63
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i, i64 3
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !63
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl i64 %i.bh, 16
  %i.bm = shl nuw nsw i64 %i.bk, 8
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !63
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bn, %i.bq            ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %.0176, %.lr.ph.i.preheader ], [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0812.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.br, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod244)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi ptr [ %i.bt, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0812.i.epil = phi i64 [ %i.bw, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bs = shl i64 %.0812.i.epil, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.epil, i64 1
  %i.bu = load i8, ptr %.013.i.epil, align 1, !tbaa !63
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.bs, %i.bv            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !270

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa242 = phi i64 [ %i.br, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bw, %.lr.ph.i.epil ]
  %scevgep.i = getelementptr i8, ptr %.0176, i64 %i.at
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv
  store i64 %.lcssa242, ptr %i.bx, align 8, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.split179.us, label %.lr.ph.i.preheader, !llvm.loop !271

.split179.us:                                     ; preds = %._crit_edge.loopexit.i, %cid_get_offset.exit.us.preheader
  call void @FT_Stream_ExitFrame(ptr noundef %i.e) #14
  %.pre = load i64, ptr %.2121, align 8, !tbaa !73 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %1 = add i32 %.1118180, 1                       ; 2 uses
  %.not141 = icmp ugt i32 %1, %i.z
  br i1 %.not141, label %bb.k, label %bb.j, !llvm.loop !272

bb.j:                                             ; preds = %.split179.us, %bb.i
  %i.by = phi i64 [ %.pre, %.split179.us ], [ %i.ca, %bb.i ]
  %.1118180 = phi i32 [ 1, %.split179.us ], [ %1, %bb.i ] ; 2 uses
  %2 = zext i32 %.1118180 to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %2
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !73 ; 2 uses
  %i.cb = icmp ugt i64 %i.by, %i.ca
  br i1 %i.cb, label %.thread154.sink.split, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.cc = zext i32 %i.z to i64                    ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !73 ; 2 uses
  %i.cf = load i64, ptr %i.r, align 8, !tbaa !62
  %i.cg = load i64, ptr %i.p, align 8, !tbaa !75
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp ugt i64 %i.ce, %i.ch
  br i1 %i.ci, label %.thread154.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = sub i64 %i.ce, %.pre                    ; 2 uses
  %i.ck = zext i32 %i.aa to i64
  %i.cl = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 8, i64 noundef 0, i64 noundef %i.ck, ptr noundef null, ptr noundef nonnull %i.a) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %.0127184, i64 8 ; 5 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !98
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !20
  %.not142 = icmp eq i32 %i.cn, 0
  br i1 %.not142, label %bb.m, label %.thread154

bb.m:                                             ; preds = %bb.l
  %i.co = call ptr @ft_mem_qalloc(ptr noundef %i.c, i64 noundef %i.cj, ptr noundef nonnull %i.a) #14
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !98
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !74
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !20
  %.not143 = icmp eq i32 %i.cq, 0
  br i1 %.not143, label %bb.n, label %.thread154

bb.n:                                             ; preds = %bb.m
  %i.cr = load i64, ptr %i.p, align 8, !tbaa !75
  %i.cs = load i64, ptr %.2121, align 8, !tbaa !73
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.e, i64 noundef %i.ct) #14 ; 2 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !20
  %.not144 = icmp eq i32 %i.cu, 0
  br i1 %.not144, label %bb.o, label %.thread154

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !98
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !74
  %i.cx = call i32 @FT_Stream_Read(ptr noundef nonnull %i.e, ptr noundef %i.cw, i64 noundef %i.cj) #14 ; 2 uses
  store i32 %i.cx, ptr %i.a, align 4, !tbaa !20
  %.not145 = icmp eq i32 %i.cx, 0
  br i1 %.not145, label %.preheader168, label %.thread154

.preheader168:                                    ; preds = %bb.o
  %i.cy = load ptr, ptr %i.cm, align 8, !tbaa !98 ; 6 uses
  %umax205 = call i32 @llvm.umax.i32(i32 %i.aa, i32 2)
  %wide.trip.count206 = zext i32 %umax205 to i64
  %.pre220 = load i64, ptr %.2121, align 8, !tbaa !73 ; 2 uses
  %.pre221 = load ptr, ptr %i.cy, align 8, !tbaa !74 ; 2 uses
  %3 = add nsw i64 %wide.trip.count206, -1        ; 2 uses
  %xtraiter245 = and i64 %3, 3                    ; 3 uses
  %i.cz = icmp ult i32 %i.aa, 5
  br i1 %i.cz, label %.epil.preheader, label %.preheader168.new

.preheader168.new:                                ; preds = %.preheader168
  %unroll_iter251 = and i64 %3, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader168.new
  %i.da = phi ptr [ %.pre221, %.preheader168.new ], [ %i.du, %bb.p ]
  %i.db = phi i64 [ %.pre220, %.preheader168.new ], [ %i.ds, %bb.p ]
  %indvars.iv202.a = phi i64 [ 1, %.preheader168.new ], [ %indvars.iv.next203.3, %bb.p ] ; 6 uses
  %niter252 = phi i64 [ 0, %.preheader168.new ], [ %niter252.next.3, %bb.p ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv202.a
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !73 ; 2 uses
  %i.de = sub i64 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv202.a
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !74
  %indvars.iv.next203.a = add nuw nsw i64 %indvars.iv202.a, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next203.a
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !73 ; 2 uses
  %i.dj = sub i64 %i.di, %i.dd
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next203.a
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !74
  %indvars.iv.next203.1 = add nuw nsw i64 %indvars.iv202.a, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next203.1
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !73 ; 2 uses
  %i.do = sub i64 %i.dn, %i.di
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next203.1
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !74
  %indvars.iv.next203.2 = add nuw nsw i64 %indvars.iv202.a, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next203.2
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !73 ; 3 uses
  %i.dt = sub i64 %i.ds, %i.dn
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dt ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next203.2
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !74
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202.a, 4 ; 2 uses
  %niter252.next.3 = add nuw i64 %niter252, 4     ; 2 uses
  %niter252.ncmp.3 = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3, label %.unr-lcssa, label %bb.p, !llvm.loop !273

.unr-lcssa:                                       ; preds = %bb.p
  %lcmp.mod249.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod249.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader168
  %.epil.init = phi ptr [ %.pre221, %.preheader168 ], [ %i.du, %.unr-lcssa ]
  %.epil.init248 = phi i64 [ %.pre220, %.preheader168 ], [ %i.ds, %.unr-lcssa ]
  %indvars.iv202.epil.init = phi i64 [ 1, %.preheader168 ], [ %indvars.iv.next203.3, %.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter245, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %i.dw = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.eb, %bb.q ]
  %i.dx = phi i64 [ %.epil.init248, %.epil.preheader ], [ %i.dz, %bb.q ]
  %indvars.iv202.epil = phi i64 [ %indvars.iv202.epil.init, %.epil.preheader ], [ %indvars.iv.next203.epil, %bb.q ] ; 3 uses
  %epil.iter246 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter246.next, %bb.q ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv202.epil
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !73 ; 2 uses
  %i.ea = sub i64 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv202.epil
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !74
  %indvars.iv.next203.epil = add nuw nsw i64 %indvars.iv202.epil, 1
  %epil.iter246.next = add i64 %epil.iter246, 1   ; 2 uses
  %epil.iter246.cmp.not = icmp eq i64 %epil.iter246.next, %xtraiter245
  br i1 %epil.iter246.cmp.not, label %.epilog-lcssa, label %bb.q, !llvm.loop !274

.epilog-lcssa:                                    ; preds = %bb.q, %.unr-lcssa
  %i.ed = icmp sgt i32 %i.x, -1
  br i1 %i.ed, label %.preheader167, label %.loopexit

.preheader167:                                    ; preds = %.epilog-lcssa, %.preheader167
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %.preheader167 ], [ 0, %.epilog-lcssa ] ; 3 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next209
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv208
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !73
  %i.ei = sub i64 %i.ef, %i.eh
  %i.ej = load ptr, ptr %i.s, align 8, !tbaa !151
  %i.ek = load ptr, ptr %i.cm, align 8, !tbaa !98
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv208
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !74
  call void %i.ej(ptr noundef %i.em, i64 noundef %i.ei, i16 noundef zeroext 4330) #14
  %exitcond213.not = icmp eq i64 %indvars.iv.next209, %i.cc
  br i1 %exitcond213.not, label %.loopexit, label %.preheader167, !llvm.loop !275

.loopexit:                                        ; preds = %.preheader167, %.epilog-lcssa
  store i32 %i.z, ptr %.0127184, align 8, !tbaa !152
  %.pre222 = load i32, ptr %i.h, align 8, !tbaa !69
  br label %.thread161

.thread161:                                       ; preds = %.loopexit, %bb.b
  %i.en = phi i32 [ %i.t, %bb.b ], [ %.pre222, %.loopexit ] ; 2 uses
  %.3122166 = phi ptr [ %.0119186, %bb.b ], [ %.2121, %.loopexit ] ; 2 uses
  %.3126165 = phi i32 [ %.0123185, %bb.b ], [ %.2125, %.loopexit ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0127184, i64 16
  %i.ep = zext i32 %i.en to i64
  %i.eq = icmp samesign ult i64 %indvars.iv.next215, %i.ep
  br i1 %i.eq, label %bb.b, label %.loopexit170, !llvm.loop !276

.loopexit170:                                     ; preds = %.thread161, %.preheader169, %.thread154, %._crit_edge, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %.3122158, %._crit_edge ], [ %.3122158, %.thread154 ], [ null, %.preheader169 ], [ %.3122166, %.thread161 ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %.4) #14
  %i.er = load i32, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.er

.thread154.sink.split:                            ; preds = %bb.k, %bb.d, %bb.j
  %.sink = phi i32 [ 3, %bb.j ], [ 3, %bb.k ], [ 160, %bb.d ]
  %.3122158.ph = phi ptr [ %.2121, %bb.j ], [ %.2121, %bb.k ], [ %.0119186, %bb.d ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !20
  br label %.thread154

.thread154:                                       ; preds = %bb.e, %bb.n, %bb.o, %bb.m, %bb.g, %bb.l, %bb.f, %.thread154.sink.split
  %.3122158 = phi ptr [ %.3122158.ph, %.thread154.sink.split ], [ %.2121, %bb.m ], [ %.2121, %bb.o ], [ %.2121, %bb.n ], [ %i.ag, %bb.e ], [ %.2121, %bb.f ], [ %.2121, %bb.l ], [ %.2121, %bb.g ] ; 2 uses
  %i.es = load ptr, ptr %i.l, align 8, !tbaa !95  ; 3 uses
  %.not147 = icmp eq ptr %i.es, null
  br i1 %.not147, label %.loopexit170, label %.preheader

.preheader:                                       ; preds = %.thread154
  %i.et = load i32, ptr %i.h, align 8, !tbaa !69
  %.not190 = icmp eq i32 %i.et, 0
  br i1 %.not190, label %._crit_edge, label %.lr.ph188

.lr.ph188:                                        ; preds = %.preheader, %bb.s
  %i.eu = phi ptr [ %i.fe, %bb.s ], [ %i.es, %.preheader ]
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %indvars.iv217
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !98 ; 2 uses
  %.not148 = icmp eq ptr %i.ex, null
  br i1 %.not148, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph188
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !74
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ey) #14
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %indvars.iv217
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !98 ; 2 uses
  store ptr null, ptr %i.fc, align 8, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph188, %bb.r
  %i.fd = phi ptr [ null, %.lr.ph188 ], [ %i.fc, %bb.r ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.fd) #14
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !95  ; 3 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %indvars.iv217
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr null, ptr %i.fg, align 8, !tbaa !98
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.fh = load i32, ptr %i.h, align 8, !tbaa !69
  %i.fi = zext i32 %i.fh to i64
  %i.fj = icmp samesign ult i64 %indvars.iv.next218, %i.fi
  br i1 %i.fj, label %.lr.ph188, label %._crit_edge, !llvm.loop !277

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %i.fk = phi ptr [ %i.es, %.preheader ], [ %i.fe, %bb.s ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef nonnull %i.fk) #14
  store ptr null, ptr %i.l, align 8, !tbaa !95
  br label %.loopexit170
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare hidden i32 @FT_Stream_Read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare hidden i32 @FT_Stream_ExtractFrame(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @FT_Stream_ReleaseFrame(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @parse_fd_array(ptr nofree noundef captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = tail call i64 %i.g(ptr noundef %1) #14   ; 2 uses
  %or.cond = icmp ugt i64 %i.h, 2147483647
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !62
  %i.k = udiv i64 %i.j, 100
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 336, i64 noundef 0, i64 noundef %spec.select, ptr noundef null, ptr noundef nonnull %i.a) #14 ; 4 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !70
  %i.o = load i32, ptr %i.a, align 4, !tbaa !20
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %spec.select to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 %i.p, ptr %i.q, align 8, !tbaa !69
  %.not36 = icmp eq i64 %spec.select, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %spec.select, 1
  %i.r = icmp eq i64 %spec.select, 1
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i32 7, ptr %i.t, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 124
  store i32 1, ptr %i.u, align 4, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 4, ptr %i.v, align 4, !tbaa !150
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  store i64 3932, ptr %i.w, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i64 2596864, ptr %i.x, align 8, !tbaa !279
  %i.y = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 456
  store i32 7, ptr %i.z, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 460
  store i32 1, ptr %i.aa, align 4, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 340
  store i32 4, ptr %i.ab, align 4, !tbaa !150
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 528
  store i64 3932, ptr %i.ac, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 448
  store i64 2596864, ptr %i.ad, align 8, !tbaa !279
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !278

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

end_hunk_0
