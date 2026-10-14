Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3json__parse_f64_c:bb.a
  %i.ca = mul nsw i32 %.0114.lcssa.ph, %.0116
  %i.cb = add nsw i32 %i.ca, %.5149
  br label %bb.ac

bb.ac:                                            ; preds = %bb.v, %.critedge5, %.critedge3
  %.6150 = phi i32 [ %i.cb, %.critedge5 ], [ %.5149, %bb.v ], [ %.5149, %.critedge3 ] ; 4 uses
  %.7 = phi ptr [ %.6.lcssa.ph, %.critedge5 ], [ %.4130, %bb.v ], [ %.4130, %.critedge3 ]
  %.not178 = icmp eq ptr %.7, %1
  br i1 %.not178, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.cc = icmp eq i32 %.3154, 0
  %i.cd = icmp eq i32 %.5137, 0
  %or.cond7 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ce = select i1 %.not180, double 0.000000e+00, double -0.000000e+00
  store double %i.ce, ptr %2, align 8, !tbaa !58
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.cf = icmp sgt i32 %.6150, 309
  br i1 %i.cf, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = icmp slt i32 %.6150, -4000
  br i1 %i.cg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ch = select i1 %.not180, double 0.000000e+00, double -0.000000e+00
  store double %i.ch, ptr %2, align 8, !tbaa !58
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.ci = uitofp i64 %.5143 to x86_fp80           ; 2 uses
  %i.cj = icmp sgt i32 %.5, 0
  br i1 %i.cj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ck = tail call fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef %.5)
  %i.cl = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.ci, x86_fp80 %i.ck, x86_fp80 %.5125)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi x86_fp80 [ %i.cl, %bb.aj ], [ %i.ci, %bb.ai ] ; 2 uses
  %.not179 = icmp eq i32 %.6150, 0
  br i1 %.not179, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cm = tail call fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef %.6150)
  %i.cn = fmul x86_fp80 %.0, %i.cm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1 = phi x86_fp80 [ %i.cn, %bb.al ], [ %.0, %bb.ak ] ; 2 uses
  %i.co = fneg x86_fp80 %.1
  %spec.select191 = select i1 %.not180, x86_fp80 %.1, x86_fp80 %i.co
  %i.cp = fptrunc x86_fp80 %spec.select191 to double ; 2 uses
  store double %i.cp, ptr %2, align 8, !tbaa !58
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp une double %i.cq, +inf
  %spec.select192 = zext i1 %i.cr to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af, %bb.ac, %bb.z, %bb.aa, %bb.n, %bb.o, %bb.f, %bb.c, %bb.ah, %bb.ae
  %.0113 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.z ], [ 1, %bb.ae ], [ 0, %bb.ac ], [ 1, %bb.ah ], [ 0, %bb.af ], [ %spec.select192, %bb.am ], [ 0, %bb.o ], [ 0, %bb.aa ]
  ret i32 %.0113
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #17

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef range(i32 -4000, -2147483648) %0) unnamed_addr #18 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader20

.preheader20:                                     ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %0, 15
  br i1 %i.b, label %.lr.ph, label %.preheader18

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 0, %0                        ; 3 uses
  %i.d = icmp samesign ugt i32 %i.c, 15
  br i1 %i.d, label %.lr.ph30, label %.lr.ph35.preheader

.preheader:                                       ; preds = %.lr.ph30
  %.not55 = icmp eq i32 %i.f, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %bb.b, %.preheader
  %.134.ph = phi x86_fp80 [ 1.000000e+00, %bb.b ], [ %i.e, %.preheader ]
  %.11333.ph = phi i32 [ %i.c, %bb.b ], [ %i.f, %.preheader ]
  br label %.lr.ph35

.lr.ph30:                                         ; preds = %bb.b, %.lr.ph30
  %.029 = phi x86_fp80 [ %i.e, %.lr.ph30 ], [ 1.000000e+00, %bb.b ]
  %.01228 = phi i32 [ %i.f, %.lr.ph30 ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = fmul x86_fp80 %.029, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.f = add nsw i32 %.01228, -16                 ; 3 uses
  %i.g = icmp samesign ugt i32 %.01228, 31
  br i1 %i.g, label %.lr.ph30, label %.preheader, !llvm.loop !547

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %.lr.ph35
  %.134 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %.134.ph, %.lr.ph35.preheader ]
  %.11333 = phi i32 [ %i.h, %.lr.ph35 ], [ %.11333.ph, %.lr.ph35.preheader ] ; 2 uses
  %i.h = add nsw i32 %.11333, -1
  %i.i = fmul x86_fp80 %.134, 1.000000e-01        ; 2 uses
  %i.j = icmp samesign ugt i32 %.11333, 1
  br i1 %i.j, label %.lr.ph35, label %.loopexit, !llvm.loop !548

.preheader18:                                     ; preds = %.lr.ph, %.preheader20
  %.214.lcssa = phi i32 [ %0, %.preheader20 ], [ %i.o, %.lr.ph ] ; 5 uses
  %.2.lcssa = phi x86_fp80 [ 1.000000e+00, %.preheader20 ], [ %i.n, %.lr.ph ] ; 3 uses
  %.not = icmp eq i32 %.214.lcssa, 0
  br i1 %.not, label %.loopexit, label %.lr.ph26.preheader

.lr.ph26.preheader:                               ; preds = %.preheader18
  %xtraiter = and i32 %.214.lcssa, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol

.lr.ph26.prol:                                    ; preds = %.lr.ph26.preheader, %.lr.ph26.prol
  %.325.prol = phi x86_fp80 [ %i.l, %.lr.ph26.prol ], [ %.2.lcssa, %.lr.ph26.preheader ]
  %.31524.prol = phi i32 [ %i.k, %.lr.ph26.prol ], [ %.214.lcssa, %.lr.ph26.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph26.prol ], [ 0, %.lr.ph26.preheader ]
  %i.k = add nsw i32 %.31524.prol, -1             ; 2 uses
  %i.l = fmul x86_fp80 %.325.prol, 1.000000e+01   ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol, !llvm.loop !549

.lr.ph26.prol.loopexit:                           ; preds = %.lr.ph26.prol, %.lr.ph26.preheader
  %.325.unr = phi x86_fp80 [ %.2.lcssa, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %.31524.unr = phi i32 [ %.214.lcssa, %.lr.ph26.preheader ], [ %i.k, %.lr.ph26.prol ]
  %.lcssa65.unr = phi x86_fp80 [ poison, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %i.m = icmp ult i32 %.214.lcssa, 8
  br i1 %i.m, label %.loopexit, label %.lr.ph26

.lr.ph:                                           ; preds = %.preheader20, %.lr.ph
  %.222 = phi x86_fp80 [ %i.n, %.lr.ph ], [ 1.000000e+00, %.preheader20 ]
  %.21421 = phi i32 [ %i.o, %.lr.ph ], [ %0, %.preheader20 ] ; 2 uses
  %i.n = fmul x86_fp80 %.222, 1.000000e+16        ; 2 uses
  %i.o = add nsw i32 %.21421, -16                 ; 2 uses
  %i.p = icmp samesign ugt i32 %.21421, 31
  br i1 %i.p, label %.lr.ph, label %.preheader18, !llvm.loop !550

.lr.ph26:                                         ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26
  %.325 = phi x86_fp80 [ %i.y, %.lr.ph26 ], [ %.325.unr, %.lr.ph26.prol.loopexit ]
  %.31524 = phi i32 [ %i.x, %.lr.ph26 ], [ %.31524.unr, %.lr.ph26.prol.loopexit ] ; 2 uses
  %i.q = fmul x86_fp80 %.325, 1.000000e+01
  %i.r = fmul x86_fp80 %i.q, 1.000000e+01
  %i.s = fmul x86_fp80 %i.r, 1.000000e+01
  %i.t = fmul x86_fp80 %i.s, 1.000000e+01
  %i.u = fmul x86_fp80 %i.t, 1.000000e+01
  %i.v = fmul x86_fp80 %i.u, 1.000000e+01
  %i.w = fmul x86_fp80 %i.v, 1.000000e+01
  %i.x = add nsw i32 %.31524, -8
  %i.y = fmul x86_fp80 %i.w, 1.000000e+01         ; 2 uses
  %i.z = icmp sgt i32 %.31524, 8
  br i1 %i.z, label %.lr.ph26, label %.loopexit, !llvm.loop !551

.loopexit:                                        ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26, %.lr.ph35, %.preheader18, %.preheader
  %.4 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %i.e, %.preheader ], [ %.2.lcssa, %.preheader18 ], [ %.lcssa65.unr, %.lr.ph26.prol.loopexit ], [ %i.y, %.lr.ph26 ]
  ret x86_fp80 %.4
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__indent(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 10)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1                       ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw nsw i32 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.010 = phi i32 [ %i.d, %bb.b ], [ 0, %.preheader ]
  %i.e = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 32)
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @tg3json__format_decimal_digits(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #19 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64                    ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = add i32 %3, %2                           ; 11 uses
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]  ; 19 uses
  %.064173 = ptrtoaddr ptr %.064 to i64           ; 3 uses
  %i.f = add i32 %i.c, -17
  %or.cond = icmp ult i32 %i.f, -20
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %1, align 1, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  store i8 %i.g, ptr %.064, align 1, !tbaa !34
  %i.i = icmp sgt i32 %2, 1
  br i1 %i.i, label %iter.check290, label %.loopexit

iter.check290:                                    ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 5 uses
  store i8 46, ptr %i.h, align 1, !tbaa !34
  %wide.trip.count142 = zext nneg i32 %2 to i64   ; 4 uses
  %i.k = add nsw i64 %wide.trip.count142, -1      ; 5 uses
  %min.iters.check275 = icmp ult i32 %2, 9
  %i.l = sub i64 %.064173, %5
  %diff.check274 = icmp ult i64 %i.l, 31
  %or.cond335 = select i1 %min.iters.check275, i1 true, i1 %diff.check274
  br i1 %or.cond335, label %vec.epilog.scalar.ph291.preheader, label %vector.main.loop.iter.check276

vector.main.loop.iter.check276:                   ; preds = %iter.check290
  %min.iters.check277 = icmp ult i32 %2, 33
  br i1 %min.iters.check277, label %vec.epilog.ph294, label %vector.ph278

vector.ph278:                                     ; preds = %vector.main.loop.iter.check276
  %i.m = and i64 %i.k, 24
  %n.vec279 = and i64 %i.k, -32                   ; 5 uses
  %i.n = or disjoint i64 %n.vec279, 1
  %i.o = getelementptr i8, ptr %i.j, i64 %n.vec279 ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.ph278, %vector.body280
  %index281 = phi i64 [ 0, %vector.ph278 ], [ %index.next285, %vector.body280 ] ; 3 uses
  %next.gep282 = getelementptr i8, ptr %i.j, i64 %index281 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index281 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %wide.load283 = load <16 x i8>, ptr %i.q, align 1, !tbaa !34
  %wide.load284 = load <16 x i8>, ptr %i.r, align 1, !tbaa !34
  %i.s = getelementptr i8, ptr %next.gep282, i64 16
  store <16 x i8> %wide.load283, ptr %next.gep282, align 1, !tbaa !34
  store <16 x i8> %wide.load284, ptr %i.s, align 1, !tbaa !34
  %index.next285 = add nuw i64 %index281, 32      ; 2 uses
  %i.t = icmp eq i64 %index.next285, %n.vec279
  br i1 %i.t, label %middle.block286, label %vector.body280, !llvm.loop !552

middle.block286:                                  ; preds = %vector.body280
  %cmp.n287 = icmp eq i64 %i.k, %n.vec279
  br i1 %cmp.n287, label %.loopexit, label %vec.epilog.iter.check292

vec.epilog.iter.check292:                         ; preds = %middle.block286
  %min.epilog.iters.check293 = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check293, label %vec.epilog.scalar.ph291.preheader, label %vec.epilog.ph294, !prof !56

vec.epilog.ph294:                                 ; preds = %vector.main.loop.iter.check276, %vec.epilog.iter.check292
  %vec.epilog.resume.val288 = phi i64 [ %n.vec279, %vec.epilog.iter.check292 ], [ 0, %vector.main.loop.iter.check276 ]
  %n.vec295 = and i64 %i.k, -8                    ; 4 uses
  %i.u = or disjoint i64 %n.vec295, 1
  %i.v = getelementptr i8, ptr %i.j, i64 %n.vec295 ; 2 uses
  br label %vec.epilog.vector.body296

vec.epilog.vector.body296:                        ; preds = %vec.epilog.vector.body296, %vec.epilog.ph294
  %index297 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph294 ], [ %index.next300, %vec.epilog.vector.body296 ] ; 3 uses
  %next.gep298 = getelementptr i8, ptr %i.j, i64 %index297
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index297
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %wide.load299 = load <8 x i8>, ptr %i.x, align 1, !tbaa !34
  store <8 x i8> %wide.load299, ptr %next.gep298, align 1, !tbaa !34
  %index.next300 = add nuw i64 %index297, 8       ; 2 uses
  %i.y = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.y, label %vec.epilog.middle.block301, label %vec.epilog.vector.body296, !llvm.loop !553

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body296
  %cmp.n302 = icmp eq i64 %i.k, %n.vec295
  br i1 %cmp.n302, label %.loopexit, label %vec.epilog.scalar.ph291.preheader

vec.epilog.scalar.ph291.preheader:                ; preds = %iter.check290, %vec.epilog.iter.check292, %vec.epilog.middle.block301
  %indvars.iv139.ph = phi i64 [ 1, %iter.check290 ], [ %i.n, %vec.epilog.iter.check292 ], [ %i.u, %vec.epilog.middle.block301 ] ; 4 uses
  %.165104.ph = phi ptr [ %i.j, %iter.check290 ], [ %i.o, %vec.epilog.iter.check292 ], [ %i.v, %vec.epilog.middle.block301 ] ; 2 uses
  %i.z = sub nsw i64 %wide.trip.count142, %indvars.iv139.ph
  %xtraiter353 = and i64 %i.z, 7                  ; 2 uses
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %vec.epilog.scalar.ph291.prol.loopexit, label %vec.epilog.scalar.ph291.prol

vec.epilog.scalar.ph291.prol:                     ; preds = %vec.epilog.scalar.ph291.preheader, %vec.epilog.scalar.ph291.prol
  %indvars.iv139.prol = phi i64 [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph291.prol ], [ %indvars.iv139.ph, %vec.epilog.scalar.ph291.preheader ] ; 2 uses
  %.165104.prol = phi ptr [ %i.ac, %vec.epilog.scalar.ph291.prol ], [ %.165104.ph, %vec.epilog.scalar.ph291.preheader ] ; 2 uses
  %prol.iter355 = phi i64 [ %prol.iter355.next, %vec.epilog.scalar.ph291.prol ], [ 0, %vec.epilog.scalar.ph291.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %.165104.prol, i64 1 ; 3 uses
  store i8 %i.ab, ptr %.165104.prol, align 1, !tbaa !34
  %indvars.iv.next140.prol = add nuw nsw i64 %indvars.iv139.prol, 1 ; 2 uses
  %prol.iter355.next = add i64 %prol.iter355, 1   ; 2 uses
  %prol.iter355.cmp.not = icmp eq i64 %prol.iter355.next, %xtraiter353
  br i1 %prol.iter355.cmp.not, label %vec.epilog.scalar.ph291.prol.loopexit, label %vec.epilog.scalar.ph291.prol, !llvm.loop !554

vec.epilog.scalar.ph291.prol.loopexit:            ; preds = %vec.epilog.scalar.ph291.prol, %vec.epilog.scalar.ph291.preheader
  %.lcssa340.unr = phi ptr [ poison, %vec.epilog.scalar.ph291.preheader ], [ %i.ac, %vec.epilog.scalar.ph291.prol ]
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %vec.epilog.scalar.ph291.preheader ], [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph291.prol ]
  %.165104.unr = phi ptr [ %.165104.ph, %vec.epilog.scalar.ph291.preheader ], [ %i.ac, %vec.epilog.scalar.ph291.prol ]
  %i.ad = sub nsw i64 %indvars.iv139.ph, %wide.trip.count142
  %i.ae = icmp ugt i64 %i.ad, -8
  br i1 %i.ae, label %.loopexit, label %vec.epilog.scalar.ph291

vec.epilog.scalar.ph291:                          ; preds = %vec.epilog.scalar.ph291.prol.loopexit, %vec.epilog.scalar.ph291
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.7, %vec.epilog.scalar.ph291 ], [ %indvars.iv139.unr, %vec.epilog.scalar.ph291.prol.loopexit ] ; 9 uses
  %.165104 = phi ptr [ %i.bj, %vec.epilog.scalar.ph291 ], [ %.165104.unr, %vec.epilog.scalar.ph291.prol.loopexit ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %.165104, i64 1
  store i8 %i.ag, ptr %.165104, align 1, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %.165104, i64 2
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %.165104, i64 3
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %.165104, i64 4
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %.165104, i64 5
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %.165104, i64 6
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %.165104, i64 7
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %.165104, i64 8 ; 2 uses
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !34
  %indvars.iv.next140.7 = add nuw nsw i64 %indvars.iv139, 8 ; 2 uses
  %exitcond143.not.7 = icmp eq i64 %indvars.iv.next140.7, %wide.trip.count142
  br i1 %exitcond143.not.7, label %.loopexit, label %vec.epilog.scalar.ph291, !llvm.loop !555

.loopexit:                                        ; preds = %vec.epilog.scalar.ph291.prol.loopexit, %vec.epilog.scalar.ph291, %middle.block286, %vec.epilog.middle.block301, %bb.d
  %.266 = phi ptr [ %i.h, %bb.d ], [ %i.v, %vec.epilog.middle.block301 ], [ %i.o, %middle.block286 ], [ %.lcssa340.unr, %vec.epilog.scalar.ph291.prol.loopexit ], [ %i.bj, %vec.epilog.scalar.ph291 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bk = getelementptr inbounds nuw i8, ptr %.266, i64 1 ; 3 uses
  store i8 101, ptr %.266, align 1, !tbaa !34
  %i.bl = icmp slt i32 %i.c, 1
  br i1 %i.bl, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %.266, i64 2
  store i8 45, ptr %i.bk, align 1, !tbaa !34
  %i.bn = sub nsw i32 1, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %.preheader19.i.preheader.i

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bo = icmp eq i32 %i.d, 0
  br i1 %i.bo, label %bb.f, label %.preheader19.i.preheader.i

.preheader19.i.preheader.i:                       ; preds = %bb.e, %.thread.i
  %.017.i = phi i32 [ %i.bn, %.thread.i ], [ %i.d, %bb.e ]
  %.0816.i = phi ptr [ %i.bm, %.thread.i ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bp = zext nneg i32 %.017.i to i64
  br label %.preheader19.i.i

bb.f:                                             ; preds = %bb.e
  store i8 48, ptr %i.b, align 16, !tbaa !34
  br label %tg3json__write_exp.exit

.preheader19.i.i:                                 ; preds = %.preheader19.i.i, %.preheader19.i.preheader.i
  %.01421.i.i = phi i64 [ %i.bt, %.preheader19.i.i ], [ 0, %.preheader19.i.preheader.i ] ; 6 uses
  %.01620.i.i = phi i64 [ %i.bv, %.preheader19.i.i ], [ %i.bp, %.preheader19.i.preheader.i ] ; 3 uses
  %i.bq = urem i64 %.01620.i.i, 10
  %i.br = trunc nuw nsw i64 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, 48
  %i.bt = add nuw i64 %.01421.i.i, 1              ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01421.i.i
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !34
  %i.bv = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %iter.check319, label %.preheader19.i.i, !llvm.loop !556

iter.check319:                                    ; preds = %.preheader19.i.i
  %min.iters.check305 = icmp ult i64 %.01421.i.i, 7
  br i1 %min.iters.check305, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check306

vector.main.loop.iter.check306:                   ; preds = %iter.check319
  %min.iters.check307 = icmp ult i64 %.01421.i.i, 31
  br i1 %min.iters.check307, label %vec.epilog.ph323, label %vector.ph308

vector.ph308:                                     ; preds = %vector.main.loop.iter.check306
  %i.bw = and i64 %i.bt, 24
  %n.vec309 = and i64 %i.bt, -32                  ; 5 uses
  %i.bx = and i64 %i.bt, 31
  br label %vector.body310

vector.body310:                                   ; preds = %vector.ph308, %vector.body310
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next315, %vector.body310 ] ; 3 uses
  %i.by = sub i64 %.01421.i.i, %index311
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -15
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -31
  %wide.load312 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !34
  %wide.load313 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !34
  %reverse = shufflevector <16 x i8> %wide.load312, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse314 = shufflevector <16 x i8> %wide.load313, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %index311 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <16 x i8> %reverse, ptr %i.cc, align 16, !tbaa !34
  store <16 x i8> %reverse314, ptr %i.cd, align 16, !tbaa !34
  %index.next315 = add nuw i64 %index311, 32      ; 2 uses
  %i.ce = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.ce, label %middle.block316, label %vector.body310, !llvm.loop !557

middle.block316:                                  ; preds = %vector.body310
  %cmp.n317 = icmp eq i64 %i.bt, %n.vec309
  br i1 %cmp.n317, label %tg3json__write_exp.exit, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block316
  %min.epilog.iters.check322 = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check322, label %.preheader.i.i.preheader, label %vec.epilog.ph323, !prof !56

vec.epilog.ph323:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check321
  %vec.epilog.resume.val318 = phi i64 [ %n.vec309, %vec.epilog.iter.check321 ], [ 0, %vector.main.loop.iter.check306 ]
  %n.vec324 = and i64 %i.bt, -8                   ; 4 uses
  %i.cf = and i64 %i.bt, 7
  br label %vec.epilog.vector.body325

vec.epilog.vector.body325:                        ; preds = %vec.epilog.vector.body325, %vec.epilog.ph323
  %index326 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph323 ], [ %index.next329, %vec.epilog.vector.body325 ] ; 3 uses
  %i.cg = sub i64 %.01421.i.i, %index326
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -7
  %wide.load327 = load <8 x i8>, ptr %i.ci, align 1, !tbaa !34
  %reverse328 = shufflevector <8 x i8> %wide.load327, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 %index326
  store <8 x i8> %reverse328, ptr %i.cj, align 8, !tbaa !34
  %index.next329 = add nuw i64 %index326, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next329, %n.vec324
  br i1 %i.ck, label %vec.epilog.middle.block330, label %vec.epilog.vector.body325, !llvm.loop !558

vec.epilog.middle.block330:                       ; preds = %vec.epilog.vector.body325
  %cmp.n331 = icmp eq i64 %i.bt, %n.vec324
  br i1 %cmp.n331, label %tg3json__write_exp.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check319, %vec.epilog.iter.check321, %vec.epilog.middle.block330
  %.023.i.i.ph = phi i64 [ 0, %iter.check319 ], [ %n.vec309, %vec.epilog.iter.check321 ], [ %n.vec324, %vec.epilog.middle.block330 ]
  %.122.i.i.ph = phi i64 [ %i.bt, %iter.check319 ], [ %i.bx, %vec.epilog.iter.check321 ], [ %i.cf, %vec.epilog.middle.block330 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.023.i.i = phi i64 [ %i.co, %.preheader.i.i ], [ %.023.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.122.i.i = phi i64 [ %i.cl, %.preheader.i.i ], [ %.122.i.i.ph, %.preheader.i.i.preheader ]
  %i.cl = add nsw i64 %.122.i.i, -1               ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %i.co = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %.023.i.i
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !34
  %.not18.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.preheader.i.i, !llvm.loop !559

tg3json__write_exp.exit:                          ; preds = %.preheader.i.i, %middle.block316, %vec.epilog.middle.block330, %bb.f
  %.0815.i = phi ptr [ %i.bk, %bb.f ], [ %.0816.i, %middle.block316 ], [ %.0816.i, %vec.epilog.middle.block330 ], [ %.0816.i, %.preheader.i.i ] ; 2 uses
  %.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ %n.vec309, %middle.block316 ], [ %n.vec324, %vec.epilog.middle.block330 ], [ %i.co, %.preheader.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.lcssa.sink.i.i
  store i8 0, ptr %i.cq, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0815.i, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %.lcssa.sink.i.i, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.0815.i, i64 %.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.cs = icmp sgt i32 %3, -1
  br i1 %i.cs, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.ct = icmp sgt i32 %2, 0
  br i1 %i.ct, label %iter.check258, label %.preheader

iter.check258:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check244 = icmp ult i32 %2, 4
  %i.cu = sub i64 %5, %.064173
  %diff.check243 = icmp ugt i64 %i.cu, -32
  %or.cond336 = select i1 %min.iters.check244, i1 true, i1 %diff.check243
  br i1 %or.cond336, label %.lr.ph98.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %iter.check258
  %min.iters.check246 = icmp ult i32 %2, 32
  br i1 %min.iters.check246, label %vec.epilog.ph262, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.cv = and i64 %wide.trip.count133, 28
  %n.vec248 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cw = getelementptr i8, ptr %.064, i64 %n.vec248 ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.ph247, %vector.body249
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next254, %vector.body249 ] ; 3 uses
  %next.gep251 = getelementptr i8, ptr %.064, i64 %index250 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %index250 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load252 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !34
  %wide.load253 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !34
  %i.cz = getelementptr i8, ptr %next.gep251, i64 16
  store <16 x i8> %wide.load252, ptr %next.gep251, align 1, !tbaa !34
  store <16 x i8> %wide.load253, ptr %i.cz, align 1, !tbaa !34
  %index.next254 = add nuw i64 %index250, 32      ; 2 uses
  %i.da = icmp eq i64 %index.next254, %n.vec248
  br i1 %i.da, label %middle.block255, label %vector.body249, !llvm.loop !560

middle.block255:                                  ; preds = %vector.body249
  %cmp.n256 = icmp eq i64 %n.vec248, %wide.trip.count133
  br i1 %cmp.n256, label %.preheader, label %vec.epilog.iter.check260

vec.epilog.iter.check260:                         ; preds = %middle.block255
  %min.epilog.iters.check261 = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check261, label %.lr.ph98.preheader, label %vec.epilog.ph262, !prof !575

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check260
  %vec.epilog.resume.val257 = phi i64 [ %n.vec248, %vec.epilog.iter.check260 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec263 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.db = getelementptr i8, ptr %.064, i64 %n.vec263 ; 2 uses
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph262
  %index265 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph262 ], [ %index.next268, %vec.epilog.vector.body264 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %.064, i64 %index265
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %index265
  %wide.load267 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !34
  store <4 x i8> %wide.load267, ptr %next.gep266, align 1, !tbaa !34
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.dd, label %vec.epilog.middle.block269, label %vec.epilog.vector.body264, !llvm.loop !561

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body264
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count133
  br i1 %cmp.n270, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check258, %vec.epilog.iter.check260, %vec.epilog.middle.block269
  %indvars.iv130.ph = phi i64 [ 0, %iter.check258 ], [ %n.vec248, %vec.epilog.iter.check260 ], [ %n.vec263, %vec.epilog.middle.block269 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check258 ], [ %i.cw, %vec.epilog.iter.check260 ], [ %i.db, %vec.epilog.middle.block269 ] ; 2 uses
  %i.de = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter350 = and i64 %i.de, 7                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.dh, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter352 = phi i64 [ %prol.iter352.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.dg, ptr %.36796.prol, align 1, !tbaa !34
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter352.next = add i64 %prol.iter352, 1   ; 2 uses
  %prol.iter352.cmp.not = icmp eq i64 %prol.iter352.next, %xtraiter350
  br i1 %prol.iter352.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !562

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa341.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.dh, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.dh, %.lr.ph98.prol ]
  %i.di = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.dj = icmp ugt i64 %i.di, -8
  br i1 %i.dj, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block255, %vec.epilog.middle.block269, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.db, %vec.epilog.middle.block269 ], [ %i.cw, %middle.block255 ], [ %.lcssa341.unr, %.lr.ph98.prol.loopexit ], [ %i.ep, %.lr.ph98 ] ; 3 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.dk = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.dk, i1 false), !tbaa !34
  %scevgep137 = getelementptr i8, ptr %.367.lcssa, i64 %i.dk
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.ep, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.dm, ptr %.36796, align 1, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !34
  %i.dr = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !34
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !34
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.ek, ptr %i.eh, align 1, !tbaa !34
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 7
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.eo, ptr %i.el, align 1, !tbaa !34
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !563

bb.h:                                             ; preds = %bb.g
  %i.eq = icmp sgt i32 %i.c, 0
  br i1 %i.eq, label %iter.check191, label %bb.i

iter.check191:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.c to i64 ; 8 uses
  %min.iters.check175 = icmp ult i32 %i.c, 4
  %i.er = sub i64 %5, %.064173
  %diff.check174 = icmp ugt i64 %i.er, -32
  %or.cond337 = select i1 %min.iters.check175, i1 true, i1 %diff.check174
  br i1 %or.cond337, label %.preheader79.preheader, label %vector.main.loop.iter.check176

vector.main.loop.iter.check176:                   ; preds = %iter.check191
  %min.iters.check177 = icmp ult i32 %i.c, 32
  br i1 %min.iters.check177, label %vec.epilog.ph195, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check176
  %i.es = and i64 %wide.trip.count122, 28
  %n.vec179 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.et = or disjoint i64 %n.vec179, 1
  %i.eu = getelementptr i8, ptr %.064, i64 %n.vec179 ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.ph178, %vector.body180
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %.064, i64 %index181 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %index181 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load183 = load <16 x i8>, ptr %i.ev, align 1, !tbaa !34
  %wide.load184 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !34
  %i.ex = getelementptr i8, ptr %next.gep182, i64 16
  store <16 x i8> %wide.load183, ptr %next.gep182, align 1, !tbaa !34
  store <16 x i8> %wide.load184, ptr %i.ex, align 1, !tbaa !34
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.ey = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.ey, label %middle.block186, label %vector.body180, !llvm.loop !564

middle.block186:                                  ; preds = %vector.body180
  %ind.escape187 = getelementptr i8, ptr %i.eu, i64 -1
  %cmp.n188 = icmp eq i64 %n.vec179, %wide.trip.count122
  br i1 %cmp.n188, label %.loopexit334, label %vec.epilog.iter.check193

vec.epilog.iter.check193:                         ; preds = %middle.block186
  %min.epilog.iters.check194 = icmp eq i64 %i.es, 0
  br i1 %min.epilog.iters.check194, label %.preheader79.preheader, label %vec.epilog.ph195, !prof !575

vec.epilog.ph195:                                 ; preds = %vector.main.loop.iter.check176, %vec.epilog.iter.check193
  %vec.epilog.resume.val189 = phi i64 [ %n.vec179, %vec.epilog.iter.check193 ], [ 0, %vector.main.loop.iter.check176 ]
  %n.vec196 = and i64 %wide.trip.count122, 2147483644 ; 6 uses
  %i.ez = or disjoint i64 %n.vec196, 1
  %i.fa = getelementptr i8, ptr %.064, i64 %n.vec196 ; 3 uses
  br label %vec.epilog.vector.body197

vec.epilog.vector.body197:                        ; preds = %vec.epilog.vector.body197, %vec.epilog.ph195
  %index198 = phi i64 [ %vec.epilog.resume.val189, %vec.epilog.ph195 ], [ %index.next201, %vec.epilog.vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.064, i64 %index198
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %index198
  %wide.load200 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !34
  store <4 x i8> %wide.load200, ptr %next.gep199, align 1, !tbaa !34
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.fc, label %vec.epilog.middle.block202, label %vec.epilog.vector.body197, !llvm.loop !565

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body197
  %ind.escape204 = getelementptr i8, ptr %i.fa, i64 -1
  %cmp.n205 = icmp eq i64 %n.vec196, %wide.trip.count122
  br i1 %cmp.n205, label %.loopexit334, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %iter.check191, %vec.epilog.iter.check193, %vec.epilog.middle.block202
  %indvars.iv125.ph = phi i64 [ 1, %iter.check191 ], [ %i.et, %vec.epilog.iter.check193 ], [ %i.ez, %vec.epilog.middle.block202 ] ; 2 uses
  %indvars.iv119.ph = phi i64 [ 0, %iter.check191 ], [ %n.vec179, %vec.epilog.iter.check193 ], [ %n.vec196, %vec.epilog.middle.block202 ] ; 3 uses
  %.56989.ph = phi ptr [ %.064, %iter.check191 ], [ %i.eu, %vec.epilog.iter.check193 ], [ %i.fa, %vec.epilog.middle.block202 ] ; 2 uses
  %xtraiter347 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %.preheader79.prol.loopexit, label %.preheader79.prol

.preheader79.prol:                                ; preds = %.preheader79.preheader, %.preheader79.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %.preheader79.prol ], [ %indvars.iv125.ph, %.preheader79.preheader ] ; 2 uses
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %.preheader79.prol ], [ %indvars.iv119.ph, %.preheader79.preheader ] ; 2 uses
  %.56989.prol = phi ptr [ %i.ff, %.preheader79.prol ], [ %.56989.ph, %.preheader79.preheader ] ; 3 uses
  %prol.iter349 = phi i64 [ %prol.iter349.next, %.preheader79.prol ], [ 0, %.preheader79.preheader ]
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119.prol
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !34
  %i.ff = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.fe, ptr %.56989.prol, align 1, !tbaa !34
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !566

.preheader79.prol.loopexit:                       ; preds = %.preheader79.prol, %.preheader79.preheader
  %indvars.iv125.lcssa344.unr = phi i64 [ poison, %.preheader79.preheader ], [ %indvars.iv125.prol, %.preheader79.prol ]
  %.56989.lcssa343.unr = phi ptr [ poison, %.preheader79.preheader ], [ %.56989.prol, %.preheader79.prol ]
  %.lcssa342.unr = phi ptr [ poison, %.preheader79.preheader ], [ %i.ff, %.preheader79.prol ]
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.preheader79.preheader ], [ %indvars.iv.next126.prol, %.preheader79.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %.preheader79.preheader ], [ %indvars.iv.next120.prol, %.preheader79.prol ]
  %.56989.unr = phi ptr [ %.56989.ph, %.preheader79.preheader ], [ %i.ff, %.preheader79.prol ]
  %i.fg = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %.loopexit334, label %.preheader79

.preheader79:                                     ; preds = %.preheader79.prol.loopexit, %.preheader79
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.3, %.preheader79 ], [ %indvars.iv125.unr, %.preheader79.prol.loopexit ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %.preheader79 ], [ %indvars.iv119.unr, %.preheader79.prol.loopexit ] ; 5 uses
  %.56989 = phi ptr [ %i.fw, %.preheader79 ], [ %.56989.unr, %.preheader79.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !34
  %i.fk = getelementptr inbounds nuw i8, ptr %.56989, i64 1
  store i8 %i.fj, ptr %.56989, align 1, !tbaa !34
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !34
  %i.fo = getelementptr inbounds nuw i8, ptr %.56989, i64 2
  store i8 %i.fn, ptr %i.fk, align 1, !tbaa !34
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  store i8 %i.fr, ptr %i.fo, align 1, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 3
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !34
  %i.fw = getelementptr inbounds nuw i8, ptr %.56989, i64 4 ; 2 uses
  store i8 %i.fv, ptr %i.fs, align 1, !tbaa !34
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %exitcond123.not.3, label %.loopexit334.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !567

.loopexit334.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.fx = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3
  br label %.loopexit334

.loopexit334:                                     ; preds = %.loopexit334.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block202, %middle.block186
  %indvars.iv125.lcssa = phi i64 [ %n.vec196, %vec.epilog.middle.block202 ], [ %n.vec179, %middle.block186 ], [ %indvars.iv125.lcssa344.unr, %.preheader79.prol.loopexit ], [ %indvars.iv.next126.2, %.loopexit334.loopexit.unr-lcssa ] ; 7 uses
  %.56989.lcssa = phi ptr [ %ind.escape204, %vec.epilog.middle.block202 ], [ %ind.escape187, %middle.block186 ], [ %.56989.lcssa343.unr, %.preheader79.prol.loopexit ], [ %i.fx, %.loopexit334.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa159 = phi ptr [ %i.fa, %vec.epilog.middle.block202 ], [ %i.eu, %middle.block186 ], [ %.lcssa342.unr, %.preheader79.prol.loopexit ], [ %i.fw, %.loopexit334.loopexit.unr-lcssa ]
  %.56989.lcssa210 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa159, align 1, !tbaa !34
  %.67091 = getelementptr inbounds nuw i8, ptr %.56989.lcssa, i64 2 ; 7 uses
  %i.fy = icmp slt i32 %i.c, %2
  br i1 %i.fy, label %iter.check227, label %.loopexit76

iter.check227:                                    ; preds = %.loopexit334
  %narrow = sub nsw i32 0, %3                     ; 3 uses
  %i.fz = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check212 = icmp ult i32 %narrow, 8
  br i1 %min.iters.check212, label %.lr.ph94.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %iter.check227
  %i.ga = add i64 %indvars.iv125.lcssa, %5
  %i.gb = sub i64 %.56989.lcssa210, %i.ga
  %i.gc = add i64 %i.gb, 1
  %diff.check211 = icmp ult i64 %i.gc, 31
  br i1 %diff.check211, label %.lr.ph94.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %vector.memcheck209
  %min.iters.check214 = icmp ult i32 %narrow, 32
  br i1 %min.iters.check214, label %vec.epilog.ph231, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.gd = and i64 %i.fz, 24
  %n.vec216 = and i64 %i.fz, 2147483616           ; 5 uses
  %i.ge = add i64 %indvars.iv125.lcssa, %n.vec216
  %i.gf = getelementptr i8, ptr %.67091, i64 %n.vec216 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.lcssa
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next222, %vector.body217 ] ; 3 uses
  %next.gep219 = getelementptr i8, ptr %.67091, i64 %index218 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %index218 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %wide.load220 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !34
  %wide.load221 = load <16 x i8>, ptr %i.gi, align 1, !tbaa !34
  %i.gj = getelementptr i8, ptr %next.gep219, i64 16
  store <16 x i8> %wide.load220, ptr %next.gep219, align 1, !tbaa !34
  store <16 x i8> %wide.load221, ptr %i.gj, align 1, !tbaa !34
  %index.next222 = add nuw i64 %index218, 32      ; 2 uses
  %i.gk = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.gk, label %middle.block223, label %vector.body217, !llvm.loop !568

middle.block223:                                  ; preds = %vector.body217
  %cmp.n224 = icmp eq i64 %n.vec216, %i.fz
  br i1 %cmp.n224, label %.loopexit76, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block223
  %min.epilog.iters.check230 = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check230, label %.lr.ph94.preheader, label %vec.epilog.ph231, !prof !56

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check229
  %vec.epilog.resume.val225 = phi i64 [ %n.vec216, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec232 = and i64 %i.fz, 2147483640           ; 4 uses
  %i.gl = add i64 %indvars.iv125.lcssa, %n.vec232
  %i.gm = getelementptr i8, ptr %.67091, i64 %n.vec232 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv125.lcssa
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph231
  %index234 = phi i64 [ %vec.epilog.resume.val225, %vec.epilog.ph231 ], [ %index.next237, %vec.epilog.vector.body233 ] ; 3 uses
  %next.gep235 = getelementptr i8, ptr %.67091, i64 %index234
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %index234
  %wide.load236 = load <8 x i8>, ptr %i.go, align 1, !tbaa !34
  store <8 x i8> %wide.load236, ptr %next.gep235, align 1, !tbaa !34
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.gp, label %vec.epilog.middle.block238, label %vec.epilog.vector.body233, !llvm.loop !569

vec.epilog.middle.block238:                       ; preds = %vec.epilog.vector.body233
  %cmp.n239 = icmp eq i64 %n.vec232, %i.fz
  br i1 %cmp.n239, label %.loopexit76, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %iter.check227, %vector.memcheck209, %vec.epilog.iter.check229, %vec.epilog.middle.block238
  %indvars.iv127.ph = phi i64 [ %indvars.iv125.lcssa, %iter.check227 ], [ %indvars.iv125.lcssa, %vector.memcheck209 ], [ %i.ge, %vec.epilog.iter.check229 ], [ %i.gl, %vec.epilog.middle.block238 ]
  %.67093.ph = phi ptr [ %.67091, %iter.check227 ], [ %.67091, %vector.memcheck209 ], [ %i.gf, %vec.epilog.iter.check229 ], [ %i.gm, %vec.epilog.middle.block238 ]
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.lr.ph94 ], [ %indvars.iv127.ph, %.lr.ph94.preheader ] ; 2 uses
  %.67093 = phi ptr [ %.670, %.lr.ph94 ], [ %.67093.ph, %.lr.ph94.preheader ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv127
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !34
  store i8 %i.gr, ptr %.67093, align 1, !tbaa !34
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %.670 = getelementptr inbounds nuw i8, ptr %.67093, i64 1 ; 2 uses
  %i.gs = trunc nuw i64 %indvars.iv.next128 to i32
  %i.gt = icmp sgt i32 %2, %i.gs
  br i1 %i.gt, label %.lr.ph94, label %.loopexit76, !llvm.loop !570

bb.i:                                             ; preds = %bb.h
  %i.gu = getelementptr inbounds nuw i8, ptr %.064, i64 1
  store i8 48, ptr %.064, align 1, !tbaa !34
  %i.gv = getelementptr i8, ptr %.064, i64 2      ; 2 uses
  store i8 46, ptr %i.gu, align 1, !tbaa !34
  %i.gw = icmp slt i32 %i.c, 0
  br i1 %i.gw, label %.lr.ph.preheader, label %.preheader80

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.gx = sub nsw i32 0, %i.c
  %i.gy = zext nneg i32 %i.gx to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gv, i8 48, i64 %i.gy, i1 false), !tbaa !34
  %i.gz = getelementptr i8, ptr %.064, i64 %i.gy
  %scevgep = getelementptr i8, ptr %i.gz, i64 2
  br label %.preheader80

.preheader80:                                     ; preds = %.lr.ph.preheader, %bb.i
  %.7.lcssa = phi ptr [ %i.gv, %bb.i ], [ %scevgep, %.lr.ph.preheader ] ; 7 uses
  %i.ha = icmp sgt i32 %2, 0
  br i1 %i.ha, label %iter.check, label %.loopexit76

iter.check:                                       ; preds = %.preheader80
  %.7.lcssa161 = ptrtoaddr ptr %.7.lcssa to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.hb = sub i64 %5, %.7.lcssa161
  %diff.check = icmp ugt i64 %i.hb, -32
  %or.cond338 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond338, label %.lr.ph87.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check162 = icmp ult i32 %2, 32
  br i1 %min.iters.check162, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hc = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.hd = getelementptr i8, ptr %.7.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.7.lcssa, i64 %index ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load = load <16 x i8>, ptr %i.he, align 1, !tbaa !34
  %wide.load163 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !34
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !34
  store <16 x i8> %wide.load163, ptr %i.hg, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph87.preheader, label %vec.epilog.ph, !prof !575

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.hi = getelementptr i8, ptr %.7.lcssa, i64 %n.vec164 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %.7.lcssa, i64 %index165
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %index165
  %wide.load167 = load <4 x i8>, ptr %i.hj, align 1, !tbaa !34
  store <4 x i8> %wide.load167, ptr %next.gep166, align 1, !tbaa !34
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !572

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %n.vec164, %wide.trip.count
  br i1 %cmp.n169, label %.loopexit76, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec164, %vec.epilog.middle.block ] ; 4 uses
  %.885.ph = phi ptr [ %.7.lcssa, %iter.check ], [ %i.hd, %vec.epilog.iter.check ], [ %i.hi, %vec.epilog.middle.block ] ; 2 uses
  %i.hl = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.hl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph87.prol ], [ %indvars.iv.ph, %.lr.ph87.preheader ] ; 2 uses
  %.885.prol = phi ptr [ %i.ho, %.lr.ph87.prol ], [ %.885.ph, %.lr.ph87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !34
  %i.ho = getelementptr inbounds nuw i8, ptr %.885.prol, i64 1 ; 3 uses
  store i8 %i.hn, ptr %.885.prol, align 1, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !573

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.lcssa346.unr = phi ptr [ poison, %.lr.ph87.preheader ], [ %i.ho, %.lr.ph87.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph87.preheader ], [ %indvars.iv.next.prol, %.lr.ph87.prol ]
  %.885.unr = phi ptr [ %.885.ph, %.lr.ph87.preheader ], [ %i.ho, %.lr.ph87.prol ]
  %i.hp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hq = icmp ugt i64 %i.hp, -8
  br i1 %i.hq, label %.loopexit76, label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph87 ], [ %indvars.iv.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %.885 = phi ptr [ %i.iv, %.lr.ph87 ], [ %.885.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !34
  %i.ht = getelementptr inbounds nuw i8, ptr %.885, i64 1
  store i8 %i.hs, ptr %.885, align 1, !tbaa !34
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !34
  %i.hx = getelementptr inbounds nuw i8, ptr %.885, i64 2
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !34
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !34
  %i.ib = getelementptr inbounds nuw i8, ptr %.885, i64 3
  store i8 %i.ia, ptr %i.hx, align 1, !tbaa !34
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !34
  %i.if = getelementptr inbounds nuw i8, ptr %.885, i64 4
  store i8 %i.ie, ptr %i.ib, align 1, !tbaa !34
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !34
  %i.ij = getelementptr inbounds nuw i8, ptr %.885, i64 5
  store i8 %i.ii, ptr %i.if, align 1, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 5
  %i.im = load i8, ptr %i.il, align 1, !tbaa !34
  %i.in = getelementptr inbounds nuw i8, ptr %.885, i64 6
  store i8 %i.im, ptr %i.ij, align 1, !tbaa !34
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !34
  %i.ir = getelementptr inbounds nuw i8, ptr %.885, i64 7
  store i8 %i.iq, ptr %i.in, align 1, !tbaa !34
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 7
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !34
  %i.iv = getelementptr inbounds nuw i8, ptr %.885, i64 8 ; 2 uses
  store i8 %i.iu, ptr %i.ir, align 1, !tbaa !34
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit76, label %.lr.ph87, !llvm.loop !574

.loopexit76:                                      ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %.lr.ph94, %middle.block, %vec.epilog.middle.block, %middle.block223, %vec.epilog.middle.block238, %.lr.ph102.preheader, %.preheader80, %.loopexit334, %.preheader, %tg3json__write_exp.exit
  %.071 = phi ptr [ %i.cr, %tg3json__write_exp.exit ], [ %scevgep137, %.lr.ph102.preheader ], [ %.670, %.lr.ph94 ], [ %.367.lcssa, %.preheader ], [ %.67091, %.loopexit334 ], [ %.7.lcssa, %.preheader80 ], [ %i.gm, %vec.epilog.middle.block238 ], [ %i.gf, %middle.block223 ], [ %i.hi, %vec.epilog.middle.block ], [ %i.hd, %middle.block ], [ %.lcssa346.unr, %.lr.ph87.prol.loopexit ], [ %i.iv, %.lr.ph87 ]
  ret ptr %.071
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @tg3__default_alloc(i64 noundef %0, ptr nofree readnone captures(none) %1) #20 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #30
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @tg3__default_realloc(ptr noundef captures(none) %0, i64 %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #21 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %2) #29
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @tg3__default_free(ptr noundef captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2) #13 {
bb.a:
  tail call void @free(ptr noundef %0) #28
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @tg3__fs_read_file(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i32 %3, ptr nofree readnone captures(none) %4) #12 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !20
  store i64 0, ptr %1, align 8, !tbaa !27
  %i.a = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.43) ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2)
  %.not28 = icmp eq i32 %i.b, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.g = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 0)
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #30 ; 4 uses
  %.not30 = icmp eq ptr %i.i, null
  br i1 %.not30, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
end_hunk_0
