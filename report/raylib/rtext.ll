inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@stbtt__csctx_rmove_to:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %.not21.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not21.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %i.i, ptr %i.w, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp sgt i32 %i.ac, %i.k
  br i1 %i.ad, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %.not22.i.i = icmp eq i32 %i.af, 0
  br i1 %.not22.i.i, label %bb.m, label %stbtt__track_vertex.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.k, ptr %i.ab, align 8
  br label %stbtt__track_vertex.exit.i

stbtt__track_vertex.exit.i:                       ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ag, align 4
  br label %stbtt__csctx_v.exit

bb.n:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [14 x i8], ptr %i.ai, i64 %i.al ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i8 1, ptr %i.an, align 2
  %i.ao = trunc i32 %i.i to i16
  store i16 %i.ao, ptr %i.am, align 2
  %i.ap = trunc i32 %i.k to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 0, ptr %i.ar, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store i16 0, ptr %i.as, align 2
  %i.at = load ptr, ptr %i.ah, align 8
  %i.au = load i32, ptr %i.aj, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [14 x i8], ptr %i.at, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i16 0, ptr %i.ax, align 2
  %i.ay = load ptr, ptr %i.ah, align 8
  %i.az = load i32, ptr %i.aj, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [14 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  store i16 0, ptr %i.bc, align 2
  br label %stbtt__csctx_v.exit

stbtt__csctx_v.exit:                              ; preds = %stbtt__track_vertex.exit.i, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbtt__csctx_rline_to(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 8
  %i.c = fadd float %1, %i.b                      ; 2 uses
  store float %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = fadd float %2, %i.e                      ; 2 uses
  store float %i.f, ptr %i.d, align 4
  %i.g = fptosi float %i.c to i32                 ; 5 uses
  %i.h = fptosi float %i.f to i32                 ; 5 uses
  %i.i = load i32, ptr %0, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp slt i32 %i.k, %i.g
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.g, ptr %i.j, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %i.p, %i.h
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %.not20.i.i = icmp eq i32 %i.s, 0
  br i1 %.not20.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.h, ptr %i.o, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp sgt i32 %i.u, %i.g
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %.not21.i.i = icmp eq i32 %i.x, 0
  br i1 %.not21.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %i.g, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp sgt i32 %i.z, %i.h
  br i1 %i.aa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %.not22.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not22.i.i, label %bb.m, label %stbtt__track_vertex.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.h, ptr %i.y, align 8
  br label %stbtt__track_vertex.exit.i

stbtt__track_vertex.exit.i:                       ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ad, align 4
  br label %stbtt__csctx_v.exit

bb.n:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [14 x i8], ptr %i.af, i64 %i.ai ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i8 2, ptr %i.ak, align 2
  %i.al = trunc i32 %i.g to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = trunc i32 %i.h to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 0, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i16 0, ptr %i.ap, align 2
  %i.aq = load ptr, ptr %i.ae, align 8
  %i.ar = load i32, ptr %i.ag, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [14 x i8], ptr %i.aq, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i16 0, ptr %i.au, align 2
  %i.av = load ptr, ptr %i.ae, align 8
  %i.aw = load i32, ptr %i.ag, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [14 x i8], ptr %i.av, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  store i16 0, ptr %i.az, align 2
  br label %stbtt__csctx_v.exit

stbtt__csctx_v.exit:                              ; preds = %stbtt__track_vertex.exit.i, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbtt__csctx_rccurve_to(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %8 = load <2 x float>, ptr %i.a, align 8
  %9 = insertelement <2 x float> poison, float %1, i64 0
  %10 = insertelement <2 x float> %9, float %2, i64 1
  %11 = fadd <2 x float> %10, %8                  ; 3 uses
  %12 = extractelement <2 x float> %11, i64 0
  %i.b = fadd float %3, %12                       ; 2 uses
  %13 = extractelement <2 x float> %11, i64 1
  %i.c = fadd float %4, %13                       ; 2 uses
  %i.d = fadd float %5, %i.b                      ; 2 uses
  store float %i.d, ptr %i.a, align 8
  %i.e = fadd float %6, %i.c                      ; 2 uses
  store float %i.e, ptr %7, align 4
  %i.f = insertelement <4 x float> poison, float %i.d, i64 0
  %i.g = insertelement <4 x float> %i.f, float %i.e, i64 1
  %14 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %i.g, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.h = fptosi <4 x float> %15 to <4 x i32>      ; 5 uses
  %i.i = fptosi float %i.b to i32                 ; 5 uses
  %i.j = fptosi float %i.c to i32                 ; 5 uses
  %i.k = load i32, ptr %0, align 8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = extractelement <4 x i32> %i.h, i64 0     ; 6 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.n, ptr %i.l, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = extractelement <4 x i32> %i.h, i64 1     ; 6 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %.not20.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.u, ptr %i.s, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.u, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %i.n
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %.not21.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not21.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %i.n, ptr %i.z, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi i32 [ %i.n, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %i.u
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %.not22.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not22.i.i, label %bb.m, label %stbtt__track_vertex.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.u, ptr %i.af, align 8
  br label %stbtt__track_vertex.exit.i

stbtt__track_vertex.exit.i:                       ; preds = %bb.m, %bb.l
  %i.ak = phi i32 [ %i.ag, %bb.l ], [ %i.u, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 1, ptr %i.al, align 4
  %i.am = extractelement <4 x i32> %i.h, i64 2    ; 6 uses
  %i.an = icmp slt i32 %i.r, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %stbtt__track_vertex.exit.i
  store i32 %i.am, ptr %i.l, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %stbtt__track_vertex.exit.i
  %i.ao = phi i32 [ %i.r, %stbtt__track_vertex.exit.i ], [ %i.am, %bb.n ]
  %i.ap = extractelement <4 x i32> %i.h, i64 3    ; 6 uses
  %i.aq = icmp slt i32 %i.y, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ap, ptr %i.s, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i32 [ %i.y, %bb.o ], [ %i.ap, %bb.p ]
  %i.as = icmp sgt i32 %i.ae, %i.am
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.am, ptr %i.z, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = phi i32 [ %i.ae, %bb.q ], [ %i.am, %bb.r ]
  %i.au = icmp sgt i32 %i.ak, %i.ap
  br i1 %i.au, label %bb.t, label %stbtt__track_vertex.exit28.i

bb.t:                                             ; preds = %bb.s
  store i32 %i.ap, ptr %i.af, align 8
  br label %stbtt__track_vertex.exit28.i

stbtt__track_vertex.exit28.i:                     ; preds = %bb.t, %bb.s
  %i.av = phi i32 [ %i.ak, %bb.s ], [ %i.ap, %bb.t ]
  %i.aw = icmp slt i32 %i.ao, %i.i
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %stbtt__track_vertex.exit28.i
  store i32 %i.i, ptr %i.l, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %stbtt__track_vertex.exit28.i
  %i.ax = icmp slt i32 %i.ar, %i.j
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.j, ptr %i.s, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ay = icmp sgt i32 %i.at, %i.i
  br i1 %i.ay, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.i, ptr %i.z, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.az = icmp sgt i32 %i.av, %i.j
  br i1 %i.az, label %bb.aa, label %stbtt__track_vertex.exit33.i

bb.aa:                                            ; preds = %bb.z
  store i32 %i.j, ptr %i.af, align 8
  br label %stbtt__track_vertex.exit33.i

stbtt__track_vertex.exit33.i:                     ; preds = %bb.aa, %bb.z
  store i32 1, ptr %i.al, align 4
  br label %stbtt__csctx_v.exit

bb.ab:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [14 x i8], ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i8 4, ptr %i.bg, align 2
  %i.bh = trunc <4 x i32> %i.h to <4 x i16>
  store <4 x i16> %i.bh, ptr %i.bf, align 2
  %i.bi = trunc i32 %i.i to i16
  %i.bj = load ptr, ptr %i.ba, align 8
  %i.bk = load i32, ptr %i.bc, align 8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [14 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i16 %i.bi, ptr %i.bn, align 2
  %i.bo = trunc i32 %i.j to i16
  %i.bp = load ptr, ptr %i.ba, align 8
  %i.bq = load i32, ptr %i.bc, align 8
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [14 x i8], ptr %i.bp, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  store i16 %i.bo, ptr %i.bt, align 2
  br label %stbtt__csctx_v.exit

stbtt__csctx_v.exit:                              ; preds = %stbtt__track_vertex.exit33.i, %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbtt__csctx_close_shape(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 8
  %i.d = load <2 x float>, ptr %i.a, align 8      ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fcmp une float %i.e, %i.c
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4
end_hunk_0
