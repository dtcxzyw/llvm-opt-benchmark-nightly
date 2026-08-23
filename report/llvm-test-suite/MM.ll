Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MM?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @MakeMatrix(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @newMatrix()               ; 3 uses
  %i.b = sext i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv27 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next28, %bb.d ] ; 5 uses
  %i.e = sub nuw nsw i64 %indvars.iv27, %indvars.iv
  %i.f = icmp sgt i64 %i.e, %i.b
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i64 %indvars.iv, %indvars.iv27
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = sitofp i32 %i.h to double                ; 2 uses
  %i.j = fmul nnan double %i.i, -3.200000e-01
  %i.k = fmul double %i.j, %i.i
  %i.l = tail call double @exp(double noundef %i.k) #11, !tbaa !4
  %i.m = fmul double %i.l, f0x3FD46D04297691DB
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink34 = phi double [ %i.m, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv27
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double %.sink34, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv27
  store double %.sink34, ptr %i.q, align 8, !tbaa !11
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next28, 51
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !13

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond31.not = icmp eq i64 %indvars.iv.next, 51
  br i1 %exitcond31.not, label %bb.f, label %.preheader, !llvm.loop !15

bb.f:                                             ; preds = %bb.e
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @newMatrix() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12 ; 52 uses
  %i.b = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !8
  %i.e = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !8
  %i.g = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !8
  %i.i = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !8
  %i.k = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !8
  %i.m = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !8
  %i.o = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !8
  %i.q = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.q, ptr %i.r, align 8, !tbaa !8
  %i.s = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.s, ptr %i.t, align 8, !tbaa !8
  %i.u = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.u, ptr %i.v, align 8, !tbaa !8
  %i.w = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.w, ptr %i.x, align 8, !tbaa !8
  %i.y = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.y, ptr %i.z, align 8, !tbaa !8
  %i.aa = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !8
  %i.ac = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !8
  %i.ae = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !8
  %i.ag = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !8
  %i.ai = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !8
  %i.ak = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !8
  %i.am = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.am, ptr %i.an, align 8, !tbaa !8
  %i.ao = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !8
  %i.as = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.as, ptr %i.at, align 8, !tbaa !8
  %i.au = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.au, ptr %i.av, align 8, !tbaa !8
  %i.aw = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !8
  %i.ba = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !8
  %i.bc = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !8
  %i.be = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !8
  %i.bg = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !8
  %i.bi = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !8
  %i.bk = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !8
  %i.bm = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !8
  %i.bo = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !8
  %i.bq = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !8
  %i.bs = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !8
  %i.bu = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !8
  %i.bw = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !8
  %i.by = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !8
  %i.ca = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !8
  %i.cc = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !8
  %i.ce = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !8
  %i.cg = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !8
  %i.ci = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !8
  %i.ck = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !8
  %i.cm = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !8
  %i.co = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !8
  %i.cq = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !8
  %i.cs = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !8
  %i.cu = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !8
  %i.cw = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !8
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @newVector() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(408) ptr @malloc(i64 noundef 408) #12
  ret ptr %i.a
}

end_hunk_0
