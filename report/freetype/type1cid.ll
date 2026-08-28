Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type1cid?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cid_compute_fd_and_offsets:bb.a
  %niter115.ncmp.3 = icmp eq i32 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %cid_get_offset.exit73.loopexit.unr-lcssa, label %.lr.ph.i64, !llvm.loop !260

cid_get_offset.exit73.loopexit.unr-lcssa:         ; preds = %.lr.ph.i64
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %cid_get_offset.exit73, label %.lr.ph.i64.epil.preheader

.lr.ph.i64.epil.preheader:                        ; preds = %cid_get_offset.exit73.loopexit.unr-lcssa, %cid_get_offset.exit62
  %.013.i65.epil.init = phi ptr [ %i.ca, %cid_get_offset.exit62 ], [ %i.cs, %cid_get_offset.exit73.loopexit.unr-lcssa ]
  %.0812.i66.epil.init = phi i64 [ 0, %cid_get_offset.exit62 ], [ %i.cv, %cid_get_offset.exit73.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i32 %xtraiter109, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i64.epil

.lr.ph.i64.epil:                                  ; preds = %.lr.ph.i64.epil, %.lr.ph.i64.epil.preheader
  %.013.i65.epil = phi ptr [ %i.cx, %.lr.ph.i64.epil ], [ %.013.i65.epil.init, %.lr.ph.i64.epil.preheader ] ; 2 uses
  %.0812.i66.epil = phi i64 [ %i.da, %.lr.ph.i64.epil ], [ %.0812.i66.epil.init, %.lr.ph.i64.epil.preheader ]
  %epil.iter110 = phi i32 [ %epil.iter110.next, %.lr.ph.i64.epil ], [ 0, %.lr.ph.i64.epil.preheader ]
  %i.cw = shl i64 %.0812.i66.epil, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i65.epil, i64 1
  %i.cy = load i8, ptr %.013.i65.epil, align 1, !tbaa !72
  %i.cz = zext i8 %i.cy to i64
  %i.da = or disjoint i64 %i.cw, %i.cz            ; 2 uses
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %cid_get_offset.exit73, label %.lr.ph.i64.epil, !llvm.loop !264

cid_get_offset.exit73:                            ; preds = %cid_get_offset.exit73.loopexit.unr-lcssa, %.lr.ph.i64.epil, %cid_get_offset.exit
  %.08.lcssa.i6079 = phi i64 [ 0, %cid_get_offset.exit ], [ %.lcssa98, %.lr.ph.i64.epil ], [ %.lcssa98, %cid_get_offset.exit73.loopexit.unr-lcssa ] ; 2 uses
  %.08.lcssa.i71 = phi i64 [ 0, %cid_get_offset.exit ], [ %i.cv, %cid_get_offset.exit73.loopexit.unr-lcssa ], [ %i.da, %.lr.ph.i64.epil ] ; 3 uses
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %cid_get_offset.exit73
  store i64 %.08.lcssa.i, ptr %2, align 8, !tbaa !110
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cid_get_offset.exit73
  %.not48 = icmp eq ptr %3, null
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %.08.lcssa.i6079, ptr %3, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not49 = icmp eq ptr %4, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.08.lcssa.i71, ptr %4, align 8, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !101
  %i.dd = zext i32 %i.dc to i64
  %.not50 = icmp ult i64 %.08.lcssa.i, %i.dd
  br i1 %.not50, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !71
  %i.dg = icmp ugt i64 %.08.lcssa.i71, %i.df
  br i1 %i.dg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = icmp ugt i64 %.08.lcssa.i6079, %.08.lcssa.i71
  %spec.select = select i1 %i.dh, i32 9, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.038.ph = phi i32 [ 9, %bb.j ], [ 9, %bb.i ], [ %spec.select, %bb.k ]
  tail call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.b) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %bb.l
  %.03883 = phi i32 [ %.038.ph, %bb.l ], [ %i.p, %bb.a ], [ %i.s, %bb.b ]
  ret i32 %.03883
}

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
  %i.f = load i64, ptr %i.d, align 8, !tbaa !71   ; 2 uses
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
  %i.o = load i8, ptr %.262.us, align 1, !tbaa !72 ; 6 uses
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
  %i.z = load i8, ptr %.055.ph69, align 1, !tbaa !72
  %i.aa = add i8 %i.z, %.054
  %i.ab = getelementptr inbounds nuw i8, ptr %.055.ph69, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink = phi i8 [ %i.aa, %bb.l ], [ %i.y, %bb.k ]
  %.156 = phi ptr [ %i.ab, %bb.l ], [ %.055.ph69, %bb.k ] ; 3 uses
  store i8 %.sink, ptr %.055.ph69, align 1, !tbaa !72
  %i.ac = xor i8 %.053.ph71, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.262.us, i64 1
  %i.ae = icmp ult ptr %.156, %i.c
  %or.cond = select i1 %.not77, i1 %i.ae, i1 false
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %.thread, !llvm.loop !265

.thread:                                          ; preds = %bb.m, %bb.i, %bb.c, %bb.d, %bb.b, %bb.a
  %.164 = phi i32 [ %i.b, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ 160, %bb.c ], [ 160, %bb.i ], [ 0, %bb.m ]
  %.3 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.055.ph69, %bb.i ], [ %.055.ph69, %bb.d ], [ %.055.ph69, %bb.c ], [ %.156, %bb.m ]
  %i.af = ptrtoint ptr %.3 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  store i64 %i.ah, ptr %3, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.164
}

declare hidden void @FT_Stream_OpenMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_read_subrs(ptr nofree noundef captures(none) initializes((600, 608)) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101
  %i.j = zext i32 %i.i to i64
  %i.k = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 16, i64 noundef 0, i64 noundef %i.j, ptr noundef null, ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !162
  %i.m = load i32, ptr %i.a, align 4, !tbaa !21
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.preheader169, label %.loopexit170

.preheader169:                                    ; preds = %bb.a
  %i.n = load i32, ptr %i.h, align 8, !tbaa !101  ; 2 uses
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
  %i.t = phi i32 [ %i.n, %.lr.ph ], [ %i.eq, %.thread161 ]
  %indvars.iv214 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next215, %.thread161 ] ; 2 uses
  %.0119186 = phi ptr [ null, %.lr.ph ], [ %.3122166, %.thread161 ] ; 4 uses
  %.0123185 = phi i32 [ 0, %.lr.ph ], [ %.3126165, %.thread161 ] ; 5 uses
  %.0127184 = phi ptr [ %i.k, %.lr.ph ], [ %i.er, %.thread161 ] ; 3 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw [336 x i8], ptr %i.u, i64 %indvars.iv214 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  %i.z = load i32, ptr %i.y, align 8, !tbaa !127  ; 6 uses
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
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !21
  %.not137 = icmp eq i32 %i.ah, 0
  br i1 %.not137, label %bb.f, label %.thread154

bb.f:                                             ; preds = %bb.e, %bb.c
  %.2125 = phi i32 [ %i.ad, %bb.e ], [ %.0123185, %bb.c ]
  %.2121 = phi ptr [ %i.ag, %bb.e ], [ %.0119186, %bb.c ] ; 23 uses
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 320
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !129
  %i.al = add i64 %i.ak, %i.ai
  %i.am = call i32 @FT_Stream_Seek(ptr noundef %i.e, i64 noundef %i.al) #14 ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !21
  %.not138 = icmp eq i32 %i.am, 0
  br i1 %.not138, label %bb.g, label %.thread154

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 328 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !128
  %i.ap = mul i32 %i.ao, %i.aa
  %i.aq = zext i32 %i.ap to i64
  %i.ar = call i32 @FT_Stream_EnterFrame(ptr noundef %i.e, i64 noundef %i.aq) #14 ; 2 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !21
  %.not139 = icmp eq i32 %i.ar, 0
  br i1 %.not139, label %bb.h, label %.thread154

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %i.an, align 8, !tbaa !128 ; 5 uses
  %.not10.i = icmp eq i32 %i.as, 0
  %i.at = zext i32 %i.as to i64
  br i1 %.not10.i, label %cid_get_offset.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %bb.h
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !68
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.2121, i8 0, i64 %i.ax, i1 false), !tbaa !110
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
  %i.az = load i8, ptr %.013.i, align 1, !tbaa !72
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl i64 %.0812.i, 16
  %i.bc = shl nuw nsw i64 %i.ba, 8
  %i.bd = or disjoint i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i, i64 2
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !72
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i, i64 3
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !72
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl i64 %i.bh, 16
  %i.bm = shl nuw nsw i64 %i.bk, 8
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !72
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bn, %i.bq            ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !260

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
  %i.bu = load i8, ptr %.013.i.epil, align 1, !tbaa !72
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.bs, %i.bv            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@cid_read_subrs:bb.a
bb.p:                                             ; preds = %bb.p, %.preheader168.new
  %i.dd = phi ptr [ %.pre221, %.preheader168.new ], [ %i.dx, %bb.p ]
  %i.de = phi i64 [ %.pre220, %.preheader168.new ], [ %i.dv, %bb.p ]
  %indvars.iv202 = phi i64 [ 1, %.preheader168.new ], [ %indvars.iv.next203.3, %bb.p ] ; 6 uses
  %niter252 = phi i64 [ 0, %.preheader168.new ], [ %niter252.next.3, %bb.p ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv202
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !110 ; 2 uses
  %i.dh = sub i64 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv202
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !112
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next203
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !110 ; 2 uses
  %i.dm = sub i64 %i.dl, %i.dg
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next203
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !112
  %indvars.iv.next203.1 = add nuw nsw i64 %indvars.iv202, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next203.1
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !110 ; 2 uses
  %i.dr = sub i64 %i.dq, %i.dl
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next203.1
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !112
  %indvars.iv.next203.2 = add nuw nsw i64 %indvars.iv202, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next203.2
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !110 ; 3 uses
  %i.dw = sub i64 %i.dv, %i.dq
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next203.2
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !112
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202, 4 ; 2 uses
  %niter252.next.3 = add nuw i64 %niter252, 4     ; 2 uses
  %niter252.ncmp.3 = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3, label %.unr-lcssa, label %bb.p, !llvm.loop !270

.unr-lcssa:                                       ; preds = %bb.p
  %lcmp.mod249.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod249.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader168
  %.epil.init = phi ptr [ %.pre221, %.preheader168 ], [ %i.dx, %.unr-lcssa ]
  %.epil.init248 = phi i64 [ %.pre220, %.preheader168 ], [ %i.dv, %.unr-lcssa ]
  %indvars.iv202.epil.init = phi i64 [ 1, %.preheader168 ], [ %indvars.iv.next203.3, %.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter245, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %i.dz = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.ee, %bb.q ]
  %i.ea = phi i64 [ %.epil.init248, %.epil.preheader ], [ %i.ec, %bb.q ]
  %indvars.iv202.epil = phi i64 [ %indvars.iv202.epil.init, %.epil.preheader ], [ %indvars.iv.next203.epil, %bb.q ] ; 3 uses
  %epil.iter246 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter246.next, %bb.q ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv202.epil
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !110 ; 2 uses
  %i.ed = sub i64 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv202.epil
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !112
  %indvars.iv.next203.epil = add nuw nsw i64 %indvars.iv202.epil, 1
  %epil.iter246.next = add i64 %epil.iter246, 1   ; 2 uses
  %epil.iter246.cmp.not = icmp eq i64 %epil.iter246.next, %xtraiter245
  br i1 %epil.iter246.cmp.not, label %.epilog-lcssa, label %bb.q, !llvm.loop !271

.epilog-lcssa:                                    ; preds = %bb.q, %.unr-lcssa
  %i.eg = icmp sgt i32 %i.x, -1
  br i1 %i.eg, label %.preheader167, label %.loopexit

.preheader167:                                    ; preds = %.epilog-lcssa, %.preheader167
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %.preheader167 ], [ 0, %.epilog-lcssa ] ; 3 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv.next209
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !110
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.2121, i64 %indvars.iv208
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !110
  %i.el = sub i64 %i.ei, %i.ek
  %i.em = load ptr, ptr %i.s, align 8, !tbaa !272
  %i.en = load ptr, ptr %i.co, align 8, !tbaa !163
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv208
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !112
  call void %i.em(ptr noundef %i.ep, i64 noundef %i.el, i16 noundef zeroext 4330) #14
  %exitcond213.not = icmp eq i64 %indvars.iv.next209, %i.ce
  br i1 %exitcond213.not, label %.loopexit, label %.preheader167, !llvm.loop !273

.loopexit:                                        ; preds = %.preheader167, %.epilog-lcssa
  store i32 %i.z, ptr %.0127184, align 8, !tbaa !274
  %.pre222 = load i32, ptr %i.h, align 8, !tbaa !101
  br label %.thread161

.thread161:                                       ; preds = %.loopexit, %bb.b
  %i.eq = phi i32 [ %i.t, %bb.b ], [ %.pre222, %.loopexit ] ; 2 uses
  %.3122166 = phi ptr [ %.0119186, %bb.b ], [ %.2121, %.loopexit ] ; 2 uses
  %.3126165 = phi i32 [ %.0123185, %bb.b ], [ %.2125, %.loopexit ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0127184, i64 16
  %i.es = zext i32 %i.eq to i64
  %i.et = icmp samesign ult i64 %indvars.iv.next215, %i.es
  br i1 %i.et, label %bb.b, label %.loopexit170, !llvm.loop !275

.loopexit170:                                     ; preds = %.thread161, %.preheader169, %.thread154, %._crit_edge, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %.3122158, %._crit_edge ], [ %.3122158, %.thread154 ], [ null, %.preheader169 ], [ %.3122166, %.thread161 ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %.4) #14
  %i.eu = load i32, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.eu

.thread154.sink.split:                            ; preds = %bb.k, %bb.d, %bb.j
  %.sink = phi i32 [ 3, %bb.j ], [ 3, %bb.k ], [ 160, %bb.d ]
  %.3122158.ph = phi ptr [ %.2121, %bb.j ], [ %.2121, %bb.k ], [ %.0119186, %bb.d ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !21
  br label %.thread154

.thread154:                                       ; preds = %bb.e, %bb.n, %bb.o, %bb.m, %bb.g, %bb.l, %bb.f, %.thread154.sink.split
  %.3122158 = phi ptr [ %.3122158.ph, %.thread154.sink.split ], [ %.2121, %bb.m ], [ %.2121, %bb.o ], [ %.2121, %bb.n ], [ %i.ag, %bb.e ], [ %.2121, %bb.f ], [ %.2121, %bb.l ], [ %.2121, %bb.g ] ; 2 uses
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !162 ; 3 uses
  %.not147 = icmp eq ptr %i.ev, null
  br i1 %.not147, label %.loopexit170, label %.preheader

.preheader:                                       ; preds = %.thread154
  %i.ew = load i32, ptr %i.h, align 8, !tbaa !101
  %.not190 = icmp eq i32 %i.ew, 0
  br i1 %.not190, label %._crit_edge, label %.lr.ph188

.lr.ph188:                                        ; preds = %.preheader, %bb.s
  %i.ex = phi ptr [ %i.fh, %bb.s ], [ %i.ev, %.preheader ]
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %indvars.iv217
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !163 ; 2 uses
  %.not148 = icmp eq ptr %i.fa, null
  br i1 %.not148, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph188
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !112
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.fb) #14
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv217
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !163 ; 2 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !112
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph188, %bb.r
  %i.fg = phi ptr [ null, %.lr.ph188 ], [ %i.ff, %bb.r ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.fg) #14
  %i.fh = load ptr, ptr %i.l, align 8, !tbaa !162 ; 3 uses
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv217
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr null, ptr %i.fj, align 8, !tbaa !163
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !101
  %i.fl = zext i32 %i.fk to i64
  %i.fm = icmp samesign ult i64 %indvars.iv.next218, %i.fl
  br i1 %i.fm, label %.lr.ph188, label %._crit_edge, !llvm.loop !276

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %i.fn = phi ptr [ %i.ev, %.preheader ], [ %i.fh, %bb.s ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef nonnull %i.fn) #14
  store ptr null, ptr %i.l, align 8, !tbaa !162
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.h = tail call i64 %i.g(ptr noundef %1) #14   ; 2 uses
  %or.cond = icmp ugt i64 %i.h, 2147483647
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71
  %i.k = udiv i64 %i.j, 100
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 336, i64 noundef 0, i64 noundef %spec.select, ptr noundef null, ptr noundef nonnull %i.a) #14 ; 4 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !102
  %i.o = load i32, ptr %i.a, align 4, !tbaa !21
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %spec.select to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 %i.p, ptr %i.q, align 8, !tbaa !101
  %.not36 = icmp eq i64 %spec.select, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %spec.select, 1
  %2 = icmp eq i64 %spec.select, 1
  br i1 %2, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store i32 7, ptr %i.s, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  store i32 1, ptr %i.t, align 4, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 4, ptr %i.u, align 4, !tbaa !266
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  store i64 3932, ptr %i.v, align 8, !tbaa !277
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store i64 2596864, ptr %i.w, align 8, !tbaa !278
  %i.x = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  store i32 7, ptr %i.y, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 460
  store i32 1, ptr %i.z, align 4, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 340
  store i32 4, ptr %i.aa, align 4, !tbaa !266
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 528
  store i64 3932, ptr %i.ab, align 8, !tbaa !277
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  store i64 2596864, ptr %i.ac, align 8, !tbaa !278
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !279

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %spec.select to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.ad = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv.epil.init ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store i32 7, ptr %i.ae, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 124
  store i32 1, ptr %i.af, align 4, !tbaa !126
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 4, ptr %i.ag, align 4, !tbaa !266
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  store i64 3932, ptr %i.ah, align 8, !tbaa !277
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i64 2596864, ptr %i.ai, align 8, !tbaa !278
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cid_parse_font_matrix(ptr nofree noundef captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load i32, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181
  %i.i = zext i32 %i.c to i64
  %i.j = getelementptr inbounds nuw [336 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 264 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.o = call i32 %i.n(ptr noundef nonnull %1, i32 noundef 6, ptr noundef nonnull %i.a, i32 noundef 3) #14
  %i.p = icmp slt i32 %i.o, 6
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %i.s = call i64 @llvm.abs.i64(i64 %i.r, i1 true) ; 7 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.s, 65536
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i64 @FT_DivFix(i64 noundef 1000, i64 noundef %i.s) #14
  %i.v = trunc i64 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 %i.v, ptr %i.w, align 8, !tbaa !156
  %i.x = load i64, ptr %i.a, align 16, !tbaa !110
  %i.y = call i64 @FT_DivFix(i64 noundef %i.x, i64 noundef %i.s) #14
  store i64 %i.y, ptr %i.a, align 16, !tbaa !110
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !110
  %i.ab = call i64 @FT_DivFix(i64 noundef %i.aa, i64 noundef %i.s) #14
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !110
  %i.ae = call i64 @FT_DivFix(i64 noundef %i.ad, i64 noundef %i.s) #14
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !110
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !110
  %i.ah = call i64 @FT_DivFix(i64 noundef %i.ag, i64 noundef %i.s) #14
  store i64 %i.ah, ptr %i.af, align 16, !tbaa !110
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !110
  %i.ak = call i64 @FT_DivFix(i64 noundef %i.aj, i64 noundef %i.s) #14
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !110
  %i.al = load i64, ptr %i.q, align 8, !tbaa !110
  %i.am = icmp slt i64 %i.al, 0
  %i.an = select i1 %i.am, i64 -65536, i64 65536  ; 2 uses
  store i64 %i.an, ptr %i.q, align 8, !tbaa !110
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = phi i64 [ %i.an, %bb.e ], [ %i.r, %bb.d ]
  %i.ap = load i64, ptr %i.a, align 16, !tbaa !110
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !239
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !110
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !281
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = load i64, ptr %i.at, align 16, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  store i64 %i.au, ptr %i.av, align 8, !tbaa !282
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !240
  %i.ax = call zeroext i8 @FT_Matrix_Check(ptr noundef nonnull %i.k) #14
  %.not30 = icmp eq i8 %i.ax, 0
  br i1 %.not30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.ay, align 8, !tbaa !84
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ba = load i64, ptr %i.az, align 16, !tbaa !110
  %i.bb = ashr i64 %i.ba, 16
  store i64 %i.bb, ptr %i.l, align 8, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !110
  %i.be = ashr i64 %i.bd, 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !248
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_expansion_factor(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [336 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !283
  %i.l = tail call i64 %i.k(ptr noundef nonnull %1, i32 noundef 0) #14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  store i64 %i.l, ptr %i.m, align 8, !tbaa !284
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  store i64 %i.l, ptr %i.n, align 8, !tbaa !277
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @parse_font_name(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret void
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #5

declare hidden zeroext i8 @FT_Matrix_Check(ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @FT_Get_Module(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @cid_load_glyph(ptr noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %2 = alloca %struct.FT_Data_, align 8           ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.PS_Decoder_, align 8        ; 6 uses
  %4 = alloca %struct.CFF_SubFontRec_, align 8    ; 4 uses
  %5 = alloca %struct.FT_Incremental_MetricsRec_, align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !285  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !286
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !287  ; 7 uses
  %i.q = icmp ne ptr %i.p, null                   ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.j
end_hunk_1
