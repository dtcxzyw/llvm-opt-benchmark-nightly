inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0_@ft_lzw_stream_io:bb.a
  %.02437.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %spec.select32.i.i = tail call i64 @llvm.umin.i64(i64 %.02437.i.i, i64 4096) ; 4 uses
  %i.al = tail call i64 @ft_lzwstate_io(ptr noundef nonnull %i.ak, ptr noundef null, i64 noundef %spec.select32.i.i)
  %i.am = icmp ult i64 %i.al, %spec.select32.i.i
  br i1 %i.am, label %ft_lzw_file_io.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.c, align 8, !tbaa !25
  %i.ao = add i64 %i.an, %spec.select32.i.i
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !25
  %i.ap = sub i64 %.02437.i.i, %spec.select32.i.i ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not31.i.i, label %ft_lzw_file_skip_output.exit.i, label %bb.f

ft_lzw_file_skip_output.exit.i:                   ; preds = %bb.g, %bb.e
  %i.aq = icmp eq i64 %3, 0
  br i1 %i.aq, label %ft_lzw_file_io.exit, label %.preheader.i

bb.h:                                             ; preds = %bb.d, %.thread.i
  %.old1.i = icmp eq i64 %3, 0
  br i1 %.old1.i, label %ft_lzw_file_io.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %ft_lzw_file_skip_output.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4352 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4344 ; 5 uses
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !23
  %.pre64.i = load ptr, ptr %i.au, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader.i
  %i.av = phi ptr [ %i.bj, %bb.j ], [ %.pre64.i, %.preheader.i ] ; 2 uses
  %i.aw = phi ptr [ %i.bk, %bb.j ], [ %.pre.i, %.preheader.i ]
  %.045.i = phi i64 [ %i.bg, %bb.j ], [ %3, %.preheader.i ] ; 2 uses
  %.044.i = phi i64 [ %i.bb, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %.045.i) ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.044.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.av, i64 %spec.select.i, i1 false)
  %i.bb = add i64 %spec.select.i, %.044.i         ; 3 uses
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %spec.select.i
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !24
  %i.be = load i64, ptr %i.c, align 8, !tbaa !25
  %i.bf = add i64 %i.be, %spec.select.i
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !25
  %i.bg = sub i64 %.045.i, %spec.select.i         ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %ft_lzw_file_io.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.as, ptr %i.au, align 8, !tbaa !24
  %i.bi = tail call i64 @ft_lzwstate_io(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 4096) ; 2 uses
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !23
  %.not61.i = icmp eq i64 %i.bi, 0
  br i1 %.not61.i, label %ft_lzw_file_io.exit, label %bb.i

ft_lzw_file_io.exit:                              ; preds = %bb.f, %bb.i, %bb.j, %bb.c, %ft_lzw_file_skip_output.exit.i, %bb.h
  %.1.i = phi i64 [ 0, %ft_lzw_file_skip_output.exit.i ], [ %i.bb, %bb.i ], [ 0, %bb.h ], [ 0, %bb.c ], [ %i.bb, %bb.j ], [ 0, %bb.f ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define internal void @ft_lzw_stream_close(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 13 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 0, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.l, align 4, !tbaa !30
  store i32 0, ptr %i.e, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %ft_lzw_file_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.n) #7
  store ptr null, ptr %i.m, align 8, !tbaa !28
  br label %ft_lzw_file_done.exit

ft_lzw_file_done.exit:                            ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  tail call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.q) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, i8 0, i64 240, i1 false)
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef nonnull %i.b) #7
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %ft_lzw_file_done.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ft_lzwstate_reset(ptr nofree noundef writeonly captures(none) initializes((0, 8), (24, 33), (40, 48), (60, 64), (120, 124)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.e, align 4, !tbaa !30
  store i32 0, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ft_lzwstate_init(ptr noundef initializes((0, 216)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.c, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 64, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.k, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ft_lzwstate_done(ptr nofree noundef captures(address) initializes((0, 8), (24, 33), (40, 48), (60, 64), (120, 124)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.f, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  store i32 9, ptr %i.g, align 4, !tbaa !30
  store i32 0, ptr %0, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.i) #7
  store ptr null, ptr %i.h, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.l) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @ft_lzwstate_io(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca i32, align 4                        ; 5 uses
  %4 = alloca i32, align 4                        ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 7 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !39
  switch i32 %i.k, label %.loopexit [
    i32 0, label %bb.c
    i32 1, label %.preheader
    i32 2, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call i32 @FT_Stream_Seek(ptr noundef %i.m, i64 noundef 2) #7
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.p = call i64 @FT_Stream_TryRead(ptr noundef %i.o, ptr noundef nonnull %i.c, i64 noundef 1) #7
  %.not138 = icmp eq i64 %i.p, 1
  br i1 %.not138, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.c, align 1, !tbaa !14    ; 3 uses
  %i.r = and i8 %i.q, 31                          ; 3 uses
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.s, ptr %i.t, align 8, !tbaa !44
  %i.u = and i8 %i.q, -128
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.v, ptr %i.w, align 4, !tbaa !45
  %i.x = shl nuw i32 1, %i.s                      ; 2 uses
  %i.y = add i32 %i.x, -256
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.y, ptr %i.z, align 8, !tbaa !46
  %i.aa = icmp samesign ugt i8 %i.r, 16
  br i1 %i.aa, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 9, ptr %i.ab, align 4, !tbaa !30
  %.lobit = lshr i8 %i.q, 7
  %i.ac = zext nneg i8 %.lobit to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !47
  %i.ae = icmp samesign ugt i8 %i.r, 9
  %i.af = add i32 %i.x, -255
  %spec.select = select i1 %i.ae, i32 256, i32 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %spec.select, ptr %i.ag, align 4, !tbaa !48
  %i.ah = call fastcc i32 @ft_lzwstate_get_code(ptr noundef nonnull %0) ; 6 uses
  %or.cond = icmp ugt i32 %i.ah, 255
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not140 = icmp eq ptr %1, null
  br i1 %.not140, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = trunc nuw i32 %i.ah to i8
  store i8 %i.ai, ptr %1, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = icmp eq i64 %2, 1
  br i1 %i.aj, label %bb.j, label %.thread156

.thread156:                                       ; preds = %bb.i
  store i32 1, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.preheader

.thread:                                          ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  %.0108.ph = phi i32 [ %i.i, %bb.d ], [ 0, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.loopexit166

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.loopexit

.preheader:                                       ; preds = %bb.b, %.thread156, %bb.ai
  %.2122.ph = phi i32 [ %.3123, %bb.ai ], [ %i.ah, %.thread156 ], [ %i.e, %bb.b ] ; 3 uses
  %.2116.ph = phi i32 [ %.3111, %bb.ai ], [ %i.ah, %.thread156 ], [ %i.g, %bb.b ] ; 3 uses
  %.2110.ph = phi i32 [ %.3111, %bb.ai ], [ 0, %.thread156 ], [ %i.i, %bb.b ] ; 3 uses
  %.2107.ph = phi i64 [ %.us-phi, %bb.ai ], [ 1, %.thread156 ], [ 0, %bb.b ]
  %i.ak = freeze i64 %.2107.ph                    ; 9 uses
  %i.al = call fastcc i32 @ft_lzwstate_get_code(ptr noundef nonnull %0) ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.loopexit166, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = icmp eq i32 %i.al, 256
  br i1 %i.aq, label %bb.k, label %.loopexit208

bb.k:                                             ; preds = %.lr.ph
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !45
  %.not141.peel = icmp eq i32 %i.ar, 0
  br i1 %.not141.peel, label %.thread162, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ao, align 8, !tbaa !47
  store i8 1, ptr %i.ap, align 8, !tbaa !49
  %i.as = call fastcc i32 @ft_lzwstate_get_code(ptr noundef nonnull %0) ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %.loopexit166, label %.peel.next

.peel.next:                                       ; preds = %bb.l, %bb.n
  %i.au = phi i32 [ %i.ax, %bb.n ], [ %i.as, %bb.l ] ; 2 uses
  %i.av = icmp eq i32 %i.au, 256
  br i1 %i.av, label %bb.m, label %.loopexit208

bb.m:                                             ; preds = %.peel.next
  %i.aw = load i32, ptr %i.an, align 4, !tbaa !45
  %.not141 = icmp eq i32 %i.aw, 0
  br i1 %.not141, label %.thread162, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ao, align 8, !tbaa !47
  store i8 1, ptr %i.ap, align 8, !tbaa !49
  %i.ax = call fastcc i32 @ft_lzwstate_get_code(ptr noundef nonnull %0) ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit166, label %.peel.next, !llvm.loop !50

.loopexit208:                                     ; preds = %.peel.next, %.lr.ph
  %.lcssa204 = phi i32 [ %i.al, %.lr.ph ], [ %i.au, %.peel.next ] ; 4 uses
  %.2116182.lcssa = phi i32 [ %.2116.ph, %.lr.ph ], [ 0, %.peel.next ] ; 2 uses
  %.2122181.lcssa = phi i32 [ %.2122.ph, %.lr.ph ], [ 0, %.peel.next ]
  %i.az = icmp samesign ugt i32 %.lcssa204, 255
  br i1 %i.az, label %.thread162, label %.loopexit165

.thread162:                                       ; preds = %bb.m, %bb.k, %.loopexit208
  %i.ba = phi i32 [ %.lcssa204, %.loopexit208 ], [ 256, %bb.k ], [ 256, %bb.m ] ; 8 uses
  %.2116182202 = phi i32 [ %.2116182.lcssa, %.loopexit208 ], [ %.2116.ph, %bb.k ], [ 0, %bb.m ] ; 9 uses
  %.2122181199 = phi i32 [ %.2122181.lcssa, %.loopexit208 ], [ %.2122.ph, %bb.k ], [ 0, %bb.m ] ; 5 uses
  %i.bb = add nsw i32 %i.ba, -256                 ; 2 uses
  %i.bc = load i32, ptr %i.ao, align 8, !tbaa !47 ; 2 uses
  %.not142 = icmp ult i32 %i.bb, %i.bc
  br i1 %.not142, label %.lr.ph185, label %bb.o

bb.o:                                             ; preds = %.thread162
  %i.bd = icmp samesign ugt i32 %i.bb, %i.bc
  br i1 %i.bd, label %.loopexit166, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !29 ; 6 uses
  %.not143 = icmp ugt i64 %i.bi, %i.bg
  br i1 %.not143, label %bb.r, label %5

5:                                                ; preds = %bb.p
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %8 = lshr i64 %i.bi, 1
  %9 = add nuw nsw i64 %8, %i.bi                  ; 2 uses
  %10 = add nuw nsw i64 %9, 4                     ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %12 = load ptr, ptr %11, align 8, !tbaa !28     ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %.thread.i, label %15

15:                                               ; preds = %5
  %16 = icmp samesign ugt i64 %9, 65532
  br i1 %16, label %17, label %bb.q

.thread.i:                                        ; preds = %5
  store ptr null, ptr %11, align 8, !tbaa !28
  %spec.select.i = call i64 @llvm.umin.i64(i64 %10, i64 65536)
  br label %bb.q

17:                                               ; preds = %15
  %18 = icmp eq i64 %i.bi, 65536
  br i1 %18, label %ft_lzwstate_stack_grow.exit.thread, label %bb.q

bb.q:                                             ; preds = %17, %.thread.i, %15
  %19 = phi ptr [ %12, %17 ], [ %12, %15 ], [ null, %.thread.i ]
  %.02531.i = phi i64 [ %i.bi, %17 ], [ %i.bi, %15 ], [ 0, %.thread.i ] ; 2 uses
  %.024.i = phi i64 [ 65536, %17 ], [ %10, %15 ], [ %spec.select.i, %.thread.i ] ; 2 uses
  %20 = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 1, i64 noundef %.02531.i, i64 noundef %.024.i, ptr noundef %19, ptr noundef nonnull %i.b) #7 ; 2 uses
  store ptr %20, ptr %11, align 8, !tbaa !28
  %21 = load i32, ptr %i.b, align 4, !tbaa !15
  %.not28.i = icmp eq i32 %21, 0
  br i1 %.not28.i, label %22, label %ft_lzwstate_stack_grow.exit.thread

22:                                               ; preds = %bb.q
  %23 = icmp eq i64 %.02531.i, 0
  br i1 %23, label %24, label %._crit_edge

24:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %20, ptr noundef nonnull align 8 dereferenceable(64) %13, i64 64, i1 false)
  br label %._crit_edge

ft_lzwstate_stack_grow.exit.thread:               ; preds = %17, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit166

._crit_edge:                                      ; preds = %22, %24
  store i64 %.024.i, ptr %i.bh, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.pre = load i32, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %.pre220 = zext i32 %.pre to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %._crit_edge
  %.pre-phi221 = phi i64 [ %.pre220, %._crit_edge ], [ %i.bg, %bb.p ]
  %i.bj = phi i32 [ %.pre, %._crit_edge ], [ %i.bf, %bb.p ]
  %i.bk = trunc i32 %.2122181199 to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28
  %i.bn = add i32 %i.bj, 1
  store i32 %i.bn, ptr %i.be, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.pre-phi221
  store i8 %i.bk, ptr %i.bo, align 1, !tbaa !14
  %i.bp = icmp ugt i32 %.2116182202, 255
  br i1 %i.bp, label %.lr.ph185, label %.loopexit165

.lr.ph185:                                        ; preds = %.thread162, %bb.r
  %.0244 = phi i32 [ %.2116182202, %bb.r ], [ %i.ba, %.thread162 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre209 = load ptr, ptr %i.bq, align 8, !tbaa !40
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph185, %bb.z
  %i.bx = phi ptr [ %.pre209, %.lr.ph185 ], [ %i.cv, %bb.z ]
  %.1184 = phi i32 [ %.0244, %.lr.ph185 ], [ %i.cy, %bb.z ]
  %.not148 = icmp eq ptr %i.bx, null
  br i1 %.not148, label %.loopexit166, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load i32, ptr %i.br, align 8, !tbaa !38 ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !29 ; 6 uses
  %.not149 = icmp ugt i64 %i.ca, %i.bz
  %.pre211 = load ptr, ptr %i.bu, align 8, !tbaa !28 ; 4 uses
  br i1 %.not149, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.cc = lshr i64 %i.ca, 1
  %i.cd = add nuw nsw i64 %i.cc, %i.ca            ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, 4                ; 2 uses
  %i.cf = icmp eq ptr %.pre211, %i.bv
  br i1 %i.cf, label %.thread.i.a, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = icmp samesign ugt i64 %i.cd, 65532
  br i1 %i.cg, label %bb.w, label %.thread32.i

.thread.i.a:                                      ; preds = %bb.u
  store ptr null, ptr %i.bu, align 8, !tbaa !28
  %spec.select.i.a = call i64 @llvm.umin.i64(i64 %i.ce, i64 65536)
  br label %.thread32.i

bb.w:                                             ; preds = %bb.v
  %i.ch = icmp eq i64 %i.ca, 65536
  br i1 %i.ch, label %ft_lzwstate_stack_grow.exit.thread.a, label %.thread32.i

.thread32.i:                                      ; preds = %bb.w, %.thread.i.a, %bb.v
  %i.ci = phi ptr [ %.pre211, %bb.w ], [ %.pre211, %bb.v ], [ null, %.thread.i.a ]
  %.02531.i.a = phi i64 [ %i.ca, %bb.w ], [ %i.ca, %bb.v ], [ 0, %.thread.i.a ] ; 2 uses
  %.024.i.a = phi i64 [ 65536, %bb.w ], [ %i.ce, %bb.v ], [ %spec.select.i.a, %.thread.i.a ] ; 2 uses
  %i.cj = call ptr @ft_mem_qrealloc(ptr noundef %i.cb, i64 noundef 1, i64 noundef %.02531.i.a, i64 noundef %.024.i.a, ptr noundef %i.ci, ptr noundef nonnull %i.a) #7 ; 3 uses
  store ptr %i.cj, ptr %i.bu, align 8, !tbaa !28
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !15
  %.not28.i.a = icmp eq i32 %i.ck, 0
  br i1 %.not28.i.a, label %bb.x, label %ft_lzwstate_stack_grow.exit.thread.a

bb.x:                                             ; preds = %.thread32.i
  %i.cl = icmp eq i64 %.02531.i.a, 0
  br i1 %i.cl, label %bb.y, label %ft_lzwstate_stack_grow.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i64 64, i1 false)
  %.pre210.pre = load ptr, ptr %i.bu, align 8, !tbaa !28
  br label %ft_lzwstate_stack_grow.exit

ft_lzwstate_stack_grow.exit.thread.a:             ; preds = %bb.w, %.thread32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit166

ft_lzwstate_stack_grow.exit:                      ; preds = %bb.x, %bb.y
  %.pre210 = phi ptr [ %i.cj, %bb.x ], [ %.pre210.pre, %bb.y ]
  store i64 %.024.i.a, ptr %i.bs, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre212 = load i32, ptr %i.br, align 8, !tbaa !38 ; 2 uses
  %.pre217 = zext i32 %.pre212 to i64
  br label %bb.z

bb.z:                                             ; preds = %ft_lzwstate_stack_grow.exit, %bb.t
  %.pre-phi = phi i64 [ %.pre217, %ft_lzwstate_stack_grow.exit ], [ %i.bz, %bb.t ]
  %i.cm = phi i32 [ %.pre212, %ft_lzwstate_stack_grow.exit ], [ %i.by, %bb.t ]
  %i.cn = phi ptr [ %.pre210, %ft_lzwstate_stack_grow.exit ], [ %.pre211, %bb.t ]
  %i.co = load ptr, ptr %i.bw, align 8, !tbaa !52
  %i.cp = add i32 %.1184, -256
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.ct = add i32 %i.cm, 1
  store i32 %i.ct, ptr %i.br, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.pre-phi
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !14
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cq
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !53 ; 2 uses
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = icmp ugt i16 %i.cx, 255
  br i1 %i.cz, label %bb.s, label %.loopexit165, !llvm.loop !55

.loopexit165:                                     ; preds = %bb.z, %bb.r, %.loopexit208
  %i.da = phi i32 [ %.lcssa204, %.loopexit208 ], [ %i.ba, %bb.r ], [ %i.ba, %bb.z ] ; 2 uses
  %.2116182203 = phi i32 [ %.2116182.lcssa, %.loopexit208 ], [ %.2116182202, %bb.r ], [ %.2116182202, %bb.z ] ; 2 uses
  %.2 = phi i32 [ %.lcssa204, %.loopexit208 ], [ %.2116182202, %bb.r ], [ %i.cy, %bb.z ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !38 ; 2 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !29 ; 6 uses
  %.not144 = icmp ugt i64 %i.df, %i.dd
  br i1 %.not144, label %bb.ab, label %25

25:                                               ; preds = %.loopexit165
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %27 = load ptr, ptr %26, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %28 = lshr i64 %i.df, 1
  %29 = add nuw nsw i64 %28, %i.df                ; 2 uses
  %30 = add nuw nsw i64 %29, 4                    ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %32 = load ptr, ptr %31, align 8, !tbaa !28     ; 3 uses
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %.thread.i169, label %35

35:                                               ; preds = %25
  %36 = icmp samesign ugt i64 %29, 65532
  br i1 %36, label %37, label %bb.aa

.thread.i169:                                     ; preds = %25
  store ptr null, ptr %31, align 8, !tbaa !28
  %spec.select.i170 = call i64 @llvm.umin.i64(i64 %30, i64 65536)
  br label %bb.aa

37:                                               ; preds = %35
  %38 = icmp eq i64 %i.df, 65536
  br i1 %38, label %ft_lzwstate_stack_grow.exit171.thread, label %bb.aa

bb.aa:                                            ; preds = %37, %.thread.i169, %35
  %39 = phi ptr [ %32, %37 ], [ %32, %35 ], [ null, %.thread.i169 ]
  %.02531.i163 = phi i64 [ %i.df, %37 ], [ %i.df, %35 ], [ 0, %.thread.i169 ] ; 2 uses
  %.024.i164 = phi i64 [ 65536, %37 ], [ %30, %35 ], [ %spec.select.i170, %.thread.i169 ] ; 2 uses
  %40 = call ptr @ft_mem_qrealloc(ptr noundef %27, i64 noundef 1, i64 noundef %.02531.i163, i64 noundef %.024.i164, ptr noundef %39, ptr noundef nonnull %4) #7 ; 2 uses
  store ptr %40, ptr %31, align 8, !tbaa !28
  %41 = load i32, ptr %4, align 4, !tbaa !15
  %.not28.i165 = icmp eq i32 %41, 0
  br i1 %.not28.i165, label %42, label %ft_lzwstate_stack_grow.exit171.thread

42:                                               ; preds = %bb.aa
  %43 = icmp eq i64 %.02531.i163, 0
  br i1 %43, label %44, label %._crit_edge213

44:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %40, ptr noundef nonnull align 8 dereferenceable(64) %33, i64 64, i1 false)
  br label %._crit_edge213

ft_lzwstate_stack_grow.exit171.thread:            ; preds = %37, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.loopexit166

._crit_edge213:                                   ; preds = %42, %44
  store i64 %.024.i164, ptr %i.de, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.pre214 = load i32, ptr %i.db, align 8, !tbaa !38 ; 2 uses
  %.pre218 = zext i32 %.pre214 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge213, %.loopexit165
  %.pre-phi219 = phi i64 [ %.pre218, %._crit_edge213 ], [ %i.dd, %.loopexit165 ]
  %i.dg = phi i32 [ %.pre214, %._crit_edge213 ], [ %i.dc, %.loopexit165 ]
  %i.dh = trunc nuw i32 %.2 to i8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !28
  %i.dk = add i32 %i.dg, 1
  store i32 %i.dk, ptr %i.db, align 8, !tbaa !38
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.pre-phi219
  store i8 %i.dh, ptr %i.dl, align 1, !tbaa !14
  store i32 2, ptr %0, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.b
  %.3123 = phi i32 [ %.2, %bb.ab ], [ %i.e, %bb.b ] ; 5 uses
  %.3117 = phi i32 [ %.2116182203, %bb.ab ], [ %i.g, %bb.b ] ; 4 uses
  %.3111 = phi i32 [ %i.da, %bb.ab ], [ %i.i, %bb.b ] ; 5 uses
  %.3 = phi i64 [ %i.ak, %bb.ab ], [ 0, %bb.b ]   ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.not147 = icmp eq ptr %1, null
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 112
  br i1 %.not147, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.ac
  %.promoted = load i32, ptr %i.dm, align 8, !tbaa !38 ; 4 uses
  %i.do = xor i64 %.3, -1
  %i.dp = add i64 %2, %i.do
  %i.dq = zext i32 %.promoted to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dq) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split.us
  %i.dr = add nuw nsw i64 %umin, 1                ; 2 uses
  %i.ds = and i64 %i.dr, 7                        ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = select i1 %i.dt, i64 8, i64 %i.ds
  %n.vec = sub nsw i64 %i.dr, %i.du               ; 3 uses
  %i.dv = trunc i64 %n.vec to i32
  %i.dw = sub i32 %.promoted, %i.dv
  %i.dx = add i64 %.3, %n.vec
  %i.dy = add i32 %.promoted, -3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.dz = phi i32 [ %i.dy, %vector.ph ], [ %i.ea, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = add i32 %i.dz, -8
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %i.ec = add i32 %i.dz, -5
  store i32 %i.ec, ptr %i.dm, align 8, !tbaa !38
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split.us, %middle.block
  %.ph = phi i32 [ %.promoted, %.split.us ], [ %i.dw, %middle.block ]
  %.4.us.ph = phi i64 [ %.3, %.split.us ], [ %i.dx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ad
  %i.ed = phi i32 [ %i.ee, %bb.ad ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.4.us = phi i64 [ %i.ef, %bb.ad ], [ %.4.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.not145.us = icmp eq i32 %i.ed, 0
  br i1 %.not145.us, label %.split188.us, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph
  %i.ee = add i32 %i.ed, -1                       ; 2 uses
  store i32 %i.ee, ptr %i.dm, align 8, !tbaa !38
  %i.ef = add i64 %.4.us, 1                       ; 2 uses
  %i.eg = icmp eq i64 %i.ef, %2
  br i1 %i.eg, label %.loopexit, label %scalar.ph, !llvm.loop !60

.split:                                           ; preds = %bb.ac, %bb.ae
  %.4 = phi i64 [ %i.eo, %bb.ae ], [ %.3, %bb.ac ] ; 3 uses
  %i.eh = load i32, ptr %i.dm, align 8, !tbaa !38 ; 2 uses
  %.not145 = icmp eq i32 %i.eh, 0
  br i1 %.not145, label %.split188.us, label %bb.ae

bb.ae:                                            ; preds = %.split
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.dm, align 8, !tbaa !38
  %i.ej = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %.4
  store i8 %i.em, ptr %i.en, align 1, !tbaa !14
  %i.eo = add i64 %.4, 1                          ; 2 uses
  %i.ep = icmp eq i64 %i.eo, %2
  br i1 %i.ep, label %.loopexit, label %.split, !llvm.loop !61

.split188.us:                                     ; preds = %.split, %scalar.ph
  %.us-phi = phi i64 [ %.4.us, %scalar.ph ], [ %.4, %.split ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !47 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.et = load i32, ptr %i.es, align 8, !tbaa !46
  %i.eu = icmp ult i32 %i.er, %i.et
  br i1 %i.eu, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.split188.us
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !62 ; 5 uses
  %.not146 = icmp ult i32 %i.er, %i.ew
  br i1 %.not146, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.ez = icmp eq i32 %i.ew, 0
  %i.fa = lshr i32 %i.ew, 2
  %i.fb = add i32 %i.fa, %i.ew
  %.020.i = select i1 %i.ez, i32 512, i32 %i.fb   ; 2 uses
  %i.fc = zext i32 %i.ew to i64                   ; 3 uses
  %i.fd = zext i32 %.020.i to i64                 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !40
  %i.fg = call ptr @ft_mem_realloc(ptr noundef %i.ey, i64 noundef 3, i64 noundef %i.fc, i64 noundef %i.fd, ptr noundef %i.ff, ptr noundef nonnull %3) #7 ; 3 uses
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !40
  %i.fh = load i32, ptr %3, align 4, !tbaa !15
  %.not.i150 = icmp eq i32 %i.fh, 0
  br i1 %.not.i150, label %ft_lzwstate_prefix_grow.exit, label %ft_lzwstate_prefix_grow.exit.thread

ft_lzwstate_prefix_grow.exit.thread:              ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %.loopexit166

ft_lzwstate_prefix_grow.exit:                     ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fd ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !52
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fi, ptr align 2 %i.fk, i64 %i.fc, i1 false)
  store i32 %.020.i, ptr %i.ev, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.pre215 = load i32, ptr %i.eq, align 8, !tbaa !47
  br label %bb.ah

bb.ah:                                            ; preds = %ft_lzwstate_prefix_grow.exit, %bb.af
  %i.fl = phi i32 [ %.pre215, %ft_lzwstate_prefix_grow.exit ], [ %i.er, %bb.af ]
  %i.fm = trunc i32 %.3117 to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !40
  %i.fp = zext i32 %i.fl to i64                   ; 2 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fp
  store i16 %i.fm, ptr %i.fq, align 2, !tbaa !53
  %i.fr = trunc i32 %.3123 to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !52
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !14
  %i.fv = load i32, ptr %i.eq, align 8, !tbaa !47
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.eq, align 8, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split188.us
  store i32 1, ptr %0, align 8, !tbaa !39
  br label %.preheader

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %bb.j, %bb.b, %bb.a, %.loopexit166
  %.4124 = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %.5125, %.loopexit166 ], [ %i.ah, %bb.j ], [ %.3123, %bb.ad ], [ %.3123, %bb.ae ]
  %.4118 = phi i32 [ %i.g, %bb.a ], [ %i.g, %bb.b ], [ %.5119, %.loopexit166 ], [ %i.ah, %bb.j ], [ %.3117, %bb.ad ], [ %.3117, %bb.ae ]
  %.4112 = phi i32 [ %i.i, %bb.a ], [ %i.i, %bb.b ], [ %.5113, %.loopexit166 ], [ 0, %bb.j ], [ %.3111, %bb.ad ], [ %.3111, %bb.ae ]
  %.5 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.6, %.loopexit166 ], [ 1, %bb.j ], [ %2, %bb.ad ], [ %2, %bb.ae ]
  store i32 %.4118, ptr %i.f, align 8, !tbaa !42
  store i32 %.4124, ptr %i.d, align 4, !tbaa !41
  store i32 %.4112, ptr %i.h, align 8, !tbaa !43
  ret i64 %.5

.loopexit166:                                     ; preds = %bb.n, %bb.s, %bb.l, %.preheader, %ft_lzwstate_prefix_grow.exit.thread, %ft_lzwstate_stack_grow.exit171.thread, %ft_lzwstate_stack_grow.exit.thread.a, %ft_lzwstate_stack_grow.exit.thread, %.thread, %bb.o
  %.5125 = phi i32 [ 0, %bb.l ], [ %.2122181199, %bb.o ], [ %.2122181199, %ft_lzwstate_stack_grow.exit.thread ], [ %.2122181199, %ft_lzwstate_stack_grow.exit.thread.a ], [ %i.e, %.thread ], [ %.2, %ft_lzwstate_stack_grow.exit171.thread ], [ %.3123, %ft_lzwstate_prefix_grow.exit.thread ], [ %.2122.ph, %.preheader ], [ %.2122181199, %bb.s ], [ 0, %bb.n ]
  %.5119 = phi i32 [ 0, %bb.l ], [ %.2116182202, %bb.o ], [ %.2116182202, %ft_lzwstate_stack_grow.exit.thread ], [ %.2116182202, %ft_lzwstate_stack_grow.exit.thread.a ], [ %i.g, %.thread ], [ %.2116182203, %ft_lzwstate_stack_grow.exit171.thread ], [ %.3117, %ft_lzwstate_prefix_grow.exit.thread ], [ %.2116.ph, %.preheader ], [ %.2116182202, %bb.s ], [ 0, %bb.n ]
  %.5113 = phi i32 [ %.2110.ph, %bb.l ], [ %i.ba, %bb.o ], [ %i.ba, %ft_lzwstate_stack_grow.exit.thread ], [ %i.ba, %ft_lzwstate_stack_grow.exit.thread.a ], [ %.0108.ph, %.thread ], [ %i.da, %ft_lzwstate_stack_grow.exit171.thread ], [ %.3111, %ft_lzwstate_prefix_grow.exit.thread ], [ %.2110.ph, %.preheader ], [ %i.ba, %bb.s ], [ %.2110.ph, %bb.n ]
  %.6 = phi i64 [ %i.ak, %bb.l ], [ %i.ak, %bb.o ], [ %i.ak, %ft_lzwstate_stack_grow.exit.thread ], [ %i.ak, %ft_lzwstate_stack_grow.exit.thread.a ], [ 0, %.thread ], [ %i.ak, %ft_lzwstate_stack_grow.exit171.thread ], [ %.us-phi, %ft_lzwstate_prefix_grow.exit.thread ], [ %i.ak, %.preheader ], [ %i.ak, %bb.s ], [ %i.ak, %bb.n ]
  store i32 3, ptr %0, align 8, !tbaa !39
  br label %.loopexit
}

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden i64 @FT_Stream_TryRead(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 16777216) i32 @ft_lzwstate_get_code(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !49
  %.not = icmp eq i8 %i.f, 0                      ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %.not56 = icmp ult i32 %i.d, %i.h
  br i1 %.not56, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !48
  %.not57 = icmp ult i32 %i.j, %i.l
  br i1 %.not57, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48
  %.not58 = icmp ult i32 %i.n, %i.p
  br i1 %.not58, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i32 %i.b, 1                          ; 5 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !30
  %i.r = icmp ugt i32 %i.q, 16
  br i1 %i.r, label %ft_lzwstate_refill.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !44
  %i.u = icmp ult i32 %i.q, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.q to i64
  %i.w = shl nuw nsw i64 1, %i.v
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nsw i32 %i.x, -256
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !46
  %i.ab = add i32 %i.aa, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i32 [ %i.y, %bb.g ], [ %i.ab, %bb.h ]
  store i32 %i.ac, ptr %i.o, align 4, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.049 = phi i32 [ %i.q, %bb.i ], [ %i.b, %bb.d ]
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 9, ptr %i.a, align 4, !tbaa !30
  store i32 256, ptr %i.o, align 4, !tbaa !48
  store i8 0, ptr %i.e, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = phi i32 [ 9, %bb.k ], [ %.049, %bb.j ]  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.m, label %ft_lzwstate_refill.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = zext i32 %i.ad to i64
  %i.ak = tail call i64 @FT_Stream_TryRead(ptr noundef %i.ah, ptr noundef nonnull %i.ai, i64 noundef %i.aj) #7 ; 4 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !37
  %i.ap = add i64 %i.ao, %i.ak
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !37
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !30  ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp ult i64 %i.ak, %i.ar
  %i.at = zext i1 %i.as to i32
  store i32 %i.at, ptr %i.ae, align 4, !tbaa !36
  store i32 0, ptr %i.c, align 8, !tbaa !63
  %i.au = shl i32 %i.al, 3                        ; 3 uses
  store i32 %i.au, ptr %i.am, align 4, !tbaa !64
  %i.av = icmp ugt i32 %i.au, %i.aq
  br i1 %i.av, label %ft_lzwstate_refill.exit, label %ft_lzwstate_refill.exit.thread

ft_lzwstate_refill.exit:                          ; preds = %bb.m
  %.neg20.i = or disjoint i32 %i.au, 1
  %i.aw = sub i32 %.neg20.i, %i.aq
  store i32 %i.aw, ptr %i.am, align 4, !tbaa !64
  %i.ax = icmp eq i64 %i.ak, 0
  br i1 %i.ax, label %ft_lzwstate_refill.exit.thread, label %bb.n

bb.n:                                             ; preds = %ft_lzwstate_refill.exit, %bb.c
  %.2 = phi i32 [ %i.b, %bb.c ], [ %i.ad, %ft_lzwstate_refill.exit ] ; 2 uses
  %.047 = phi i32 [ %i.d, %bb.c ], [ 0, %ft_lzwstate_refill.exit ] ; 3 uses
  %i.ay = add i32 %.047, %.2
  store i32 %i.ay, ptr %i.c, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = lshr i32 %.047, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb ; 3 uses
  %i.bd = and i32 %.047, 7                        ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.bg = zext i8 %i.bf to i32
  %i.bh = lshr i32 %i.bg, %i.bd                   ; 2 uses
  %i.bi = sub nuw nsw i32 8, %i.bd                ; 3 uses
  %i.bj = sub i32 %.2, %i.bi                      ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 7
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, %i.bi
  %i.bp = or i32 %i.bo, %i.bh
  %i.bq = sub nuw nsw i32 16, %i.bd
  %i.br = add i32 %i.bj, -8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3 = phi i32 [ %i.br, %bb.o ], [ %i.bj, %bb.n ] ; 2 uses
  %.148 = phi i32 [ %i.bq, %bb.o ], [ %i.bi, %bb.n ]
  %.046 = phi ptr [ %i.bl, %bb.o ], [ %i.be, %bb.n ]
  %.0 = phi i32 [ %i.bp, %bb.o ], [ %i.bh, %bb.n ] ; 2 uses
  %.not60 = icmp eq i32 %.3, 0
  br i1 %.not60, label %ft_lzwstate_refill.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load i8, ptr %.046, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i32
  %notmask = shl nsw i32 -1, %.3
  %i.bu = xor i32 %notmask, -1
  %i.bv = and i32 %i.bt, %i.bu
  %i.bw = shl nuw nsw i32 %i.bv, %.148
  %i.bx = or i32 %i.bw, %.0
  br label %ft_lzwstate_refill.exit.thread

ft_lzwstate_refill.exit.thread:                   ; preds = %bb.l, %bb.m, %bb.p, %bb.q, %ft_lzwstate_refill.exit, %bb.e
  %.051 = phi i32 [ -1, %ft_lzwstate_refill.exit ], [ -1, %bb.e ], [ %i.bx, %bb.q ], [ %.0, %bb.p ], [ -1, %bb.m ], [ -1, %bb.l ]
  ret i32 %.051
}

declare hidden i32 @FT_Stream_Read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !13, i64 56}
!9 = !{!"FT_StreamRec_", !10, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 48, !13, i64 56, !10, i64 64, !10, i64 72}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"FT_LZWFileRec_", !18, i64 0, !18, i64 8, !13, i64 16, !19, i64 24, !6, i64 240, !12, i64 4336, !10, i64 4344, !10, i64 4352}
!18 = !{!"p1 _ZTS13FT_StreamRec_", !11, i64 0}
!19 = !{!"FT_LzwStateRec_", !5, i64 0, !5, i64 4, !6, i64 8, !5, i64 24, !5, i64 28, !6, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !20, i64 88, !10, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !12, i64 128, !6, i64 136, !18, i64 200, !13, i64 208}
!20 = !{!"p1 short", !11, i64 0}
!21 = !{!17, !18, i64 0}
!22 = !{!17, !13, i64 16}
!23 = !{!17, !10, i64 4352}
!24 = !{!17, !10, i64 4344}
!25 = !{!17, !12, i64 4336}
!26 = !{!19, !18, i64 200}
!27 = !{!19, !13, i64 208}
!28 = !{!19, !10, i64 112}
!29 = !{!19, !12, i64 128}
!30 = !{!19, !5, i64 60}
!31 = !{!9, !12, i64 8}
!32 = !{!9, !12, i64 16}
!33 = !{!9, !10, i64 0}
!34 = !{!9, !11, i64 40}
!35 = !{!9, !11, i64 48}
!36 = !{!19, !5, i64 4}
!37 = !{!19, !12, i64 40}
!38 = !{!19, !5, i64 120}
!39 = !{!19, !5, i64 0}
!40 = !{!19, !20, i64 88}
!41 = !{!19, !5, i64 76}
!42 = !{!19, !5, i64 72}
!43 = !{!19, !5, i64 80}
!44 = !{!19, !5, i64 48}
!45 = !{!19, !5, i64 52}
!46 = !{!19, !5, i64 56}
!47 = !{!19, !5, i64 64}
!48 = !{!19, !5, i64 68}
!49 = !{!19, !6, i64 32}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = !{!19, !10, i64 96}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !6, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !56, !59, !58}
!61 = distinct !{!61, !56}
!62 = !{!19, !5, i64 104}
!63 = !{!19, !5, i64 24}
!64 = !{!19, !5, i64 28}
end_hunk_0
