inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_set_cinema_parameters:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !71 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !72
  %i.cs = mul i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !74
  %i.cv = mul i32 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !75
  %i.cy = mul i32 %i.cv, %i.cx
  %i.cz = uitofp i32 %i.cy to float
  %i.da = load i32, ptr %i.ca, align 8, !tbaa !62
  %i.db = shl i32 %i.da, 3
  %i.dc = load i32, ptr %i.cp, align 8, !tbaa !76
  %i.dd = mul i32 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !77
  %i.dg = mul i32 %i.dd, %i.df
  %i.dh = uitofp i32 %i.dg to float
  %i.di = fdiv float %i.cz, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store float %i.di, ptr %i.dj, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_is_cinema_compliant(ptr nofree noundef nonnull readonly captures(none) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq i32 %i.d, 3
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %i.i = icmp ne i32 %i.h, 12
  %i.j = zext i1 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !119  ; 2 uses
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
  %i.r = load i32, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %i.s = icmp ne i32 %i.r, 12
  %i.t = zext i1 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !119  ; 2 uses
  %i.w = or i32 %i.v, %i.t
  %.not30.1 = icmp eq i32 %i.w, 0
  br i1 %.not30.1, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.y = load i32, ptr %i.x, align 8, !tbaa !75   ; 2 uses
  %i.z = icmp ne i32 %i.y, 12
  %i.aa = zext i1 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !119 ; 2 uses
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
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !72 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 2048
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !74 ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, 1080
  %i.ak = or i1 %i.ag, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.120, i32 noundef %i.af, i32 noundef %i.ai) #21 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !72 ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 4096
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74 ; 2 uses
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
define internal fastcc void @opj_j2k_set_imf_parameters(ptr nofree noundef nonnull captures(none) initializes((18696, 18698)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18716
  %i.b = load i16, ptr %i.a, align 4, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5604 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = icmp eq i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp eq i32 %i.g, 64
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 32, ptr %i.c, align 4, !tbaa !51
  store i32 32, ptr %i.f, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18697
  store i8 67, ptr %i.i, align 1, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18696
  store i8 1, ptr %i.j, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !146
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 4, ptr %i.k, align 4, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = add i16 %i.b, -1024
  %or.cond5 = icmp ult i16 %i.n, 768
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 1, ptr %i.o, align 8, !tbaa !128
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %i.r = icmp eq i32 %i.q, 6
  br i1 %i.r, label %bb.i, label %.loopexit5

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %1, align 8, !tbaa !149
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %.loopexit5

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !150
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %.loopexit5

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %0, align 8, !tbaa !81
  %.not.i = icmp eq i32 %i.x, 0                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.in.i = select i1 %.not.i, ptr %i.z, ptr %i.y
  %i.aa = load i32, ptr %.in.i, align 4, !tbaa !3 ; 8 uses
  %2 = zext i16 %i.b to i32
  %3 = add nsw i32 %2, -1024
  %4 = lshr i32 %3, 8
  switch i32 %4, label %opj_j2k_get_imf_max_NL.exit [
    i32 0, label %bb.t
    i32 5, label %bb.q
    i32 4, label %bb.n
    i32 3, label %bb.l
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
  store i32 %.0.i.ph.ph, ptr %i.p, align 8, !tbaa !48
  br label %opj_j2k_get_imf_max_NL.exit

opj_j2k_get_imf_max_NL.exit:                      ; preds = %bb.q, %bb.n, %bb.s, %bb.p, %bb.m, %bb.k, %bb.t
  %.pr = phi i32 [ 6, %bb.q ], [ 6, %bb.n ], [ 6, %bb.s ], [ 6, %bb.p ], [ 6, %bb.m ], [ 6, %bb.k ], [ %.0.i.ph.ph, %bb.t ] ; 2 uses
  br i1 %.not.i, label %.lr.ph, label %.loopexit5

.lr.ph:                                           ; preds = %opj_j2k_get_imf_max_NL.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !84
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %.backedge
  %i.ak = phi i32 [ %.pr, %.lr.ph ], [ %i.al, %.backedge ] ; 3 uses
  %i.al = add nsw i32 %i.ak, -1                   ; 4 uses
  %i.am = shl nuw i32 1, %i.al                    ; 2 uses
  %i.an = icmp ult i32 %i.aj, %i.am
  br i1 %i.an, label %.backedge, label %bb.v

.backedge:                                        ; preds = %bb.v, %bb.u
  store i32 %i.al, ptr %i.p, align 8, !tbaa !48
  %i.ao = icmp samesign ugt i32 %i.ak, 1
  br i1 %i.ao, label %bb.u, label %.loopexit5, !llvm.loop !151

bb.v:                                             ; preds = %bb.u
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !86
  %i.aq = icmp ult i32 %i.ap, %i.am
  br i1 %i.aq, label %.backedge, label %.loopexit5

.loopexit5:                                       ; preds = %.backedge, %bb.v, %opj_j2k_get_imf_max_NL.exit, %bb.j, %bb.i, %bb.h
  %i.ar = phi i32 [ 6, %bb.i ], [ %i.q, %bb.h ], [ %.pr, %opj_j2k_get_imf_max_NL.exit ], [ 6, %bb.j ], [ %i.al, %.backedge ], [ %i.ak, %bb.v ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !121
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.loopexit5
  store i32 1, ptr %i.as, align 8, !tbaa !121
  %i.av = icmp eq i32 %i.ar, 1
  br i1 %i.av, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5628
  store i32 1, ptr %i.aw, align 4, !tbaa !138
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5632
  store i32 128, ptr %i.ax, align 8, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5764
  store i32 128, ptr %i.ay, align 4, !tbaa !3
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.az = add i32 %i.ar, -1                       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5628
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !138
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
  store <4 x i32> splat (i32 256), ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index
  store <4 x i32> splat (i32 256), ptr %i.bf, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph8, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph8 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 256, ptr %i.bh, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store i32 256, ptr %i.bi, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !153

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.y, %bb.x, %.loopexit5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_is_imf_compliant(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18716
  %i.d = load i16, ptr %i.c, align 4, !tbaa !60   ; 6 uses
  %i.e = and i16 %i.d, -256                       ; 2 uses
  %i.f = and i16 %i.d, 15                         ; 3 uses
  %i.g = lshr i16 %i.d, 4
  %i.h = and i16 %i.g, 15                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48   ; 13 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = load i32, ptr %0, align 8, !tbaa !81
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.in = select i1 %.not, ptr %i.n, ptr %i.m
  %i.o = load i32, ptr %.in, align 4, !tbaa !3    ; 9 uses
  %i.p = zext nneg i16 %i.f to i32                ; 2 uses
  %i.q = icmp samesign ugt i16 %i.f, 11
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.122, i32 noundef %i.p) #21 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = zext nneg i16 %i.f to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @tabMaxSubLevelFromMainLevel, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !154  ; 2 uses
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
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 3
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef %i.aa) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ 0, %bb.f ], [ %.0265, %bb.e ]
  %i.ad = load i32, ptr %1, align 8, !tbaa !149   ; 2 uses
  %.not286 = icmp eq i32 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !150 ; 2 uses
  br i1 %.not286, label %bb.h, label %._crit_edge353

._crit_edge353:                                   ; preds = %bb.g
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  br label %bb.i
end_hunk_0
begin_hunk_1_@opj_j2k_is_imf_compliant:bb.a
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !86
  %.not292 = icmp ult i32 %i.ay, %i.ba
  br i1 %.not292, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = icmp eq i32 %i.as, 1024
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !143 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 1024
  %or.cond404 = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %or.cond404, label %bb.q, label %._crit_edge357

._crit_edge357:                                   ; preds = %bb.p
  %i.bf = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.128, i32 noundef %i.as, i32 noundef %i.bd) #21 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %._crit_edge360, %._crit_edge357, %bb.o, %bb.k
  %.4 = phi i32 [ 0, %._crit_edge360 ], [ %.3, %bb.m ], [ %.3, %bb.o ], [ %.3, %bb.p ], [ %.3, %bb.k ], [ 0, %._crit_edge357 ] ; 2 uses
  %i.bg = load i32, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %.not333 = icmp eq i32 %i.bg, 0
  br i1 %.not333, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.y

.preheader322:                                    ; preds = %bb.ab
  %i.bi = icmp eq i32 %i.cr, 0
  br i1 %i.bi, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.preheader322
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !76 ; 2 uses
  %.not307.peel = icmp eq i32 %i.bl, 1
  br i1 %.not307.peel, label %.thread320.peel, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.130, i32 noundef %i.bl) #21 ; 0 uses
  br label %.thread320.peel

.thread320.peel:                                  ; preds = %bb.s, %bb.r
  %.10.peel = phi i32 [ 0, %bb.s ], [ %.6, %bb.r ]
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !77 ; 2 uses
  %.not311.peel = icmp eq i32 %i.bp, 1
  br i1 %.not311.peel, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread320.peel
  %i.bq = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.133, i32 noundef %i.bp, i32 noundef 0) #21 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread320.peel
  %.11.peel = phi i32 [ 0, %bb.t ], [ %.10.peel, %.thread320.peel ] ; 2 uses
  %i.br = load i32, ptr %i.z, align 8, !tbaa !57
  %i.bs = icmp ugt i32 %i.br, 1
  br i1 %i.bs, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.u
  %i.bt = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !76 ; 2 uses
  %.off.peel340 = add i32 %i.bv, -1
  %switch.peel341 = icmp ult i32 %.off.peel340, 2
  br i1 %switch.peel341, label %.thread320.peel344, label %bb.v

bb.v:                                             ; preds = %.peel.next
  %i.bw = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef %i.bv) #21 ; 0 uses
  br label %.thread320.peel344

.thread320.peel344:                               ; preds = %bb.v, %.peel.next
  %.10.peel345 = phi i32 [ %.11.peel, %.peel.next ], [ 0, %bb.v ]
  %i.bx = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 68
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !77 ; 2 uses
  %.not311.peel346 = icmp eq i32 %i.bz, 1
  br i1 %.not311.peel346, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread320.peel344
  %i.ca = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.133, i32 noundef %i.bz, i32 noundef 1) #21 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread320.peel344
  %.11.peel347 = phi i32 [ 0, %bb.w ], [ %.10.peel345, %.thread320.peel344 ] ; 2 uses
  %i.cb = load i32, ptr %i.z, align 8, !tbaa !57
  %i.cc = icmp ugt i32 %i.cb, 2
  br i1 %i.cc, label %.peel.next339, label %._crit_edge

bb.y:                                             ; preds = %.lr.ph, %bb.ab
  %i.cd = phi i32 [ %i.bg, %.lr.ph ], [ %i.cr, %bb.ab ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %.5324 = phi i32 [ %.4, %.lr.ph ], [ %.6, %bb.ab ]
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.ce, i64 %indvars.iv ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !75
  %i.ci = add i32 %i.ch, -8
  %or.cond314 = icmp ult i32 %i.ci, 9
  br i1 %or.cond314, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !119
  %.not312.a = icmp eq i32 %i.ck, 0
  br i1 %.not312.a, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @__const.opj_j2k_is_imf_compliant.signed_str, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @__const.opj_j2k_is_imf_compliant.unsigned_str, i64 9, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !119
  %.not313 = icmp eq i32 %i.cm, 0
  %i.cn = select i1 %.not313, ptr %i.b, ptr %i.a
  %i.co = load i32, ptr %i.cg, align 8, !tbaa !75
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.129, i32 noundef %i.cp, i32 noundef %i.co, ptr noundef nonnull %i.cn) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre365 = load i32, ptr %i.z, align 8, !tbaa !57
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.cr = phi i32 [ %.pre365, %bb.aa ], [ %i.cd, %bb.z ] ; 3 uses
  %.6 = phi i32 [ 0, %bb.aa ], [ %.5324, %bb.z ]  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.y, label %.preheader322, !llvm.loop !158

.peel.next339:                                    ; preds = %bb.x, %bb.aj
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %bb.aj ], [ 2, %bb.x ] ; 6 uses
  %.7326 = phi i32 [ %.11, %bb.aj ], [ %.11.peel347, %bb.x ] ; 3 uses
  %i.cu = trunc nuw i64 %indvars.iv336 to i32     ; 2 uses
  %i.cv = load ptr, ptr %i.bj, align 8, !tbaa !71 ; 4 uses
  switch i32 %i.cu, label %bb.ag [
    i32 0, label %bb.ac
    i32 1, label %bb.ae
  ]

bb.ac:                                            ; preds = %.peel.next339
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !76 ; 2 uses
  %.not307.a = icmp eq i32 %i.cw, 1
  br i1 %.not307.a, label %.thread320, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.130, i32 noundef %i.cw) #21 ; 0 uses
  br label %.thread320

bb.ae:                                            ; preds = %.peel.next339
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !76 ; 2 uses
  %.off = add i32 %i.cz, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.thread320, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef %i.cz) #21 ; 0 uses
  br label %.thread320

bb.ag:                                            ; preds = %.peel.next339
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.cv, i64 %indvars.iv336
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !76 ; 2 uses
  %i.dd = getelementptr [64 x i8], ptr %i.cv, i64 %indvars.iv336
  %i.de = getelementptr i8, ptr %i.dd, i64 -64
  %i.df = load i32, ptr %i.de, align 8, !tbaa !76 ; 2 uses
  %.not310 = icmp eq i32 %i.dc, %i.df
  br i1 %.not310, label %.thread320, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = trunc nuw i64 %indvars.iv336 to i32
  %i.dh = add nuw i32 %i.dg, 1
  %i.di = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.132, i32 noundef %i.dh, i32 noundef %i.dc, i32 noundef %i.df) #21 ; 0 uses
  br label %.thread320

.thread320:                                       ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ae, %bb.ah, %bb.ag
  %.10 = phi i32 [ 0, %bb.ah ], [ %.7326, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.af ], [ %.7326, %bb.ae ], [ %.7326, %bb.ac ]
  %i.dj = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.dk = getelementptr inbounds nuw [64 x i8], ptr %i.dj, i64 %indvars.iv336
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !77 ; 2 uses
  %.not311 = icmp eq i32 %i.dm, 1
  br i1 %.not311, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread320
  %i.dn = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.133, i32 noundef %i.dm, i32 noundef %i.cu) #21 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.thread320, %bb.ai
  %.11 = phi i32 [ 0, %bb.ai ], [ %.10, %.thread320 ] ; 2 uses
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %i.do = load i32, ptr %i.z, align 8, !tbaa !57
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next337, %i.dp
  br i1 %i.dq, label %.peel.next339, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %bb.aj, %bb.q, %bb.u, %bb.x, %.preheader322
  %.7.lcssa = phi i32 [ %.6, %.preheader322 ], [ %.4, %bb.q ], [ %.11.peel347, %bb.x ], [ %.11.peel, %bb.u ], [ %.11, %bb.aj ] ; 3 uses
  %3 = zext i16 %i.d to i32
  %4 = add nsw i32 %3, -1024
  %5 = lshr i32 %4, 8                             ; 2 uses
  switch i32 %5, label %.loopexit [
    i32 0, label %bb.ak
    i32 3, label %bb.ak
    i32 1, label %bb.am
    i32 4, label %bb.am
    i32 2, label %bb.ao
    i32 5, label %bb.ao
  ]

bb.ak:                                            ; preds = %._crit_edge, %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !71 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !72 ; 2 uses
  %i.dv = icmp ugt i32 %i.du, 2048
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !74 ; 2 uses
  %i.dy = icmp ugt i32 %i.dx, 1556
  %i.dz = or i1 %i.dv, %i.dy
  br i1 %i.dz, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ea = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.134, i32 noundef %i.du, i32 noundef %i.dx) #21 ; 0 uses
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !71 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %i.ef = icmp ugt i32 %i.ee, 4096
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !74 ; 2 uses
  %i.ei = icmp ugt i32 %i.eh, 3112
  %i.ej = or i1 %i.ef, %i.ei
  br i1 %i.ej, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ek = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.135, i32 noundef %i.ee, i32 noundef %i.eh) #21 ; 0 uses
  br label %bb.aq

bb.ao:                                            ; preds = %._crit_edge, %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !71 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !72 ; 2 uses
  %i.ep = icmp ugt i32 %i.eo, 8192
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !74 ; 2 uses
  %i.es = icmp ugt i32 %i.er, 6224
  %i.et = or i1 %i.ep, %i.es
  br i1 %i.et, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eu = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.136, i32 noundef %i.eo, i32 noundef %i.er) #21 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.am, %bb.an, %bb.ak, %bb.al
  %.12 = phi i32 [ 0, %bb.al ], [ %.7.lcssa, %bb.ak ], [ 0, %bb.an ], [ %.7.lcssa, %bb.am ], [ 0, %bb.ap ], [ %.7.lcssa, %bb.ao ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 5620
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !132
  %.not293 = icmp eq i32 %i.ew, -1
  br i1 %.not293, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.137) #21 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.13 = phi i32 [ 0, %bb.ar ], [ %.12, %bb.aq ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 5604
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !51 ; 2 uses
  %.not294 = icmp eq i32 %i.ez, 32
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 5608
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !52 ; 2 uses
  %.not295 = icmp eq i32 %i.fb, 32
  %or.cond405 = select i1 %.not294, i1 %.not295, i1 false
  br i1 %or.cond405, label %bb.at, label %._crit_edge366

._crit_edge366:                                   ; preds = %bb.as
  %i.fc = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.138, i32 noundef %i.ez, i32 noundef %i.fb) #21 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge366
  %.14 = phi i32 [ 0, %._crit_edge366 ], [ %.13, %bb.as ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !146 ; 2 uses
  %.not296 = icmp eq i32 %i.fe, 4
  br i1 %.not296, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.139, i32 noundef %i.fe) #21 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.15 = phi i32 [ 0, %bb.au ], [ %.14, %bb.at ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4792
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !100 ; 2 uses
  %.not297 = icmp eq i32 %i.fh, 0
  br i1 %.not297, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fi = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.140, i32 noundef %i.fh) #21 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.16 = phi i32 [ 0, %bb.aw ], [ %.15, %bb.av ]
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 5612
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !126 ; 2 uses
  %.not298 = icmp eq i32 %i.fk, 0
  br i1 %.not298, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fl = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef %i.fk) #21 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.17 = phi i32 [ 0, %bb.ay ], [ %.16, %bb.ax ]  ; 2 uses
  %i.fm = and i16 %i.d, -512
  %or.cond14 = icmp eq i16 %i.fm, 1024
  %i.fn = icmp eq i16 %i.e, 1536
  %or.cond17 = or i1 %or.cond14, %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 5616
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !128 ; 2 uses
  br i1 %or.cond17, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.not300 = icmp eq i32 %i.fp, 1
  br i1 %.not300, label %bb.bc, label %.sink.split

bb.bb:                                            ; preds = %bb.az
  %.not299 = icmp eq i32 %i.fp, 0
  br i1 %.not299, label %bb.bc, label %.sink.split

.sink.split:                                      ; preds = %bb.bb, %bb.ba
  %.str.143.sink = phi ptr [ @.str.142, %bb.ba ], [ @.str.143, %bb.bb ]
  %i.fq = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %.str.143.sink) #21 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.bb, %bb.ba
  %.18 = phi i32 [ %.17, %bb.bb ], [ %.17, %bb.ba ], [ 0, %.sink.split ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4796
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !56 ; 2 uses
  %.not301 = icmp eq i32 %i.fs, 1
  br i1 %.not301, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ft = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.144, i32 noundef %i.fs) #21 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.19 = phi i32 [ 0, %bb.bd ], [ %.18, %bb.bc ]  ; 12 uses
  switch i32 %5, label %default.unreachable [
    i32 0, label %bb.bf
    i32 1, label %bb.bg
    i32 2, label %bb.bh
    i32 3, label %bb.bi
    i32 4, label %bb.bl
    i32 5, label %bb.bq
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fu = add i32 %i.j, -2
  %or.cond19 = icmp ult i32 %i.fu, 5
  br i1 %or.cond19, label %bb.bx, label %.sink.split406

bb.bg:                                            ; preds = %bb.be
  %i.fv = add i32 %i.j, -2
  %or.cond21 = icmp ult i32 %i.fv, 6
  br i1 %or.cond21, label %bb.bx, label %.sink.split406

bb.bh:                                            ; preds = %bb.be
  %i.fw = add i32 %i.j, -2
  %or.cond23 = icmp ult i32 %i.fw, 7
  br i1 %or.cond23, label %bb.bx, label %.sink.split406

bb.bi:                                            ; preds = %bb.be
  %i.fx = icmp ugt i32 %i.o, 2047
  br i1 %i.fx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fy = add i32 %i.j, -2
  %or.cond25 = icmp ult i32 %i.fy, 5
  br i1 %or.cond25, label %bb.bx, label %.sink.split406

bb.bk:                                            ; preds = %bb.bi
  %i.fz = icmp samesign ult i32 %i.o, 1024
  %i.ga = add i32 %i.j, -2
  %or.cond27 = icmp ult i32 %i.ga, 4
  %or.cond315 = select i1 %i.fz, i1 true, i1 %or.cond27
  br i1 %or.cond315, label %bb.bx, label %.sink.split406

bb.bl:                                            ; preds = %bb.be
  %i.gb = icmp ugt i32 %i.o, 4095
  br i1 %i.gb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gc = add i32 %i.j, -2
  %or.cond29 = icmp ult i32 %i.gc, 6
  br i1 %or.cond29, label %bb.bx, label %.sink.split406

bb.bn:                                            ; preds = %bb.bl
  %i.gd = icmp samesign ugt i32 %i.o, 2047
  br i1 %i.gd, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ge = add i32 %i.j, -2
  %or.cond31 = icmp ult i32 %i.ge, 5
  br i1 %or.cond31, label %bb.bx, label %.sink.split406

bb.bp:                                            ; preds = %bb.bn
  %i.gf = icmp samesign ult i32 %i.o, 1024
  %i.gg = add i32 %i.j, -2
  %or.cond33 = icmp ult i32 %i.gg, 4
  %or.cond316 = select i1 %i.gf, i1 true, i1 %or.cond33
  br i1 %or.cond316, label %bb.bx, label %.sink.split406

bb.bq:                                            ; preds = %bb.be
  %i.gh = icmp ugt i32 %i.o, 8191
  br i1 %i.gh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gi = add i32 %i.j, -2
  %or.cond35 = icmp ult i32 %i.gi, 7
  br i1 %or.cond35, label %bb.bx, label %.sink.split406

bb.bs:                                            ; preds = %bb.bq
  %i.gj = icmp samesign ugt i32 %i.o, 4095
  br i1 %i.gj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gk = add i32 %i.j, -2
  %or.cond37 = icmp ult i32 %i.gk, 6
  br i1 %or.cond37, label %bb.bx, label %.sink.split406

bb.bu:                                            ; preds = %bb.bs
  %i.gl = icmp samesign ugt i32 %i.o, 2047
  br i1 %i.gl, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gm = add i32 %i.j, -2
  %or.cond39 = icmp ult i32 %i.gm, 5
  br i1 %or.cond39, label %bb.bx, label %.sink.split406

bb.bw:                                            ; preds = %bb.bu
  %i.gn = icmp samesign ult i32 %i.o, 1024
  %i.go = add i32 %i.j, -2
  %or.cond41 = icmp ult i32 %i.go, 4
  %or.cond317 = select i1 %i.gn, i1 true, i1 %or.cond41
  br i1 %or.cond317, label %bb.bx, label %.sink.split406

default.unreachable:                              ; preds = %bb.be
  unreachable

.sink.split406:                                   ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bo, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bf
  %.str.153.sink = phi ptr [ @.str.152, %bb.bp ], [ @.str.154, %bb.bt ], [ @.str.151, %bb.bv ], [ @.str.153, %bb.br ], [ @.str.149, %bb.bk ], [ @.str.151, %bb.bo ], [ @.str.150, %bb.bm ], [ @.str.147, %bb.bh ], [ @.str.148, %bb.bj ], [ @.str.146, %bb.bg ], [ @.str.145, %bb.bf ], [ @.str.152, %bb.bw ]
  %i.gp = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %.str.153.sink, i32 noundef %i.k) #21 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split406, %bb.br, %bb.bv, %bb.bw, %bb.bt, %bb.bm, %bb.bp, %bb.bo, %bb.bj, %bb.bk, %bb.bh, %bb.bg, %bb.bf
  %.20 = phi i32 [ %.19, %bb.bm ], [ %.19, %bb.bf ], [ %.19, %bb.bp ], [ %.19, %bb.bg ], [ %.19, %bb.bo ], [ %.19, %bb.bh ], [ %.19, %bb.br ], [ %.19, %bb.bj ], [ %.19, %bb.bv ], [ %.19, %bb.bw ], [ %.19, %bb.bt ], [ %.19, %bb.bk ], [ 0, %.sink.split406 ] ; 3 uses
  %i.gq = load i32, ptr %i.i, align 8, !tbaa !48
  %i.gr = icmp eq i32 %i.gq, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 5628 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !138 ; 3 uses
  br i1 %i.gr, label %bb.by, label %.preheader

.preheader:                                       ; preds = %bb.bx
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph331, label %.loopexit

.lr.ph331:                                        ; preds = %.preheader
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 5632
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 5764
  br label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %.not304.a = icmp eq i32 %i.gt, 1
  br i1 %.not304.a, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 5632
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !3
  %.not305 = icmp eq i32 %i.gy, 128
  br i1 %.not305, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 5764
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3
  %.not306 = icmp eq i32 %i.ha, 128
  br i1 %.not306, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.hb = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.155) #21 ; 0 uses
  br label %.loopexit

bb.cc:                                            ; preds = %.lr.ph331, %bb.cf
  %i.hc = phi i32 [ %i.gt, %.lr.ph331 ], [ %i.hi, %bb.cf ]
  %indvars.iv350 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next351, %bb.cf ] ; 3 uses
  %.21329 = phi i32 [ %.20, %.lr.ph331 ], [ %.22, %bb.cf ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv350
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %.not302 = icmp eq i32 %i.he, 256
  br i1 %.not302, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv350
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3
  %.not303 = icmp eq i32 %i.hg, 256
  br i1 %.not303, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.hh = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.155) #21 ; 0 uses
  %.pre369 = load i32, ptr %i.gs, align 4, !tbaa !138
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.hi = phi i32 [ %.pre369, %bb.ce ], [ %i.hc, %bb.cd ] ; 2 uses
  %.22 = phi i32 [ 0, %bb.ce ], [ %.21329, %bb.cd ] ; 2 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next351, %i.hj
  br i1 %i.hk, label %bb.cc, label %.loopexit, !llvm.loop !161

.loopexit:                                        ; preds = %bb.cf, %.preheader, %bb.cb, %bb.ca, %._crit_edge
  %.0264 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.cb ], [ %.20, %bb.ca ], [ %.20, %.preheader ], [ %.22, %bb.cf ]
  ret i32 %.0264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

declare ptr @opj_version() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @opj_j2k_check_poc_val(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = mul i32 %4, %3                           ; 3 uses
  %i.b = zext i32 %i.a to i64
  %i.c = zext i32 %5 to i64
  %i.d = mul nuw i64 %i.b, %i.c
  %i.e = tail call ptr @opj_calloc(i64 noundef %i.d, i64 noundef 4) #21 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.preheader79

.preheader79:                                     ; preds = %bb.a
  %.not114 = icmp eq i32 %2, 0
  br i1 %.not114, label %.preheader77, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader79
end_hunk_1
