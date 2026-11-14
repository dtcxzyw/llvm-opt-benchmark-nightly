Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/misc_parsers?download=true
inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6LibRaw10canon_s2isEv
define noundef range(i32 0, 2) i32 @_ZN6LibRaw10canon_s2isEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !124

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = mul nuw nsw i64 %indvars.iv, 3340
  %i.d = add nuw nsw i64 %i.c, 3284
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.d, i32 noundef 0), !call_target !85 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !call_target !97
  %i.n = icmp sgt i32 %i.m, 15
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  %.04 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.04
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw10parse_cineEv(ptr noundef nonnull align 8 dereferenceable(768512) initializes((381728, 381730)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.b, align 8, !tbaa !98
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 4, i32 noundef 0), !call_target !85 ; 0 uses
  %i.h = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = icmp eq i16 %i.h, 2
  %i.j = zext i1 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !125
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 14, i32 noundef 1), !call_target !85 ; 0 uses
  %i.q = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.r = load i32, ptr %i.k, align 8, !tbaa !125
  %i.s = mul i32 %i.r, %i.q
  store i32 %i.s, ptr %i.k, align 8, !tbaa !125
  %i.t = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.u = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.v = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.w = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192704 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !99
  %i.z = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = zext i32 %i.z to i64
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.ac = add i32 %i.t, 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.ad, i32 noundef 0), !call_target !85 ; 0 uses
  %i.ai = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.aj, ptr %i.al, align 2, !tbaa !100
  %i.am = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.an = trunc i32 %i.am to i16
  store i16 %i.an, ptr %i.ak, align 8, !tbaa !101
  %i.ao = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ap = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  switch i16 %i.ap, label %bb.e [
    i16 8, label %.sink.split
    i16 16, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), %bb.d ], [ ptrtoint (ptr @_ZN6LibRaw18eight_bit_load_rawEv to i64), %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 %.sink, ptr %i.aq, align 8, !tbaa !102
  %.repack9 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack9, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.as = add i32 %i.u, 792
  %i.at = zext i32 %i.as to i64
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.at, i32 noundef 0), !call_target !85 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false) #13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ba = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ba) #13 ; 0 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i64 noundef 12, i32 noundef 1), !call_target !85 ; 0 uses
  %i.bh = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bi = and i32 %i.bh, 16777215
  switch i32 %i.bi, label %bb.h [
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1802201964, ptr %i.bj, align 8, !tbaa !103
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1229539657, ptr %i.bk, align 8, !tbaa !103
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !125
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef 72, i32 noundef 1), !call_target !85 ; 0 uses
  %i.bq = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.br = add i32 %i.bq, 3600
  %i.bs = urem i32 %i.br, 360
  switch i32 %i.bs, label %bb.m [
    i32 270, label %.sink.split13
    i32 180, label %bb.j
    i32 90, label %bb.k
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split13

bb.k:                                             ; preds = %bb.i
  br label %.sink.split13

bb.l:                                             ; preds = %bb.i
  br label %.sink.split13

.sink.split13:                                    ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.sink14 = phi i32 [ 2, %bb.l ], [ 7, %bb.k ], [ 1, %bb.j ], [ 4, %bb.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sink14, ptr %i.bt, align 8, !tbaa !104
  br label %bb.m

bb.m:                                             ; preds = %.sink.split13, %bb.i
  %i.bu = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
  %i.bv = fptrunc reassoc nsz arcp contract afn double %i.bu to float
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store float %i.bv, ptr %i.bw, align 4, !tbaa !105
  %i.bx = tail call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
  %i.by = fptrunc reassoc nsz arcp contract afn double %i.bx to float
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.by, ptr %i.bz, align 4, !tbaa !105
  %i.ca = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 31)
  %i.cd = shl nsw i32 -1, %i.cc
  %i.ce = xor i32 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !106
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !76
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef 668, i32 noundef 1), !call_target !85 ; 0 uses
  %i.cl = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cm = uitofp reassoc nsz arcp contract afn i32 %i.cl to float
  %i.cn = fmul reassoc nnan nsz arcp contract afn float %i.cm, f0x3089705F
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192692
  store float %i.cn, ptr %i.co, align 4, !tbaa !107
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.cq = zext i32 %i.v to i64
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !76
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i64 noundef %i.cq, i32 noundef 0), !call_target !85 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !126 ; 2 uses
  %i.cx = load i32, ptr %i.k, align 8, !tbaa !125
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.da = shl i32 %i.cw, 3
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !76
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i64 noundef %i.db, i32 noundef 1), !call_target !85 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dg = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.dh, 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 3 uses
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !108
  %i.dk = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw i64 %i.dl, 32
  %i.dn = load i64, ptr %i.dj, align 8, !tbaa !108
  %i.do = add nsw i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.dj, align 8, !tbaa !108
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #4

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #4

declare void @_ZN6LibRaw18eight_bit_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #4

declare void @_ZN6LibRaw17unpacked_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw8parse_qtEx(ptr noundef nonnull align 8 dereferenceable(768512) initializes((381728, 381730)) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 19789, ptr %i.c, align 8, !tbaa !98
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !call_target !111
  %i.i = add nsw i64 %i.h, 7
  %i.j = icmp slt i64 %i.i, %1
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !call_target !111
  %i.p = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %or.cond = icmp slt i32 %i.p, 8
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add nsw i64 %i.o, %i.q                   ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1), !call_target !93 ; 0 uses
  %lhsv = load i32, ptr %i.a, align 4
  switch i32 %lhsv, label %bb.d [
    i32 1987014509, label %bb.c
    i32 1635017845, label %bb.c
    i32 1213484611, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  call void @_ZN6LibRaw8parse_qtEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %lhsv21 = load i32, ptr %i.a, align 4
  %.not22 = icmp eq i32 %lhsv21, 1094995523
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !call_target !111
  %i.ac = call noundef i32 @_ZN6LibRaw10parse_jpegEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ab) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef %i.r, i32 noundef 0), !call_target !85 ; 0 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai), !call_target !111
  %i.an = add nsw i64 %i.am, 7
  %i.ao = icmp slt i64 %i.an, %1
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !127

._crit_edge:                                      ; preds = %.lr.ph, %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw10parse_jpegEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef 0), !call_target !85 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !call_target !97
  %.not = icmp eq i32 %i.k, 255
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !call_target !97
  %.not21 = icmp eq i32 %i.p, 216
  br i1 %.not21, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !call_target !97
  %i.v = icmp eq i32 %i.u, 255
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 381728 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !call_target !97 ; 2 uses
  %.not22 = icmp eq i32 %i.ad, 218
  br i1 %.not22, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 19789, ptr %i.w, align 8, !tbaa !98
  %i.ae = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.af = zext i16 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -2                   ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !call_target !111 ; 3 uses
  switch i32 %i.ad, label %bb.f [
    i32 201, label %bb.e
    i32 195, label %bb.e
    i32 192, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76
end_hunk_0
begin_hunk_1_@_ZN6LibRaw12parse_rolleiEv:bb.a
  store i32 6, ptr %i.cv, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14parse_sinar_iaEv(ptr noundef nonnull align 8 dereferenceable(768512) initializes((381728, 381730)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.c, align 8, !tbaa !98
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 4, i32 noundef 0), !call_target !85 ; 0 uses
  %i.i = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.j = add i32 %i.i, -8193
  %or.cond = icmp ult i32 %i.j, -8192
  br i1 %or.cond, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.l = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.m, i32 noundef 0), !call_target !85 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 381768
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 381760
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.in = phi i32 [ %i.i, %.lr.ph ], [ %i.v, %bb.h ]
  %i.v = add nsw i32 %.in, -1                     ; 2 uses
  %i.w = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.x = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  store i64 0, ptr %i.a, align 8
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1), !call_target !93 ; 0 uses
  store i8 0, ptr %i.r, align 1, !tbaa !94
  %i.ad = load i32, ptr %i.a, align 8
  %i.ae = xor i32 %i.ad, 1096041805
  %i.af = getelementptr i8, ptr %i.a, i64 4
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or i32 %i.ae, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not13 = icmp eq i32 %i.ak, 0
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = sext i32 %i.w to i64
  store i64 %i.al, ptr %i.s, align 8, !tbaa !150
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = load i32, ptr %i.a, align 8
  %i.an = xor i32 %i.am, 1297434708
  %i.ao = getelementptr i8, ptr %i.a, i64 4
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = zext i16 %i.ap to i32
  %i.ar = xor i32 %i.aq, 66
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not15 = icmp eq i32 %i.au, 0
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = sext i32 %i.w to i64
  store i64 %i.av, ptr %i.t, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aw = load i32, ptr %i.a, align 8
  %i.ax = xor i32 %i.aw, 811024722
  %i.ay = getelementptr i8, ptr %i.a, i64 4
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = zext i8 %i.az to i32
  %i.bb = or i32 %i.ax, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not17 = icmp eq i32 %i.bd, 0
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = sext i32 %i.w to i64
  store i64 %i.be, ptr %i.u, align 8, !tbaa !108
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.h
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 381768
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !150
  %i.bi = add nsw i64 %i.bh, 20
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef i32 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 noundef %i.bi, i32 noundef 0), !call_target !85 ; 0 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.bo, i64 noundef 64, i64 noundef 1), !call_target !93 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 267
  store i8 0, ptr %i.bt, align 1, !tbaa !94
  %i.bu = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bo, i32 noundef 32) #15 ; 3 uses
  %.not11 = icmp eq ptr %i.bu, null
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bx = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) %i.bw) #13 ; 0 uses
  store i8 0, ptr %i.bu, align 1, !tbaa !94
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.by = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.by, ptr %i.ca, align 2, !tbaa !100
  %i.cb = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.cb, ptr %i.bz, align 8, !tbaa !101
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.cc, align 8, !tbaa !102
  %.repack12 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack12, align 8, !tbaa !102
  %i.cd = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ce = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 193492
  store i16 %i.ce, ptr %i.cf, align 4, !tbaa !116
  %i.cg = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 193494
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !117
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 381824
  store i32 7, ptr %i.ci, align 8, !tbaa !120
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.cj, align 8, !tbaa !106
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13parse_kyoceraEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 33, i32 noundef 0), !call_target !85 ; 0 uses
  tail call void @_ZN6LibRaw13get_timestampEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 52, i32 noundef 0), !call_target !85 ; 0 uses
  %i.l = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.m = add i32 %i.l, -7
  %or.cond = icmp ult i32 %i.m, 13
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr [2 x i8], ptr @_ZZN6LibRaw13parse_kyoceraEvE5table, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -14
  %i.q = load i16, ptr %i.p, align 2, !tbaa !121
  %i.r = uitofp reassoc nsz arcp contract afn i16 %i.q to float
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float %i.r, ptr %i.s, align 8, !tbaa !151
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.u = uitofp reassoc nsz arcp contract afn i32 %i.t to float
  %i.v = fmul reassoc nnan nsz arcp contract afn float %i.u, 1.250000e-01 ; 2 uses
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.v, 6.400000e+01
  %exp2 = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.v)
  %i.w = fmul reassoc nnan nsz arcp contract afn float %exp2, 6.250000e-05
  %i.x = select i1 %or.cond.i.i, float 0.000000e+00, float %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192692
  store float %i.x, ptr %i.y, align 4, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.aa = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ab = uitofp reassoc nsz arcp contract afn i32 %i.aa to float
  store float %i.ab, ptr %i.z, align 4, !tbaa !105
  %i.ac = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ad = uitofp reassoc nsz arcp contract afn i32 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 153256
  store float %i.ad, ptr %i.ae, align 8, !tbaa !105
  %i.af = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ag = uitofp reassoc nsz arcp contract afn i32 %i.af to float
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.ag, ptr %i.ah, align 8, !tbaa !105
  %i.ai = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aj = uitofp reassoc nsz arcp contract afn i32 %i.ai to float
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.aj, ptr %i.ak, align 4, !tbaa !105
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i64 noundef 88, i32 noundef 0), !call_target !85 ; 0 uses
  %i.aq = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ar = uitofp reassoc nsz arcp contract afn i32 %i.aq to float
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.ar, 6.250000e-02 ; 2 uses
  %or.cond.i.i9 = fcmp reassoc nsz arcp contract afn ogt float %i.as, 6.400000e+01
  %exp211 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.as)
  %i.at = select reassoc nsz arcp contract afn i1 %or.cond.i.i9, float 0.000000e+00, float %exp211
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192696
  store float %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i64 noundef 112, i32 noundef 0), !call_target !85 ; 0 uses
  %i.ba = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bb = uitofp reassoc nsz arcp contract afn i32 %i.ba to float
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192700
  store float %i.bb, ptr %i.bc, align 4, !tbaa !119
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef 104, i32 noundef 0), !call_target !85 ; 0 uses
  %i.bi = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bj = uitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = fmul reassoc nnan nsz arcp contract afn float %i.bj, 6.250000e-02 ; 2 uses
  %or.cond.i.i10 = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 6.400000e+01
  %exp212 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bk)
  %i.bl = select reassoc nsz arcp contract afn i1 %or.cond.i.i10, float 0.000000e+00, float %exp212
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store float %i.bl, ptr %i.bm, align 8, !tbaa !152
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i64 noundef 124, i32 noundef 0), !call_target !85 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.bu = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.bs, i64 noundef 32, ptr noundef %i.bt) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 7, ptr %i.bv, align 2, !tbaa !153
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 2, ptr %i.bw, align 8, !tbaa !154
  %i.bx = load i8, ptr %i.bs, align 8, !tbaa !94
  %.not = icmp eq i8 %i.bx, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 7, ptr %i.by, align 2, !tbaa !155
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.bz, align 8, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw10parse_ciffExii(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN6LibRaw10parse_tiffEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw10apply_tiffEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16parse_thumb_noteExjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.e = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not5 = icmp eq i16 %i.e, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 193496
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 381592
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.in = phi i32 [ %i.f, %.lr.ph ], [ %i.j, %bb.f ]
  %i.j = add nsw i32 %.in, -1                     ; 2 uses
  call void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !112  ; 2 uses
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = zext i32 %i.m to i64
  %i.o = add nsw i64 %1, %i.n
  store i64 %i.o, ptr %i.g, align 8, !tbaa !115
  %.pre = load i32, ptr %i.a, align 4, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %.pre, %bb.c ], [ %i.k, %bb.b ]
  %i.q = icmp eq i32 %i.p, %3
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.r, ptr %i.h, align 8, !tbaa !158
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !159
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.t, i32 noundef 0), !call_target !85 ; 0 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !157

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14parse_broadcomEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) initializes((16, 24), (544, 548), (384336, 384338)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.anon.0, align 4             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 144, i32 noundef 1), !call_target !85 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef 1, i64 noundef 72), !call_target !93 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = load i16, ptr %i.n, align 4, !tbaa !162
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384336
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i16, ptr %i.m, align 4, !tbaa !163
  %i.t = load <2 x i16>, ptr %i.m, align 4, !tbaa !121
  %i.u = shufflevector <2 x i16> %i.t, <2 x i16> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.v = zext i16 %i.s to i32
  %i.w = add nuw nsw i32 %i.p, %i.v
  %i.x = mul nuw nsw i32 %i.w, 5
  %i.y = add nuw nsw i32 %i.x, 3
  %i.z = lshr i32 %i.y, 2
  %i.aa = trunc i32 %i.z to i16
  %i.ab = add i16 %i.aa, 31
  %i.ac = and i16 %i.ab, -32
  store i16 %i.ac, ptr %i.q, align 8, !tbaa !164
  store <4 x i16> %i.u, ptr %i.r, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store i32 370546198, ptr %i.ad, align 8, !tbaa !103
  %i.ae = load i8, ptr %i.a, align 4, !tbaa !161
  switch i8 %i.ae, label %bb.d [
    i8 0, label %.sink.split
    i8 1, label %bb.b
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.sink = phi i32 [ 1633771873, %bb.c ], [ 1229539657, %bb.b ], [ -1802201964, %bb.a ]
  store i32 %.sink, ptr %i.ad, align 8, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw10nikon_e995Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef -2000, i32 noundef 2), !call_target !85 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ]
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !call_target !97
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !112
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !112
  %i.q = add nuw nsw i32 %.07, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, 2000
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.b, !llvm.loop !165

.preheader.preheader:                             ; preds = %bb.b
  %i.r = load i32, ptr %i.a, align 16, !tbaa !112
  %i.s = icmp sgt i32 %i.r, 199
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.u, 199
  %or.cond.not23 = select i1 %i.s, i1 %i.v, i1 false
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp sgt i32 %i.x, 199
  %or.cond15.not20 = select i1 %or.cond.not23, i1 %i.y, i1 false
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1020
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp sgt i32 %i.aa, 199
  %or.cond18.not = select i1 %or.cond15.not20, i1 %i.ab, i1 false
  %.06 = zext i1 %or.cond18.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.06
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold noreturn }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !77, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 short", !12, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !9, i64 16, !15, i64 24, !9, i64 32, !8, i64 36, !14, i64 164, !8, i64 166}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTS16libraw_iparams_t", !8, i64 0, !8, i64 4, !8, i64 68, !8, i64 132, !8, i64 196, !8, i64 260, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !8, i64 348, !8, i64 384, !8, i64 420, !9, i64 428, !17, i64 432}
!19 = !{!"float", !8, i64 0}
!20 = !{!"_ZTS18libraw_nikonlens_t", !19, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"long long", !8, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !8, i64 8, !14, i64 136, !14, i64 138, !22, i64 144, !14, i64 152, !14, i64 154, !8, i64 156, !14, i64 220, !8, i64 222, !8, i64 238, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !22, i64 320, !8, i64 328, !22, i64 456, !8, i64 464, !22, i64 592, !8, i64 600, !14, i64 728, !19, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !8, i64 20, !8, i64 148, !8, i64 276, !8, i64 404, !14, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16, !9, i64 32, !8, i64 36, !14, i64 52, !14, i64 54, !8, i64 56, !14, i64 58, !14, i64 60, !14, i64 62, !14, i64 64, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !9, i64 84, !19, i64 88, !14, i64 92, !14, i64 94, !14, i64 96, !14, i64 98, !9, i64 100, !14, i64 104, !9, i64 108, !9, i64 112, !14, i64 116, !9, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !8, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 34, !8, i64 54, !8, i64 58, !8, i64 62, !8, i64 66, !8, i64 67, !8, i64 68, !8, i64 69, !8, i64 70, !8, i64 71, !8, i64 73, !8, i64 74, !8, i64 75, !8, i64 76, !8, i64 77, !8, i64 78, !8, i64 82, !8, i64 86, !14, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !8, i64 112, !8, i64 144, !8, i64 145, !8, i64 146, !9, i64 148, !9, i64 152, !9, i64 156, !8, i64 160, !8, i64 162, !14, i64 170, !27, i64 172, !14, i64 180, !14, i64 182, !14, i64 184, !9, i64 188, !8, i64 192, !8, i64 212, !9, i64 232, !8, i64 236, !9, i64 248, !17, i64 256, !14, i64 264, !14, i64 266, !8, i64 268, !14, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !9, i64 0, !15, i64 8, !8, i64 16, !8, i64 24, !8, i64 88, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !8, i64 168, !8, i64 200, !9, i64 264, !8, i64 268, !8, i64 276, !8, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !19, i64 0, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !8, i64 20, !8, i64 53, !19, i64 88, !14, i64 92, !14, i64 94, !8, i64 96, !14, i64 100, !9, i64 104, !9, i64 108, !14, i64 112, !8, i64 114, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !14, i64 128, !9, i64 132, !14, i64 136, !8, i64 138, !8, i64 151, !8, i64 156, !9, i64 164, !14, i64 168, !9, i64 172, !14, i64 176, !8, i64 178, !8, i64 196, !9, i64 324, !9, i64 328, !9, i64 332, !8, i64 336, !9, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !8, i64 0, !14, i64 6, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !8, i64 64, !8, i64 72, !14, i64 82, !8, i64 84, !14, i64 88, !14, i64 90, !8, i64 92, !8, i64 352, !14, i64 392, !8, i64 394, !8, i64 396, !8, i64 404, !14, i64 416, !14, i64 418, !14, i64 420, !14, i64 422, !15, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !9, i64 452, !14, i64 456, !14, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !14, i64 0, !8, i64 2, !8, i64 3, !9, i64 4, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 17, !14, i64 18, !8, i64 20, !8, i64 24, !8, i64 25, !14, i64 26, !8, i64 28, !8, i64 38, !8, i64 39, !8, i64 40, !14, i64 48, !8, i64 50, !8, i64 51, !8, i64 52, !14, i64 54, !9, i64 56, !14, i64 60, !8, i64 62, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !9, i64 80, !19, i64 84, !14, i64 88, !9, i64 92, !9, i64 96, !14, i64 100, !8, i64 102, !9, i64 124, !14, i64 128, !9, i64 132, !8, i64 136, !8, i64 137, !14, i64 138, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !9, i64 156, !14, i64 160, !8, i64 162, !19, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 48, !8, i64 84, !8, i64 120, !8, i64 156, !8, i64 192, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !19, i64 236, !19, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !14, i64 0, !14, i64 2, !8, i64 4, !9, i64 36, !19, i64 40, !8, i64 44, !14, i64 56, !14, i64 58, !9, i64 60, !9, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 12, !9, i64 16, !9, i64 20, !14, i64 24, !8, i64 26, !14, i64 30, !8, i64 32, !8, i64 33, !14, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !14, i64 0, !8, i64 4, !8, i64 12, !14, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !15, i64 56, !15, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 40, !15, i64 88, !9, i64 96, !8, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !14, i64 64, !8, i64 66, !19, i64 196, !8, i64 200, !9, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !8, i64 14, !8, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 64, !8, i64 112, !19, i64 128, !19, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !8, i64 224, !9, i64 240, !9, i64 244, !19, i64 248, !19, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !19, i64 288, !19, i64 292, !9, i64 296, !9, i64 300}
!43 = !{!"any p2 pointer", !12, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !19, i64 28, !8, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !19, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !9, i64 0, !8, i64 4, !9, i64 16420, !8, i64 16424, !19, i64 32840, !8, i64 32844, !8, i64 32860, !8, i64 32868, !9, i64 32884, !8, i64 32888, !8, i64 32904, !19, i64 32920, !19, i64 32924, !8, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !8, i64 0, !8, i64 131072, !9, i64 147488, !9, i64 147492, !9, i64 147496, !8, i64 147500, !19, i64 147516, !19, i64 147520, !8, i64 147524, !8, i64 147652, !8, i64 147668, !8, i64 147684, !8, i64 147732, !8, i64 147780, !8, i64 147828, !46, i64 147876, !19, i64 147912, !19, i64 147916, !8, i64 147920, !8, i64 147984, !8, i64 148048, !8, i64 148112, !8, i64 148176, !8, i64 148193, !12, i64 148264, !9, i64 148272, !8, i64 148276, !8, i64 148308, !47, i64 148648, !8, i64 181624, !8, i64 185720, !9, i64 187000, !8, i64 187004, !9, i64 187076, !9, i64 187080}
!49 = !{!"long", !8, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !8, i64 0, !8, i64 12, !8, i64 24, !19, i64 36, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !8, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !49, i64 16, !9, i64 24, !8, i64 28, !50, i64 156, !8, i64 204, !8, i64 716, !8, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !8, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !14, i64 4, !14, i64 6, !9, i64 8, !9, i64 12, !17, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !9, i64 0, !8, i64 8}
!55 = !{!"p1 float", !12, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !14, i64 12, !14, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !16, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !13, i64 0, !16, i64 8, !18, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !9, i64 5584, !9, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !12, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !12, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !12, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !9, i64 16, !17, i64 24, !22, i64 32, !22, i64 40, !8, i64 48}
!63 = !{!"p1 int", !12, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !9, i64 0, !22, i64 8, !22, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !8, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !8, i64 0, !8, i64 24, !14, i64 36, !8, i64 38, !8, i64 46, !8, i64 80, !8, i64 114, !14, i64 148, !14, i64 150, !8, i64 152, !8, i64 192, !8, i64 204, !8, i64 224, !8, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !14, i64 0, !8, i64 2, !8, i64 10, !9, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !66, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !22, i64 144, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !67, i64 192, !8, i64 440, !9, i64 2488, !9, i64 2492, !14, i64 2496, !14, i64 2498, !9, i64 2500, !9, i64 2504, !9, i64 2508, !9, i64 2512, !9, i64 2516, !9, i64 2520, !9, i64 2524, !8, i64 2528, !14, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !12, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !9, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !8, i64 384344, !70, i64 433496, !70, i64 433504, !8, i64 433512, !71, i64 768232, !72, i64 768248, !8, i64 768400, !8, i64 768416, !8, i64 768432, !12, i64 768448, !12, i64 768456, !12, i64 768464, !49, i64 768472, !12, i64 768480, !12, i64 768488, !12, i64 768496, !12, i64 768504}
!74 = !{!73, !60, i64 381592}
!75 = !{!"vtable pointer", !7, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!80 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!81 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !80, line: 109, baseType: !81)
!83 = !{!78, !79, !82, !78}
!84 = !DISubroutineType(types: !83)
!85 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !77, line: 102, type: !84, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 18, baseType: !89)
!91 = !{!78, !79, !87, !90, !90}
!92 = !DISubroutineType(types: !91)
!93 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !77, line: 101, type: !92, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!94 = !{!8, !8, i64 0}
!95 = !{!78, !79}
!96 = !DISubroutineType(types: !95)
!97 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !0, file: !77, line: 105, type: !96, scopeLine: 105, containingType: !0, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!98 = !{!73, !14, i64 381728}
!99 = !{!73, !49, i64 192704}
!100 = !{!73, !14, i64 18}
!101 = !{!73, !14, i64 16}
!102 = !{!73, !8, i64 768416}
!103 = !{!73, !9, i64 544}
!104 = !{!73, !9, i64 48}
!105 = !{!19, !19, i64 0}
!106 = !{!73, !9, i64 153096}
!107 = !{!73, !19, i64 192692}
!108 = !{!73, !22, i64 381760}
!109 = !{!82, !79}
!110 = !DISubroutineType(types: !109)
!111 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !0, file: !77, line: 103, type: !110, scopeLine: 103, containingType: !0, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!112 = !{!9, !9, i64 0}
!113 = !{!"_ZTS2tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !49, i64 40, !17, i64 48}
!114 = !{!113, !9, i64 32}
!115 = !{!73, !22, i64 381632}
!116 = !{!73, !14, i64 193492}
!117 = !{!73, !14, i64 193494}
!118 = !{!73, !19, i64 192696}
!119 = !{!73, !19, i64 192700}
!120 = !{!73, !66, i64 381824}
!121 = !{!14, !14, i64 0}
!122 = distinct !{!122, !86}
!123 = !{!73, !9, i64 524}
!124 = distinct !{!124, !86}
!125 = !{!73, !9, i64 528}
!126 = !{!73, !9, i64 5556}
!127 = distinct !{!127, !86}
!128 = distinct !{!128, !86}
!129 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !0, file: !77, line: 104, type: !110, scopeLine: 104, containingType: !0, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!130 = !{!73, !14, i64 20}
!131 = !{!73, !14, i64 22}
!132 = distinct !{!132, !86}
!133 = distinct !{!133, !86}
!134 = !{!"_ZTS17LibRaw_exceptions", !8, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !DISubprogram(name: "eof", linkageName: "_ZN26LibRaw_abstract_datastream3eofEv", scope: !0, file: !77, line: 108, type: !96, scopeLine: 108, containingType: !0, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!137 = !{ptr @_ZN6LibRaw13get_timestampEi}
!138 = !{!113, !9, i64 16}
!139 = !{!113, !9, i64 20}
!140 = distinct !{null}
!141 = distinct !{null}
!142 = distinct !{!142, !86}
!143 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!145 = !{!144, !79, !144, !78}
!146 = !DISubroutineType(types: !145)
!147 = !DISubprogram(name: "gets", linkageName: "_ZN26LibRaw_abstract_datastream4getsEPci", scope: !0, file: !77, line: 106, type: !146, scopeLine: 106, containingType: !0, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!148 = !{!73, !9, i64 153088}
!149 = distinct !{!149, !86}
!150 = !{!73, !22, i64 381768}
!151 = !{!73, !19, i64 192688}
!152 = !{!73, !19, i64 1496}
!153 = !{!73, !14, i64 1354}
!154 = !{!73, !14, i64 1352}
!155 = !{!73, !14, i64 1338}
!156 = !{!73, !14, i64 1336}
!157 = distinct !{!157, !86}
!158 = !{!73, !9, i64 193496}
!159 = !{!22, !22, i64 0}
!160 = !{!"_ZTSZN6LibRaw14parse_broadcomEvE3$_0", !8, i64 0, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !8, i64 40, !14, i64 64, !14, i64 66, !8, i64 68, !8, i64 69}
!161 = !{!160, !8, i64 68}
!162 = !{!160, !14, i64 36}
!163 = !{!160, !14, i64 32}
!164 = !{!73, !14, i64 384336}
!165 = distinct !{!165, !86}
end_hunk_1
