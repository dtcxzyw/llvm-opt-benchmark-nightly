Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsopt?download=true
inline.NumInlined: 36
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@MatShaperEval16:bb.a
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
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !161

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.a, align 8, !tbaa !162
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.bk, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @PrelinEval8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !175  ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 22 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 10 uses
  %i.i = load i16, ptr %0, align 2, !tbaa !45
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !45
  %i.n = lshr i16 %i.m, 8
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !45
  %i.r = lshr i16 %i.q, 8
  %i.s = zext nneg i16 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.k
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2576
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.o
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 3600
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.s
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.k
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !45 ; 6 uses
  %3 = zext i16 %i.ae to i32                      ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.o
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !45 ; 6 uses
  %4 = zext i16 %i.ah to i32                      ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.s
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !45 ; 6 uses
  %i.al = zext i16 %i.ak to i32                   ; 11 uses
  %i.am = icmp eq i16 %i.ae, 0
  br i1 %i.am, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ap = phi i32 [ %i.ao, %bb.b ], [ 0, %bb.a ]
  %i.aq = add i32 %i.ap, %i.v                     ; 3 uses
  %i.ar = icmp eq i16 %i.ah, 0
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = phi i32 [ %i.at, %bb.d ], [ 0, %bb.c ]
  %i.av = add i32 %i.au, %i.y                     ; 3 uses
  %i.aw = icmp eq i16 %i.ak, 0
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
  %i.bb = add i32 %i.az, %i.ab                    ; 4 uses
  %i.bc = add i32 %i.y, %i.v                      ; 2 uses
  %i.bd = add i32 %i.bc, %i.ab                    ; 2 uses
  %.not = icmp ult i16 %i.ae, %i.ah               ; 2 uses
  %.not231 = icmp ult i16 %i.ah, %i.ak            ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.not231
  %i.be = add i32 %i.av, %i.aq                    ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.ab                ; 2 uses
  %i.bg = add i32 %i.bb, %i.be                    ; 5 uses
  %.not232 = icmp ult i16 %i.ae, %i.ak            ; 2 uses
  %.not233 = icmp ult i16 %i.ak, %i.ah            ; 2 uses
  %i.bh = add nsw i32 %i.aq, %i.y                 ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.ab
  %i.bj = add nsw i32 %i.bb, %i.bh                ; 2 uses
  %.not234 = icmp ult i16 %i.ak, %i.ae            ; 2 uses
  %brmerge = or i1 %.not, %.not234
  %i.bk = add nsw i32 %i.bb, %i.bc                ; 2 uses
  %.not235 = icmp ult i16 %i.ah, %i.ae            ; 2 uses
  %brmerge239 = or i1 %.not235, %.not232
  %i.bl = add i32 %i.ab, %i.v
  %i.bm = add i32 %i.bl, %i.av
  %brmerge240 = or i1 %.not231, %.not234
  %i.bn = add i32 %i.av, %i.v                     ; 2 uses
  %i.bo = add i32 %i.bb, %i.bn
  %i.bp = add nsw i32 %i.bn, %i.ab
  %brmerge241 = or i1 %.not235, %.not233
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bq = add i32 %i.ab, %i.y
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
  br i1 %min.iters.check, label %.lr.ph.split.preheader462, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.bw = sub i64 %i.a, %i.h                      ; 2 uses
  %i.bx = shl nsw i64 %i.bv, 1
  %i.by = sub i64 %i.bx, %i.bw
  %diff.check = icmp ugt i64 %i.by, -16
  %i.bz = shl nsw i64 %i.bu, 1
  %i.ca = sub i64 %i.bz, %i.bw
  %diff.check330 = icmp ugt i64 %i.ca, -16
  %conflict.rdx = or i1 %diff.check, %diff.check330
  %i.cb = sub i64 %i.a, %i.h                      ; 2 uses
  %i.cc = shl nsw i64 %i.bt, 1
  %i.cd = sub i64 %i.cc, %i.cb
  %diff.check331 = icmp ugt i64 %i.cd, -16
  %conflict.rdx332 = or i1 %conflict.rdx, %diff.check331
  %i.ce = shl nsw i64 %i.bs, 1
  %i.cf = sub i64 %i.ce, %i.cb
  %diff.check333 = icmp ugt i64 %i.cf, -16
  %conflict.rdx334 = or i1 %conflict.rdx332, %diff.check333
  br i1 %conflict.rdx334, label %.lr.ph.split.preheader462, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat336.a = shufflevector <8 x i32> %broadcast.splatinsert335, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert337 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat338 = shufflevector <8 x i32> %broadcast.splatinsert337, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cg = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cg, align 2, !tbaa !45 ; 2 uses
  %i.ch = zext <8 x i16> %wide.load to <8 x i32>
  %i.ci = getelementptr [2 x i8], ptr %invariant.gep279, i64 %index
  %wide.load339 = load <8 x i16>, ptr %i.ci, align 2, !tbaa !45
  %i.cj = zext <8 x i16> %wide.load339 to <8 x i32> ; 2 uses
  %i.ck = sub nsw <8 x i32> %i.cj, %i.ch
  %i.cl = getelementptr [2 x i8], ptr %invariant.gep281, i64 %index
  %wide.load340 = load <8 x i16>, ptr %i.cl, align 2, !tbaa !45
  %i.cm = zext <8 x i16> %wide.load340 to <8 x i32> ; 2 uses
  %i.cn = sub nsw <8 x i32> %i.cm, %i.cj
  %i.co = getelementptr [2 x i8], ptr %invariant.gep283, i64 %index
  %wide.load341 = load <8 x i16>, ptr %i.co, align 2, !tbaa !45
  %i.cp = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.cq = sub nsw <8 x i32> %i.cp, %i.cm
  %i.cr = mul nsw <8 x i32> %i.ck, %broadcast.splat
  %i.cs = mul nsw <8 x i32> %i.cn, %broadcast.splat336.a
  %i.ct = mul nsw <8 x i32> %i.cq, %broadcast.splat338
  %i.cu = add <8 x i32> %i.cr, splat (i32 32769)
  %i.cv = add <8 x i32> %i.cu, %i.cs
  %i.cw = add <8 x i32> %i.cv, %i.ct              ; 2 uses
  %i.cx = ashr <8 x i32> %i.cw, splat (i32 16)
  %i.cy = add nsw <8 x i32> %i.cx, %i.cw
  %i.cz = lshr <8 x i32> %i.cy, splat (i32 16)
  %i.da = trunc nuw <8 x i32> %i.cz to <8 x i16>
  %i.db = add <8 x i16> %wide.load, %i.da
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.db, ptr %i.dc, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader462

.lr.ph.split.preheader462:                        ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %or.cond238 = select i1 %.not232, i1 true, i1 %.not233
  %i.de = sext i32 %i.bd to i64                   ; 8 uses
  br i1 %or.cond238, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.df = sext i32 %i.bi to i64                   ; 2 uses
  %i.dg = sext i32 %i.bg to i64                   ; 2 uses
  %i.dh = sext i32 %i.bj to i64                   ; 2 uses
  %wide.trip.count252 = zext nneg i32 %i.e to i64 ; 3 uses
  %invariant.gep285 = getelementptr [2 x i8], ptr %i.g, i64 %i.de ; 2 uses
  %invariant.gep287 = getelementptr [2 x i8], ptr %i.g, i64 %i.df ; 2 uses
  %invariant.gep289 = getelementptr [2 x i8], ptr %i.g, i64 %i.dg ; 2 uses
  %invariant.gep291 = getelementptr [2 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %min.iters.check351 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check351, label %.lr.ph.split.us.split.preheader460, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.split.us.split.preheader
  %i.di = sub i64 %i.a, %i.h                      ; 2 uses
  %i.dj = shl nsw i64 %i.dh, 1
  %i.dk = sub i64 %i.dj, %i.di
  %diff.check343 = icmp ugt i64 %i.dk, -16
  %i.dl = shl nsw i64 %i.dg, 1
  %i.dm = sub i64 %i.dl, %i.di
  %diff.check344 = icmp ugt i64 %i.dm, -16
  %conflict.rdx345 = or i1 %diff.check343, %diff.check344
  %i.dn = sub i64 %i.a, %i.h                      ; 2 uses
  %i.do = shl nsw i64 %i.df, 1
  %i.dp = sub i64 %i.do, %i.dn
  %diff.check346 = icmp ugt i64 %i.dp, -16
  %conflict.rdx347 = or i1 %conflict.rdx345, %diff.check346
  %i.dq = shl nsw i64 %i.de, 1
  %i.dr = sub i64 %i.dq, %i.dn
  %diff.check348 = icmp ugt i64 %i.dr, -16
  %conflict.rdx349 = or i1 %conflict.rdx347, %diff.check348
  br i1 %conflict.rdx349, label %.lr.ph.split.us.split.preheader460, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck342
  %n.vec353 = and i64 %wide.trip.count252, 2147483640 ; 3 uses
  %broadcast.splatinsert354 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat355 = shufflevector <8 x i32> %broadcast.splatinsert354, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert356 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat357.a = shufflevector <8 x i32> %broadcast.splatinsert356, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert358 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat359 = shufflevector <8 x i32> %broadcast.splatinsert358, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph352
  %index361 = phi i64 [ 0, %vector.ph352 ], [ %index.next366, %vector.body360 ] ; 6 uses
  %i.ds = getelementptr [2 x i8], ptr %invariant.gep285, i64 %index361
  %wide.load362 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !45 ; 2 uses
  %i.dt = zext <8 x i16> %wide.load362 to <8 x i32>
  %i.du = getelementptr [2 x i8], ptr %invariant.gep287, i64 %index361
  %wide.load363 = load <8 x i16>, ptr %i.du, align 2, !tbaa !45
  %i.dv = zext <8 x i16> %wide.load363 to <8 x i32> ; 2 uses
  %i.dw = sub nsw <8 x i32> %i.dv, %i.dt
  %i.dx = getelementptr [2 x i8], ptr %invariant.gep289, i64 %index361
  %wide.load364 = load <8 x i16>, ptr %i.dx, align 2, !tbaa !45
  %i.dy = zext <8 x i16> %wide.load364 to <8 x i32>
  %i.dz = getelementptr [2 x i8], ptr %invariant.gep291, i64 %index361
  %wide.load365 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !45
  %i.ea = zext <8 x i16> %wide.load365 to <8 x i32> ; 2 uses
  %i.eb = sub nsw <8 x i32> %i.dy, %i.ea
  %i.ec = sub nsw <8 x i32> %i.ea, %i.dv
  %i.ed = mul nsw <8 x i32> %i.dw, %broadcast.splat355
  %i.ee = mul nsw <8 x i32> %i.eb, %broadcast.splat357.a
  %i.ef = mul nsw <8 x i32> %i.ec, %broadcast.splat359
  %i.eg = add <8 x i32> %i.ed, splat (i32 32769)
  %i.eh = add <8 x i32> %i.eg, %i.ee
  %i.ei = add <8 x i32> %i.eh, %i.ef              ; 2 uses
  %i.ej = ashr <8 x i32> %i.ei, splat (i32 16)
  %i.ek = add nsw <8 x i32> %i.ej, %i.ei
  %i.el = lshr <8 x i32> %i.ek, splat (i32 16)
  %i.em = trunc nuw <8 x i32> %i.el to <8 x i16>
  %i.en = add <8 x i16> %wide.load362, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index361
  store <8 x i16> %i.en, ptr %i.eo, align 2, !tbaa !45
  %index.next366 = add nuw i64 %index361, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next366, %n.vec353
  br i1 %i.ep, label %middle.block367, label %vector.body360, !llvm.loop !164

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %n.vec353, %wide.trip.count252
  br i1 %cmp.n368, label %._crit_edge, label %.lr.ph.split.us.split.preheader460

.lr.ph.split.us.split.preheader460:               ; preds = %vector.memcheck342, %.lr.ph.split.us.split.preheader, %middle.block367
  %indvars.iv249.ph = phi i64 [ 0, %vector.memcheck342 ], [ 0, %.lr.ph.split.us.split.preheader ], [ %n.vec353, %middle.block367 ]
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %brmerge, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  %i.eq = sext i32 %i.bj to i64                   ; 2 uses
  %i.er = sext i32 %i.bk to i64                   ; 2 uses
  %i.es = sext i32 %i.bg to i64                   ; 2 uses
  %wide.trip.count257 = zext nneg i32 %i.e to i64 ; 3 uses
  %invariant.gep293 = getelementptr [2 x i8], ptr %i.g, i64 %i.de ; 2 uses
  %invariant.gep295 = getelementptr [2 x i8], ptr %i.g, i64 %i.eq ; 2 uses
  %invariant.gep297 = getelementptr [2 x i8], ptr %i.g, i64 %i.er ; 2 uses
  %invariant.gep299 = getelementptr [2 x i8], ptr %i.g, i64 %i.es ; 2 uses
  %min.iters.check379 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check379, label %.lr.ph.split.us.split.us.split.preheader458, label %vector.memcheck370

vector.memcheck370:                               ; preds = %.lr.ph.split.us.split.us.split.preheader
  %i.et = sub i64 %i.a, %i.h                      ; 2 uses
  %i.eu = shl nsw i64 %i.es, 1
  %i.ev = sub i64 %i.eu, %i.et
  %diff.check371 = icmp ugt i64 %i.ev, -16
  %i.ew = shl nsw i64 %i.er, 1
  %i.ex = sub i64 %i.ew, %i.et
  %diff.check372 = icmp ugt i64 %i.ex, -16
  %conflict.rdx373 = or i1 %diff.check371, %diff.check372
  %i.ey = sub i64 %i.a, %i.h                      ; 2 uses
  %i.ez = shl nsw i64 %i.eq, 1
  %i.fa = sub i64 %i.ez, %i.ey
  %diff.check374 = icmp ugt i64 %i.fa, -16
  %conflict.rdx375 = or i1 %conflict.rdx373, %diff.check374
  %i.fb = shl nsw i64 %i.de, 1
  %i.fc = sub i64 %i.fb, %i.ey
  %diff.check376 = icmp ugt i64 %i.fc, -16
  %conflict.rdx377 = or i1 %conflict.rdx375, %diff.check376
  br i1 %conflict.rdx377, label %.lr.ph.split.us.split.us.split.preheader458, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck370
  %n.vec381 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  %broadcast.splatinsert382 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat383 = shufflevector <8 x i32> %broadcast.splatinsert382, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert384 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat385.a = shufflevector <8 x i32> %broadcast.splatinsert384, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert386 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat387 = shufflevector <8 x i32> %broadcast.splatinsert386, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph380
  %index389 = phi i64 [ 0, %vector.ph380 ], [ %index.next394, %vector.body388 ] ; 6 uses
  %i.fd = getelementptr [2 x i8], ptr %invariant.gep293, i64 %index389
  %wide.load390 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !45 ; 2 uses
  %i.fe = zext <8 x i16> %wide.load390 to <8 x i32>
  %i.ff = getelementptr [2 x i8], ptr %invariant.gep295, i64 %index389
  %wide.load391 = load <8 x i16>, ptr %i.ff, align 2, !tbaa !45
  %i.fg = zext <8 x i16> %wide.load391 to <8 x i32> ; 2 uses
  %i.fh = getelementptr [2 x i8], ptr %invariant.gep297, i64 %index389
  %wide.load392 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !45
  %i.fi = zext <8 x i16> %wide.load392 to <8 x i32> ; 2 uses
  %i.fj = sub nsw <8 x i32> %i.fg, %i.fi
  %i.fk = getelementptr [2 x i8], ptr %invariant.gep299, i64 %index389
  %wide.load393 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !45
  %i.fl = zext <8 x i16> %wide.load393 to <8 x i32>
  %i.fm = sub nsw <8 x i32> %i.fl, %i.fg
  %i.fn = sub nsw <8 x i32> %i.fi, %i.fe
  %i.fo = mul nsw <8 x i32> %i.fj, %broadcast.splat383
  %i.fp = mul nsw <8 x i32> %i.fm, %broadcast.splat385.a
  %i.fq = mul nsw <8 x i32> %i.fn, %broadcast.splat387
  %i.fr = add <8 x i32> %i.fo, splat (i32 32769)
  %i.fs = add <8 x i32> %i.fr, %i.fp
  %i.ft = add <8 x i32> %i.fs, %i.fq              ; 2 uses
  %i.fu = ashr <8 x i32> %i.ft, splat (i32 16)
  %i.fv = add nsw <8 x i32> %i.fu, %i.ft
  %i.fw = lshr <8 x i32> %i.fv, splat (i32 16)
  %i.fx = trunc nuw <8 x i32> %i.fw to <8 x i16>
  %i.fy = add <8 x i16> %wide.load390, %i.fx
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index389
  store <8 x i16> %i.fy, ptr %i.fz, align 2, !tbaa !45
  %index.next394 = add nuw i64 %index389, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next394, %n.vec381
  br i1 %i.ga, label %middle.block395, label %vector.body388, !llvm.loop !165

middle.block395:                                  ; preds = %vector.body388
  %cmp.n396 = icmp eq i64 %n.vec381, %wide.trip.count257
  br i1 %cmp.n396, label %._crit_edge, label %.lr.ph.split.us.split.us.split.preheader458

.lr.ph.split.us.split.us.split.preheader458:      ; preds = %vector.memcheck370, %.lr.ph.split.us.split.us.split.preheader, %middle.block395
  %indvars.iv254.ph = phi i64 [ 0, %vector.memcheck370 ], [ 0, %.lr.ph.split.us.split.us.split.preheader ], [ %n.vec381, %middle.block395 ]
  br label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  br i1 %brmerge239, label %.lr.ph.split.us.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.us.split.preheader: ; preds = %.lr.ph.split.us.split.us.split.us
  %i.gb = sext i32 %i.bf to i64                   ; 2 uses
  %i.gc = sext i32 %i.bm to i64                   ; 2 uses
  %i.gd = sext i32 %i.bg to i64                   ; 2 uses
  %wide.trip.count262 = zext nneg i32 %i.e to i64 ; 3 uses
  %invariant.gep301 = getelementptr [2 x i8], ptr %i.g, i64 %i.de ; 2 uses
  %invariant.gep303 = getelementptr [2 x i8], ptr %i.g, i64 %i.gb ; 2 uses
  %invariant.gep305 = getelementptr [2 x i8], ptr %i.g, i64 %i.gc ; 2 uses
  %invariant.gep307 = getelementptr [2 x i8], ptr %i.g, i64 %i.gd ; 2 uses
  %min.iters.check407 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check407, label %.lr.ph.split.us.split.us.split.us.split.preheader456, label %vector.memcheck398

vector.memcheck398:                               ; preds = %.lr.ph.split.us.split.us.split.us.split.preheader
  %i.ge = sub i64 %i.a, %i.h                      ; 2 uses
  %i.gf = shl nsw i64 %i.gd, 1
  %i.gg = sub i64 %i.gf, %i.ge
  %diff.check399 = icmp ugt i64 %i.gg, -16
  %i.gh = shl nsw i64 %i.gc, 1
  %i.gi = sub i64 %i.gh, %i.ge
  %diff.check400 = icmp ugt i64 %i.gi, -16
  %conflict.rdx401 = or i1 %diff.check399, %diff.check400
  %i.gj = sub i64 %i.a, %i.h                      ; 2 uses
  %i.gk = shl nsw i64 %i.gb, 1
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check402 = icmp ugt i64 %i.gl, -16
  %conflict.rdx403 = or i1 %conflict.rdx401, %diff.check402
  %i.gm = shl nsw i64 %i.de, 1
  %i.gn = sub i64 %i.gm, %i.gj
  %diff.check404 = icmp ugt i64 %i.gn, -16
  %conflict.rdx405 = or i1 %conflict.rdx403, %diff.check404
  br i1 %conflict.rdx405, label %.lr.ph.split.us.split.us.split.us.split.preheader456, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck398
  %n.vec409 = and i64 %wide.trip.count262, 2147483640 ; 3 uses
  %broadcast.splatinsert410 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat411 = shufflevector <8 x i32> %broadcast.splatinsert410, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert412 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat413.a = shufflevector <8 x i32> %broadcast.splatinsert412, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert414 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat415 = shufflevector <8 x i32> %broadcast.splatinsert414, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph408
  %index417 = phi i64 [ 0, %vector.ph408 ], [ %index.next422, %vector.body416 ] ; 6 uses
  %i.go = getelementptr [2 x i8], ptr %invariant.gep301, i64 %index417
  %wide.load418 = load <8 x i16>, ptr %i.go, align 2, !tbaa !45 ; 2 uses
  %i.gp = zext <8 x i16> %wide.load418 to <8 x i32>
  %i.gq = getelementptr [2 x i8], ptr %invariant.gep303, i64 %index417
  %wide.load419 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !45
  %i.gr = zext <8 x i16> %wide.load419 to <8 x i32> ; 2 uses
  %i.gs = getelementptr [2 x i8], ptr %invariant.gep305, i64 %index417
  %wide.load420 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !45
  %i.gt = zext <8 x i16> %wide.load420 to <8 x i32> ; 2 uses
  %i.gu = sub nsw <8 x i32> %i.gr, %i.gt
  %i.gv = sub nsw <8 x i32> %i.gt, %i.gp
  %i.gw = getelementptr [2 x i8], ptr %invariant.gep307, i64 %index417
  %wide.load421 = load <8 x i16>, ptr %i.gw, align 2, !tbaa !45
  %i.gx = zext <8 x i16> %wide.load421 to <8 x i32>
  %i.gy = sub nsw <8 x i32> %i.gx, %i.gr
  %i.gz = mul nsw <8 x i32> %i.gu, %broadcast.splat411
  %i.ha = mul nsw <8 x i32> %i.gv, %broadcast.splat413.a
  %i.hb = mul nsw <8 x i32> %i.gy, %broadcast.splat415
  %i.hc = add <8 x i32> %i.gz, splat (i32 32769)
  %i.hd = add <8 x i32> %i.hc, %i.ha
  %i.he = add <8 x i32> %i.hd, %i.hb              ; 2 uses
  %i.hf = ashr <8 x i32> %i.he, splat (i32 16)
  %i.hg = add nsw <8 x i32> %i.hf, %i.he
  %i.hh = lshr <8 x i32> %i.hg, splat (i32 16)
  %i.hi = trunc nuw <8 x i32> %i.hh to <8 x i16>
  %i.hj = add <8 x i16> %wide.load418, %i.hi
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index417
  store <8 x i16> %i.hj, ptr %i.hk, align 2, !tbaa !45
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next422, %n.vec409
  br i1 %i.hl, label %middle.block423, label %vector.body416, !llvm.loop !166

middle.block423:                                  ; preds = %vector.body416
  %cmp.n424 = icmp eq i64 %n.vec409, %wide.trip.count262
  br i1 %cmp.n424, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.preheader456

.lr.ph.split.us.split.us.split.us.split.preheader456: ; preds = %vector.memcheck398, %.lr.ph.split.us.split.us.split.us.split.preheader, %middle.block423
  %indvars.iv259.ph = phi i64 [ 0, %vector.memcheck398 ], [ 0, %.lr.ph.split.us.split.us.split.us.split.preheader ], [ %n.vec409, %middle.block423 ]
  br label %.lr.ph.split.us.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.split.us:       ; preds = %.lr.ph.split.us.split.us.split.us
  %i.hm = sext i32 %i.bg to i64                   ; 2 uses
  %i.hn = sext i32 %i.bo to i64                   ; 2 uses
  %wide.trip.count272 = zext nneg i32 %i.e to i64 ; 4 uses
  %invariant.gep317 = getelementptr [2 x i8], ptr %i.g, i64 %i.de ; 3 uses
  %invariant.gep319 = getelementptr [2 x i8], ptr %i.g, i64 %i.hm ; 3 uses
  %invariant.gep321 = getelementptr [2 x i8], ptr %i.g, i64 %i.hn ; 3 uses
  br i1 %brmerge240, label %.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.us.split.us.split.preheader: ; preds = %.lr.ph.split.us.split.us.split.us.split.us
  %i.ho = sext i32 %i.bp to i64                   ; 2 uses
  %invariant.gep315 = getelementptr [2 x i8], ptr %i.g, i64 %i.ho ; 2 uses
  %min.iters.check435 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check435, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454, label %vector.memcheck426

vector.memcheck426:                               ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.preheader
  %i.hp = sub i64 %i.a, %i.h                      ; 2 uses
  %i.hq = shl nsw i64 %i.ho, 1
  %i.hr = sub i64 %i.hq, %i.hp
  %diff.check427 = icmp ugt i64 %i.hr, -16
  %i.hs = shl nsw i64 %i.hn, 1
  %i.ht = sub i64 %i.hs, %i.hp
  %diff.check428 = icmp ugt i64 %i.ht, -16
  %conflict.rdx429 = or i1 %diff.check427, %diff.check428
  %i.hu = sub i64 %i.a, %i.h                      ; 2 uses
  %i.hv = shl nsw i64 %i.hm, 1
  %i.hw = sub i64 %i.hv, %i.hu
  %diff.check430 = icmp ugt i64 %i.hw, -16
  %conflict.rdx431 = or i1 %conflict.rdx429, %diff.check430
  %i.hx = shl nsw i64 %i.de, 1
  %i.hy = sub i64 %i.hx, %i.hu
  %diff.check432 = icmp ugt i64 %i.hy, -16
  %conflict.rdx433 = or i1 %conflict.rdx431, %diff.check432
  br i1 %conflict.rdx433, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454, label %vector.ph436

vector.ph436:                                     ; preds = %vector.memcheck426
  %n.vec437 = and i64 %wide.trip.count272, 2147483640 ; 3 uses
  %broadcast.splatinsert438 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat439 = shufflevector <8 x i32> %broadcast.splatinsert438, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert440 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat441.a = shufflevector <8 x i32> %broadcast.splatinsert440, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert442 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat443 = shufflevector <8 x i32> %broadcast.splatinsert442, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph436
  %index445 = phi i64 [ 0, %vector.ph436 ], [ %index.next450, %vector.body444 ] ; 6 uses
  %i.hz = getelementptr [2 x i8], ptr %invariant.gep317, i64 %index445
  %wide.load446 = load <8 x i16>, ptr %i.hz, align 2, !tbaa !45 ; 2 uses
  %i.ia = zext <8 x i16> %wide.load446 to <8 x i32>
  %i.ib = getelementptr [2 x i8], ptr %invariant.gep319, i64 %index445
  %wide.load447 = load <8 x i16>, ptr %i.ib, align 2, !tbaa !45
  %i.ic = zext <8 x i16> %wide.load447 to <8 x i32>
  %i.id = getelementptr [2 x i8], ptr %invariant.gep321, i64 %index445
  %wide.load448 = load <8 x i16>, ptr %i.id, align 2, !tbaa !45
  %i.ie = zext <8 x i16> %wide.load448 to <8 x i32> ; 2 uses
  %i.if = sub nsw <8 x i32> %i.ic, %i.ie
  %i.ig = getelementptr [2 x i8], ptr %invariant.gep315, i64 %index445
  %wide.load449 = load <8 x i16>, ptr %i.ig, align 2, !tbaa !45
  %i.ih = zext <8 x i16> %wide.load449 to <8 x i32> ; 2 uses
  %i.ii = sub nsw <8 x i32> %i.ih, %i.ia
  %i.ij = sub nsw <8 x i32> %i.ie, %i.ih
  %i.ik = mul nsw <8 x i32> %i.if, %broadcast.splat439
  %i.il = mul nsw <8 x i32> %i.ii, %broadcast.splat441.a
  %i.im = mul nsw <8 x i32> %i.ij, %broadcast.splat443
  %i.in = add <8 x i32> %i.ik, splat (i32 32769)
  %i.io = add <8 x i32> %i.in, %i.il
  %i.ip = add <8 x i32> %i.io, %i.im              ; 2 uses
  %i.iq = ashr <8 x i32> %i.ip, splat (i32 16)
  %i.ir = add nsw <8 x i32> %i.iq, %i.ip
  %i.is = lshr <8 x i32> %i.ir, splat (i32 16)
  %i.it = trunc nuw <8 x i32> %i.is to <8 x i16>
  %i.iu = add <8 x i16> %wide.load446, %i.it
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index445
  store <8 x i16> %i.iu, ptr %i.iv, align 2, !tbaa !45
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next450, %n.vec437
  br i1 %i.iw, label %middle.block451, label %vector.body444, !llvm.loop !167

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %n.vec437, %wide.trip.count272
  br i1 %cmp.n452, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454

.lr.ph.split.us.split.us.split.us.split.us.split.preheader454: ; preds = %vector.memcheck426, %.lr.ph.split.us.split.us.split.us.split.us.split.preheader, %middle.block451
  %indvars.iv264.ph = phi i64 [ 0, %vector.memcheck426 ], [ 0, %.lr.ph.split.us.split.us.split.us.split.us.split.preheader ], [ %n.vec437, %middle.block451 ]
  br label %.lr.ph.split.us.split.us.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader: ; preds = %.lr.ph.split.us.split.us.split.us.split.us
  %i.ix = sext i32 %i.bk to i64
  %invariant.gep323 = getelementptr [2 x i8], ptr %i.g, i64 %i.ix
  br label %.lr.ph.split.us.split.us.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us.split.us.split.us: ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader, %bb.i
  %indvars.iv269 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.split.us.split.us.preheader ], [ %indvars.iv.next270, %bb.i ] ; 6 uses
  %gep318 = getelementptr [2 x i8], ptr %invariant.gep317, i64 %indvars.iv269
  %i.iy = load i16, ptr %gep318, align 2, !tbaa !45 ; 2 uses
  br i1 %brmerge241, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.us
  %5 = zext i16 %i.iy to i32
  %gep320 = getelementptr [2 x i8], ptr %invariant.gep319, i64 %indvars.iv269
  %i.iz = load i16, ptr %gep320, align 2, !tbaa !45
  %6 = zext i16 %i.iz to i32
  %gep322 = getelementptr [2 x i8], ptr %invariant.gep321, i64 %indvars.iv269
  %i.ja = load i16, ptr %gep322, align 2, !tbaa !45
  %7 = zext i16 %i.ja to i32                      ; 2 uses
  %8 = sub nsw i32 %6, %7
  %gep324 = getelementptr [2 x i8], ptr %invariant.gep323, i64 %indvars.iv269
  %i.jb = load i16, ptr %gep324, align 2, !tbaa !45
  %9 = zext i16 %i.jb to i32                      ; 2 uses
  %10 = sub nsw i32 %7, %9
  %11 = sub nsw i32 %9, %5
  %12 = mul nsw i32 %8, %3
  %13 = mul nsw i32 %10, %4
  %14 = mul nsw i32 %11, %i.al
  %15 = add i32 %12, 32769
  %16 = add i32 %15, %13
  %17 = add i32 %16, %14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.split.us.split.us.split.us.split.us
  %i.jc = phi i32 [ 32769, %.lr.ph.split.us.split.us.split.us.split.us.split.us ], [ %17, %bb.h ] ; 2 uses
  %i.jd = ashr i32 %i.jc, 16
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = lshr i32 %i.je, 16
  %i.jg = trunc nuw i32 %i.jf to i16
  %i.jh = add i16 %i.iy, %i.jg
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv269
  store i16 %i.jh, ptr %i.ji, align 2, !tbaa !45
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.us.split.us, !llvm.loop !168

.lr.ph.split.us.split.us.split.us.split.us.split: ; preds = %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454, %.lr.ph.split.us.split.us.split.us.split.us.split
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %.lr.ph.split.us.split.us.split.us.split.us.split ], [ %indvars.iv264.ph, %.lr.ph.split.us.split.us.split.us.split.us.split.preheader454 ] ; 6 uses
  %gep310 = getelementptr [2 x i8], ptr %invariant.gep317, i64 %indvars.iv264
  %i.jj = load i16, ptr %gep310, align 2, !tbaa !45 ; 2 uses
  %i.jk = zext i16 %i.jj to i32
  %gep312 = getelementptr [2 x i8], ptr %invariant.gep319, i64 %indvars.iv264
  %i.jl = load i16, ptr %gep312, align 2, !tbaa !45
  %i.jm = zext i16 %i.jl to i32
  %gep314 = getelementptr [2 x i8], ptr %invariant.gep321, i64 %indvars.iv264
  %i.jn = load i16, ptr %gep314, align 2, !tbaa !45
  %i.jo = zext i16 %i.jn to i32                   ; 2 uses
  %i.jp = sub nsw i32 %i.jm, %i.jo
  %gep316 = getelementptr [2 x i8], ptr %invariant.gep315, i64 %indvars.iv264
  %i.jq = load i16, ptr %gep316, align 2, !tbaa !45
  %i.jr = zext i16 %i.jq to i32                   ; 2 uses
  %i.js = sub nsw i32 %i.jr, %i.jk
  %i.jt = sub nsw i32 %i.jo, %i.jr
  %i.ju = mul nsw i32 %i.jp, %3
  %i.jv = mul nsw i32 %i.js, %4
  %i.jw = mul nsw i32 %i.jt, %i.al
  %i.jx = add i32 %i.ju, 32769
  %i.jy = add i32 %i.jx, %i.jv
  %i.jz = add i32 %i.jy, %i.jw                    ; 2 uses
  %i.ka = ashr i32 %i.jz, 16
  %i.kb = add nsw i32 %i.ka, %i.jz
  %i.kc = lshr i32 %i.kb, 16
  %i.kd = trunc nuw i32 %i.kc to i16
  %i.ke = add i16 %i.jj, %i.kd
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv264
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !45
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count272
  br i1 %exitcond268.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split.us.split, !llvm.loop !169

.lr.ph.split.us.split.us.split.us.split:          ; preds = %.lr.ph.split.us.split.us.split.us.split.preheader456, %.lr.ph.split.us.split.us.split.us.split
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph.split.us.split.us.split.us.split ], [ %indvars.iv259.ph, %.lr.ph.split.us.split.us.split.us.split.preheader456 ] ; 6 uses
  %gep302 = getelementptr [2 x i8], ptr %invariant.gep301, i64 %indvars.iv259
  %i.kg = load i16, ptr %gep302, align 2, !tbaa !45 ; 2 uses
  %i.kh = zext i16 %i.kg to i32
  %gep304 = getelementptr [2 x i8], ptr %invariant.gep303, i64 %indvars.iv259
  %i.ki = load i16, ptr %gep304, align 2, !tbaa !45
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %gep306 = getelementptr [2 x i8], ptr %invariant.gep305, i64 %indvars.iv259
  %i.kk = load i16, ptr %gep306, align 2, !tbaa !45
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = sub nsw i32 %i.kj, %i.kl
  %i.kn = sub nsw i32 %i.kl, %i.kh
  %gep308 = getelementptr [2 x i8], ptr %invariant.gep307, i64 %indvars.iv259
  %i.ko = load i16, ptr %gep308, align 2, !tbaa !45
  %i.kp = zext i16 %i.ko to i32
  %i.kq = sub nsw i32 %i.kp, %i.kj
  %i.kr = mul nsw i32 %i.km, %3
  %i.ks = mul nsw i32 %i.kn, %4
  %i.kt = mul nsw i32 %i.kq, %i.al
  %i.ku = add i32 %i.kr, 32769
  %i.kv = add i32 %i.ku, %i.ks
  %i.kw = add i32 %i.kv, %i.kt                    ; 2 uses
  %i.kx = ashr i32 %i.kw, 16
  %i.ky = add nsw i32 %i.kx, %i.kw
  %i.kz = lshr i32 %i.ky, 16
  %i.la = trunc nuw i32 %i.kz to i16
  %i.lb = add i16 %i.kg, %i.la
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv259
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !45
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.split, !llvm.loop !170

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us.split.preheader458, %.lr.ph.split.us.split.us.split
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph.split.us.split.us.split ], [ %indvars.iv254.ph, %.lr.ph.split.us.split.us.split.preheader458 ] ; 6 uses
  %gep294 = getelementptr [2 x i8], ptr %invariant.gep293, i64 %indvars.iv254
  %i.ld = load i16, ptr %gep294, align 2, !tbaa !45 ; 2 uses
  %i.le = zext i16 %i.ld to i32
  %gep296 = getelementptr [2 x i8], ptr %invariant.gep295, i64 %indvars.iv254
  %i.lf = load i16, ptr %gep296, align 2, !tbaa !45
  %i.lg = zext i16 %i.lf to i32                   ; 2 uses
  %gep298 = getelementptr [2 x i8], ptr %invariant.gep297, i64 %indvars.iv254
  %i.lh = load i16, ptr %gep298, align 2, !tbaa !45
  %i.li = zext i16 %i.lh to i32                   ; 2 uses
  %i.lj = sub nsw i32 %i.lg, %i.li
  %gep300 = getelementptr [2 x i8], ptr %invariant.gep299, i64 %indvars.iv254
  %i.lk = load i16, ptr %gep300, align 2, !tbaa !45
  %i.ll = zext i16 %i.lk to i32
  %i.lm = sub nsw i32 %i.ll, %i.lg
  %i.ln = sub nsw i32 %i.li, %i.le
  %i.lo = mul nsw i32 %i.lj, %3
  %i.lp = mul nsw i32 %i.lm, %4
  %i.lq = mul nsw i32 %i.ln, %i.al
  %i.lr = add i32 %i.lo, 32769
  %i.ls = add i32 %i.lr, %i.lp
  %i.lt = add i32 %i.ls, %i.lq                    ; 2 uses
  %i.lu = ashr i32 %i.lt, 16
  %i.lv = add nsw i32 %i.lu, %i.lt
  %i.lw = lshr i32 %i.lv, 16
  %i.lx = trunc nuw i32 %i.lw to i16
  %i.ly = add i16 %i.ld, %i.lx
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv254
  store i16 %i.ly, ptr %i.lz, align 2, !tbaa !45
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split, !llvm.loop !171

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader460, %.lr.ph.split.us.split
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %.lr.ph.split.us.split ], [ %indvars.iv249.ph, %.lr.ph.split.us.split.preheader460 ] ; 6 uses
  %gep286 = getelementptr [2 x i8], ptr %invariant.gep285, i64 %indvars.iv249
  %i.ma = load i16, ptr %gep286, align 2, !tbaa !45 ; 2 uses
  %i.mb = zext i16 %i.ma to i32
  %gep288 = getelementptr [2 x i8], ptr %invariant.gep287, i64 %indvars.iv249
  %i.mc = load i16, ptr %gep288, align 2, !tbaa !45
  %i.md = zext i16 %i.mc to i32                   ; 2 uses
  %i.me = sub nsw i32 %i.md, %i.mb
  %gep290 = getelementptr [2 x i8], ptr %invariant.gep289, i64 %indvars.iv249
  %i.mf = load i16, ptr %gep290, align 2, !tbaa !45
  %i.mg = zext i16 %i.mf to i32
  %gep292 = getelementptr [2 x i8], ptr %invariant.gep291, i64 %indvars.iv249
  %i.mh = load i16, ptr %gep292, align 2, !tbaa !45
  %i.mi = zext i16 %i.mh to i32                   ; 2 uses
  %i.mj = sub nsw i32 %i.mg, %i.mi
  %i.mk = sub nsw i32 %i.mi, %i.md
  %i.ml = mul nsw i32 %i.me, %3
  %i.mm = mul nsw i32 %i.mj, %4
  %i.mn = mul nsw i32 %i.mk, %i.al
  %i.mo = add i32 %i.ml, 32769
  %i.mp = add i32 %i.mo, %i.mm
  %i.mq = add i32 %i.mp, %i.mn                    ; 2 uses
  %i.mr = ashr i32 %i.mq, 16
  %i.ms = add nsw i32 %i.mr, %i.mq
  %i.mt = lshr i32 %i.ms, 16
  %i.mu = trunc nuw i32 %i.mt to i16
  %i.mv = add i16 %i.ma, %i.mu
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv249
  store i16 %i.mv, ptr %i.mw, align 2, !tbaa !45
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !172

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader462, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader462 ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.mx = load i16, ptr %gep, align 2, !tbaa !45  ; 2 uses
  %i.my = zext i16 %i.mx to i32
  %gep280 = getelementptr [2 x i8], ptr %invariant.gep279, i64 %indvars.iv
  %i.mz = load i16, ptr %gep280, align 2, !tbaa !45
  %i.na = zext i16 %i.mz to i32                   ; 2 uses
  %i.nb = sub nsw i32 %i.na, %i.my
  %gep282 = getelementptr [2 x i8], ptr %invariant.gep281, i64 %indvars.iv
  %i.nc = load i16, ptr %gep282, align 2, !tbaa !45
  %i.nd = zext i16 %i.nc to i32                   ; 2 uses
  %i.ne = sub nsw i32 %i.nd, %i.na
  %gep284 = getelementptr [2 x i8], ptr %invariant.gep283, i64 %indvars.iv
  %i.nf = load i16, ptr %gep284, align 2, !tbaa !45
  %i.ng = zext i16 %i.nf to i32
  %i.nh = sub nsw i32 %i.ng, %i.nd
  %i.ni = mul nsw i32 %i.nb, %3
  %i.nj = mul nsw i32 %i.ne, %4
  %i.nk = mul nsw i32 %i.nh, %i.al
  %i.nl = add i32 %i.ni, 32769
  %i.nm = add i32 %i.nl, %i.nj
  %i.nn = add i32 %i.nm, %i.nk                    ; 2 uses
  %i.no = ashr i32 %i.nn, 16
  %i.np = add nsw i32 %i.no, %i.nn
  %i.nq = lshr i32 %i.np, 16
  %i.nr = trunc nuw i32 %i.nq to i16
  %i.ns = add i16 %i.mx, %i.nr
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ns, ptr %i.nt, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !173

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us.split, %.lr.ph.split.us.split.us.split.us.split, %.lr.ph.split.us.split.us.split.us.split.us.split, %bb.i, %middle.block, %middle.block367, %middle.block395, %middle.block423, %middle.block451, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Prelin8free(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void @_cmsFree(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @Prelin8dup(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @_cmsDupMem(ptr noundef %0, ptr noundef %1, i32 noundef 4624) #9
  ret ptr %i.a
}

declare i32 @cmsIsToneCurveDescending(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.floor.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTS29_cmsOptimizationCollection_st", !9, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS18_cmsContext_struct", !9, i64 0}
!14 = !{!"_cmsOptimizationCollection_st", !9, i64 0, !11, i64 8}
!15 = !{!14, !11, i64 8}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!14, !9, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!"p1 _ZTS19_cmsPipeline_struct", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS16_cmsStage_struct", !9, i64 0}
!22 = !{!"_cmsPipeline_struct", !21, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !13, i64 56, !6, i64 64}
!23 = !{!21, !21, i64 0}
!24 = !{!"_cmsStage_struct", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !21, i64 56}
!25 = !{!"p1 double", !9, i64 0}
!26 = !{!"", !25, i64 0, !25, i64 8}
!27 = !{!26, !25, i64 8}
!28 = !{!26, !25, i64 0}
!29 = !{!"double", !5, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!22, !13, i64 56}
!32 = !{!22, !6, i64 8}
!33 = !{!22, !6, i64 12}
!34 = !{!24, !6, i64 8}
!35 = !{!24, !9, i64 48}
!36 = !{!"any p2 pointer", !9, i64 0}
!37 = !{!"p2 _ZTS17_cms_curve_struct", !36, i64 0}
!38 = !{!"", !6, i64 0, !37, i64 8}
!39 = !{!38, !37, i64 8}
!40 = !{!"p1 _ZTS17_cms_interp_struc", !9, i64 0}
!41 = !{!"", !5, i64 0, !40, i64 8, !6, i64 16, !6, i64 20}
!42 = !{!41, !40, i64 8}
!43 = !{!5, !5, i64 0}
!44 = !{!"short", !5, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!"p1 _ZTS17_cms_curve_struct", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"float", !5, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"p2 _ZTS17_cms_interp_struc", !36, i64 0}
!54 = !{!"", !13, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !5, i64 136, !9, i64 256, !40, i64 264, !36, i64 272, !53, i64 280}
!55 = !{!54, !6, i64 8}
!56 = !{!54, !6, i64 12}
!57 = !{!40, !40, i64 0}
!58 = !{!"p1 short", !9, i64 0}
!59 = !{!"_cms_curve_struct", !40, i64 0, !6, i64 8, !9, i64 16, !53, i64 24, !36, i64 32, !6, i64 40, !58, i64 48}
!60 = !{!54, !40, i64 264}
!61 = !{!54, !9, i64 256}
!62 = !{!54, !36, i64 272}
!63 = !{!54, !53, i64 280}
!64 = !{!58, !58, i64 0}
!65 = !{!59, !58, i64 48}
!66 = !{!38, !6, i64 0}
!67 = !{!"p2 short", !36, i64 0}
!68 = !{!"", !13, i64 0, !6, i64 8, !6, i64 12, !67, i64 16}
!69 = !{!68, !6, i64 8}
!70 = !{!68, !6, i64 12}
!71 = !{!68, !67, i64 16}
!72 = !{!"", !13, i64 0, !40, i64 8, !5, i64 16, !5, i64 528, !5, i64 1040, !5, i64 1552, !5, i64 2576, !5, i64 3600}
!73 = !{!72, !40, i64 8}
!74 = distinct !{!74, !16}
!75 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!76 = !{!"_cmsContext_struct", !13, i64 0, !9, i64 8, !5, i64 16, !75, i64 144}
!77 = !{!76, !9, i64 8}
!78 = !{!"p1 _ZTS20_cmsPluginBaseStruct", !9, i64 0}
!79 = !{!"_cmsPluginBaseStruct", !6, i64 0, !6, i64 4, !6, i64 8, !78, i64 16}
!80 = !{!"", !79, i64 0, !9, i64 24}
!81 = !{!80, !9, i64 24}
!82 = !{!"", !11, i64 0}
!83 = !{!82, !11, i64 0}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = !{!22, !21, i64 0}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16, !94}
!92 = !{!24, !6, i64 12}
!93 = !{!24, !21, i64 56}
!94 = !{!"llvm.loop.unswitch.partial.disable"}
!95 = distinct !{!95, !16, !46, !47}
!96 = distinct !{!96, !16, !46, !47}
!97 = distinct !{!97, !48}
!98 = distinct !{!98, !16, !46}
!99 = !{!"branch_weights", i32 4, i32 12}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16, !46, !47}
!102 = distinct !{!102, !16, !47, !46}
!103 = distinct !{!103, !16, !46, !47}
!104 = distinct !{!104, !16, !47, !46}
!105 = distinct !{!105, !16, !46, !47}
!106 = distinct !{!106, !16, !47, !46}
!107 = distinct !{!107, !16}
!108 = distinct !{!108, !16}
!109 = !{!59, !40, i64 0}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !48}
!117 = !{!24, !13, i64 0}
!118 = distinct !{!118, !16}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16, !46, !47}
!121 = distinct !{!121, !16, !47, !46}
!122 = distinct !{!122, !16}
!123 = distinct !{!123, !16}
end_hunk_0
