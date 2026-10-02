Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/softmagic?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@file_check_mem

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @msetoffset(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !36    ; 2 uses
  %.not = icmp sgt i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72   ; 4 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %i.d                      ; 2 uses
  %.not42 = icmp eq i32 %5, 0
  %i.f = and i8 %i.b, 6
  %.not43 = icmp eq i8 %i.f, 0
  %or.cond = or i1 %.not42, %.not43
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @buffer_fill(ptr noundef %3) #20
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not44 = icmp eq i64 %4, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %4, i32 noundef %5) #20
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.c, align 4, !tbaa !72
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  tail call void @buffer_init(ptr noundef nonnull %2, i32 noundef -1, ptr noundef null, ptr noundef %i.o, i64 noundef %i.l) #20
  %i.p = load i64, ptr %i.k, align 8, !tbaa !73
  %i.q = load i32, ptr %i.c, align 4, !tbaa !72
  %i.r = trunc i64 %i.p to i32
  %i.s = sub i32 %i.r, %i.q                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.s, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.s, ptr %i.u, align 4, !tbaa !47
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %5, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.h
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.h ]  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  tail call void @buffer_init(ptr noundef nonnull %2, i32 noundef -1, ptr noundef null, ptr noundef %i.x, i64 noundef %i.z) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.ab, align 4, !tbaa !47
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ae = add i32 %i.ad, %i.d                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.ag = phi i32 [ %.0, %bb.i ], [ %i.s, %bb.g ], [ %i.ae, %bb.j ]
  %.1 = phi i32 [ %.0, %bb.i ], [ %i.e, %bb.g ], [ %i.d, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31
  %i.aj = and i32 %i.ai, 1
  %.not45 = icmp eq i32 %i.aj, 0
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.au = load i64, ptr %i.at, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !73
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.3, ptr noundef %i.am, i64 noundef %i.ao, i64 noundef %i.aq, i32 noundef %i.ag, ptr noundef %i.as, i64 noundef %i.au, i64 noundef %i.aw, i32 noundef %.1, i32 noundef %5) #21 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f, %bb.c, %bb.e
  %.039 = phi i32 [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mget(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr nofree noundef nonnull captures(none) %10, ptr nofree noundef nonnull captures(none) %11, ptr nofree noundef nonnull captures(none) %12, ptr nofree noundef nonnull captures(none) %13, ptr nofree noundef nonnull captures(none) %14, ptr nofree noundef captures(address_is_null) %15, ptr nofree noundef captures(none) %16) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 17 uses
  %17 = alloca %struct.buffer, align 8            ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %18 = alloca %struct.mlist, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 18 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 85 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.f = load i16, ptr %10, align 2, !tbaa !15    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load i16, ptr %i.g, align 8, !tbaa !80
  %.not = icmp ult i16 %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i16 %i.f to i32
  tail call void (ptr, i32, ptr, ...) @file_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %i.i) #20
  br label %.critedge577

bb.c:                                             ; preds = %bb.a
  %i.j = load i16, ptr %11, align 2, !tbaa !15    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.l = load i16, ptr %i.k, align 2, !tbaa !81
  %.not479 = icmp ult i16 %i.j, %i.l
  br i1 %.not479, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext i16 %i.j to i32
  tail call void (ptr, i32, ptr, ...) @file_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %i.m) #20
  br label %.critedge577

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 4 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !34
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !36
  %i.s = and i8 %i.r, 1
  %i.t = zext nneg i8 %i.s to i32
  %i.u = trunc i64 %5 to i32                      ; 2 uses
  %i.v = add i32 %i.d, %i.u
  %i.w = and i64 %4, 4294967295
  tail call fastcc void @mcopy(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef %i.p, i32 noundef %i.t, ptr noundef %3, i32 noundef %i.v, i64 noundef %i.w, ptr noundef %1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 12 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = and i32 %i.y, 1
  %.not480 = icmp eq i32 %i.z, 0
  br i1 %.not480, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.ab = load i8, ptr %i.n, align 2, !tbaa !34
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i8, ptr %i.q, align 2, !tbaa !36
  %i.ae = zext i8 %i.ad to i32
  %i.af = load i16, ptr %10, align 2, !tbaa !15
  %i.ag = zext i16 %i.af to i32
  %i.ah = load i16, ptr %11, align 2, !tbaa !15
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.6, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.d, i64 noundef %5, i64 noundef %4, i32 noundef %i.ag, i32 noundef %i.ai) #21 ; 0 uses
  tail call fastcc void @mdebug(i32 noundef %i.d, ptr noundef nonnull %i.e)
  tail call void @file_mdump(ptr noundef nonnull %1) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = load i8, ptr %i.q, align 2, !tbaa !36
  %i.al = and i8 %i.ak, 1
  %.not481 = icmp eq i8 %i.al, 0
  br i1 %.not481, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !82
  %i.ao = sext i32 %i.an to i64                   ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !50  ; 2 uses
  %i.ar = and i8 %i.aq, 32                        ; 16 uses
  %.not482 = icmp sgt i8 %i.aq, -1
  br i1 %.not482, label %bb.bd, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = zext i32 %i.d to i64                    ; 13 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ao ; 23 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !83  ; 3 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = icmp eq i32 %9, 0
  br i1 %i.ay, label %cvt_flip.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.aw, label %cvt_flip.exit.thread.fold.split [
    i8 7, label %cvt_flip.exit.thread606
    i8 8, label %cvt_flip.exit.thread612
    i8 9, label %cvt_flip.exit.thread
    i8 15, label %bb.k
    i8 26, label %cvt_flip.exit.thread618
    i8 29, label %bb.l
    i8 32, label %bb.m
    i8 44, label %bb.n
    i8 10, label %cvt_flip.exit.thread603
    i8 11, label %cvt_flip.exit.thread609
    i8 12, label %bb.o
    i8 16, label %bb.p
    i8 25, label %cvt_flip.exit.thread615
    i8 28, label %bb.q
    i8 31, label %bb.r
    i8 43, label %bb.s
    i8 34, label %bb.t
    i8 35, label %bb.u
    i8 37, label %bb.v
    i8 38, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.ab
    i8 4, label %bb.aj
    i8 39, label %cvt_flip.exit.thread609
    i8 40, label %cvt_flip.exit.thread612
    i8 23, label %bb.ar
    i8 59, label %bb.ax
  ]

bb.k:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.l:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.m:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.n:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.o:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.p:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.q:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.r:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.s:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.t:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.u:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.v:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

bb.w:                                             ; preds = %bb.j
  br label %cvt_flip.exit.thread

cvt_flip.exit:                                    ; preds = %bb.i
  switch i8 %i.aw, label %cvt_flip.exit.thread.fold.split [
    i8 1, label %bb.x
    i8 2, label %bb.ab
    i8 7, label %cvt_flip.exit.thread603
    i8 10, label %cvt_flip.exit.thread606
    i8 4, label %bb.aj
    i8 8, label %cvt_flip.exit.thread609
    i8 39, label %cvt_flip.exit.thread609
    i8 40, label %cvt_flip.exit.thread612
    i8 11, label %cvt_flip.exit.thread612
    i8 23, label %bb.ar
    i8 26, label %cvt_flip.exit.thread615
    i8 25, label %cvt_flip.exit.thread618
    i8 59, label %bb.ax
  ]

bb.x:                                             ; preds = %bb.j, %cvt_flip.exit
  %i.az = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = icmp ult i64 %4, %i.ba
  %i.bc = icmp eq i64 %4, %i.az
  %or.cond = or i1 %i.bc, %i.bb
  br i1 %or.cond, label %.critedge577, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not493 = icmp eq i8 %i.ar, 0
  %i.bd = load i8, ptr %i.au, align 1, !tbaa !35  ; 2 uses
  br i1 %.not493, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = sext i8 %i.bd to i64
  br label %bb.bb

bb.aa:                                            ; preds = %bb.y
  %i.bf = zext i8 %i.bd to i64
  br label %bb.bb

bb.ab:                                            ; preds = %bb.j, %cvt_flip.exit
  %i.bg = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp ult i64 %4, %i.bh
  %i.bj = sub i64 %4, %i.bg
  %i.bk = icmp ult i64 %i.bj, 2
  %or.cond541 = or i1 %i.bi, %i.bk
  br i1 %or.cond541, label %.critedge577, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.0.copyload4 = load i16, ptr %i.au, align 1    ; 2 uses
  %.not492 = icmp eq i8 %i.ar, 0
  %i.bl = sext i16 %.0.copyload4 to i64
  %i.bm = zext i16 %.0.copyload4 to i64
  %i.bn = select i1 %.not492, i64 %i.bm, i64 %i.bl
  br label %bb.bb

cvt_flip.exit.thread603:                          ; preds = %bb.j, %cvt_flip.exit
  %i.bo = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = icmp ult i64 %4, %i.bp
  %i.br = sub i64 %4, %i.bo
  %i.bs = icmp ult i64 %i.br, 2
  %or.cond543 = or i1 %i.bq, %i.bs
  br i1 %or.cond543, label %.critedge577, label %bb.ad

bb.ad:                                            ; preds = %cvt_flip.exit.thread603
  %.not491 = icmp eq i8 %i.ar, 0
  %i.bt = load i8, ptr %i.au, align 1, !tbaa !35  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !35  ; 2 uses
  br i1 %.not491, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = zext i8 %i.bt to i16
  %i.bx = shl nuw i16 %i.bw, 8
  %i.by = zext i8 %i.bv to i16
  %i.bz = or disjoint i16 %i.bx, %i.by
  %i.ca = sext i16 %i.bz to i64
  br label %bb.bb

bb.af:                                            ; preds = %bb.ad
  %i.cb = zext i8 %i.bt to i64
  %i.cc = shl nuw nsw i64 %i.cb, 8
  %i.cd = zext i8 %i.bv to i64
  %i.ce = or disjoint i64 %i.cc, %i.cd
  br label %bb.bb

cvt_flip.exit.thread606:                          ; preds = %bb.j, %cvt_flip.exit
  %i.cf = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = icmp ult i64 %4, %i.cg
  %i.ci = sub i64 %4, %i.cf
  %i.cj = icmp ult i64 %i.ci, 2
  %or.cond545 = or i1 %i.ch, %i.cj
  br i1 %or.cond545, label %.critedge577, label %bb.ag

bb.ag:                                            ; preds = %cvt_flip.exit.thread606
  %.not490 = icmp eq i8 %i.ar, 0
  %i.ck = load i16, ptr %i.au, align 1            ; 2 uses
  br i1 %.not490, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = sext i16 %i.ck to i64
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ag
  %i.cm = zext i16 %i.ck to i64
  br label %bb.bb

bb.aj:                                            ; preds = %bb.j, %cvt_flip.exit
  %i.cn = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = icmp ult i64 %4, %i.co
  %i.cq = sub i64 %4, %i.cn
  %i.cr = icmp ult i64 %i.cq, 4
  %or.cond547 = or i1 %i.cp, %i.cr
  br i1 %or.cond547, label %.critedge577, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.0.copyload = load i32, ptr %i.au, align 1     ; 2 uses
  %.not489 = icmp eq i8 %i.ar, 0
  %i.cs = sext i32 %.0.copyload to i64
  %i.ct = zext i32 %.0.copyload to i64
  %i.cu = select i1 %.not489, i64 %i.ct, i64 %i.cs
  br label %bb.bb

cvt_flip.exit.thread609:                          ; preds = %bb.j, %bb.j, %cvt_flip.exit, %cvt_flip.exit
  %i.cv = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = icmp ult i64 %4, %i.cw
  %i.cy = sub i64 %4, %i.cv
  %i.cz = icmp ult i64 %i.cy, 4
  %or.cond549 = or i1 %i.cx, %i.cz
  br i1 %or.cond549, label %.critedge577, label %bb.al

bb.al:                                            ; preds = %cvt_flip.exit.thread609
  %.not488 = icmp eq i8 %i.ar, 0
  %19 = load i8, ptr %i.au, align 1, !tbaa !35    ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !35      ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !35      ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !35      ; 2 uses
  br i1 %.not488, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %26 = zext i8 %19 to i32
  %27 = shl nuw i32 %26, 24
  %28 = zext i8 %21 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or disjoint i32 %29, %27
  %31 = zext i8 %23 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or disjoint i32 %30, %32
  %34 = zext i8 %25 to i32
  %35 = or disjoint i32 %33, %34
  %i.da = sext i32 %35 to i64
  br label %bb.bb

bb.an:                                            ; preds = %bb.al
  %36 = zext i8 %19 to i64
  %37 = shl nuw nsw i64 %36, 24
  %38 = zext i8 %21 to i64
  %39 = shl nuw nsw i64 %38, 16
  %40 = or disjoint i64 %39, %37
  %41 = zext i8 %23 to i64
  %42 = shl nuw nsw i64 %41, 8
  %43 = or disjoint i64 %40, %42
  %i.db = zext i8 %25 to i64
  %44 = or disjoint i64 %43, %i.db
  br label %bb.bb

cvt_flip.exit.thread612:                          ; preds = %bb.j, %bb.j, %cvt_flip.exit, %cvt_flip.exit
  %i.dc = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = icmp ult i64 %4, %i.dd
  %i.df = sub i64 %4, %i.dc
  %i.dg = icmp ult i64 %i.df, 4
  %or.cond551 = or i1 %i.de, %i.dg
  br i1 %or.cond551, label %.critedge577, label %bb.ao

bb.ao:                                            ; preds = %cvt_flip.exit.thread612
  %.not487 = icmp eq i8 %i.ar, 0
  %i.dh = load i32, ptr %i.au, align 1            ; 2 uses
  br i1 %.not487, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.di = sext i32 %i.dh to i64
  br label %bb.bb

bb.aq:                                            ; preds = %bb.ao
  %i.dj = zext i32 %i.dh to i64
  br label %bb.bb

bb.ar:                                            ; preds = %bb.j, %cvt_flip.exit
  %i.dk = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = icmp ult i64 %4, %i.dl
  %i.dn = sub i64 %4, %i.dk
  %i.do = icmp ult i64 %i.dn, 4
  %or.cond553 = or i1 %i.dm, %i.do
  br i1 %or.cond553, label %.critedge577, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not486 = icmp eq i8 %i.ar, 0
  %i.dp = load i16, ptr %i.au, align 1            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !35  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !35  ; 2 uses
  br i1 %.not486, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.du = zext i16 %i.dp to i32
  %i.dv = shl nuw i32 %i.du, 16
  %i.dw = zext i8 %i.dr to i32
  %i.dx = shl nuw nsw i32 %i.dw, 8
  %i.dy = or disjoint i32 %i.dx, %i.dv
  %i.dz = zext i8 %i.dt to i32
  %i.ea = or disjoint i32 %i.dy, %i.dz
  %i.eb = sext i32 %i.ea to i64
  br label %bb.bb

bb.au:                                            ; preds = %bb.as
  %i.ec = zext i16 %i.dp to i64
  %i.ed = shl nuw nsw i64 %i.ec, 16
  %i.ee = zext i8 %i.dr to i64
  %i.ef = shl nuw nsw i64 %i.ee, 8
  %i.eg = or disjoint i64 %i.ef, %i.ed
  %i.eh = zext i8 %i.dt to i64
  %i.ei = or disjoint i64 %i.eg, %i.eh
  br label %bb.bb

cvt_flip.exit.thread615:                          ; preds = %bb.j, %cvt_flip.exit
  %i.ej = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = icmp ult i64 %4, %i.ek
  %i.em = sub i64 %4, %i.ej
  %i.en = icmp ult i64 %i.em, 8
  %or.cond555 = or i1 %i.el, %i.en
  br i1 %or.cond555, label %.critedge577, label %bb.av

bb.av:                                            ; preds = %cvt_flip.exit.thread615
  %45 = load i8, ptr %i.au, align 1, !tbaa !35
  %46 = zext i8 %45 to i64
  %47 = shl nuw i64 %46, 56
  %48 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !35
  %50 = zext i8 %49 to i64
  %51 = shl nuw nsw i64 %50, 48
  %52 = or disjoint i64 %51, %47
  %53 = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !35
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 40
  %57 = or disjoint i64 %52, %56
  %58 = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !35
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 32
  %62 = or disjoint i64 %57, %61
  %63 = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %64 = load i8, ptr %63, align 1, !tbaa !35
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 24
  %67 = or disjoint i64 %62, %66
  %68 = getelementptr inbounds nuw i8, ptr %i.au, i64 5
  %69 = load i8, ptr %68, align 1, !tbaa !35
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 16
  %72 = or disjoint i64 %67, %71
  %73 = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %74 = load i8, ptr %73, align 1, !tbaa !35
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 8
  %77 = or i64 %72, %76
  %78 = getelementptr inbounds nuw i8, ptr %i.au, i64 7
  %79 = load i8, ptr %78, align 1, !tbaa !35
  %80 = zext i8 %79 to i64
  %81 = or i64 %77, %80
  br label %bb.bb

cvt_flip.exit.thread618:                          ; preds = %bb.j, %cvt_flip.exit
  %i.eo = add nsw i64 %i.ao, %i.as                ; 2 uses
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = icmp ult i64 %4, %i.ep
  %i.er = sub i64 %4, %i.eo
  %i.es = icmp ult i64 %i.er, 8
  %or.cond557 = or i1 %i.eq, %i.es
  br i1 %or.cond557, label %.critedge577, label %bb.aw

bb.aw:                                            ; preds = %cvt_flip.exit.thread618
  %i.et = load i64, ptr %i.au, align 1
  br label %bb.bb

bb.ax:                                            ; preds = %bb.j, %cvt_flip.exit
  %i.eu = icmp ult i64 %4, %i.as
  br i1 %i.eu, label %.critedge577, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !51
  %i.ex = zext i8 %i.ew to i64
  %i.ey = sub nuw i64 %4, %i.as
  %i.ez = icmp ult i64 %i.ey, %i.ex
  br i1 %i.ez, label %.critedge577, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fa = tail call i64 @__isoc23_strtoull(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 8) #20
  br label %bb.bb

cvt_flip.exit.thread.fold.split:                  ; preds = %bb.j, %cvt_flip.exit
  br label %cvt_flip.exit.thread

cvt_flip.exit.thread:                             ; preds = %bb.j, %cvt_flip.exit.thread.fold.split, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.w
  %.0.i602 = phi i32 [ 12, %bb.j ], [ 38, %bb.v ], [ 34, %bb.u ], [ 35, %bb.t ], [ 44, %bb.s ], [ 32, %bb.r ], [ 29, %bb.q ], [ 15, %bb.p ], [ 9, %bb.o ], [ 43, %bb.n ], [ 31, %bb.m ], [ 28, %bb.l ], [ 16, %bb.k ], [ 37, %bb.w ], [ %i.ax, %cvt_flip.exit.thread.fold.split ]
  %i.fb = load i32, ptr %i.x, align 4, !tbaa !31
  %i.fc = and i32 %i.fb, 1
  %.not495 = icmp eq i32 %i.fc, 0
  br i1 %.not495, label %.critedge577, label %bb.ba

bb.ba:                                            ; preds = %cvt_flip.exit.thread
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.fe = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fd, ptr noundef nonnull @.str.7, i32 noundef %.0.i602) #21 ; 0 uses
  br label %.critedge577

bb.bb:                                            ; preds = %bb.av, %bb.aw, %bb.at, %bb.au, %bb.ap, %bb.aq, %bb.am, %bb.an, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.z, %bb.aa, %bb.az, %bb.ak, %bb.ac
  %.0 = phi i64 [ %i.fa, %bb.az ], [ %i.bn, %bb.ac ], [ %i.bf, %bb.aa ], [ %i.ce, %bb.af ], [ %i.cu, %bb.ak ], [ %i.cm, %bb.ai ], [ %44, %bb.an ], [ %i.dj, %bb.aq ], [ %i.ei, %bb.au ], [ %i.et, %bb.aw ], [ %i.be, %bb.z ], [ %i.ca, %bb.ae ], [ %i.cl, %bb.ah ], [ %i.da, %bb.am ], [ %i.di, %bb.ap ], [ %i.eb, %bb.at ], [ %81, %bb.av ] ; 3 uses
  %i.ff = load i32, ptr %i.x, align 4, !tbaa !31
  %i.fg = and i32 %i.ff, 1
  %.not494 = icmp eq i32 %i.fg, 0
  br i1 %.not494, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.fi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.8, i64 noundef %.0) #21 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.h
  %.2 = phi i64 [ %i.ao, %bb.h ], [ %.0, %bb.bb ], [ %.0, %bb.bc ] ; 11 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !83  ; 5 uses
  %i.fl = zext i8 %i.fk to i32
  %i.fm = icmp eq i32 %9, 0
  br i1 %i.fm, label %cvt_flip.exit592, label %bb.be

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.fk, label %cvt_flip.exit592.thread.fold.split [
    i8 7, label %cvt_flip.exit592.thread627
    i8 8, label %cvt_flip.exit592.thread634.thread
    i8 9, label %cvt_flip.exit592.thread
    i8 15, label %bb.bf
    i8 26, label %cvt_flip.exit592.thread638
    i8 29, label %bb.bg
    i8 32, label %bb.bh
    i8 44, label %bb.bi
    i8 10, label %cvt_flip.exit592.thread624
    i8 11, label %cvt_flip.exit592.thread630
    i8 12, label %bb.bj
    i8 16, label %bb.bk
    i8 25, label %cvt_flip.exit592.thread641
    i8 28, label %bb.bl
    i8 31, label %bb.bm
    i8 43, label %bb.bn
    i8 34, label %bb.bo
    i8 35, label %bb.bp
    i8 37, label %bb.bq
    i8 38, label %bb.br
    i8 1, label %bb.bs
    i8 2, label %bb.bz
    i8 39, label %cvt_flip.exit592.thread630.fold.split
    i8 40, label %cvt_flip.exit592.thread634
    i8 23, label %bb.ch
    i8 4, label %bb.cm
    i8 59, label %bb.cq
  ]

bb.bf:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bg:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bh:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bi:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bj:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bk:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bl:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bm:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bn:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bo:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bp:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.bq:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

bb.br:                                            ; preds = %bb.be
  br label %cvt_flip.exit592.thread

cvt_flip.exit592:                                 ; preds = %bb.bd
  switch i8 %i.fk, label %cvt_flip.exit592.thread.fold.split [
    i8 1, label %bb.bs
    i8 7, label %cvt_flip.exit592.thread624
    i8 10, label %cvt_flip.exit592.thread627
    i8 2, label %bb.bz
    i8 8, label %cvt_flip.exit592.thread630.fold.split
    i8 39, label %cvt_flip.exit592.thread630.fold.split
    i8 11, label %cvt_flip.exit592.thread634
    i8 40, label %cvt_flip.exit592.thread634
    i8 23, label %bb.ch
    i8 4, label %bb.cm
    i8 25, label %cvt_flip.exit592.thread638
    i8 26, label %cvt_flip.exit592.thread641
    i8 59, label %bb.cq
  ]

bb.bs:                                            ; preds = %bb.be, %cvt_flip.exit592
  %i.fn = zext i32 %i.d to i64
  %or.cond558.not = icmp ugt i64 %4, %i.fn
  br i1 %or.cond558.not, label %bb.bt, label %.critedge577

bb.bt:                                            ; preds = %bb.bs
  %.not517 = icmp eq i8 %i.ar, 0
  %i.fo = load i8, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.fp = sext i8 %i.fo to i64
  %i.fq = zext i8 %i.fo to i64
  %i.fr = select i1 %.not517, i64 %i.fq, i64 %i.fp
  %i.fs = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.fr, i64 noundef %.2)
  %.not518 = icmp eq i32 %i.fs, 0
  br i1 %.not518, label %bb.cu, label %.critedge577

cvt_flip.exit592.thread624:                       ; preds = %bb.be, %cvt_flip.exit592
  %i.ft = zext i32 %i.d to i64                    ; 2 uses
  %i.fu = icmp ult i64 %4, %i.ft
  %i.fv = sub nuw i64 %4, %i.ft
  %i.fw = icmp ult i64 %i.fv, 2
  %or.cond560 = select i1 %i.fu, i1 true, i1 %i.fw
  br i1 %or.cond560, label %.critedge577, label %bb.bu

bb.bu:                                            ; preds = %cvt_flip.exit592.thread624
  %.not515 = icmp eq i8 %i.ar, 0
  %i.fx = load i8, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !35  ; 2 uses
  br i1 %.not515, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ga = zext i8 %i.fx to i16
  %i.gb = shl nuw i16 %i.ga, 8
  %i.gc = zext i8 %i.fz to i16
  %i.gd = or disjoint i16 %i.gb, %i.gc
  %i.ge = sext i16 %i.gd to i64
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.gf = zext i8 %i.fx to i64
  %i.gg = shl nuw nsw i64 %i.gf, 8
  %i.gh = zext i8 %i.fz to i64
  %i.gi = or disjoint i64 %i.gg, %i.gh
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gj = phi i64 [ %i.ge, %bb.bv ], [ %i.gi, %bb.bw ]
  %i.gk = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.gj, i64 noundef %.2)
  %.not516 = icmp eq i32 %i.gk, 0
  br i1 %.not516, label %bb.cu, label %.critedge577

cvt_flip.exit592.thread627:                       ; preds = %bb.be, %cvt_flip.exit592
  %i.gl = zext i32 %i.d to i64                    ; 2 uses
  %i.gm = icmp ult i64 %4, %i.gl
  %i.gn = sub nuw i64 %4, %i.gl
  %i.go = icmp ult i64 %i.gn, 2
  %or.cond562 = select i1 %i.gm, i1 true, i1 %i.go
  br i1 %or.cond562, label %.critedge577, label %bb.by

bb.by:                                            ; preds = %cvt_flip.exit592.thread627
  %.not513 = icmp eq i8 %i.ar, 0
  %i.gp = load i16, ptr %i.e, align 8             ; 2 uses
  %i.gq = sext i16 %i.gp to i64
  %i.gr = zext i16 %i.gp to i64
  %i.gs = select i1 %.not513, i64 %i.gr, i64 %i.gq
  %i.gt = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.gs, i64 noundef %.2)
  %.not514 = icmp eq i32 %i.gt, 0
  br i1 %.not514, label %bb.cu, label %.critedge577

bb.bz:                                            ; preds = %bb.be, %cvt_flip.exit592
  %i.gu = zext i32 %i.d to i64                    ; 2 uses
  %i.gv = icmp ult i64 %4, %i.gu
  %i.gw = sub nuw i64 %4, %i.gu
  %i.gx = icmp ult i64 %i.gw, 2
  %or.cond564 = select i1 %i.gv, i1 true, i1 %i.gx
  br i1 %or.cond564, label %.critedge577, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not511 = icmp eq i8 %i.ar, 0
  %i.gy = load i16, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.gz = sext i16 %i.gy to i64
  %i.ha = zext i16 %i.gy to i64
  %i.hb = select i1 %.not511, i64 %i.ha, i64 %i.gz
  %i.hc = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.hb, i64 noundef %.2)
  %.not512 = icmp eq i32 %i.hc, 0
  br i1 %.not512, label %bb.cu, label %.critedge577

cvt_flip.exit592.thread630.fold.split:            ; preds = %bb.be, %cvt_flip.exit592, %cvt_flip.exit592
  %i.hd = icmp eq i8 %i.fk, 39
  br label %cvt_flip.exit592.thread630

cvt_flip.exit592.thread630:                       ; preds = %bb.be, %cvt_flip.exit592.thread630.fold.split
  %.0.i591633 = phi i1 [ false, %bb.be ], [ %i.hd, %cvt_flip.exit592.thread630.fold.split ]
  %i.he = zext i32 %i.d to i64                    ; 2 uses
  %i.hf = icmp ult i64 %4, %i.he
  %i.hg = sub nuw i64 %4, %i.he
  %i.hh = icmp ult i64 %i.hg, 4
  %or.cond566 = select i1 %i.hf, i1 true, i1 %i.hh
  br i1 %or.cond566, label %.critedge577, label %bb.cb

bb.cb:                                            ; preds = %cvt_flip.exit592.thread630
  %i.hi = load i32, ptr %i.e, align 8
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi) ; 2 uses
  br i1 %.0.i591633, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.val590 = load i32, ptr %i.x, align 4, !tbaa !31
  %i.hk = tail call fastcc i32 @cvt_id3(i32 %.val590, i32 noundef %i.hj)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0440.in = phi i32 [ %i.hk, %bb.cc ], [ %i.hj, %bb.cb ] ; 2 uses
  %.not509 = icmp eq i8 %i.ar, 0
  %i.hl = sext i32 %.0440.in to i64
  %i.hm = zext i32 %.0440.in to i64
  %i.hn = select i1 %.not509, i64 %i.hm, i64 %i.hl
  %i.ho = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.hn, i64 noundef %.2)
  %.not510 = icmp eq i32 %i.ho, 0
  br i1 %.not510, label %bb.cu, label %.critedge577

cvt_flip.exit592.thread634:                       ; preds = %cvt_flip.exit592, %cvt_flip.exit592, %bb.be
  %i.hp = zext i32 %i.d to i64                    ; 2 uses
  %i.hq = icmp ult i64 %4, %i.hp
  %i.hr = sub nuw i64 %4, %i.hp
  %i.hs = icmp ult i64 %i.hr, 4
  %or.cond568 = select i1 %i.hq, i1 true, i1 %i.hs
  br i1 %or.cond568, label %.critedge577, label %bb.ce

cvt_flip.exit592.thread634.thread:                ; preds = %bb.be
  %i.ht = zext i32 %i.d to i64                    ; 2 uses
  %i.hu = icmp ult i64 %4, %i.ht
  %i.hv = sub nuw i64 %4, %i.ht
  %i.hw = icmp ult i64 %i.hv, 4
  %or.cond568697 = select i1 %i.hu, i1 true, i1 %i.hw
  br i1 %or.cond568697, label %.critedge577, label %.thread699

.thread699:                                       ; preds = %cvt_flip.exit592.thread634.thread
  %i.hx = load i32, ptr %i.e, align 8
  br label %bb.cg

bb.ce:                                            ; preds = %cvt_flip.exit592.thread634
  %i.hy = icmp eq i8 %i.fk, 40
  %i.hz = load i32, ptr %i.e, align 8             ; 2 uses
  br i1 %i.hy, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %.val = load i32, ptr %i.x, align 4, !tbaa !31
  %i.ia = tail call fastcc i32 @cvt_id3(i32 %.val, i32 noundef %i.hz)
  br label %bb.cg

bb.cg:                                            ; preds = %.thread699, %bb.cf, %bb.ce
  %.1441.in = phi i32 [ %i.ia, %bb.cf ], [ %i.hz, %bb.ce ], [ %i.hx, %.thread699 ] ; 2 uses
  %.not507 = icmp eq i8 %i.ar, 0
  %i.ib = sext i32 %.1441.in to i64
  %i.ic = zext i32 %.1441.in to i64
  %i.id = select i1 %.not507, i64 %i.ic, i64 %i.ib
  %i.ie = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.id, i64 noundef %.2)
  %.not508 = icmp eq i32 %i.ie, 0
  br i1 %.not508, label %bb.cu, label %.critedge577

bb.ch:                                            ; preds = %bb.be, %cvt_flip.exit592
  %i.if = zext i32 %i.d to i64                    ; 2 uses
  %i.ig = icmp ult i64 %4, %i.if
  %i.ih = sub nuw i64 %4, %i.if
  %i.ii = icmp ult i64 %i.ih, 4
  %or.cond570 = select i1 %i.ig, i1 true, i1 %i.ii
  br i1 %or.cond570, label %.critedge577, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not505 = icmp eq i8 %i.ar, 0
  %i.ij = load i16, ptr %i.e, align 8             ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !35  ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.in = load i8, ptr %i.im, align 2, !tbaa !35  ; 2 uses
  br i1 %.not505, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.io = zext i16 %i.ij to i32
  %i.ip = shl nuw i32 %i.io, 16
  %i.iq = zext i8 %i.il to i32
  %i.ir = shl nuw nsw i32 %i.iq, 8
  %i.is = or disjoint i32 %i.ir, %i.ip
  %i.it = zext i8 %i.in to i32
  %i.iu = or disjoint i32 %i.is, %i.it
  %i.iv = sext i32 %i.iu to i64
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.iw = zext i16 %i.ij to i64
  %i.ix = shl nuw nsw i64 %i.iw, 16
  %i.iy = zext i8 %i.il to i64
  %i.iz = shl nuw nsw i64 %i.iy, 8
  %i.ja = or disjoint i64 %i.iz, %i.ix
  %i.jb = zext i8 %i.in to i64
  %i.jc = or disjoint i64 %i.ja, %i.jb
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.jd = phi i64 [ %i.iv, %bb.cj ], [ %i.jc, %bb.ck ]
  %i.je = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.jd, i64 noundef %.2)
  %.not506 = icmp eq i32 %i.je, 0
  br i1 %.not506, label %bb.cu, label %.critedge577

bb.cm:                                            ; preds = %bb.be, %cvt_flip.exit592
  %i.jf = zext i32 %i.d to i64                    ; 2 uses
  %i.jg = icmp ult i64 %4, %i.jf
  %i.jh = sub nuw i64 %4, %i.jf
  %i.ji = icmp ult i64 %i.jh, 4
  %or.cond572 = select i1 %i.jg, i1 true, i1 %i.ji
  br i1 %or.cond572, label %.critedge577, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not503 = icmp eq i8 %i.ar, 0
  %i.jj = load i32, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.jk = sext i32 %i.jj to i64
  %i.jl = zext i32 %i.jj to i64
  %i.jm = select i1 %.not503, i64 %i.jl, i64 %i.jk
  %i.jn = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.jm, i64 noundef %.2)
  %.not504 = icmp eq i32 %i.jn, 0
  br i1 %.not504, label %bb.cu, label %.critedge577

cvt_flip.exit592.thread638:                       ; preds = %bb.be, %cvt_flip.exit592
  %i.jo = zext i32 %i.d to i64                    ; 2 uses
  %i.jp = icmp ult i64 %4, %i.jo
  %i.jq = sub nuw i64 %4, %i.jo
  %i.jr = icmp ult i64 %i.jq, 8
  %or.cond574 = select i1 %i.jp, i1 true, i1 %i.jr
  br i1 %or.cond574, label %.critedge577, label %bb.co

bb.co:                                            ; preds = %cvt_flip.exit592.thread638
  %i.js = load i64, ptr %i.e, align 8
  %i.jt = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.js, i64 noundef %.2)
  %.not502 = icmp eq i32 %i.jt, 0
  br i1 %.not502, label %bb.cu, label %.critedge577

cvt_flip.exit592.thread641:                       ; preds = %bb.be, %cvt_flip.exit592
  %i.ju = zext i32 %i.d to i64                    ; 2 uses
  %i.jv = icmp ult i64 %4, %i.ju
  %i.jw = sub nuw i64 %4, %i.ju
  %i.jx = icmp ult i64 %i.jw, 8
  %or.cond576 = select i1 %i.jv, i1 true, i1 %i.jx
  br i1 %or.cond576, label %.critedge577, label %bb.cp

bb.cp:                                            ; preds = %cvt_flip.exit592.thread641
  %82 = load i8, ptr %i.e, align 8, !tbaa !35
  %83 = zext i8 %82 to i64
  %84 = shl nuw i64 %83, 56
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 137
  %86 = load i8, ptr %85, align 1, !tbaa !35
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 48
  %89 = or disjoint i64 %88, %84
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 138
  %91 = load i8, ptr %90, align 2, !tbaa !35
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 40
  %94 = or disjoint i64 %89, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 139
  %96 = load i8, ptr %95, align 1, !tbaa !35
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 32
  %99 = or disjoint i64 %94, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %101 = load i8, ptr %100, align 4, !tbaa !35
  %102 = zext i8 %101 to i64
  %103 = shl nuw nsw i64 %102, 24
  %104 = or disjoint i64 %99, %103
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 141
  %106 = load i8, ptr %105, align 1, !tbaa !35
  %107 = zext i8 %106 to i64
  %108 = shl nuw nsw i64 %107, 16
  %109 = or disjoint i64 %104, %108
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 142
  %111 = load i8, ptr %110, align 2, !tbaa !35
  %112 = zext i8 %111 to i64
  %113 = shl nuw nsw i64 %112, 8
  %114 = or i64 %109, %113
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 143
  %116 = load i8, ptr %115, align 1, !tbaa !35
  %117 = zext i8 %116 to i64
  %118 = or i64 %114, %117
  %i.jy = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %118, i64 noundef %.2)
  %.not500 = icmp eq i32 %i.jy, 0
  br i1 %.not500, label %bb.cu, label %.critedge577

bb.cq:                                            ; preds = %bb.be, %cvt_flip.exit592
  %i.jz = zext i32 %i.d to i64                    ; 2 uses
  %i.ka = icmp ult i64 %4, %i.jz
  br i1 %i.ka, label %.critedge577, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !51
  %i.kd = zext i8 %i.kc to i64
  %i.ke = sub nuw i64 %4, %i.jz
  %i.kf = icmp ult i64 %i.ke, %i.kd
  br i1 %i.kf, label %.critedge577, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kg = tail call i64 @__isoc23_strtoull(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 8) #20
  %i.kh = call fastcc i32 @do_ops(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, i64 noundef %i.kg, i64 noundef %.2)
  %.not498 = icmp eq i32 %i.kh, 0
  br i1 %.not498, label %bb.cu, label %.critedge577

cvt_flip.exit592.thread.fold.split:               ; preds = %bb.be, %cvt_flip.exit592
  br label %cvt_flip.exit592.thread

cvt_flip.exit592.thread:                          ; preds = %bb.be, %cvt_flip.exit592.thread.fold.split, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.br
  %.0.i591623 = phi i32 [ 12, %bb.be ], [ 38, %bb.bq ], [ 34, %bb.bp ], [ 35, %bb.bo ], [ 44, %bb.bn ], [ 32, %bb.bm ], [ 29, %bb.bl ], [ 15, %bb.bk ], [ 9, %bb.bj ], [ 43, %bb.bi ], [ 31, %bb.bh ], [ 28, %bb.bg ], [ 16, %bb.bf ], [ 37, %bb.br ], [ %i.fl, %cvt_flip.exit592.thread.fold.split ]
  %i.ki = load i32, ptr %i.x, align 4, !tbaa !31
  %i.kj = and i32 %i.ki, 1
  %.not525 = icmp eq i32 %i.kj, 0
  br i1 %.not525, label %.critedge577, label %bb.ct

bb.ct:                                            ; preds = %cvt_flip.exit592.thread
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.kl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kk, ptr noundef nonnull @.str.9, i32 noundef %.0.i591623) #21 ; 0 uses
  br label %.critedge577

bb.cu:                                            ; preds = %bb.cs, %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.cg, %bb.cd, %bb.ca, %bb.by, %bb.bx, %bb.bt
  %i.km = load i8, ptr %i.q, align 2, !tbaa !36
  %i.kn = and i8 %i.km, 4
  %.not519 = icmp eq i8 %i.kn, 0
  br i1 %.not519, label %._crit_edge656, label %bb.cv

._crit_edge656:                                   ; preds = %bb.cu
  %.pre = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  %i.ko = icmp eq i32 %6, 0
  br i1 %i.ko, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.kp = load i32, ptr %i.x, align 4, !tbaa !31
  %i.kq = and i32 %i.kp, 1
  %.not523 = icmp eq i32 %i.kq, 0
  br i1 %.not523, label %.critedge577, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kr = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite524 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 27, i64 1, ptr %i.kr) #22 ; 0 uses
  br label %.critedge577

bb.cy:                                            ; preds = %bb.cv
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !43
  %i.ku = add i32 %6, -1
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !45
  %i.ky = load i32, ptr %i.a, align 4, !tbaa !13
  %i.kz = add i32 %i.ky, %i.kx                    ; 5 uses
  store i32 %i.kz, ptr %i.a, align 4, !tbaa !13
  %i.la = icmp eq i32 %i.kz, 0
  %i.lb = load i32, ptr %i.x, align 4, !tbaa !31
  %i.lc = and i32 %i.lb, 1
  %.not522 = icmp eq i32 %i.lc, 0                 ; 2 uses
  br i1 %i.la, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not522, label %.critedge577, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ld = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.ld) #22 ; 0 uses
  br label %.critedge577

bb.db:                                            ; preds = %bb.cy
  br i1 %.not522, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.le = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.lf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.le, ptr noundef nonnull @.str.12, i32 noundef %i.kz) #21 ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge656, %bb.db, %bb.dc
  %i.lg = phi i32 [ %.pre, %._crit_edge656 ], [ %i.kz, %bb.db ], [ %i.kz, %bb.dc ] ; 5 uses
  %i.lh = load i8, ptr %i.n, align 2, !tbaa !34
  %i.li = zext i8 %i.lh to i32
  tail call fastcc void @mcopy(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef %i.li, i32 noundef 0, ptr noundef %3, i32 noundef %i.lg, i64 noundef %4, ptr noundef nonnull %1)
  store i32 %i.lg, ptr %i.c, align 8, !tbaa !46
  %i.lj = load i32, ptr %i.x, align 4, !tbaa !31
  %i.lk = and i32 %i.lj, 1
  %.not521 = icmp eq i32 %i.lk, 0
  br i1 %.not521, label %.critedge, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call fastcc void @mdebug(i32 noundef %i.lg, ptr noundef nonnull %i.e)
  tail call void @file_mdump(ptr noundef nonnull %1) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.de, %bb.dd, %bb.g
  %i.ll = phi i32 [ %i.lg, %bb.de ], [ %i.lg, %bb.dd ], [ %i.d, %bb.g ] ; 11 uses
  %i.lm = load i8, ptr %i.n, align 2, !tbaa !34   ; 4 uses
  switch i8 %i.lm, label %bb.eq [
    i8 1, label %bb.df
    i8 2, label %bb.dg
    i8 7, label %bb.dg
    i8 10, label %bb.dg
    i8 4, label %bb.dh
    i8 8, label %bb.dh
    i8 11, label %bb.dh
    i8 23, label %bb.dh
    i8 6, label %bb.dh
    i8 9, label %bb.dh
    i8 12, label %bb.dh
    i8 21, label %bb.dh
    i8 14, label %bb.dh
    i8 15, label %bb.dh
    i8 16, label %bb.dh
    i8 22, label %bb.dh
    i8 33, label %bb.dh
    i8 34, label %bb.dh
    i8 35, label %bb.dh
    i8 36, label %bb.di
    i8 37, label %bb.di
    i8 38, label %bb.di
    i8 49, label %bb.dj
    i8 5, label %bb.dk
    i8 13, label %bb.dk
    i8 20, label %bb.dk
    i8 59, label %bb.dk
    i8 17, label %bb.dm
    i8 41, label %bb.dn
    i8 46, label %bb.ee
    i8 45, label %bb.eo
  ]

bb.df:                                            ; preds = %.critedge
  %i.ln = zext i32 %i.ll to i64
  %or.cond578.not = icmp ugt i64 %4, %i.ln
  br i1 %or.cond578.not, label %bb.eq, label %.critedge577

bb.dg:                                            ; preds = %.critedge, %.critedge, %.critedge
  %i.lo = zext i32 %i.ll to i64                   ; 2 uses
  %i.lp = icmp ult i64 %4, %i.lo
  %i.lq = sub nuw i64 %4, %i.lo
  %i.lr = icmp ult i64 %i.lq, 2
  %or.cond580 = select i1 %i.lp, i1 true, i1 %i.lr
  br i1 %or.cond580, label %.critedge577, label %bb.eq

bb.dh:                                            ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
  %i.ls = zext i32 %i.ll to i64                   ; 2 uses
  %i.lt = icmp ult i64 %4, %i.ls
  %i.lu = sub nuw i64 %4, %i.ls
  %i.lv = icmp ult i64 %i.lu, 4
  %or.cond582 = select i1 %i.lt, i1 true, i1 %i.lv
  br i1 %or.cond582, label %.critedge577, label %bb.eq

bb.di:                                            ; preds = %.critedge, %.critedge, %.critedge
  %i.lw = zext i32 %i.ll to i64                   ; 2 uses
  %i.lx = icmp ult i64 %4, %i.lw
  %i.ly = sub nuw i64 %4, %i.lw
  %i.lz = icmp ult i64 %i.ly, 8
  %or.cond584 = select i1 %i.lx, i1 true, i1 %i.lz
  br i1 %or.cond584, label %.critedge577, label %bb.eq

bb.dj:                                            ; preds = %.critedge
  %i.ma = zext i32 %i.ll to i64                   ; 2 uses
  %i.mb = icmp ult i64 %4, %i.ma
  %i.mc = sub nuw i64 %4, %i.ma
  %i.md = icmp ult i64 %i.mc, 16
  %or.cond586 = select i1 %i.mb, i1 true, i1 %i.md
  br i1 %or.cond586, label %.critedge577, label %bb.eq

bb.dk:                                            ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %i.me = zext i32 %i.ll to i64                   ; 2 uses
  %i.mf = icmp ult i64 %4, %i.me
  br i1 %i.mf, label %.critedge577, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !51
  %i.mi = zext i8 %i.mh to i64
  %i.mj = sub nuw i64 %4, %i.me
  %i.mk = icmp ult i64 %i.mj, %i.mi
  br i1 %i.mk, label %.critedge577, label %bb.eq

bb.dm:                                            ; preds = %.critedge
  %i.ml = zext i32 %i.ll to i64
  %i.mm = icmp ult i64 %4, %i.ml
end_hunk_0
begin_hunk_1_@mget:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ti, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec710 = and i64 %spec.select.i, -4          ; 4 uses
  %i.tp = and i64 %spec.select.i, 3
  %i.tq = getelementptr i8, ptr %i.th, i64 %n.vec710
  %i.tr = getelementptr i8, ptr %i.e, i64 %n.vec710 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index711 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next715, %vec.epilog.vector.body ] ; 3 uses
  %next.gep712 = getelementptr i8, ptr %i.th, i64 %index711
  %next.gep713 = getelementptr i8, ptr %i.e, i64 %index711
  %wide.load714 = load <4 x i8>, ptr %next.gep712, align 1, !tbaa !35
  store <4 x i8> %wide.load714, ptr %next.gep713, align 1, !tbaa !35
  %index.next715 = add nuw i64 %index711, 4       ; 2 uses
  %i.ts = icmp eq i64 %index.next715, %n.vec710
  br i1 %i.ts, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n716 = icmp eq i64 %spec.select.i, %n.vec710
  br i1 %cmp.n716, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1216.i.ph = phi i64 [ %spec.select.i, %iter.check ], [ %i.tj, %vec.epilog.iter.check ], [ %i.tp, %vec.epilog.middle.block ] ; 4 uses
  %.0126215.i.ph = phi ptr [ %i.th, %iter.check ], [ %i.tk, %vec.epilog.iter.check ], [ %i.tq, %vec.epilog.middle.block ] ; 2 uses
  %.0127214.i.ph = phi ptr [ %i.e, %iter.check ], [ %i.tl, %vec.epilog.iter.check ], [ %i.tr, %vec.epilog.middle.block ] ; 2 uses
  %i.tt = add i64 %.1216.i.ph, -1
  %xtraiter = and i64 %.1216.i.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.1216.i.prol = phi i64 [ %i.tu, %.lr.ph.i.prol ], [ %.1216.i.ph, %.lr.ph.i.preheader ]
  %.0126215.i.prol = phi ptr [ %i.tv, %.lr.ph.i.prol ], [ %.0126215.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0127214.i.prol = phi ptr [ %i.tx, %.lr.ph.i.prol ], [ %.0127214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.tu = add i64 %.1216.i.prol, -1               ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.0126215.i.prol, i64 1 ; 2 uses
  %i.tw = load i8, ptr %.0126215.i.prol, align 1, !tbaa !35
  %i.tx = getelementptr inbounds nuw i8, ptr %.0127214.i.prol, i64 1 ; 3 uses
  store i8 %i.tw, ptr %.0127214.i.prol, align 1, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !78

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.tx, %.lr.ph.i.prol ]
  %.1216.i.unr = phi i64 [ %.1216.i.ph, %.lr.ph.i.preheader ], [ %i.tu, %.lr.ph.i.prol ]
  %.0126215.i.unr = phi ptr [ %.0126215.i.ph, %.lr.ph.i.preheader ], [ %i.tv, %.lr.ph.i.prol ]
  %.0127214.i.unr = phi ptr [ %.0127214.i.ph, %.lr.ph.i.preheader ], [ %i.tx, %.lr.ph.i.prol ]
  %i.ty = icmp ult i64 %i.tt, 7
  br i1 %i.ty, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.1216.i = phi i64 [ %i.uu, %.lr.ph.i ], [ %.1216.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0126215.i = phi ptr [ %i.uv, %.lr.ph.i ], [ %.0126215.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0127214.i = phi ptr [ %i.ux, %.lr.ph.i ], [ %.0127214.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 1
  %i.ua = load i8, ptr %.0126215.i, align 1, !tbaa !35
  %i.ub = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 1
  store i8 %i.ua, ptr %.0127214.i, align 1, !tbaa !35
  %i.uc = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 2
  %i.ud = load i8, ptr %i.tz, align 1, !tbaa !35
  %i.ue = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 2
  store i8 %i.ud, ptr %i.ub, align 1, !tbaa !35
  %i.uf = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 3
  %i.ug = load i8, ptr %i.uc, align 1, !tbaa !35
  %i.uh = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 3
  store i8 %i.ug, ptr %i.ue, align 1, !tbaa !35
  %i.ui = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 4
  %i.uj = load i8, ptr %i.uf, align 1, !tbaa !35
  %i.uk = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 4
  store i8 %i.uj, ptr %i.uh, align 1, !tbaa !35
  %i.ul = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 5
  %i.um = load i8, ptr %i.ui, align 1, !tbaa !35
  %i.un = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 5
  store i8 %i.um, ptr %i.uk, align 1, !tbaa !35
  %i.uo = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 6
  %i.up = load i8, ptr %i.ul, align 1, !tbaa !35
  %i.uq = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 6
  store i8 %i.up, ptr %i.un, align 1, !tbaa !35
  %i.ur = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 7
  %i.us = load i8, ptr %i.uo, align 1, !tbaa !35
  %i.ut = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 7
  store i8 %i.us, ptr %i.uq, align 1, !tbaa !35
  %i.uu = add i64 %.1216.i, -8                    ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.0126215.i, i64 8
  %i.uw = load i8, ptr %i.ur, align 1, !tbaa !35
  %i.ux = getelementptr inbounds nuw i8, ptr %.0127214.i, i64 8 ; 2 uses
  store i8 %i.uw, ptr %i.ut, align 1, !tbaa !35
  %.not133.i.7 = icmp eq i64 %i.uu, 0
  br i1 %.not133.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.gk
  %.0127.lcssa.i = phi ptr [ %i.e, %bb.gk ], [ %i.tr, %vec.epilog.middle.block ], [ %i.tl, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ux, %.lr.ph.i ]
  store i8 0, ptr %.0127.lcssa.i, align 1, !tbaa !35
  br label %.critedge577

cvt_flip.exit.thread190.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.uy = load i8, ptr %i.e, align 8, !tbaa !35
  %i.uz = zext i8 %i.uy to i16
  %i.va = shl nuw i16 %i.uz, 8
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !35
  %i.vd = zext i8 %i.vc to i16
  %i.ve = or disjoint i16 %i.va, %i.vd
  store i16 %i.ve, ptr %i.e, align 8, !tbaa !35
  %i.vf = tail call fastcc i32 @cvt_16(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.vg = icmp eq i32 %i.vf, -1
  br i1 %i.vg, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread183.i:                        ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.er, %bb.er, %bb.er
  %i.vh = load i32, ptr %i.e, align 8
  %i.vi = tail call i32 @llvm.bswap.i32(i32 %i.vh) ; 10 uses
  store i32 %i.vi, ptr %i.e, align 8, !tbaa !35
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !35 ; 2 uses
  %.not.i143.i = icmp eq i64 %i.vk, 0
  br i1 %.not.i143.i, label %bb.gw, label %bb.gl

bb.gl:                                            ; preds = %cvt_flip.exit.thread183.i
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !52
  %i.vn = and i8 %i.vm, 7
  %i.vo = trunc i64 %i.vk to i32                  ; 10 uses
  switch i8 %i.vn, label %default.unreachable [
    i8 0, label %bb.gm
    i8 1, label %bb.gn
    i8 2, label %bb.go
    i8 3, label %bb.gp
    i8 4, label %bb.gq
    i8 5, label %bb.gr
    i8 6, label %bb.gs
    i8 7, label %bb.gu
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.vp = and i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

bb.gn:                                            ; preds = %bb.gl
  %i.vq = or i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

bb.go:                                            ; preds = %bb.gl
  %i.vr = xor i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

bb.gp:                                            ; preds = %bb.gl
  %i.vs = add i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

bb.gq:                                            ; preds = %bb.gl
  %i.vt = sub i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

bb.gr:                                            ; preds = %bb.gl
  %i.vu = mul i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

bb.gs:                                            ; preds = %bb.gl
  %i.vv = icmp eq i32 %i.vo, 0
  br i1 %i.vv, label %cvt_16.exit.thread.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.vw = udiv i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

bb.gu:                                            ; preds = %bb.gl
  %i.vx = icmp eq i32 %i.vo, 0
  br i1 %i.vx, label %cvt_16.exit.thread.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.vy = urem i32 %i.vi, %i.vo
  br label %.sink.split.i144.i

.sink.split.i144.i:                               ; preds = %bb.gv, %bb.gt, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm
  %.sink.i145.i = phi i32 [ %i.vp, %bb.gm ], [ %i.vq, %bb.gn ], [ %i.vr, %bb.go ], [ %i.vs, %bb.gp ], [ %i.vt, %bb.gq ], [ %i.vu, %bb.gr ], [ %i.vw, %bb.gt ], [ %i.vy, %bb.gv ] ; 2 uses
  store i32 %.sink.i145.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.gw

bb.gw:                                            ; preds = %.sink.split.i144.i, %cvt_flip.exit.thread183.i
  %i.vz = phi i32 [ %.sink.i145.i, %.sink.split.i144.i ], [ %i.vi, %cvt_flip.exit.thread183.i ]
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !52
  %i.wc = and i8 %i.wb, 64
  %.not26.i146.i = icmp eq i8 %i.wc, 0
  br i1 %.not26.i146.i, label %.critedge577, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.wd = xor i32 %i.vz, -1
  store i32 %i.wd, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

cvt_flip.exit.thread.i:                           ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.er, %bb.er, %bb.er, %bb.er
  %119 = load i8, ptr %i.e, align 8, !tbaa !35
  %120 = zext i8 %119 to i64
  %121 = shl nuw i64 %120, 56
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 137
  %123 = load i8, ptr %122, align 1, !tbaa !35
  %124 = zext i8 %123 to i64
  %125 = shl nuw nsw i64 %124, 48
  %126 = or disjoint i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 138
  %128 = load i8, ptr %127, align 2, !tbaa !35
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, 40
  %131 = or disjoint i64 %126, %130
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 139
  %133 = load i8, ptr %132, align 1, !tbaa !35
  %134 = zext i8 %133 to i64
  %135 = shl nuw nsw i64 %134, 32
  %136 = or disjoint i64 %131, %135
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %138 = load i8, ptr %137, align 4, !tbaa !35
  %139 = zext i8 %138 to i64
  %140 = shl nuw nsw i64 %139, 24
  %141 = or disjoint i64 %136, %140
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 141
  %143 = load i8, ptr %142, align 1, !tbaa !35
  %144 = zext i8 %143 to i64
  %145 = shl nuw nsw i64 %144, 16
  %146 = or disjoint i64 %141, %145
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 142
  %148 = load i8, ptr %147, align 2, !tbaa !35
  %149 = zext i8 %148 to i64
  %150 = shl nuw nsw i64 %149, 8
  %151 = or i64 %146, %150
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 143
  %153 = load i8, ptr %152, align 1, !tbaa !35
  %154 = zext i8 %153 to i64
  %155 = or i64 %151, %154                        ; 10 uses
  store i64 %155, ptr %i.e, align 8, !tbaa !35
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !35 ; 9 uses
  %.not.i150.i = icmp eq i64 %i.wf, 0
  br i1 %.not.i150.i, label %bb.hh, label %bb.gy

bb.gy:                                            ; preds = %cvt_flip.exit.thread.i
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !52
  %i.wi = and i8 %i.wh, 7
  switch i8 %i.wi, label %default.unreachable [
    i8 0, label %bb.gz
    i8 1, label %bb.ha
    i8 2, label %bb.hb
    i8 3, label %bb.hc
    i8 4, label %bb.hd
    i8 5, label %bb.he
    i8 6, label %bb.hf
    i8 7, label %bb.hg
  ]

bb.gz:                                            ; preds = %bb.gy
  %i.wj = and i64 %155, %i.wf
  br label %.sink.split.i151.i

bb.ha:                                            ; preds = %bb.gy
  %i.wk = or i64 %155, %i.wf
  br label %.sink.split.i151.i

bb.hb:                                            ; preds = %bb.gy
  %i.wl = xor i64 %155, %i.wf
  br label %.sink.split.i151.i

bb.hc:                                            ; preds = %bb.gy
  %i.wm = add i64 %155, %i.wf
  br label %.sink.split.i151.i

bb.hd:                                            ; preds = %bb.gy
  %i.wn = sub i64 %155, %i.wf
  br label %.sink.split.i151.i

bb.he:                                            ; preds = %bb.gy
  %i.wo = mul i64 %155, %i.wf
  br label %.sink.split.i151.i

bb.hf:                                            ; preds = %bb.gy
  %i.wp = udiv i64 %155, %i.wf
  br label %.sink.split.i151.i

bb.hg:                                            ; preds = %bb.gy
  %i.wq = urem i64 %155, %i.wf
  br label %.sink.split.i151.i

.sink.split.i151.i:                               ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz
  %.sink.i152.i = phi i64 [ %i.wj, %bb.gz ], [ %i.wk, %bb.ha ], [ %i.wl, %bb.hb ], [ %i.wm, %bb.hc ], [ %i.wn, %bb.hd ], [ %i.wo, %bb.he ], [ %i.wp, %bb.hf ], [ %i.wq, %bb.hg ] ; 2 uses
  store i64 %.sink.i152.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.hh

bb.hh:                                            ; preds = %.sink.split.i151.i, %cvt_flip.exit.thread.i
  %i.wr = phi i64 [ %.sink.i152.i, %.sink.split.i151.i ], [ %155, %cvt_flip.exit.thread.i ]
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !52
  %i.wu = and i8 %i.wt, 64
  %.not24.i153.i = icmp eq i8 %i.wu, 0
  br i1 %.not24.i153.i, label %.critedge577, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.wv = xor i64 %i.wr, -1
  store i64 %i.wv, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

cvt_flip.exit.thread193.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.ww = tail call fastcc i32 @cvt_16(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.wx = icmp eq i32 %i.ww, -1
  br i1 %i.wx, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread187.i:                        ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.er, %bb.er, %bb.er
  %i.wy = load i32, ptr %i.e, align 8             ; 9 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !35 ; 2 uses
  %.not.i156.i = icmp eq i64 %i.xa, 0
  br i1 %.not.i156.i, label %bb.hu, label %bb.hj

bb.hj:                                            ; preds = %cvt_flip.exit.thread187.i
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !52
  %i.xd = and i8 %i.xc, 7
  %i.xe = trunc i64 %i.xa to i32                  ; 10 uses
  switch i8 %i.xd, label %default.unreachable [
    i8 0, label %bb.hk
    i8 1, label %bb.hl
    i8 2, label %bb.hm
    i8 3, label %bb.hn
    i8 4, label %bb.ho
    i8 5, label %bb.hp
    i8 6, label %bb.hq
    i8 7, label %bb.hs
  ]

bb.hk:                                            ; preds = %bb.hj
  %i.xf = and i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

bb.hl:                                            ; preds = %bb.hj
  %i.xg = or i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

bb.hm:                                            ; preds = %bb.hj
  %i.xh = xor i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

bb.hn:                                            ; preds = %bb.hj
  %i.xi = add i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

bb.ho:                                            ; preds = %bb.hj
  %i.xj = sub i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

bb.hp:                                            ; preds = %bb.hj
  %i.xk = mul i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

bb.hq:                                            ; preds = %bb.hj
  %i.xl = icmp eq i32 %i.xe, 0
  br i1 %i.xl, label %cvt_16.exit.thread.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.xm = udiv i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

bb.hs:                                            ; preds = %bb.hj
  %i.xn = icmp eq i32 %i.xe, 0
  br i1 %i.xn, label %cvt_16.exit.thread.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.xo = urem i32 %i.wy, %i.xe
  br label %.sink.split.i157.i

.sink.split.i157.i:                               ; preds = %bb.ht, %bb.hr, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk
  %.sink.i158.i = phi i32 [ %i.xf, %bb.hk ], [ %i.xg, %bb.hl ], [ %i.xh, %bb.hm ], [ %i.xi, %bb.hn ], [ %i.xj, %bb.ho ], [ %i.xk, %bb.hp ], [ %i.xm, %bb.hr ], [ %i.xo, %bb.ht ] ; 2 uses
  store i32 %.sink.i158.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.hu

bb.hu:                                            ; preds = %.sink.split.i157.i, %cvt_flip.exit.thread187.i
  %i.xp = phi i32 [ %.sink.i158.i, %.sink.split.i157.i ], [ %i.wy, %cvt_flip.exit.thread187.i ]
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !52
  %i.xs = and i8 %i.xr, 64
  %.not26.i159.i = icmp eq i8 %i.xs, 0
  br i1 %.not26.i159.i, label %.critedge577, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.xt = xor i32 %i.xp, -1
  store i32 %i.xt, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

cvt_flip.exit.thread179.i:                        ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.er, %bb.er, %bb.er, %bb.er
  %i.xu = load i64, ptr %i.e, align 8             ; 9 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !35 ; 9 uses
  %.not.i163.i = icmp eq i64 %i.xw, 0
  br i1 %.not.i163.i, label %bb.if, label %bb.hw

bb.hw:                                            ; preds = %cvt_flip.exit.thread179.i
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !52
  %i.xz = and i8 %i.xy, 7
  switch i8 %i.xz, label %default.unreachable [
    i8 0, label %bb.hx
    i8 1, label %bb.hy
    i8 2, label %bb.hz
    i8 3, label %bb.ia
    i8 4, label %bb.ib
    i8 5, label %bb.ic
    i8 6, label %bb.id
    i8 7, label %bb.ie
  ]

bb.hx:                                            ; preds = %bb.hw
  %i.ya = and i64 %i.xw, %i.xu
  br label %.sink.split.i164.i

bb.hy:                                            ; preds = %bb.hw
  %i.yb = or i64 %i.xw, %i.xu
  br label %.sink.split.i164.i

bb.hz:                                            ; preds = %bb.hw
  %i.yc = xor i64 %i.xw, %i.xu
  br label %.sink.split.i164.i

bb.ia:                                            ; preds = %bb.hw
  %i.yd = add i64 %i.xw, %i.xu
  br label %.sink.split.i164.i

bb.ib:                                            ; preds = %bb.hw
  %i.ye = sub i64 %i.xu, %i.xw
  br label %.sink.split.i164.i

bb.ic:                                            ; preds = %bb.hw
  %i.yf = mul i64 %i.xw, %i.xu
  br label %.sink.split.i164.i

bb.id:                                            ; preds = %bb.hw
  %i.yg = udiv i64 %i.xu, %i.xw
  br label %.sink.split.i164.i

bb.ie:                                            ; preds = %bb.hw
  %i.yh = urem i64 %i.xu, %i.xw
  br label %.sink.split.i164.i

.sink.split.i164.i:                               ; preds = %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx
  %.sink.i165.i = phi i64 [ %i.ya, %bb.hx ], [ %i.yb, %bb.hy ], [ %i.yc, %bb.hz ], [ %i.yd, %bb.ia ], [ %i.ye, %bb.ib ], [ %i.yf, %bb.ic ], [ %i.yg, %bb.id ], [ %i.yh, %bb.ie ] ; 2 uses
  store i64 %.sink.i165.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.if

bb.if:                                            ; preds = %.sink.split.i164.i, %cvt_flip.exit.thread179.i
  %i.yi = phi i64 [ %.sink.i165.i, %.sink.split.i164.i ], [ %i.xu, %cvt_flip.exit.thread179.i ]
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !52
  %i.yl = and i8 %i.yk, 64
  %.not24.i166.i = icmp eq i8 %i.yl, 0
  br i1 %.not24.i166.i, label %.critedge577, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ym = xor i64 %i.yi, -1
  store i64 %i.ym, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

bb.ih:                                            ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i
  %i.yn = load i16, ptr %i.e, align 8
  %i.yo = zext i16 %i.yn to i32
  %i.yp = shl nuw i32 %i.yo, 16
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !35
  %i.ys = zext i8 %i.yr to i32
  %i.yt = shl nuw nsw i32 %i.ys, 8
  %i.yu = or disjoint i32 %i.yt, %i.yp
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.yw = load i8, ptr %i.yv, align 2, !tbaa !35
  %i.yx = zext i8 %i.yw to i32
  %i.yy = or disjoint i32 %i.yu, %i.yx            ; 10 uses
  store i32 %i.yy, ptr %i.e, align 8, !tbaa !35
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !35 ; 2 uses
  %.not.i169.i = icmp eq i64 %i.za, 0
  br i1 %.not.i169.i, label %bb.it, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !52
  %i.zd = and i8 %i.zc, 7
  %i.ze = trunc i64 %i.za to i32                  ; 10 uses
  switch i8 %i.zd, label %default.unreachable [
    i8 0, label %bb.ij
    i8 1, label %bb.ik
    i8 2, label %bb.il
    i8 3, label %bb.im
    i8 4, label %bb.in
    i8 5, label %bb.io
    i8 6, label %bb.ip
    i8 7, label %bb.ir
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.zf = and i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

bb.ik:                                            ; preds = %bb.ii
  %i.zg = or i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

bb.il:                                            ; preds = %bb.ii
  %i.zh = xor i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

bb.im:                                            ; preds = %bb.ii
  %i.zi = add i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

bb.in:                                            ; preds = %bb.ii
  %i.zj = sub i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

bb.io:                                            ; preds = %bb.ii
  %i.zk = mul i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

bb.ip:                                            ; preds = %bb.ii
  %i.zl = icmp eq i32 %i.ze, 0
  br i1 %i.zl, label %cvt_16.exit.thread.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.zm = udiv i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

bb.ir:                                            ; preds = %bb.ii
  %i.zn = icmp eq i32 %i.ze, 0
  br i1 %i.zn, label %cvt_16.exit.thread.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.zo = urem i32 %i.yy, %i.ze
  br label %.sink.split.i170.i

.sink.split.i170.i:                               ; preds = %bb.is, %bb.iq, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij
  %.sink.i171.i = phi i32 [ %i.zf, %bb.ij ], [ %i.zg, %bb.ik ], [ %i.zh, %bb.il ], [ %i.zi, %bb.im ], [ %i.zj, %bb.in ], [ %i.zk, %bb.io ], [ %i.zm, %bb.iq ], [ %i.zo, %bb.is ] ; 2 uses
  store i32 %.sink.i171.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.it

bb.it:                                            ; preds = %.sink.split.i170.i, %bb.ih
  %i.zp = phi i32 [ %.sink.i171.i, %.sink.split.i170.i ], [ %i.yy, %bb.ih ]
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !52
  %i.zs = and i8 %i.zr, 64
  %.not26.i172.i = icmp eq i8 %i.zs, 0
  br i1 %.not26.i172.i, label %.critedge577, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.zt = xor i32 %i.zp, -1
  store i32 %i.zt, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

bb.iv:                                            ; preds = %cvt_flip.exit.i
  %i.zu = tail call fastcc i32 @cvt_float(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.zv = icmp eq i32 %i.zu, -1
  br i1 %i.zv, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread196.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.zw = load i32, ptr %i.e, align 8
  %i.zx = tail call i32 @llvm.bswap.i32(i32 %i.zw)
  store i32 %i.zx, ptr %i.e, align 8, !tbaa !35
  %i.zy = tail call fastcc i32 @cvt_float(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.zz = icmp eq i32 %i.zy, -1
  br i1 %i.zz, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread199.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.aaa = tail call fastcc i32 @cvt_float(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.aab = icmp eq i32 %i.aaa, -1
  br i1 %i.aab, label %cvt_16.exit.thread.i, label %.critedge577

bb.iw:                                            ; preds = %cvt_flip.exit.i
  %i.aac = tail call fastcc i32 @cvt_double(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.aad = icmp eq i32 %i.aac, -1
  br i1 %i.aad, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread202.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %156 = load i8, ptr %i.e, align 8, !tbaa !35
  %157 = zext i8 %156 to i64
  %158 = shl nuw i64 %157, 56
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 137
  %160 = load i8, ptr %159, align 1, !tbaa !35
  %161 = zext i8 %160 to i64
  %162 = shl nuw nsw i64 %161, 48
  %163 = or disjoint i64 %162, %158
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 138
  %165 = load i8, ptr %164, align 2, !tbaa !35
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 40
  %168 = or disjoint i64 %163, %167
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 139
  %170 = load i8, ptr %169, align 1, !tbaa !35
  %171 = zext i8 %170 to i64
  %172 = shl nuw nsw i64 %171, 32
  %173 = or disjoint i64 %168, %172
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %175 = load i8, ptr %174, align 4, !tbaa !35
  %176 = zext i8 %175 to i64
  %177 = shl nuw nsw i64 %176, 24
  %178 = or disjoint i64 %173, %177
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 141
  %180 = load i8, ptr %179, align 1, !tbaa !35
  %181 = zext i8 %180 to i64
  %182 = shl nuw nsw i64 %181, 16
  %183 = or disjoint i64 %178, %182
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 142
  %185 = load i8, ptr %184, align 2, !tbaa !35
  %186 = zext i8 %185 to i64
  %187 = shl nuw nsw i64 %186, 8
  %188 = or i64 %183, %187
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 143
  %190 = load i8, ptr %189, align 1, !tbaa !35
  %191 = zext i8 %190 to i64
  %192 = or i64 %188, %191
  store i64 %192, ptr %i.e, align 8, !tbaa !35
  %i.aae = tail call fastcc i32 @cvt_double(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.aaf = icmp eq i32 %i.aae, -1
  br i1 %i.aaf, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread205.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.aag = tail call fastcc i32 @cvt_double(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.aah = icmp eq i32 %i.aag, -1
  br i1 %i.aah, label %cvt_16.exit.thread.i, label %.critedge577

bb.ix:                                            ; preds = %cvt_flip.exit.i
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %i.pr) #20
  br label %.critedge577

cvt_16.exit.thread.i:                             ; preds = %cvt_flip.exit.thread205.i, %cvt_flip.exit.thread202.i, %bb.iw, %cvt_flip.exit.thread199.i, %cvt_flip.exit.thread196.i, %bb.iv, %bb.ir, %bb.ip, %bb.hs, %bb.hq, %cvt_flip.exit.thread193.i, %bb.gu, %bb.gs, %cvt_flip.exit.thread190.i, %bb.fr, %bb.fp, %bb.fd, %bb.fb, %bb.es
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #20
  br label %.critedge577

.critedge577:                                     ; preds = %cvt_flip.exit592.thread634.thread, %bb.iu, %bb.it, %bb.if, %bb.hu, %bb.hh, %bb.gw, %bb.gf, %bb.ft, %bb.ff, %._crit_edge.i, %cvt_flip.exit.thread202.i, %bb.iw, %cvt_flip.exit.thread199.i, %cvt_flip.exit.thread196.i, %bb.iv, %bb.ig, %bb.hi, %bb.hv, %cvt_flip.exit.thread193.i, %bb.gg, %bb.gx, %cvt_flip.exit.thread190.i, %bb.fg, %bb.gh, %bb.fu, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.es, %cvt_flip.exit.thread205.i, %cvt_16.exit.thread.i, %bb.ix, %bb.gj, %bb.gi, %.thread, %bb.cs, %bb.cq, %bb.bs, %cvt_flip.exit592.thread, %bb.cw, %bb.cz, %bb.bt, %cvt_flip.exit592.thread624, %bb.bx, %cvt_flip.exit592.thread627, %bb.by, %bb.bz, %bb.ca, %cvt_flip.exit592.thread630, %bb.cd, %cvt_flip.exit592.thread634, %bb.cg, %bb.ch, %bb.cl, %bb.cm, %bb.cn, %cvt_flip.exit592.thread638, %bb.co, %cvt_flip.exit592.thread641, %bb.cp, %bb.cr, %bb.ct, %bb.cx, %bb.da, %bb.ba, %bb.ay, %cvt_flip.exit.thread615, %bb.ar, %cvt_flip.exit.thread612, %cvt_flip.exit.thread609, %bb.aj, %cvt_flip.exit.thread606, %cvt_flip.exit.thread603, %bb.ab, %bb.x, %cvt_flip.exit.thread, %cvt_flip.exit.thread618, %bb.ax, %bb.ep, %bb.eo, %bb.em, %bb.en, %bb.ee, %bb.ec, %bb.ed, %bb.ea, %bb.eb, %bb.dx, %bb.dy, %bb.dt, %bb.do, %bb.dn, %bb.dm, %bb.dk, %bb.dl, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.ei, %bb.eg, %bb.d, %bb.b
  %.3 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %.1439, %bb.ed ], [ 1, %bb.em ], [ 1, %.thread ], [ 1, %bb.eo ], [ 0, %bb.df ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 0, %bb.di ], [ 0, %bb.dj ], [ 0, %bb.dk ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.cs ], [ -1, %bb.do ], [ -1, %bb.dt ], [ -1, %bb.dx ], [ -1, %bb.ea ], [ %.1439, %bb.ec ], [ -1, %bb.eg ], [ -1, %bb.ei ], [ 0, %bb.ee ], [ %i.pl, %bb.en ], [ %., %bb.ep ], [ 0, %bb.dl ], [ -1, %bb.dy ], [ -1, %bb.eb ], [ 0, %bb.ax ], [ 0, %cvt_flip.exit.thread618 ], [ 0, %cvt_flip.exit.thread ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %cvt_flip.exit.thread603 ], [ 0, %cvt_flip.exit.thread606 ], [ 0, %bb.aj ], [ 0, %cvt_flip.exit.thread609 ], [ 0, %cvt_flip.exit.thread612 ], [ 0, %bb.ar ], [ 0, %cvt_flip.exit.thread615 ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 0, %bb.da ], [ 0, %bb.cx ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.cp ], [ 0, %cvt_flip.exit592.thread641 ], [ 0, %bb.co ], [ 0, %cvt_flip.exit592.thread638 ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %cvt_flip.exit592.thread634 ], [ 0, %bb.cd ], [ 0, %cvt_flip.exit592.thread630 ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.by ], [ 0, %cvt_flip.exit592.thread627 ], [ 0, %bb.bx ], [ 0, %cvt_flip.exit592.thread624 ], [ 0, %bb.bt ], [ 0, %bb.cz ], [ 0, %bb.cw ], [ 0, %cvt_flip.exit592.thread ], [ 0, %bb.bs ], [ 0, %bb.cq ], [ 0, %bb.gi ], [ 0, %cvt_16.exit.thread.i ], [ 0, %bb.ix ], [ 0, %bb.gj ], [ 1, %cvt_flip.exit.thread205.i ], [ 1, %bb.es ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %bb.fu ], [ 1, %bb.gh ], [ 1, %bb.fg ], [ 1, %cvt_flip.exit.thread190.i ], [ 1, %bb.gx ], [ 1, %bb.gg ], [ 1, %cvt_flip.exit.thread193.i ], [ 1, %bb.hv ], [ 1, %bb.hi ], [ 1, %bb.ig ], [ 1, %bb.iv ], [ 1, %cvt_flip.exit.thread196.i ], [ 1, %cvt_flip.exit.thread199.i ], [ 1, %bb.iw ], [ 1, %cvt_flip.exit.thread202.i ], [ 1, %._crit_edge.i ], [ 1, %bb.ff ], [ 1, %bb.ft ], [ 1, %bb.gf ], [ 1, %bb.gw ], [ 1, %bb.hh ], [ 1, %bb.hu ], [ 1, %bb.if ], [ 1, %bb.it ], [ 1, %bb.iu ], [ 0, %cvt_flip.exit592.thread634.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @magiccheck(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 6 uses
  %3 = alloca %struct._zval_struct, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.e = load i8, ptr %i.d, align 2, !tbaa !34    ; 2 uses
  %i.f = trunc i64 %i.b to i8                     ; 2 uses
  %i.g = bitcast i64 %i.b to double               ; 4 uses
  %i.h = trunc i64 %i.b to i32
  %i.i = bitcast i32 %i.h to float                ; 4 uses
  switch i8 %i.e, label %bb.bw [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 7, label %bb.c
    i8 10, label %bb.c
    i8 53, label %bb.c
    i8 54, label %bb.c
    i8 55, label %bb.c
    i8 56, label %bb.c
    i8 57, label %bb.c
    i8 58, label %bb.c
    i8 4, label %bb.d
    i8 8, label %bb.d
    i8 11, label %bb.d
    i8 23, label %bb.d
    i8 6, label %bb.d
    i8 9, label %bb.d
    i8 12, label %bb.d
    i8 21, label %bb.d
    i8 14, label %bb.d
    i8 15, label %bb.d
    i8 16, label %bb.d
    i8 22, label %bb.d
    i8 24, label %bb.e
    i8 25, label %bb.e
    i8 26, label %bb.e
    i8 27, label %bb.e
    i8 29, label %bb.e
    i8 28, label %bb.e
    i8 30, label %bb.e
    i8 32, label %bb.e
    i8 31, label %bb.e
    i8 42, label %bb.e
    i8 44, label %bb.e
    i8 43, label %bb.e
    i8 50, label %bb.e
    i8 33, label %bb.f
    i8 34, label %bb.f
    i8 35, label %bb.f
    i8 36, label %bb.m
    i8 37, label %bb.m
    i8 38, label %bb.m
    i8 3, label %file_strncmp16.exit
    i8 47, label %file_strncmp16.exit
    i8 5, label %bb.t
    i8 13, label %bb.t
    i8 59, label %bb.t
    i8 18, label %bb.u
    i8 19, label %bb.u
    i8 20, label %bb.w
    i8 17, label %bb.ao
    i8 46, label %bb.bs
    i8 45, label %.critedge269
    i8 41, label %.critedge269
    i8 48, label %bb.bt
    i8 49, label %loadbb
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.c, align 8, !tbaa !35
  %i.k = zext i8 %i.j to i64
  br label %file_strncmp16.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = load i16, ptr %i.c, align 8, !tbaa !35
  %i.m = zext i16 %i.l to i64
  br label %file_strncmp16.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.n = load i32, ptr %i.c, align 8, !tbaa !35
  %i.o = zext i32 %i.n to i64
  br label %file_strncmp16.exit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.p = load i64, ptr %i.c, align 8, !tbaa !35
  br label %file_strncmp16.exit

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.q = load float, ptr %i.c, align 8, !tbaa !35 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !42    ; 2 uses
  switch i8 %i.s, label %bb.k [
    i8 120, label %bb.l
    i8 33, label %bb.g
    i8 61, label %bb.h
    i8 62, label %bb.i
    i8 60, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = fcmp une float %i.q, %i.i
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.u = fcmp oeq float %i.q, %i.i
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.v = fcmp ogt float %i.q, %i.i
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.w = fcmp olt float %i.q, %i.i
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.x = zext i8 %i.s to i32
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i32 noundef %i.x) #20
  br label %.critedge269

bb.l:                                             ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %bb.g
  %.0209.shrunk = phi i1 [ %i.w, %bb.j ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ], [ true, %bb.f ]
  %.0209 = zext i1 %.0209.shrunk to i32
  br label %.critedge269

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.y = load double, ptr %i.c, align 8, !tbaa !35 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !42   ; 2 uses
  switch i8 %i.aa, label %bb.r [
    i8 120, label %bb.s
    i8 33, label %bb.n
    i8 61, label %bb.o
    i8 62, label %bb.p
    i8 60, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.ab = fcmp une double %i.y, %i.g
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ac = fcmp oeq double %i.y, %i.g
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ad = fcmp ogt double %i.y, %i.g
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.ae = fcmp olt double %i.y, %i.g
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.af = zext i8 %i.aa to i32
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i32 noundef %i.af) #20
  br label %.critedge269

bb.s:                                             ; preds = %bb.m, %bb.q, %bb.p, %bb.o, %bb.n
  %.1210.shrunk = phi i1 [ %i.ae, %bb.q ], [ %i.ab, %bb.n ], [ %i.ac, %bb.o ], [ %i.ad, %bb.p ], [ true, %bb.m ]
  %.1210 = zext i1 %.1210.shrunk to i32
  br label %.critedge269

bb.t:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !51
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !35
  %i.al = tail call fastcc i64 @file_strncmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef %i.ai, i64 noundef 128, i32 noundef %i.ak)
end_hunk_1
begin_hunk_2_@varexpand:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.054 = phi ptr [ %i.m, %bb.e ], [ %i.o, %bb.g ] ; 4 uses
  %i.n = load i8, ptr %.054, align 1, !tbaa !35
  switch i8 %i.n, label %bb.g [
    i8 58, label %bb.h
    i8 0, label %.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.054, i64 1
  br label %bb.f, !llvm.loop !109

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.054, i64 1 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.055 = phi ptr [ %i.p, %bb.h ], [ %i.r, %bb.j ] ; 4 uses
  %i.q = load i8, ptr %.055, align 1, !tbaa !35
  switch i8 %i.q, label %bb.j [
    i8 125, label %bb.k
    i8 0, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.055, i64 1
  br label %bb.i, !llvm.loop !110

bb.k:                                             ; preds = %bb.i
  %cond = icmp eq i8 %i.j, 120
  br i1 %cond, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.s = load i32, ptr %i.b, align 8, !tbaa !112
  %i.t = and i32 %i.s, 73
  %.not77 = icmp eq i32 %i.t, 0                   ; 2 uses
  %i.u = ptrtoint ptr %.054 to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ptrtoint ptr %.055 to i64
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = sub i64 %i.x, %i.y
  %.0 = select i1 %.not77, i64 %i.z, i64 %i.w     ; 4 uses
  %.not78 = icmp ult i64 %.0, %i.h
  br i1 %.not78, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %.057 = select i1 %.not77, ptr %i.p, ptr %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %.057, i64 %.0, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0 ; 2 uses
  %i.ab = sub nuw nsw i64 %i.h, %.0               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 3 uses
  %i.ad = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.39) #25 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %.060.lcssa = phi ptr [ %1, %bb.a ], [ %i.aa, %bb.m ] ; 2 uses
  %.059.lcssa = phi i64 [ %2, %bb.a ], [ %i.ab, %bb.m ]
  %.056.lcssa = phi ptr [ %3, %bb.a ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.056.lcssa) #25 ; 3 uses
  %.not67 = icmp ult i64 %i.ae, %.059.lcssa
  br i1 %.not67, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.060.lcssa, ptr nonnull align 1 %.056.lcssa, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.060.lcssa, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.c, %bb.d, %bb.b, %bb.f, %bb.i, %._crit_edge, %bb.n
  %.058 = phi i32 [ 0, %bb.n ], [ -1, %bb.i ], [ -1, %._crit_edge ], [ -1, %bb.f ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %bb.l ]
  ret i32 %.058
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare hidden i32 @file_separator(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @check_fmt(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 37) #25
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %zend_string_release_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @_emalloc_40() #20 ; 10 uses
  store i32 1, ptr %i.c, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 22, ptr %i.d, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 13, ptr %i.f, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.g, ptr noundef nonnull align 1 dereferenceable(13) @.str.47, i64 13, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  store i8 0, ptr %i.h, align 1, !tbaa !35
  %i.i = tail call ptr @pcre_get_compiled_regex_cache_ex(ptr noundef nonnull %i.c, i1 noundef zeroext false) #20 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @php_pcre_pce_re(ptr noundef nonnull %i.i) #20 ; 2 uses
  %i.l = tail call ptr @php_pcre_create_match_data(i32 noundef 0, ptr noundef %i.k) #20 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.n = tail call ptr @php_pcre_mctx() #20
  %i.o = tail call i32 @php_pcre2_match(ptr noundef %i.k, ptr noundef nonnull %0, i64 noundef %i.m, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %i.l, ptr noundef %i.n) #20
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  tail call void @php_pcre_free_match_data(ptr noundef nonnull %i.l) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ %i.q, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %i.r = load i32, ptr %i.d, align 4, !tbaa !35
  %i.s = and i32 %i.r, 64
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.v, ptr %i.c, align 8, !tbaa !58
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %zend_string_release_ex.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_efree(ptr noundef nonnull %i.c) #20
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ], [ %.1, %bb.f ], [ %.1, %bb.g ]
  ret i32 %.012
}

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare hidden ptr @file_printable(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare hidden ptr @file_strtrim(ptr noundef) local_unnamed_addr #2

declare hidden ptr @file_fmtdatetime(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @_estrndup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @file_oomem(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @file_print_guid(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @file_fmtdate(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare hidden ptr @file_fmttime(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare hidden ptr @file_fmtnum(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @pcre_get_compiled_regex_cache_ex(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @php_pcre_pce_re(ptr noundef) local_unnamed_addr #2

declare ptr @php_pcre_create_match_data(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @php_pcre2_match(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @php_pcre_mctx() local_unnamed_addr #2

declare void @php_pcre_free_match_data(ptr noundef) local_unnamed_addr #2

declare i32 @der_offs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !32}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"short", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 _ZTS5mlist", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTS5magic", !16, i64 0}
!20 = !{!"long", !9, i64 0}
!21 = !{!"mlist", !19, i64 0, !20, i64 8, !16, i64 16, !17, i64 24, !17, i64 32}
!22 = !{!21, !17, i64 24}
!23 = !{!21, !19, i64 0}
!24 = !{!21, !20, i64 8}
!25 = !{!"p1 _ZTS10level_info", !16, i64 0}
!26 = !{!"cont", !20, i64 0, !25, i64 8}
!27 = !{!"p1 omnipotent char", !16, i64 0}
!28 = !{!"out", !27, i64 0, !20, i64 8, !27, i64 16}
!29 = !{!"", !27, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!30 = !{!"magic_set", !9, i64 0, !26, i64 16, !28, i64 32, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !27, i64 80, !20, i64 88, !10, i64 96, !14, i64 100, !29, i64 104, !9, i64 136, !14, i64 264, !14, i64 266, !14, i64 268, !14, i64 270, !14, i64 272, !14, i64 274, !14, i64 276, !20, i64 280, !20, i64 288, !20, i64 296}
!31 = !{!30, !10, i64 68}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"magic", !14, i64 0, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !10, i64 12, !10, i64 16, !10, i64 20, !9, i64 24, !9, i64 32, !9, i64 160, !9, i64 224, !9, i64 304, !9, i64 312}
!34 = !{!33, !9, i64 6}
!35 = !{!9, !9, i64 0}
!36 = !{!33, !9, i64 2}
!37 = !{!"timespec", !20, i64 0, !20, i64 8}
!38 = !{!"stat", !20, i64 0, !20, i64 8, !20, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !37, i64 72, !37, i64 88, !37, i64 104, !9, i64 120}
!39 = !{!"buffer", !10, i64 0, !38, i64 8, !16, i64 152, !20, i64 160, !20, i64 168, !16, i64 176, !20, i64 184}
!40 = !{!39, !16, i64 152}
!41 = !{!39, !20, i64 160}
!42 = !{!33, !9, i64 4}
!43 = !{!30, !25, i64 24}
!44 = !{!"level_info", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!45 = !{!44, !10, i64 0}
!46 = !{!30, !10, i64 56}
!47 = !{!30, !10, i64 60}
!48 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!33, !9, i64 8}
!51 = !{!33, !9, i64 5}
!52 = !{!33, !9, i64 9}
!53 = !{!30, !27, i64 104}
!54 = !{!30, !20, i64 112}
!55 = !{!30, !20, i64 120}
!56 = !{!30, !20, i64 128}
!57 = !{!"_zend_refcounted_h", !10, i64 0, !9, i64 4}
!58 = !{!57, !10, i64 0}
!59 = !{!"_zend_string", !57, i64 0, !20, i64 8, !20, i64 16, !9, i64 24}
!60 = !{!59, !20, i64 8}
!61 = !{!59, !20, i64 16}
!62 = distinct !{!62, !32}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
!66 = !{!33, !14, i64 0}
!67 = !{!33, !10, i64 20}
!68 = !{!30, !20, i64 88}
!69 = !{!33, !9, i64 10}
!70 = !{!44, !10, i64 8}
!71 = !{!44, !10, i64 4}
!72 = !{!33, !10, i64 12}
!73 = !{!39, !20, i64 184}
!74 = !{!39, !16, i64 176}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32, !89, !90}
!77 = distinct !{!77, !32, !89, !90}
!78 = distinct !{!78, !92}
!79 = distinct !{!79, !32, !89}
!80 = !{!30, !14, i64 264}
!81 = !{!30, !14, i64 266}
!82 = !{!33, !10, i64 16}
!83 = !{!33, !9, i64 7}
!84 = !{!20, !20, i64 0}
!85 = !{!16, !16, i64 0}
!86 = !{i64 0, i64 4, !13, i64 8, i64 8, !84, i64 16, i64 8, !84, i64 24, i64 8, !84, i64 32, i64 4, !13, i64 36, i64 4, !13, i64 40, i64 4, !13, i64 44, i64 4, !13, i64 48, i64 8, !84, i64 56, i64 8, !84, i64 64, i64 8, !84, i64 72, i64 8, !84, i64 80, i64 8, !84, i64 88, i64 8, !84, i64 96, i64 8, !84, i64 104, i64 8, !84, i64 112, i64 8, !84, i64 120, i64 8, !84, i64 128, i64 24, !35, i64 152, i64 8, !85, i64 160, i64 8, !84, i64 168, i64 8, !84, i64 176, i64 8, !85, i64 184, i64 8, !84}
!87 = !{!30, !10, i64 72}
!88 = !{!25, !25, i64 0}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!"branch_weights", i32 4, i32 28}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32}
!98 = !{!30, !14, i64 274}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = distinct !{!101, !32}
!102 = !{!"p1 short", !16, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"p1 int", !16, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"branch_weights", i32 2000, i32 2004}
!107 = !{!"branch_weights", i32 2000, i32 2002}
!108 = !{!"branch_weights", i32 0, i32 2000}
!109 = distinct !{!109, !32}
!110 = distinct !{!110, !32}
!111 = distinct !{!111, !32}
!112 = !{!30, !10, i64 96}
end_hunk_2
