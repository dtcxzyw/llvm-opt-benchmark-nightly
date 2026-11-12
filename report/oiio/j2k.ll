Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/j2k?download=true
inline.NumInlined: 159
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_set_cinema_parameters:bb.a
  store i32 3, ptr %i.bp, align 8, !tbaa !422
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 4, ptr %i.bq, align 8, !tbaa !423
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 1, ptr %i.bs, align 4, !tbaa !419
  store i32 %i.bn, ptr %i.br, align 4, !tbaa !421
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.bt, align 8, !tbaa !420
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 1, ptr %i.bu, align 4, !tbaa !451
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.bf, ptr %i.bv, align 8, !tbaa !452
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 3, ptr %i.bw, align 4, !tbaa !422
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 4, ptr %i.bx, align 4, !tbaa !423
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %.sink = phi i32 [ 2, %bb.i ], [ 0, %.loopexit ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store i32 %.sink, ptr %i.by, align 8, !tbaa !417
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.bz, align 4, !tbaa !389
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 18712 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !387 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1302083, ptr %i.ca, align 8, !tbaa !387
  %i.cd = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.114) #21 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ce = icmp samesign ugt i32 %i.cb, 1302083
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.115) #21 ; 0 uses
  store i32 1302083, ptr %i.ca, align 8, !tbaa !387
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 18688 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !388 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 1
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 1041666, ptr %i.cg, align 8, !tbaa !388
  %i.cj = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.116) #21 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ck = icmp samesign ugt i32 %i.ch, 1041666
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.117) #21 ; 0 uses
  store i32 1041666, ptr %i.cg, align 8, !tbaa !388
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !385
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !392 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !394
  %i.cs = mul i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !395
  %i.cv = mul i32 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !396
  %i.cy = mul i32 %i.cv, %i.cx
  %i.cz = uitofp i32 %i.cy to float
  %i.da = load i32, ptr %i.ca, align 8, !tbaa !387
  %i.db = shl i32 %i.da, 3
  %i.dc = load i32, ptr %i.cp, align 8, !tbaa !397
  %i.dd = mul i32 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !398
  %i.dg = mul i32 %i.dd, %i.df
  %i.dh = uitofp i32 %i.dg to float
  %i.di = fdiv float %i.cz, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store float %i.di, ptr %i.dj, align 8, !tbaa !391
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_is_cinema_compliant(ptr nofree noundef nonnull readonly captures(none) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #3 !guid !610 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !385  ; 2 uses
  %.not = icmp eq i32 %i.d, 3
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !392  ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !396  ; 2 uses
  %i.i = icmp ne i32 %i.h, 12
  %i.j = zext i1 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !432  ; 2 uses
  %i.m = or i32 %i.l, %i.j
  %.not30 = icmp eq i32 %i.m, 0
  br i1 %.not30, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.118, i32 noundef %i.d) #21 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.e, %bb.d, %.preheader
  %indvars.iv.lcssa = phi i32 [ 0, %.preheader ], [ 1, %bb.d ], [ 2, %bb.e ]
  %.lcssa49 = phi i32 [ %i.h, %.preheader ], [ %i.r, %bb.d ], [ %i.y, %bb.e ]
  %.lcssa = phi i32 [ %i.l, %.preheader ], [ %i.v, %bb.d ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @__const.opj_j2k_is_imf_compliant.signed_str, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @__const.opj_j2k_is_imf_compliant.unsigned_str, i64 9, i1 false)
  %.not31 = icmp eq i32 %.lcssa, 0
  %i.o = select i1 %.not31, ptr %i.b, ptr %i.a
  %i.p = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef %indvars.iv.lcssa, i32 noundef %.lcssa49, ptr noundef nonnull %i.o) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.k

bb.d:                                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !396  ; 2 uses
  %i.s = icmp ne i32 %i.r, 12
  %i.t = zext i1 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !432  ; 2 uses
  %i.w = or i32 %i.v, %i.t
  %.not30.1 = icmp eq i32 %i.w, 0
  br i1 %.not30.1, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.y = load i32, ptr %i.x, align 8, !tbaa !396  ; 2 uses
  %i.z = icmp ne i32 %i.y, 12
  %i.aa = zext i1 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !432 ; 2 uses
  %i.ad = or i32 %i.ac, %i.aa
  %.not30.2 = icmp eq i32 %i.ad, 0
  br i1 %.not30.2, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  switch i16 %1, label %bb.k [
    i16 3, label %bb.g
    i16 4, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !394 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 2048
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !395 ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, 1080
  %i.ak = or i1 %i.ag, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.120, i32 noundef %i.af, i32 noundef %i.ai) #21 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !394 ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 4096
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !395 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 2160
  %i.as = or i1 %i.ao, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.121, i32 noundef %i.an, i32 noundef %i.aq) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.f, %bb.j, %bb.h, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.j ], [ 0, %bb.h ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_j2k_set_imf_parameters(ptr nofree noundef nonnull captures(none) initializes((18696, 18698)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 !guid !614 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18716
  %i.b = load i16, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5604 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !380
  %i.e = icmp eq i32 %i.d, 64
  %2 = lshr i16 %i.b, 8
  %3 = trunc nuw i16 %2 to i8
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !381
  %i.h = icmp eq i32 %i.g, 64
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 32, ptr %i.c, align 4, !tbaa !380
  store i32 32, ptr %i.f, align 8, !tbaa !381
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18697
  store i8 67, ptr %i.i, align 1, !tbaa !408
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18696
  store i8 1, ptr %i.j, align 8, !tbaa !407
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !450
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 4, ptr %i.k, align 4, !tbaa !450
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = add i16 %i.b, -1024
  %or.cond5 = icmp ult i16 %i.n, 768
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 1, ptr %i.o, align 8, !tbaa !440
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !379  ; 2 uses
  %i.r = icmp eq i32 %i.q, 6
  br i1 %i.r, label %bb.i, label %.loopexit5

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %1, align 8, !tbaa !453
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %.loopexit5

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !454
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %.loopexit5

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %0, align 8, !tbaa !400
  %.not.i = icmp eq i32 %i.x, 0                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.in.i = select i1 %.not.i, ptr %i.z, ptr %i.y
  %i.aa = load i32, ptr %.in.i, align 4, !tbaa !10 ; 8 uses
  switch i8 %3, label %opj_j2k_get_imf_max_NL.exit [
    i8 4, label %bb.t
    i8 9, label %bb.q
    i8 8, label %bb.n
    i8 7, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp ugt i32 %i.aa, 2047
  br i1 %i.ab, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp samesign ugt i32 %i.aa, 1023
  br i1 %i.ac, label %bb.t, label %opj_j2k_get_imf_max_NL.exit

bb.n:                                             ; preds = %bb.k
  %i.ad = icmp ugt i32 %i.aa, 4095
  br i1 %i.ad, label %opj_j2k_get_imf_max_NL.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp samesign ugt i32 %i.aa, 2047
  br i1 %i.ae, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = icmp samesign ugt i32 %i.aa, 1023
  br i1 %i.af, label %bb.t, label %opj_j2k_get_imf_max_NL.exit

bb.q:                                             ; preds = %bb.k
  %or.cond.not = icmp ult i32 %i.aa, 4096
  br i1 %or.cond.not, label %bb.r, label %opj_j2k_get_imf_max_NL.exit

bb.r:                                             ; preds = %bb.q
  %i.ag = icmp samesign ugt i32 %i.aa, 2047
  br i1 %i.ag, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = icmp samesign ugt i32 %i.aa, 1023
  br i1 %i.ah, label %bb.t, label %opj_j2k_get_imf_max_NL.exit

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.r
  %.0.i.ph.ph = phi i32 [ 6, %bb.r ], [ 6, %bb.k ], [ 6, %bb.l ], [ 5, %bb.m ], [ 6, %bb.o ], [ 5, %bb.p ], [ 5, %bb.s ] ; 2 uses
  store i32 %.0.i.ph.ph, ptr %i.p, align 8, !tbaa !379
  br label %opj_j2k_get_imf_max_NL.exit

opj_j2k_get_imf_max_NL.exit:                      ; preds = %bb.q, %bb.n, %bb.s, %bb.p, %bb.m, %bb.k, %bb.t
  %.pr = phi i32 [ 6, %bb.q ], [ 6, %bb.n ], [ 6, %bb.s ], [ 6, %bb.p ], [ 6, %bb.m ], [ 6, %bb.k ], [ %.0.i.ph.ph, %bb.t ] ; 2 uses
  br i1 %.not.i, label %.lr.ph, label %.loopexit5

.lr.ph:                                           ; preds = %opj_j2k_get_imf_max_NL.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !403
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %.backedge
  %i.ak = phi i32 [ %.pr, %.lr.ph ], [ %i.al, %.backedge ] ; 3 uses
  %i.al = add nsw i32 %i.ak, -1                   ; 4 uses
  %i.am = shl nuw i32 1, %i.al                    ; 2 uses
  %i.an = icmp ult i32 %i.aj, %i.am
  br i1 %i.an, label %.backedge, label %bb.v

.backedge:                                        ; preds = %bb.v, %bb.u
  store i32 %i.al, ptr %i.p, align 8, !tbaa !379
  %i.ao = icmp samesign ugt i32 %i.ak, 1
  br i1 %i.ao, label %bb.u, label %.loopexit5, !llvm.loop !611

bb.v:                                             ; preds = %bb.u
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !405
  %i.aq = icmp ult i32 %i.ap, %i.am
  br i1 %i.aq, label %.backedge, label %.loopexit5

.loopexit5:                                       ; preds = %.backedge, %bb.v, %opj_j2k_get_imf_max_NL.exit, %bb.j, %bb.i, %bb.h
  %i.ar = phi i32 [ 6, %bb.i ], [ %i.q, %bb.h ], [ %.pr, %opj_j2k_get_imf_max_NL.exit ], [ 6, %bb.j ], [ %i.al, %.backedge ], [ %i.ak, %bb.v ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !433
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.loopexit5
  store i32 1, ptr %i.as, align 8, !tbaa !433
  %i.av = icmp eq i32 %i.ar, 1
  br i1 %i.av, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5628
  store i32 1, ptr %i.aw, align 4, !tbaa !448
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5632
  store i32 128, ptr %i.ax, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5764
  store i32 128, ptr %i.ay, align 4, !tbaa !10
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.az = add i32 %i.ar, -1                       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5628
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !448
  %i.bb = icmp sgt i32 %i.ar, 1
  br i1 %i.bb, label %.lr.ph8, label %.loopexit

.lr.ph8:                                          ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5632 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5764 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ar, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph8
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  store <4 x i32> splat (i32 256), ptr %i.be, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index
  store <4 x i32> splat (i32 256), ptr %i.bf, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph8, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph8 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 256, ptr %i.bh, align 4, !tbaa !10
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store i32 256, ptr %i.bi, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !613

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.y, %bb.x, %.loopexit5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_is_imf_compliant(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #3 !guid !618 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18716
  %i.d = load i16, ptr %i.c, align 4, !tbaa !386  ; 6 uses
  %i.e = and i16 %i.d, -256                       ; 2 uses
  %i.f = and i16 %i.d, 15                         ; 3 uses
  %i.g = lshr i16 %i.d, 4
  %i.h = and i16 %i.g, 15                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !379  ; 13 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = load i32, ptr %0, align 8, !tbaa !400
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.in = select i1 %.not, ptr %i.n, ptr %i.m
  %i.o = load i32, ptr %.in, align 4, !tbaa !10   ; 9 uses
  %i.p = zext nneg i16 %i.f to i32                ; 2 uses
  %i.q = icmp samesign ugt i16 %i.f, 11
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.122, i32 noundef %i.p) #21 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = zext nneg i16 %i.f to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @tabMaxSubLevelFromMainLevel, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !455  ; 2 uses
  %i.v = icmp ugt i16 %i.h, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = zext nneg i16 %i.u to i32
  %i.x = zext nneg i16 %i.h to i32
  %i.y = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.123, i32 noundef %i.w, i32 noundef %i.p, i32 noundef %i.x) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0265 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !385 ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 3
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef %i.aa) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ 0, %bb.f ], [ %.0265, %bb.e ]
  %i.ad = load i32, ptr %1, align 8, !tbaa !453   ; 2 uses
  %.not286 = icmp eq i32 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !454 ; 2 uses
  br i1 %.not286, label %bb.h, label %._crit_edge354

end_hunk_0
