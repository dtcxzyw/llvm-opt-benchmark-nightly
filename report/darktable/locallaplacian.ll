Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %i.azq = shl nsw <4 x i64> %i.azp, splat (i64 2) ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azq
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.azo, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !20, !alias.scope !156, !noalias !158
  %i.azr = or disjoint <4 x i64> %i.azq, splat (i64 1) ; 2 uses
  %i.azs = extractelement <4 x i64> %i.azr, i64 0
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azs
  %wide.vec1311 = load <16 x float>, ptr %i.azt, align 4, !tbaa !20, !alias.scope !160 ; 2 uses
  %strided.vec1312 = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1313 = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.gep1314 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azr
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1312, <4 x ptr> align 4 %wide.gep1314, <4 x i1> splat (i1 true)), !tbaa !20, !alias.scope !156, !noalias !158
  %i.azu = or disjoint <4 x i64> %i.azq, splat (i64 2)
  %wide.gep1315 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azu
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1313, <4 x ptr> align 4 %wide.gep1315, <4 x i1> splat (i1 true)), !tbaa !20, !alias.scope !156, !noalias !158
  %index.next1316 = add nuw i64 %index1309, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.azv = icmp eq i64 %index.next1316, %n.vec1305
  br i1 %i.azv, label %scalar.ph.preheader, label %vector.body1308, !llvm.loop !161

._crit_edge907.split:                             ; preds = %._crit_edge905
  br i1 %.not, label %.thread825.peel, label %bb.as

._crit_edge905:                                   ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 1 ; 2 uses
  %exitcond1053.not = icmp eq i64 %indvars.iv.next1050, %wide.trip.count1052
  br i1 %exitcond1053.not, label %._crit_edge907.split, label %.preheader844

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045.1, %scalar.ph ], [ %indvars.iv1044.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.azw = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044
  %i.azx = load float, ptr %i.azw, align 4, !tbaa !20
  %i.azy = fmul reassoc nsz arcp contract afn float %i.azx, 1.000000e+02
  %i.azz = add nuw nsw i64 %indvars.iv1044, %i.ayw
  %i.baa = shl nsw i64 %i.azz, 2                  ; 3 uses
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.baa
  store float %i.azy, ptr %i.bab, align 4, !tbaa !20
  %i.bac = or disjoint i64 %i.baa, 1              ; 2 uses
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bac
  %i.bae = load float, ptr %i.bad, align 4, !tbaa !20
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bac
  store float %i.bae, ptr %i.baf, align 4, !tbaa !20
  %i.bag = or disjoint i64 %i.baa, 2              ; 2 uses
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bag
  %i.bai = load float, ptr %i.bah, align 4, !tbaa !20
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bag
  store float %i.bai, ptr %i.baj, align 4, !tbaa !20
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %i.bak = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv.next1045
  %i.bal = load float, ptr %i.bak, align 4, !tbaa !20
  %i.bam = fmul reassoc nsz arcp contract afn float %i.bal, 1.000000e+02
  %i.ban = add nuw nsw i64 %indvars.iv.next1045, %i.ayw
  %i.bao = shl nsw i64 %i.ban, 2                  ; 3 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bao
  store float %i.bam, ptr %i.bap, align 4, !tbaa !20
  %i.baq = or disjoint i64 %i.bao, 1              ; 2 uses
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.baq
  %i.bas = load float, ptr %i.bar, align 4, !tbaa !20
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.baq
  store float %i.bas, ptr %i.bat, align 4, !tbaa !20
  %i.bau = or disjoint i64 %i.bao, 2              ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bau
  %i.baw = load float, ptr %i.bav, align 4, !tbaa !20
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bau
  store float %i.baw, ptr %i.bax, align 4, !tbaa !20
  %indvars.iv.next1045.1 = add nuw nsw i64 %indvars.iv1044, 2 ; 2 uses
  %exitcond1048.not.1 = icmp eq i64 %indvars.iv.next1045.1, %wide.trip.count1047
  br i1 %exitcond1048.not.1, label %._crit_edge905, label %scalar.ph, !llvm.loop !162

bb.as:                                            ; preds = %._crit_edge907.split
  %i.bay = load i32, ptr %8, align 8, !tbaa !18
  %i.baz = icmp eq i32 %i.bay, 1
  br i1 %i.baz, label %.lr.ph910, label %.thread809.thread.thread

.lr.ph910:                                        ; preds = %bb.as
  %i.bba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %storemerge, ptr %i.bba, align 8, !tbaa !11
  %i.bbb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %2, ptr %i.bbb, align 8, !tbaa !89
  %i.bbc = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %3, ptr %i.bbc, align 4, !tbaa !163
  %i.bbd = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.pre, ptr %i.bbd, align 8, !tbaa !92
  %i.bbe = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.pre1074, ptr %i.bbe, align 4, !tbaa !93
  %i.bbf = getelementptr inbounds nuw i8, ptr %8, i64 288
  store i32 %i.m, ptr %i.bbf, align 8, !tbaa !16
  %i.bbg = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bbh = tail call i32 @llvm.umax.i32(i32 %i.m, i32 1)
  %i.bbi = shl nuw nsw i32 %i.bbh, 3
  %i.bbj = zext nneg i32 %i.bbi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bbg, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.bbj, i1 false), !tbaa !17
  br label %.thread809.thread

.thread809:                                       ; preds = %vec.epilog.vector.body1342, %.lr.ph912.prol.loopexit, %.lr.ph912, %middle.block1333
  br i1 %.not, label %.thread825.peel, label %.thread809.thread

.thread809.thread:                                ; preds = %.lr.ph910, %.thread809
  %.pr1103 = load i32, ptr %8, align 8, !tbaa !18
  %.not1100 = icmp eq i32 %.pr1103, 1
  br i1 %.not1100, label %.peel.next, label %.thread809.thread.thread

.thread809.thread.thread:                         ; preds = %bb.as, %.thread809.thread
  %i.bbk = load ptr, ptr %i.e, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbk) #14
  %.pr.peel = load i32, ptr %8, align 8, !tbaa !18
  %.not627.peel = icmp eq i32 %.pr.peel, 1
  br i1 %.not627.peel, label %.peel.next, label %bb.at

.thread825.peel:                                  ; preds = %._crit_edge907.split, %.thread809
  %i.bbl = load ptr, ptr %i.e, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbl) #14
  br label %bb.at

bb.at:                                            ; preds = %.thread825.peel, %.thread809.thread.thread
  %i.bbm = load ptr, ptr %i.f, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbm) #14
  br label %.peel.next

.peel.next:                                       ; preds = %.thread809.thread, %.thread809.thread.thread, %bb.at
  %i.bbn = load ptr, ptr %i.h, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbn) #14
  %gep.1.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.bbo = load ptr, ptr %gep.1.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbo) #14
  %gep.2.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.bbp = load ptr, ptr %gep.2.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbp) #14
  %gep.3.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  %i.bbq = load ptr, ptr %gep.3.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbq) #14
  %gep.4.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  %i.bbr = load ptr, ptr %gep.4.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbr) #14
  %gep.5.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 1200
  %i.bbs = load ptr, ptr %gep.5.peel, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.bbs) #14
  br label %bb.au

.loopexit1067:                                    ; preds = %.thread826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %.loopexit

bb.au:                                            ; preds = %.peel.next, %.thread826
  %indvars.iv1062 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next1063, %.thread826 ] ; 4 uses
  %i.bbt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1062
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbu) #14
  br i1 %.not, label %.thread825, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.pr = load i32, ptr %8, align 8, !tbaa !18
  %.not627 = icmp eq i32 %.pr, 1
  br i1 %.not627, label %.thread826, label %.thread825

.thread825:                                       ; preds = %bb.au, %bb.av
  %i.bbv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1062
  %i.bbw = load ptr, ptr %i.bbv, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbw) #14
  br label %.thread826

.thread826:                                       ; preds = %.thread825, %bb.av
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv1062 ; 6 uses
  %i.bbx = load ptr, ptr %invariant.gep, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbx) #14
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %i.bby = load ptr, ptr %gep.1, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bby) #14
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %i.bbz = load ptr, ptr %gep.2, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bbz) #14
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %i.bca = load ptr, ptr %gep.3, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bca) #14
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 960
  %i.bcb = load ptr, ptr %gep.4, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bcb) #14
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1200
  %i.bcc = load ptr, ptr %gep.5, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bcc) #14
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1 ; 2 uses
  %exitcond1065.not = icmp eq i64 %indvars.iv.next1063, 30
  br i1 %exitcond1065.not, label %.loopexit1067, label %bb.au, !llvm.loop !164

.loopexit:                                        ; preds = %vec.epilog.vector.body1373, %.lr.ph918.prol.loopexit, %.lr.ph918, %middle.block1364, %.loopexit1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @apply_curve(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = sub i32 %3, %4                           ; 10 uses
  %i.d = icmp ult i32 %4, %i.c
  br i1 %i.d, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %bb.a
  %i.e = zext i32 %4 to i64                       ; 30 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.f = sub i32 %2, %4                           ; 6 uses
  %i.g = icmp ult i32 %4, %i.f
  %i.h = fmul reassoc nsz arcp contract afn float %6, 2.000000e+00 ; 6 uses
  %i.i = fmul reassoc nsz arcp contract afn float %6, -2.000000e+00 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %8, %6
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %6
  %i.l = fneg reassoc nsz arcp contract afn float %i.k ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %7, %6
  %i.n = fadd reassoc nsz arcp contract afn float %6, %i.m
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.h ; 2 uses
  %i.p = fsub reassoc nsz arcp contract afn float %5, %6 ; 2 uses
  %i.q = fadd reassoc nsz arcp contract afn float %6, %5 ; 2 uses
  %.not = icmp eq i32 %4, 0                       ; 3 uses
  %i.r = icmp ult i32 %i.f, %2                    ; 2 uses
  %i.s = add i32 %i.f, -1
  %i.t = zext i32 %i.s to i64                     ; 3 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph66.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph66
  %i.u = fmul reassoc nsz arcp contract afn float %6, f0x3EAAAAAB
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.h ; 2 uses
  %i.w = sext i32 %i.f to i64                     ; 5 uses
  %wide.trip.count122 = zext i32 %i.c to i64
  %i.x = add i32 %4, -1                           ; 3 uses
  %i.y = zext i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %i.aa = shl i32 %4, 1
  %i.ab = xor i32 %i.aa, -1
  %i.ac = add i32 %2, %i.ab                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check288 = icmp ult i32 %i.ac, 7
  %i.af = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check288, %diff.check
  %n.vec290 = and i64 %i.ae, 8589934584           ; 4 uses
  %i.ag = trunc i64 %n.vec290 to i32
  %i.ah = add i32 %4, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec290, 2            ; 2 uses
  %broadcast.splatinsert291 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat292 = shufflevector <8 x float> %broadcast.splatinsert291, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert293 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat294 = shufflevector <8 x float> %broadcast.splatinsert293, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert295 = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat296 = shufflevector <8 x float> %broadcast.splatinsert295, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert297 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat298 = shufflevector <8 x float> %broadcast.splatinsert297, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert299 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat300 = shufflevector <8 x float> %broadcast.splatinsert299, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat302 = shufflevector <8 x float> %broadcast.splatinsert301, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert305 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat306 = shufflevector <8 x float> %broadcast.splatinsert305, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert307 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat308 = shufflevector <8 x float> %broadcast.splatinsert307, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert309 = insertelement <8 x float> poison, float %i.q, i64 0
  %broadcast.splat310 = shufflevector <8 x float> %broadcast.splatinsert309, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert311 = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat312 = shufflevector <8 x float> %broadcast.splatinsert311, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat314 = shufflevector <8 x float> %broadcast.splatinsert313, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat298
  %i.ak = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat298
  %i.al = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat314
  %cmp.n322 = icmp eq i64 %i.ae, %n.vec290
  %i.am = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %6
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %6
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v
  %min.iters.check261 = icmp ult i32 %4, 4
  %min.iters.check263 = icmp ult i32 %4, 32
  %i.ap = and i64 %i.e, 28
  %n.vec265 = and i64 %i.e, 4294967264            ; 4 uses
  %cmp.n272 = icmp eq i64 %n.vec265, %i.e
  %min.epilog.iters.check277 = icmp eq i64 %i.ap, 0
  %n.vec279 = and i64 %i.e, 4294967292            ; 3 uses
  %cmp.n286 = icmp eq i64 %n.vec279, %i.e
  %min.iters.check233 = icmp ult i32 %i.x, 7
  %min.iters.check235 = icmp ult i32 %i.x, 31
  %i.aq = and i64 %i.z, 24
  %n.vec237 = and i64 %i.z, 8589934560            ; 4 uses
  %i.ar = add nsw i64 %n.vec237, %i.w
  %cmp.n244 = icmp eq i64 %i.z, %n.vec237
  %min.epilog.iters.check250 = icmp eq i64 %i.aq, 0
  %n.vec252 = and i64 %i.z, 8589934584            ; 3 uses
  %i.as = add nsw i64 %n.vec252, %i.w
  %cmp.n259 = icmp eq i64 %i.z, %n.vec252
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv119 = phi i64 [ %i.e, %.lr.ph.us.preheader ], [ %indvars.iv.next120, %._crit_edge.us ] ; 2 uses
  %i.at = trunc nuw i64 %indvars.iv119 to i32
  %i.au = mul i32 %2, %i.at
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %gep.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.av ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 8 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.e ; 4 uses
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph.us
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.ai
  %i.az = getelementptr i8, ptr %gep.us, i64 %i.ai
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph289
  %index316 = phi i64 [ 0, %vector.ph289 ], [ %index.next320, %vector.body315 ] ; 2 uses
  %i.ba = shl i64 %index316, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.ba
  %next.gep317 = getelementptr i8, ptr %gep.us, i64 %i.ba
  %wide.load = load <8 x float>, ptr %next.gep317, align 4, !tbaa !20
  %i.bb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat292 ; 10 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.bb, %broadcast.splat294 ; 2 uses
  %i.bd = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.bb, %broadcast.splat296
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bb, zeroinitializer ; 2 uses
  %i.bg = xor <8 x i1> %i.bf, splat (i1 true)
  %i.bh = and <8 x i1> %i.be, %i.bg
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, splat (float -5.000000e-01)
  %i.bj = fmul reassoc nsz arcp contract afn <8 x float> %i.bi, %i.aj ; 3 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bj, zeroinitializer
  %i.bl = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bj, splat (float 1.000000e+00)
  %i.bm = select reassoc nsz arcp contract afn <8 x i1> %i.bl, <8 x float> %i.bj, <8 x float> splat (float 1.000000e+00)
  %i.bn = select reassoc nsz arcp contract afn <8 x i1> %i.bk, <8 x float> %i.bm, <8 x float> zeroinitializer ; 3 uses
  %i.bo = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, %broadcast.splat300
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bo, %broadcast.splat294
  %i.br = fsub reassoc nsz arcp contract afn <8 x float> %i.bp, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %i.br, %i.bn
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %broadcast.splat292
  %i.bu = and <8 x i1> %i.be, %i.bf
  %i.bv = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bb, splat (float 5.000000e-01)
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %i.bv, %i.ak ; 3 uses
  %i.bx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bw, zeroinitializer
  %i.by = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bw, splat (float 1.000000e+00)
  %i.bz = select reassoc nsz arcp contract afn <8 x i1> %i.by, <8 x float> %i.bw, <8 x float> splat (float 1.000000e+00)
  %i.ca = select reassoc nsz arcp contract afn <8 x i1> %i.bx, <8 x float> %i.bz, <8 x float> zeroinitializer ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, %broadcast.splat302
  %i.cc = fadd reassoc nsz arcp contract afn <8 x float> %i.cb, %broadcast.splat294
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.cc, %i.ca
  %i.ce = fadd reassoc nsz arcp contract afn <8 x float> %i.cd, %broadcast.splat292
  %i.cf = fadd reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat298
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.cf, %broadcast.splat304
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat306, %i.cg
  %i.ci = fsub reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat298
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %i.ci, %broadcast.splat308
  %i.ck = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat310, %i.cj
  %predphi = select nsz <8 x i1> %i.bc, <8 x float> %i.ch, <8 x float> %i.ck
  %predphi318 = select nsz <8 x i1> %i.bu, <8 x float> %i.ce, <8 x float> %predphi
  %predphi319 = select nsz <8 x i1> %i.bh, <8 x float> %i.bt, <8 x float> %predphi318
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat312
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, %i.bb
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, splat (float 1.140130e+07)
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, %i.al
  %i.cp = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.co
  %i.cq = fptosi <8 x float> %i.cp to <8 x i32>
  %i.cr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cq, <8 x i32> zeroinitializer)
  %i.cs = bitcast <8 x i32> %i.cr to <8 x float>
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %i.cl, %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn <8 x float> %predphi319, %i.ct
  store <8 x float> %i.cu, ptr %next.gep, align 4, !tbaa !20
  %index.next320 = add nuw i64 %index316, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next320, %n.vec290
  br i1 %i.cv, label %middle.block321, label %vector.body315, !llvm.loop !166

middle.block321:                                  ; preds = %vector.body315
  br i1 %cmp.n322, label %..preheader55_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block321
  %.04959.us.ph = phi i32 [ %4, %.lr.ph.us ], [ %i.ah, %middle.block321 ]
  %.05058.us.ph = phi ptr [ %i.ax, %.lr.ph.us ], [ %i.ay, %middle.block321 ]
  %.05157.us.ph = phi ptr [ %gep.us, %.lr.ph.us ], [ %i.az, %middle.block321 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %curve_scalar.exit.us
  %.04959.us = phi i32 [ %i.ej, %curve_scalar.exit.us ], [ %.04959.us.ph, %scalar.ph.preheader ]
  %.05058.us = phi ptr [ %i.ei, %curve_scalar.exit.us ], [ %.05058.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.05157.us = phi ptr [ %i.cw, %curve_scalar.exit.us ], [ %.05157.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.05157.us, i64 4
  %i.cx = load float, ptr %.05157.us, align 4, !tbaa !20
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cx, %5 ; 10 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt float %i.cy, %i.h
  br i1 %i.cz, label %bb.g, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.da = fcmp reassoc nsz arcp contract afn olt float %i.cy, %i.i
  br i1 %i.da, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.db = fcmp reassoc nsz arcp contract afn ogt float %i.cy, 0.000000e+00
  br i1 %i.db, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cy, -5.000000e-01
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.am ; 3 uses
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, 0.000000e+00
  %i.df = fcmp reassoc nsz arcp contract afn olt float %i.dd, 1.000000e+00
  %spec.select.i.us = select reassoc nsz arcp contract afn i1 %i.df, float %i.dd, float 1.000000e+00
  %i.dg = select reassoc nsz arcp contract afn i1 %i.de, float %spec.select.i.us, float 0.000000e+00 ; 3 uses
  %i.dh = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.dg
  %.neg.i.us = fmul reassoc nsz arcp contract afn float %i.dg, %i.l
  %.neg63.i.us = fmul reassoc nsz arcp contract afn float %i.dh, %i.h
  %i.di = fsub reassoc nsz arcp contract afn float %.neg.i.us, %.neg63.i.us
  %reass.mul.i.us = fmul reassoc nsz arcp contract afn float %i.di, %i.dg
  %i.dj = fadd reassoc nsz arcp contract afn float %reass.mul.i.us, %5
  br label %curve_scalar.exit.us

bb.e:                                             ; preds = %bb.c
  %i.dk = fmul reassoc nnan nsz arcp contract afn float %i.cy, 5.000000e-01
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.an ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ogt float %i.dl, 0.000000e+00
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %i.dl, 1.000000e+00
  %i.do = select reassoc nsz arcp contract afn i1 %i.dn, float %i.dl, float 1.000000e+00
  %i.dp = select reassoc nsz arcp contract afn i1 %i.dm, float %i.do, float 0.000000e+00 ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.o
  %reass.add.i.us = fadd reassoc nsz arcp contract afn float %i.dq, %i.h
  %reass.mul65.i.us = fmul reassoc nsz arcp contract afn float %reass.add.i.us, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn float %reass.mul65.i.us, %5
  br label %curve_scalar.exit.us

bb.f:                                             ; preds = %bb.b
  %i.ds = fadd reassoc nsz arcp contract afn float %i.cy, %6
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %8
  %i.du = fadd reassoc nsz arcp contract afn float %i.p, %i.dt
  br label %curve_scalar.exit.us

bb.g:                                             ; preds = %scalar.ph
  %i.dv = fsub reassoc nsz arcp contract afn float %i.cy, %6
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %7
  %i.dx = fadd reassoc nsz arcp contract afn float %i.q, %i.dw
  br label %curve_scalar.exit.us

curve_scalar.exit.us:                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.us = phi nsz float [ %i.dx, %bb.g ], [ %i.du, %bb.f ], [ %i.dr, %bb.e ], [ %i.dj, %bb.d ]
  %i.dy = fmul reassoc nsz arcp contract afn float %i.cy, %9
  %i.dz = fmul reassoc nsz arcp contract afn float %i.cy, %i.cy
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, 1.140130e+07
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.ao
  %i.ec = fsub reassoc nsz arcp contract afn float f0x4E7E0000, %i.eb
  %i.ed = fptosi float %i.ec to i32
  %i.ee = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 0)
  %i.ef = bitcast i32 %i.ee to float
  %i.eg = fmul reassoc nsz arcp contract afn float %i.dy, %i.ef
  %i.eh = fadd reassoc nsz arcp contract afn float %.0.i.us, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.05058.us, i64 4
  store float %i.eh, ptr %.05058.us, align 4, !tbaa !20
  %i.ej = add nuw i32 %.04959.us, 1               ; 2 uses
  %exitcond110.not = icmp eq i32 %i.ej, %i.f
  br i1 %exitcond110.not, label %..preheader55_crit_edge.us, label %scalar.ph, !llvm.loop !167

.lr.ph61.us:                                      ; preds = %.lr.ph61.us.preheader, %.lr.ph61.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph61.us ], [ %indvars.iv111.ph, %.lr.ph61.us.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv111
  store float %.pre127, ptr %i.ek, align 4, !tbaa !20
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %i.e
  br i1 %exitcond115.not, label %.preheader.us, label %.lr.ph61.us, !llvm.loop !168

vec.epilog.scalar.ph248:                          ; preds = %vec.epilog.scalar.ph248.preheader, %vec.epilog.scalar.ph248
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %vec.epilog.scalar.ph248 ], [ %indvars.iv116.ph, %vec.epilog.scalar.ph248.preheader ] ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv116
  store float %.pre128, ptr %i.el, align 4, !tbaa !20
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.em = trunc nsw i64 %indvars.iv.next117 to i32
  %i.en = icmp ugt i32 %2, %i.em
  br i1 %i.en, label %vec.epilog.scalar.ph248, label %._crit_edge.us, !llvm.loop !169

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph248, %middle.block243, %vec.epilog.middle.block258, %.preheader.us
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge67, label %.lr.ph.us

.preheader.us:                                    ; preds = %.lr.ph61.us, %middle.block271, %vec.epilog.middle.block285, %..preheader55_crit_edge.us
  br i1 %i.r, label %iter.check247, label %._crit_edge.us

..preheader55_crit_edge.us:                       ; preds = %curve_scalar.exit.us, %middle.block321
  br i1 %.not, label %.preheader.us, label %iter.check274

iter.check274:                                    ; preds = %..preheader55_crit_edge.us
  %.pre127 = load float, ptr %i.ax, align 4, !tbaa !20 ; 3 uses
  br i1 %min.iters.check261, label %.lr.ph61.us.preheader, label %vector.main.loop.iter.check262

vector.main.loop.iter.check262:                   ; preds = %iter.check274
  br i1 %min.iters.check263, label %vec.epilog.ph278, label %vector.ph264

vector.ph264:                                     ; preds = %vector.main.loop.iter.check262
  %broadcast.splatinsert266 = insertelement <8 x float> poison, float %.pre127, i64 0
  %broadcast.splat267 = shufflevector <8 x float> %broadcast.splatinsert266, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next270, %vector.body268 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index269 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store <8 x float> %broadcast.splat267, ptr %i.eo, align 4, !tbaa !20
  store <8 x float> %broadcast.splat267, ptr %i.ep, align 4, !tbaa !20
  store <8 x float> %broadcast.splat267, ptr %i.eq, align 4, !tbaa !20
  store <8 x float> %broadcast.splat267, ptr %i.er, align 4, !tbaa !20
  %index.next270 = add nuw i64 %index269, 32      ; 2 uses
  %i.es = icmp eq i64 %index.next270, %n.vec265
  br i1 %i.es, label %middle.block271, label %vector.body268, !llvm.loop !170

middle.block271:                                  ; preds = %vector.body268
  br i1 %cmp.n272, label %.preheader.us, label %vec.epilog.iter.check276

vec.epilog.iter.check276:                         ; preds = %middle.block271
  br i1 %min.epilog.iters.check277, label %.lr.ph61.us.preheader, label %vec.epilog.ph278, !prof !39

vec.epilog.ph278:                                 ; preds = %vector.main.loop.iter.check262, %vec.epilog.iter.check276
  %vec.epilog.resume.val273 = phi i64 [ %n.vec265, %vec.epilog.iter.check276 ], [ 0, %vector.main.loop.iter.check262 ]
  %broadcast.splatinsert280 = insertelement <4 x float> poison, float %.pre127, i64 0
  %broadcast.splat281 = shufflevector <4 x float> %broadcast.splatinsert280, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body282

vec.epilog.vector.body282:                        ; preds = %vec.epilog.vector.body282, %vec.epilog.ph278
  %index283 = phi i64 [ %vec.epilog.resume.val273, %vec.epilog.ph278 ], [ %index.next284, %vec.epilog.vector.body282 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index283
  store <4 x float> %broadcast.splat281, ptr %i.et, align 4, !tbaa !20
  %index.next284 = add nuw i64 %index283, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next284, %n.vec279
  br i1 %i.eu, label %vec.epilog.middle.block285, label %vec.epilog.vector.body282, !llvm.loop !171

vec.epilog.middle.block285:                       ; preds = %vec.epilog.vector.body282
  br i1 %cmp.n286, label %.preheader.us, label %.lr.ph61.us.preheader

.lr.ph61.us.preheader:                            ; preds = %iter.check274, %vec.epilog.iter.check276, %vec.epilog.middle.block285
  %indvars.iv111.ph = phi i64 [ 0, %iter.check274 ], [ %n.vec265, %vec.epilog.iter.check276 ], [ %n.vec279, %vec.epilog.middle.block285 ]
  br label %.lr.ph61.us

iter.check247:                                    ; preds = %.preheader.us
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.t
  %.pre128 = load float, ptr %i.ev, align 4, !tbaa !20 ; 3 uses
  br i1 %min.iters.check233, label %vec.epilog.scalar.ph248.preheader, label %vector.main.loop.iter.check234

vector.main.loop.iter.check234:                   ; preds = %iter.check247
  br i1 %min.iters.check235, label %vec.epilog.ph251, label %vector.ph236

vector.ph236:                                     ; preds = %vector.main.loop.iter.check234
  %broadcast.splatinsert238 = insertelement <8 x float> poison, float %.pre128, i64 0
  %broadcast.splat239 = shufflevector <8 x float> %broadcast.splatinsert238, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep335 = getelementptr [4 x i8], ptr %i.aw, i64 %i.w
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph236
  %index241 = phi i64 [ 0, %vector.ph236 ], [ %index.next242, %vector.body240 ] ; 2 uses
  %gep336 = getelementptr [4 x i8], ptr %invariant.gep335, i64 %index241 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %gep336, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %gep336, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %gep336, i64 96
  store <8 x float> %broadcast.splat239, ptr %gep336, align 4, !tbaa !20
  store <8 x float> %broadcast.splat239, ptr %i.ew, align 4, !tbaa !20
  store <8 x float> %broadcast.splat239, ptr %i.ex, align 4, !tbaa !20
  store <8 x float> %broadcast.splat239, ptr %i.ey, align 4, !tbaa !20
  %index.next242 = add nuw i64 %index241, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next242, %n.vec237
  br i1 %i.ez, label %middle.block243, label %vector.body240, !llvm.loop !172

middle.block243:                                  ; preds = %vector.body240
  br i1 %cmp.n244, label %._crit_edge.us, label %vec.epilog.iter.check249

vec.epilog.iter.check249:                         ; preds = %middle.block243
  br i1 %min.epilog.iters.check250, label %vec.epilog.scalar.ph248.preheader, label %vec.epilog.ph251, !prof !147

vec.epilog.ph251:                                 ; preds = %vector.main.loop.iter.check234, %vec.epilog.iter.check249
  %vec.epilog.resume.val245 = phi i64 [ %n.vec237, %vec.epilog.iter.check249 ], [ 0, %vector.main.loop.iter.check234 ]
  %broadcast.splatinsert253 = insertelement <8 x float> poison, float %.pre128, i64 0
  %broadcast.splat254 = shufflevector <8 x float> %broadcast.splatinsert253, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.gep337.a = getelementptr [4 x i8], ptr %i.aw, i64 %i.w
  br label %vec.epilog.vector.body255

vec.epilog.vector.body255:                        ; preds = %vec.epilog.vector.body255, %vec.epilog.ph251
  %index256 = phi i64 [ %vec.epilog.resume.val245, %vec.epilog.ph251 ], [ %index.next257, %vec.epilog.vector.body255 ] ; 2 uses
  %gep338.a = getelementptr [4 x i8], ptr %invariant.gep337.a, i64 %index256
  store <8 x float> %broadcast.splat254, ptr %gep338.a, align 4, !tbaa !20
  %index.next257 = add nuw i64 %index256, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.fa, label %vec.epilog.middle.block258, label %vec.epilog.vector.body255, !llvm.loop !173

vec.epilog.middle.block258:                       ; preds = %vec.epilog.vector.body255
  br i1 %cmp.n259, label %._crit_edge.us, label %vec.epilog.scalar.ph248.preheader

vec.epilog.scalar.ph248.preheader:                ; preds = %iter.check247, %vec.epilog.iter.check249, %vec.epilog.middle.block258
  %indvars.iv116.ph = phi i64 [ %i.w, %iter.check247 ], [ %i.ar, %vec.epilog.iter.check249 ], [ %i.as, %vec.epilog.middle.block258 ]
  br label %vec.epilog.scalar.ph248

.lr.ph66.split:                                   ; preds = %.lr.ph66
  br i1 %i.r, label %.lr.ph66.split.split.us, label %.lr.ph66.split.split

.lr.ph66.split.split.us:                          ; preds = %.lr.ph66.split
  %i.fb = sext i32 %i.f to i64                    ; 13 uses
  %wide.trip.count108 = zext i32 %i.c to i64      ; 2 uses
  br i1 %.not, label %iter.check219, label %iter.check193.preheader

iter.check193.preheader:                          ; preds = %.lr.ph66.split.split.us
  %min.iters.check180 = icmp ult i32 %4, 4
  %min.iters.check182 = icmp ult i32 %4, 32
  %i.fc = and i64 %i.e, 28
  %n.vec184 = and i64 %i.e, 4294967264            ; 4 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.e
  %min.epilog.iters.check196 = icmp eq i64 %i.fc, 0
  %n.vec198 = and i64 %i.e, 4294967292            ; 3 uses
  %cmp.n205 = icmp eq i64 %n.vec198, %i.e
  %min.iters.check152 = icmp ult i32 %4, 8
  %min.iters.check154 = icmp ult i32 %4, 32
  %i.fd = and i64 %i.e, 24
  %n.vec156 = and i64 %i.e, 4294967264            ; 4 uses
  %i.fe = add nsw i64 %n.vec156, %i.fb
  %cmp.n163 = icmp eq i64 %n.vec156, %i.e
  %min.epilog.iters.check169 = icmp eq i64 %i.fd, 0
  %n.vec171 = and i64 %i.e, 4294967288            ; 3 uses
  %i.ff = add nsw i64 %n.vec171, %i.fb
  %cmp.n178 = icmp eq i64 %n.vec171, %i.e
  br label %iter.check193

iter.check193:                                    ; preds = %iter.check193.preheader, %._crit_edge.us76.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %._crit_edge.us76.us ], [ %i.e, %iter.check193.preheader ] ; 2 uses
  %i.fg = trunc nuw i64 %indvars.iv97 to i32
  %i.fh = mul i32 %2, %i.fg
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fi ; 8 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.e
  %.pre124 = load float, ptr %i.fk, align 4, !tbaa !20 ; 3 uses
  br i1 %min.iters.check180, label %vec.epilog.scalar.ph194.preheader, label %vector.main.loop.iter.check181

vector.main.loop.iter.check181:                   ; preds = %iter.check193
  br i1 %min.iters.check182, label %vec.epilog.ph197, label %vector.ph183

vector.ph183:                                     ; preds = %vector.main.loop.iter.check181
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %.pre124, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph183
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next189, %vector.body187 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %index188 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  store <8 x float> %broadcast.splat186, ptr %i.fl, align 4, !tbaa !20
  store <8 x float> %broadcast.splat186, ptr %i.fm, align 4, !tbaa !20
  store <8 x float> %broadcast.splat186, ptr %i.fn, align 4, !tbaa !20
  store <8 x float> %broadcast.splat186, ptr %i.fo, align 4, !tbaa !20
  %index.next189 = add nuw i64 %index188, 32      ; 2 uses
  %i.fp = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.fp, label %middle.block190, label %vector.body187, !llvm.loop !174

middle.block190:                                  ; preds = %vector.body187
  br i1 %cmp.n191, label %iter.check166, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block190
  br i1 %min.epilog.iters.check196, label %vec.epilog.scalar.ph194.preheader, label %vec.epilog.ph197, !prof !39

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check181, %vec.epilog.iter.check195
  %vec.epilog.resume.val192 = phi i64 [ %n.vec184, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check181 ]
  %broadcast.splatinsert199 = insertelement <4 x float> poison, float %.pre124, i64 0
  %broadcast.splat200 = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph197
  %index202 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph197 ], [ %index.next203, %vec.epilog.vector.body201 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %index202
  store <4 x float> %broadcast.splat200, ptr %i.fq, align 4, !tbaa !20
  %index.next203 = add nuw i64 %index202, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next203, %n.vec198
  br i1 %i.fr, label %vec.epilog.middle.block204, label %vec.epilog.vector.body201, !llvm.loop !175

vec.epilog.middle.block204:                       ; preds = %vec.epilog.vector.body201
  br i1 %cmp.n205, label %iter.check166, label %vec.epilog.scalar.ph194.preheader

vec.epilog.scalar.ph194.preheader:                ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block204
  %indvars.iv89.ph = phi i64 [ 0, %iter.check193 ], [ %n.vec184, %vec.epilog.iter.check195 ], [ %n.vec198, %vec.epilog.middle.block204 ]
  br label %vec.epilog.scalar.ph194

vec.epilog.scalar.ph194:                          ; preds = %vec.epilog.scalar.ph194.preheader, %vec.epilog.scalar.ph194
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %vec.epilog.scalar.ph194 ], [ %indvars.iv89.ph, %vec.epilog.scalar.ph194.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv89
  store float %.pre124, ptr %i.fs, align 4, !tbaa !20
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %i.e
  br i1 %exitcond93.not, label %iter.check166, label %vec.epilog.scalar.ph194, !llvm.loop !176

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.preheader, %vec.epilog.scalar.ph167
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %vec.epilog.scalar.ph167 ], [ %indvars.iv94.ph, %vec.epilog.scalar.ph167.preheader ] ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %indvars.iv94
  store float %.pre125, ptr %i.ft, align 4, !tbaa !20
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.fu = trunc nsw i64 %indvars.iv.next95 to i32
  %i.fv = icmp ugt i32 %2, %i.fu
  br i1 %i.fv, label %vec.epilog.scalar.ph167, label %._crit_edge.us76.us, !llvm.loop !177

iter.check166:                                    ; preds = %vec.epilog.scalar.ph194, %vec.epilog.middle.block204, %middle.block190
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.t
  %.pre125 = load float, ptr %i.fw, align 4, !tbaa !20 ; 3 uses
  br i1 %min.iters.check152, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check153

vector.main.loop.iter.check153:                   ; preds = %iter.check166
  br i1 %min.iters.check154, label %vec.epilog.ph170, label %vector.ph155

vector.ph155:                                     ; preds = %vector.main.loop.iter.check153
  %broadcast.splatinsert157 = insertelement <8 x float> poison, float %.pre125, i64 0
  %broadcast.splat158 = shufflevector <8 x float> %broadcast.splatinsert157, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep330 = getelementptr [4 x i8], ptr %i.fj, i64 %i.fb
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph155
  %index160 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body159 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep330, i64 %index160 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x float> %broadcast.splat158, ptr %gep, align 4, !tbaa !20
  store <8 x float> %broadcast.splat158, ptr %i.fx, align 4, !tbaa !20
  store <8 x float> %broadcast.splat158, ptr %i.fy, align 4, !tbaa !20
  store <8 x float> %broadcast.splat158, ptr %i.fz, align 4, !tbaa !20
  %index.next161 = add nuw i64 %index160, 32      ; 2 uses
  %i.ga = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.ga, label %middle.block162, label %vector.body159, !llvm.loop !178

middle.block162:                                  ; preds = %vector.body159
  br i1 %cmp.n163, label %._crit_edge.us76.us, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block162
  br i1 %min.epilog.iters.check169, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph170, !prof !147

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check153, %vec.epilog.iter.check168
  %vec.epilog.resume.val164 = phi i64 [ %n.vec156, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check153 ]
  %broadcast.splatinsert172 = insertelement <8 x float> poison, float %.pre125, i64 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.gep331 = getelementptr [4 x i8], ptr %i.fj, i64 %i.fb
  br label %vec.epilog.vector.body174

vec.epilog.vector.body174:                        ; preds = %vec.epilog.vector.body174, %vec.epilog.ph170
  %index175 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph170 ], [ %index.next176, %vec.epilog.vector.body174 ] ; 2 uses
  %gep332 = getelementptr [4 x i8], ptr %invariant.gep331, i64 %index175
  store <8 x float> %broadcast.splat173, ptr %gep332, align 4, !tbaa !20
  %index.next176 = add nuw i64 %index175, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.gb, label %vec.epilog.middle.block177, label %vec.epilog.vector.body174, !llvm.loop !179

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body174
  br i1 %cmp.n178, label %._crit_edge.us76.us, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block177
  %indvars.iv94.ph = phi i64 [ %i.fb, %iter.check166 ], [ %i.fe, %vec.epilog.iter.check168 ], [ %i.ff, %vec.epilog.middle.block177 ]
  br label %vec.epilog.scalar.ph167

._crit_edge.us76.us:                              ; preds = %vec.epilog.scalar.ph167, %vec.epilog.middle.block177, %middle.block162
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count108
  br i1 %exitcond101.not, label %._crit_edge67, label %iter.check193

iter.check219:                                    ; preds = %.lr.ph66.split.split.us, %._crit_edge.us76.a
  %indvars.iv105.a = phi i64 [ %indvars.iv.next106, %._crit_edge.us76.a ], [ 0, %.lr.ph66.split.split.us ] ; 2 uses
  %i.gc = trunc nuw i64 %indvars.iv105.a to i32
  %i.gd = mul i32 %2, %i.gc
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ge ; 9 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.t
  %.pre126 = load float, ptr %i.gg, align 4, !tbaa !20
  %broadcast.splatinsert210 = insertelement <8 x float> poison, float %.pre126, i64 0
  %broadcast.splat211 = shufflevector <8 x float> %broadcast.splatinsert210, <8 x float> poison, <8 x i32> zeroinitializer ; 32 uses
  %invariant.gep333 = getelementptr [4 x i8], ptr %i.gf, i64 %i.fb
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %iter.check219
  %index213 = phi i64 [ 0, %iter.check219 ], [ %index.next214.7, %vector.body212 ] ; 9 uses
  %gep334 = getelementptr [4 x i8], ptr %invariant.gep333, i64 %index213 ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %gep334, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %gep334, i64 64
  %12 = getelementptr inbounds nuw i8, ptr %gep334, i64 96
  store <8 x float> %broadcast.splat211, ptr %gep334, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %10, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %11, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %12, align 4, !tbaa !20
  %13 = getelementptr [4 x i8], ptr %i.gf, i64 %index213
  %14 = getelementptr i8, ptr %13, i64 128
  %15 = getelementptr [4 x i8], ptr %14, i64 %i.fb ; 4 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 64
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 96
  store <8 x float> %broadcast.splat211, ptr %15, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %16, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %17, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %18, align 4, !tbaa !20
  %19 = getelementptr [4 x i8], ptr %i.gf, i64 %index213
  %20 = getelementptr i8, ptr %19, i64 256
  %21 = getelementptr [4 x i8], ptr %20, i64 %i.fb ; 4 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 96
  store <8 x float> %broadcast.splat211, ptr %21, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %22, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %23, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %24, align 4, !tbaa !20
  %25 = getelementptr [4 x i8], ptr %i.gf, i64 %index213
  %26 = getelementptr i8, ptr %25, i64 384
  %27 = getelementptr [4 x i8], ptr %26, i64 %i.fb ; 4 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 96
  store <8 x float> %broadcast.splat211, ptr %27, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %28, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %29, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %30, align 4, !tbaa !20
  %31 = getelementptr [4 x i8], ptr %i.gf, i64 %index213
  %32 = getelementptr i8, ptr %31, i64 512
  %33 = getelementptr [4 x i8], ptr %32, i64 %i.fb ; 4 uses
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store <8 x float> %broadcast.splat211, ptr %33, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %34, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %35, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %36, align 4, !tbaa !20
  %37 = getelementptr [4 x i8], ptr %i.gf, i64 %index213
  %38 = getelementptr i8, ptr %37, i64 640
  %39 = getelementptr [4 x i8], ptr %38, i64 %i.fb ; 4 uses
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 64
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 96
  store <8 x float> %broadcast.splat211, ptr %39, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %40, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %41, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %42, align 4, !tbaa !20
  %43 = getelementptr [4 x i8], ptr %i.gf, i64 %index213
  %44 = getelementptr i8, ptr %43, i64 768
  %45 = getelementptr [4 x i8], ptr %44, i64 %i.fb ; 4 uses
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 96
  store <8 x float> %broadcast.splat211, ptr %45, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %46, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %47, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %48, align 4, !tbaa !20
  %49 = getelementptr [4 x i8], ptr %i.gf, i64 %index213
  %50 = getelementptr i8, ptr %49, i64 896
  %i.gh = getelementptr [4 x i8], ptr %50, i64 %i.fb ; 4 uses
  %51 = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %53 = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  store <8 x float> %broadcast.splat211, ptr %i.gh, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %51, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %52, align 4, !tbaa !20
  store <8 x float> %broadcast.splat211, ptr %53, align 4, !tbaa !20
  %index.next214.7 = add nuw nsw i64 %index213, 256 ; 2 uses
  %54 = icmp eq i64 %index.next214.7, 4294967296
  br i1 %54, label %._crit_edge.us76.a, label %vector.body212, !llvm.loop !180

._crit_edge.us76.a:                               ; preds = %vector.body212
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105.a, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge67, label %iter.check219

.lr.ph66.split.split:                             ; preds = %.lr.ph66.split
  br i1 %.not, label %pad_by_replication.exit, label %.preheader55.preheader

.preheader55.preheader:                           ; preds = %.lr.ph66.split.split
  %wide.trip.count87 = zext i32 %i.c to i64
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check145 = icmp ult i32 %4, 32
  %i.gi = and i64 %i.e, 28
  %n.vec = and i64 %i.e, 4294967264               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.e
  %min.epilog.iters.check = icmp eq i64 %i.gi, 0
  %n.vec146 = and i64 %i.e, 4294967292            ; 3 uses
  %cmp.n151 = icmp eq i64 %n.vec146, %i.e
  br label %iter.check

._crit_edge67:                                    ; preds = %..preheader_crit_edge, %._crit_edge.us76.us, %._crit_edge.us76.a, %._crit_edge.us, %bb.a
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %pad_by_replication.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge67
  %i.gj = mul i32 %4, %2
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gk ; 5 uses
  %i.gm = zext i32 %2 to i64
  %i.gn = shl nuw nsw i64 %i.gm, 2                ; 10 uses
  %i.go = add i32 %i.c, -1
  %i.gp = mul i32 %i.go, %2
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gq ; 5 uses
  %wide.trip.count.i = zext i32 %4 to i64         ; 2 uses
  %xtraiter.a = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.gs = icmp ult i32 %4, 4
  br i1 %i.gs, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter.a = and i64 %wide.trip.count.i, 4294967292
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.gt = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.gu = mul i32 %2, %i.gt
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gw, ptr align 4 %i.gl, i64 %i.gn, i1 false)
  %i.gx = add i32 %i.c, %i.gt
  %i.gy = mul i32 %i.gx, %2
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ha, ptr align 4 %i.gr, i64 %i.gn, i1 false)
  %i.hb = trunc i64 %indvars.iv.i to i32
  %i.hc = or disjoint i32 %i.hb, 1                ; 2 uses
  %i.hd = mul i32 %2, %i.hc
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.he
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hf, ptr align 4 %i.gl, i64 %i.gn, i1 false)
  %i.hg = add i32 %i.c, %i.hc
  %i.hh = mul i32 %i.hg, %2
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hj, ptr align 4 %i.gr, i64 %i.gn, i1 false)
  %i.hk = trunc i64 %indvars.iv.i to i32
  %i.hl = or disjoint i32 %i.hk, 2                ; 2 uses
  %i.hm = mul i32 %2, %i.hl
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ho, ptr align 4 %i.gl, i64 %i.gn, i1 false)
  %i.hp = add i32 %i.c, %i.hl
  %i.hq = mul i32 %i.hp, %2
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hs, ptr align 4 %i.gr, i64 %i.gn, i1 false)
  %i.ht = trunc i64 %indvars.iv.i to i32
  %i.hu = or disjoint i32 %i.ht, 3                ; 2 uses
  %i.hv = mul i32 %2, %i.hu
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hx, ptr align 4 %i.gl, i64 %i.gn, i1 false)
  %i.hy = add i32 %i.c, %i.hu
  %i.hz = mul i32 %i.hy, %2
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ia
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ib, ptr align 4 %i.gr, i64 %i.gn, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter.a
  br i1 %niter.ncmp.3, label %pad_by_replication.exit.loopexit.unr-lcssa, label %bb.h

pad_by_replication.exit.loopexit.unr-lcssa:       ; preds = %bb.h
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %pad_by_replication.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %pad_by_replication.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %pad_by_replication.exit.loopexit.unr-lcssa ]
  %lcmp.mod329.a = icmp ne i64 %xtraiter.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod329.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 2 uses
  %epil.iter.a = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next.a, %bb.i ]
  %i.ic = trunc nuw nsw i64 %indvars.iv.i.epil to i32 ; 2 uses
  %i.id = mul i32 %2, %i.ic
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ie
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.if, ptr align 4 %i.gl, i64 %i.gn, i1 false)
  %i.ig = add i32 %i.c, %i.ic
  %i.ih = mul i32 %i.ig, %2
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ii
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ij, ptr align 4 %i.gr, i64 %i.gn, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next.a = add i64 %epil.iter.a, 1     ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, %xtraiter.a
  br i1 %epil.iter.cmp.not.a, label %pad_by_replication.exit, label %bb.i, !llvm.loop !181

pad_by_replication.exit:                          ; preds = %pad_by_replication.exit.loopexit.unr-lcssa, %bb.i, %.lr.ph66.split.split, %._crit_edge67
  ret void

iter.check:                                       ; preds = %.preheader55.preheader, %..preheader_crit_edge
  %indvars.iv84 = phi i64 [ %i.e, %.preheader55.preheader ], [ %indvars.iv.next85, %..preheader_crit_edge ] ; 2 uses
  %i.ik = trunc nuw i64 %indvars.iv84 to i32
  %i.il = mul i32 %2, %i.ik
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.im ; 4 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.e
  %.pre = load float, ptr %i.io, align 4, !tbaa !20 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 96
  store <8 x float> %broadcast.splat, ptr %i.ip, align 4, !tbaa !20
  store <8 x float> %broadcast.splat, ptr %i.iq, align 4, !tbaa !20
  store <8 x float> %broadcast.splat, ptr %i.ir, align 4, !tbaa !20
  store <8 x float> %broadcast.splat, ptr %i.is, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %.pre, i64 0
  %broadcast.splat148 = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %index149
  store <4 x float> %broadcast.splat148, ptr %i.iu, align 4, !tbaa !20
  %index.next150 = add nuw i64 %index149, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.iv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n151, label %..preheader_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

..preheader_crit_edge:                            ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge67, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv
  store float %.pre, ptr %i.iw, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %..preheader_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !184
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @ll_pad_input(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 1, 536870913) %3, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #7 {
bb.a:
  %i.a = shl nuw nsw i32 %3, 1                    ; 2 uses
  %i.b = add nuw nsw i32 %i.a, %1
  store i32 %i.b, ptr %4, align 4, !tbaa !19
  %i.c = add nuw nsw i32 %i.a, %2                 ; 2 uses
  store i32 %i.c, ptr %5, align 4, !tbaa !19
  %i.d = load i32, ptr %4, align 4, !tbaa !19
  %i.e = sext i32 %i.d to i64
  %i.f = zext nneg i32 %i.c to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = mul i64 %i.g, %i.e
  %i.i = tail call ptr @dt_alloc_aligned(i64 noundef %i.h) #14 ; 45 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 64) ]
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %6, align 8, !tbaa !18
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %.preheader440, label %bb.ab

.preheader440:                                    ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4, !tbaa !19     ; 11 uses
  %i.m = zext nneg i32 %1 to i64
  %i.n = zext nneg i32 %3 to i64                  ; 4 uses
  %i.o = sext i32 %i.l to i64                     ; 3 uses
  %wide.trip.count486 = zext nneg i32 %2 to i64   ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 10 uses
  %i.p = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.q = mul nuw nsw i64 %wide.trip.count486, %wide.trip.count
  %i.r = shl i64 %i.q, 4
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.s, i64 -12
  %i.t = add i32 %i.l, 1
  %i.u = mul i32 %3, %i.t
  %i.v = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep592 = getelementptr i8, ptr %i.i, i64 %i.v
  %min.iters.check = icmp samesign ult i32 %1, 5
  %i.w = trunc nsw i64 %i.p to i32
  %i.x = icmp ugt i64 %i.p, 4294967295
  %min.iters.check594 = icmp samesign ult i32 %1, 33
  %i.y = and i64 %wide.trip.count, 31             ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 32, i64 %i.y        ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.aa    ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.aa, 5
  %i.ab = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 4, i64 %i.ab
  %n.vec601 = sub nsw i64 %wide.trip.count, %i.ad ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader440, %.unr-lcssa
  %indvars.iv483 = phi i64 [ 0, %.preheader440 ], [ %indvars.iv.next484, %.unr-lcssa ] ; 4 uses
  %i.ae = trunc i64 %indvars.iv483 to i32
  %i.af = mul i32 %i.l, %i.ae
  %i.ag = add i32 %i.af, %i.u
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2                    ; 2 uses
  %scevgep591 = getelementptr i8, ptr %i.i, i64 %i.ai
  %scevgep593 = getelementptr i8, ptr %scevgep592, i64 %i.ai
  %i.aj = mul nuw nsw i64 %indvars.iv483, %i.m    ; 10 uses
  %i.ak = trunc i64 %indvars.iv483 to i32
  %i.al = add i32 %3, %i.ak
  %i.am = mul i32 %i.al, %i.l
  %invariant.op = add i32 %3, %i.am               ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.an = add i32 %invariant.op, %i.w
  %i.ao = icmp slt i32 %i.an, %invariant.op
  %i.ap = or i1 %i.ao, %i.x
  br i1 %i.ap, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %0, %scevgep593
  %bound1 = icmp ult ptr %scevgep591, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check594, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 6 uses
  %i.aq = or disjoint i64 %index, 8
  %i.ar = or disjoint i64 %index, 16
  %i.as = or disjoint i64 %index, 24
  %i.at = add nuw nsw i64 %index, %i.aj
  %i.au = add nuw nsw i64 %i.aq, %i.aj
  %i.av = add nuw nsw i64 %i.ar, %i.aj
  %i.aw = add nuw nsw i64 %i.as, %i.aj
  %i.ax = shl nuw nsw i64 %i.at, 4
  %i.ay = shl nuw nsw i64 %i.au, 4
  %i.az = shl nuw nsw i64 %i.av, 4
  %i.ba = shl nuw nsw i64 %i.aw, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %wide.vec = load <32 x float>, ptr %i.bb, align 4, !tbaa !20, !alias.scope !185, !noalias !188
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec595 = load <32 x float>, ptr %i.bc, align 4, !tbaa !20, !alias.scope !185, !noalias !188
  %strided.vec596 = shufflevector <32 x float> %wide.vec595, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec597 = load <32 x float>, ptr %i.bd, align 4, !tbaa !20, !alias.scope !185, !noalias !188
  %strided.vec598 = shufflevector <32 x float> %wide.vec597, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec599 = load <32 x float>, ptr %i.be, align 4, !tbaa !20, !alias.scope !185, !noalias !188
  %strided.vec600 = shufflevector <32 x float> %wide.vec599, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec596, splat (float f0x3C23D70A)
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec598, splat (float f0x3C23D70A)
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec600, splat (float f0x3C23D70A)
  %i.bj = trunc nuw nsw i64 %index to i32
  %i.bk = add i32 %invariant.op, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store <8 x float> %i.bf, ptr %i.bm, align 4, !tbaa !20, !alias.scope !188
  store <8 x float> %i.bg, ptr %i.bn, align 4, !tbaa !20, !alias.scope !188
  store <8 x float> %i.bh, ptr %i.bo, align 4, !tbaa !20, !alias.scope !188
  store <8 x float> %i.bi, ptr %i.bp, align 4, !tbaa !20, !alias.scope !188
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !190

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec601, %vec.epilog.vector.body ] ; 4 uses
  %i.br = sub i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bs = add nuw nsw i64 %indvars.iv.prol, %i.aj
  %.idx.prol = shl nuw nsw i64 %i.bs, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, f0x3C23D70A
  %i.bw = trunc nuw nsw i64 %indvars.iv.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.bw
  %i.bx = sext i32 %.reass.prol to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bx
  store float %i.bv, ptr %i.by, align 4, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !191

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bz = sub i64 %indvars.iv.ph, %wide.trip.count
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %.unr-lcssa, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index602 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next605, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = add nuw nsw i64 %index602, %i.aj
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %wide.vec603 = load <16 x float>, ptr %i.cd, align 4, !tbaa !20, !alias.scope !185, !noalias !188
  %strided.vec604 = shufflevector <16 x float> %wide.vec603, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec604, splat (float f0x3C23D70A)
  %i.cf = trunc nuw nsw i64 %index602 to i32
  %i.cg = add i32 %invariant.op, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ch
  store <4 x float> %i.ce, ptr %i.ci, align 4, !tbaa !20, !alias.scope !188
  %index.next605 = add nuw i64 %index602, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next605, %n.vec601
  br i1 %i.cj, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !192

.preheader438:                                    ; preds = %.unr-lcssa
  %i.ck = load i32, ptr %5, align 4, !tbaa !19    ; 3 uses
  %i.cl = sub nsw i32 %i.ck, %3                   ; 3 uses
  %factor.op.mul448 = shl i32 %1, 2               ; 2 uses
  %i.cm = icmp slt i32 %3, %i.cl
  br i1 %i.cm, label %.preheader437.lr.ph, label %.preheader435

.preheader437.lr.ph:                              ; preds = %.preheader438
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !84 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !193
  %invariant.op444 = sub i32 %i.cp, %3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !194
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count492 = zext nneg i32 %i.cl to i64
  br label %.preheader437

.unr-lcssa:                                       ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %wide.trip.count486
  br i1 %exitcond487.not, label %.preheader438, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cx = add nuw nsw i64 %indvars.iv, %i.aj
  %.idx = shl nuw nsw i64 %i.cx, 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !20
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, f0x3C23D70A
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.db
  %i.dc = sext i32 %.reass to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dc
  store float %i.da, ptr %i.dd, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = add nuw nsw i64 %indvars.iv.next, %i.aj
  %.idx.1 = shl nuw nsw i64 %i.de, 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %i.dg = load float, ptr %i.df, align 4, !tbaa !20
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, f0x3C23D70A
  %i.di = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.di
  %i.dj = sext i32 %.reass.1 to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dj
  store float %i.dh, ptr %i.dk, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dl = add nuw nsw i64 %indvars.iv.next.1, %i.aj
  %.idx.2 = shl nuw nsw i64 %i.dl, 4
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.2
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !20
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, f0x3C23D70A
  %i.dp = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.dp
  %i.dq = sext i32 %.reass.2 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dq
  store float %i.do, ptr %i.dr, align 4, !tbaa !20
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ds = add nuw nsw i64 %indvars.iv.next.2, %i.aj
  %.idx.3 = shl nuw nsw i64 %i.ds, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.3
  %i.du = load float, ptr %i.dt, align 4, !tbaa !20
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, f0x3C23D70A
  %i.dw = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.dw
  %i.dx = sext i32 %.reass.3 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dx
  store float %i.dv, ptr %i.dy, align 4, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !195

.preheader437:                                    ; preds = %.preheader437.lr.ph, %bb.c
  %indvars.iv489 = phi i64 [ %i.n, %.preheader437.lr.ph ], [ %indvars.iv.next490, %bb.c ] ; 3 uses
  %i.dz = sub nuw nsw i64 %indvars.iv489, %i.n    ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = add i32 %i.cs, %i.ea
  %i.ec = sitofp reassoc nsz arcp contract afn i32 %i.eb to float
  %i.ed = trunc nuw nsw i64 %i.dz to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul448, %i.ed
  %i.ee = sext i32 %factor.op.mul.reass to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.ec, i64 1
  %.pn = trunc i64 %indvars.iv489 to i32
  %.sink577 = mul nsw i32 %i.l, %.pn
  br label %bb.d

.lr.ph455:                                        ; preds = %bb.c
  %i.eh = add nuw nsw i32 %3, %1                  ; 2 uses
  %i.ei = icmp slt i32 %i.eh, %i.l
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.ei, label %.lr.ph455.split, label %.preheader435

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !84 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !193
  %invariant.op452 = sub i32 %i.ep, %3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !194
  %i.et = zext nneg i32 %i.eh to i64
  %wide.trip.count502 = zext nneg i32 %i.cl to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.i
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  br i1 %exitcond493.not, label %.lr.ph455, label %.preheader437

bb.d:                                             ; preds = %.preheader437, %bb.i
  %.0384447 = phi i32 [ 0, %.preheader437 ], [ %i.hd, %bb.i ] ; 3 uses
  %.reass445 = add i32 %.0384447, %invariant.op444
  %i.eu = sitofp reassoc nsz arcp contract afn i32 %.reass445 to float
  %i.ev = load float, ptr %i.cq, align 4, !tbaa !85
  %i.ew = insertelement <2 x float> %i.eg, float %i.eu, i64 0
  %i.ex = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fdiv reassoc nsz arcp contract afn <2 x float> %i.ew, %i.ey ; 3 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = fcmp reassoc nsz arcp contract afn olt float %i.fa, 0.000000e+00
  br i1 %i.fb, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fc = load ptr, ptr %i.ct, align 8, !tbaa !87 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !88
  %i.ff = sitofp reassoc nsz arcp contract afn i32 %i.fe to float ; 2 uses
  %i.fg = extractelement <2 x float> %i.ez, i64 1 ; 3 uses
  %i.fh = fcmp reassoc nsz arcp contract afn oge float %i.fg, %i.ff
  %i.fi = fcmp reassoc nsz arcp contract afn olt float %i.fg, 0.000000e+00
  %or.cond = or i1 %i.fi, %i.fh
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !196
  %i.fl = sitofp reassoc nsz arcp contract afn i32 %i.fk to float ; 2 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ult float %i.fg, %i.fl
  br i1 %i.fm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.fn = load float, ptr %i.ef, align 4, !tbaa !20
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, f0x3C23D70A
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.fp = load <2 x i32>, ptr %i.cv, align 8, !tbaa !19 ; 3 uses
  %i.fq = extractelement <2 x i32> %i.fp, i64 0
  %i.fr = load <2 x i32>, ptr %i.cu, align 8, !tbaa !19 ; 2 uses
  %i.fs = sitofp <2 x i32> %i.fr to <2 x float>
  %i.ft = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fl, i64 1
  %i.fw = fdiv reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fv
  %i.fx = sub nsw <2 x i32> %i.fp, %i.fr
  %i.fy = sdiv <2 x i32> %i.fx, splat (i32 2)
  %i.fz = sitofp <2 x i32> %i.fy to <2 x float>
  %i.ga = fadd reassoc nsz arcp contract afn <2 x float> %i.fw, %i.fz ; 3 uses
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.gc = add nsw <2 x i32> %i.fp, splat (i32 -1)
  %i.gd = sitofp <2 x i32> %i.gc to <2 x float>   ; 3 uses
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gf = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gg = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gb, %i.gf ; 2 uses
  %i.gh = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.gb, %i.gf ; 2 uses
  %i.gi = extractelement <4 x i1> %i.gg, i64 1
  %i.gj = extractelement <2 x float> %i.ga, i64 0
  %spec.select = select reassoc nsz arcp contract afn i1 %i.gi, float 0.000000e+00, float %i.gj
  %i.gk = extractelement <4 x i1> %i.gh, i64 3
  %i.gl = extractelement <2 x float> %i.gd, i64 0
  %i.gm = select reassoc nsz arcp contract afn i1 %i.gk, float %i.gl, float %spec.select
  %i.gn = fptosi float %i.gm to i32
  %i.go = extractelement <4 x i1> %i.gg, i64 0
  %i.gp = extractelement <2 x float> %i.ga, i64 1
  %spec.select424 = select reassoc nsz arcp contract afn i1 %i.go, float 0.000000e+00, float %i.gp
  %i.gq = extractelement <4 x i1> %i.gh, i64 2
  %i.gr = extractelement <2 x float> %i.gd, i64 1
  %i.gs = select reassoc nsz arcp contract afn i1 %i.gq, float %i.gr, float %spec.select424
  %i.gt = fptosi float %i.gs to i32
  %i.gu = load ptr, ptr %i.cw, align 8, !tbaa !11
  %i.gv = mul nsw i32 %i.fq, %i.gt
  %i.gw = add nsw i32 %i.gv, %i.gn
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi float [ %i.gz, %bb.h ], [ %i.fo, %bb.g ]
  %i.ha = add nsw i32 %.sink577, %.0384447
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.hb
  store float %.sink, ptr %i.hc, align 4, !tbaa !20
  %i.hd = add nuw nsw i32 %.0384447, 1            ; 2 uses
  %exitcond488.not = icmp eq i32 %i.hd, %3
  br i1 %exitcond488.not, label %bb.c, label %bb.d

.preheader435:                                    ; preds = %._crit_edge, %.preheader438, %.lr.ph455
  %i.he = icmp sgt i32 %i.l, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %i.he, label %.preheader435.split, label %pad_by_replication.exit

.preheader435.split:                              ; preds = %.preheader435
  %i.hj = mul nuw nsw i32 %i.l, %3
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !84 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !193
  %invariant.op459 = sub i32 %i.hm, %3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !194
  %invariant.op462 = sub i32 %i.hp, %3
  %i.hq = zext nneg i32 %i.hj to i64
  %i.hr = zext nneg i32 %i.l to i64               ; 2 uses
  %wide.trip.count512 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hq
  br label %.preheader434

.lr.ph:                                           ; preds = %.lr.ph455.split, %._crit_edge
  %indvars.iv499 = phi i64 [ %i.n, %.lr.ph455.split ], [ %indvars.iv.next500, %._crit_edge ] ; 3 uses
  %i.hs = sub nuw nsw i64 %indvars.iv499, %i.n    ; 2 uses
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = add i32 %i.es, %i.ht
  %i.hv = sitofp reassoc nsz arcp contract afn i32 %i.hu to float
  %i.hw = mul nsw i64 %indvars.iv499, %i.o
  %i.hx = trunc i64 %i.hs to i32
  %i.hy = add i32 %i.hx, 1
  %i.hz = mul i32 %factor.op.mul448, %i.hy
  %i.ia = add i32 %i.hz, -4
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ib
  %i.id = insertelement <2 x float> poison, float %i.hv, i64 1
  %.sink580 = getelementptr [4 x i8], ptr %i.i, i64 %i.hw
  br label %bb.j

._crit_edge:                                      ; preds = %bb.o
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond503.not = icmp eq i64 %indvars.iv.next500, %wide.trip.count502
  br i1 %exitcond503.not, label %.preheader435, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv494 = phi i64 [ %i.et, %.lr.ph ], [ %indvars.iv.next495, %bb.o ] ; 3 uses
  %i.ie = trunc nsw i64 %indvars.iv494 to i32
  %.reass453 = add i32 %invariant.op452, %i.ie
  %i.if = sitofp reassoc nsz arcp contract afn i32 %.reass453 to float
  %i.ig = load float, ptr %i.eq, align 4, !tbaa !85
  %i.ih = insertelement <2 x float> %i.id, float %i.if, i64 0
  %i.ii = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fdiv reassoc nsz arcp contract afn <2 x float> %i.ih, %i.ij ; 3 uses
  %i.il = extractelement <2 x float> %i.ik, i64 0
  %i.im = fcmp reassoc nsz arcp contract afn olt float %i.il, 0.000000e+00
  br i1 %i.im, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.in = load ptr, ptr %i.ej, align 8, !tbaa !87 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !88
  %i.iq = sitofp reassoc nsz arcp contract afn i32 %i.ip to float ; 2 uses
  %i.ir = extractelement <2 x float> %i.ik, i64 1 ; 3 uses
  %i.is = fcmp reassoc nsz arcp contract afn oge float %i.ir, %i.iq
  %i.it = fcmp reassoc nsz arcp contract afn olt float %i.ir, 0.000000e+00
  %or.cond3 = or i1 %i.it, %i.is
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !196
  %i.iw = sitofp reassoc nsz arcp contract afn i32 %i.iv to float ; 2 uses
  %i.ix = fcmp reassoc nsz arcp contract afn ult float %i.ir, %i.iw
  br i1 %i.ix, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.iy = load float, ptr %i.ic, align 4, !tbaa !20
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, f0x3C23D70A
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ja = load <2 x i32>, ptr %i.el, align 8, !tbaa !19 ; 3 uses
  %i.jb = extractelement <2 x i32> %i.ja, i64 0
  %i.jc = load <2 x i32>, ptr %i.ek, align 8, !tbaa !19 ; 2 uses
  %i.jd = sitofp <2 x i32> %i.jc to <2 x float>
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, %i.jd
  %i.jf = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.jg = insertelement <2 x float> %i.jf, float %i.iw, i64 1
  %i.jh = fdiv reassoc nsz arcp contract afn <2 x float> %i.je, %i.jg
  %i.ji = sub nsw <2 x i32> %i.ja, %i.jc
  %i.jj = sdiv <2 x i32> %i.ji, splat (i32 2)
  %i.jk = sitofp <2 x i32> %i.jj to <2 x float>
  %i.jl = fadd reassoc nsz arcp contract afn <2 x float> %i.jh, %i.jk ; 3 uses
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.jn = add nsw <2 x i32> %i.ja, splat (i32 -1)
  %i.jo = sitofp <2 x i32> %i.jn to <2 x float>   ; 3 uses
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.jq = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.jr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.jm, %i.jq ; 2 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.jm, %i.jq ; 2 uses
  %i.jt = extractelement <4 x i1> %i.jr, i64 1
  %i.ju = extractelement <2 x float> %i.jl, i64 0
  %spec.select425 = select reassoc nsz arcp contract afn i1 %i.jt, float 0.000000e+00, float %i.ju
  %i.jv = extractelement <4 x i1> %i.js, i64 3
  %i.jw = extractelement <2 x float> %i.jo, i64 0
  %i.jx = select reassoc nsz arcp contract afn i1 %i.jv, float %i.jw, float %spec.select425
  %i.jy = fptosi float %i.jx to i32
  %i.jz = extractelement <4 x i1> %i.jr, i64 0
  %i.ka = extractelement <2 x float> %i.jl, i64 1
  %spec.select426 = select reassoc nsz arcp contract afn i1 %i.jz, float 0.000000e+00, float %i.ka
  %i.kb = extractelement <4 x i1> %i.js, i64 2
  %i.kc = extractelement <2 x float> %i.jo, i64 1
  %i.kd = select reassoc nsz arcp contract afn i1 %i.kb, float %i.kc, float %spec.select426
  %i.ke = fptosi float %i.kd to i32
  %i.kf = load ptr, ptr %i.em, align 8, !tbaa !11
  %i.kg = mul nsw i32 %i.jb, %i.ke
  %i.kh = add nsw i32 %i.kg, %i.jy
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.ki
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink578 = phi float [ %i.kk, %bb.n ], [ %i.iz, %bb.m ]
  %i.kl = getelementptr [4 x i8], ptr %.sink580, i64 %indvars.iv494
  store float %.sink578, ptr %i.kl, align 4, !tbaa !20
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond498.not = icmp eq i64 %indvars.iv.next495, %i.o
  br i1 %exitcond498.not, label %._crit_edge, label %bb.j

.preheader434:                                    ; preds = %.preheader435.split, %._crit_edge458
  %indvars.iv509 = phi i64 [ 0, %.preheader435.split ], [ %indvars.iv.next510, %._crit_edge458 ] ; 3 uses
  %i.km = trunc nuw nsw i64 %indvars.iv509 to i32
  %.reass463 = add i32 %invariant.op462, %i.km
  %i.kn = sitofp reassoc nsz arcp contract afn i32 %.reass463 to float
  %i.ko = mul nuw nsw i64 %indvars.iv509, %i.hr
  %i.kp = insertelement <2 x float> poison, float %i.kn, i64 1
  %.sink585 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ko
  br label %bb.p

.split:                                           ; preds = %._crit_edge458
  %i.kq = add nuw nsw i32 %3, %2                  ; 3 uses
  %.not589 = icmp slt i32 %i.kq, %i.ck
  br i1 %.not589, label %.preheader432.lr.ph.split, label %pad_by_replication.exit

.preheader432.lr.ph.split:                        ; preds = %.split
  %i.kr = add nsw i32 %i.kq, -1
  %i.ks = mul nsw i32 %i.l, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !84 ; 3 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !193
  %invariant.op467 = sub i32 %i.kv, %3
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !194
  %invariant.op470 = sub i32 %i.ky, %3
  %i.kz = sext i32 %i.ks to i64
  %i.la = zext nneg i32 %i.kq to i64
  %wide.trip.count522 = zext nneg i32 %i.ck to i64
  %wide.trip.count517 = zext nneg i32 %i.l to i64
  %invariant.gep572 = getelementptr [4 x i8], ptr %i.i, i64 %i.kz
  br label %.preheader432

._crit_edge458:                                   ; preds = %bb.u
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %exitcond513.not = icmp eq i64 %indvars.iv.next510, %wide.trip.count512
  br i1 %exitcond513.not, label %.split, label %.preheader434

bb.p:                                             ; preds = %.preheader434, %bb.u
  %indvars.iv504 = phi i64 [ 0, %.preheader434 ], [ %indvars.iv.next505, %bb.u ] ; 4 uses
  %i.lb = trunc nuw nsw i64 %indvars.iv504 to i32
  %.reass460 = add i32 %invariant.op459, %i.lb
  %i.lc = sitofp reassoc nsz arcp contract afn i32 %.reass460 to float
  %i.ld = load float, ptr %i.hn, align 4, !tbaa !85
  %i.le = insertelement <2 x float> %i.kp, float %i.lc, i64 0
  %i.lf = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fdiv reassoc nsz arcp contract afn <2 x float> %i.le, %i.lg ; 3 uses
  %i.li = extractelement <2 x float> %i.lh, i64 0
  %i.lj = fcmp reassoc nsz arcp contract afn olt float %i.li, 0.000000e+00
  br i1 %i.lj, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lk = load ptr, ptr %i.hf, align 8, !tbaa !87 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !88
  %i.ln = sitofp reassoc nsz arcp contract afn i32 %i.lm to float ; 2 uses
  %i.lo = extractelement <2 x float> %i.lh, i64 1 ; 3 uses
  %i.lp = fcmp reassoc nsz arcp contract afn oge float %i.lo, %i.ln
  %i.lq = fcmp reassoc nsz arcp contract afn olt float %i.lo, 0.000000e+00
  %or.cond5 = or i1 %i.lq, %i.lp
  br i1 %or.cond5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !196
  %i.lt = sitofp reassoc nsz arcp contract afn i32 %i.ls to float ; 2 uses
  %i.lu = fcmp reassoc nsz arcp contract afn ult float %i.lo, %i.lt
  br i1 %i.lu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv504
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.lv = load <2 x i32>, ptr %i.hh, align 8, !tbaa !19 ; 3 uses
  %i.lw = extractelement <2 x i32> %i.lv, i64 0
  %i.lx = load <2 x i32>, ptr %i.hg, align 8, !tbaa !19 ; 2 uses
  %i.ly = sitofp <2 x i32> %i.lx to <2 x float>
  %i.lz = fmul reassoc nsz arcp contract afn <2 x float> %i.lh, %i.ly
  %i.ma = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.mb = insertelement <2 x float> %i.ma, float %i.lt, i64 1
  %i.mc = fdiv reassoc nsz arcp contract afn <2 x float> %i.lz, %i.mb
  %i.md = sub nsw <2 x i32> %i.lv, %i.lx
  %i.me = sdiv <2 x i32> %i.md, splat (i32 2)
  %i.mf = sitofp <2 x i32> %i.me to <2 x float>
  %i.mg = fadd reassoc nsz arcp contract afn <2 x float> %i.mc, %i.mf ; 3 uses
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.mi = add nsw <2 x i32> %i.lv, splat (i32 -1)
  %i.mj = sitofp <2 x i32> %i.mi to <2 x float>   ; 3 uses
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ml = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.mm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.mh, %i.ml ; 2 uses
  %i.mn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.mh, %i.ml ; 2 uses
  %i.mo = extractelement <4 x i1> %i.mm, i64 1
  %i.mp = extractelement <2 x float> %i.mg, i64 0
  %spec.select427 = select reassoc nsz arcp contract afn i1 %i.mo, float 0.000000e+00, float %i.mp
  %i.mq = extractelement <4 x i1> %i.mn, i64 3
  %i.mr = extractelement <2 x float> %i.mj, i64 0
  %i.ms = select reassoc nsz arcp contract afn i1 %i.mq, float %i.mr, float %spec.select427
  %i.mt = fptosi float %i.ms to i32
  %i.mu = extractelement <4 x i1> %i.mm, i64 0
  %i.mv = extractelement <2 x float> %i.mg, i64 1
  %spec.select428 = select reassoc nsz arcp contract afn i1 %i.mu, float 0.000000e+00, float %i.mv
  %i.mw = extractelement <4 x i1> %i.mn, i64 2
  %i.mx = extractelement <2 x float> %i.mj, i64 1
  %i.my = select reassoc nsz arcp contract afn i1 %i.mw, float %i.mx, float %spec.select428
  %i.mz = fptosi float %i.my to i32
  %i.na = load ptr, ptr %i.hi, align 8, !tbaa !11
  %i.nb = mul nsw i32 %i.lw, %i.mz
  %i.nc = add nsw i32 %i.nb, %i.mt
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.nd
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink583.in = phi ptr [ %i.ne, %bb.t ], [ %gep, %bb.s ]
  %.sink583 = load float, ptr %.sink583.in, align 4, !tbaa !20
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.sink585, i64 %indvars.iv504
  store float %.sink583, ptr %i.nf, align 4, !tbaa !20
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %i.hr
  br i1 %exitcond508.not, label %._crit_edge458, label %bb.p

.preheader432:                                    ; preds = %.preheader432.lr.ph.split, %._crit_edge466
  %indvars.iv519 = phi i64 [ %i.la, %.preheader432.lr.ph.split ], [ %indvars.iv.next520, %._crit_edge466 ] ; 3 uses
  %i.ng = trunc nsw i64 %indvars.iv519 to i32
  %.reass471 = add i32 %invariant.op470, %i.ng
  %i.nh = sitofp reassoc nsz arcp contract afn i32 %.reass471 to float
  %i.ni = mul nuw nsw i64 %indvars.iv519, %i.o
  %i.nj = insertelement <2 x float> poison, float %i.nh, i64 1
  %.sink588 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ni
  br label %bb.v

._crit_edge466:                                   ; preds = %bb.aa
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %pad_by_replication.exit, label %.preheader432

bb.v:                                             ; preds = %.preheader432, %bb.aa
  %indvars.iv514 = phi i64 [ 0, %.preheader432 ], [ %indvars.iv.next515, %bb.aa ] ; 4 uses
  %i.nk = trunc nuw nsw i64 %indvars.iv514 to i32
  %.reass468 = add i32 %invariant.op467, %i.nk
  %i.nl = sitofp reassoc nsz arcp contract afn i32 %.reass468 to float
  %i.nm = load float, ptr %i.kw, align 4, !tbaa !85
  %i.nn = insertelement <2 x float> %i.nj, float %i.nl, i64 0
  %i.no = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.np = shufflevector <2 x float> %i.no, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nq = fdiv reassoc nsz arcp contract afn <2 x float> %i.nn, %i.np ; 3 uses
  %i.nr = extractelement <2 x float> %i.nq, i64 0
  %i.ns = fcmp reassoc nsz arcp contract afn olt float %i.nr, 0.000000e+00
  br i1 %i.ns, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nt = load ptr, ptr %i.hf, align 8, !tbaa !87 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !88
  %i.nw = sitofp reassoc nsz arcp contract afn i32 %i.nv to float ; 2 uses
  %i.nx = extractelement <2 x float> %i.nq, i64 1 ; 3 uses
  %i.ny = fcmp reassoc nsz arcp contract afn oge float %i.nx, %i.nw
  %i.nz = fcmp reassoc nsz arcp contract afn olt float %i.nx, 0.000000e+00
  %or.cond7 = or i1 %i.nz, %i.ny
  br i1 %or.cond7, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !196
  %i.oc = sitofp reassoc nsz arcp contract afn i32 %i.ob to float ; 2 uses
  %i.od = fcmp reassoc nsz arcp contract afn ult float %i.nx, %i.oc
  br i1 %i.od, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %gep573 = getelementptr [4 x i8], ptr %invariant.gep572, i64 %indvars.iv514
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.oe = load <2 x i32>, ptr %i.hh, align 8, !tbaa !19 ; 3 uses
  %i.of = extractelement <2 x i32> %i.oe, i64 0
  %i.og = load <2 x i32>, ptr %i.hg, align 8, !tbaa !19 ; 2 uses
  %i.oh = sitofp <2 x i32> %i.og to <2 x float>
  %i.oi = fmul reassoc nsz arcp contract afn <2 x float> %i.nq, %i.oh
  %i.oj = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ok = insertelement <2 x float> %i.oj, float %i.oc, i64 1
  %i.ol = fdiv reassoc nsz arcp contract afn <2 x float> %i.oi, %i.ok
  %i.om = sub nsw <2 x i32> %i.oe, %i.og
  %i.on = sdiv <2 x i32> %i.om, splat (i32 2)
  %i.oo = sitofp <2 x i32> %i.on to <2 x float>
  %i.op = fadd reassoc nsz arcp contract afn <2 x float> %i.ol, %i.oo ; 3 uses
  %i.oq = shufflevector <2 x float> %i.op, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.or = add nsw <2 x i32> %i.oe, splat (i32 -1)
  %i.os = sitofp <2 x i32> %i.or to <2 x float>   ; 3 uses
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ou = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.ot, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ov = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.oq, %i.ou ; 2 uses
  %i.ow = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.oq, %i.ou ; 2 uses
  %i.ox = extractelement <4 x i1> %i.ov, i64 1
  %i.oy = extractelement <2 x float> %i.op, i64 0
  %spec.select429 = select reassoc nsz arcp contract afn i1 %i.ox, float 0.000000e+00, float %i.oy
  %i.oz = extractelement <4 x i1> %i.ow, i64 3
  %i.pa = extractelement <2 x float> %i.os, i64 0
  %i.pb = select reassoc nsz arcp contract afn i1 %i.oz, float %i.pa, float %spec.select429
  %i.pc = fptosi float %i.pb to i32
  %i.pd = extractelement <4 x i1> %i.ov, i64 0
  %i.pe = extractelement <2 x float> %i.op, i64 1
  %spec.select430 = select reassoc nsz arcp contract afn i1 %i.pd, float 0.000000e+00, float %i.pe
  %i.pf = extractelement <4 x i1> %i.ow, i64 2
  %i.pg = extractelement <2 x float> %i.os, i64 1
  %i.ph = select reassoc nsz arcp contract afn i1 %i.pf, float %i.pg, float %spec.select430
  %i.pi = fptosi float %i.ph to i32
  %i.pj = load ptr, ptr %i.hi, align 8, !tbaa !11
  %i.pk = mul nsw i32 %i.of, %i.pi
  %i.pl = add nsw i32 %i.pk, %i.pc
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.pm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink586.in = phi ptr [ %i.pn, %bb.z ], [ %gep573, %bb.y ]
  %.sink586 = load float, ptr %.sink586.in, align 4, !tbaa !20
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.sink588, i64 %indvars.iv514
  store float %.sink586, ptr %i.po, align 4, !tbaa !20
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count517
  br i1 %exitcond518.not, label %._crit_edge466, label %bb.v

bb.ab:                                            ; preds = %bb.b, %bb.a
  %i.pp = shl i32 %1, 2                           ; 5 uses
  %i.pq = load i32, ptr %4, align 4, !tbaa !19    ; 19 uses
  %i.pr = add nuw i32 %3, %1                      ; 2 uses
  %i.ps = icmp slt i32 %i.pr, %i.pq
  %i.pt = sext i32 %i.pr to i64                   ; 8 uses
  %i.pu = sext i32 %i.pp to i64                   ; 2 uses
  %i.pv = zext nneg i32 %3 to i64
  %i.pw = sext i32 %i.pq to i64                   ; 10 uses
  %i.px = zext nneg i32 %1 to i64
  %wide.trip.count542 = zext nneg i32 %2 to i64   ; 4 uses
  %wide.trip.count527 = zext nneg i32 %3 to i64   ; 14 uses
  %wide.trip.count532 = zext nneg i32 %1 to i64   ; 10 uses
  %i.py = mul nsw i64 %i.pw, %wide.trip.count527
  %i.pz = add nsw i64 %i.py, %i.pt
  %i.qa = shl i64 %i.pz, 2
  %scevgep607 = getelementptr i8, ptr %i.i, i64 %i.qa
  %i.qb = add nuw nsw i64 %wide.trip.count542, %wide.trip.count527
  %i.qc = shl nuw nsw i64 %i.qb, 2
  %i.qd = mul i64 %i.qc, %i.pw
  %scevgep608 = getelementptr i8, ptr %i.i, i64 %i.qd
  %scevgep609 = getelementptr i8, ptr %0, i64 4
  %i.qe = add i32 %i.pp, -4
  %i.qf = sub nsw i64 %i.pw, %i.pt                ; 7 uses
  %i.qg = add nsw i64 %wide.trip.count532, -1     ; 2 uses
  %i.qh = mul nuw nsw i64 %wide.trip.count542, %wide.trip.count532
  %i.qi = shl i64 %i.qh, 4
  %i.qj = getelementptr i8, ptr %0, i64 %i.qi
  %scevgep641 = getelementptr i8, ptr %i.qj, i64 -12
  %i.qk = add i32 %i.pq, 1
  %i.ql = mul i32 %3, %i.qk
  %i.qm = shl nuw nsw i64 %wide.trip.count532, 2
  %scevgep643 = getelementptr i8, ptr %i.i, i64 %i.qm
  %i.qn = mul nsw i64 %i.pw, %wide.trip.count527
  %i.qo = shl i64 %i.qn, 2
  %scevgep680 = getelementptr i8, ptr %i.i, i64 %i.qo
  %i.qp = add nsw i64 %wide.trip.count542, -1     ; 2 uses
  %i.qq = mul nsw i64 %i.qp, %i.pw
  %i.qr = shl i64 %i.qq, 2
  %i.qs = shl nsw i64 %i.pw, 2
  %i.qt = add nsw i64 %i.qs, 4
  %i.qu = mul i64 %i.qt, %wide.trip.count527
  %i.qv = getelementptr i8, ptr %i.i, i64 %i.qr
  %scevgep681 = getelementptr i8, ptr %i.qv, i64 %i.qu
  %i.qw = mul nsw i64 %i.qp, %i.pu
  %i.qx = shl i64 %i.qw, 2
  %i.qy = getelementptr i8, ptr %0, i64 %i.qx
  %scevgep682 = getelementptr i8, ptr %i.qy, i64 4
  %min.iters.check688 = icmp samesign ult i32 %3, 4
  %bound0683 = icmp ult ptr %scevgep680, %scevgep682
  %bound1684 = icmp ult ptr %0, %scevgep681
  %found.conflict685 = and i1 %bound0683, %bound1684
  %i.qz = or i32 %i.pp, %i.pq
  %i.ra = icmp slt i32 %i.qz, 0
  %i.rb = or i1 %found.conflict685, %i.ra
  %min.iters.check690 = icmp samesign ult i32 %3, 32
  %i.rc = and i64 %wide.trip.count527, 28
  %n.vec692 = and i64 %wide.trip.count527, 1073741792 ; 4 uses
  %cmp.n699 = icmp eq i64 %n.vec692, %wide.trip.count527
  %min.epilog.iters.check704 = icmp eq i64 %i.rc, 0
  %n.vec706 = and i64 %wide.trip.count527, 1073741820 ; 3 uses
  %cmp.n713 = icmp eq i64 %n.vec706, %wide.trip.count527
  %min.iters.check648 = icmp samesign ult i32 %1, 5
  %i.rd = trunc nsw i64 %i.qg to i32
  %i.re = icmp ugt i64 %i.qg, 4294967295
  %min.iters.check650 = icmp samesign ult i32 %1, 33
  %i.rf = and i64 %wide.trip.count532, 31         ; 2 uses
  %i.rg = icmp eq i64 %i.rf, 0
  %i.rh = select i1 %i.rg, i64 32, i64 %i.rf      ; 2 uses
  %n.vec652 = sub nsw i64 %wide.trip.count532, %i.rh ; 3 uses
  %min.epilog.iters.check669 = icmp samesign ult i64 %i.rh, 5
  %i.ri = and i64 %wide.trip.count532, 3          ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 0
  %i.rk = select i1 %i.rj, i64 4, i64 %i.ri
  %n.vec671 = sub nsw i64 %wide.trip.count532, %i.rk ; 2 uses
  %min.iters.check614 = icmp ult i64 %i.qf, 4
  %stride.check = icmp slt i32 %i.pq, 0
  %min.iters.check616 = icmp ult i64 %i.qf, 32
  %i.rl = and i64 %i.qf, 28
  %n.vec618 = and i64 %i.qf, -32                  ; 4 uses
  %i.rm = add nsw i64 %n.vec618, %i.pt
  %cmp.n = icmp eq i64 %i.qf, %n.vec618
  %min.epilog.iters.check628 = icmp eq i64 %i.rl, 0
  %n.vec630 = and i64 %i.qf, -4                   ; 3 uses
  %i.rn = add nsw i64 %n.vec630, %i.pt
  %cmp.n637 = icmp eq i64 %i.qf, %n.vec630
  br label %iter.check701

iter.check701:                                    ; preds = %bb.ab, %._crit_edge479
  %indvars.iv539 = phi i64 [ 0, %bb.ab ], [ %i.xt, %._crit_edge479 ] ; 6 uses
  %i.ro = trunc i64 %indvars.iv539 to i32
  %i.rp = mul i32 %i.pq, %i.ro
  %i.rq = add i32 %i.rp, %i.ql
  %i.rr = sext i32 %i.rq to i64
  %i.rs = shl nsw i64 %i.rr, 2                    ; 2 uses
  %scevgep642 = getelementptr i8, ptr %i.i, i64 %i.rs
  %scevgep644 = getelementptr i8, ptr %scevgep643, i64 %i.rs
  %i.rt = trunc i64 %indvars.iv539 to i32
  %i.ru = mul i32 %i.pp, %i.rt
  %i.rv = add i32 %i.ru, %i.qe
  %i.rw = sext i32 %i.rv to i64
  %i.rx = shl nsw i64 %i.rw, 2
  %scevgep610 = getelementptr i8, ptr %scevgep609, i64 %i.rx
  %i.ry = mul nuw nsw i64 %indvars.iv539, %i.pu
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ry ; 11 uses
  %i.sa = add nuw nsw i64 %indvars.iv539, %i.pv
  %i.sb = mul nsw i64 %i.sa, %i.pw                ; 3 uses
  %i.sc = getelementptr [4 x i8], ptr %i.i, i64 %i.sb ; 11 uses
  %brmerge = select i1 %min.iters.check688, i1 true, i1 %i.rb
  br i1 %brmerge, label %vec.epilog.scalar.ph702.preheader, label %vector.main.loop.iter.check689

vector.main.loop.iter.check689:                   ; preds = %iter.check701
  br i1 %min.iters.check690, label %vec.epilog.ph705, label %vector.ph691

vector.ph691:                                     ; preds = %vector.main.loop.iter.check689
  %i.sd = load float, ptr %i.rz, align 4, !tbaa !20, !alias.scope !197
  %i.se = fmul reassoc nsz arcp contract afn float %i.sd, f0x3C23D70A
  %broadcast.splatinsert695 = insertelement <8 x float> poison, float %i.se, i64 0
  %broadcast.splat696 = shufflevector <8 x float> %broadcast.splatinsert695, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body693

vector.body693:                                   ; preds = %vector.body693, %vector.ph691
  %index694 = phi i64 [ 0, %vector.ph691 ], [ %index.next697, %vector.body693 ] ; 2 uses
  %i.sf = getelementptr [4 x i8], ptr %i.sc, i64 %index694 ; 4 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 32
  %i.sh = getelementptr i8, ptr %i.sf, i64 64
  %i.si = getelementptr i8, ptr %i.sf, i64 96
  store <8 x float> %broadcast.splat696, ptr %i.sf, align 4, !tbaa !20, !alias.scope !200, !noalias !197
  store <8 x float> %broadcast.splat696, ptr %i.sg, align 4, !tbaa !20, !alias.scope !200, !noalias !197
  store <8 x float> %broadcast.splat696, ptr %i.sh, align 4, !tbaa !20, !alias.scope !200, !noalias !197
  store <8 x float> %broadcast.splat696, ptr %i.si, align 4, !tbaa !20, !alias.scope !200, !noalias !197
  %index.next697 = add nuw i64 %index694, 32      ; 2 uses
  %i.sj = icmp eq i64 %index.next697, %n.vec692
  br i1 %i.sj, label %middle.block698, label %vector.body693, !llvm.loop !202

middle.block698:                                  ; preds = %vector.body693
  br i1 %cmp.n699, label %iter.check666, label %vec.epilog.iter.check703

vec.epilog.iter.check703:                         ; preds = %middle.block698
  br i1 %min.epilog.iters.check704, label %vec.epilog.scalar.ph702.preheader, label %vec.epilog.ph705, !prof !39

vec.epilog.ph705:                                 ; preds = %vector.main.loop.iter.check689, %vec.epilog.iter.check703
  %vec.epilog.resume.val700 = phi i64 [ %n.vec692, %vec.epilog.iter.check703 ], [ 0, %vector.main.loop.iter.check689 ]
  %i.sk = load float, ptr %i.rz, align 4, !tbaa !20, !alias.scope !197
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, f0x3C23D70A
  %broadcast.splatinsert709 = insertelement <4 x float> poison, float %i.sl, i64 0
  %broadcast.splat710 = shufflevector <4 x float> %broadcast.splatinsert709, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body707

vec.epilog.vector.body707:                        ; preds = %vec.epilog.vector.body707, %vec.epilog.ph705
  %index708 = phi i64 [ %vec.epilog.resume.val700, %vec.epilog.ph705 ], [ %index.next711, %vec.epilog.vector.body707 ] ; 2 uses
  %i.sm = getelementptr [4 x i8], ptr %i.sc, i64 %index708
  store <4 x float> %broadcast.splat710, ptr %i.sm, align 4, !tbaa !20, !alias.scope !200, !noalias !197
  %index.next711 = add nuw i64 %index708, 4       ; 2 uses
  %i.sn = icmp eq i64 %index.next711, %n.vec706
  br i1 %i.sn, label %vec.epilog.middle.block712, label %vec.epilog.vector.body707, !llvm.loop !203

vec.epilog.middle.block712:                       ; preds = %vec.epilog.vector.body707
  br i1 %cmp.n713, label %iter.check666, label %vec.epilog.scalar.ph702.preheader

vec.epilog.scalar.ph702.preheader:                ; preds = %iter.check701, %vec.epilog.iter.check703, %vec.epilog.middle.block712
  %indvars.iv524.ph = phi i64 [ 0, %iter.check701 ], [ %n.vec706, %vec.epilog.middle.block712 ], [ %n.vec692, %vec.epilog.iter.check703 ] ; 4 uses
  %i.so = sub nsw i64 %wide.trip.count527, %indvars.iv524.ph
  %xtraiter716 = and i64 %i.so, 7                 ; 2 uses
  %lcmp.mod717.not = icmp eq i64 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol

vec.epilog.scalar.ph702.prol:                     ; preds = %vec.epilog.scalar.ph702.preheader, %vec.epilog.scalar.ph702.prol
  %indvars.iv524.prol = phi i64 [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph702.prol ], [ %indvars.iv524.ph, %vec.epilog.scalar.ph702.preheader ] ; 2 uses
  %prol.iter718 = phi i64 [ %prol.iter718.next, %vec.epilog.scalar.ph702.prol ], [ 0, %vec.epilog.scalar.ph702.preheader ]
  %i.sp = load float, ptr %i.rz, align 4, !tbaa !20
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, f0x3C23D70A
  %i.sr = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524.prol
  store float %i.sq, ptr %i.sr, align 4, !tbaa !20
  %indvars.iv.next525.prol = add nuw nsw i64 %indvars.iv524.prol, 1 ; 2 uses
  %prol.iter718.next = add i64 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i64 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol, !llvm.loop !204

vec.epilog.scalar.ph702.prol.loopexit:            ; preds = %vec.epilog.scalar.ph702.prol, %vec.epilog.scalar.ph702.preheader
  %indvars.iv524.unr = phi i64 [ %indvars.iv524.ph, %vec.epilog.scalar.ph702.preheader ], [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph702.prol ]
  %i.ss = sub nsw i64 %indvars.iv524.ph, %wide.trip.count527
  %i.st = icmp ugt i64 %i.ss, -8
  br i1 %i.st, label %iter.check666, label %vec.epilog.scalar.ph702

bb.ac:                                            ; preds = %._crit_edge479
  %i.su = load i32, ptr %5, align 4, !tbaa !19
  %i.sv = mul i32 %i.pq, %3
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.sw ; 5 uses
  %i.sy = zext i32 %i.pq to i64
  %i.sz = shl nuw nsw i64 %i.sy, 2                ; 10 uses
  %i.ta = sub i32 %i.su, %3                       ; 6 uses
  %i.tb = add i32 %i.ta, -1
  %i.tc = mul i32 %i.tb, %i.pq
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.td ; 5 uses
  %xtraiter727 = and i64 %wide.trip.count527, 3   ; 3 uses
  %i.tf = icmp samesign ult i32 %3, 4
  br i1 %i.tf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ac
  %unroll_iter = and i64 %wide.trip.count527, 1073741820
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.ad ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ad ]
  %i.tg = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.th = mul i32 %i.pq, %i.tg
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ti
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.tj, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.tk = add i32 %i.ta, %i.tg
  %i.tl = mul i32 %i.tk, %i.pq
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tn, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %i.to = trunc i64 %indvars.iv.i to i32
  %i.tp = or disjoint i32 %i.to, 1                ; 2 uses
  %i.tq = mul i32 %i.pq, %i.tp
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ts, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.tt = add i32 %i.ta, %i.tp
  %i.tu = mul i32 %i.tt, %i.pq
  %i.tv = zext i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tw, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %i.tx = trunc i64 %indvars.iv.i to i32
  %i.ty = or disjoint i32 %i.tx, 2                ; 2 uses
  %i.tz = mul i32 %i.pq, %i.ty
  %i.ua = zext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ua
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ub, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.uc = add i32 %i.ta, %i.ty
  %i.ud = mul i32 %i.uc, %i.pq
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ue
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uf, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %i.ug = trunc i64 %indvars.iv.i to i32
  %i.uh = or disjoint i32 %i.ug, 3                ; 2 uses
  %i.ui = mul i32 %i.pq, %i.uh
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.uj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uk, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.ul = add i32 %i.ta, %i.uh
  %i.um = mul i32 %i.ul, %i.pq
  %i.un = zext i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.un
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uo, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pad_by_replication.exit.loopexit.unr-lcssa, label %bb.ad

iter.check666:                                    ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702, %vec.epilog.middle.block712, %middle.block698
  %i.up = mul nuw nsw i64 %indvars.iv539, %i.px   ; 10 uses
  %i.uq = trunc nsw i64 %i.sb to i32
  %invariant.op473 = add i32 %3, %i.uq            ; 9 uses
  br i1 %min.iters.check648, label %vec.epilog.scalar.ph667.preheader, label %vector.scevcheck639

vector.scevcheck639:                              ; preds = %iter.check666
  %i.ur = add i32 %invariant.op473, %i.rd
  %i.us = icmp slt i32 %i.ur, %invariant.op473
  %i.ut = or i1 %i.us, %i.re
  br i1 %i.ut, label %vec.epilog.scalar.ph667.preheader, label %vector.memcheck640

vector.memcheck640:                               ; preds = %vector.scevcheck639
  %bound0645 = icmp ult ptr %0, %scevgep644
  %bound1646 = icmp ult ptr %scevgep642, %scevgep641
  %found.conflict647 = and i1 %bound0645, %bound1646
  br i1 %found.conflict647, label %vec.epilog.scalar.ph667.preheader, label %vector.main.loop.iter.check649

vector.main.loop.iter.check649:                   ; preds = %vector.memcheck640
  br i1 %min.iters.check650, label %vec.epilog.ph670, label %vector.body653

vector.body653:                                   ; preds = %vector.main.loop.iter.check649, %vector.body653
  %index654 = phi i64 [ %index.next663, %vector.body653 ], [ 0, %vector.main.loop.iter.check649 ] ; 6 uses
  %i.uu = or disjoint i64 %index654, 8
  %i.uv = or disjoint i64 %index654, 16
  %i.uw = or disjoint i64 %index654, 24
  %i.ux = add nuw nsw i64 %index654, %i.up
  %i.uy = add nuw nsw i64 %i.uu, %i.up
  %i.uz = add nuw nsw i64 %i.uv, %i.up
  %i.va = add nuw nsw i64 %i.uw, %i.up
  %i.vb = shl nsw i64 %i.ux, 4
  %i.vc = shl nsw i64 %i.uy, 4
  %i.vd = shl nsw i64 %i.uz, 4
  %i.ve = shl nsw i64 %i.va, 4
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 %i.vb
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %i.vc
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 %i.vd
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 %i.ve
  %wide.vec655 = load <32 x float>, ptr %i.vf, align 4, !tbaa !20, !alias.scope !205, !noalias !208
  %strided.vec656 = shufflevector <32 x float> %wide.vec655, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec657 = load <32 x float>, ptr %i.vg, align 4, !tbaa !20, !alias.scope !205, !noalias !208
  %strided.vec658 = shufflevector <32 x float> %wide.vec657, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec659 = load <32 x float>, ptr %i.vh, align 4, !tbaa !20, !alias.scope !205, !noalias !208
  %strided.vec660 = shufflevector <32 x float> %wide.vec659, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec661 = load <32 x float>, ptr %i.vi, align 4, !tbaa !20, !alias.scope !205, !noalias !208
  %strided.vec662 = shufflevector <32 x float> %wide.vec661, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.vj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec656, splat (float f0x3C23D70A)
  %i.vk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec658, splat (float f0x3C23D70A)
  %i.vl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec660, splat (float f0x3C23D70A)
  %i.vm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec662, splat (float f0x3C23D70A)
  %i.vn = trunc nuw nsw i64 %index654 to i32
  %i.vo = add i32 %invariant.op473, %i.vn
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.vp ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 96
  store <8 x float> %i.vj, ptr %i.vq, align 4, !tbaa !20, !alias.scope !208
  store <8 x float> %i.vk, ptr %i.vr, align 4, !tbaa !20, !alias.scope !208
  store <8 x float> %i.vl, ptr %i.vs, align 4, !tbaa !20, !alias.scope !208
  store <8 x float> %i.vm, ptr %i.vt, align 4, !tbaa !20, !alias.scope !208
  %index.next663 = add nuw i64 %index654, 32      ; 2 uses
  %i.vu = icmp eq i64 %index.next663, %n.vec652
  br i1 %i.vu, label %vec.epilog.iter.check668, label %vector.body653, !llvm.loop !210

vec.epilog.iter.check668:                         ; preds = %vector.body653
  br i1 %min.epilog.iters.check669, label %vec.epilog.scalar.ph667.preheader, label %vec.epilog.ph670, !prof !39

vec.epilog.scalar.ph667.preheader:                ; preds = %vec.epilog.vector.body672, %vector.memcheck640, %vector.scevcheck639, %iter.check666, %vec.epilog.iter.check668
  %indvars.iv529.ph = phi i64 [ 0, %iter.check666 ], [ 0, %vector.scevcheck639 ], [ 0, %vector.memcheck640 ], [ %n.vec652, %vec.epilog.iter.check668 ], [ %n.vec671, %vec.epilog.vector.body672 ] ; 4 uses
  %i.vv = sub i64 %wide.trip.count532, %indvars.iv529.ph
  %xtraiter719 = and i64 %i.vv, 3                 ; 2 uses
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %vec.epilog.scalar.ph667.prol.loopexit, label %vec.epilog.scalar.ph667.prol

vec.epilog.scalar.ph667.prol:                     ; preds = %vec.epilog.scalar.ph667.preheader, %vec.epilog.scalar.ph667.prol
  %indvars.iv529.prol = phi i64 [ %indvars.iv.next530.prol, %vec.epilog.scalar.ph667.prol ], [ %indvars.iv529.ph, %vec.epilog.scalar.ph667.preheader ] ; 3 uses
  %prol.iter721 = phi i64 [ %prol.iter721.next, %vec.epilog.scalar.ph667.prol ], [ 0, %vec.epilog.scalar.ph667.preheader ]
  %i.vw = add nuw nsw i64 %indvars.iv529.prol, %i.up
  %.idx570.prol = shl nsw i64 %i.vw, 4
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.prol
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !20
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vy, f0x3C23D70A
  %i.wa = trunc nuw nsw i64 %indvars.iv529.prol to i32
  %.reass474.prol = add i32 %invariant.op473, %i.wa
  %i.wb = sext i32 %.reass474.prol to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.wb
  store float %i.vz, ptr %i.wc, align 4, !tbaa !20
  %indvars.iv.next530.prol = add nuw nsw i64 %indvars.iv529.prol, 1 ; 2 uses
  %prol.iter721.next = add i64 %prol.iter721, 1   ; 2 uses
  %prol.iter721.cmp.not = icmp eq i64 %prol.iter721.next, %xtraiter719
  br i1 %prol.iter721.cmp.not, label %vec.epilog.scalar.ph667.prol.loopexit, label %vec.epilog.scalar.ph667.prol, !llvm.loop !211

vec.epilog.scalar.ph667.prol.loopexit:            ; preds = %vec.epilog.scalar.ph667.prol, %vec.epilog.scalar.ph667.preheader
  %indvars.iv529.unr = phi i64 [ %indvars.iv529.ph, %vec.epilog.scalar.ph667.preheader ], [ %indvars.iv.next530.prol, %vec.epilog.scalar.ph667.prol ]
  %i.wd = sub i64 %indvars.iv529.ph, %wide.trip.count532
  %i.we = icmp ugt i64 %i.wd, -4
  br i1 %i.we, label %.unr-lcssa722, label %vec.epilog.scalar.ph667

vec.epilog.ph670:                                 ; preds = %vector.main.loop.iter.check649, %vec.epilog.iter.check668
  %vec.epilog.resume.val665 = phi i64 [ %n.vec652, %vec.epilog.iter.check668 ], [ 0, %vector.main.loop.iter.check649 ]
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph670
  %index673 = phi i64 [ %vec.epilog.resume.val665, %vec.epilog.ph670 ], [ %index.next676, %vec.epilog.vector.body672 ] ; 3 uses
  %i.wf = add nuw nsw i64 %index673, %i.up
  %i.wg = shl nsw i64 %i.wf, 4
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 %i.wg
  %wide.vec674 = load <16 x float>, ptr %i.wh, align 4, !tbaa !20, !alias.scope !205, !noalias !208
  %strided.vec675 = shufflevector <16 x float> %wide.vec674, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.wi = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec675, splat (float f0x3C23D70A)
  %i.wj = trunc nuw nsw i64 %index673 to i32
  %i.wk = add i32 %invariant.op473, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.wl
  store <4 x float> %i.wi, ptr %i.wm, align 4, !tbaa !20, !alias.scope !208
  %index.next676 = add nuw i64 %index673, 4       ; 2 uses
  %i.wn = icmp eq i64 %index.next676, %n.vec671
  br i1 %i.wn, label %vec.epilog.scalar.ph667.preheader, label %vec.epilog.vector.body672, !llvm.loop !212

vec.epilog.scalar.ph702:                          ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702
  %indvars.iv524 = phi i64 [ %indvars.iv.next525.7, %vec.epilog.scalar.ph702 ], [ %indvars.iv524.unr, %vec.epilog.scalar.ph702.prol.loopexit ] ; 9 uses
  %i.wo = load float, ptr %i.rz, align 4, !tbaa !20
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wo, f0x3C23D70A
  %i.wq = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  store float %i.wp, ptr %i.wq, align 4, !tbaa !20
  %i.wr = load float, ptr %i.rz, align 4, !tbaa !20
  %i.ws = fmul reassoc nsz arcp contract afn float %i.wr, f0x3C23D70A
  %i.wt = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.wu = getelementptr i8, ptr %i.wt, i64 4
  store float %i.ws, ptr %i.wu, align 4, !tbaa !20
  %i.wv = load float, ptr %i.rz, align 4, !tbaa !20
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wv, f0x3C23D70A
  %i.wx = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.wy = getelementptr i8, ptr %i.wx, i64 8
  store float %i.ww, ptr %i.wy, align 4, !tbaa !20
  %i.wz = load float, ptr %i.rz, align 4, !tbaa !20
  %i.xa = fmul reassoc nsz arcp contract afn float %i.wz, f0x3C23D70A
  %i.xb = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xc = getelementptr i8, ptr %i.xb, i64 12
  store float %i.xa, ptr %i.xc, align 4, !tbaa !20
  %i.xd = load float, ptr %i.rz, align 4, !tbaa !20
  %i.xe = fmul reassoc nsz arcp contract afn float %i.xd, f0x3C23D70A
  %i.xf = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xg = getelementptr i8, ptr %i.xf, i64 16
  store float %i.xe, ptr %i.xg, align 4, !tbaa !20
  %i.xh = load float, ptr %i.rz, align 4, !tbaa !20
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xh, f0x3C23D70A
  %i.xj = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xk = getelementptr i8, ptr %i.xj, i64 20
  store float %i.xi, ptr %i.xk, align 4, !tbaa !20
  %i.xl = load float, ptr %i.rz, align 4, !tbaa !20
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xl, f0x3C23D70A
  %i.xn = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xo = getelementptr i8, ptr %i.xn, i64 24
  store float %i.xm, ptr %i.xo, align 4, !tbaa !20
  %i.xp = load float, ptr %i.rz, align 4, !tbaa !20
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, f0x3C23D70A
  %i.xr = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xs = getelementptr i8, ptr %i.xr, i64 28
  store float %i.xq, ptr %i.xs, align 4, !tbaa !20
  %indvars.iv.next525.7 = add nuw nsw i64 %indvars.iv524, 8 ; 2 uses
  %exitcond528.not.7 = icmp eq i64 %indvars.iv.next525.7, %wide.trip.count527
  br i1 %exitcond528.not.7, label %iter.check666, label %vec.epilog.scalar.ph702, !llvm.loop !213

.unr-lcssa722:                                    ; preds = %vec.epilog.scalar.ph667, %vec.epilog.scalar.ph667.prol.loopexit
  %i.xt = add nuw nsw i64 %indvars.iv539, 1       ; 3 uses
  br i1 %i.ps, label %iter.check625, label %._crit_edge479

iter.check625:                                    ; preds = %.unr-lcssa722
  %i.xu = trunc nuw nsw i64 %i.xt to i32
  %i.xv = mul i32 %i.pp, %i.xu
  %i.xw = add i32 %i.xv, -4
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.xx ; 12 uses
  %i.xz = getelementptr [4 x i8], ptr %i.i, i64 %i.sb ; 11 uses
  br i1 %min.iters.check614, label %vec.epilog.scalar.ph626.preheader, label %vector.memcheck606

vector.memcheck606:                               ; preds = %iter.check625
  %bound0611 = icmp ult ptr %scevgep607, %scevgep610
  %bound1612 = icmp ult ptr %i.xy, %scevgep608
  %found.conflict613 = and i1 %bound0611, %bound1612
  %i.ya = or i1 %found.conflict613, %stride.check
  br i1 %i.ya, label %vec.epilog.scalar.ph626.preheader, label %vector.main.loop.iter.check615

vector.main.loop.iter.check615:                   ; preds = %vector.memcheck606
  br i1 %min.iters.check616, label %vec.epilog.ph629, label %vector.ph617

vector.ph617:                                     ; preds = %vector.main.loop.iter.check615
  %i.yb = load float, ptr %i.xy, align 4, !tbaa !20, !alias.scope !214
  %i.yc = fmul reassoc nsz arcp contract afn float %i.yb, f0x3C23D70A
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.yc, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep730 = getelementptr [4 x i8], ptr %i.xz, i64 %i.pt
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next621, %vector.body619 ] ; 2 uses
  %gep731 = getelementptr [4 x i8], ptr %invariant.gep730, i64 %index620 ; 4 uses
  %i.yd = getelementptr i8, ptr %gep731, i64 32
  %i.ye = getelementptr i8, ptr %gep731, i64 64
  %i.yf = getelementptr i8, ptr %gep731, i64 96
  store <8 x float> %broadcast.splat, ptr %gep731, align 4, !tbaa !20, !alias.scope !217, !noalias !214
  store <8 x float> %broadcast.splat, ptr %i.yd, align 4, !tbaa !20, !alias.scope !217, !noalias !214
  store <8 x float> %broadcast.splat, ptr %i.ye, align 4, !tbaa !20, !alias.scope !217, !noalias !214
  store <8 x float> %broadcast.splat, ptr %i.yf, align 4, !tbaa !20, !alias.scope !217, !noalias !214
  %index.next621 = add nuw i64 %index620, 32      ; 2 uses
  %i.yg = icmp eq i64 %index.next621, %n.vec618
  br i1 %i.yg, label %middle.block622, label %vector.body619, !llvm.loop !219

middle.block622:                                  ; preds = %vector.body619
  br i1 %cmp.n, label %._crit_edge479, label %vec.epilog.iter.check627

vec.epilog.iter.check627:                         ; preds = %middle.block622
  br i1 %min.epilog.iters.check628, label %vec.epilog.scalar.ph626.preheader, label %vec.epilog.ph629, !prof !39

vec.epilog.ph629:                                 ; preds = %vector.main.loop.iter.check615, %vec.epilog.iter.check627
  %vec.epilog.resume.val623 = phi i64 [ %n.vec618, %vec.epilog.iter.check627 ], [ 0, %vector.main.loop.iter.check615 ]
  %i.yh = load float, ptr %i.xy, align 4, !tbaa !20, !alias.scope !214
  %i.yi = fmul reassoc nsz arcp contract afn float %i.yh, f0x3C23D70A
  %broadcast.splatinsert633 = insertelement <4 x float> poison, float %i.yi, i64 0
  %broadcast.splat634 = shufflevector <4 x float> %broadcast.splatinsert633, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep732 = getelementptr [4 x i8], ptr %i.xz, i64 %i.pt
  br label %vec.epilog.vector.body631

vec.epilog.vector.body631:                        ; preds = %vec.epilog.vector.body631, %vec.epilog.ph629
  %index632 = phi i64 [ %vec.epilog.resume.val623, %vec.epilog.ph629 ], [ %index.next635, %vec.epilog.vector.body631 ] ; 2 uses
  %gep733 = getelementptr [4 x i8], ptr %invariant.gep732, i64 %index632
  store <4 x float> %broadcast.splat634, ptr %gep733, align 4, !tbaa !20, !alias.scope !217, !noalias !214
  %index.next635 = add nuw i64 %index632, 4       ; 2 uses
  %i.yj = icmp eq i64 %index.next635, %n.vec630
  br i1 %i.yj, label %vec.epilog.middle.block636, label %vec.epilog.vector.body631, !llvm.loop !220

vec.epilog.middle.block636:                       ; preds = %vec.epilog.vector.body631
  br i1 %cmp.n637, label %._crit_edge479, label %vec.epilog.scalar.ph626.preheader

vec.epilog.scalar.ph626.preheader:                ; preds = %vector.memcheck606, %iter.check625, %vec.epilog.iter.check627, %vec.epilog.middle.block636
  %indvars.iv534.ph = phi i64 [ %i.pt, %iter.check625 ], [ %i.pt, %vector.memcheck606 ], [ %i.rm, %vec.epilog.iter.check627 ], [ %i.rn, %vec.epilog.middle.block636 ] ; 4 uses
  %i.yk = sub nsw i64 %i.pw, %indvars.iv534.ph
  %xtraiter723 = and i64 %i.yk, 7                 ; 2 uses
  %lcmp.mod724.not = icmp eq i64 %xtraiter723, 0
  br i1 %lcmp.mod724.not, label %vec.epilog.scalar.ph626.prol.loopexit, label %vec.epilog.scalar.ph626.prol

vec.epilog.scalar.ph626.prol:                     ; preds = %vec.epilog.scalar.ph626.preheader, %vec.epilog.scalar.ph626.prol
  %indvars.iv534.prol = phi i64 [ %indvars.iv.next535.prol, %vec.epilog.scalar.ph626.prol ], [ %indvars.iv534.ph, %vec.epilog.scalar.ph626.preheader ] ; 2 uses
  %prol.iter725 = phi i64 [ %prol.iter725.next, %vec.epilog.scalar.ph626.prol ], [ 0, %vec.epilog.scalar.ph626.preheader ]
  %i.yl = load float, ptr %i.xy, align 4, !tbaa !20
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yl, f0x3C23D70A
  %i.yn = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534.prol
  store float %i.ym, ptr %i.yn, align 4, !tbaa !20
  %indvars.iv.next535.prol = add nuw nsw i64 %indvars.iv534.prol, 1 ; 2 uses
  %prol.iter725.next = add i64 %prol.iter725, 1   ; 2 uses
  %prol.iter725.cmp.not = icmp eq i64 %prol.iter725.next, %xtraiter723
  br i1 %prol.iter725.cmp.not, label %vec.epilog.scalar.ph626.prol.loopexit, label %vec.epilog.scalar.ph626.prol, !llvm.loop !221

vec.epilog.scalar.ph626.prol.loopexit:            ; preds = %vec.epilog.scalar.ph626.prol, %vec.epilog.scalar.ph626.preheader
  %indvars.iv534.unr = phi i64 [ %indvars.iv534.ph, %vec.epilog.scalar.ph626.preheader ], [ %indvars.iv.next535.prol, %vec.epilog.scalar.ph626.prol ]
  %i.yo = sub nsw i64 %indvars.iv534.ph, %i.pw
  %i.yp = icmp ugt i64 %i.yo, -8
  br i1 %i.yp, label %._crit_edge479, label %vec.epilog.scalar.ph626

vec.epilog.scalar.ph667:                          ; preds = %vec.epilog.scalar.ph667.prol.loopexit, %vec.epilog.scalar.ph667
  %indvars.iv529 = phi i64 [ %indvars.iv.next530.3, %vec.epilog.scalar.ph667 ], [ %indvars.iv529.unr, %vec.epilog.scalar.ph667.prol.loopexit ] ; 6 uses
  %i.yq = add nuw nsw i64 %indvars.iv529, %i.up
  %.idx570 = shl nsw i64 %i.yq, 4
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !20
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, f0x3C23D70A
  %i.yu = trunc nuw nsw i64 %indvars.iv529 to i32
  %.reass474 = add i32 %invariant.op473, %i.yu
  %i.yv = sext i32 %.reass474 to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.yv
  store float %i.yt, ptr %i.yw, align 4, !tbaa !20
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %i.yx = add nuw nsw i64 %indvars.iv.next530, %i.up
  %.idx570.1 = shl nsw i64 %i.yx, 4
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.1
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !20
  %i.za = fmul reassoc nsz arcp contract afn float %i.yz, f0x3C23D70A
  %i.zb = trunc nuw nsw i64 %indvars.iv.next530 to i32
  %.reass474.1 = add i32 %invariant.op473, %i.zb
  %i.zc = sext i32 %.reass474.1 to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.zc
  store float %i.za, ptr %i.zd, align 4, !tbaa !20
  %indvars.iv.next530.1 = add nuw nsw i64 %indvars.iv529, 2 ; 2 uses
  %i.ze = add nuw nsw i64 %indvars.iv.next530.1, %i.up
  %.idx570.2 = shl nsw i64 %i.ze, 4
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.2
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !20
  %i.zh = fmul reassoc nsz arcp contract afn float %i.zg, f0x3C23D70A
  %i.zi = trunc nuw nsw i64 %indvars.iv.next530.1 to i32
  %.reass474.2 = add i32 %invariant.op473, %i.zi
  %i.zj = sext i32 %.reass474.2 to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.zj
  store float %i.zh, ptr %i.zk, align 4, !tbaa !20
  %indvars.iv.next530.2 = add nuw nsw i64 %indvars.iv529, 3 ; 2 uses
  %i.zl = add nuw nsw i64 %indvars.iv.next530.2, %i.up
  %.idx570.3 = shl nsw i64 %i.zl, 4
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.3
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !20
  %i.zo = fmul reassoc nsz arcp contract afn float %i.zn, f0x3C23D70A
  %i.zp = trunc nuw nsw i64 %indvars.iv.next530.2 to i32
  %.reass474.3 = add i32 %invariant.op473, %i.zp
  %i.zq = sext i32 %.reass474.3 to i64
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.zq
  store float %i.zo, ptr %i.zr, align 4, !tbaa !20
  %indvars.iv.next530.3 = add nuw nsw i64 %indvars.iv529, 4 ; 2 uses
  %exitcond533.not.3 = icmp eq i64 %indvars.iv.next530.3, %wide.trip.count532
  br i1 %exitcond533.not.3, label %.unr-lcssa722, label %vec.epilog.scalar.ph667, !llvm.loop !222

._crit_edge479:                                   ; preds = %vec.epilog.scalar.ph626.prol.loopexit, %vec.epilog.scalar.ph626, %middle.block622, %vec.epilog.middle.block636, %.unr-lcssa722
  %exitcond543.not = icmp eq i64 %i.xt, %wide.trip.count542
  br i1 %exitcond543.not, label %bb.ac, label %iter.check701

vec.epilog.scalar.ph626:                          ; preds = %vec.epilog.scalar.ph626.prol.loopexit, %vec.epilog.scalar.ph626
  %indvars.iv534 = phi i64 [ %indvars.iv.next535.7, %vec.epilog.scalar.ph626 ], [ %indvars.iv534.unr, %vec.epilog.scalar.ph626.prol.loopexit ] ; 9 uses
  %i.zs = load float, ptr %i.xy, align 4, !tbaa !20
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, f0x3C23D70A
  %i.zu = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  store float %i.zt, ptr %i.zu, align 4, !tbaa !20
  %i.zv = load float, ptr %i.xy, align 4, !tbaa !20
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zv, f0x3C23D70A
  %i.zx = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.zy = getelementptr i8, ptr %i.zx, i64 4
  store float %i.zw, ptr %i.zy, align 4, !tbaa !20
  %i.zz = load float, ptr %i.xy, align 4, !tbaa !20
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zz, f0x3C23D70A
  %i.aab = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aac = getelementptr i8, ptr %i.aab, i64 8
  store float %i.aaa, ptr %i.aac, align 4, !tbaa !20
  %i.aad = load float, ptr %i.xy, align 4, !tbaa !20
  %i.aae = fmul reassoc nsz arcp contract afn float %i.aad, f0x3C23D70A
  %i.aaf = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aag = getelementptr i8, ptr %i.aaf, i64 12
  store float %i.aae, ptr %i.aag, align 4, !tbaa !20
  %i.aah = load float, ptr %i.xy, align 4, !tbaa !20
  %i.aai = fmul reassoc nsz arcp contract afn float %i.aah, f0x3C23D70A
  %i.aaj = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aak = getelementptr i8, ptr %i.aaj, i64 16
  store float %i.aai, ptr %i.aak, align 4, !tbaa !20
  %i.aal = load float, ptr %i.xy, align 4, !tbaa !20
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aal, f0x3C23D70A
  %i.aan = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aao = getelementptr i8, ptr %i.aan, i64 20
  store float %i.aam, ptr %i.aao, align 4, !tbaa !20
  %i.aap = load float, ptr %i.xy, align 4, !tbaa !20
  %i.aaq = fmul reassoc nsz arcp contract afn float %i.aap, f0x3C23D70A
  %i.aar = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aas = getelementptr i8, ptr %i.aar, i64 24
  store float %i.aaq, ptr %i.aas, align 4, !tbaa !20
  %i.aat = load float, ptr %i.xy, align 4, !tbaa !20
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aat, f0x3C23D70A
  %i.aav = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aaw = getelementptr i8, ptr %i.aav, i64 28
  store float %i.aau, ptr %i.aaw, align 4, !tbaa !20
  %indvars.iv.next535.7 = add nuw nsw i64 %indvars.iv534, 8 ; 2 uses
  %exitcond538.not.7 = icmp eq i64 %indvars.iv.next535.7, %i.pw
  br i1 %exitcond538.not.7, label %._crit_edge479, label %vec.epilog.scalar.ph626, !llvm.loop !223

pad_by_replication.exit.loopexit.unr-lcssa:       ; preds = %bb.ad
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %pad_by_replication.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %pad_by_replication.exit.loopexit.unr-lcssa, %bb.ac
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next.i.3, %pad_by_replication.exit.loopexit.unr-lcssa ]
  %lcmp.mod729 = icmp ne i64 %xtraiter727, 0
  tail call void @llvm.assume(i1 %lcmp.mod729)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ae ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ae ]
  %i.aax = trunc nuw nsw i64 %indvars.iv.i.epil to i32 ; 2 uses
  %i.aay = mul i32 %i.pq, %i.aax
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aaz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aba, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.abb = add i32 %i.ta, %i.aax
  %i.abc = mul i32 %i.abb, %i.pq
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.abd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.abe, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter727
  br i1 %epil.iter.cmp.not, label %pad_by_replication.exit, label %bb.ae, !llvm.loop !224

pad_by_replication.exit:                          ; preds = %._crit_edge466, %pad_by_replication.exit.loopexit.unr-lcssa, %bb.ae, %.split, %.preheader435
  br i1 %.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %pad_by_replication.exit
  %i.abf = load i32, ptr %6, align 8, !tbaa !18
  %i.abg = icmp eq i32 %i.abf, 2
  %i.abh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8
  %i.abi = icmp ne ptr %i.abh, null
  %or.cond9 = select i1 %i.abg, i1 %i.abi, i1 false
  br i1 %or.cond9, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.abj = load i32, ptr %4, align 4, !tbaa !19
  %i.abk = load i32, ptr %5, align 4, !tbaa !19
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.i, i32 noundef %i.abj, i32 noundef %i.abk, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %pad_by_replication.exit
  ret ptr %i.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gauss_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i64 %2, -1                       ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = add nuw i64 %i.b, 1                      ; 2 uses
  %i.d = add nsw i64 %3, -1                       ; 2 uses
  %i.e = lshr i64 %i.d, 1                         ; 5 uses
  %i.f = icmp ugt i64 %i.d, 3
  br i1 %i.f, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.a
  %.idx.i = shl nsw i64 %2, 3                     ; 3 uses
  %.idx41.i = mul nsw i64 %2, 12                  ; 3 uses
  %.idx42.i = shl nsw i64 %2, 4                   ; 3 uses
  %i.g = add nsw i64 %i.b, -2                     ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  %i.h = and i64 %i.a, 2
  %.not.not = icmp eq i64 %i.h, 0
  br label %bb.b

._crit_edge111:                                   ; preds = %bb.d, %bb.a
  tail call void @llvm.x86.sse.sfence()
  %i.i = trunc i64 %i.e to i32
  %i.j = add i32 %i.i, 1
  %i.k = icmp sgt i32 %i.j, 2
  %sext = shl i64 %i.c, 32                        ; 13 uses
  br i1 %i.k, label %.lr.ph.preheader.i, label %ll_fill_boundary1.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge111
  %i.l = ashr exact i64 %sext, 32                 ; 9 uses
  %wide.trip.count.i = and i64 %i.e, 4294967295   ; 2 uses
  %i.m = add nsw i64 %wide.trip.count.i, -1       ; 4 uses
  %i.n = add nsw i64 %wide.trip.count.i, -2       ; 2 uses
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.m, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.p = mul nsw i64 %indvars.iv.i, %i.l
  %i.q = getelementptr [4 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  store float %i.s, ptr %i.q, align 4, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.t = mul nsw i64 %indvars.iv.next.i, %i.l
  %i.u = getelementptr [4 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !20
  store float %i.w, ptr %i.u, align 4, !tbaa !20
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %i.x = mul nsw i64 %indvars.iv.next.i.1, %i.l
  %i.y = getelementptr [4 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20
  store float %i.aa, ptr %i.y, align 4, !tbaa !20
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %i.ab = mul nsw i64 %indvars.iv.next.i.2, %i.l
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20
  store float %i.ae, ptr %i.ac, align 4, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %i.af = mul nsw i64 %indvars.iv.next.i.3, %i.l
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  store float %i.ai, ptr %i.ag, align 4, !tbaa !20
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5
  %i.aj = mul nsw i64 %indvars.iv.next.i.4, %i.l
  %i.ak = getelementptr [4 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !20
  store float %i.am, ptr %i.ak, align 4, !tbaa !20
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6
  %i.an = mul nsw i64 %indvars.iv.next.i.5, %i.l
  %i.ao = getelementptr [4 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !20
  store float %i.aq, ptr %i.ao, align 4, !tbaa !20
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7
  %i.ar = mul nsw i64 %indvars.iv.next.i.6, %i.l
  %i.as = getelementptr [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !20
  store float %i.au, ptr %i.as, align 4, !tbaa !20
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph34.i.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph34.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph34.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph34.i.preheader.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %.lr.ph34.i.preheader.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.av = mul nsw i64 %indvars.iv.i.epil, %i.l
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !20
  store float %i.ay, ptr %i.aw, align 4, !tbaa !20
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph34.i.preheader, label %.lr.ph.i.epil, !llvm.loop !225

.lr.ph34.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph34.i.preheader.unr-lcssa
  %xtraiter137 = and i64 %i.m, 7                  ; 3 uses
  %i.az = icmp ult i64 %i.n, 7
  br i1 %i.az, label %.lr.ph34.i.epil.preheader, label %.lr.ph34.i.preheader.new

.lr.ph34.i.preheader.new:                         ; preds = %.lr.ph34.i.preheader
  %unroll_iter141 = and i64 %i.m, -8
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i, %.lr.ph34.i.preheader.new
  %indvars.iv36.i = phi i64 [ 1, %.lr.ph34.i.preheader.new ], [ %indvars.iv.next37.i.7, %.lr.ph34.i ] ; 8 uses
  %niter142 = phi i64 [ 0, %.lr.ph34.i.preheader.new ], [ %niter142.next.7, %.lr.ph34.i ]
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %sext99 = mul i64 %sext, %indvars.iv.next37.i
  %i.ba = ashr exact i64 %sext99, 30
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !20
  %i.be = getelementptr i8, ptr %i.bb, i64 -4
  store float %i.bd, ptr %i.be, align 4, !tbaa !20
  %indvars.iv.next37.i.1 = add nuw nsw i64 %indvars.iv36.i, 2
  %sext99.1 = mul i64 %sext, %indvars.iv.next37.i.1
  %i.bf = ashr exact i64 %sext99.1, 30
  %i.bg = getelementptr i8, ptr %1, i64 %i.bf     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !20
  %i.bj = getelementptr i8, ptr %i.bg, i64 -4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !20
  %indvars.iv.next37.i.2 = add nuw nsw i64 %indvars.iv36.i, 3
  %sext99.2 = mul i64 %sext, %indvars.iv.next37.i.2
  %i.bk = ashr exact i64 %sext99.2, 30
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !20
  %i.bo = getelementptr i8, ptr %i.bl, i64 -4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !20
  %indvars.iv.next37.i.3 = add nuw nsw i64 %indvars.iv36.i, 4
  %sext99.3 = mul i64 %sext, %indvars.iv.next37.i.3
  %i.bp = ashr exact i64 %sext99.3, 30
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !20
  %i.bt = getelementptr i8, ptr %i.bq, i64 -4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !20
  %indvars.iv.next37.i.4 = add nuw nsw i64 %indvars.iv36.i, 5
  %sext99.4 = mul i64 %sext, %indvars.iv.next37.i.4
  %i.bu = ashr exact i64 %sext99.4, 30
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !20
  %i.by = getelementptr i8, ptr %i.bv, i64 -4
  store float %i.bx, ptr %i.by, align 4, !tbaa !20
  %indvars.iv.next37.i.5 = add nuw nsw i64 %indvars.iv36.i, 6
  %sext99.5 = mul i64 %sext, %indvars.iv.next37.i.5
  %i.bz = ashr exact i64 %sext99.5, 30
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !20
  %i.cd = getelementptr i8, ptr %i.ca, i64 -4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !20
  %indvars.iv.next37.i.6 = add nuw nsw i64 %indvars.iv36.i, 7
  %sext99.6 = mul i64 %sext, %indvars.iv.next37.i.6
  %i.ce = ashr exact i64 %sext99.6, 30
  %i.cf = getelementptr i8, ptr %1, i64 %i.ce     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !20
  %i.ci = getelementptr i8, ptr %i.cf, i64 -4
  store float %i.ch, ptr %i.ci, align 4, !tbaa !20
  %indvars.iv.next37.i.7 = add nuw nsw i64 %indvars.iv36.i, 8 ; 3 uses
  %sext99.7 = mul i64 %sext, %indvars.iv.next37.i.7
  %i.cj = ashr exact i64 %sext99.7, 30
  %i.ck = getelementptr i8, ptr %1, i64 %i.cj     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !20
  %i.cn = getelementptr i8, ptr %i.ck, i64 -4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !20
  %niter142.next.7 = add i64 %niter142, 8         ; 2 uses
  %niter142.ncmp.7 = icmp eq i64 %niter142.next.7, %unroll_iter141
  br i1 %niter142.ncmp.7, label %ll_fill_boundary1.exit.loopexit.unr-lcssa, label %.lr.ph34.i

ll_fill_boundary1.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph34.i
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %ll_fill_boundary1.exit, label %.lr.ph34.i.epil.preheader

.lr.ph34.i.epil.preheader:                        ; preds = %ll_fill_boundary1.exit.loopexit.unr-lcssa, %.lr.ph34.i.preheader
  %indvars.iv36.i.epil.init = phi i64 [ 1, %.lr.ph34.i.preheader ], [ %indvars.iv.next37.i.7, %ll_fill_boundary1.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter137, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph34.i.epil

.lr.ph34.i.epil:                                  ; preds = %.lr.ph34.i.epil, %.lr.ph34.i.epil.preheader
  %indvars.iv36.i.epil = phi i64 [ %indvars.iv.next37.i.epil, %.lr.ph34.i.epil ], [ %indvars.iv36.i.epil.init, %.lr.ph34.i.epil.preheader ]
  %epil.iter138 = phi i64 [ %epil.iter138.next, %.lr.ph34.i.epil ], [ 0, %.lr.ph34.i.epil.preheader ]
  %indvars.iv.next37.i.epil = add nuw nsw i64 %indvars.iv36.i.epil, 1 ; 2 uses
  %sext99.epil = mul i64 %sext, %indvars.iv.next37.i.epil
  %i.co = ashr exact i64 %sext99.epil, 30
  %i.cp = getelementptr i8, ptr %1, i64 %i.co     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = getelementptr i8, ptr %i.cp, i64 -4
  store float %i.cr, ptr %i.cs, align 4, !tbaa !20
  %epil.iter138.next = add i64 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i64 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %ll_fill_boundary1.exit, label %.lr.ph34.i.epil, !llvm.loop !226

ll_fill_boundary1.exit:                           ; preds = %ll_fill_boundary1.exit.loopexit.unr-lcssa, %.lr.ph34.i.epil, %._crit_edge111
  %i.ct = ashr exact i64 %sext, 30                ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %1, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.cu, i64 %i.ct, i1 false)
  %sext101 = mul i64 %sext, %i.e
  %i.cv = ashr exact i64 %sext101, 30
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  %i.cx = add nuw i64 %i.e, 4294967295
  %sext102 = mul i64 %sext, %i.cx
  %i.cy = ashr exact i64 %sext102, 30
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cw, ptr align 4 %i.cz, i64 %i.ct, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph110, %bb.d
  %.052108 = phi i64 [ 1, %.lr.ph110 ], [ %i.hj, %bb.d ] ; 3 uses
  %i.da = shl nuw i64 %.052108, 1
  %i.db = add i64 %i.da, -2
  %i.dc = mul i64 %i.db, %2
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc ; 8 uses
  %i.de = mul i64 %.052108, %i.c
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dd, i64 %2 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 %.idx.i ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 %.idx41.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx42.i ; 2 uses
  %.sroa.957.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dl = load <2 x float>, ptr %i.dd, align 4, !tbaa !20
  %i.dm = load <2 x float>, ptr %i.dh, align 4, !tbaa !20
  %i.dn = load <2 x float>, ptr %i.di, align 4, !tbaa !20 ; 2 uses
  %i.do = load <2 x float>, ptr %i.dj, align 4, !tbaa !20
  %i.dp = load <2 x float>, ptr %i.dk, align 4, !tbaa !20
  %i.dq = fadd reassoc nsz arcp contract afn <2 x float> %i.dn, %i.dm
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dq, %i.do
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, splat (float 2.000000e+00)
  %i.dt = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, splat (float 4.000000e+00)
  %i.du = fadd reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dl
  %i.dv = fadd reassoc nsz arcp contract afn <2 x float> %i.dp, %i.dt
  %i.dw = fadd reassoc nsz arcp contract afn <2 x float> %i.dv, %i.du ; 3 uses
  %i.dx = load <2 x float>, ptr %.sroa.957.0..sroa_idx.i, align 4, !tbaa !20
  %i.dy = load <2 x float>, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !20
  %i.dz = load <2 x float>, ptr %.sroa.551.0..sroa_idx.i, align 4, !tbaa !20 ; 2 uses
  %i.ea = load <2 x float>, ptr %.sroa.547.0..sroa_idx.i, align 4, !tbaa !20
  %i.eb = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !20
  %i.ec = fadd reassoc nsz arcp contract afn <2 x float> %i.dz, %i.dy
  %i.ed = fadd reassoc nsz arcp contract afn <2 x float> %i.ec, %i.ea
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.dz, splat (float 2.000000e+00)
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, splat (float 4.000000e+00)
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %i.ee, %i.dx
  %i.eh = fadd reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ef
  %i.ei = fadd reassoc nsz arcp contract afn <2 x float> %i.eh, %i.eg ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ej = extractelement <2 x float> %i.dw, i64 1
  %i.ek = extractelement <2 x float> %i.dw, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.051.lcssa = phi ptr [ %i.dd, %bb.b ], [ %i.eo, %.lr.ph ]
  %i.el = phi <2 x float> [ %i.ei, %bb.b ], [ %i.fr, %.lr.ph ]
  %i.em = phi <2 x float> [ %i.dw, %bb.b ], [ %i.ff, %.lr.ph ] ; 2 uses
  br i1 %.not.not, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.6118.1 = phi nsz float [ %i.fv, %.lr.ph ], [ %i.ej, %.lr.ph.preheader ]
  %.sroa.0116.1 = phi nsz float [ %i.fs, %.lr.ph ], [ %i.ek, %.lr.ph.preheader ]
  %.050105 = phi i64 [ %i.gn, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.051104 = phi ptr [ %i.eo, %.lr.ph ], [ %i.dd, %.lr.ph.preheader ] ; 2 uses
  %i.en = phi <2 x float> [ %i.fr, %.lr.ph ], [ %i.ei, %.lr.ph.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.051104, i64 16 ; 7 uses
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %2 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 %.idx.i ; 2 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 %.idx41.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx42.i ; 2 uses
  %.sroa.957.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %.051104, i64 24
  %.sroa.7.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.551.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.547.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.5.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.et = fmul reassoc nsz arcp contract afn float %.sroa.6118.1, 4.000000e+00
  %i.eu = load <2 x float>, ptr %i.eo, align 4, !tbaa !20
  %i.ev = load <2 x float>, ptr %i.ep, align 4, !tbaa !20
  %i.ew = load <2 x float>, ptr %i.eq, align 4, !tbaa !20 ; 2 uses
  %i.ex = load <2 x float>, ptr %i.er, align 4, !tbaa !20
  %i.ey = load <2 x float>, ptr %i.es, align 4, !tbaa !20
  %i.ez = fadd reassoc nsz arcp contract afn <2 x float> %i.ew, %i.ev
  %i.fa = fadd reassoc nsz arcp contract afn <2 x float> %i.ez, %i.ex
  %i.fb = fmul reassoc nsz arcp contract afn <2 x float> %i.ew, splat (float 2.000000e+00)
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, splat (float 4.000000e+00)
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.fb, %i.eu
  %i.fe = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fc
  %i.ff = fadd reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fd ; 3 uses
  %i.fg = load <2 x float>, ptr %.sroa.957.0..sroa_idx.i62, align 4, !tbaa !20
  %i.fh = load <2 x float>, ptr %.sroa.7.0..sroa_idx.i69, align 4, !tbaa !20
  %i.fi = load <2 x float>, ptr %.sroa.551.0..sroa_idx.i76, align 4, !tbaa !20 ; 2 uses
  %i.fj = load <2 x float>, ptr %.sroa.547.0..sroa_idx.i83, align 4, !tbaa !20
  %i.fk = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i90, align 4, !tbaa !20
  %i.fl = fadd reassoc nsz arcp contract afn <2 x float> %i.fi, %i.fh
  %i.fm = fadd reassoc nsz arcp contract afn <2 x float> %i.fl, %i.fj
  %i.fn = fmul reassoc nsz arcp contract afn <2 x float> %i.fi, splat (float 2.000000e+00)
  %i.fo = fmul reassoc nsz arcp contract afn <2 x float> %i.fm, splat (float 4.000000e+00)
  %i.fp = fadd reassoc nsz arcp contract afn <2 x float> %i.fn, %i.fg
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fo
  %i.fr = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fp ; 3 uses
  %i.fs = extractelement <2 x float> %i.ff, i64 0 ; 3 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %.sroa.0116.1, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.050105
  %i.fv = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fw = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fv, %i.fw
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, 4.000000e+00
  %i.fz = extractelement <2 x float> %i.fr, i64 0
  %i.ga = fadd reassoc nsz arcp contract afn float %i.ft, %i.et
  %i.gb = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.gc = fadd reassoc nsz arcp contract afn float %i.gb, %i.fy
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fw, 4.000000e+00
  %i.ge = fmul reassoc nsz arcp contract afn float %i.fs, 6.000000e+00
  %i.gf = fmul reassoc nsz arcp contract afn float %i.gb, 6.000000e+00
  %i.gg = fadd reassoc nsz arcp contract afn float %i.ge, %i.fz
  %i.gh = fadd reassoc nsz arcp contract afn float %i.ga, %i.gf
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gg, %i.gc
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gh, %i.gd
  %i.gk = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.gi, i64 1
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, splat (float 3.906250e-03)
  store <2 x float> %i.gm, ptr %i.fu, align 4, !tbaa !20
  %i.gn = add i64 %.050105, 2                     ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.g
  br i1 %i.go, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.gp = getelementptr inbounds nuw i8, ptr %.051.lcssa, i64 16 ; 5 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !20
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %2
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !20
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx41.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !20
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx42.i
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !20
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gu, %i.gs
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, 4.000000e+00
  %i.hb = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float %i.gw, i64 1
  %i.hd = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.he = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %i.he, <float 4.000000e+00, float 6.000000e+00, float 6.000000e+00, float 4.000000e+00>
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.ha, <4 x float> %i.hf)
  %op.rdx131 = fadd reassoc nsz arcp contract afn float %i.gy, %i.gq
  %op.rdx132 = fadd reassoc nsz arcp contract afn float %op.rdx, %op.rdx131
  %i.hg = extractelement <2 x float> %i.em, i64 0
  %op.rdx133 = fadd reassoc nsz arcp contract afn float %op.rdx132, %i.hg
  %i.hh = fmul reassoc nsz arcp contract afn float %op.rdx133, 3.906250e-03
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.g
  store float %i.hh, ptr %i.hi, align 4, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.hj = add nuw nsw i64 %.052108, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.hj, %i.e
  br i1 %exitcond.not, label %._crit_edge111, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #8

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @ll_laplacian(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %4, -1
  %i.c = and i32 %i.b, -2
  %i.d = add nsw i32 %i.c, -1
  %. = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %., %bb.b ]      ; 2 uses
  %i.f = icmp sgt i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %5, -1
  %i.h = and i32 %i.g, -2
  %i.i = add nsw i32 %i.h, -1
  %.20 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.i)
  br label %bb.e
end_hunk_0
begin_hunk_1_@ll_laplacian:bb.a
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 %i.q, %i.m
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !20
  %i.z = sext i32 %i.q to i64
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.y
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !20
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, 6.000000e+00
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ad, %i.af
  %i.ah = getelementptr i8, ptr %i.aa, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ag, %i.ai
  %i.ak = add nsw i32 %i.q, %i.m
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !20
  %i.ao = fadd reassoc nsz arcp contract afn float %i.aj, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 6.000000e+00
  %i.aq = getelementptr i8, ptr %i.x, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.x, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !20
  %i.av = add i32 %i.q, %i.l
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !20
  %i.az = getelementptr i8, ptr %i.am, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ay, %i.au
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.as
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 1.562500e-02
  br label %ll_expand_gaussian.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = sext i32 %i.q to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bh
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.bm = fmul reassoc nsz arcp contract afn double %i.bl, 2.400000e+01
  %i.bn = sub nsw i32 %i.q, %i.m
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !20
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !20
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = add nsw i32 %i.q, %i.m
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !20
  %i.by = fadd reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !20
  %i.cb = fadd reassoc nsz arcp contract afn float %i.by, %i.ca
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, 4.000000e+00
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, %i.bm
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, 1.562500e-02
  %i.cg = fptrunc reassoc nsz arcp contract afn double %i.cf to float
  br label %ll_expand_gaussian.exit

bb.h:                                             ; preds = %bb.e
  %i.ch = sext i32 %i.q to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cj = add nsw i32 %i.q, %i.m
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ci, i64 -4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !20
  %i.co = add i32 %i.q, %i.l
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = load <2 x float>, ptr %i.ci, align 4, !tbaa !20
  %i.ct = load <2 x float>, ptr %i.cl, align 4, !tbaa !20
  %i.cu = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cr, i64 1
  %i.cv = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cn, i64 1
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cs
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cx
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul reassoc nsz arcp contract afn double %i.da, 2.400000e+01
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, 4.000000e+00
  %i.de = fadd reassoc nsz arcp contract afn double %i.dd, %i.db
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 1.562500e-02
  %i.dg = fptrunc reassoc nsz arcp contract afn double %i.df to float
  br label %ll_expand_gaussian.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.dh = sext i32 %i.q to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20
  %i.dk = getelementptr i8, ptr %i.di, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !20
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj
  %i.dn = add nsw i32 %i.q, %i.m
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.do ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !20
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dm, %i.dq
  %i.ds = getelementptr i8, ptr %i.dp, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !20
  %i.du = fadd reassoc nsz arcp contract afn float %i.dr, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 2.500000e-01
  br label %ll_expand_gaussian.exit

ll_expand_gaussian.exit:                          ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi nsz float [ %i.be, %bb.f ], [ %i.cg, %bb.g ], [ %i.dg, %bb.h ], [ %i.dv, %bb.i ]
  %i.dw = mul nsw i32 %4, %3
  %i.dx = add nsw i32 %i.dw, %2
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !20
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %.0.i
  ret float %i.eb
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @local_laplacian_memory_use(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = xor i32 %i.b, 31
  %spec.select = select i1 %i.c, i32 30, i32 %i.d ; 3 uses
  %i.e = shl nuw i32 1, %spec.select              ; 2 uses
  %i.f = add nsw i32 %i.e, %0                     ; 2 uses
  %i.g = add nsw i32 %i.e, %1                     ; 2 uses
  %.not36 = icmp eq i32 %spec.select, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %dl.exit31, %bb.a
  %.022.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %dl.exit31 ]
  ret i64 %.022.lcssa

bb.b:                                             ; preds = %.lr.ph, %dl.exit31
  %.035 = phi i32 [ 0, %.lr.ph ], [ %i.v, %dl.exit31 ] ; 8 uses
  %.02234 = phi i64 [ 0, %.lr.ph ], [ %i.u, %dl.exit31 ]
  %.not = icmp eq i32 %.035, 0
  br i1 %.not, label %dl.exit31, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %.035, 7                    ; 3 uses
  %i.j = icmp samesign ult i32 %.035, 8
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.035, 2147483640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.056.i = phi i32 [ %i.h, %.lr.ph.i.preheader.new ], [ %i.k, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.k = sdiv i32 %.056.i, 256                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i26.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i26.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i26.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.056.i.epil.init = phi i32 [ %i.h, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ]
  %lcmp.mod46 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.l, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.l = sdiv i32 %.056.i.epil, 2                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil, !llvm.loop !227

.lr.ph.i26.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph.i26.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ], [ %i.l, %.lr.ph.i.epil ]
  %xtraiter47 = and i32 %.035, 7                  ; 3 uses
  %i.m = icmp samesign ult i32 %.035, 8
  br i1 %i.m, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26.preheader.new

.lr.ph.i26.preheader.new:                         ; preds = %.lr.ph.i26.preheader
  %unroll_iter52 = and i32 %.035, 2147483640
  br label %.lr.ph.i26

._crit_edge.loopexit.i30.unr-lcssa:               ; preds = %.lr.ph.i26
  %lcmp.mod49.not = icmp eq i32 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %._crit_edge.loopexit.i30.unr-lcssa, %.lr.ph.i26.preheader
  %.056.i28.epil.init = phi i32 [ %i.i, %.lr.ph.i26.preheader ], [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ]
  %lcmp.mod51 = icmp ne i32 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i26.epil

.lr.ph.i26.epil:                                  ; preds = %.lr.ph.i26.epil, %.lr.ph.i26.epil.preheader
  %.056.i28.epil = phi i32 [ %i.n, %.lr.ph.i26.epil ], [ %.056.i28.epil.init, %.lr.ph.i26.epil.preheader ]
  %epil.iter48 = phi i32 [ %epil.iter48.next, %.lr.ph.i26.epil ], [ 0, %.lr.ph.i26.epil.preheader ]
  %i.n = sdiv i32 %.056.i28.epil, 2               ; 2 uses
  %epil.iter48.next = add i32 %epil.iter48, 1     ; 2 uses
  %epil.iter48.cmp.not = icmp eq i32 %epil.iter48.next, %xtraiter47
  br i1 %epil.iter48.cmp.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil, !llvm.loop !228

._crit_edge.loopexit.i30:                         ; preds = %.lr.ph.i26.epil, %._crit_edge.loopexit.i30.unr-lcssa
  %.lcssa43 = phi i32 [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ], [ %i.n, %.lr.ph.i26.epil ]
  %i.o = add nsw i32 %.lcssa, 1
  %i.p = add nsw i32 %.lcssa43, 1
  br label %dl.exit31

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader.new
  %.056.i28 = phi i32 [ %i.i, %.lr.ph.i26.preheader.new ], [ %i.q, %.lr.ph.i26 ]
  %niter53 = phi i32 [ 0, %.lr.ph.i26.preheader.new ], [ %niter53.next.7, %.lr.ph.i26 ]
  %i.q = sdiv i32 %.056.i28, 256                  ; 3 uses
  %niter53.next.7 = add i32 %niter53, 8           ; 2 uses
  %niter53.ncmp.7 = icmp eq i32 %niter53.next.7, %unroll_iter52
  br i1 %niter53.ncmp.7, label %._crit_edge.loopexit.i30.unr-lcssa, label %.lr.ph.i26

dl.exit31:                                        ; preds = %bb.b, %._crit_edge.loopexit.i30
  %.in.in = phi i32 [ %i.o, %._crit_edge.loopexit.i30 ], [ %i.f, %bb.b ]
  %.05.lcssa.i24 = phi i32 [ %i.p, %._crit_edge.loopexit.i30 ], [ %i.g, %bb.b ]
  %.in = sext i32 %.in.in to i64
  %i.r = shl nsw i64 %.in, 5
  %i.s = sext i32 %.05.lcssa.i24 to i64
  %i.t = mul i64 %i.r, %i.s
  %i.u = add i64 %i.t, %.02234                    ; 2 uses
  %i.v = add nuw nsw i32 %.035, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @local_laplacian_singlebuffer_size(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = sub nsw i32 30, %i.b
  %i.e = shl nuw nsw i32 2, %i.d
  %i.f = select i1 %i.c, i32 1073741824, i32 %i.e ; 2 uses
  %i.g = add nsw i32 %i.f, %0
  %i.h = add nsw i32 %i.f, %1
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = sext i32 %i.h to i64
  %i.l = mul i64 %i.j, %i.k
  ret i64 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #8

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 8}
!12 = !{!"local_laplacian_boundary_t", !8, i64 0, !13, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !15, i64 32, !15, i64 40, !9, i64 48, !8, i64 288}
!13 = !{!"p1 float", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS12dt_iop_roi_t", !14, i64 0}
!16 = !{!12, !8, i64 288}
!17 = !{!13, !13, i64 0}
!18 = !{!12, !8, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !9, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !28, !29}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !28, !29}
!39 = !{!"branch_weights", i32 4, i32 28}
!40 = distinct !{!40, !32}
!41 = distinct !{!41, !28, !29}
!42 = distinct !{!42, !28}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !28, !29}
!49 = distinct !{!49, !28, !29}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !32}
!54 = distinct !{!54, !32}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !28, !29}
!59 = distinct !{!59, !32}
!60 = distinct !{!60, !28, !29}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !32}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !32}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !28, !29}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !28, !29}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !32}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = !{!12, !15, i64 32}
!85 = !{!86, !21, i64 16}
!86 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !21, i64 16}
!87 = !{!12, !15, i64 40}
!88 = !{!86, !8, i64 8}
!89 = !{!12, !8, i64 16}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = !{!12, !8, i64 24}
!93 = !{!12, !8, i64 28}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32}
!98 = !{!99, !126, i64 3096}
!99 = !{!"darktable_t", !100, i64 0, !8, i64 4, !8, i64 8, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40, !102, i64 48, !103, i64 56, !104, i64 64, !105, i64 72, !106, i64 80, !107, i64 88, !108, i64 96, !109, i64 104, !110, i64 112, !111, i64 120, !112, i64 128, !113, i64 136, !114, i64 144, !115, i64 152, !116, i64 160, !117, i64 168, !118, i64 176, !119, i64 184, !120, i64 192, !121, i64 200, !122, i64 208, !123, i64 216, !124, i64 224, !9, i64 232, !125, i64 2792, !125, i64 2832, !125, i64 2872, !125, i64 2912, !125, i64 2952, !125, i64 2992, !126, i64 3032, !126, i64 3040, !126, i64 3048, !126, i64 3056, !126, i64 3064, !126, i64 3072, !126, i64 3080, !126, i64 3088, !126, i64 3096, !126, i64 3104, !126, i64 3112, !126, i64 3120, !126, i64 3128, !127, i64 3136, !101, i64 3288, !134, i64 3296, !101, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !135, i64 3520, !136, i64 3528, !137, i64 3536, !140, i64 3576, !141, i64 3600, !142, i64 3632, !8, i64 3672}
!100 = !{!"dt_codepath_t", !8, i64 0}
!101 = !{!"p1 _ZTS6_GList", !14, i64 0}
!102 = !{!"p1 _ZTS11_JsonParser", !14, i64 0}
!103 = !{!"p1 _ZTS9dt_conf_t", !14, i64 0}
!104 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!105 = !{!"p1 _ZTS8dt_lib_t", !14, i64 0}
!106 = !{!"p1 _ZTS17dt_view_manager_t", !14, i64 0}
!107 = !{!"p1 _ZTS12dt_control_t", !14, i64 0}
!108 = !{!"p1 _ZTS19dt_control_signal_t", !14, i64 0}
!109 = !{!"p1 _ZTS12dt_gui_gtk_t", !14, i64 0}
!110 = !{!"p1 _ZTS17dt_mipmap_cache_t", !14, i64 0}
!111 = !{!"p1 _ZTS16dt_image_cache_t", !14, i64 0}
!112 = !{!"p1 _ZTS12dt_bauhaus_t", !14, i64 0}
!113 = !{!"p1 _ZTS13dt_database_t", !14, i64 0}
!114 = !{!"p1 _ZTS14dt_pwstorage_t", !14, i64 0}
!115 = !{!"p1 _ZTS11dt_camctl_t", !14, i64 0}
!116 = !{!"p1 _ZTS15dt_collection_t", !14, i64 0}
!117 = !{!"p1 _ZTS14dt_selection_t", !14, i64 0}
!118 = !{!"p1 _ZTS11dt_points_t", !14, i64 0}
!119 = !{!"p1 _ZTS12dt_imageio_t", !14, i64 0}
!120 = !{!"p1 _ZTS11dt_opencl_t", !14, i64 0}
!121 = !{!"p1 _ZTS9dt_dbus_t", !14, i64 0}
!122 = !{!"p1 _ZTS9dt_undo_t", !14, i64 0}
!123 = !{!"p1 _ZTS16dt_colorspaces_t", !14, i64 0}
!124 = !{!"p1 _ZTS9dt_l10n_t", !14, i64 0}
!125 = !{!"dt_pthread_mutex_t", !9, i64 0}
!126 = !{!"p1 omnipotent char", !14, i64 0}
!127 = !{!"", !128, i64 0, !125, i64 8, !9, i64 48, !129, i64 96, !129, i64 97, !130, i64 104, !131, i64 112, !132, i64 120, !133, i64 128, !133, i64 136, !133, i64 144}
!128 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!129 = !{!"_Bool", !9, i64 0}
!130 = !{!"p1 _ZTS10_GMainLoop", !14, i64 0}
!131 = !{!"p1 _ZTS13_GMainContext", !14, i64 0}
!132 = !{!"p1 _ZTS12_GThreadPool", !14, i64 0}
!133 = !{!"p1 _ZTS12_GAsyncQueue", !14, i64 0}
!134 = !{!"double", !9, i64 0}
!135 = !{!"p1 _ZTS10_GTimeZone", !14, i64 0}
!136 = !{!"p1 _ZTS10_GDateTime", !14, i64 0}
!137 = !{!"dt_sys_resources_t", !138, i64 0, !138, i64 8, !139, i64 16, !139, i64 24, !8, i64 32}
!138 = !{!"long", !9, i64 0}
!139 = !{!"p1 int", !14, i64 0}
!140 = !{!"dt_backthumb_t", !134, i64 0, !134, i64 8, !8, i64 16, !8, i64 20}
!141 = !{!"dt_gimp_t", !8, i64 0, !126, i64 8, !126, i64 16, !8, i64 24, !8, i64 28}
!142 = !{!"dt_splash_t", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !8, i64 32}
!143 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !32}
!146 = distinct !{!146, !28, !29}
!147 = !{!"branch_weights", i32 8, i32 24}
!148 = distinct !{!148, !28, !29}
!149 = distinct !{!149, !32}
!150 = distinct !{!150, !28}
!151 = distinct !{!151, !32}
!152 = distinct !{!152, !32}
!153 = !{!154}
!154 = distinct !{!154, !155}
!155 = distinct !{!155, !"LVerDomain"}
!156 = !{!157}
!157 = distinct !{!157, !155}
!158 = !{!154, !159}
!159 = distinct !{!159, !155}
!160 = !{!159}
!161 = distinct !{!161, !28, !29}
!162 = distinct !{!162, !28}
!163 = !{!12, !8, i64 20}
!164 = distinct !{!164, !165}
!165 = !{!"llvm.loop.peeled.count", i32 1}
!166 = distinct !{!166, !28, !29}
!167 = distinct !{!167, !28}
!168 = distinct !{!168, !29, !28}
!169 = distinct !{!169, !29, !28}
!170 = distinct !{!170, !28, !29}
!171 = distinct !{!171, !28, !29}
!172 = distinct !{!172, !28, !29}
!173 = distinct !{!173, !28, !29}
!174 = distinct !{!174, !28, !29}
!175 = distinct !{!175, !28, !29}
!176 = distinct !{!176, !29, !28}
!177 = distinct !{!177, !29, !28}
!178 = distinct !{!178, !28, !29}
!179 = distinct !{!179, !28, !29}
!180 = distinct !{!180, !28, !29}
!181 = distinct !{!181, !32}
!182 = distinct !{!182, !28, !29}
!183 = distinct !{!183, !28, !29}
!184 = distinct !{!184, !29, !28}
!185 = !{!186}
!186 = distinct !{!186, !187}
!187 = distinct !{!187, !"LVerDomain"}
!188 = !{!189}
!189 = distinct !{!189, !187}
!190 = distinct !{!190, !28, !29}
!191 = distinct !{!191, !32}
!192 = distinct !{!192, !28, !29}
!193 = !{!86, !8, i64 0}
!194 = !{!86, !8, i64 4}
!195 = distinct !{!195, !28}
!196 = !{!86, !8, i64 12}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !28, !29}
!203 = distinct !{!203, !28, !29}
!204 = distinct !{!204, !32}
!205 = !{!206}
!206 = distinct !{!206, !207}
!207 = distinct !{!207, !"LVerDomain"}
!208 = !{!209}
!209 = distinct !{!209, !207}
!210 = distinct !{!210, !28, !29}
!211 = distinct !{!211, !32}
!212 = distinct !{!212, !28, !29}
!213 = distinct !{!213, !28}
!214 = !{!215}
!215 = distinct !{!215, !216}
!216 = distinct !{!216, !"LVerDomain"}
!217 = !{!218}
!218 = distinct !{!218, !216}
!219 = distinct !{!219, !28, !29}
!220 = distinct !{!220, !28, !29}
!221 = distinct !{!221, !32}
!222 = distinct !{!222, !28}
!223 = distinct !{!223, !28}
!224 = distinct !{!224, !32}
!225 = distinct !{!225, !32}
!226 = distinct !{!226, !32}
!227 = distinct !{!227, !32}
!228 = distinct !{!228, !32}
end_hunk_1
