Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/type1?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@T1_Parse_Glyph_And_Get_Char_String:bb.a
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !154
  store ptr %i.t, ptr %2, align 8, !tbaa !320
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 664
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.r
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !323
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !320
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !220
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !459
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !226
  %i.ad = tail call i32 %i.aa(ptr noundef %i.ac, i32 noundef %1, ptr noundef nonnull %2) #17 ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.c, label %.thread68

bb.c:                                             ; preds = %.thread, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !205
  %.not64 = icmp eq i8 %i.af, 0
  br i1 %.not64, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !460
  %i.ai = load ptr, ptr %2, align 8, !tbaa !320
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !323
  %i.al = tail call i32 %i.ah(ptr noundef nonnull %0, ptr noundef %i.ai, i32 noundef %i.ak) #17
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !461
  call void %i.an(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !462
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  call void %i.ap(ptr noundef nonnull %i.b, ptr noundef nonnull %i.aq, ptr noundef nonnull %5) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 1056
  store ptr %5, ptr %i.ar, align 8, !tbaa !463
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !472
  %i.au = load ptr, ptr %2, align 8, !tbaa !320
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !323
  %i.ax = zext i32 %i.aw to i64
  %i.ay = call i32 %i.at(ptr noundef nonnull %4, ptr noundef %i.au, i64 noundef %i.ax) #17 ; 2 uses
  %i.az = and i32 %i.ay, 255
  %i.ba = icmp eq i32 %i.az, 164
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !473
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 304
  store i8 0, ptr %i.bd, align 8, !tbaa !288
  store i8 1, ptr %3, align 1, !tbaa !99
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !472
  %i.bf = load ptr, ptr %2, align 8, !tbaa !320
  %i.bg = load i32, ptr %i.av, align 8, !tbaa !323
  %i.bh = zext i32 %i.bg to i64
  %i.bi = call i32 %i.be(ptr noundef nonnull %4, ptr noundef %i.bf, i64 noundef %i.bh) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.bi, %bb.f ], [ %i.ay, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.2 = phi i32 [ %.1, %bb.g ], [ %i.al, %bb.d ]  ; 2 uses
  %i.bj = icmp eq i32 %.2, 0
  %or.cond = and i1 %i.o, %i.bj
  br i1 %or.cond, label %bb.i, label %.thread68

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !220
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !474
  %.not65 = icmp eq ptr %i.bm, null
  br i1 %.not65, label %.thread71, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !293
  %i.bp = call i64 @FT_RoundFix(i64 noundef %i.bo) #17
  %i.bq = ashr i64 %i.bp, 16
  store i64 %i.bq, ptr %6, align 8, !tbaa !475
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !477
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !228
  %i.bu = call i64 @FT_RoundFix(i64 noundef %i.bt) #17
  %i.bv = ashr i64 %i.bu, 16
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !478
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !305
  %i.bz = call i64 @FT_RoundFix(i64 noundef %i.by) #17
  %i.ca = ashr i64 %i.bz, 16
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !479
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !220
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !474
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !226
  %i.ch = call i32 %i.ce(ptr noundef %i.cg, i32 noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %6) #17
  %i.ci = load i64, ptr %6, align 8, !tbaa !475
  %i.cj = shl nsw i64 %i.ci, 16
  store i64 %i.cj, ptr %i.bn, align 8, !tbaa !293
  %i.ck = load <2 x i64>, ptr %i.bw, align 8, !tbaa !109
  %i.cl = shl nsw <2 x i64> %i.ck, splat (i64 16)
  store <2 x i64> %i.cl, ptr %i.bs, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.thread68

.thread68:                                        ; preds = %bb.b, %bb.j, %bb.h
  %.3 = phi i32 [ %i.ch, %bb.j ], [ %.2, %bb.h ], [ %i.ad, %bb.b ] ; 3 uses
  %i.cm = icmp ne i32 %.3, 0
  %or.cond3 = and i1 %i.o, %i.cm
  br i1 %or.cond3, label %bb.k, label %.thread71

bb.k:                                             ; preds = %.thread68
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !220
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !224
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !226
  call void %i.cp(ptr noundef %i.cr, ptr noundef nonnull %2) #17
  br label %.thread71

.thread71:                                        ; preds = %bb.i, %bb.k, %.thread68
  %.374 = phi i32 [ %.3, %.thread68 ], [ %.3, %bb.k ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.374
}

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @FT_Get_Module(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_Request_Metrics(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @ft_hash_str_free(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_module_get_service(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_CMap_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_dict(ptr noundef %0, ptr noundef nonnull initializes((0, 8), (16, 28)) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  store ptr %2, ptr %1, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  store i32 0, ptr %i.d, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  tail call void %i.f(ptr noundef nonnull %1) #17
  %i.g = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.h = icmp ult ptr %i.g, %i.b
  br i1 %i.h, label %.lr.ph, label %.thread271

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 708 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread259
  %i.t = phi ptr [ %i.g, %.lr.ph ], [ %i.fe, %.thread259 ] ; 17 uses
  %.0165289 = phi i8 [ 0, %.lr.ph ], [ %.4169, %.thread259 ] ; 3 uses
  %.sroa.0.0284 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %.thread259 ] ; 13 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !99    ; 5 uses
  switch i8 %i.u, label %bb.r [
    i8 101, label %bb.c
    i8 99, label %bb.g
    i8 70, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 6 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp ult ptr %i.v, %i.b
  br i1 %i.x, label %bb.e, label %.thread235

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !99
  switch i8 %i.z, label %.thread235 [
    i8 32, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 12, label %bb.f
    i8 0, label %bb.f
    i8 47, label %bb.f
    i8 40, label %bb.f
    i8 41, label %bb.f
    i8 60, label %bb.f
    i8 62, label %bb.f
    i8 91, label %bb.f
    i8 93, label %bb.f
    i8 123, label %bb.f
    i8 125, label %bb.f
    i8 37, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.c
  %i.aa = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(6) @.str.23, i64 noundef 5) #18
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread271, label %.thread235

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 10 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.b
  br i1 %i.ad, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult ptr %i.ac, %i.b
  br i1 %i.ae, label %bb.i, label %.thread235

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !99
  switch i8 %i.ag, label %.thread235 [
    i8 32, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 9, label %bb.j
    i8 12, label %bb.j
    i8 0, label %bb.j
    i8 47, label %bb.j
    i8 40, label %bb.j
    i8 41, label %bb.j
    i8 60, label %bb.j
    i8 62, label %bb.j
    i8 91, label %bb.j
    i8 93, label %bb.j
    i8 123, label %bb.j
    i8 125, label %bb.j
    i8 37, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.g
  %i.ah = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(10) @.str.24, i64 noundef 9) #18
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.thread271, label %.thread235

bb.k:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 14 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = icmp ult ptr %i.aj, %i.b
  br i1 %i.al, label %bb.m, label %.thread235

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !99
  switch i8 %i.an, label %.thread235 [
    i8 32, label %bb.n
    i8 13, label %bb.n
    i8 10, label %bb.n
    i8 9, label %bb.n
    i8 12, label %bb.n
    i8 0, label %bb.n
    i8 47, label %bb.n
    i8 40, label %bb.n
    i8 41, label %bb.n
    i8 60, label %bb.n
    i8 62, label %bb.n
    i8 91, label %bb.n
    i8 93, label %bb.n
    i8 123, label %bb.n
    i8 125, label %bb.n
    i8 37, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.k
  %i.ao = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(14) @.str.25, i64 noundef 13) #18
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %.thread235

bb.o:                                             ; preds = %bb.n
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !480 ; 2 uses
  %i.ar = and i32 %i.aq, 1
  %.not201 = icmp eq i32 %i.ar, 0
  br i1 %.not201, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = or i32 %i.aq, 2
  store i32 %i.as, ptr %i.i, align 4, !tbaa !480
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 13
  store ptr %i.at, ptr %1, align 8, !tbaa !94
  br label %.thread259

bb.r:                                             ; preds = %bb.b
  %i.au = add i8 %i.u, -48
  %i.av = icmp ult i8 %i.au, 10
  br i1 %i.av, label %bb.s, label %.thread223

bb.s:                                             ; preds = %bb.r
  %4 = ptrtoint ptr %i.t to i64
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !100
  call void %i.aw(ptr noundef nonnull %1) #17
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !102
  %.not200 = icmp eq i32 %i.ax, 0
  br i1 %.not200, label %.thread259, label %.thread271

.thread223:                                       ; preds = %bb.r
  %i.ay = icmp eq i8 %i.u, 82
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.ba = icmp ult ptr %i.az, %i.b                ; 2 uses
  %or.cond203 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond203, label %bb.t, label %bb.y

bb.t:                                             ; preds = %.thread223
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !99
  %i.bd = icmp eq i8 %i.bc, 68
  %i.be = icmp ne i8 %.0165289, 0
  %or.cond = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.u, label %.thread235

bb.u:                                             ; preds = %bb.t
  %5 = inttoptr i64 %.sroa.0.0284 to ptr
  store ptr %5, ptr %1, align 8, !tbaa !94
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !137
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !95  ; 2 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !103
  call void %i.bj(ptr noundef nonnull %1) #17, !inline_history !481
  %i.bk = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.bi
  br i1 %i.bl, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !99
  %i.bn = add i8 %i.bm, -48
  %i.bo = icmp ult i8 %i.bn, 10
  br i1 %i.bo, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !482
  %i.bq = call i64 %i.bp(ptr noundef nonnull %1) #17, !inline_history !481 ; 3 uses
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !100
  call void %i.br(ptr noundef nonnull %1) #17, !inline_history !481
  %i.bs = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = icmp sgt i64 %i.bq, -1
  %i.bv = ptrtoint ptr %i.bi to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp slt i64 %i.bq, %i.bx
  %or.cond.i = select i1 %i.bu, i1 %i.by, i1 false
  br i1 %or.cond.i, label %read_binary_data.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v, %bb.u
  %.not282.le = icmp eq ptr %i.bh, null
  br i1 %.not282.le, label %bb.x, label %.thread265

bb.x:                                             ; preds = %.thread.i
  store i32 3, ptr %i.d, align 8, !tbaa !102
  br label %.thread265

read_binary_data.exit:                            ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %1, align 8, !tbaa !94
  %i.cb = load i32, ptr %i.d, align 8, !tbaa !102
  %.not.i.not = icmp eq i32 %i.cb, 0
  br i1 %.not.i.not, label %.thread259, label %.thread265

bb.y:                                             ; preds = %.thread223
  %i.cc = icmp eq i8 %i.u, 45
  %or.cond205.a = select i1 %i.cc, i1 %i.ba, i1 false
  br i1 %or.cond205.a, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !99
  %i.cf = icmp eq i8 %i.ce, 124
  %i.cg = icmp ne i8 %.0165289, 0
  %or.cond8 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond8, label %bb.aa, label %.thread235

bb.aa:                                            ; preds = %bb.z
  %6 = inttoptr i64 %.sroa.0.0284 to ptr
  store ptr %6, ptr %1, align 8, !tbaa !94
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !137
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !95  ; 2 uses
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !103
  call void %i.cl(ptr noundef nonnull %1) #17, !inline_history !481
  %i.cm = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.ck
  br i1 %i.cn, label %bb.ab, label %.thread.i212

bb.ab:                                            ; preds = %bb.aa
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !99
  %i.cp = add i8 %i.co, -48
  %i.cq = icmp ult i8 %i.cp, 10
  br i1 %i.cq, label %bb.ac, label %.thread.i212

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !482
  %i.cs = call i64 %i.cr(ptr noundef nonnull %1) #17, !inline_history !481 ; 3 uses
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !100
  call void %i.ct(ptr noundef nonnull %1) #17, !inline_history !481
  %i.cu = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cw = icmp sgt i64 %i.cs, -1
  %i.cx = ptrtoint ptr %i.ck to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp slt i64 %i.cs, %i.cz
  %or.cond.i215 = select i1 %i.cw, i1 %i.da, i1 false
  br i1 %or.cond.i215, label %read_binary_data.exit217, label %.thread.i212

.thread.i212:                                     ; preds = %bb.ac, %bb.ab, %bb.aa
  %.not281.le = icmp eq ptr %i.cj, null
  br i1 %.not281.le, label %bb.ad, label %.thread265

bb.ad:                                            ; preds = %.thread.i212
  store i32 3, ptr %i.d, align 8, !tbaa !102
  br label %.thread265

read_binary_data.exit217:                         ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %1, align 8, !tbaa !94
  %i.dd = load i32, ptr %i.d, align 8, !tbaa !102
  %.not.i216.not = icmp eq i32 %i.dd, 0
  br i1 %.not.i216.not, label %.thread259, label %.thread265

bb.ae:                                            ; preds = %bb.y
  %i.de = icmp eq i8 %i.u, 47
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.dg = icmp ult ptr %i.df, %i.b
  %or.cond209 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond209, label %bb.af, label %.thread235

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  store ptr %i.dh, ptr %1, align 8, !tbaa !94
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !100
  call void %i.di(ptr noundef nonnull %1) #17
  %i.dj = load i32, ptr %i.d, align 8, !tbaa !102
  %.not192.a = icmp eq i32 %i.dj, 0
  br i1 %.not192.a, label %bb.ag, label %.thread271

bb.ag:                                            ; preds = %bb.af
  %i.dk = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dh to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = add i32 %i.do, -1
  %or.cond10 = icmp ult i32 %i.dp, 21
  %i.dq = icmp ult ptr %i.dk, %i.b
  %or.cond210 = select i1 %or.cond10, i1 %i.dq, i1 false
  br i1 %or.cond210, label %.preheader, label %.thread259

.preheader:                                       ; preds = %bb.ag
  %i.dr = and i64 %i.dn, 4294967295
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader, %bb.bd
  %i.ds = phi i32 [ 7, %.preheader ], [ %i.fa, %bb.bd ]
  %.0284 = phi ptr [ @t1_keywords, %.preheader ], [ %i.ez, %bb.bd ] ; 8 uses
  %i.dt = icmp eq i32 %i.ds, %i.do
  br i1 %i.dt, label %bb.ai, label %bb.bd

bb.ai:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %.0284, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !483 ; 2 uses
  %bcmp = call i32 @bcmp(ptr nonnull %i.dh, ptr %i.dv, i64 %i.dr)
  %i.dw = icmp eq i32 %bcmp, 0
  br i1 %i.dw, label %bb.aj, label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  %i.dx = load i32, ptr %i.i, align 4, !tbaa !480 ; 2 uses
  %i.dy = and i32 %i.dx, 1
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.0284, i64 48
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !485
  %i.ec = and i32 %i.dz, %i.eb
  %.not195 = icmp eq i32 %i.ec, 0
  br i1 %.not195, label %.thread259, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = and i32 %i.dx, 2
  %.not196 = icmp eq i32 %i.ed, 0
  br i1 %.not196, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(12) @.str.26) #18
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.am, label %.thread259

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.eg = load ptr, ptr %i.k, align 8, !tbaa !112 ; 5 uses
  %.not.i218 = icmp eq ptr %i.eg, null
  br i1 %.not.i218, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !113
  %i.ei = icmp eq i32 %i.eh, 0
  %spec.store.select.i = select i1 %i.ei, ptr null, ptr %i.eg
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0.i = phi ptr [ %spec.store.select.i, %bb.an ], [ null, %bb.am ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0284, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !486 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 11
  br i1 %i.el, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.em = getelementptr inbounds nuw i8, ptr %.0284, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !487
  call void %i.en(ptr noundef nonnull %0, ptr noundef nonnull %1) #17, !inline_history !488
  %i.eo = load i32, ptr %i.d, align 8, !tbaa !489
  br label %t1_load_keyword.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %.0284, i64 16
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !490
  switch i32 %i.eq, label %bb.ax [
    i32 4, label %bb.ar
    i32 3, label %bb.as
    i32 5, label %bb.at
    i32 6, label %bb.au
    i32 7, label %.thread.sink.split.i
    i32 8, label %bb.av
    i32 9, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.o, ptr %i.a, align 8, !tbaa !133
  %.not46.i = icmp eq ptr %.0.i, null
  br i1 %.not46.i, label %.thread.i219, label %thread-pre-split.i

bb.as:                                            ; preds = %bb.aq
  br label %.thread.sink.split.i

bb.at:                                            ; preds = %bb.aq
  store ptr %i.m, ptr %i.a, align 8, !tbaa !133
  %.not45.i = icmp eq ptr %.0.i, null
  br i1 %.not45.i, label %.thread.i219, label %thread-pre-split.i

bb.au:                                            ; preds = %bb.aq
  store ptr %i.l, ptr %i.a, align 8, !tbaa !133
  %.not44.i = icmp eq ptr %.0.i, null
  br i1 %.not44.i, label %.thread.i219, label %thread-pre-split.i

bb.av:                                            ; preds = %bb.aq
  br label %.thread.sink.split.i

bb.aw:                                            ; preds = %bb.aq
  store ptr %i.eg, ptr %i.a, align 8, !tbaa !133
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aq
  br label %.thread.sink.split.i

thread-pre-split.i:                               ; preds = %bb.au, %bb.at, %bb.ar
  %.sink.i = phi i64 [ 416, %bb.at ], [ 280, %bb.ar ], [ 560, %bb.au ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.sink.i ; 2 uses
  %.039.ph.i = load i32, ptr %.0.i, align 8, !tbaa !113
  %.pr.i = load ptr, ptr %i.er, align 8, !tbaa !133
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split.i, %bb.aw
  %i.es = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.eg, %bb.aw ]
  %.040.i = phi ptr [ %i.er, %thread-pre-split.i ], [ %i.a, %bb.aw ]
  %.039.i = phi i32 [ %.039.ph.i, %thread-pre-split.i ], [ 0, %bb.aw ]
  %.not47.i = icmp eq ptr %i.es, null
  br i1 %.not47.i, label %t1_load_keyword.exit.thread, label %.thread.i219

t1_load_keyword.exit.thread:                      ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread259

.thread.sink.split.i:                             ; preds = %bb.ax, %bb.av, %bb.as, %bb.aq
  %.sink55.i = phi ptr [ %i.o, %bb.ax ], [ %0, %bb.av ], [ %i.n, %bb.as ], [ %1, %bb.aq ]
  store ptr %.sink55.i, ptr %i.a, align 8, !tbaa !133
  br label %.thread.i219

.thread.i219:                                     ; preds = %.thread.sink.split.i, %bb.ay, %bb.au, %bb.at, %bb.ar
  %.03952.i = phi i32 [ %.039.i, %bb.ay ], [ 0, %bb.au ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %.thread.sink.split.i ] ; 2 uses
  %.04051.i = phi ptr [ %.040.i, %bb.ay ], [ %i.a, %bb.au ], [ %i.a, %bb.ar ], [ %i.a, %bb.at ], [ %i.a, %.thread.sink.split.i ] ; 2 uses
  %.off.i = add i32 %i.ek, -9
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.thread.i219
  %i.et = load ptr, ptr %i.q, align 8, !tbaa !491
  %i.eu = call i32 %i.et(ptr noundef nonnull %1, ptr noundef nonnull %.0284, ptr noundef nonnull %.04051.i, i32 noundef %.03952.i, ptr noundef null) #17, !inline_history !488
  br label %t1_load_keyword.exit

bb.ba:                                            ; preds = %.thread.i219
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !492
  %i.ew = call i32 %i.ev(ptr noundef nonnull %1, ptr noundef nonnull %.0284, ptr noundef nonnull %.04051.i, i32 noundef %.03952.i, ptr noundef null) #17, !inline_history !488
  br label %t1_load_keyword.exit

t1_load_keyword.exit:                             ; preds = %bb.ap, %bb.az, %bb.ba
  %.041.i = phi i32 [ %i.eo, %bb.ap ], [ %i.eu, %bb.az ], [ %i.ew, %bb.ba ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i32 %.041.i, ptr %i.d, align 8, !tbaa !102
  %.not197 = icmp eq i32 %.041.i, 0
  br i1 %.not197, label %.thread259, label %bb.bb

bb.bb:                                            ; preds = %t1_load_keyword.exit
  %i.ex = and i32 %.041.i, 255
  %i.ey = icmp eq i32 %i.ex, 162
  br i1 %i.ey, label %bb.bc, label %.thread265

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.d, align 8, !tbaa !102
  br label %.thread259

bb.bd:                                            ; preds = %bb.ah, %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %.0284, i64 56 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !493 ; 2 uses
  %.not193 = icmp eq i32 %i.fa, 0
  br i1 %.not193, label %.thread259, label %bb.ah

.thread235:                                       ; preds = %bb.m, %bb.n, %bb.l, %bb.i, %bb.j, %bb.h, %bb.e, %bb.f, %bb.d, %bb.t, %bb.z, %bb.ae
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !100
  call void %i.fb(ptr noundef nonnull %1) #17
  %i.fc = load i32, ptr %i.d, align 8, !tbaa !102
  %.not = icmp eq i32 %i.fc, 0
  br i1 %.not, label %.thread259, label %.thread271

.thread259:                                       ; preds = %bb.bd, %t1_load_keyword.exit.thread, %bb.al, %bb.bc, %t1_load_keyword.exit, %bb.aj, %bb.ag, %bb.q, %read_binary_data.exit, %read_binary_data.exit217, %bb.s, %.thread235
  %.sroa.0.1 = phi i64 [ %.sroa.0.0284, %bb.q ], [ %4, %bb.s ], [ %.sroa.0.0284, %read_binary_data.exit ], [ %.sroa.0.0284, %read_binary_data.exit217 ], [ %.sroa.0.0284, %.thread235 ], [ %.sroa.0.0284, %bb.ag ], [ %.sroa.0.0284, %t1_load_keyword.exit.thread ], [ %.sroa.0.0284, %bb.aj ], [ %.sroa.0.0284, %t1_load_keyword.exit ], [ %.sroa.0.0284, %bb.bc ], [ %.sroa.0.0284, %bb.al ], [ %.sroa.0.0284, %bb.bd ]
  %.4169 = phi i8 [ %.0165289, %bb.q ], [ 1, %bb.s ], [ 0, %read_binary_data.exit ], [ 0, %read_binary_data.exit217 ], [ 0, %.thread235 ], [ 0, %bb.ag ], [ 0, %t1_load_keyword.exit.thread ], [ 0, %bb.aj ], [ 0, %t1_load_keyword.exit ], [ 0, %bb.bc ], [ 0, %bb.al ], [ 0, %bb.bd ]
  %i.fd = load ptr, ptr %i.e, align 8, !tbaa !103
  call void %i.fd(ptr noundef nonnull %1) #17
  %i.fe = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.ff = icmp ult ptr %i.fe, %i.b
  br i1 %i.ff, label %bb.b, label %.thread271

.thread271:                                       ; preds = %.thread259, %bb.s, %bb.f, %bb.j, %bb.af, %.thread235, %bb.a
  %i.fg = load i32, ptr %i.d, align 8, !tbaa !102
  br label %.thread265

.thread265:                                       ; preds = %bb.bb, %read_binary_data.exit217, %read_binary_data.exit, %.thread.i212, %bb.ad, %.thread.i, %bb.x, %.thread271
  %.12 = phi i32 [ %i.fg, %.thread271 ], [ 3, %bb.x ], [ 3, %bb.ad ], [ 3, %.thread.i ], [ 3, %.thread.i212 ], [ 3, %read_binary_data.exit217 ], [ 3, %read_binary_data.exit ], [ %.041.i, %bb.bb ]
  ret i32 %.12
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_type1_format(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 10, 15) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef 0) #17 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %read_pfb_tag.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i16 %i.c, 32767
  %or.cond.i = icmp ult i16 %i.e, 2
  br i1 %or.cond.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @FT_Stream_ReadULongLE(ptr noundef %0, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not11.i = icmp eq i32 %i.g, 0
  br i1 %.not11.i, label %bb.e, label %read_pfb_tag.exit

read_pfb_tag.exit:                                ; preds = %bb.d, %bb.b
  %i.h = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not15 = icmp eq i16 %i.c, -32767
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.i = call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef 0) #17 ; 2 uses
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = call i32 @FT_Stream_EnterFrame(ptr noundef %0, i64 noundef %2) #17 ; 2 uses
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !336
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %1, i64 %2)
  %.not18 = icmp eq i32 %bcmp, 0
  %spec.store.select = select i1 %.not18, i32 0, i32 2
  call void @FT_Stream_ExitFrame(ptr noundef %0) #17
  br label %bb.i

bb.i:                                             ; preds = %read_pfb_tag.exit, %bb.g, %bb.h, %bb.f, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.h, %read_pfb_tag.exit ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %spec.store.select, %bb.h ]
  ret i32 %.0
}

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_Skip(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_Read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden zeroext i16 @FT_Stream_ReadUShort(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_ReadULongLE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @t1_parse_font_matrix(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !494
  %i.f = call i32 %i.e(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %i.a, i32 noundef 3) #17
  %i.g = icmp slt i32 %i.f, 6
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.h, align 8, !tbaa !102
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109  ; 3 uses
  %i.k = call i64 @llvm.abs.i64(i64 %i.j, i1 true) ; 7 uses
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.m, align 8, !tbaa !102
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.k, 65536
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @FT_DivFix(i64 noundef 1000, i64 noundef %i.k) #17
  %i.o = trunc i64 %i.n to i16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 %i.o, ptr %i.p, align 8, !tbaa !196
  %i.q = load i64, ptr %i.a, align 16, !tbaa !109
  %i.r = call i64 @FT_DivFix(i64 noundef %i.q, i64 noundef %i.k) #17
  store i64 %i.r, ptr %i.a, align 16, !tbaa !109
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = call i64 @FT_DivFix(i64 noundef %i.t, i64 noundef %i.k) #17
  store i64 %i.u, ptr %i.s, align 8, !tbaa !109
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 16, !tbaa !109
  %i.x = call i64 @FT_DivFix(i64 noundef %i.w, i64 noundef %i.k) #17
  store i64 %i.x, ptr %i.v, align 16, !tbaa !109
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 16, !tbaa !109
  %i.aa = call i64 @FT_DivFix(i64 noundef %i.z, i64 noundef %i.k) #17
  store i64 %i.aa, ptr %i.y, align 16, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !109
  %i.ad = call i64 @FT_DivFix(i64 noundef %i.ac, i64 noundef %i.k) #17
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !109
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !109
  %i.af = icmp slt i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 -65536, i64 65536  ; 2 uses
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !109
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ag, %bb.f ], [ %i.j, %bb.e ]
  %i.ai = load i64, ptr %i.a, align 16, !tbaa !109
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !307
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !109
  %i.am = shufflevector <2 x i64> %i.al, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.am, ptr %i.ak, align 8, !tbaa !109
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 %i.ah, ptr %i.an, align 8, !tbaa !308
  %i.ao = call zeroext i8 @FT_Matrix_Check(ptr noundef nonnull %i.b) #17
  %.not26 = icmp eq i8 %i.ao, 0
  br i1 %.not26, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.ap, align 8, !tbaa !102
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = load <2 x i64>, ptr %i.aq, align 16, !tbaa !109
  %i.as = ashr <2 x i64> %i.ar, splat (i64 16)
  store <2 x i64> %i.as, ptr %i.c, align 8, !tbaa !109
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_encoding(ptr nofree noundef captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103
  tail call void %i.g(ptr noundef %1) #17
  %i.h = load ptr, ptr %1, align 8, !tbaa !94     ; 10 uses
end_hunk_0
