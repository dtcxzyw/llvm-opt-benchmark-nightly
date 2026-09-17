Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_rgba_hex:bb.a

bb.y:                                             ; preds = %bb.x
  %i.bb = add i8 %i.az, -65
  %or.cond24.1.i19 = icmp ult i8 %i.bb, 6
  br i1 %or.cond24.1.i19, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = sext i8 %i.az to i32
  %i.bd = add nsw i32 %i.bc, -48
  br label %nk_parse_hex.exit22

bb.aa:                                            ; preds = %bb.y
  %i.be = zext nneg i8 %i.az to i32
  %i.bf = add nsw i32 %i.be, -55
  br label %nk_parse_hex.exit22

bb.ab:                                            ; preds = %bb.x
  %i.bg = zext nneg i8 %i.az to i32
  %i.bh = add nsw i32 %i.bg, -87
  br label %nk_parse_hex.exit22

nk_parse_hex.exit22:                              ; preds = %bb.z, %bb.aa, %bb.ab
  %.pn.1.i20 = phi i32 [ %i.bh, %bb.ab ], [ %i.bf, %bb.aa ], [ %i.bd, %bb.z ]
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !56  ; 4 uses
  %i.bk = add i8 %i.bj, -97
  %or.cond.i23 = icmp ult i8 %i.bk, 6
  br i1 %or.cond.i23, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %nk_parse_hex.exit22
  %i.bl = zext nneg i8 %i.bj to i32
  %i.bm = add nsw i32 %i.bl, -87
  br label %bb.ag

bb.ad:                                            ; preds = %nk_parse_hex.exit22
  %i.bn = add i8 %i.bj, -65
  %or.cond24.i24 = icmp ult i8 %i.bn, 6
  %i.bo = zext i8 %i.bj to i32                    ; 2 uses
  br i1 %or.cond24.i24, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bp = add nsw i32 %i.bo, -55
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bq = add nsw i32 %i.bo, -48
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %.pn.i25 = phi i32 [ %i.bm, %bb.ac ], [ %i.bp, %bb.ae ], [ %i.bq, %bb.af ]
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !56  ; 4 uses
  %i.bt = add i8 %i.bs, -97
  %or.cond.1.i26 = icmp ult i8 %i.bt, 6
  br i1 %or.cond.1.i26, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bu = add i8 %i.bs, -65
  %or.cond24.1.i27 = icmp ult i8 %i.bu, 6
  %i.bv = zext i8 %i.bs to i32                    ; 2 uses
  br i1 %or.cond24.1.i27, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bw = add nsw i32 %i.bv, -48
  br label %nk_parse_hex.exit30

bb.aj:                                            ; preds = %bb.ah
  %i.bx = add nsw i32 %i.bv, -55
  br label %nk_parse_hex.exit30

bb.ak:                                            ; preds = %bb.ag
  %i.by = zext nneg i8 %i.bs to i32
  %i.bz = add nsw i32 %i.by, -87
  br label %nk_parse_hex.exit30

nk_parse_hex.exit30:                              ; preds = %bb.ai, %bb.aj, %bb.ak
  %.pn.1.i28 = phi i32 [ %i.bz, %bb.ak ], [ %i.bx, %bb.aj ], [ %i.bw, %bb.ai ]
  %i.ca = shl nsw i32 %.pn.i, 4
  %.1.1.i = add nsw i32 %.pn.1.i, %i.ca
  %i.cb = shl i32 %.pn.i25, 28
  %i.cc = shl i32 %.pn.1.i28, 24
  %.sroa.4.0.insert.ext = add i32 %i.cc, %i.cb
  %i.cd = shl nsw i32 %.pn.i17, 20
  %i.ce = shl nsw i32 %.pn.1.i20, 16
  %.sroa.3.0.insert.ext = add nsw i32 %i.ce, %i.cd
  %.sroa.3.0.insert.shift = and i32 %.sroa.3.0.insert.ext, 16711680
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.ext, %.sroa.3.0.insert.shift
  %i.cf = shl nsw i32 %.pn.i9, 12
  %i.cg = shl nsw i32 %.pn.1.i12, 8
  %.sroa.2.0.insert.ext = add nsw i32 %i.cg, %i.cf
  %.sroa.2.0.insert.shift = and i32 %.sroa.2.0.insert.ext, 65280
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = and i32 %.1.1.i, 255
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hex_rgba(ptr nofree noundef writeonly captures(none) initializes((0, 9)) %0, i32 %1) local_unnamed_addr #11 {
bb.a:
  %.sroa.13.0.extract.shift = lshr i32 %1, 16
  %.sroa.19.0.extract.shift = lshr i32 %1, 24
  %.sroa.7.0.extract.shift = lshr i32 %1, 8
  %i.a = lshr i32 %1, 12
  %i.b = lshr i32 %1, 4
  %i.c = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.d = insertelement <4 x i32> %i.c, i32 %1, i64 1
  %i.e = insertelement <4 x i32> %i.d, i32 %i.a, i64 2
  %i.f = insertelement <4 x i32> %i.e, i32 %.sroa.7.0.extract.shift, i64 3
  %i.g = and <4 x i32> %i.f, splat (i32 15)       ; 3 uses
  %i.h = icmp samesign ult <4 x i32> %i.g, splat (i32 10)
  %i.i = or disjoint <4 x i32> %i.g, splat (i32 48)
  %i.j = add nuw nsw <4 x i32> %i.g, splat (i32 55)
  %i.k = select <4 x i1> %i.h, <4 x i32> %i.i, <4 x i32> %i.j
  %i.l = trunc nuw nsw <4 x i32> %i.k to <4 x i8>
  store <4 x i8> %i.l, ptr %0, align 1, !tbaa !56
  %i.m = lshr i32 %1, 20
  %i.n = and i32 %i.m, 15                         ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  %i.p = or disjoint i32 %i.n, 48
  %i.q = add nuw nsw i32 %i.n, 55
  %i.r = select i1 %i.o, i32 %i.p, i32 %i.q
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.s, ptr %i.t, align 1, !tbaa !56
  %i.u = and i32 %.sroa.13.0.extract.shift, 15    ; 3 uses
  %i.v = icmp samesign ult i32 %i.u, 10
  %i.w = or disjoint i32 %i.u, 48
  %i.x = add nuw nsw i32 %i.u, 55
  %i.y = select i1 %i.v, i32 %i.w, i32 %i.x
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !56
  %i.ab = lshr i32 %1, 28                         ; 2 uses
  %i.ac = icmp ult i32 %1, -1610612736
  %i.ad = or disjoint i32 %i.ab, 48
  %i.ae = add nuw nsw i32 %i.ab, 55
  %i.af = select i1 %i.ac, i32 %i.ad, i32 %i.ae
  %i.ag = trunc nuw nsw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !56
  %i.ai = and i32 %.sroa.19.0.extract.shift, 15   ; 3 uses
  %i.aj = icmp samesign ult i32 %i.ai, 10
  %i.ak = or disjoint i32 %i.ai, 48
  %i.al = add nuw nsw i32 %i.ai, 55
  %i.am = select i1 %i.aj, i32 %i.ak, i32 %i.al
  %i.an = trunc nuw nsw i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ap, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_color_hex_rgb(ptr nofree noundef writeonly captures(none) initializes((0, 7)) %0, i32 %1) local_unnamed_addr #11 {
bb.a:
  %.sroa.13.0.extract.shift = lshr i32 %1, 16
  %.sroa.7.0.extract.shift = lshr i32 %1, 8
  %i.a = lshr i32 %1, 12
  %i.b = lshr i32 %1, 4
  %i.c = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.d = insertelement <4 x i32> %i.c, i32 %1, i64 1
  %i.e = insertelement <4 x i32> %i.d, i32 %i.a, i64 2
  %i.f = insertelement <4 x i32> %i.e, i32 %.sroa.7.0.extract.shift, i64 3
  %i.g = and <4 x i32> %i.f, splat (i32 15)       ; 3 uses
  %i.h = icmp samesign ult <4 x i32> %i.g, splat (i32 10)
  %i.i = or disjoint <4 x i32> %i.g, splat (i32 48)
  %i.j = add nuw nsw <4 x i32> %i.g, splat (i32 55)
  %i.k = select <4 x i1> %i.h, <4 x i32> %i.i, <4 x i32> %i.j
  %i.l = trunc nuw nsw <4 x i32> %i.k to <4 x i8>
  store <4 x i8> %i.l, ptr %0, align 1, !tbaa !56
  %i.m = lshr i32 %1, 20
  %i.n = and i32 %i.m, 15                         ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  %i.p = or disjoint i32 %i.n, 48
  %i.q = add nuw nsw i32 %i.n, 55
  %i.r = select i1 %i.o, i32 %i.p, i32 %i.q
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.s, ptr %i.t, align 1, !tbaa !56
  %i.u = and i32 %.sroa.13.0.extract.shift, 15    ; 3 uses
  %i.v = icmp samesign ult i32 %i.u, 10
  %i.w = or disjoint i32 %i.u, 48
  %i.x = add nuw nsw i32 %i.u, 55
  %i.y = select i1 %i.v, i32 %i.w, i32 %i.x
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 0, ptr %i.ab, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nk_rgba_iv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !55
  %i.b = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.a, <4 x i32> zeroinitializer)
  %i.c = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.b, <4 x i32> splat (i32 255))
  %1 = trunc nuw <4 x i32> %i.c to <4 x i8>
  %2 = bitcast <4 x i8> %1 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nk_rgba_bv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -16777216, 0) i32 @nk_rgb(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %i.b = tail call i32 @llvm.umin.i32(i32 %i.a, i32 255)
  %i.c = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.d = tail call i32 @llvm.umin.i32(i32 %i.c, i32 255)
  %i.e = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 255)
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %i.f, 16
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %i.d, 8
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %i.b
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, -16777216
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -16777216, 0) i32 @nk_rgb_iv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !55
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.f, i32 255)
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 255)
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 255)
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %i.k, 16
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %i.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %i.g
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, -16777216
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -16777216, 0) i32 @nk_rgb_bv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !56
  %i.b = zext i8 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %i.f, %i.b
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, -16777216
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @nk_rgba_u32(i32 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @nk_rgba_f(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ogt float %2, 1.000000e+00
  %i.b = select i1 %i.a, float 1.000000e+00, float %2 ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %i.d = fmul float %i.b, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %.sroa.3.0.insert.ext = select i1 %i.c, i32 %i.g, i32 0 ; 2 uses
  %i.h = fcmp ogt float %3, 1.000000e+00
  %i.i = select i1 %i.h, float 1.000000e+00, float %3 ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = fmul float %i.i, 2.550000e+02
  %i.l = fptoui float %i.k to i8
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw i32 %i.m, 24
  %i.o = or disjoint i32 %i.n, %.sroa.3.0.insert.ext
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.insert.ext = phi i32 [ %i.o, %bb.b ], [ %.sroa.3.0.insert.ext, %bb.a ]
  %i.p = fcmp ogt float %1, 1.000000e+00
  %i.q = select i1 %i.p, float 1.000000e+00, float %1 ; 2 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  %i.s = fmul float %i.q, 2.550000e+02
  %i.t = fptoui float %i.s to i8
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %.sroa.2.0.insert.ext = select i1 %i.r, i32 %i.v, i32 0
  %i.w = fcmp ogt float %0, 1.000000e+00
  %i.x = select i1 %i.w, float 1.000000e+00, float %0 ; 2 uses
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  %i.z = fmul float %i.x, 2.550000e+02
  %i.aa = fptoui float %i.z to i8
  %i.ab = zext i8 %i.aa to i32
  %.sroa.0.0.insert.ext = select i1 %i.y, i32 %i.ab, i32 0
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.ext, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or i32 %.sroa.2.0.insert.insert, %.sroa.4.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nk_rgba_fv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !54 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !54 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !54 ; 2 uses
  %i.f = fcmp ogt float %i.c, 1.000000e+00
  %i.g = select i1 %i.f, float 1.000000e+00, float %i.c ; 2 uses
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  %i.i = fmul float %i.g, 2.550000e+02
  %i.j = fptoui float %i.i to i8
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %.sroa.3.0.insert.ext.i = select i1 %i.h, i32 %i.l, i32 0 ; 2 uses
  %i.m = fcmp ogt float %i.e, 1.000000e+00
  %i.n = select i1 %i.m, float 1.000000e+00, float %i.e ; 2 uses
  %i.o = fcmp ogt float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.b, label %nk_rgba_f.exit

bb.b:                                             ; preds = %bb.a
  %i.p = fmul float %i.n, 2.550000e+02
  %i.q = fptoui float %i.p to i8
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw i32 %i.r, 24
  %i.t = or disjoint i32 %i.s, %.sroa.3.0.insert.ext.i
  br label %nk_rgba_f.exit

nk_rgba_f.exit:                                   ; preds = %bb.a, %bb.b
  %.sroa.4.0.insert.ext.i = phi i32 [ %i.t, %bb.b ], [ %.sroa.3.0.insert.ext.i, %bb.a ]
  %i.u = fcmp ogt <2 x float> %i.a, splat (float 1.000000e+00)
  %i.v = select <2 x i1> %i.u, <2 x float> splat (float 1.000000e+00), <2 x float> %i.a ; 3 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  %i.y = fmul <2 x float> %i.v, splat (float 2.550000e+02)
  %i.z = fptoui <2 x float> %i.y to <2 x i8>      ; 2 uses
  %i.aa = extractelement <2 x i8> %i.z, i64 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %.sroa.2.0.insert.ext.i = select i1 %i.x, i32 %i.ac, i32 0
  %i.ad = extractelement <2 x float> %i.v, i64 0
  %i.ae = fcmp ogt float %i.ad, 0.000000e+00
  %i.af = extractelement <2 x i8> %i.z, i64 0
  %i.ag = zext i8 %i.af to i32
  %.sroa.0.0.insert.ext.i = select i1 %i.ae, i32 %i.ag, i32 0
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or i32 %.sroa.2.0.insert.insert.i, %.sroa.4.0.insert.ext.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @nk_rgba_cf(<2 x float> %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp ogt <2 x float> %1, splat (float 1.000000e+00)
  %i.b = select <2 x i1> %i.a, <2 x float> splat (float 1.000000e+00), <2 x float> %1 ; 3 uses
  %i.c = extractelement <2 x float> %i.b, i64 0
  %i.d = fmul float %i.c, 2.550000e+02
  %i.e = fptoui float %i.d to i8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = fcmp ogt <2 x float> %i.b, zeroinitializer ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %.sroa.3.0.insert.ext.i = select i1 %i.i, i32 %i.g, i32 0 ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 1
  br i1 %i.j, label %bb.b, label %nk_rgba_f.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractelement <2 x float> %i.b, i64 1
  %i.l = fmul float %i.k, 2.550000e+02
  %i.m = fptoui float %i.l to i8
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw i32 %i.n, 24
  %i.p = or disjoint i32 %.sroa.3.0.insert.ext.i, %i.o
  br label %nk_rgba_f.exit

nk_rgba_f.exit:                                   ; preds = %bb.a, %bb.b
  %.sroa.4.0.insert.ext.i = phi i32 [ %i.p, %bb.b ], [ %.sroa.3.0.insert.ext.i, %bb.a ]
  %i.q = fcmp ogt <2 x float> %0, splat (float 1.000000e+00)
  %i.r = select <2 x i1> %i.q, <2 x float> splat (float 1.000000e+00), <2 x float> %0 ; 2 uses
  %i.s = fcmp ogt <2 x float> %i.r, zeroinitializer ; 2 uses
  %i.t = extractelement <2 x i1> %i.s, i64 1
  %i.u = fmul <2 x float> %i.r, splat (float 2.550000e+02) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 1
  %i.w = fptoui float %i.v to i8
end_hunk_0
begin_hunk_1_@nk_dtoa:bb.a
  %i.ag = select i1 %i.af, double %i.ae, double %.0.lcssa.i108 ; 3 uses
  %i.ah = fcmp ogt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %nk_pow.exit109
  %i.ai = fdiv double %.288110, %i.ag             ; 2 uses
  %i.aj = fptosi double %i.ai to i32
  %i.ak = fcmp olt double %i.ai, 0.000000e+00
  %.neg.i = sext i1 %i.ak to i32
  %i.al = add i32 %.neg.i, %i.aj                  ; 2 uses
  %i.am = sitofp i32 %i.al to double
  %i.an = fneg double %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ag, double %.288110)
  %i.ap = trunc i32 %i.al to i8
  %i.aq = add i8 %i.ap, 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.1112, i64 1
  store i8 %i.aq, ptr %.1112, align 1, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %nk_pow.exit109
  %.389 = phi double [ %i.ao, %bb.h ], [ %.288110, %nk_pow.exit109 ] ; 3 uses
  %.2 = phi ptr [ %i.ar, %bb.h ], [ %.1112, %nk_pow.exit109 ] ; 3 uses
  %i.as = fcmp ogt double %.389, 0.000000e+00
  %or.cond3 = select i1 %.not16.i99, i1 %i.as, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 46, ptr %.2, align 1, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.at, %bb.j ], [ %.2, %bb.i ]  ; 6 uses
  %i.au = add nsw i32 %.284111, -1
  %i.av = fcmp ogt double %.389, f0x3D06849B86A12B9B
  %i.aw = icmp sgt i32 %.284111, 0
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.l, !llvm.loop !1278

bb.l:                                             ; preds = %bb.k
  br i1 %i.o, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  store i8 101, ptr %.3, align 1, !tbaa !56
  %i.az = icmp sgt i32 %.079, 0
  br i1 %i.az, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  store i8 43, ptr %i.ay, align 1, !tbaa !56
  %.4133 = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.ba = sub nsw i32 0, %.079
  store i8 45, ptr %i.ay, align 1, !tbaa !56
  %.4 = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %.not140 = icmp eq i32 %.079, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.n
  %.5115.ph = phi ptr [ %.4, %bb.n ], [ %.4133, %.thread ]
  %.281114.ph = phi i32 [ %i.ba, %bb.n ], [ %.079, %.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.5115 = phi ptr [ %i.be, %.lr.ph ], [ %.5115.ph, %.lr.ph.preheader ] ; 2 uses
  %.281114 = phi i32 [ %i.bf, %.lr.ph ], [ %.281114.ph, %.lr.ph.preheader ] ; 3 uses
  %.385113 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bb = urem i32 %.281114, 10
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = getelementptr inbounds nuw i8, ptr %.5115, i64 1 ; 4 uses
  store i8 %i.bd, ptr %.5115, align 1, !tbaa !56
  %i.bf = udiv i32 %.281114, 10
  %i.bg = add nuw nsw i32 %.385113, 1             ; 2 uses
  %.not = icmp samesign ult i32 %.281114, 10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1279

._crit_edge:                                      ; preds = %.lr.ph
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %i.bi ; 2 uses
  %.not141 = icmp eq i32 %.385113, 0
  br i1 %.not141, label %.loopexit, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge
  %i.bk = zext nneg i32 %.385113 to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %indvars.iv124 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next125, %.lr.ph121 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph121.preheader ], [ %indvars.iv.next, %.lr.ph121 ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %indvars.iv ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv124 ; 4 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !56
  %i.bp = xor i8 %i.bo, %i.bm                     ; 2 uses
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !56
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !56
  %i.br = xor i8 %i.bq, %i.bp                     ; 2 uses
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !56
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !56
  %i.bt = xor i8 %i.bs, %i.br
  store i8 %i.bt, ptr %i.bn, align 1, !tbaa !56
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bu = icmp slt i64 %indvars.iv.next125, %indvars.iv.next
  br i1 %i.bu, label %.lr.ph121, label %.loopexit, !llvm.loop !1280

.loopexit:                                        ; preds = %.lr.ph121, %bb.n, %._crit_edge, %bb.l
  %.6 = phi ptr [ %.3, %bb.l ], [ %i.be, %._crit_edge ], [ %.4, %bb.n ], [ %i.be, %.lr.ph121 ]
  store i8 0, ptr %.6, align 1, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.b
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn }
attributes #38 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #49 = { nounwind allocsize(0) }
attributes #50 = { nounwind }
attributes #51 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}
!llvm.errno.tbaa = !{!52}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = distinct !{!6, !57}
!7 = distinct !{!7, !57}
!8 = distinct !{!8, !57}
!9 = distinct !{!9, !57}
!10 = distinct !{!10, !57}
!11 = distinct !{!11, !57}
!12 = distinct !{!12, !57}
!13 = distinct !{!13, !57}
!14 = distinct !{!14, !57}
!15 = distinct !{!15, !57}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !57}
!19 = distinct !{!19, !57}
!20 = distinct !{!20, !57}
!21 = distinct !{!21, !57}
!22 = distinct !{!22, !57}
!23 = distinct !{!23, !57}
!24 = distinct !{!24, !57}
!25 = distinct !{!25, !57}
!26 = distinct !{!26, !57}
!27 = distinct !{!27, !57}
!28 = distinct !{!28, !57}
!29 = distinct !{!29, !57}
!30 = distinct !{!30, !57}
!31 = distinct !{!31, !57}
!32 = distinct !{!32, !57}
!33 = distinct !{!33, !57}
!34 = distinct !{!34, !57}
!35 = distinct !{!35, !57}
!36 = distinct !{!36, !57}
!37 = distinct !{null, null, null}
!38 = distinct !{!38, !57}
!39 = distinct !{null}
!40 = distinct !{!40, !57}
!41 = distinct !{ptr @nk_selectable_text, null}
!42 = distinct !{!42, !57}
!43 = distinct !{!43, !57}
!44 = distinct !{null}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 2}
!47 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!"omnipotent char", !48, i64 0}
!50 = !{!"int", !49, i64 0}
!51 = !{!"__libc_errno", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"float", !49, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!50, !50, i64 0}
!56 = !{!49, !49, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"any pointer", !49, i64 0}
!59 = !{!"p1 omnipotent char", !58, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!"double", !49, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"nk_allocator", !49, i64 0, !58, i64 8, !58, i64 16}
!65 = !{!"long", !49, i64 0}
!66 = !{!"nk_memory", !58, i64 0, !65, i64 8}
!67 = !{!"nk_buffer", !49, i64 0, !64, i64 32, !50, i64 56, !66, i64 64, !53, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112}
!68 = !{!67, !50, i64 56}
!69 = !{!67, !58, i64 64}
!70 = !{!67, !65, i64 72}
!71 = !{!67, !65, i64 112}
!72 = !{!67, !53, i64 80}
!73 = !{!58, !58, i64 0}
!74 = !{!64, !58, i64 8}
!75 = !{i64 0, i64 8, !56, i64 8, i64 8, !73, i64 16, i64 8, !73}
!76 = !{!67, !65, i64 96}
!77 = !{!67, !65, i64 88}
!78 = !{!67, !58, i64 48}
!79 = !{!65, !65, i64 0}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!"branch_weights", i32 4, i32 28}
!83 = !{!"branch_weights", i32 8, i32 24}
!84 = !{!"_Bool", !49, i64 0}
!85 = !{!"nk_buffer_marker", !84, i64 0, !65, i64 8}
!86 = !{!85, !84, i64 0}
!87 = !{!85, !65, i64 8}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!"nk_str", !67, i64 0, !50, i64 120}
!91 = !{!90, !50, i64 120}
!92 = !{ptr @nk_buffer_init}
!93 = !{!90, !65, i64 88}
!94 = !{!90, !58, i64 64}
!95 = !{ptr @nk_buffer_free}
!96 = !{!"p1 _ZTS9nk_buffer", !58, i64 0}
!97 = !{!"nk_rect", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!98 = !{!"nk_command_buffer", !96, i64 0, !97, i64 8, !50, i64 24, !49, i64 32, !65, i64 40, !65, i64 48, !65, i64 56}
!99 = !{!98, !96, i64 0}
!100 = !{!98, !65, i64 56}
!101 = !{!"nk_command", !50, i64 0, !65, i64 8}
!102 = !{!101, !50, i64 0}
!103 = !{!101, !65, i64 8}
!104 = !{!98, !65, i64 48}
end_hunk_1
