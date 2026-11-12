Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsopt?download=true
inline.NumInlined: 36
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@MatShaperEval16:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 3100
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !18
  %i.as = mul nsw i32 %i.ar, %i.t
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 3120
  %i.au = load i32, ptr %i.at, align 8, !tbaa !18
  %i.av = add i32 %i.am, 8192
  %i.aw = add i32 %i.av, %i.ap
  %i.ax = add i32 %i.aw, %i.as
  %i.ay = add i32 %i.ax, %i.au
  %i.az = ashr i32 %i.ay, 14
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 3104
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !18
  %i.bc = mul nsw i32 %i.bb, %i.l
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 3108
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = mul nsw i32 %i.be, %i.p
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 3112
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !18
  %i.bi = mul nsw i32 %i.bh, %i.t
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 3124
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bl = add i32 %i.bc, 8192
  %i.bm = add i32 %i.bl, %i.bf
  %i.bn = add i32 %i.bm, %i.bi
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = ashr i32 %i.bo, 14
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 16384)
  %i.bs = tail call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 16384)
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 16384)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 3128
  %i.bx = zext nneg i32 %i.br to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !45
  store i16 %i.bz, ptr %1, align 2, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 35898
  %i.cb = zext nneg i32 %i.bt to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !45
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 68668
  %i.cg = zext nneg i32 %i.bv to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !45
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FreeMatShaper(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @DupMatShaper(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @_cmsDupMem(ptr noundef %0, ptr noundef %1, i32 noundef 101440) #9
  ret ptr %i.a
}

declare float @cmsEvalToneCurveFloat(ptr noundef, float noundef) local_unnamed_addr #1

declare i32 @cmsIsToneCurveMonotonic(ptr noundef) local_unnamed_addr #1

declare ptr @cmsReverseToneCurveEx(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsPipelineDup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PrelinOpt8alloc(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 4624) #9 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2576
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3600
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 9 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !tbaa !50
  %i.r = trunc i64 %indvars.iv to i16
  %i.s = mul i16 %i.r, 257                        ; 3 uses
  %i.t = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.q, i16 noundef zeroext %i.s) #9
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.v = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.u, i16 noundef zeroext %i.s) #9
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.x = tail call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.w, i16 noundef zeroext %i.s) #9
  %i.y = zext i16 %i.t to i32
  %i.z = zext i16 %i.v to i32
  %i.aa = zext i16 %i.x to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = trunc i64 %indvars.iv to i32
  %i.ac = mul i32 %i.ab, 257                      ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.8.0 = phi i32 [ %i.aa, %bb.c ], [ %i.ac, %bb.d ]
  %.sroa.5.0 = phi i32 [ %i.z, %bb.c ], [ %i.ac, %bb.d ]
  %.sroa.0.0 = phi i32 [ %i.y, %bb.c ], [ %i.ac, %bb.d ]
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !18
  %i.ae = mul i32 %i.ad, %.sroa.0.0               ; 2 uses
  %i.af = add nsw i32 %i.ae, 32767
  %i.ag = sdiv i32 %i.af, 65535
  %i.ah = add nsw i32 %i.ag, %i.ae                ; 2 uses
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !18
  %i.aj = mul i32 %i.ai, %.sroa.5.0               ; 2 uses
  %i.ak = add nsw i32 %i.aj, 32767
  %i.al = sdiv i32 %i.ak, 65535
  %i.am = add nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = load i32, ptr %i.g, align 8, !tbaa !18
  %i.ao = mul i32 %i.an, %.sroa.8.0               ; 2 uses
  %i.ap = add nsw i32 %i.ao, 32767
  %i.aq = sdiv i32 %i.ap, 65535
  %i.ar = add nsw i32 %i.aq, %i.ao                ; 2 uses
  %i.as = load i32, ptr %i.i, align 4, !tbaa !18
  %i.at = ashr i32 %i.ah, 16
  %i.au = mul i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.au, ptr %i.av, align 4, !tbaa !18
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !18
  %i.ax = ashr i32 %i.am, 16
  %i.ay = mul i32 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !18
  %i.ba = load i32, ptr %i.h, align 4, !tbaa !18
  %i.bb = ashr i32 %i.ar, 16
  %i.bc = mul i32 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !18
  %i.be = trunc i32 %i.ah to i16
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !45
  %i.bg = trunc i32 %i.am to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !45
  %i.bi = trunc i32 %i.ar to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !160

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.a, align 8, !tbaa !161
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.bk, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @PrelinEval8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !174  ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 22 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 5 uses
  %i.i = load i16, ptr %0, align 2, !tbaa !45
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %3 = load i16, ptr %i.l, align 2, !tbaa !45
  %4 = lshr i16 %3, 8
  %5 = zext nneg i16 %4 to i64                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i16, ptr %i.m, align 2, !tbaa !45
  %7 = lshr i16 %6, 8
  %8 = zext nneg i16 %7 to i64                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.k
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2576
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %5
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 3600
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.k
  %i.y = load i16, ptr %i.x, align 2, !tbaa !45   ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %5
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !45 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %8
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !45 ; 7 uses
  %i.af = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.y, i64 0
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.ab, i64 1
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ae, i64 2
  %i.ai = zext <4 x i16> %i.ah to <4 x i32>       ; 16 uses
  %i.aj = zext i16 %i.ae to i32                   ; 5 uses
  %i.ak = zext i16 %i.ab to i32                   ; 5 uses
  %i.al = zext i16 %i.y to i32                    ; 5 uses
  %i.am = icmp eq i16 %i.y, 0
  br i1 %i.am, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ap = phi i32 [ %i.ao, %bb.b ], [ 0, %bb.a ]
  %i.aq = add i32 %i.ap, %i.p                     ; 3 uses
  %i.ar = icmp eq i16 %i.ab, 0
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = phi i32 [ %i.at, %bb.d ], [ 0, %bb.c ]
  %i.av = add i32 %i.au, %i.s                     ; 3 uses
  %i.aw = icmp eq i16 %i.ae, 0
  br i1 %i.aw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.az = phi i32 [ %i.ay, %bb.f ], [ 0, %bb.e ]
  %i.ba = icmp sgt i32 %i.e, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.bb = add i32 %i.az, %i.v                     ; 4 uses
  %i.bc = add i32 %i.s, %i.p                      ; 2 uses
  %i.bd = add i32 %i.bc, %i.v                     ; 2 uses
  %.not = icmp ult i16 %i.y, %i.ab                ; 2 uses
  %.not231 = icmp ult i16 %i.ab, %i.ae            ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.not231
  %i.be = add i32 %i.av, %i.aq                    ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.v                 ; 2 uses
  %i.bg = add i32 %i.bb, %i.be                    ; 5 uses
  %.not232 = icmp ult i16 %i.y, %i.ae             ; 2 uses
  %.not233 = icmp ult i16 %i.ae, %i.ab            ; 2 uses
  %i.bh = add nsw i32 %i.aq, %i.s                 ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.v
  %i.bj = add nsw i32 %i.bb, %i.bh                ; 2 uses
  %.not234 = icmp ult i16 %i.ae, %i.y             ; 2 uses
  %brmerge = or i1 %.not, %.not234
  %i.bk = add nsw i32 %i.bb, %i.bc                ; 2 uses
  %.not235 = icmp ult i16 %i.ab, %i.y             ; 2 uses
  %brmerge239 = or i1 %.not235, %.not232
  %i.bl = add i32 %i.v, %i.p
  %i.bm = add i32 %i.bl, %i.av
  %brmerge240 = or i1 %.not231, %.not234
  %i.bn = add i32 %i.av, %i.p                     ; 2 uses
  %i.bo = add i32 %i.bb, %i.bn
  %i.bp = add nsw i32 %i.bn, %i.v
  %brmerge241 = or i1 %.not235, %.not233
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bq = add i32 %i.v, %i.s
  %i.br = add i32 %i.bq, %i.aq
  %i.bs = sext i32 %i.bd to i64                   ; 2 uses
  %i.bt = sext i32 %i.br to i64                   ; 2 uses
  %i.bu = sext i32 %i.bf to i64                   ; 2 uses
  %i.bv = sext i32 %i.bg to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.g, i64 %i.bs ; 2 uses
  %invariant.gep279 = getelementptr [2 x i8], ptr %i.g, i64 %i.bt ; 2 uses
  %invariant.gep281 = getelementptr [2 x i8], ptr %i.g, i64 %i.bu ; 2 uses
  %invariant.gep283 = getelementptr [2 x i8], ptr %i.g, i64 %i.bv ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 16
  br i1 %min.iters.check, label %.lr.ph.split.preheader499, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.bw = shl nsw i64 %i.bv, 1
  %i.bx = sub i64 %i.a, %i.h                      ; 4 uses
  %i.by = sub i64 %i.bw, %i.bx
  %diff.check = icmp ugt i64 %i.by, -16
  %i.bz = shl nsw i64 %i.bu, 1
  %i.ca = sub i64 %i.bz, %i.bx
  %diff.check335 = icmp ugt i64 %i.ca, -16
  %conflict.rdx = or i1 %diff.check, %diff.check335
  %i.cb = shl nsw i64 %i.bt, 1
  %i.cc = sub i64 %i.cb, %i.bx
  %diff.check336 = icmp ugt i64 %i.cc, -16
  %conflict.rdx337 = or i1 %conflict.rdx, %diff.check336
  %i.cd = shl nsw i64 %i.bs, 1
  %i.ce = sub i64 %i.cd, %i.bx
  %diff.check338 = icmp ugt i64 %i.ce, -16
  %conflict.rdx339 = or i1 %conflict.rdx337, %diff.check338
  br i1 %conflict.rdx339, label %.lr.ph.split.preheader499, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat341 = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat343 = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cf = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cf, align 2, !tbaa !45 ; 2 uses
  %i.cg = zext <8 x i16> %wide.load to <8 x i32>
  %i.ch = getelementptr [2 x i8], ptr %invariant.gep279, i64 %index
  %wide.load344 = load <8 x i16>, ptr %i.ch, align 2, !tbaa !45
  %i.ci = zext <8 x i16> %wide.load344 to <8 x i32> ; 2 uses
  %i.cj = sub nsw <8 x i32> %i.ci, %i.cg
  %i.ck = getelementptr [2 x i8], ptr %invariant.gep281, i64 %index
  %wide.load345 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !45
  %i.cl = zext <8 x i16> %wide.load345 to <8 x i32> ; 2 uses
  %i.cm = sub nsw <8 x i32> %i.cl, %i.ci
  %i.cn = getelementptr [2 x i8], ptr %invariant.gep283, i64 %index
  %wide.load346 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !45
  %i.co = zext <8 x i16> %wide.load346 to <8 x i32>
  %i.cp = sub nsw <8 x i32> %i.co, %i.cl
  %i.cq = mul nsw <8 x i32> %i.cj, %broadcast.splat
  %i.cr = mul nsw <8 x i32> %i.cm, %broadcast.splat341
  %i.cs = mul nsw <8 x i32> %i.cp, %broadcast.splat343
  %i.ct = add <8 x i32> %i.cq, splat (i32 32769)
  %i.cu = add <8 x i32> %i.ct, %i.cr
  %i.cv = add <8 x i32> %i.cu, %i.cs              ; 2 uses
  %i.cw = ashr <8 x i32> %i.cv, splat (i32 16)
  %i.cx = add nsw <8 x i32> %i.cw, %i.cv
  %i.cy = lshr <8 x i32> %i.cx, splat (i32 16)
  %i.cz = trunc nuw <8 x i32> %i.cy to <8 x i16>
  %i.da = add <8 x i16> %wide.load, %i.cz
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.da, ptr %i.db, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader499

.lr.ph.split.preheader499:                        ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %or.cond238 = select i1 %.not232, i1 true, i1 %.not233
  %i.dd = sext i32 %i.bd to i64                   ; 8 uses
  br i1 %or.cond238, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.de = sext i32 %i.bi to i64                   ; 2 uses
  %i.df = sext i32 %i.bg to i64                   ; 2 uses
  %i.dg = sext i32 %i.bj to i64                   ; 2 uses
  %wide.trip.count252 = zext nneg i32 %i.e to i64 ; 3 uses
  %invariant.gep285 = getelementptr [2 x i8], ptr %i.g, i64 %i.dd ; 2 uses
  %invariant.gep287 = getelementptr [2 x i8], ptr %i.g, i64 %i.de ; 2 uses
  %invariant.gep289 = getelementptr [2 x i8], ptr %i.g, i64 %i.df ; 2 uses
  %invariant.gep291 = getelementptr [2 x i8], ptr %i.g, i64 %i.dg ; 2 uses
  %min.iters.check356 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check356, label %.lr.ph.split.us.split.preheader497, label %vector.memcheck357

vector.memcheck357:                               ; preds = %.lr.ph.split.us.split.preheader
  %i.dh = shl nsw i64 %i.dg, 1
  %i.di = sub i64 %i.a, %i.h                      ; 4 uses
  %i.dj = sub i64 %i.dh, %i.di
  %diff.check358 = icmp ugt i64 %i.dj, -16
  %i.dk = shl nsw i64 %i.df, 1
  %i.dl = sub i64 %i.dk, %i.di
  %diff.check359 = icmp ugt i64 %i.dl, -16
  %conflict.rdx360 = or i1 %diff.check358, %diff.check359
  %i.dm = shl nsw i64 %i.de, 1
  %i.dn = sub i64 %i.dm, %i.di
  %diff.check361 = icmp ugt i64 %i.dn, -16
  %conflict.rdx362 = or i1 %conflict.rdx360, %diff.check361
  %i.do = shl nsw i64 %i.dd, 1
  %i.dp = sub i64 %i.do, %i.di
  %diff.check363 = icmp ugt i64 %i.dp, -16
  %conflict.rdx364 = or i1 %conflict.rdx362, %diff.check363
  br i1 %conflict.rdx364, label %.lr.ph.split.us.split.preheader497, label %vector.ph365

vector.ph365:                                     ; preds = %vector.memcheck357
  %n.vec366 = and i64 %wide.trip.count252, 2147483640 ; 3 uses
  %broadcast.splat368 = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat370 = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat372 = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph365
  %index374 = phi i64 [ 0, %vector.ph365 ], [ %index.next379, %vector.body373 ] ; 6 uses
end_hunk_0
