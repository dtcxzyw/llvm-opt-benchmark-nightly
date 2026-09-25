Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@open_face_from_buffer:bb.a
  %.not16.i = icmp eq ptr %1, null
  br i1 %.not16.i, label %ft_mem_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.v = tail call ptr %i.u(ptr noundef %i.a, i64 noundef 80) #30, !inline_history !635 ; 8 uses
  %.not.i.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127
  tail call void %i.x(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #30, !inline_history !128
  br label %ft_mem_free.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  store ptr %1, ptr %i.v, align 8, !tbaa !191
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %2, ptr %i.z, align 8, !tbaa !192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !199
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.a, ptr %i.ab, align 8, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr @memory_stream_close, ptr %i.ac, align 8, !tbaa !197
  store ptr %i.v, ptr %i.s, align 8, !tbaa !180
  store i32 %i.r, ptr %6, align 8, !tbaa !187
  %i.ad = call fastcc i32 @ft_open_face_internal(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %3, ptr noundef %5, i8 noundef zeroext 0)
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.f, %bb.h, %bb.d, %.loopexit, %bb.i
  %.0 = phi i32 [ 11, %bb.d ], [ %i.ad, %bb.i ], [ 11, %.loopexit ], [ 64, %bb.h ], [ 6, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @memory_stream_close(ptr noundef initializes((8, 16), (48, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !191    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ft_mem_free.exit9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127
  tail call void %i.e(ptr noundef %i.b, ptr noundef nonnull %i.c) #30, !inline_history !128
  br label %ft_mem_free.exit9

ft_mem_free.exit9:                                ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  tail call void %i.h(ptr noundef %i.b, ptr noundef nonnull %0) #30, !inline_history !128
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @IsMacResource(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, i64 noundef range(i64 -2147483647, 2147483648) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.i = call i32 @FT_Raccess_Get_HeaderInfo(ptr nonnull poison, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %ft_mem_free.exit42.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.l = call i32 @FT_Raccess_Get_DataOffsets(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.j, i64 noundef %i.k, i64 noundef 1347375956, i8 noundef zeroext 1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %.not34 = icmp eq i32 %i.l, 0
  br i1 %.not34, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !369  ; 4 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.o = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  %i.p = add nsw i64 %3, 1
  %.not.i = icmp ult i64 %i.p, 2
  br i1 %.not.i, label %.preheader, label %Mac_Read_POST_Resource.exit

.preheader:                                       ; preds = %bb.c
  %i.q = icmp sgt i64 %i.n, 0
  br i1 %i.q, label %.lr.ph, label %Mac_Read_POST_Resource.exit

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0115.i116 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.l ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 8 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !293  ; 2 uses
  %.not.i51 = icmp eq ptr %i.w, null
  br i1 %.not.i51, label %bb.e, label %.split.i52

.split.i52:                                       ; preds = %bb.d
  %i.x = call i64 %i.w(ptr noundef nonnull %1, i64 noundef %i.v, ptr noundef null, i64 noundef 0) #30, !inline_history !636
  %.not10.i53 = icmp eq i64 %i.x, 0
  br i1 %.not10.i53, label %.split.i52._crit_edge, label %Mac_Read_POST_Resource.exit.thread

.split.i52._crit_edge:                            ; preds = %.split.i52
  %.pre = load i64, ptr %i.s, align 8, !tbaa !192
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.s, align 8, !tbaa !192  ; 2 uses
  %.not17.i55 = icmp ugt i64 %i.v, %i.y
  br i1 %.not17.i55, label %Mac_Read_POST_Resource.exit.thread, label %bb.f

bb.f:                                             ; preds = %.split.i52._crit_edge, %bb.e
  %i.z = phi i64 [ %.pre, %.split.i52._crit_edge ], [ %i.y, %bb.e ]
  store i64 %i.v, ptr %i.t, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.aa = add i64 %i.v, 3
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.g, label %FT_Stream_ReadULong.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !293 ; 2 uses
  %.not.i49 = icmp eq ptr %i.ac, null
  br i1 %.not.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call i64 %i.ac(ptr noundef nonnull %1, i64 noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 4) #30, !inline_history !637
  %.not22.i = icmp eq i64 %i.ad, 4
  br i1 %.not22.i, label %..thread_crit_edge.i, label %FT_Stream_ReadULong.exit.thread

..thread_crit_edge.i:                             ; preds = %bb.h
  %.pre.pre.i = load i64, ptr %i.t, align 8, !tbaa !199
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %1, align 8, !tbaa !191   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  %.not23.i = icmp eq ptr %i.ae, null
  br i1 %.not23.i, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.ag = add i64 %i.v, 4
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.k

FT_Stream_ReadULong.exit.thread:                  ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %Mac_Read_POST_Resource.exit.thread

bb.j:                                             ; preds = %..thread_crit_edge.i, %bb.i
  %.pre.i = phi i64 [ %i.v, %bb.i ], [ %.pre.pre.i, %..thread_crit_edge.i ]
  %.01926.i = phi ptr [ %i.af, %bb.i ], [ %i.a, %..thread_crit_edge.i ] ; 2 uses
  %i.ah = load i8, ptr %.01926.i, align 1, !tbaa !162
  %i.ai = load i32, ptr %.01926.i, align 1, !tbaa !162
  %i.aj = call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = zext i32 %i.aj to i64
  %i.al = add i64 %.pre.i, 4
  store i64 %i.al, ptr %i.t, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not98 = icmp eq i8 %i.ah, 0
  br i1 %.not98, label %bb.k, label %Mac_Read_POST_Resource.exit.thread

bb.k:                                             ; preds = %.thread, %bb.j
  %i.am = phi i64 [ 0, %.thread ], [ %i.ak, %bb.j ] ; 2 uses
  %i.an = sub nuw nsw i64 16777215, %i.am
  %i.ao = add nuw nsw i64 %.0115.i116, 6          ; 2 uses
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %Mac_Read_POST_Resource.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nuw nsw i64 %i.ao, %i.am            ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %exitcond.not, label %ft_mem_qalloc.exit, label %bb.d, !llvm.loop !638

ft_mem_qalloc.exit:                               ; preds = %bb.l
  %i.ar = add nuw nsw i64 %i.aq, 2                ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !107
  %i.au = call ptr %i.at(ptr noundef %i.o, i64 noundef %i.ar) #30, !inline_history !639 ; 14 uses
  %.not.i47.not = icmp eq ptr %i.au, null
  br i1 %.not.i47.not, label %Mac_Read_POST_Resource.exit.thread, label %.lr.ph124

.lr.ph124:                                        ; preds = %ft_mem_qalloc.exit
  store i8 -128, ptr %i.au, align 1, !tbaa !162
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 1, ptr %i.av, align 1, !tbaa !162
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i32 0, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph124, %bb.aa
  %indvars.iv135 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next136, %bb.aa ] ; 2 uses
  %.0111.i122 = phi i64 [ 2, %.lr.ph124 ], [ %.2.i, %bb.aa ] ; 5 uses
  %.0112.i121 = phi i64 [ 6, %.lr.ph124 ], [ %.2114.i, %bb.aa ] ; 6 uses
  %.0116.i120 = phi i64 [ 0, %.lr.ph124 ], [ %.2118.i, %bb.aa ] ; 7 uses
  %.0119.i119 = phi i32 [ 1, %.lr.ph124 ], [ %.2121.i, %bb.aa ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv135
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !68 ; 3 uses
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !293 ; 2 uses
  %.not.i45 = icmp eq ptr %i.bc, null
  br i1 %.not.i45, label %bb.n, label %.split.i

.split.i:                                         ; preds = %bb.m
  %i.bd = call i64 %i.bc(ptr noundef nonnull %1, i64 noundef %i.bb, ptr noundef null, i64 noundef 0) #30, !inline_history !636
  %.not10.i = icmp eq i64 %i.bd, 0
  br i1 %.not10.i, label %bb.o, label %ft_mem_free.exit44

bb.n:                                             ; preds = %bb.m
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !192
  %.not17.i = icmp ugt i64 %i.bb, %i.be
  br i1 %.not17.i, label %ft_mem_free.exit44, label %bb.o

bb.o:                                             ; preds = %bb.n, %.split.i
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !199
  %i.bf = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.c), !inline_history !640 ; 3 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !117
  %.not138.i = icmp ne i32 %i.bh, 0
  %i.bi = icmp slt i32 %i.bf, 0
  %or.cond = select i1 %.not138.i, i1 true, i1 %i.bi
  br i1 %or.cond, label %ft_mem_free.exit44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.c), !inline_history !640
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !117
  %.not139.i = icmp eq i32 %i.bk, 0
  br i1 %.not139.i, label %bb.q, label %ft_mem_free.exit44

bb.q:                                             ; preds = %bb.p
  store i32 10, ptr %i.c, align 4, !tbaa !117
  %i.bl = lshr i16 %i.bj, 8                       ; 4 uses
  %i.bm = zext nneg i16 %i.bl to i32              ; 2 uses
  %i.bn = icmp eq i16 %i.bl, 0
  br i1 %i.bn, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = icmp samesign ugt i32 %i.bf, 2
  %i.bp = add nsw i64 %i.bg, -2
  %.0.i = select i1 %i.bo, i64 %i.bp, i64 0       ; 4 uses
  %i.bq = icmp eq i32 %.0119.i119, %i.bm
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = add i64 %.0.i, %.0116.i120
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bs = add i64 %.0111.i122, 3                  ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, %i.ar
  br i1 %i.bt, label %ft_mem_free.exit44, label %bb.u

bb.u:                                             ; preds = %bb.t
  %5 = trunc i64 %.0116.i120 to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0111.i122 ; 3 uses
  store i8 %5, ptr %i.bu, align 1, !tbaa !162
  %6 = lshr i64 %.0116.i120, 8
  %7 = trunc i64 %6 to i8
  %8 = getelementptr i8, ptr %i.bu, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !162
  %9 = lshr i64 %.0116.i120, 16
  %10 = trunc i64 %9 to i8
  %11 = getelementptr i8, ptr %i.bu, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !162
  %12 = lshr i64 %.0116.i120, 24
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bs
  store i8 %13, ptr %14, align 1, !tbaa !162
  %i.bv = icmp eq i16 %i.bl, 5
  br i1 %i.bv, label %._crit_edge125, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = add i64 %.0112.i121, 6                  ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %i.ar
  br i1 %i.bx, label %ft_mem_free.exit44, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0112.i121 ; 2 uses
  store i8 -128, ptr %i.by, align 1, !tbaa !162
  %i.bz = trunc nuw i16 %i.bl to i8
  %i.ca = add i64 %.0112.i121, 2                  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 1
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !162
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ca
  store <4 x i8> zeroinitializer, ptr %i.cc, align 1, !tbaa !162
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.1120.i = phi i32 [ %.0119.i119, %bb.s ], [ %i.bm, %bb.w ]
  %.1117.i = phi i64 [ %i.br, %bb.s ], [ %.0.i, %bb.w ]
  %.1113.i = phi i64 [ %.0112.i121, %bb.s ], [ %i.bw, %bb.w ] ; 3 uses
  %.1.i = phi i64 [ %.0111.i122, %bb.s ], [ %i.ca, %bb.w ]
  %i.cd = icmp ugt i64 %.1113.i, %i.aq
  br i1 %i.cd, label %ft_mem_free.exit44, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = add nsw i64 %.1113.i, %.0.i             ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %i.aq
  br i1 %i.cf, label %ft_mem_free.exit44, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.au, i64 %.1113.i
  %i.ch = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.cg, i64 noundef %.0.i), !inline_history !640 ; 2 uses
  store i32 %i.ch, ptr %i.c, align 4, !tbaa !117
  %.not140.i = icmp eq i32 %i.ch, 0
  br i1 %.not140.i, label %bb.aa, label %ft_mem_free.exit44

bb.aa:                                            ; preds = %bb.z, %bb.q
  %.2121.i = phi i32 [ %.0119.i119, %bb.q ], [ %.1120.i, %bb.z ]
  %.2118.i = phi i64 [ %.0116.i120, %bb.q ], [ %.1117.i, %bb.z ] ; 2 uses
  %.2114.i = phi i64 [ %.0112.i121, %bb.q ], [ %i.ce, %bb.z ] ; 2 uses
  %.2.i = phi i64 [ %.0111.i122, %bb.q ], [ %.1.i, %bb.z ] ; 2 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %i.n
  br i1 %exitcond138.not, label %._crit_edge125, label %bb.m, !llvm.loop !641

._crit_edge125:                                   ; preds = %bb.aa, %bb.u
  %.0116.i.lcssa = phi i64 [ %.2118.i, %bb.aa ], [ %.0116.i120, %bb.u ] ; 4 uses
  %.0112.i.lcssa = phi i64 [ %.2114.i, %bb.aa ], [ %.0112.i121, %bb.u ] ; 2 uses
  %.0111.i.lcssa = phi i64 [ %.2.i, %bb.aa ], [ %.0111.i122, %bb.u ] ; 2 uses
  %i.ci = add i64 %.0112.i.lcssa, 2               ; 2 uses
  %i.cj = icmp ugt i64 %i.ci, %i.ar
  br i1 %i.cj, label %ft_mem_free.exit44, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge125
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0112.i.lcssa ; 2 uses
  store i8 -128, ptr %i.ck, align 1, !tbaa !162
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  store i8 3, ptr %i.cl, align 1, !tbaa !162
  %i.cm = add i64 %.0111.i.lcssa, 3               ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, %i.ar
  br i1 %i.cn, label %ft_mem_free.exit44, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %15 = trunc i64 %.0116.i.lcssa to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0111.i.lcssa ; 3 uses
  store i8 %15, ptr %i.co, align 1, !tbaa !162
  %16 = lshr i64 %.0116.i.lcssa, 8
  %17 = trunc i64 %16 to i8
  %18 = getelementptr i8, ptr %i.co, i64 1
  store i8 %17, ptr %18, align 1, !tbaa !162
  %19 = lshr i64 %.0116.i.lcssa, 16
  %20 = trunc i64 %19 to i8
  %21 = getelementptr i8, ptr %i.co, i64 2
  store i8 %20, ptr %21, align 1, !tbaa !162
  %22 = lshr i64 %.0116.i.lcssa, 24
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cm
  store i8 %23, ptr %24, align 1, !tbaa !162
  %i.cp = call fastcc i32 @open_face_from_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i64 noundef %i.ci, i64 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %4), !inline_history !640
  br label %Mac_Read_POST_Resource.exit

ft_mem_free.exit44:                               ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.z, %bb.p, %bb.o, %bb.n, %.split.i, %._crit_edge125, %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !127
  call void %i.cr(ptr noundef %i.o, ptr noundef nonnull %i.au) #30, !inline_history !642
  br label %Mac_Read_POST_Resource.exit

Mac_Read_POST_Resource.exit.thread:               ; preds = %bb.j, %bb.k, %bb.e, %.split.i52, %ft_mem_qalloc.exit, %FT_Stream_ReadULong.exit.thread
  %.0124.i.ph = phi i32 [ 85, %FT_Stream_ReadULong.exit.thread ], [ 64, %ft_mem_qalloc.exit ], [ 85, %bb.e ], [ 85, %.split.i52 ], [ 9, %bb.k ], [ 9, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.ad

Mac_Read_POST_Resource.exit:                      ; preds = %.preheader, %ft_mem_free.exit44, %bb.c, %bb.ac
  %.0124.i = phi i32 [ %i.cp, %bb.ac ], [ 1, %bb.c ], [ 1, %ft_mem_free.exit44 ], [ 10, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %.not.i38 = icmp eq ptr %i.m, null
  br i1 %.not.i38, label %ft_mem_free.exit, label %bb.ad

bb.ad:                                            ; preds = %Mac_Read_POST_Resource.exit.thread, %Mac_Read_POST_Resource.exit
  %.0124.i168 = phi i32 [ %.0124.i.ph, %Mac_Read_POST_Resource.exit.thread ], [ %.0124.i, %Mac_Read_POST_Resource.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !127
  call void %i.ct(ptr noundef %i.h, ptr noundef nonnull %i.m) #30, !inline_history !128
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %Mac_Read_POST_Resource.exit, %bb.ad
  %.0124.i169 = phi i32 [ %.0124.i, %Mac_Read_POST_Resource.exit ], [ %.0124.i168, %bb.ad ] ; 2 uses
  %.not35 = icmp eq i32 %.0124.i169, 0
  br i1 %.not35, label %bb.ae, label %ft_mem_free.exit42.thread

bb.ae:                                            ; preds = %ft_mem_free.exit
  %i.cu = load ptr, ptr %4, align 8, !tbaa !289
  store i64 1, ptr %i.cu, align 8, !tbaa !647
  br label %ft_mem_free.exit42.thread

bb.af:                                            ; preds = %bb.b
  %i.cv = call i32 @FT_Raccess_Get_DataOffsets(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.j, i64 noundef %i.k, i64 noundef 1936092788, i8 noundef zeroext 0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 2 uses
  %.not36 = icmp eq i32 %i.cv, 0
  br i1 %.not36, label %bb.ag, label %ft_mem_free.exit42.thread

bb.ag:                                            ; preds = %bb.af
  %i.cw = load i64, ptr %i.g, align 8, !tbaa !68  ; 3 uses
  %i.cx = srem i64 %3, %i.cw                      ; 3 uses
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !369 ; 3 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !184   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.lobit = ashr i64 %i.cx, 63
  %spec.select.i = xor i64 %.lobit, %i.cx         ; 3 uses
  %.not.i39 = icmp slt i64 %spec.select.i, %i.cw
  br i1 %.not.i39, label %bb.ah, label %Mac_Read_sfnt_Resource.exit

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %spec.select.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !68 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !293 ; 2 uses
  %.not.i72 = icmp eq ptr %i.dd, null
  br i1 %.not.i72, label %bb.ai, label %.split.i73

.split.i73:                                       ; preds = %bb.ah
  %i.de = tail call i64 %i.dd(ptr noundef nonnull %1, i64 noundef %i.db, ptr noundef null, i64 noundef 0) #30, !inline_history !643
  %.not10.i74 = icmp eq i64 %i.de, 0
  br i1 %.not10.i74, label %bb.aj, label %Mac_Read_sfnt_Resource.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !192
  %.not17.i76 = icmp ugt i64 %i.db, %i.dg
  br i1 %.not17.i76, label %Mac_Read_sfnt_Resource.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.split.i73
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %i.db, ptr %i.dh, align 8, !tbaa !199
  %i.di = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.b), !inline_history !644 ; 4 uses
  %i.dj = zext i32 %i.di to i64                   ; 3 uses
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !117 ; 2 uses
  %.not38.i = icmp eq i32 %i.dk, 0
  br i1 %.not38.i, label %bb.ak, label %Mac_Read_sfnt_Resource.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %.not39.i = icmp eq i32 %i.di, 0
  br i1 %.not39.i, label %Mac_Read_sfnt_Resource.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = icmp ugt i32 %i.di, 16777215
  br i1 %i.dl, label %Mac_Read_sfnt_Resource.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = tail call fastcc i32 @open_face_PS_from_sfnt_stream(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %spec.select.i, ptr noundef %4)
  %.not40.i = icmp eq i32 %i.dm, 0
  br i1 %.not40.i, label %Mac_Read_sfnt_Resource.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = add i64 %i.db, 4                        ; 3 uses
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !293 ; 2 uses
  %.not.i66 = icmp eq ptr %i.do, null
  br i1 %.not.i66, label %bb.ao, label %.split.i67

.split.i67:                                       ; preds = %bb.an
  %i.dp = tail call i64 %i.do(ptr noundef nonnull %1, i64 noundef %i.dn, ptr noundef null, i64 noundef 0) #30, !inline_history !643
  %.not10.i68 = icmp eq i64 %i.dp, 0
  br i1 %.not10.i68, label %ft_mem_qalloc.exit65, label %Mac_Read_sfnt_Resource.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !192
  %.not17.i70 = icmp ugt i64 %i.dn, %i.dr
  br i1 %.not17.i70, label %Mac_Read_sfnt_Resource.exit.thread, label %ft_mem_qalloc.exit65

ft_mem_qalloc.exit65:                             ; preds = %bb.ao, %.split.i67
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !199
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !107
  %i.du = tail call ptr %i.dt(ptr noundef %i.cz, i64 noundef %i.dj) #30, !inline_history !645 ; 5 uses
  %.not.i63.not = icmp eq ptr %i.du, null
  br i1 %.not.i63.not, label %Mac_Read_sfnt_Resource.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %ft_mem_qalloc.exit65
  %i.dv = tail call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef nonnull %i.du, i64 noundef %i.dj), !inline_history !644 ; 2 uses
  %.not43.i = icmp eq i32 %i.dv, 0
  br i1 %.not43.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !127
  tail call void %i.dx(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.du) #30, !inline_history !646
  br label %Mac_Read_sfnt_Resource.exit.thread

bb.ar:                                            ; preds = %bb.ap
  %i.dy = icmp samesign ugt i32 %i.di, 4
  br i1 %i.dy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dz = load i32, ptr %i.du, align 1
  %i.ea = icmp ne i32 %i.dz, 1330926671
  %i.eb = zext i1 %i.ea to i32
  %.not44.i = icmp eq i32 %i.eb, 0
  %i.ec = select i1 %.not44.i, ptr @.str.20, ptr @.str.9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ed = phi ptr [ @.str.9, %bb.ar ], [ %i.ec, %bb.as ]
  %i.ee = tail call fastcc i32 @open_face_from_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.du, i64 noundef %i.dj, i64 noundef 0, ptr noundef nonnull %i.ed, ptr noundef %4), !inline_history !644
  br label %Mac_Read_sfnt_Resource.exit.thread

Mac_Read_sfnt_Resource.exit.thread:               ; preds = %bb.ao, %.split.i67, %bb.ai, %.split.i73, %bb.aj, %bb.am, %bb.at, %bb.aq, %bb.ak, %bb.al, %ft_mem_qalloc.exit65
  %.0.i40.ph = phi i32 [ 64, %ft_mem_qalloc.exit65 ], [ 9, %bb.al ], [ 1, %bb.ak ], [ %i.dv, %bb.aq ], [ 85, %bb.ai ], [ %i.dk, %bb.aj ], [ %i.ee, %bb.at ], [ 0, %bb.am ], [ 85, %.split.i73 ], [ 85, %.split.i67 ], [ 85, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %ft_mem_free.exit42

Mac_Read_sfnt_Resource.exit:                      ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.not.i41 = icmp eq ptr %i.cy, null
  br i1 %.not.i41, label %ft_mem_free.exit42.thread, label %ft_mem_free.exit42

ft_mem_free.exit42:                               ; preds = %Mac_Read_sfnt_Resource.exit, %Mac_Read_sfnt_Resource.exit.thread
  %.0.i4094 = phi i32 [ %.0.i40.ph, %Mac_Read_sfnt_Resource.exit.thread ], [ 1, %Mac_Read_sfnt_Resource.exit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !127
  tail call void %i.eg(ptr noundef %i.h, ptr noundef nonnull %i.cy) #30, !inline_history !128
  %.not37 = icmp eq i32 %.0.i4094, 0
  br i1 %.not37, label %bb.au, label %ft_mem_free.exit42.thread

bb.au:                                            ; preds = %ft_mem_free.exit42
  %i.eh = load ptr, ptr %4, align 8, !tbaa !289   ; 2 uses
  store i64 %i.cw, ptr %i.eh, align 8, !tbaa !647
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.cx, ptr %i.ei, align 8, !tbaa !648
  br label %ft_mem_free.exit42.thread

ft_mem_free.exit42.thread:                        ; preds = %Mac_Read_sfnt_Resource.exit, %bb.af, %bb.au, %ft_mem_free.exit42, %ft_mem_free.exit, %bb.ae, %bb.a
  %.031 = phi i32 [ %i.i, %bb.a ], [ %.0124.i169, %ft_mem_free.exit ], [ 0, %bb.ae ], [ %i.cv, %bb.af ], [ 0, %bb.au ], [ %.0.i4094, %ft_mem_free.exit42 ], [ 1, %Mac_Read_sfnt_Resource.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 86) i32 @raccess_guess_apple_double(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  store ptr null, ptr %3, align 8, !tbaa !123
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @raccess_guess_apple_generic(ptr noundef %1, i32 noundef 333319, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 81, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 86) i32 @raccess_guess_apple_single(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
end_hunk_0
