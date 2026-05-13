inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_parse_real:bb.a
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.j, label %.outer

bb.j:                                             ; preds = %bb.i
  %i.o = add nuw nsw i64 %.0141.ph.ph, 1
  %i.p = mul nsw i64 %.0159.ph, 10
  %i.q = zext nneg i32 %i.h to i64
  %i.r = add nsw i64 %i.p, %i.q
  br label %.outer.outer

bb.k:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %i.h, 10
  br i1 %i.s, label %.preheader221.outer.outer, label %.loopexit223

.preheader221.outer.outer:                        ; preds = %bb.k, %bb.o
  %.ph.ph = phi i8 [ %i.aa, %bb.o ], [ %i.e, %bb.k ]
  %.1169.ph.ph = phi i32 [ %i.ae, %bb.o ], [ %i.i, %bb.k ]
  %.2161.ph.ph = phi i64 [ 0, %bb.o ], [ %.0159.ph, %bb.k ]
  %.2145.ph.ph = phi i64 [ %i.ah, %bb.o ], [ %.0143, %bb.k ] ; 2 uses
  %.0136.ph.ph = phi i64 [ %.0136.ph, %bb.o ], [ 0, %bb.k ]
  %.2.ph.ph = phi ptr [ %.3, %bb.o ], [ %.1, %bb.k ]
  br label %.preheader221.outer

.preheader221.outer:                              ; preds = %.preheader221.outer.outer, %bb.q
  %.ph = phi i8 [ %i.aa, %bb.q ], [ %.ph.ph, %.preheader221.outer.outer ]
  %.1169.ph = phi i32 [ %i.ae, %bb.q ], [ %.1169.ph.ph, %.preheader221.outer.outer ]
  %.2161.ph = phi i64 [ %i.al, %bb.q ], [ %.2161.ph.ph, %.preheader221.outer.outer ] ; 4 uses
  %.0136.ph = phi i64 [ %i.ai, %bb.q ], [ %.0136.ph.ph, %.preheader221.outer.outer ] ; 4 uses
  %.2.ph = phi ptr [ %.3, %bb.q ], [ %.2.ph.ph, %.preheader221.outer.outer ]
  %i.t = icmp ne i64 %.2161.ph, 0
  %i.u = icmp slt i64 %.2161.ph, 214748364
  %i.v = icmp slt i64 %.0136.ph, 9
  %or.cond5 = select i1 %i.u, i1 %i.v, i1 false
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.outer, %bb.p
  %i.w = phi i8 [ %i.aa, %bb.p ], [ %.ph, %.preheader221.outer ]
  %.1169 = phi i32 [ %i.ae, %bb.p ], [ %.1169.ph, %.preheader221.outer ] ; 3 uses
  %.2 = phi ptr [ %.3, %bb.p ], [ %.2.ph, %.preheader221.outer ] ; 3 uses
  %.not195 = icmp eq i32 %.1169, 0
  br i1 %.not195, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader221
  %i.x = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.z = icmp ule ptr %i.y, %1
  %.not196 = icmp ult ptr %1, %i.x
  %or.cond206 = select i1 %i.z, i1 true, i1 %.not196
  br i1 %or.cond206, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i8, ptr %i.x, align 1, !tbaa !165
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.preheader221
  %i.aa = phi i8 [ %i.w, %.preheader221 ], [ %.pre, %._crit_edge ] ; 5 uses
  %.3 = phi ptr [ %.2, %.preheader221 ], [ %i.x, %._crit_edge ] ; 4 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = lshr i32 %i.ab, %.1169
  %i.ad = and i32 %i.ac, 15                       ; 4 uses
  %i.ae = sub nuw nsw i32 4, %.1169               ; 4 uses
  %i.af = icmp samesign ugt i32 %i.ad, 9
  br i1 %i.af, label %.loopexit223, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp ne i32 %i.ad, 0
  %or.cond3 = select i1 %i.ag, i1 true, i1 %i.t
  br i1 %or.cond3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = add nsw i64 %.2145.ph.ph, -1
  br label %.preheader221.outer.outer

bb.p:                                             ; preds = %bb.n
  br i1 %or.cond5, label %bb.q, label %.preheader221

bb.q:                                             ; preds = %bb.p
  %i.ai = add nsw i64 %.0136.ph, 1
  %i.aj = mul nsw i64 %.2161.ph, 10
  %i.ak = zext nneg i32 %i.ad to i64
  %i.al = add nsw i64 %i.aj, %i.ak
  br label %.preheader221.outer

.loopexit223:                                     ; preds = %bb.m, %bb.k
  %i.am = phi i8 [ %i.e, %bb.k ], [ %i.aa, %bb.m ]
  %.2170 = phi i32 [ %i.i, %bb.k ], [ %i.ae, %bb.m ]
  %.4163 = phi i64 [ %.0159.ph, %bb.k ], [ %.2161.ph, %bb.m ] ; 12 uses
  %.4147 = phi i64 [ %.0143, %bb.k ], [ %.2145.ph.ph, %bb.m ]
  %.2138 = phi i64 [ 0, %bb.k ], [ %.0136.ph, %bb.m ] ; 6 uses
  %.0134 = phi i32 [ %i.h, %bb.k ], [ %i.ad, %bb.m ] ; 2 uses
  %.4 = phi ptr [ %.1, %bb.k ], [ %.3, %bb.m ]
  %.not200.not = icmp eq i32 %.0134, 12           ; 2 uses
  %i.an = add nsw i32 %.0134, -11
  %i.ao = icmp ult i32 %i.an, 2
  br i1 %i.ao, label %.preheader, label %.thread

.preheader:                                       ; preds = %.loopexit223, %bb.t
  %i.ap = phi i8 [ %i.at, %bb.t ], [ %i.am, %.loopexit223 ]
  %.3171 = phi i32 [ %i.ay, %bb.t ], [ %.2170, %.loopexit223 ] ; 3 uses
  %.0154 = phi i64 [ %.1155, %bb.t ], [ 0, %.loopexit223 ] ; 5 uses
  %.0148 = phi i32 [ %.1149, %bb.t ], [ 0, %.loopexit223 ] ; 2 uses
  %.5 = phi ptr [ %.6, %bb.t ], [ %.4, %.loopexit223 ] ; 3 uses
  %.not197 = icmp eq i32 %.3171, 0
  br i1 %.not197, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.as = icmp ule ptr %i.ar, %1
  %.not198 = icmp ult ptr %1, %i.aq
  %or.cond207 = select i1 %i.as, i1 true, i1 %.not198
  br i1 %or.cond207, label %._crit_edge253, label %.loopexit

._crit_edge253:                                   ; preds = %bb.r
  %.pre254 = load i8, ptr %i.aq, align 1, !tbaa !165
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge253, %.preheader
  %i.at = phi i8 [ %i.ap, %.preheader ], [ %.pre254, %._crit_edge253 ] ; 2 uses
  %.6 = phi ptr [ %.5, %.preheader ], [ %i.aq, %._crit_edge253 ]
  %i.au = zext i8 %i.at to i32
  %i.av = lshr i32 %i.au, %.3171
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %i.ax = icmp samesign ugt i32 %i.aw, 9
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = sub nuw nsw i32 4, %.3171
  %i.az = icmp sgt i64 %.0154, 1000               ; 2 uses
  %i.ba = mul nsw i64 %.0154, 10
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = add nsw i64 %i.ba, %i.bb
  %.1155 = select i1 %i.az, i64 %.0154, i64 %i.bc
  %.1149 = select i1 %i.az, i32 1, i32 %.0148
  br label %.preheader

bb.u:                                             ; preds = %bb.s
  %.not201 = icmp eq i64 %.4163, 0
  br i1 %.not201, label %.loopexit, label %bb.v

.thread:                                          ; preds = %.loopexit223
  %.not201213 = icmp eq i64 %.4163, 0
  br i1 %.not201213, label %.loopexit, label %.thread216

bb.v:                                             ; preds = %bb.u
  %i.bd = sub nsw i64 0, %.0154
  %spec.select208 = select i1 %.not200.not, i64 %i.bd, i64 %.0154
  %.not202 = icmp eq i32 %.0148, 0
  br i1 %.not202, label %.thread216, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not200.not, label %bb.as, label %.loopexit

.thread216:                                       ; preds = %.thread, %bb.v
  %.2156214220 = phi i64 [ %spec.select208, %bb.v ], [ 0, %.thread ]
  %i.be = add nsw i64 %.4147, %2
  %i.bf = add nsw i64 %i.be, %.2156214220         ; 6 uses
  br i1 %.not, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %.thread216
  %i.bg = add nsw i64 %.2138, %.0141.ph.ph        ; 3 uses
  %i.bh = add nsw i64 %i.bf, %.0141.ph.ph         ; 5 uses
  %i.bi = icmp slt i64 %i.bg, 6
  br i1 %i.bi, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %bb.x
  %i.bj = icmp sgt i64 %.4163, 32767
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bk = tail call i64 @FT_DivFix(i64 noundef %.4163, i64 noundef 10) #20
  %reass.sub = sub i64 %i.bf, %.2138
  %i.bl = add i64 %reass.sub, 1
  store i64 %i.bl, ptr %3, align 8, !tbaa !134
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.bm = icmp sgt i64 %i.bh, 0
  br i1 %i.bm, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 5) ; 2 uses
  %i.bo = sub nsw i64 %i.bn, %i.bg                ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bq = sub nsw i64 %i.bh, %i.bn                ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @power_tens, i64 %i.bo
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !134
  %i.bt = mul nsw i64 %i.bs, %.4163               ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, 32767
  br i1 %i.bu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bv = udiv i64 %i.bt, 10
  %i.bw = add nuw nsw i64 %i.bq, 1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.bx = sub nsw i64 %i.bf, %.2138
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.by = sub nsw i64 %i.bf, %.2138
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.af
  %.6165 = phi i64 [ %.4163, %bb.af ], [ %i.bv, %bb.ad ], [ %i.bt, %bb.ac ], [ %.4163, %bb.ae ]
  %.4158 = phi i64 [ %i.by, %bb.af ], [ %i.bw, %bb.ad ], [ %i.bq, %bb.ac ], [ %i.bx, %bb.ae ]
  %i.bz = shl i64 %.6165, 16
  store i64 %.4158, ptr %3, align 8, !tbaa !134
  br label %.loopexit

bb.ah:                                            ; preds = %bb.x
  %i.ca = getelementptr [8 x i8], ptr @power_tens, i64 %i.bg ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !134 ; 2 uses
  %i.cd = sdiv i64 %.4163, %i.cc
  %i.ce = icmp sgt i64 %i.cd, 32767
  br i1 %i.ce, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cf = getelementptr i8, ptr %i.ca, i64 -32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !134
  %i.ch = tail call i64 @FT_DivFix(i64 noundef %.4163, i64 noundef %i.cg) #20
  %i.ci = add nsw i64 %i.bh, -4
  store i64 %i.ci, ptr %3, align 8, !tbaa !134
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ah
  %i.cj = tail call i64 @FT_DivFix(i64 noundef %.4163, i64 noundef %i.cc) #20
  %i.ck = add nsw i64 %i.bh, -5
  store i64 %i.ck, ptr %3, align 8, !tbaa !134
  br label %.loopexit

bb.ak:                                            ; preds = %.thread216
  %i.cl = add nsw i64 %i.bf, %.0141.ph.ph         ; 4 uses
  %i.cm = sub nsw i64 %.2138, %i.bf
  %i.cn = icmp sgt i64 %i.cl, 5
  br i1 %i.cn, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.co = icmp slt i64 %i.cl, -5
  br i1 %i.co, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = icmp slt i64 %i.cl, 0
  br i1 %i.cp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cq = sub nsw i64 0, %i.cl
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @power_tens, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !134
  %i.ct = sdiv i64 %.4163, %i.cs
  %i.cu = add i64 %.2138, %.0141.ph.ph
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.7 = phi i64 [ %i.ct, %bb.an ], [ %.4163, %bb.am ] ; 2 uses
  %.3139 = phi i64 [ %i.cu, %bb.an ], [ %i.cm, %bb.am ] ; 2 uses
  %i.cv = icmp eq i64 %.3139, 10                  ; 2 uses
  %i.cw = sdiv i64 %.7, 10
  %.8 = select i1 %i.cv, i64 %i.cw, i64 %.7       ; 3 uses
  %.4140 = select i1 %i.cv, i64 9, i64 %.3139     ; 3 uses
  %i.cx = icmp sgt i64 %.4140, 0
  br i1 %i.cx, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @power_tens, i64 %.4140
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !134 ; 2 uses
  %i.da = sdiv i64 %.8, %i.cz
  %i.db = icmp sgt i64 %i.da, 32767
  br i1 %i.db, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dc = tail call i64 @FT_DivFix(i64 noundef %.8, i64 noundef %i.cz) #20
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ao
  %i.dd = sub nsw i64 0, %.4140
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @power_tens, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !134
  %i.dg = mul nsw i64 %i.df, %.8                  ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 32767
  %i.di = shl i64 %i.dg, 16
  %spec.select210 = select i1 %i.dh, i64 2147483647, i64 %i.di
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.l, %bb.r, %.thread, %bb.ar, %bb.w, %bb.ak, %bb.ai, %bb.aj, %bb.z, %bb.ag, %bb.aq, %bb.ap, %bb.u, %bb.as
  %.0166 = phi i64 [ 2147483647, %bb.w ], [ 0, %bb.as ], [ 0, %bb.u ], [ %i.bk, %bb.z ], [ %i.bz, %bb.ag ], [ %i.ch, %bb.ai ], [ %i.cj, %bb.aj ], [ 0, %bb.ap ], [ %i.dc, %bb.aq ], [ 0, %bb.r ], [ %spec.select210, %bb.ar ], [ 2147483647, %bb.ak ], [ 0, %.thread ], [ 0, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.not204 = icmp eq i32 %.0152.ph324, 0
  %i.dj = sub nsw i64 0, %.0166
  %spec.select209 = select i1 %.not204, i64 %.0166, i64 %i.dj
  ret i64 %spec.select209

bb.as:                                            ; preds = %bb.al, %bb.w
  br label %.loopexit
}

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #9

declare i64 @FT_RoundFix(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i64 @do_fixed(ptr noundef readonly captures(none) %0, ptr readonly captures(address) %.0.val, i64 noundef range(i64 0, 4) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %.0.val, align 1, !tbaa !165 ; 5 uses
  switch i8 %i.a, label %bb.g [
    i8 30, label %bb.b
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !499
  %i.d = tail call fastcc i64 @cff_parse_real(ptr noundef nonnull %.0.val, ptr noundef %i.c, i64 noundef %1, ptr noundef null)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 1
  %i.f = load i32, ptr %i.e, align 1              ; 2 uses
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %.not40 = icmp eq i64 %1, 0
  br i1 %.not40, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @power_ten_limits, i64 %1
  %i.j = load i64, ptr %i.i, align 8, !tbaa !134
  %i.k = icmp slt i64 %i.j, %i.h
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not41 = icmp eq i32 %i.f, 0
  %i.l = select i1 %.not41, i64 -2147483647, i64 2147483647
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @power_tens, i64 %1
  %i.n = load i64, ptr %i.m, align 8, !tbaa !134
  %i.o = mul nsw i64 %i.n, %i.h
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !499  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 1 ; 7 uses
  %i.s = zext i8 %i.a to i32                      ; 3 uses
  switch i8 %i.a, label %bb.l [
    i8 28, label %bb.h
    i8 29, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.u = icmp ule ptr %i.t, %i.q
  %.not37.i = icmp ult ptr %i.q, %i.r
  %or.cond.i = select i1 %i.u, i1 true, i1 %.not37.i
  br i1 %or.cond.i, label %bb.i, label %cff_parse_integer.exit

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.r, align 1, !tbaa !165
  %i.w = zext i8 %i.v to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !165
  %i.aa = zext i8 %i.z to i16
  %i.ab = or disjoint i16 %i.x, %i.aa
  %i.ac = sext i16 %i.ab to i64
  br label %cff_parse_integer.exit

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 5
  %i.ae = icmp ule ptr %i.ad, %i.q
  %.not36.i = icmp ult ptr %i.q, %i.r
  %or.cond38.i = select i1 %i.ae, i1 true, i1 %.not36.i
  br i1 %or.cond38.i, label %bb.k, label %cff_parse_integer.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.r, align 1
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  br label %cff_parse_integer.exit

bb.l:                                             ; preds = %bb.g
  %i.ai = icmp ult i8 %i.a, -9
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = add nsw i32 %i.s, -139
  %i.ak = sext i32 %i.aj to i64
  br label %cff_parse_integer.exit

bb.n:                                             ; preds = %bb.l
  %i.al = icmp samesign ult i8 %i.a, -5
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.an = icmp ule ptr %i.am, %i.q
  %.not35.i = icmp ult ptr %i.q, %i.r
  %or.cond39.i = select i1 %i.an, i1 true, i1 %.not35.i ; 2 uses
  br i1 %i.al, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %or.cond39.i, label %bb.p, label %cff_parse_integer.exit

end_hunk_0
