Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.15?download=true
inline.NumInlined: 413
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir:bb.a
  %spec.store.select.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i12, i64 %.sroa.42.0.i.i.i.i14)
  %i.bu = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i13, ptr nonnull %.sroa.01.0.i.i.i.i15, i64 %spec.store.select.i.i.i.i16) ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp eq i32 %i.bu, 0
  %i.bx = sub i64 %.sroa.4.0.i.i.i.i12, %.sroa.42.0.i.i.i.i14
  %spec.select.i.i.i.i17 = select i1 %i.bw, i64 %i.bx, i64 %i.bv
  %i.by = xor i64 %spec.select.i.i.i.i17, %spec.select.i.i.i.i
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit, label %bb.t

bb.t:                                             ; preds = %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  switch i64 %i.ag, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
  ]

bb.u:                                             ; preds = %bb.y, %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 1
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !143, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !143, !noundef !4
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !143, !nonnull !4, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !143, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.4.0.i.i.i.i19 = phi i64 [ %i.ae, %bb.v ], [ %i.ce, %bb.w ], [ %i.ci, %bb.x ] ; 2 uses
  %.sroa.0.0.i.i.i.i20 = phi ptr [ %i.ca, %bb.v ], [ %i.cc, %bb.w ], [ %i.cj, %bb.x ]
  switch i64 %i.bj, label %bb.u [
    i64 0, label %bb.z
    i64 1, label %bb.aa
    i64 2, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 1
  br label %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit25

bb.aa:                                            ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !144, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !144, !noundef !4
  br label %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit25

bb.ab:                                            ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !144, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !144, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  br label %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit25

_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit25: ; preds = %bb.z, %bb.aa, %bb.ab
  %.sroa.42.0.i.i.i.i21 = phi i64 [ %i.bh, %bb.z ], [ %i.co, %bb.aa ], [ %i.cs, %bb.ab ] ; 2 uses
  %.sroa.01.0.i.i.i.i22 = phi ptr [ %i.ck, %bb.z ], [ %i.cm, %bb.aa ], [ %i.ct, %bb.ab ]
  %spec.store.select.i.i.i.i23 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i19, i64 %.sroa.42.0.i.i.i.i21)
  %i.cu = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i20, ptr nonnull %.sroa.01.0.i.i.i.i22, i64 %spec.store.select.i.i.i.i23) ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp eq i32 %i.cu, 0
  %i.cx = sub i64 %.sroa.4.0.i.i.i.i19, %.sroa.42.0.i.i.i.i21
  %spec.select.i.i.i.i24 = select i1 %i.cw, i64 %i.cx, i64 %i.cv
  %i.cy = xor i64 %spec.select.i.i.i.i24, %spec.select.i.i.i.i
  %i.cz = icmp slt i64 %i.cy, 0
  %..i = select i1 %i.cz, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit: ; preds = %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit18, %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit25
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit18 ], [ %..i, %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit25 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 10 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 10 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = tail call i32 @llvm.ucmp.i32.i32(i32 %i.r, i32 %i.s) ; 2 uses
  %i.u = tail call i8 @llvm.scmp.i8.i32(i32 %i.t, i32 0)
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.d, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %.sroa.0.0, align 8, !range !6, !alias.scope !195, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.y = trunc nuw i64 %i.w to i1
  %i.z = load i64, ptr %.sroa.04.0, align 8, !range !6, !alias.scope !196, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1                ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.aa, label %bb.g, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.f:                                             ; preds = %bb.d
  br i1 %i.aa, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %.val15.i.i.i.i = load double, ptr %i.x, align 8, !alias.scope !195, !noundef !4 ; 3 uses
  %.val16.i.i.i.i = load double, ptr %i.ab, align 8, !alias.scope !197, !noundef !4 ; 3 uses
  %i.ac = fcmp uno double %.val15.i.i.i.i, 0.000000e+00
  %i.ad = fcmp oge double %.val15.i.i.i.i, %.val16.i.i.i.i
  %i.ae = or i1 %i.ac, %i.ad
  %i.af = fcmp ord double %.val16.i.i.i.i, 0.000000e+00
  %i.ag = fcmp ult double %.val16.i.i.i.i, %.val15.i.i.i.i
  %.not4.i.i.i.i.i = and i1 %i.af, %i.ag
  %..i.i.i.i.i = zext i1 %.not4.i.i.i.i.i to i8
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ae, i8 %..i.i.i.i.i, i8 -1 ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.h, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !6, !alias.scope !195, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.al = trunc nuw i64 %i.aj to i1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !6, !alias.scope !196, !noundef !4
  %i.ao = trunc nuw i64 %i.an to i1               ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.ao, label %bb.k, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.j:                                             ; preds = %bb.h
  %..i.i.i.i = sext i1 %i.ao to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %.val.i.i.i.i = load double, ptr %i.ak, align 8, !alias.scope !195, !noundef !4 ; 3 uses
  %.val14.i.i.i.i = load double, ptr %i.ap, align 8, !alias.scope !197, !noundef !4 ; 3 uses
  %i.aq = fcmp uno double %.val.i.i.i.i, 0.000000e+00
  %i.ar = fcmp oge double %.val.i.i.i.i, %.val14.i.i.i.i
  %i.as = or i1 %i.aq, %i.ar
  %i.at = fcmp ord double %.val14.i.i.i.i, 0.000000e+00
  %i.au = fcmp ult double %.val14.i.i.i.i, %.val.i.i.i.i
  %.not4.i17.i.i.i.i = and i1 %i.at, %i.au
  %..i18.i.i.i.i = zext i1 %.not4.i17.i.i.i.i to i8
  %.sroa.0.0.i19.i.i.i.i = select i1 %i.as, i8 %..i18.i.i.i.i, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.0.i19.i.i.i.i, %bb.k ], [ %i.u, %bb.c ], [ %..i.i.i.i, %bb.j ], [ 1, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %bb.g ], [ -1, %bb.f ], [ 1, %bb.i ] ; 3 uses
  %i.av = icmp slt i8 %.sroa.0.0.i.i.i.i, 0       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.n, align 1
  %i.ay = load i32, ptr %i.aw, align 1
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.bb = tail call i32 @llvm.ucmp.i32.i32(i32 %i.az, i32 %i.ba) ; 2 uses
  %i.bc = tail call i8 @llvm.scmp.i8.i32(i32 %i.bb, i32 0)
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %bb.l, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24

bb.l:                                             ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit
  %i.be = load i64, ptr %.sroa.0.0, align 8, !range !6, !alias.scope !206, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.bg = trunc nuw i64 %i.be to i1
  %i.bh = load i64, ptr %.sroa.08.0, align 8, !range !6, !alias.scope !207, !noundef !4
  %i.bi = trunc nuw i64 %i.bh to i1               ; 2 uses
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.bi, label %bb.o, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24.thr_comm

bb.n:                                             ; preds = %bb.l
  br i1 %i.bi, label %._RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24_crit_edge, label %bb.p

._RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24_crit_edge: ; preds = %bb.n
  br i1 %i.av, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %.val15.i.i.i.i19 = load double, ptr %i.bf, align 8, !alias.scope !206, !noundef !4 ; 3 uses
  %.val16.i.i.i.i20 = load double, ptr %i.bj, align 8, !alias.scope !208, !noundef !4 ; 3 uses
  %i.bk = fcmp uno double %.val15.i.i.i.i19, 0.000000e+00
  %i.bl = fcmp oge double %.val15.i.i.i.i19, %.val16.i.i.i.i20
  %i.bm = or i1 %i.bk, %i.bl
  %i.bn = fcmp ord double %.val16.i.i.i.i20, 0.000000e+00
  %i.bo = fcmp ult double %.val16.i.i.i.i20, %.val15.i.i.i.i19
  %.not4.i.i.i.i.i21 = and i1 %i.bn, %i.bo
  %..i.i.i.i.i22 = zext i1 %.not4.i.i.i.i.i21 to i8
  %.sroa.0.0.i.i.i.i.i23 = select i1 %i.bm, i8 %..i.i.i.i.i22, i8 -1 ; 2 uses
  %i.bp = icmp eq i8 %.sroa.0.0.i.i.i.i.i23, 0
  br i1 %i.bp, label %bb.p, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !6, !alias.scope !206, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.bt = trunc nuw i64 %i.br to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !6, !alias.scope !207, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1               ; 2 uses
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.bw, label %bb.s, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24.thr_comm

bb.r:                                             ; preds = %bb.p
  %..i.i.i.i13 = sext i1 %i.bw to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24

bb.s:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  %.val.i.i.i.i14 = load double, ptr %i.bs, align 8, !alias.scope !206, !noundef !4 ; 3 uses
  %.val14.i.i.i.i15 = load double, ptr %i.bx, align 8, !alias.scope !208, !noundef !4 ; 3 uses
  %i.by = fcmp uno double %.val.i.i.i.i14, 0.000000e+00
  %i.bz = fcmp oge double %.val.i.i.i.i14, %.val14.i.i.i.i15
  %i.ca = or i1 %i.by, %i.bz
  %i.cb = fcmp ord double %.val14.i.i.i.i15, 0.000000e+00
  %i.cc = fcmp ult double %.val14.i.i.i.i15, %.val.i.i.i.i14
  %.not4.i17.i.i.i.i16 = and i1 %i.cb, %i.cc
  %..i18.i.i.i.i17 = zext i1 %.not4.i17.i.i.i.i16 to i8
  %.sroa.0.0.i19.i.i.i.i18 = select i1 %i.ca, i8 %..i18.i.i.i.i17, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24.thr_comm: ; preds = %bb.q, %bb.m
  br i1 %i.av, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit, label %bb.t

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit, %bb.o, %bb.r, %bb.s
  %.sroa.0.0.i.i.i.i12 = phi i8 [ %.sroa.0.0.i19.i.i.i.i18, %bb.s ], [ %i.bc, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit ], [ %..i.i.i.i13, %bb.r ], [ %.sroa.0.0.i.i.i.i.i23, %bb.o ]
  %i.cd = xor i8 %.sroa.0.0.i.i.i.i12, %.sroa.0.0.i.i.i.i
  %i.ce = icmp slt i8 %i.cd, 0
  br i1 %i.ce, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit, label %bb.t

bb.t:                                             ; preds = %._RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24_crit_edge, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24.thr_comm, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.cf = load i32, ptr %i.o, align 1
  %i.cg = load i32, ptr %i.aw, align 1
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.cj = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ch, i32 %i.ci) ; 2 uses
  %i.ck = tail call i8 @llvm.scmp.i8.i32(i32 %i.cj, i32 0)
  %i.cl = icmp eq i32 %i.cj, 0
  br i1 %i.cl, label %bb.u, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37

bb.u:                                             ; preds = %bb.t
  %i.cm = load i64, ptr %.sroa.04.0, align 8, !range !6, !alias.scope !217, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.co = trunc nuw i64 %i.cm to i1
  %i.cp = load i64, ptr %.sroa.08.0, align 8, !range !6, !alias.scope !218, !noundef !4
  %i.cq = trunc nuw i64 %i.cp to i1               ; 2 uses
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.cq, label %bb.x, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37

bb.w:                                             ; preds = %bb.u
  br i1 %i.cq, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %.val15.i.i.i.i32 = load double, ptr %i.cn, align 8, !alias.scope !217, !noundef !4 ; 3 uses
  %.val16.i.i.i.i33 = load double, ptr %i.cr, align 8, !alias.scope !219, !noundef !4 ; 3 uses
  %i.cs = fcmp uno double %.val15.i.i.i.i32, 0.000000e+00
  %i.ct = fcmp oge double %.val15.i.i.i.i32, %.val16.i.i.i.i33
  %i.cu = or i1 %i.cs, %i.ct
  %i.cv = fcmp ord double %.val16.i.i.i.i33, 0.000000e+00
  %i.cw = fcmp ult double %.val16.i.i.i.i33, %.val15.i.i.i.i32
  %.not4.i.i.i.i.i34 = and i1 %i.cv, %i.cw
  %..i.i.i.i.i35 = zext i1 %.not4.i.i.i.i.i34 to i8
  %.sroa.0.0.i.i.i.i.i36 = select i1 %i.cu, i8 %..i.i.i.i.i35, i8 -1 ; 2 uses
  %i.cx = icmp eq i8 %.sroa.0.0.i.i.i.i.i36, 0
  br i1 %i.cx, label %bb.y, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !6, !alias.scope !217, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %i.db = trunc nuw i64 %i.cz to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !6, !alias.scope !218, !noundef !4
  %i.de = trunc nuw i64 %i.dd to i1               ; 2 uses
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %i.de, label %bb.ab, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37

bb.aa:                                            ; preds = %bb.y
  %..i.i.i.i26 = sext i1 %i.de to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37

bb.ab:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  %.val.i.i.i.i27 = load double, ptr %i.da, align 8, !alias.scope !217, !noundef !4 ; 3 uses
  %.val14.i.i.i.i28 = load double, ptr %i.df, align 8, !alias.scope !219, !noundef !4 ; 3 uses
  %i.dg = fcmp uno double %.val.i.i.i.i27, 0.000000e+00
  %i.dh = fcmp oge double %.val.i.i.i.i27, %.val14.i.i.i.i28
  %i.di = or i1 %i.dg, %i.dh
  %i.dj = fcmp ord double %.val14.i.i.i.i28, 0.000000e+00
  %i.dk = fcmp ult double %.val14.i.i.i.i28, %.val.i.i.i.i27
  %.not4.i17.i.i.i.i29 = and i1 %i.dj, %i.dk
  %..i18.i.i.i.i30 = zext i1 %.not4.i17.i.i.i.i29 to i8
  %.sroa.0.0.i19.i.i.i.i31 = select i1 %i.di, i8 %..i18.i.i.i.i30, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37: ; preds = %bb.t, %bb.v, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab
  %.sroa.0.0.i.i.i.i25 = phi i8 [ %.sroa.0.0.i19.i.i.i.i31, %bb.ab ], [ %i.ck, %bb.t ], [ %..i.i.i.i26, %bb.aa ], [ 1, %bb.v ], [ %.sroa.0.0.i.i.i.i.i36, %bb.x ], [ -1, %bb.w ], [ 1, %bb.z ]
  %i.dl = xor i8 %.sroa.0.0.i.i.i.i25, %.sroa.0.0.i.i.i.i
  %i.dm = icmp slt i8 %i.dl, 0
  %..i = select i1 %i.dm, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit: ; preds = %._RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24_crit_edge, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24.thr_comm, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24 ], [ %..i, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit37 ], [ %.sroa.0.0, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24.thr_comm ], [ %.sroa.0.0, %._RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit24_crit_edge ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !4, !align !7, !noundef !4 ; 11 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !4, !align !7, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.n = load i8, ptr %.sroa.0.0.val13, align 8, !range !5, !alias.scope !253, !noundef !4 ; 2 uses
  %i.o = icmp samesign ugt i8 %i.n, 23
  %i.p = zext nneg i8 %i.n to i64                 ; 3 uses
  %i.q = add nsw i64 %i.p, -23
  %i.r = select i1 %i.o, i64 %i.q, i64 0          ; 2 uses
  switch i64 %i.r, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.h, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 1
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !253, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !253, !noundef !4
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !253, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !253, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.u, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = load i8, ptr %.sroa.04.0.val14, align 8, !range !5, !alias.scope !254, !noundef !4 ; 2 uses
  %i.ad = icmp samesign ugt i8 %i.ac, 23
  %i.ae = zext nneg i8 %i.ac to i64               ; 3 uses
  %i.af = add nsw i64 %i.ae, -23
  %i.ag = select i1 %i.ad, i64 %i.af, i64 0       ; 2 uses
  switch i64 %i.ag, label %bb.d [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 1
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !254, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !254, !noundef !4
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit

bb.k:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !254, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !254, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit

_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.42.0.i.i.i.i.i = phi i64 [ %i.ae, %bb.i ], [ %i.al, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.ah, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ]
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.42.0.i.i.i.i.i)
  %i.ar = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i, ptr nonnull %.sroa.01.0.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i) ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = sub i64 %.sroa.4.0.i.i.i.i.i, %.sroa.42.0.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.at, i64 %i.au, i64 %i.as ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !4, !align !7, !noundef !4 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  switch i64 %i.r, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.p, %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  unreachable

bb.m:                                             ; preds = %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 1
  br label %bb.p

bb.n:                                             ; preds = %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !261, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !261, !noundef !4
  br label %bb.p

bb.o:                                             ; preds = %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !261, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !261, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.4.0.i.i.i.i.i15 = phi i64 [ %i.p, %bb.m ], [ %i.az, %bb.n ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i16 = phi ptr [ %i.av, %bb.m ], [ %i.ax, %bb.n ], [ %i.be, %bb.o ]
  %i.bf = load i8, ptr %.sroa.08.0.val12, align 8, !range !5, !alias.scope !262, !noundef !4 ; 2 uses
  %i.bg = icmp samesign ugt i8 %i.bf, 23
  %i.bh = zext nneg i8 %i.bf to i64               ; 3 uses
  %i.bi = add nsw i64 %i.bh, -23
  %i.bj = select i1 %i.bg, i64 %i.bi, i64 0       ; 2 uses
  switch i64 %i.bj, label %bb.l [
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 1
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21

bb.r:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !262, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !262, !noundef !4
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21

bb.s:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !262, !nonnull !4, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !262, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21

_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.42.0.i.i.i.i.i17 = phi i64 [ %i.bh, %bb.q ], [ %i.bo, %bb.r ], [ %i.bs, %bb.s ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i18 = phi ptr [ %i.bk, %bb.q ], [ %i.bm, %bb.r ], [ %i.bt, %bb.s ]
  %spec.store.select.i.i.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i.i15, i64 %.sroa.42.0.i.i.i.i.i17)
  %i.bu = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i16, ptr nonnull %.sroa.01.0.i.i.i.i.i18, i64 %spec.store.select.i.i.i.i.i19) ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp eq i32 %i.bu, 0
  %i.bx = sub i64 %.sroa.4.0.i.i.i.i.i15, %.sroa.42.0.i.i.i.i.i17
  %spec.select.i.i.i.i.i20 = select i1 %i.bw, i64 %i.bx, i64 %i.bv
  %i.by = xor i64 %spec.select.i.i.i.i.i20, %spec.select.i.i.i.i.i
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3RNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit, label %bb.t

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir:bb.a

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !503, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !503, !noundef !4
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !503, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !503, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.42.0.i.i.i.i10 = phi i64 [ %i.ba, %bb.r ], [ %i.bh, %bb.s ], [ %i.bl, %bb.t ] ; 2 uses
  %.sroa.01.0.i.i.i.i11 = phi ptr [ %i.bd, %bb.r ], [ %i.bf, %bb.s ], [ %i.bm, %bb.t ]
  %spec.store.select.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i8, i64 %.sroa.42.0.i.i.i.i10)
  %i.bn = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i9, ptr nonnull %.sroa.01.0.i.i.i.i11, i64 %spec.store.select.i.i.i.i12) ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %i.bq = sub i64 %.sroa.4.0.i.i.i.i8, %.sroa.42.0.i.i.i.i10
  %spec.select.i.i.i.i13 = select i1 %i.bp, i64 %i.bq, i64 %i.bo
  %i.br = icmp slt i64 %spec.select.i.i.i.i13, 0
  br i1 %i.br, label %bb.l, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -40 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %i.e = load i32, ptr %i.c, align 1
  %i.f = load i32, ptr %i.d, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.e)
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %i.i = tail call i32 @llvm.ucmp.i32.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %i.j = tail call i8 @llvm.scmp.i8.i32(i32 %i.i, i32 0)
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.b, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %1, align 8, !range !6, !alias.scope !545, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = trunc nuw i64 %i.l to i1
  %i.o = load i64, ptr %i.b, align 8, !range !6, !alias.scope !546, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1                 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.e, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread

bb.d:                                             ; preds = %bb.b
  br i1 %i.p, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %1, i64 -32
  %.val15.i.i.i.i = load double, ptr %i.m, align 8, !alias.scope !545, !noundef !4 ; 3 uses
  %.val16.i.i.i.i = load double, ptr %i.q, align 8, !alias.scope !547, !noundef !4 ; 3 uses
  %i.r = fcmp uno double %.val15.i.i.i.i, 0.000000e+00
  %i.s = fcmp oge double %.val15.i.i.i.i, %.val16.i.i.i.i
  %i.t = or i1 %i.r, %i.s
  %i.u = fcmp ord double %.val16.i.i.i.i, 0.000000e+00
  %i.v = fcmp ult double %.val16.i.i.i.i, %.val15.i.i.i.i
  %.not4.i.i.i.i.i = and i1 %i.u, %i.v
  %..i.i.i.i.i = zext i1 %.not4.i.i.i.i.i to i8
  %.sroa.0.0.i.i.i.i.i = select i1 %i.t, i8 %..i.i.i.i.i, i8 -1 ; 2 uses
  %i.w = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.w, label %bb.f, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !6, !alias.scope !545, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = trunc nuw i64 %i.y to i1
  %i.ab = getelementptr inbounds i8, ptr %1, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !range !6, !alias.scope !546, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1               ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %bb.i, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread

bb.h:                                             ; preds = %bb.f
  %..i.i.i.i = sext i1 %i.ad to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %1, i64 -16
  %.val.i.i.i.i = load double, ptr %i.z, align 8, !alias.scope !545, !noundef !4 ; 2 uses
  %.val14.i.i.i.i = load double, ptr %i.ae, align 8, !alias.scope !547, !noundef !4
  %i.af = fcmp uno double %.val.i.i.i.i, 0.000000e+00
  %i.ag = fcmp oge double %.val.i.i.i.i, %.val14.i.i.i.i
  %i.ah = or i1 %i.af, %i.ag
  br i1 %i.ah, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit: ; preds = %bb.a, %bb.e, %bb.h
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i, %bb.e ], [ %i.j, %bb.a ], [ %..i.i.i.i, %bb.h ]
  %i.ai = icmp slt i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.ai, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7: ; preds = %bb.d, %bb.i, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.ak = load i64, ptr %i.a, align 8, !range !6
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.fr22 = freeze i64 %i.ak
  %i.am = trunc i64 %.fr22 to i1
  %.val15.i.i.i.i15 = load double, ptr %i.al, align 8 ; 3 uses
  %i.an = fcmp uno double %.val15.i.i.i.i15, 0.000000e+00
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.fr = freeze i64 %i.ap
  %i.ar = trunc i64 %.fr to i1                    ; 2 uses
  %.val.i.i.i.i10 = load double, ptr %i.aq, align 8
  %.val.i.i.i.i10.fr = freeze double %.val.i.i.i.i10 ; 3 uses
  %i.as = fcmp uno double %.val.i.i.i.i10.fr, 0.000000e+00 ; 2 uses
  br i1 %i.am, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.us, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.us: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7, %bb.q
  %.sroa.5.0.us = phi ptr [ %.sroa.0.0.us, %bb.q ], [ %1, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7 ]
  %.sroa.0.0.us = phi ptr [ %i.au, %bb.q ], [ %i.b, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7 ] ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0.us, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.us, i64 40, i1 false)
  %i.at = icmp eq ptr %.sroa.0.0.us, %0
  br i1 %i.at, label %.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.us
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.us, i64 -40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.0.us, i64 -8
  %i.aw = load i32, ptr %i.aj, align 1
  %i.ax = load i32, ptr %i.av, align 1
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.ba = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ay, i32 %i.az) ; 2 uses
  %i.bb = tail call i8 @llvm.scmp.i8.i32(i32 %i.ba, i32 0)
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bd = load i64, ptr %i.au, align 8, !range !6, !alias.scope !552, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.0.us, i64 -32
  %.val16.i.i.i.i16.us = load double, ptr %i.bf, align 8, !alias.scope !553, !noundef !4 ; 3 uses
  %i.bg = fcmp oge double %.val15.i.i.i.i15, %.val16.i.i.i.i16.us
  %i.bh = or i1 %i.an, %i.bg
  %i.bi = fcmp ord double %.val16.i.i.i.i16.us, 0.000000e+00
  %i.bj = fcmp ult double %.val16.i.i.i.i16.us, %.val15.i.i.i.i15
  %.not4.i.i.i.i.i17.us = and i1 %i.bi, %i.bj
  %..i.i.i.i.i18.us = zext i1 %.not4.i.i.i.i.i17.us to i8
  %.sroa.0.0.i.i.i.i.i19.us = select i1 %i.bh, i8 %..i.i.i.i.i18.us, i8 -1 ; 2 uses
  %i.bk = icmp eq i8 %.sroa.0.0.i.i.i.i.i19.us, 0
  br i1 %i.bk, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.us, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8, !range !6, !alias.scope !552, !noundef !4
  %i.bn = trunc nuw i64 %i.bm to i1               ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %..i.i.i.i9.us = sext i1 %i.bn to i8
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.bn, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.us, i64 -16
  %.val14.i.i.i.i11.us = load double, ptr %i.bo, align 8, !alias.scope !553, !noundef !4
  %i.bp = fcmp oge double %.val.i.i.i.i10.fr, %.val14.i.i.i.i11.us
  %i.bq = or i1 %i.as, %i.bp
  br i1 %i.bq, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j
  %.sroa.0.0.i.i.i.i8.us = phi i8 [ -1, %bb.p ], [ %i.bb, %bb.j ], [ %..i.i.i.i9.us, %bb.n ], [ %.sroa.0.0.i.i.i.i.i19.us, %bb.l ]
  %i.br = icmp slt i8 %.sroa.0.0.i.i.i.i8.us, 0
  br i1 %i.br, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.us, label %.thread

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.bs = icmp eq ptr %i.b, %0                    ; 3 uses
  br i1 %i.ar, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.preheader

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.preheader: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split
  br i1 %i.bs, label %.thread, label %.lr.ph

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split
  br i1 %i.as, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.preheader, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.preheader

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.preheader: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us
  br i1 %i.bs, label %.thread, label %.lr.ph36

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.preheader: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us
  br i1 %i.bs, label %.thread, label %.lr.ph44

.lr.ph44:                                         ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.preheader, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.backedge
  %.sroa.0.0.us13.us43 = phi ptr [ %i.bt, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.backedge ], [ %i.b, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.preheader ] ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.0.us13.us43, i64 -40 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.bu = getelementptr inbounds i8, ptr %.sroa.0.0.us13.us43, i64 -8
  %i.bv = load i32, ptr %i.aj, align 1
  %i.bw = load i32, ptr %i.bu, align 1
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.bz = tail call i32 @llvm.ucmp.i32.i32(i32 %i.bx, i32 %i.by) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph44
  %i.cb = load i64, ptr %i.bt, align 8, !range !6, !alias.scope !552, !noundef !4
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.backedge, label %.thread

bb.s:                                             ; preds = %.lr.ph44
  %i.cd = icmp slt i32 %i.bz, 0
  br i1 %i.cd, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.backedge, label %.thread

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.backedge: ; preds = %bb.s, %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.us13.us43, ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i64 40, i1 false)
  %i.ce = icmp eq ptr %i.bt, %0
  br i1 %i.ce, label %.thread, label %.lr.ph44

.lr.ph36:                                         ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.preheader, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge
  %.sroa.0.0.us1335 = phi ptr [ %i.cf, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge ], [ %i.b, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.preheader ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.us1335, i64 -40 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.0.us1335, i64 -8
  %i.ch = load i32, ptr %i.aj, align 1
  %i.ci = load i32, ptr %i.cg, align 1
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  %i.cl = tail call i32 @llvm.ucmp.i32.i32(i32 %i.cj, i32 %i.ck) ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.lr.ph36
  %i.cn = load i64, ptr %i.cf, align 8, !range !6, !alias.scope !552, !noundef !4
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.us1335, i64 -24
  %i.cq = load i64, ptr %i.cp, align 8, !range !6, !alias.scope !552, !noundef !4
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.0.us1335, i64 -16
  %.val14.i.i.i.i11.us14 = load double, ptr %i.cs, align 8, !alias.scope !553, !noundef !4
  %i.ct = fcmp ult double %.val.i.i.i.i10.fr, %.val14.i.i.i.i11.us14
  br i1 %i.ct, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge, label %.thread

bb.w:                                             ; preds = %.lr.ph36
  %i.cu = icmp slt i32 %i.cl, 0
  br i1 %i.cu, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge, label %.thread

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge: ; preds = %bb.v, %bb.t, %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.us1335, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false)
  %i.cv = icmp eq ptr %i.cf, %0
  br i1 %i.cv, label %.thread, label %.lr.ph36

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread: ; preds = %bb.i, %bb.g, %bb.c, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit, %.thread
  ret void

.lr.ph:                                           ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.preheader, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge
  %.sroa.0.032 = phi ptr [ %i.cw, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge ], [ %i.b, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.preheader ] ; 6 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.032, i64 -40 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.032, i64 -8
  %i.cy = load i32, ptr %i.aj, align 1
  %i.cz = load i32, ptr %i.cx, align 1
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.dc = tail call i32 @llvm.ucmp.i32.i32(i32 %i.da, i32 %i.db) ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.de = load i64, ptr %i.cw, align 8, !range !6, !alias.scope !552, !noundef !4
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge, label %.split

.split:                                           ; preds = %bb.x
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.032, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8, !range !6, !alias.scope !552, !noundef !4
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge, label %.thread

bb.y:                                             ; preds = %.lr.ph
  %i.dj = icmp slt i32 %i.dc, 0
  br i1 %i.dj, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge, label %.thread

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge: ; preds = %bb.x, %bb.y, %.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.032, ptr noundef nonnull align 8 dereferenceable(40) %i.cw, i64 40, i1 false)
  %i.dk = icmp eq ptr %i.cw, %0
  br i1 %i.dk, label %.thread, label %.lr.ph

.thread:                                          ; preds = %.split, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge, %bb.y, %bb.w, %bb.v, %bb.u, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge, %bb.s, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.backedge, %bb.r, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.us, %bb.k, %bb.o, %bb.p, %bb.q, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.preheader, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.preheader, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.preheader
  %.us-phi = phi ptr [ %.sroa.0.0.us, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.us ], [ %.sroa.0.0.us1335, %bb.u ], [ %i.b, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.preheader ], [ %i.b, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.preheader ], [ %.sroa.0.0.us13.us43, %bb.r ], [ %i.b, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.preheader ], [ %.sroa.0.0.us, %bb.q ], [ %.sroa.0.0.us, %bb.p ], [ %.sroa.0.0.us, %bb.o ], [ %.sroa.0.0.us, %bb.k ], [ %i.bt, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.us.backedge ], [ %.sroa.0.0.us13.us43, %bb.s ], [ %.sroa.0.0.us1335, %bb.v ], [ %i.cf, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.us.split.backedge ], [ %.sroa.0.0.us1335, %bb.w ], [ %.sroa.0.032, %bb.y ], [ %i.cw, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread7.split.split.backedge ], [ %.sroa.0.032, %.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.us-phi, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %.val9 = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4 ; 13 uses
  %.val10 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !7, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.b = load i8, ptr %.val9, align 8, !range !5, !alias.scope !583, !noundef !4 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 23
  %i.d = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.e = add nsw i64 %i.d, -23
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.f, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val9, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !583, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !583, !noundef !4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !583, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !583, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.d, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.e ]
  %i.q = load i8, ptr %.val10, align 8, !range !5, !alias.scope !584, !noundef !4 ; 2 uses
  %i.r = icmp samesign ugt i8 %i.q, 23
  %i.s = zext nneg i8 %i.q to i64                 ; 2 uses
  %i.t = add nsw i64 %i.s, -23
  %i.u = select i1 %i.r, i64 %i.t, i64 0
  switch i64 %i.u, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.val10, i64 1
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir:bb.a
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !866, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  br label %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21

_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21: ; preds = %bb.ae, %bb.af, %bb.ag
  %.sroa.42.0.i.i.i.i17 = phi i64 [ %i.ec, %bb.ae ], [ %i.ej, %bb.af ], [ %i.en, %bb.ag ] ; 2 uses
  %.sroa.01.0.i.i.i.i18 = phi ptr [ %i.ef, %bb.ae ], [ %i.eh, %bb.af ], [ %i.eo, %bb.ag ]
  %spec.store.select.i.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i15, i64 %.sroa.42.0.i.i.i.i17)
  %i.ep = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i16, ptr nonnull %.sroa.01.0.i.i.i.i18, i64 %spec.store.select.i.i.i.i19) ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp eq i32 %i.ep, 0
  %i.es = sub i64 %.sroa.4.0.i.i.i.i15, %.sroa.42.0.i.i.i.i17
  %spec.select.i.i.i.i20 = select i1 %i.er, i64 %i.es, i64 %i.eq
  %i.et = icmp slt i64 %spec.select.i.i.i.i20, 0  ; 3 uses
  %i.eu = select i1 %i.et, ptr %i.bz, ptr %i.bx, !unpredictable !4
  %i.ev = select i1 %i.dk, ptr %i.bv, ptr %i.eu, !unpredictable !4 ; 8 uses
  %i.ew = select i1 %i.dk, ptr %i.bx, ptr %i.bz, !unpredictable !4
  %i.ex = select i1 %i.et, ptr %i.cb, ptr %i.ew, !unpredictable !4 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.ey = load i8, ptr %i.ex, align 8, !range !5, !alias.scope !875, !noundef !4 ; 2 uses
  %i.ez = icmp samesign ugt i8 %i.ey, 23
  %i.fa = zext nneg i8 %i.ey to i64               ; 2 uses
  %i.fb = add nsw i64 %i.fa, -23
  %i.fc = select i1 %i.ez, i64 %i.fb, i64 0
  switch i64 %i.fc, label %bb.ah [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.al, %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21
  unreachable

bb.ai:                                            ; preds = %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  br label %bb.al

bb.aj:                                            ; preds = %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !875, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !875, !noundef !4
  br label %bb.al

bb.ak:                                            ; preds = %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit21
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !875, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !875, !noundef !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.4.0.i.i.i.i22 = phi i64 [ %i.fa, %bb.ai ], [ %i.fh, %bb.aj ], [ %i.fl, %bb.ak ] ; 2 uses
  %.sroa.0.0.i.i.i.i23 = phi ptr [ %i.fd, %bb.ai ], [ %i.ff, %bb.aj ], [ %i.fm, %bb.ak ]
  %i.fn = load i8, ptr %i.ev, align 8, !range !5, !alias.scope !876, !noundef !4 ; 2 uses
  %i.fo = icmp samesign ugt i8 %i.fn, 23
  %i.fp = zext nneg i8 %i.fn to i64               ; 2 uses
  %i.fq = add nsw i64 %i.fp, -23
  %i.fr = select i1 %i.fo, i64 %i.fq, i64 0
  switch i64 %i.fr, label %bb.ah [
    i64 0, label %bb.am
    i64 1, label %bb.an
    i64 2, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  br label %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit28

bb.an:                                            ; preds = %bb.al
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !876, !nonnull !4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !876, !noundef !4
  br label %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit28

bb.ao:                                            ; preds = %bb.al
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !876, !nonnull !4, !noundef !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !876, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  br label %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit28

_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit28: ; preds = %bb.am, %bb.an, %bb.ao
  %.sroa.42.0.i.i.i.i24 = phi i64 [ %i.fp, %bb.am ], [ %i.fw, %bb.an ], [ %i.ga, %bb.ao ] ; 2 uses
  %.sroa.01.0.i.i.i.i25 = phi ptr [ %i.fs, %bb.am ], [ %i.fu, %bb.an ], [ %i.gb, %bb.ao ]
  %i.gc = select i1 %i.et, ptr %i.bx, ptr %i.cb, !unpredictable !4
  %i.gd = select i1 %i.dk, ptr %i.bz, ptr %i.bv, !unpredictable !4
  %spec.store.select.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i22, i64 %.sroa.42.0.i.i.i.i24)
  %i.ge = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i23, ptr nonnull %.sroa.01.0.i.i.i.i25, i64 %spec.store.select.i.i.i.i26) ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp eq i32 %i.ge, 0
  %i.gh = sub i64 %.sroa.4.0.i.i.i.i22, %.sroa.42.0.i.i.i.i24
  %spec.select.i.i.i.i27 = select i1 %i.gg, i64 %i.gh, i64 %i.gf
  %i.gi = icmp slt i64 %spec.select.i.i.i.i27, 0  ; 2 uses
  %i.gj = select i1 %i.gi, ptr %i.ex, ptr %i.ev, !unpredictable !4
  %i.gk = select i1 %i.gi, ptr %i.ev, ptr %i.ex, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 24, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 24, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 160)) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.a, align 1
  %i.d = load i32, ptr %i.b, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.g = tail call i32 @llvm.ucmp.i32.i32(i32 %i.e, i32 %i.f) ; 2 uses
  %i.h = tail call i8 @llvm.scmp.i8.i32(i32 %i.g, i32 0)
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %bb.b, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !range !6, !alias.scope !955, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = trunc nuw i64 %i.k to i1
  %i.n = load i64, ptr %0, align 8, !range !6, !alias.scope !956, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1                 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val15.i.i.i.i = load double, ptr %i.l, align 8, !alias.scope !955, !noundef !4 ; 3 uses
  %.val16.i.i.i.i = load double, ptr %i.p, align 8, !alias.scope !957, !noundef !4 ; 3 uses
  %i.q = fcmp uno double %.val15.i.i.i.i, 0.000000e+00
  %i.r = fcmp oge double %.val15.i.i.i.i, %.val16.i.i.i.i
  %i.s = or i1 %i.q, %i.r
  %i.t = fcmp ord double %.val16.i.i.i.i, 0.000000e+00
  %i.u = fcmp ult double %.val16.i.i.i.i, %.val15.i.i.i.i
  %.not4.i.i.i.i.i = and i1 %i.t, %i.u
  %..i.i.i.i.i = zext i1 %.not4.i.i.i.i.i to i8
  %.sroa.0.0.i.i.i.i.i = select i1 %i.s, i8 %..i.i.i.i.i, i8 -1 ; 2 uses
  %i.v = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.v, label %bb.f, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i64, ptr %i.w, align 8, !range !6, !alias.scope !955, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = trunc nuw i64 %i.x to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !alias.scope !956, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1               ; 2 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ac, label %bb.i, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.h:                                             ; preds = %bb.f
  %..i.i.i.i = sext i1 %i.ac to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i = load double, ptr %i.y, align 8, !alias.scope !955, !noundef !4 ; 3 uses
  %.val14.i.i.i.i = load double, ptr %i.ad, align 8, !alias.scope !957, !noundef !4 ; 3 uses
  %i.ae = fcmp uno double %.val.i.i.i.i, 0.000000e+00
  %i.af = fcmp oge double %.val.i.i.i.i, %.val14.i.i.i.i
  %i.ag = or i1 %i.ae, %i.af
  %i.ah = fcmp ord double %.val14.i.i.i.i, 0.000000e+00
  %i.ai = fcmp ult double %.val14.i.i.i.i, %.val.i.i.i.i
  %.not4.i17.i.i.i.i = and i1 %i.ah, %i.ai
  %..i18.i.i.i.i = zext i1 %.not4.i17.i.i.i.i to i8
  %.sroa.0.0.i19.i.i.i.i = select i1 %i.ag, i8 %..i18.i.i.i.i, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.0.i19.i.i.i.i, %bb.i ], [ %i.h, %bb.a ], [ %..i.i.i.i, %bb.h ], [ 1, %bb.c ], [ %.sroa.0.0.i.i.i.i.i, %bb.e ], [ -1, %bb.d ], [ 1, %bb.g ] ; 2 uses
  %i.aj = icmp sgt i8 %.sroa.0.0.i.i.i.i, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load i32, ptr %i.ak, align 1
  %i.an = load i32, ptr %i.al, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.aq = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ao, i32 %i.ap) ; 2 uses
  %i.ar = tail call i8 @llvm.scmp.i8.i32(i32 %i.aq, i32 0)
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %bb.j, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13

bb.j:                                             ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load i64, ptr %i.au, align 8, !range !6, !alias.scope !966, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ax = trunc nuw i64 %i.av to i1
  %i.ay = load i64, ptr %i.at, align 8, !range !6, !alias.scope !967, !noundef !4
  %i.az = trunc nuw i64 %i.ay to i1               ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.az, label %bb.m, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13

bb.l:                                             ; preds = %bb.j
  br i1 %i.az, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val15.i.i.i.i8 = load double, ptr %i.aw, align 8, !alias.scope !966, !noundef !4 ; 3 uses
  %.val16.i.i.i.i9 = load double, ptr %i.ba, align 8, !alias.scope !968, !noundef !4 ; 3 uses
  %i.bb = fcmp uno double %.val15.i.i.i.i8, 0.000000e+00
  %i.bc = fcmp oge double %.val15.i.i.i.i8, %.val16.i.i.i.i9
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = fcmp ord double %.val16.i.i.i.i9, 0.000000e+00
  %i.bf = fcmp ult double %.val16.i.i.i.i9, %.val15.i.i.i.i8
  %.not4.i.i.i.i.i10 = and i1 %i.be, %i.bf
  %..i.i.i.i.i11 = zext i1 %.not4.i.i.i.i.i10 to i8
  %.sroa.0.0.i.i.i.i.i12 = select i1 %i.bd, i8 %..i.i.i.i.i11, i8 -1 ; 2 uses
  %i.bg = icmp eq i8 %.sroa.0.0.i.i.i.i.i12, 0
  br i1 %i.bg, label %bb.n, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = load i64, ptr %i.bh, align 8, !range !6, !alias.scope !966, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bk = trunc nuw i64 %i.bi to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load i64, ptr %i.bl, align 8, !range !6, !alias.scope !967, !noundef !4
  %i.bn = trunc nuw i64 %i.bm to i1               ; 2 uses
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.bn, label %bb.q, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13

bb.p:                                             ; preds = %bb.n
  %..i.i.i.i2 = sext i1 %i.bn to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13

bb.q:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i.i.i3 = load double, ptr %i.bj, align 8, !alias.scope !966, !noundef !4 ; 3 uses
  %.val14.i.i.i.i4 = load double, ptr %i.bo, align 8, !alias.scope !968, !noundef !4 ; 3 uses
  %i.bp = fcmp uno double %.val.i.i.i.i3, 0.000000e+00
  %i.bq = fcmp oge double %.val.i.i.i.i3, %.val14.i.i.i.i4
  %i.br = or i1 %i.bp, %i.bq
  %i.bs = fcmp ord double %.val14.i.i.i.i4, 0.000000e+00
  %i.bt = fcmp ult double %.val14.i.i.i.i4, %.val.i.i.i.i3
  %.not4.i17.i.i.i.i5 = and i1 %i.bs, %i.bt
  %..i18.i.i.i.i6 = zext i1 %.not4.i17.i.i.i.i5 to i8
  %.sroa.0.0.i19.i.i.i.i7 = select i1 %i.br, i8 %..i18.i.i.i.i6, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i.i.i.i1 = phi i8 [ %.sroa.0.0.i19.i.i.i.i7, %bb.q ], [ %i.ar, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit ], [ %..i.i.i.i2, %bb.p ], [ 1, %bb.k ], [ %.sroa.0.0.i.i.i.i.i12, %bb.m ], [ -1, %bb.l ], [ 1, %bb.o ]
  %i.bu = icmp slt i8 %.sroa.0.0.i.i.i.i1, 0      ; 2 uses
  %.sroa.0.0.i.i.i.i.lobit = lshr i8 %.sroa.0.0.i.i.i.i, 7
  %i.bv = zext nneg i8 %.sroa.0.0.i.i.i.i.lobit to i64
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bv ; 7 uses
  %i.bx = zext i1 %i.aj to i64
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bx ; 8 uses
  %i.bz = select i1 %i.bu, i64 3, i64 2
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bz ; 8 uses
  %i.cb = select i1 %i.bu, i64 2, i64 3
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.cb ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cf = load i32, ptr %i.cd, align 1
  %i.cg = load i32, ptr %i.ce, align 1
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.cj = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ch, i32 %i.ci) ; 2 uses
  %i.ck = tail call i8 @llvm.scmp.i8.i32(i32 %i.cj, i32 0)
  %i.cl = icmp eq i32 %i.cj, 0
  br i1 %i.cl, label %bb.r, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26

bb.r:                                             ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13
  %i.cm = load i64, ptr %i.ca, align 8, !range !6, !alias.scope !977, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.co = trunc nuw i64 %i.cm to i1
  %i.cp = load i64, ptr %i.bw, align 8, !range !6, !alias.scope !978, !noundef !4
  %i.cq = trunc nuw i64 %i.cp to i1               ; 2 uses
  br i1 %i.co, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.cq, label %bb.u, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26

bb.t:                                             ; preds = %bb.r
  br i1 %i.cq, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.val15.i.i.i.i21 = load double, ptr %i.cn, align 8, !alias.scope !977, !noundef !4 ; 3 uses
  %.val16.i.i.i.i22 = load double, ptr %i.cr, align 8, !alias.scope !979, !noundef !4 ; 3 uses
  %i.cs = fcmp uno double %.val15.i.i.i.i21, 0.000000e+00
  %i.ct = fcmp oge double %.val15.i.i.i.i21, %.val16.i.i.i.i22
  %i.cu = or i1 %i.cs, %i.ct
  %i.cv = fcmp ord double %.val16.i.i.i.i22, 0.000000e+00
  %i.cw = fcmp ult double %.val16.i.i.i.i22, %.val15.i.i.i.i21
  %.not4.i.i.i.i.i23 = and i1 %i.cv, %i.cw
  %..i.i.i.i.i24 = zext i1 %.not4.i.i.i.i.i23 to i8
  %.sroa.0.0.i.i.i.i.i25 = select i1 %i.cu, i8 %..i.i.i.i.i24, i8 -1 ; 2 uses
  %i.cx = icmp eq i8 %.sroa.0.0.i.i.i.i.i25, 0
  br i1 %i.cx, label %bb.v, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !6, !alias.scope !977, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.db = trunc nuw i64 %i.cz to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !6, !alias.scope !978, !noundef !4
  %i.de = trunc nuw i64 %i.dd to i1               ; 2 uses
  br i1 %i.db, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.de, label %bb.y, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26

bb.x:                                             ; preds = %bb.v
  %..i.i.i.i15 = sext i1 %i.de to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26

bb.y:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.val.i.i.i.i16 = load double, ptr %i.da, align 8, !alias.scope !977, !noundef !4 ; 3 uses
  %.val14.i.i.i.i17 = load double, ptr %i.df, align 8, !alias.scope !979, !noundef !4 ; 3 uses
  %i.dg = fcmp uno double %.val.i.i.i.i16, 0.000000e+00
  %i.dh = fcmp oge double %.val.i.i.i.i16, %.val14.i.i.i.i17
  %i.di = or i1 %i.dg, %i.dh
  %i.dj = fcmp ord double %.val14.i.i.i.i17, 0.000000e+00
  %i.dk = fcmp ult double %.val14.i.i.i.i17, %.val.i.i.i.i16
  %.not4.i17.i.i.i.i18 = and i1 %i.dj, %i.dk
  %..i18.i.i.i.i19 = zext i1 %.not4.i17.i.i.i.i18 to i8
  %.sroa.0.0.i19.i.i.i.i20 = select i1 %i.di, i8 %..i18.i.i.i.i19, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13, %bb.s, %bb.t, %bb.u, %bb.w, %bb.x, %bb.y
  %.sroa.0.0.i.i.i.i14 = phi i8 [ %.sroa.0.0.i19.i.i.i.i20, %bb.y ], [ %i.ck, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit13 ], [ %..i.i.i.i15, %bb.x ], [ 1, %bb.s ], [ %.sroa.0.0.i.i.i.i.i25, %bb.u ], [ -1, %bb.t ], [ 1, %bb.w ]
  %i.dl = icmp slt i8 %.sroa.0.0.i.i.i.i14, 0     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.do = load i32, ptr %i.dm, align 1
  %i.dp = load i32, ptr %i.dn, align 1
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.ds = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dq, i32 %i.dr) ; 2 uses
  %i.dt = tail call i8 @llvm.scmp.i8.i32(i32 %i.ds, i32 0)
  %i.du = icmp eq i32 %i.ds, 0
  br i1 %i.du, label %bb.z, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39

bb.z:                                             ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26
  %i.dv = load i64, ptr %i.cc, align 8, !range !6, !alias.scope !988, !noundef !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dx = trunc nuw i64 %i.dv to i1
  %i.dy = load i64, ptr %i.by, align 8, !range !6, !alias.scope !989, !noundef !4
  %i.dz = trunc nuw i64 %i.dy to i1               ; 2 uses
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dz, label %bb.ac, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39

bb.ab:                                            ; preds = %bb.z
  br i1 %i.dz, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.val15.i.i.i.i34 = load double, ptr %i.dw, align 8, !alias.scope !988, !noundef !4 ; 3 uses
  %.val16.i.i.i.i35 = load double, ptr %i.ea, align 8, !alias.scope !990, !noundef !4 ; 3 uses
  %i.eb = fcmp uno double %.val15.i.i.i.i34, 0.000000e+00
  %i.ec = fcmp oge double %.val15.i.i.i.i34, %.val16.i.i.i.i35
  %i.ed = or i1 %i.eb, %i.ec
  %i.ee = fcmp ord double %.val16.i.i.i.i35, 0.000000e+00
  %i.ef = fcmp ult double %.val16.i.i.i.i35, %.val15.i.i.i.i34
  %.not4.i.i.i.i.i36 = and i1 %i.ee, %i.ef
  %..i.i.i.i.i37 = zext i1 %.not4.i.i.i.i.i36 to i8
  %.sroa.0.0.i.i.i.i.i38 = select i1 %i.ed, i8 %..i.i.i.i.i37, i8 -1 ; 2 uses
  %i.eg = icmp eq i8 %.sroa.0.0.i.i.i.i.i38, 0
  br i1 %i.eg, label %bb.ad, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !6, !alias.scope !988, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ek = trunc nuw i64 %i.ei to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.em = load i64, ptr %i.el, align 8, !range !6, !alias.scope !989, !noundef !4
  %i.en = trunc nuw i64 %i.em to i1               ; 2 uses
  br i1 %i.ek, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.en, label %bb.ag, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39

bb.af:                                            ; preds = %bb.ad
  %..i.i.i.i28 = sext i1 %i.en to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39

bb.ag:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.val.i.i.i.i29 = load double, ptr %i.ej, align 8, !alias.scope !988, !noundef !4 ; 3 uses
  %.val14.i.i.i.i30 = load double, ptr %i.eo, align 8, !alias.scope !990, !noundef !4 ; 3 uses
  %i.ep = fcmp uno double %.val.i.i.i.i29, 0.000000e+00
  %i.eq = fcmp oge double %.val.i.i.i.i29, %.val14.i.i.i.i30
  %i.er = or i1 %i.ep, %i.eq
  %i.es = fcmp ord double %.val14.i.i.i.i30, 0.000000e+00
  %i.et = fcmp ult double %.val14.i.i.i.i30, %.val.i.i.i.i29
  %.not4.i17.i.i.i.i31 = and i1 %i.es, %i.et
  %..i18.i.i.i.i32 = zext i1 %.not4.i17.i.i.i.i31 to i8
  %.sroa.0.0.i19.i.i.i.i33 = select i1 %i.er, i8 %..i18.i.i.i.i32, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26, %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ag
  %.sroa.0.0.i.i.i.i27 = phi i8 [ %.sroa.0.0.i19.i.i.i.i33, %bb.ag ], [ %i.dt, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit26 ], [ %..i.i.i.i28, %bb.af ], [ 1, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i38, %bb.ac ], [ -1, %bb.ab ], [ 1, %bb.ae ]
  %i.eu = icmp slt i8 %.sroa.0.0.i.i.i.i27, 0     ; 3 uses
  %i.ev = select i1 %i.eu, ptr %i.ca, ptr %i.by, !unpredictable !4
  %i.ew = select i1 %i.dl, ptr %i.bw, ptr %i.ev, !unpredictable !4 ; 7 uses
  %i.ex = select i1 %i.dl, ptr %i.by, ptr %i.ca, !unpredictable !4
  %i.ey = select i1 %i.eu, ptr %i.cc, ptr %i.ex, !unpredictable !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fb = load i32, ptr %i.ez, align 1
  %i.fc = load i32, ptr %i.fa, align 1
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fb)
  %i.fe = tail call i32 @llvm.bswap.i32(i32 %i.fc)
  %i.ff = tail call i32 @llvm.ucmp.i32.i32(i32 %i.fd, i32 %i.fe) ; 2 uses
  %i.fg = tail call i8 @llvm.scmp.i8.i32(i32 %i.ff, i32 0)
  %i.fh = icmp eq i32 %i.ff, 0
  br i1 %i.fh, label %bb.ah, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52

bb.ah:                                            ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39
  %i.fi = load i64, ptr %i.ey, align 8, !range !6, !alias.scope !999, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fk = trunc nuw i64 %i.fi to i1
  %i.fl = load i64, ptr %i.ew, align 8, !range !6, !alias.scope !1000, !noundef !4
  %i.fm = trunc nuw i64 %i.fl to i1               ; 2 uses
  br i1 %i.fk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fm, label %bb.ak, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.fm, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.val15.i.i.i.i47 = load double, ptr %i.fj, align 8, !alias.scope !999, !noundef !4 ; 3 uses
  %.val16.i.i.i.i48 = load double, ptr %i.fn, align 8, !alias.scope !1001, !noundef !4 ; 3 uses
  %i.fo = fcmp uno double %.val15.i.i.i.i47, 0.000000e+00
  %i.fp = fcmp oge double %.val15.i.i.i.i47, %.val16.i.i.i.i48
  %i.fq = or i1 %i.fo, %i.fp
  %i.fr = fcmp ord double %.val16.i.i.i.i48, 0.000000e+00
  %i.fs = fcmp ult double %.val16.i.i.i.i48, %.val15.i.i.i.i47
  %.not4.i.i.i.i.i49 = and i1 %i.fr, %i.fs
  %..i.i.i.i.i50 = zext i1 %.not4.i.i.i.i.i49 to i8
  %.sroa.0.0.i.i.i.i.i51 = select i1 %i.fq, i8 %..i.i.i.i.i50, i8 -1 ; 2 uses
  %i.ft = icmp eq i8 %.sroa.0.0.i.i.i.i.i51, 0
  br i1 %i.ft, label %bb.al, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !range !6, !alias.scope !999, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fx = trunc nuw i64 %i.fv to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !range !6, !alias.scope !1000, !noundef !4
  %i.ga = trunc nuw i64 %i.fz to i1               ; 2 uses
  br i1 %i.fx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  br i1 %i.ga, label %bb.ao, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52

bb.an:                                            ; preds = %bb.al
  %..i.i.i.i41 = sext i1 %i.ga to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52

bb.ao:                                            ; preds = %bb.am
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %.val.i.i.i.i42 = load double, ptr %i.fw, align 8, !alias.scope !999, !noundef !4 ; 3 uses
  %.val14.i.i.i.i43 = load double, ptr %i.gb, align 8, !alias.scope !1001, !noundef !4 ; 3 uses
  %i.gc = fcmp uno double %.val.i.i.i.i42, 0.000000e+00
  %i.gd = fcmp oge double %.val.i.i.i.i42, %.val14.i.i.i.i43
  %i.ge = or i1 %i.gc, %i.gd
  %i.gf = fcmp ord double %.val14.i.i.i.i43, 0.000000e+00
  %i.gg = fcmp ult double %.val14.i.i.i.i43, %.val.i.i.i.i42
  %.not4.i17.i.i.i.i44 = and i1 %i.gf, %i.gg
  %..i18.i.i.i.i45 = zext i1 %.not4.i17.i.i.i.i44 to i8
  %.sroa.0.0.i19.i.i.i.i46 = select i1 %i.ge, i8 %..i18.i.i.i.i45, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit52: ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39, %bb.ai, %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ao
  %.sroa.0.0.i.i.i.i40 = phi i8 [ %.sroa.0.0.i19.i.i.i.i46, %bb.ao ], [ %i.fg, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit39 ], [ %..i.i.i.i41, %bb.an ], [ 1, %bb.ai ], [ %.sroa.0.0.i.i.i.i.i51, %bb.ak ], [ -1, %bb.aj ], [ 1, %bb.am ]
  %i.gh = select i1 %i.eu, ptr %i.by, ptr %i.cc, !unpredictable !4
  %i.gi = select i1 %i.dl, ptr %i.ca, ptr %i.bw, !unpredictable !4
  %i.gj = icmp slt i8 %.sroa.0.0.i.i.i.i40, 0     ; 2 uses
  %i.gk = select i1 %i.gj, ptr %i.ey, ptr %i.ew, !unpredictable !4
  %i.gl = select i1 %i.gj, ptr %i.ew, ptr %i.ey, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.gi, i64 40, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gm, ptr noundef nonnull align 8 dereferenceable(40) %i.gk, i64 40, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gn, ptr noundef nonnull align 8 dereferenceable(40) %i.gl, i64 40, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.go, ptr noundef nonnull align 8 dereferenceable(40) %i.gh, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  %.val9 = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.b = load i8, ptr %.val8, align 8, !range !5, !alias.scope !1053, !noundef !4 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 23
  %i.d = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.e = add nsw i64 %i.d, -23
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.f, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val8, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1053, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1053, !noundef !4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1053, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1053, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.d, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.e ]
  %i.q = load i8, ptr %.val9, align 8, !range !5, !alias.scope !1054, !noundef !4 ; 2 uses
  %i.r = icmp samesign ugt i8 %i.q, 23
  %i.s = zext nneg i8 %i.q to i64                 ; 2 uses
  %i.t = add nsw i64 %i.s, -23
  %i.u = select i1 %i.r, i64 %i.t, i64 0
  switch i64 %i.u, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.val9, i64 1
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1054, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1054, !noundef !4
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1054, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1054, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit

_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.42.0.i.i.i.i.i = phi i64 [ %i.s, %bb.g ], [ %i.z, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %i.ae, %bb.i ]
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.42.0.i.i.i.i.i)
  %i.af = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i, ptr nonnull %.sroa.01.0.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i) ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %.sroa.4.0.i.i.i.i.i, %.sroa.42.0.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag ; 2 uses
  %i.aj = icmp sgt i64 %spec.select.i.i.i.i.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  %.val7 = load ptr, ptr %i.al, align 8, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.am = load i8, ptr %.val6, align 8, !range !5, !alias.scope !1061, !noundef !4 ; 2 uses
  %i.an = icmp samesign ugt i8 %i.am, 23
  %i.ao = zext nneg i8 %i.am to i64               ; 2 uses
  %i.ap = add nsw i64 %i.ao, -23
  %i.aq = select i1 %i.an, i64 %i.ap, i64 0
  switch i64 %i.aq, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.n, %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  unreachable

bb.k:                                             ; preds = %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6, i64 1
  br label %bb.n

bb.l:                                             ; preds = %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1061, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1061, !noundef !4
  br label %bb.n

bb.m:                                             ; preds = %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1061, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !1061, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.4.0.i.i.i.i.i10 = phi i64 [ %i.ao, %bb.k ], [ %i.av, %bb.l ], [ %i.az, %bb.m ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i11 = phi ptr [ %i.ar, %bb.k ], [ %i.at, %bb.l ], [ %i.ba, %bb.m ]
  %i.bb = load i8, ptr %.val7, align 8, !range !5, !alias.scope !1062, !noundef !4 ; 2 uses
  %i.bc = icmp samesign ugt i8 %i.bb, 23
  %i.bd = zext nneg i8 %i.bb to i64               ; 2 uses
  %i.be = add nsw i64 %i.bd, -23
  %i.bf = select i1 %i.bc, i64 %i.be, i64 0
  switch i64 %i.bf, label %bb.j [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.val7, i64 1
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit16

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !1062, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1062, !noundef !4
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit16

bb.q:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1062, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1062, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit16

_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit16: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.42.0.i.i.i.i.i12 = phi i64 [ %i.bd, %bb.o ], [ %i.bk, %bb.p ], [ %i.bo, %bb.q ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i13 = phi ptr [ %i.bg, %bb.o ], [ %i.bi, %bb.p ], [ %i.bp, %bb.q ]
  %spec.store.select.i.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i.i10, i64 %.sroa.42.0.i.i.i.i.i12)
  %i.bq = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i11, ptr nonnull %.sroa.01.0.i.i.i.i.i13, i64 %spec.store.select.i.i.i.i.i14) ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp eq i32 %i.bq, 0
  %i.bt = sub i64 %.sroa.4.0.i.i.i.i.i10, %.sroa.42.0.i.i.i.i.i12
  %spec.select.i.i.i.i.i15 = select i1 %i.bs, i64 %i.bt, i64 %i.br
  %i.bu = icmp slt i64 %spec.select.i.i.i.i.i15, 0 ; 2 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.lobit ; 3 uses
  %i.bw = zext i1 %i.aj to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw ; 4 uses
  %i.by = select i1 %i.bu, i64 3, i64 2
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by ; 4 uses
  %i.ca = select i1 %i.bu, i64 2, i64 3
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca ; 3 uses
  %.val4 = load ptr, ptr %i.bz, align 8, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  %.val5 = load ptr, ptr %i.bv, align 8, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.ic = getelementptr inbounds i8, ptr %.sroa.0.0.i3386, i64 -23
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.id = getelementptr inbounds i8, ptr %.sroa.0.0.i3386, i64 -16
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !1748, !nonnull !4, !noundef !4
  %i.if = getelementptr inbounds i8, ptr %.sroa.0.0.i3386, i64 -8
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !1748, !noundef !4
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0.0.i3386, i64 -16
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !1748, !nonnull !4, !noundef !4
  %i.ij = getelementptr inbounds i8, ptr %.sroa.0.0.i3386, i64 -8
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !1748, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.42.0.i.i.i.i10.i = phi i64 [ %i.hz, %bb.bd ], [ %i.ig, %bb.be ], [ %i.ik, %bb.bf ] ; 2 uses
  %.sroa.01.0.i.i.i.i11.i = phi ptr [ %i.ic, %bb.bd ], [ %i.ie, %bb.be ], [ %i.il, %bb.bf ]
  %spec.store.select.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i8.i, i64 %.sroa.42.0.i.i.i.i10.i)
  %i.im = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i9.i, ptr nonnull %.sroa.01.0.i.i.i.i11.i, i64 %spec.store.select.i.i.i.i12.i) ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = icmp eq i32 %i.im, 0
  %i.ip = sub i64 %.sroa.4.0.i.i.i.i8.i, %.sroa.42.0.i.i.i.i10.i
  %spec.select.i.i.i.i13.i = select i1 %i.io, i64 %i.ip, i64 %i.in
  %i.iq = icmp slt i64 %spec.select.i.i.i.i13.i, 0
  br i1 %i.iq, label %bb.az, label %._crit_edge

._crit_edge:                                      ; preds = %bb.az, %bb.bg, %bb.ay
  %.sroa.0.0.i33.lcssa = phi ptr [ %2, %bb.ay ], [ %2, %bb.az ], [ %.sroa.0.0.i3386, %bb.bg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i33.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit: ; preds = %._crit_edge, %_RNvYNvYNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBT_3ops8function5FnMutTRB5_B1Z_EE8call_mutCs3v5ql5U6hxj_6fontir.exit.i28
  %i.ir = add nuw nsw i64 %.sroa.05.045, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ir, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1y_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 230584300921369396) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [40 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %.lr.ph.1
  %.sroa.05.033.1 = phi i64 [ %i.o, %.lr.ph.1 ], [ %.sroa.0.0, %.loopexit ] ; 3 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.05.033.1
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %.sroa.05.033.1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %i.k, ptr noundef %i.n)
  %i.o = add nuw nsw i64 %.sroa.05.033.1, 1       ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %.loopexit
  %i.p = add nsw i64 %1, -1                       ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.p
  %i.s = getelementptr i8, ptr %i.k, i64 -40
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i
  %i.t = getelementptr i8, ptr %i.cw, i64 40      ; 2 uses
  %i.u = getelementptr i8, ptr %i.cv, i64 40
  %i.v = and i64 %1, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.y, label %bb.x

.lr.ph.i:                                         ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.bl, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.x, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.bk, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i ], [ %2, %.loopexit.1 ] ; 7 uses
  %.sroa.011.07.i = phi ptr [ %i.bi, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i ], [ %i.k, %.loopexit.1 ] ; 7 uses
  %.sroa.015.06.i = phi ptr [ %i.cw, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i ], [ %i.s, %.loopexit.1 ] ; 7 uses
  %.sroa.017.05.i = phi ptr [ %i.cv, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i ], [ %i.r, %.loopexit.1 ] ; 7 uses
  %.sroa.019.04.i = phi ptr [ %i.cx, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i ], [ %i.q, %.loopexit.1 ] ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.04.09.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 32
  %i.aa = load i32, ptr %i.y, align 1
  %i.ab = load i32, ptr %i.z, align 1
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ae = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ac, i32 %i.ad) ; 2 uses
  %i.af = tail call i8 @llvm.scmp.i8.i32(i32 %i.ae, i32 0)
  %i.ag = icmp eq i32 %i.ae, 0
  br i1 %i.ag, label %bb.h, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = load i64, ptr %.sroa.011.07.i, align 8, !range !6, !alias.scope !1831, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 8
  %i.aj = trunc nuw i64 %i.ah to i1
  %i.ak = load i64, ptr %.sroa.06.08.i, align 8, !range !6, !alias.scope !1832, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1               ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.al, label %bb.k, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

bb.j:                                             ; preds = %bb.h
  br i1 %i.al, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8
  %.val15.i.i.i.i.i = load double, ptr %i.ai, align 8, !alias.scope !1831, !noundef !4 ; 3 uses
  %.val16.i.i.i.i.i = load double, ptr %i.am, align 8, !alias.scope !1833, !noundef !4 ; 3 uses
  %i.an = fcmp uno double %.val15.i.i.i.i.i, 0.000000e+00
  %i.ao = fcmp oge double %.val15.i.i.i.i.i, %.val16.i.i.i.i.i
  %i.ap = or i1 %i.an, %i.ao
  %i.aq = fcmp ord double %.val16.i.i.i.i.i, 0.000000e+00
  %i.ar = fcmp ult double %.val16.i.i.i.i.i, %.val15.i.i.i.i.i
  %.not4.i.i.i.i.i.i = and i1 %i.aq, %i.ar
  %..i.i.i.i.i.i = zext i1 %.not4.i.i.i.i.i.i to i8
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.ap, i8 %..i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.as = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %i.as, label %bb.l, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !6, !alias.scope !1831, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i, i64 24
  %i.aw = trunc nuw i64 %i.au to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !6, !alias.scope !1832, !noundef !4
  %i.az = trunc nuw i64 %i.ay to i1               ; 2 uses
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.az, label %bb.o, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

bb.n:                                             ; preds = %bb.l
  %..i.i.i.i.i = sext i1 %i.az to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 24
  %.val.i.i.i.i.i = load double, ptr %i.av, align 8, !alias.scope !1831, !noundef !4 ; 3 uses
  %.val14.i.i.i.i.i = load double, ptr %i.ba, align 8, !alias.scope !1833, !noundef !4 ; 3 uses
  %i.bb = fcmp uno double %.val.i.i.i.i.i, 0.000000e+00
  %i.bc = fcmp oge double %.val.i.i.i.i.i, %.val14.i.i.i.i.i
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = fcmp ord double %.val14.i.i.i.i.i, 0.000000e+00
  %i.bf = fcmp ult double %.val14.i.i.i.i.i, %.val.i.i.i.i.i
  %.not4.i17.i.i.i.i.i = and i1 %i.be, %i.bf
  %..i18.i.i.i.i.i = zext i1 %.not4.i17.i.i.i.i.i to i8
  %.sroa.0.0.i19.i.i.i.i.i = select i1 %i.bd, i8 %..i18.i.i.i.i.i, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %.lr.ph.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %.sroa.0.0.i19.i.i.i.i.i, %bb.o ], [ %i.af, %.lr.ph.i ], [ %..i.i.i.i.i, %bb.n ], [ 1, %bb.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.k ], [ -1, %bb.j ], [ 1, %bb.m ] ; 2 uses
  %i.bg = icmp sgt i8 %.sroa.0.0.i.i.i.i.i, -1    ; 2 uses
  %..i21.i = select i1 %i.bg, ptr %.sroa.06.08.i, ptr %.sroa.011.07.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(40) %..i21.i, i64 40, i1 false), !noalias !1834
  %.sroa.0.0.i.i.i.i.lobit.i = lshr i8 %.sroa.0.0.i.i.i.i.i, 7
  %i.bh = zext nneg i8 %.sroa.0.0.i.i.i.i.lobit.i to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %.sroa.011.07.i, i64 %i.bh ; 4 uses
  %i.bj = zext i1 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %.sroa.06.08.i, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 32
  %i.bo = load i32, ptr %i.bm, align 1
  %i.bp = load i32, ptr %i.bn, align 1
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bo)
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.bs = tail call i32 @llvm.ucmp.i32.i32(i32 %i.bq, i32 %i.br) ; 2 uses
  %i.bt = tail call i8 @llvm.scmp.i8.i32(i32 %i.bs, i32 0)
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %bb.p, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i

bb.p:                                             ; preds = %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i
  %i.bv = load i64, ptr %.sroa.017.05.i, align 8, !range !6, !alias.scope !1843, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 8
  %i.bx = trunc nuw i64 %i.bv to i1
  %i.by = load i64, ptr %.sroa.015.06.i, align 8, !range !6, !alias.scope !1844, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1               ; 2 uses
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.bz, label %bb.s, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bz, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 8
  %.val15.i.i.i.i29.i = load double, ptr %i.bw, align 8, !alias.scope !1843, !noundef !4 ; 3 uses
  %.val16.i.i.i.i30.i = load double, ptr %i.ca, align 8, !alias.scope !1845, !noundef !4 ; 3 uses
  %i.cb = fcmp uno double %.val15.i.i.i.i29.i, 0.000000e+00
  %i.cc = fcmp oge double %.val15.i.i.i.i29.i, %.val16.i.i.i.i30.i
  %i.cd = or i1 %i.cb, %i.cc
  %i.ce = fcmp ord double %.val16.i.i.i.i30.i, 0.000000e+00
  %i.cf = fcmp ult double %.val16.i.i.i.i30.i, %.val15.i.i.i.i29.i
  %.not4.i.i.i.i.i31.i = and i1 %i.ce, %i.cf
  %..i.i.i.i.i32.i = zext i1 %.not4.i.i.i.i.i31.i to i8
  %.sroa.0.0.i.i.i.i.i33.i = select i1 %i.cd, i8 %..i.i.i.i.i32.i, i8 -1 ; 2 uses
  %i.cg = icmp eq i8 %.sroa.0.0.i.i.i.i.i33.i, 0
  br i1 %i.cg, label %bb.t, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !6, !alias.scope !1843, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i, i64 24
  %i.ck = trunc nuw i64 %i.ci to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !range !6, !alias.scope !1844, !noundef !4
  %i.cn = trunc nuw i64 %i.cm to i1               ; 2 uses
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %i.cn, label %bb.w, label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i

bb.v:                                             ; preds = %bb.t
  %..i.i.i.i23.i = sext i1 %i.cn to i8
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i

bb.w:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i, i64 24
  %.val.i.i.i.i24.i = load double, ptr %i.cj, align 8, !alias.scope !1843, !noundef !4 ; 3 uses
  %.val14.i.i.i.i25.i = load double, ptr %i.co, align 8, !alias.scope !1845, !noundef !4 ; 3 uses
  %i.cp = fcmp uno double %.val.i.i.i.i24.i, 0.000000e+00
  %i.cq = fcmp oge double %.val.i.i.i.i24.i, %.val14.i.i.i.i25.i
  %i.cr = or i1 %i.cp, %i.cq
  %i.cs = fcmp ord double %.val14.i.i.i.i25.i, 0.000000e+00
  %i.ct = fcmp ult double %.val14.i.i.i.i25.i, %.val.i.i.i.i24.i
  %.not4.i17.i.i.i.i26.i = and i1 %i.cs, %i.ct
  %..i18.i.i.i.i27.i = zext i1 %.not4.i17.i.i.i.i26.i to i8
  %.sroa.0.0.i19.i.i.i.i28.i = select i1 %i.cr, i8 %..i18.i.i.i.i27.i, i8 -1
  br label %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i

_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit34.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i
  %.sroa.0.0.i.i.i.i22.i = phi i8 [ %.sroa.0.0.i19.i.i.i.i28.i, %bb.w ], [ %i.bt, %_RNvYNvYNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB14_3ops8function5FnMutTRB5_B2b_EE8call_mutBb_.exit.i ], [ %..i.i.i.i23.i, %bb.v ], [ 1, %bb.q ], [ %.sroa.0.0.i.i.i.i.i33.i, %bb.s ], [ -1, %bb.r ], [ 1, %bb.u ] ; 2 uses
  %i.cu = icmp sgt i8 %.sroa.0.0.i.i.i.i22.i, -1  ; 2 uses
  %..i.i = select i1 %i.cu, ptr %.sroa.017.05.i, ptr %.sroa.015.06.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i, i64 40, i1 false), !noalias !1846
  %.neg.i.i = sext i1 %i.cu to i64
  %i.cv = getelementptr [40 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.sroa.0.0.i.i.i.i22.lobit.i = ashr i8 %.sroa.0.0.i.i.i.i22.i, 7
  %.neg13.i.i = sext i8 %.sroa.0.0.i.i.i.i22.lobit.i to i64
  %i.cw = getelementptr [40 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -40
  %exitcond.not.i = icmp eq i64 %i.x, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.cy = icmp ult ptr %i.bk, %i.t                ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cy, ptr %i.bk, ptr %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i, i64 40, i1 false)
  %i.cz = zext i1 %i.cy to i64
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.cz
  %i.db = xor i1 %i.cy, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.dc
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.bi, %._crit_edge.i ], [ %i.dd, %bb.x ]
  %.sroa.06.1.i = phi ptr [ %i.bk, %._crit_edge.i ], [ %i.da, %bb.x ]
  %i.de = icmp ne ptr %.sroa.06.1.i, %i.t
  %i.df = icmp ne ptr %.sroa.011.1.i, %i.u
  %or.cond.i = select i1 %i.de, i1 true, i1 %i.df, !prof !8
  br i1 %or.cond.i, label %bb.z, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit, !prof !8

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #28
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = mul nuw nsw i64 %1, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dh, i1 false), !noalias !1847
  resume { ptr, i32 } %i.dg

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit: ; preds = %bb.y, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.sroa.05.033 = phi i64 [ %i.dk, %.lr.ph ], [ %.sroa.0.0, %bb.g ] ; 3 uses
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.05.033
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.05.033 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(40) %i.di, i64 40, i1 false)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata9ConditionNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %2, ptr noundef %i.dj)
  %i.dk = add nuw nsw i64 %.sroa.05.033, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 11 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1 ; 5 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef readonly %i.h, ptr noundef %i.i)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef 8, ptr noundef nonnull %2)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef readonly %i.m, ptr noundef %i.n)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.l, i64 noundef 8, ptr noundef nonnull %i.k)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef %0, ptr noundef %2)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB19_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir(ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.q = load i64, ptr %0, align 8
  store i64 %i.q, ptr %2, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.t = load i64, ptr %i.r, align 8
  store i64 %i.t, ptr %i.s, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.u = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.v, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit, %bb.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.y = icmp samesign ult i64 %.sroa.0.0, %i.u
  br i1 %i.y, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit.1
  %.sroa.05.031.1 = phi i64 [ %i.cy, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs3v5ql5U6hxj_6fontir.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.05.031.1
  %.idx57 = shl nuw nsw i64 %.sroa.05.031.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx57 ; 3 uses
  %i.ab = load i64, ptr %i.z, align 8             ; 3 uses
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %.val9.i.cast.1 = inttoptr i64 %i.ab to ptr     ; 10 uses
  %.val10.i.1 = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !7, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.ad = load i8, ptr %.val9.i.cast.1, align 8, !range !5, !alias.scope !1898, !noundef !4 ; 2 uses
  %i.ae = icmp samesign ugt i8 %i.ad, 23
  %i.af = zext nneg i8 %i.ad to i64               ; 2 uses
  %i.ag = add nsw i64 %i.af, -23
  %i.ah = select i1 %i.ae, i64 %i.ag, i64 0
  switch i64 %i.ah, label %.loopexit34 [
    i64 0, label %bb.l
    i64 1, label %bb.k
    i64 2, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1898, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1898, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.1
  %i.an = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1898, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1898, !noundef !4
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.1
  %i.ar = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.4.0.i.i.i.i.i.i.1 = phi i64 [ %i.af, %bb.l ], [ %i.aq, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.1 = phi ptr [ %i.ar, %bb.l ], [ %i.ao, %bb.k ], [ %i.am, %bb.j ]
  %i.as = load i8, ptr %.val10.i.1, align 8, !range !5, !alias.scope !1899, !noundef !4 ; 2 uses
  %i.at = icmp samesign ugt i8 %i.as, 23
  %i.au = zext nneg i8 %i.as to i64               ; 2 uses
  %i.av = add nsw i64 %i.au, -23
  %i.aw = select i1 %i.at, i64 %i.av, i64 0
  switch i64 %i.aw, label %.loopexit34 [
    i64 0, label %bb.p
    i64 1, label %bb.o
    i64 2, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.val10.i.1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1899, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %.val10.i.1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1899, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %_RNvYNvYRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs3v5ql5U6hxj_6fontir.exit.i.1

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.val10.i.1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !1899, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %.val10.i.1, i64 16
end_hunk_3
