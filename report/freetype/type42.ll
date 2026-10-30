Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type42?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@t42_get_ps_font_name:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @t42_ps_get_font_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 56)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !tbaa.struct !241
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @t42_ps_get_font_extra(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i16, ptr %i.a, align 8, !tbaa !86
  store i16 %i.b, ptr %1, align 2, !tbaa !86
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @t42_ps_has_glyph_names(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare hidden ptr @ft_module_get_service(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @FT_Get_Module(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Open_Face(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Done_Size(ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_CMap_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_Skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @FT_Stream_Read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @t42_parse_font_matrix(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !242
  %i.f = call i32 %i.e(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %i.a, i32 noundef 0) #13
  %i.g = icmp slt i32 %i.f, 6
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.h, align 8, !tbaa !71
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %i.k = call i64 @llvm.abs.i64(i64 %i.j, i1 true) ; 6 uses
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.m, align 8, !tbaa !71
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.k, 65536
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 16, !tbaa !96
  %i.o = call i64 @FT_DivFix(i64 noundef %i.n, i64 noundef %i.k) #13
  store i64 %i.o, ptr %i.a, align 16, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !96
  %i.r = call i64 @FT_DivFix(i64 noundef %i.q, i64 noundef %i.k) #13
  store i64 %i.r, ptr %i.p, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 16, !tbaa !96
  %i.u = call i64 @FT_DivFix(i64 noundef %i.t, i64 noundef %i.k) #13
  store i64 %i.u, ptr %i.s, align 16, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 16, !tbaa !96
  %i.x = call i64 @FT_DivFix(i64 noundef %i.w, i64 noundef %i.k) #13
  store i64 %i.x, ptr %i.v, align 16, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = call i64 @FT_DivFix(i64 noundef %i.z, i64 noundef %i.k) #13
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !96
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !96
  %i.ac = icmp slt i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 -65536, i64 65536  ; 2 uses
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi i64 [ %i.ad, %bb.f ], [ %i.j, %bb.e ]
  %i.af = load i64, ptr %i.a, align 16, !tbaa !96
  store i64 %i.af, ptr %i.b, align 8, !tbaa !243
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !96
  %i.aj = shufflevector <2 x i64> %i.ai, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 %i.ae, ptr %i.ak, align 8, !tbaa !244
  %i.al = call zeroext i8 @FT_Matrix_Check(ptr noundef nonnull %i.b) #13
  %.not24 = icmp eq i8 %i.al, 0
  br i1 %.not24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.am, align 8, !tbaa !71
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = load <2 x i64>, ptr %i.an, align 16, !tbaa !96
  %i.ap = ashr <2 x i64> %i.ao, splat (i64 16)
  store <2 x i64> %i.ap, ptr %i.c, align 8, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @t42_parse_encoding(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  tail call void %i.g(ptr noundef %1) #13
  %i.h = load ptr, ptr %1, align 8, !tbaa !69     ; 10 uses
  %.not = icmp ult ptr %i.h, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.i, align 8, !tbaa !71
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.h, align 1, !tbaa !73    ; 2 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  %i.m = icmp eq i8 %i.j, 91                      ; 5 uses
  %or.cond168 = or i1 %i.m, %i.l
  br i1 %or.cond168, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br i1 %i.m, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.r, ptr %1, align 8, !tbaa !69
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.u = tail call i64 %i.t(ptr noundef nonnull %1) #13
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp sgt i32 %i.v, 256
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.x, align 8, !tbaa !71
  br label %.critedge

bb.g:                                             ; preds = %.thread, %bb.e
  %.0139171 = phi i32 [ 256, %.thread ], [ %i.v, %bb.e ] ; 7 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !72
  tail call void %i.y(ptr noundef nonnull %1) #13
  %i.z = load ptr, ptr %1, align 8, !tbaa !69
  %.not156 = icmp ult ptr %i.z, %i.c
  br i1 %.not156, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !247 ; 2 uses
  %.not157 = icmp eq ptr %i.ab, null
  br i1 %.not157, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ft_mem_free(ptr noundef %i.q, ptr noundef nonnull %i.ab) #13
  store ptr null, ptr %i.aa, align 8, !tbaa !247
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !248
  tail call void @ft_mem_free(ptr noundef %i.q, ptr noundef %i.ad) #13
  store ptr null, ptr %i.ac, align 8, !tbaa !248
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !249 ; 2 uses
  %.not158 = icmp eq ptr %i.af, null
  br i1 %.not158, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.af(ptr noundef nonnull %i.o) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  store i32 %.0139171, ptr %i.n, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i32 %.0139171, ptr %i.ag, align 8, !tbaa !88
  %2 = sext i32 %.0139171 to i64                  ; 2 uses
  %i.ah = call ptr @ft_mem_qrealloc(ptr noundef %i.q, i64 noundef 2, i64 noundef 0, i64 noundef %2, ptr noundef null, ptr noundef nonnull %i.a) #13
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !247
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !68  ; 2 uses
  %.not159 = icmp eq i32 %i.ai, 0
  br i1 %.not159, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aj = call ptr @ft_mem_qrealloc(ptr noundef %i.q, i64 noundef 8, i64 noundef 0, i64 noundef %2, ptr noundef null, ptr noundef nonnull %i.a) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !248
  %i.al = load i32, ptr %i.a, align 4, !tbaa !68  ; 2 uses
  %.not160 = icmp eq i32 %i.al, 0
  br i1 %.not160, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !119
  %i.ao = call i32 %i.an(ptr noundef nonnull %i.o, i32 noundef %.0139171, ptr noundef %i.q) #13 ; 3 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !68
  %.not161 = icmp eq i32 %i.ao, 0
  br i1 %.not161, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.m
  %i.ap = icmp sgt i32 %.0139171, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 264
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ar = phi i32 [ %i.ao, %bb.m ], [ %i.al, %bb.l ], [ %i.ai, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !71
  br label %.critedge

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %.0138184 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.o ] ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !120
  %i.au = call i32 %i.at(ptr noundef nonnull %i.o, i32 noundef %.0138184, ptr noundef nonnull @.str.10, i32 noundef 8) #13 ; 0 uses
  %i.av = add nuw nsw i32 %.0138184, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %.0139171
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !245

._crit_edge:                                      ; preds = %bb.o, %.preheader
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !72
  call void %i.aw(ptr noundef nonnull %1) #13
  %i.ax = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %i.c
  br i1 %i.ay, label %.lr.ph187, label %t42_is_space.exit.thread

.lr.ph187:                                        ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph187, %bb.ah
  %i.be = phi ptr [ %i.ax, %.lr.ph187 ], [ %i.cz, %bb.ah ] ; 8 uses
  %.1185 = phi i32 [ 0, %.lr.ph187 ], [ %.5, %bb.ah ] ; 5 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !73  ; 2 uses
  switch i8 %i.bf, label %.thread173 [
    i8 100, label %bb.q
    i8 93, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 3 ; 8 uses
  %i.bh = icmp ult ptr %i.bg, %i.c
  br i1 %i.bh, label %bb.r, label %.thread173

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !73
  %i.bk = icmp eq i8 %i.bj, 101
  br i1 %i.bk, label %bb.s, label %.thread173

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !73
  %i.bn = icmp eq i8 %i.bm, 102
  br i1 %i.bn, label %bb.t, label %.thread173

bb.t:                                             ; preds = %bb.s
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !73
  switch i8 %i.bo, label %.thread173 [
    i8 32, label %t42_is_space.exit.thread
    i8 13, label %t42_is_space.exit.thread
    i8 12, label %t42_is_space.exit.thread
    i8 10, label %t42_is_space.exit.thread
    i8 9, label %t42_is_space.exit.thread
    i8 0, label %t42_is_space.exit.thread
  ]

bb.u:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  br label %t42_is_space.exit.thread

.thread173:                                       ; preds = %bb.t, %bb.p, %bb.q, %bb.s, %bb.r
  %i.bq = add i8 %i.bf, -48
  %i.br = icmp ult i8 %i.bq, 10
  %or.cond = or i1 %i.m, %i.br
  br i1 %or.cond, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %.thread173
  br i1 %i.m, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !117
  %i.bt = call i64 %i.bs(ptr noundef nonnull %1) #13
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !72
  call void %i.bv(ptr noundef nonnull %1) #13
  %i.bw = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.bx = icmp eq ptr %i.be, %i.bw
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.ba, align 8, !tbaa !71
  br label %.critedge

bb.y:                                             ; preds = %bb.v, %bb.w
  %i.by = phi ptr [ %i.bw, %bb.w ], [ %i.be, %bb.v ] ; 4 uses
  %.0 = phi i32 [ %i.bu, %bb.w ], [ %.1185, %bb.v ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ca = icmp ult ptr %i.bz, %i.c
  br i1 %i.ca, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !73
  %i.cc = icmp eq i8 %i.cb, 47
  %i.cd = icmp slt i32 %.1185, %.0139171
  %or.cond169 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond169, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 4 uses
  store ptr %i.ce, ptr %1, align 8, !tbaa !69
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !74
  call void %i.cf(ptr noundef nonnull %1) #13
  %i.cg = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %.not165 = icmp ult ptr %i.cg, %i.c
  br i1 %.not165, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ch = load i32, ptr %i.ba, align 8, !tbaa !71
  %.not166 = icmp eq i32 %i.ch, 0
  br i1 %.not166, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !120
  %i.cn = add i32 %i.cl, 1
  %i.co = call i32 %i.cm(ptr noundef nonnull %i.o, i32 noundef %.0, ptr noundef nonnull %i.ce, i32 noundef %i.cn) #13 ; 2 uses
  store i32 %i.co, ptr %i.ba, align 8, !tbaa !71
  %.not167 = icmp eq i32 %i.co, 0
  br i1 %.not167, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load ptr, ptr %i.bd, align 8, !tbaa !121
  %i.cq = sext i32 %.0 to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ct = and i64 %i.ck, 4294967295
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !73
  %i.cv = add nsw i32 %.1185, 1
  br label %bb.ah

bb.ae:                                            ; preds = %bb.z, %bb.y
  br i1 %i.m, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.ba, align 8, !tbaa !71
  br label %.critedge

bb.ag:                                            ; preds = %.thread173
  %i.cw = load ptr, ptr %i.az, align 8, !tbaa !74
  call void %i.cw(ptr noundef nonnull %1) #13
  %i.cx = load i32, ptr %i.ba, align 8, !tbaa !71
  %.not163 = icmp eq i32 %i.cx, 0
  br i1 %.not163, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ae, %bb.ad, %bb.ag
  %.3146 = phi ptr [ %i.be, %bb.ag ], [ %i.ce, %bb.ad ], [ %i.by, %bb.ae ]
  %.5 = phi i32 [ %.1185, %bb.ag ], [ %i.cv, %bb.ad ], [ %.1185, %bb.ae ]
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !72
  call void %i.cy(ptr noundef nonnull %1) #13
  %i.cz = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.c
  br i1 %i.da, label %bb.p, label %t42_is_space.exit.thread, !llvm.loop !246

t42_is_space.exit.thread:                         ; preds = %bb.ah, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %._crit_edge, %bb.u
  %.4147 = phi ptr [ %i.bp, %bb.u ], [ %i.h, %._crit_edge ], [ %.3146, %bb.ah ], [ %i.bg, %bb.t ], [ %i.bg, %bb.t ], [ %i.bg, %bb.t ], [ %i.bg, %bb.t ], [ %i.bg, %bb.t ], [ %i.bg, %bb.t ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1, ptr %i.db, align 8, !tbaa !251
  store ptr %.4147, ptr %1, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.as

bb.ai:                                            ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %i.dd = icmp ult ptr %i.dc, %i.c
end_hunk_0
begin_hunk_1_@t42_parse_charstrings:bb.a
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !80
  %i.bd = tail call i32 %i.ba(ptr noundef nonnull %i.a, i32 noundef %i.bc, ptr noundef %i.e) #13 ; 2 uses
  %.not228 = icmp eq i32 %i.bd, 0
  br i1 %.not228, label %bb.p, label %.thread254

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !119
  %i.bg = load i32, ptr %i.bb, align 8, !tbaa !80
  %i.bh = tail call i32 %i.bf(ptr noundef nonnull %i.b, i32 noundef %i.bg, ptr noundef %i.e) #13 ; 2 uses
  %.not229 = icmp eq i32 %i.bh, 0
  br i1 %.not229, label %bb.q, label %.thread254

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !119
  %i.bk = tail call i32 %i.bj(ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef %i.e) #13 ; 2 uses
  %.not230 = icmp eq i32 %i.bk, 0
  br i1 %.not230, label %.preheader, label %.thread254

.preheader:                                       ; preds = %bb.q
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.bl(ptr noundef nonnull %1) #13
  %i.bm = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %.not231271 = icmp ult ptr %i.bm, %i.i
  br i1 %.not231271, label %.lr.ph275, label %t42_is_space.exit.thread.thread

t42_is_space.exit.thread.thread:                  ; preds = %.preheader
  store i32 0, ptr %i.bb, align 8, !tbaa !80
  br label %.thread254

.lr.ph275:                                        ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 424
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph275, %.thread260
  %i.bu = phi ptr [ %i.bm, %.lr.ph275 ], [ %i.ed, %.thread260 ] ; 7 uses
  %.0184274 = phi i8 [ 0, %.lr.ph275 ], [ %.3, %.thread260 ] ; 10 uses
  %.0186273 = phi i32 [ 0, %.lr.ph275 ], [ %.3189, %.thread260 ] ; 10 uses
  %.0191272 = phi i32 [ 0, %.lr.ph275 ], [ %.2193, %.thread260 ] ; 13 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !73
  switch i8 %i.bv, label %.thread [
    i8 101, label %bb.s
    i8 62, label %t42_is_space.exit.thread
  ]

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 3 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.i
  br i1 %i.bx, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !73
  %i.ca = icmp eq i8 %i.bz, 110
  br i1 %i.ca, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !73
  %i.cd = icmp eq i8 %i.cc, 100
  br i1 %i.cd, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ce = load i8, ptr %i.bw, align 1, !tbaa !73
  switch i8 %i.ce, label %.thread [
    i8 32, label %t42_is_space.exit.thread
    i8 13, label %t42_is_space.exit.thread
    i8 12, label %t42_is_space.exit.thread
    i8 10, label %t42_is_space.exit.thread
    i8 9, label %t42_is_space.exit.thread
    i8 0, label %t42_is_space.exit.thread
  ]

.thread:                                          ; preds = %bb.v, %bb.r, %bb.s, %bb.t, %bb.u
  %i.cf = load ptr, ptr %i.bn, align 8, !tbaa !74
  tail call void %i.cf(ptr noundef nonnull %1) #13
  %i.cg = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %.not233 = icmp ult ptr %i.cg, %i.i
  br i1 %.not233, label %bb.w, label %.thread254

bb.w:                                             ; preds = %.thread
  %i.ch = load i32, ptr %i.bo, align 8, !tbaa !71
  %.not234 = icmp eq i32 %i.ch, 0
  br i1 %.not234, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.ci = load i8, ptr %i.bu, align 1, !tbaa !73  ; 2 uses
  switch i8 %i.ci, label %.thread260 [
    i8 47, label %bb.y
    i8 40, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.cj = icmp eq i8 %i.ci, 40                    ; 3 uses
  %i.ck = select i1 %i.cj, i64 3, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ck
  %.not235 = icmp ult ptr %i.cl, %i.i
  br i1 %.not235, label %bb.z, label %.thread254

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 3 uses
  %i.cn = ptrtoint ptr %i.cg to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = sext i1 %i.cj to i32
  %spec.select = add i32 %i.cr, %i.cq             ; 2 uses
  %i.cs = load ptr, ptr %i.bp, align 8, !tbaa !120
  %i.ct = add i32 %spec.select, 1
  %i.cu = tail call i32 %i.cs(ptr noundef nonnull %i.b, i32 noundef %.0191272, ptr noundef nonnull %i.cm, i32 noundef %i.ct) #13 ; 2 uses
  %.not236 = icmp eq i32 %i.cu, 0
  br i1 %.not236, label %bb.aa, label %.thread254

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !121
  %i.cw = sext i32 %.0191272 to i64               ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87
  %i.cz = zext i32 %spec.select to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !73
  %i.db = load i8, ptr %i.cm, align 1, !tbaa !73
  %i.dc = icmp eq i8 %i.db, 46
  br i1 %i.dc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !121
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cw
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !87
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.10, ptr noundef nonnull dereferenceable(1) %i.df) #14
  %i.dh = icmp eq i32 %i.dg, 0                    ; 2 uses
  %spec.select250 = select i1 %i.dh, i32 %.0191272, i32 %.0186273
  %spec.select251 = select i1 %i.dh, i8 1, i8 %.0184274
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1187 = phi i32 [ %.0186273, %bb.aa ], [ %spec.select250, %bb.ab ] ; 2 uses
  %.1185 = phi i8 [ %.0184274, %bb.aa ], [ %spec.select251, %bb.ab ] ; 2 uses
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.di(ptr noundef nonnull %1) #13
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.bn, align 8, !tbaa !74
  tail call void %i.dj(ptr noundef nonnull %1) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dk = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.dl = load ptr, ptr %i.br, align 8, !tbaa !117
  %i.dm = tail call i64 %i.dl(ptr noundef nonnull %1) #13 ; 0 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %.not237 = icmp ult ptr %i.dn, %i.i
  br i1 %.not237, label %bb.af, label %.thread254

bb.af:                                            ; preds = %bb.ae
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dk to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.dt = add i32 %i.dr, 1
  %i.du = tail call i32 %i.ds(ptr noundef nonnull %i.a, i32 noundef %.0191272, ptr noundef %i.dk, i32 noundef %i.dt) #13 ; 2 uses
  %.not238 = icmp eq i32 %i.du, 0
  br i1 %.not238, label %bb.ag, label %.thread254

bb.ag:                                            ; preds = %bb.af
  %i.dv = load ptr, ptr %i.bt, align 8, !tbaa !121
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.cw
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !87
  %i.dy = and i64 %i.dq, 4294967295
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dy
  store i8 0, ptr %i.dz, align 1, !tbaa !73
  %i.ea = add nsw i32 %.0191272, 1                ; 3 uses
  %i.eb = load i32, ptr %i.bb, align 8, !tbaa !80
  %.not239 = icmp slt i32 %i.ea, %i.eb
  br i1 %.not239, label %.thread260, label %t42_is_space.exit.thread

.thread260:                                       ; preds = %bb.ag, %bb.x
  %.2193 = phi i32 [ %.0191272, %bb.x ], [ %i.ea, %bb.ag ] ; 2 uses
  %.3189 = phi i32 [ %.0186273, %bb.x ], [ %.1187, %bb.ag ] ; 2 uses
  %.3 = phi i8 [ %.0184274, %bb.x ], [ %.1185, %bb.ag ] ; 2 uses
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.ec(ptr noundef nonnull %1) #13
  %i.ed = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %.not231 = icmp ult ptr %i.ed, %i.i
  br i1 %.not231, label %bb.r, label %t42_is_space.exit.thread

t42_is_space.exit.thread:                         ; preds = %.thread260, %bb.ag, %bb.r, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %.3194.ph = phi i32 [ %.2193, %.thread260 ], [ %.0191272, %bb.v ], [ %.0191272, %bb.v ], [ %.0191272, %bb.v ], [ %.0191272, %bb.v ], [ %.0191272, %bb.v ], [ %.0191272, %bb.r ], [ %.0191272, %bb.v ], [ %i.ea, %bb.ag ]
  %.4190.ph = phi i32 [ %.3189, %.thread260 ], [ %.0186273, %bb.v ], [ %.0186273, %bb.v ], [ %.0186273, %bb.v ], [ %.0186273, %bb.v ], [ %.0186273, %bb.v ], [ %.0186273, %bb.r ], [ %.0186273, %bb.v ], [ %.1187, %bb.ag ] ; 3 uses
  %.4.ph = phi i8 [ %.3, %.thread260 ], [ %.0184274, %bb.v ], [ %.0184274, %bb.v ], [ %.0184274, %bb.v ], [ %.0184274, %bb.v ], [ %.0184274, %bb.v ], [ %.0184274, %bb.r ], [ %.0184274, %bb.v ], [ %.1185, %bb.ag ]
  %i.ee = icmp eq i8 %.4.ph, 0
  store i32 %.3194.ph, ptr %i.bb, align 8, !tbaa !80
  br i1 %i.ee, label %.thread254, label %bb.ah

bb.ah:                                            ; preds = %t42_is_space.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !121
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  %i.ei = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.10, ptr noundef nonnull dereferenceable(1) %i.eh) #14
  %.not241 = icmp eq i32 %i.ei, 0
  br i1 %.not241, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !120
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !254
  %i.en = load i32, ptr %i.em, align 4, !tbaa !68
  %i.eo = tail call i32 %i.ek(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef nonnull %i.eh, i32 noundef %i.en) #13 ; 2 uses
  %.not242 = icmp eq i32 %i.eo, 0
  br i1 %.not242, label %bb.aj, label %.thread254

bb.aj:                                            ; preds = %bb.ai
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !120
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !121
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !254
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !68
  %i.ew = tail call i32 %i.ep(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef %i.es, i32 noundef %i.ev) #13 ; 2 uses
  %.not243 = icmp eq i32 %i.ew, 0
  br i1 %.not243, label %bb.ak, label %.thread254

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.ej, align 8, !tbaa !120
  %i.ey = load ptr, ptr %i.ef, align 8, !tbaa !121
  %2 = sext i32 %.4190.ph to i64                  ; 4 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %2
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !87
  %i.fb = load ptr, ptr %i.el, align 8, !tbaa !254
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %2
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !68
  %i.fe = tail call i32 %i.ex(ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef %i.fa, i32 noundef %i.fd) #13 ; 2 uses
  %.not244 = icmp eq i32 %i.fe, 0
  br i1 %.not244, label %bb.al, label %.thread254

bb.al:                                            ; preds = %bb.ak
  %i.ff = load ptr, ptr %i.ej, align 8, !tbaa !120
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !121
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %2
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !87
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !254
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !68
  %i.fm = tail call i32 %i.ff(ptr noundef nonnull %i.c, i32 noundef 3, ptr noundef %i.fi, i32 noundef %i.fl) #13 ; 2 uses
  %.not245 = icmp eq i32 %i.fm, 0
  br i1 %.not245, label %bb.am, label %.thread254

bb.am:                                            ; preds = %bb.al
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !120
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !121
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !87
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !254
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !68
  %i.fv = tail call i32 %i.fo(ptr noundef nonnull %i.b, i32 noundef %.4190.ph, ptr noundef %i.fr, i32 noundef %i.fu) #13 ; 2 uses
  %.not246 = icmp eq i32 %i.fv, 0
  br i1 %.not246, label %bb.an, label %.thread254

bb.an:                                            ; preds = %bb.am
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !120
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !121
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !87
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !254
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !68
  %i.ge = tail call i32 %i.fx(ptr noundef nonnull %i.a, i32 noundef %.4190.ph, ptr noundef %i.ga, i32 noundef %i.gd) #13 ; 2 uses
  %.not247 = icmp eq i32 %i.ge, 0
  br i1 %.not247, label %bb.ao, label %.thread254

bb.ao:                                            ; preds = %bb.an
  %i.gf = load ptr, ptr %i.fn, align 8, !tbaa !120
  %i.gg = load ptr, ptr %i.fp, align 8, !tbaa !121
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !87
  %i.gj = load ptr, ptr %i.fs, align 8, !tbaa !254
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !68
  %i.gm = tail call i32 %i.gf(ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef %i.gi, i32 noundef %i.gl) #13 ; 2 uses
  %.not248 = icmp eq i32 %i.gm, 0
  br i1 %.not248, label %bb.ap, label %.thread254

bb.ap:                                            ; preds = %bb.ao
  %i.gn = load ptr, ptr %i.fw, align 8, !tbaa !120
  %i.go = load ptr, ptr %i.fp, align 8, !tbaa !121
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !87
  %i.gr = load ptr, ptr %i.fs, align 8, !tbaa !254
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !68
  %i.gu = tail call i32 %i.gn(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef %i.gq, i32 noundef %i.gt) #13 ; 2 uses
  %.not249 = icmp eq i32 %i.gu, 0
  br i1 %.not249, label %.critedge, label %.thread254

.thread254:                                       ; preds = %bb.ae, %bb.z, %bb.y, %bb.af, %.thread, %t42_is_space.exit.thread.thread, %t42_is_space.exit.thread, %bb.n, %.loopexit, %bb.g, %bb.d, %bb.a, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.q, %bb.p, %bb.o
  %.1196 = phi i32 [ 3, %bb.d ], [ 3, %bb.a ], [ 3, %bb.g ], [ 3, %.loopexit ], [ %i.bd, %bb.o ], [ %i.bh, %bb.p ], [ %i.bk, %bb.q ], [ %i.eo, %bb.ai ], [ %i.ew, %bb.aj ], [ %i.fe, %bb.ak ], [ %i.fm, %bb.al ], [ %i.fv, %bb.am ], [ %i.ge, %bb.an ], [ %i.gm, %bb.ao ], [ %i.gu, %bb.ap ], [ 3, %t42_is_space.exit.thread ], [ 3, %bb.n ], [ 3, %t42_is_space.exit.thread.thread ], [ %i.du, %bb.af ], [ 3, %bb.y ], [ %i.cu, %bb.z ], [ 3, %bb.ae ], [ 3, %.thread ]
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.1196, ptr %i.gv, align 8, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.w, %bb.h, %bb.ah, %bb.ap, %bb.c, %.thread254
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @t42_parse_sfnts(ptr nofree noundef captures(none) initializes((800, 808)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.k(ptr noundef %1) #13
  %i.l = load ptr, ptr %1, align 8, !tbaa !69     ; 3 uses
  %.not = icmp ult ptr %i.l, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %1, align 8, !tbaa !69
  %i.n = load i8, ptr %i.l, align 1, !tbaa !73
  %.not196 = icmp eq i8 %i.n, 91
  br i1 %.not196, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !72
  tail call void %i.o(ptr noundef nonnull %1) #13
  %i.p = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef 12, ptr noundef nonnull %i.a) #13
  store ptr %i.p, ptr %i.g, align 8, !tbaa !90
  %i.q = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not197 = icmp eq i32 %i.q, 0
  br i1 %.not197, label %.preheader291, label %.thread250

.preheader291:                                    ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.f
  br i1 %i.x, label %.lr.ph777, label %._crit_edge778

.lr.ph777:                                        ; preds = %.preheader291, %.thread
  %i.y = phi ptr [ %i.cy, %.thread ], [ %i.w, %.preheader291 ] ; 4 uses
  %.0144776 = phi i32 [ %.5, %.thread ], [ 0, %.preheader291 ]
  %.0149775 = phi i8 [ %.1150229, %.thread ], [ 0, %.preheader291 ] ; 7 uses
  %.0154774 = phi ptr [ %.2156228, %.thread ], [ null, %.preheader291 ] ; 9 uses
  %.0160773 = phi i64 [ %.1161227, %.thread ], [ 0, %.preheader291 ] ; 3 uses
  %.0163772 = phi i64 [ %.3166233, %.thread ], [ 0, %.preheader291 ]
  %.0169771 = phi i64 [ %.7, %.thread ], [ 12, %.preheader291 ]
  %.0176770 = phi i64 [ %.2178, %.thread ], [ 0, %.preheader291 ] ; 2 uses
  %.0180769 = phi i32 [ %.4184, %.thread ], [ 0, %.preheader291 ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !73    ; 2 uses
  switch i8 %i.z, label %bb.m [
    i8 93, label %bb.e
    i8 60, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph777
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.aa, ptr %1, align 8, !tbaa !69
  store i64 %.0176770, ptr %i.i, align 8, !tbaa !94
  %.pre512 = load i32, ptr %i.s, align 8, !tbaa !71
  br label %.thread261

bb.f:                                             ; preds = %.lr.ph777
  %2 = icmp eq ptr %.0154774, null
  %i.ab = icmp ne i8 %.0149775, 0
  %or.cond = select i1 %2, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.h:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !74
  call void %i.ac(ptr noundef nonnull %1) #13
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !71
  %.not201 = icmp eq i32 %i.ad, 0
  br i1 %.not201, label %bb.i, label %.thread261.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %1, align 8, !tbaa !69
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ah = xor i64 %i.ag, -1
  %i.ai = add i64 %i.af, %i.ah
  %i.aj = sdiv i64 %i.ai, 2                       ; 3 uses
  %.off = sub i64 %i.af, %i.ag
  %.not202 = icmp ult i64 %.off, 3
  br i1 %.not202, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.k:                                             ; preds = %bb.i
  %i.ak = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.0160773, i64 noundef %i.aj, ptr noundef %.0154774, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !68  ; 2 uses
  %.not203 = icmp eq i32 %i.al, 0
  br i1 %.not203, label %bb.l, label %.thread250

bb.l:                                             ; preds = %bb.k
  store ptr %i.y, ptr %1, align 8, !tbaa !69
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !257
  %i.an = call i32 %i.am(ptr noundef nonnull %1, ptr noundef %i.ak, i64 noundef %i.aj, ptr noundef nonnull %i.b, i8 noundef zeroext 1) #13 ; 0 uses
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !96
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph777
  %i.ap = add i8 %i.z, -48
  %i.aq = icmp ult i8 %i.ap, 10
  br i1 %i.aq, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %.not198 = icmp eq i8 %.0149775, 0
  br i1 %.not198, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.p:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.as = call i64 %i.ar(ptr noundef nonnull %1) #13 ; 4 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.r:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !74
  call void %i.au(ptr noundef nonnull %1) #13
  %i.av = load i32, ptr %i.s, align 8, !tbaa !71
  %.not199 = icmp eq i32 %i.av, 0
  br i1 %.not199, label %bb.s, label %.thread.thread280

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %1, align 8, !tbaa !69    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.v, %i.ay
  %.not200 = icmp ugt i64 %i.az, %i.as
  br i1 %.not200, label %.thread220, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

.thread220:                                       ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %1, align 8, !tbaa !69
  br label %bb.w

bb.u:                                             ; preds = %bb.l, %bb.m
  %.2165 = phi i64 [ %i.ao, %bb.l ], [ %.0163772, %bb.m ]
  %.1161 = phi i64 [ %i.aj, %bb.l ], [ %.0160773, %bb.m ]
  %.2156 = phi ptr [ %i.ak, %bb.l ], [ %.0154774, %bb.m ] ; 2 uses
  %.1150 = phi i8 [ 1, %bb.l ], [ %.0149775, %bb.m ] ; 2 uses
  %.not204 = icmp eq ptr %.2156, null
  br i1 %.not204, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.w:                                             ; preds = %.thread220, %bb.u
  %.1150229 = phi i8 [ 0, %.thread220 ], [ %.1150, %bb.u ] ; 8 uses
  %.2156228 = phi ptr [ %i.ax, %.thread220 ], [ %.2156, %bb.u ] ; 10 uses
  %.1161227 = phi i64 [ %.0160773, %.thread220 ], [ %.1161, %bb.u ]
  %.2165226 = phi i64 [ %i.as, %.thread220 ], [ %.2165, %bb.u ] ; 5 uses
  %i.bc = and i64 %.2165226, 1
  %.not205 = icmp eq i64 %i.bc, 0
  br i1 %.not205, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr i8, ptr %.2156228, i64 %.2165226
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !73
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = add nsw i64 %.2165226, -1
  br i1 %i.bg, label %select.unfold, label %.lr.ph415.preheader

select.unfold:                                    ; preds = %bb.x, %bb.w
  %.3166 = phi i64 [ %.2165226, %bb.w ], [ %i.bh, %bb.x ] ; 2 uses
  %.not206 = icmp eq i64 %.3166, 0
  br i1 %.not206, label %bb.y, label %.lr.ph415.preheader

bb.y:                                             ; preds = %select.unfold
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

.lr.ph415.preheader:                              ; preds = %select.unfold, %bb.x
  %.3166233 = phi i64 [ %.3166, %select.unfold ], [ %.2165226, %bb.x ] ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !69
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.v, %i.bj                     ; 3 uses
  br label %.lr.ph415

.lr.ph415:                                        ; preds = %.lr.ph415.preheader, %bb.ai
  %.1145413 = phi i32 [ %.0144776, %.lr.ph415.preheader ], [ %.5, %bb.ai ]
  %.0168412 = phi i64 [ 0, %.lr.ph415.preheader ], [ %i.cw, %bb.ai ] ; 2 uses
  %.1170411 = phi i64 [ %.0169771, %.lr.ph415.preheader ], [ %.7, %bb.ai ] ; 4 uses
  %.1177408 = phi i64 [ %.0176770, %.lr.ph415.preheader ], [ %.2178, %bb.ai ] ; 5 uses
  %.1181407 = phi i32 [ %.0180769, %.lr.ph415.preheader ], [ %.4184, %bb.ai ] ; 3 uses
  switch i32 %.1145413, label %default.unreachable524 [
    i32 0, label %bb.z
    i32 1, label %bb.ac
    i32 2, label %bb.ag
  ]

bb.z:                                             ; preds = %.lr.ph415
  %i.bl = icmp slt i64 %.1177408, 12
  br i1 %i.bl, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !90  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !73
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !73
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bq, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.bu, 4
  %i.bw = or disjoint i32 %i.bv, 12
  %i.bx = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.by = icmp slt i64 %i.bk, %i.bx
  br i1 %i.by, label %.thread234, label %bb.ab

.thread234:                                       ; preds = %bb.aa
  store i32 3, ptr %i.a, align 4, !tbaa !68
  br label %.thread250

bb.ab:                                            ; preds = %bb.aa
  %i.bz = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %.1170411, i64 noundef %i.bx, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.a) #13
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !90
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !68
  %.not207 = icmp eq i32 %i.ca, 0
  br i1 %.not207, label %bb.ac, label %.thread..thread250.loopexit422_crit_edge

bb.ac:                                            ; preds = %bb.ab, %.lr.ph415
  %.2182 = phi i32 [ %i.bu, %bb.ab ], [ %.1181407, %.lr.ph415 ] ; 4 uses
  %.2171 = phi i64 [ %i.bx, %bb.ab ], [ %.1170411, %.lr.ph415 ] ; 5 uses
  %i.cb = icmp slt i64 %.1177408, %.2171
  br i1 %i.cb, label %bb.ai, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %i.cc = icmp sgt i32 %.2182, 0
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !90  ; 2 uses
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.2182 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 2 uses
  %.3172404 = phi i64 [ %.2171, %.lr.ph ], [ %i.co, %bb.af ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
end_hunk_1
