Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcInse?download=true
inline.NumInlined: 150
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Gia_ManInseInit:bb.a
  %.not = icmp eq ptr %.val41, null
  br i1 %.not, label %.critedge, label %.lr.ph56.split

.lr.ph56.split:                                   ; preds = %.lr.ph56
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %0, i64 808
  %i.f = getelementptr i8, ptr %0, i64 792
  %i.g = getelementptr i8, ptr %0, i64 72
  %.val38 = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.h = getelementptr i8, ptr %.val38, i64 8
  %.val42.val = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.i, align 4, !tbaa !34
  %invariant.op = sub i32 %.val38.val, %.val
  %.val44 = load ptr, ptr %i.f, align 8, !tbaa !35
  %.val45 = load i32, ptr %i.e, align 8, !tbaa !36
  %.val45.fr = freeze i32 %.val45                 ; 6 uses
  %factor.op.mul = shl i32 %.val45.fr, 1
  %i.j = sext i32 %.val45.fr to i64
  %.val40 = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = icmp sgt i32 %.val45.fr, 0
  br i1 %i.k, label %.lr.ph56.split.split.us.preheader, label %.critedge

.lr.ph56.split.split.us.preheader:                ; preds = %.lr.ph56.split
  %i.l = zext nneg i32 %.val45.fr to i64          ; 7 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %wide.trip.count141 = zext nneg i32 %.val to i64
  %min.iters.check146 = icmp ult i32 %.val45.fr, 4
  %n.vec148 = and i64 %i.l, 2147483644            ; 3 uses
  %cmp.n153 = icmp eq i64 %n.vec148, %i.l
  %min.iters.check = icmp ult i32 %.val45.fr, 4
  %n.vec = and i64 %i.l, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br label %.lr.ph56.split.split.us

.lr.ph56.split.split.us:                          ; preds = %.lr.ph56.split.split.us.preheader, %.loopexit47.us
  %indvars.iv138 = phi i64 [ 0, %.lr.ph56.split.split.us.preheader ], [ %indvars.iv.next139, %.loopexit47.us ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv138 to i32
  %.reass.us = add i32 %invariant.op, %i.n
  %i.o = sext i32 %.reass.us to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val42.val, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37
  %.reass58.us = mul i32 %i.q, %factor.op.mul
  %i.r = sext i32 %.reass58.us to i64
  %i.s = getelementptr [8 x i8], ptr %.val44, i64 %i.r ; 6 uses
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.j ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv138
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  switch i32 %i.v, label %.preheader.us.preheader [
    i32 0, label %.lr.ph52.us.preheader
    i32 1, label %.lr.ph.us.preheader
  ]

.lr.ph.us.preheader:                              ; preds = %.lr.ph56.split.split.us
  br i1 %min.iters.check146, label %.lr.ph.us.preheader156, label %vector.body149

vector.body149:                                   ; preds = %.lr.ph.us.preheader, %vector.body149
  %index150 = phi i64 [ %index.next151, %vector.body149 ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index150 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> zeroinitializer, ptr %i.w, align 8, !tbaa !38
  store <2 x i64> zeroinitializer, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index150 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.y, align 8, !tbaa !38
  store <2 x i64> splat (i64 -1), ptr %i.z, align 8, !tbaa !38
  %index.next151 = add nuw i64 %index150, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next151, %n.vec148
  br i1 %i.aa, label %middle.block152, label %vector.body149, !llvm.loop !45

middle.block152:                                  ; preds = %vector.body149
  br i1 %cmp.n153, label %.loopexit47.us, label %.lr.ph.us.preheader156

.lr.ph.us.preheader156:                           ; preds = %.lr.ph.us.preheader, %middle.block152
  %indvars.iv125.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec148, %middle.block152 ]
  br label %.lr.ph.us

.lr.ph52.us.preheader:                            ; preds = %.lr.ph56.split.split.us
  br i1 %min.iters.check, label %.lr.ph52.us.preheader155, label %vector.body

vector.body:                                      ; preds = %.lr.ph52.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph52.us.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ab, align 8, !tbaa !38
  store <2 x i64> splat (i64 -1), ptr %i.ac, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> zeroinitializer, ptr %i.ad, align 8, !tbaa !38
  store <2 x i64> zeroinitializer, ptr %i.ae, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit47.us, label %.lr.ph52.us.preheader155

.lr.ph52.us.preheader155:                         ; preds = %.lr.ph52.us.preheader, %middle.block
  %indvars.iv130.ph = phi i64 [ 0, %.lr.ph52.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph52.us

.preheader.us.preheader:                          ; preds = %.lr.ph56.split.split.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.m, i1 false), !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.m, i1 false), !tbaa !38
  br label %.loopexit47.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader156, %.lr.ph.us
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %.lr.ph.us ], [ %indvars.iv125.ph, %.lr.ph.us.preheader156 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv125
  store i64 0, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv125
  store i64 -1, ptr %i.ah, align 8, !tbaa !38
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %i.l
  br i1 %exitcond129.not, label %.loopexit47.us, label %.lr.ph.us, !llvm.loop !47

.lr.ph52.us:                                      ; preds = %.lr.ph52.us.preheader155, %.lr.ph52.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.lr.ph52.us ], [ %indvars.iv130.ph, %.lr.ph52.us.preheader155 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv130
  store i64 -1, ptr %i.ai, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv130
  store i64 0, ptr %i.aj, align 8, !tbaa !38
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %i.l
  br i1 %exitcond134.not, label %.loopexit47.us, label %.lr.ph52.us, !llvm.loop !48

.loopexit47.us:                                   ; preds = %.lr.ph.us, %.lr.ph52.us, %middle.block152, %middle.block, %.preheader.us.preheader
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %.critedge, label %.lr.ph56.split.split.us, !llvm.loop !0

.critedge:                                        ; preds = %.loopexit47.us, %.lr.ph56.split, %.lr.ph56, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Gia_ManInseSimulateObj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.b
  %.val174 = load i64, ptr %i.c, align 4          ; 9 uses
  %i.d = and i64 %.val174, 2147483648
  %.not.i = icmp eq i64 %i.d, 0                   ; 2 uses
  %i.e = and i64 %.val174, 536870911
  %i.f = icmp ne i64 %i.e, 536870911              ; 2 uses
  %narrow.i = and i1 %.not.i, %i.f
  br i1 %narrow.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 792
  %.val172 = load ptr, ptr %i.g, align 8, !tbaa !35 ; 4 uses
  %.val172340 = ptrtoaddr ptr %.val172 to i64     ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 808
  %.val173 = load i32, ptr %i.h, align 8, !tbaa !36 ; 5 uses
  %i.i = shl i32 %.val173, 1                      ; 3 uses
  %i.j = mul i32 %i.i, %1
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.val172, i64 %i.k ; 5 uses
  %i.m = sext i32 %.val173 to i64                 ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = trunc i64 %.val174 to i32                ; 2 uses
  %i.p = and i32 %i.o, 536870912
  %.not142 = icmp eq i32 %i.p, 0                  ; 2 uses
  %i.q = and i32 %i.o, 536870911
  %i.r = sub nsw i32 %1, %i.q
  %i.s = mul nsw i32 %i.i, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.val172, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.m ; 2 uses
  %i.w = and i64 %.val174, 2305843009213693952
  %.not143 = icmp eq i64 %i.w, 0                  ; 2 uses
  %.248 = select i1 %.not142, ptr %i.u, ptr %i.v  ; 5 uses
  %.248341 = ptrtoaddr ptr %.248 to i64           ; 2 uses
  %.249 = select i1 %.not142, ptr %i.v, ptr %i.u  ; 5 uses
  %.249343 = ptrtoaddr ptr %.249 to i64           ; 2 uses
  %i.x = lshr i64 %.val174, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = and i32 %i.y, 536870911
  %i.aa = sub nsw i32 %1, %i.z
  %i.ab = mul nsw i32 %i.i, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val172, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.m ; 2 uses
  %.238 = select i1 %.not143, ptr %i.ad, ptr %i.ae ; 5 uses
  %.238342 = ptrtoaddr ptr %.238 to i64           ; 2 uses
  %.239 = select i1 %.not143, ptr %i.ae, ptr %i.ad ; 5 uses
  %.239344 = ptrtoaddr ptr %.239 to i64           ; 2 uses
  %i.af = icmp sgt i32 %.val173, 0
  br i1 %i.af, label %.lr.ph209.preheader, label %.loopexit

.lr.ph209.preheader:                              ; preds = %bb.b
  %wide.trip.count231 = zext nneg i32 %.val173 to i64 ; 5 uses
  %min.iters.check346 = icmp ult i32 %.val173, 40
  br i1 %min.iters.check346, label %.lr.ph209.preheader381, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph209.preheader
  %i.ag = shl nsw i64 %i.k, 3                     ; 4 uses
  %i.ah = add i64 %i.ag, %.val172340              ; 2 uses
  %i.ai = sub i64 %.248341, %i.ah
  %diff.check349.a = icmp ugt i64 %i.ai, -32
  %i.aj = sub i64 %.238342, %i.ah
  %diff.check351.a = icmp ugt i64 %i.aj, -32
  %conflict.rdx352.a = or i1 %diff.check349.a, %diff.check351.a
  %i.ak = add i64 %i.ag, %.val172340
  %i.al = sub i64 %i.ak, %.249343
  %diff.check353 = icmp ugt i64 %i.al, -32
  %conflict.rdx354 = or i1 %conflict.rdx352.a, %diff.check353
  %i.am = add i64 %i.ag, %.val172340
  %i.an = sub i64 %i.am, %.239344
  %diff.check355 = icmp ugt i64 %i.an, -32
  %conflict.rdx356 = or i1 %conflict.rdx354, %diff.check355
  %2 = shl nuw nsw i64 %i.m, 3
  %i.ao = add i64 %2, %.val172340
  %i.ap = add i64 %i.ao, %i.ag                    ; 4 uses
  %i.aq = sub i64 %.248341, %i.ap
  %diff.check357 = icmp ugt i64 %i.aq, -32
  %conflict.rdx358 = or i1 %conflict.rdx356, %diff.check357
  %i.ar = sub i64 %.238342, %i.ap
  %diff.check359 = icmp ugt i64 %i.ar, -32
  %conflict.rdx360 = or i1 %conflict.rdx358, %diff.check359
  %i.as = sub i64 %.249343, %i.ap
  %diff.check361 = icmp ugt i64 %i.as, -32
  %conflict.rdx362 = or i1 %conflict.rdx360, %diff.check361
  %i.at = sub i64 %.239344, %i.ap
  %diff.check363 = icmp ugt i64 %i.at, -32
  %conflict.rdx364 = or i1 %conflict.rdx362, %diff.check363
  br i1 %conflict.rdx364, label %.lr.ph209.preheader381, label %vector.ph365

vector.ph365:                                     ; preds = %vector.memcheck347
  %n.vec366 = and i64 %wide.trip.count231, 2147483644 ; 3 uses
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph365
  %index368 = phi i64 [ 0, %vector.ph365 ], [ %index.next377, %vector.body367 ] ; 7 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %index368 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load369 = load <2 x i64>, ptr %i.au, align 8, !tbaa !38
  %wide.load370 = load <2 x i64>, ptr %i.av, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %index368 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load371 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !38
  %wide.load372 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !38
  %i.ay = or <2 x i64> %wide.load371, %wide.load369
  %i.az = or <2 x i64> %wide.load372, %wide.load370
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index368 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %i.ay, ptr %i.ba, align 8, !tbaa !38
  store <2 x i64> %i.az, ptr %i.bb, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %index368 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load373 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !38
  %wide.load374 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %index368 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load375 = load <2 x i64>, ptr %i.be, align 8, !tbaa !38
  %wide.load376 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !38
  %i.bg = and <2 x i64> %wide.load375, %wide.load373
  %i.bh = and <2 x i64> %wide.load376, %wide.load374
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index368 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x i64> %i.bg, ptr %i.bi, align 8, !tbaa !38
  store <2 x i64> %i.bh, ptr %i.bj, align 8, !tbaa !38
  %index.next377 = add nuw i64 %index368, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next377, %n.vec366
  br i1 %i.bk, label %middle.block378, label %vector.body367, !llvm.loop !49

middle.block378:                                  ; preds = %vector.body367
  %cmp.n379 = icmp eq i64 %n.vec366, %wide.trip.count231
  br i1 %cmp.n379, label %.loopexit, label %.lr.ph209.preheader381

.lr.ph209.preheader381:                           ; preds = %vector.memcheck347, %.lr.ph209.preheader, %middle.block378
  %indvars.iv228.ph = phi i64 [ 0, %vector.memcheck347 ], [ 0, %.lr.ph209.preheader ], [ %n.vec366, %middle.block378 ] ; 9 uses
  %xtraiter391 = and i64 %wide.trip.count231, 1
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol

.lr.ph209.prol:                                   ; preds = %.lr.ph209.preheader381
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %indvars.iv228.ph
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %indvars.iv228.ph
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !38
  %i.bp = or i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv228.ph
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %indvars.iv228.ph
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %indvars.iv228.ph
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.bv = and i64 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv228.ph
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !38
  %indvars.iv.next229.prol = or disjoint i64 %indvars.iv228.ph, 1
  br label %.lr.ph209.prol.loopexit

.lr.ph209.prol.loopexit:                          ; preds = %.lr.ph209.prol, %.lr.ph209.preheader381
  %indvars.iv228.unr = phi i64 [ %indvars.iv228.ph, %.lr.ph209.preheader381 ], [ %indvars.iv.next229.prol, %.lr.ph209.prol ]
  %i.bx = add nsw i64 %wide.trip.count231, -1
  %i.by = icmp eq i64 %indvars.iv228.ph, %i.bx
  br i1 %i.by, label %.loopexit, label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209
  %indvars.iv228 = phi i64 [ %indvars.iv.next229.1, %.lr.ph209 ], [ %indvars.iv228.unr, %.lr.ph209.prol.loopexit ] ; 8 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %indvars.iv228
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !38
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %indvars.iv228
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !38
  %i.cd = or i64 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv228
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !38
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %indvars.iv228
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %indvars.iv228
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !38
  %i.cj = and i64 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv228
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !38
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 6 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %indvars.iv.next229
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %indvars.iv.next229
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.cp = or i64 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next229
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %indvars.iv.next229
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %indvars.iv.next229
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !38
  %i.cv = and i64 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next229
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !38
  %indvars.iv.next229.1 = add nuw nsw i64 %indvars.iv228, 2 ; 2 uses
  %exitcond232.not.1 = icmp eq i64 %indvars.iv.next229.1, %wide.trip.count231
  br i1 %exitcond232.not.1, label %.loopexit, label %.lr.ph209, !llvm.loop !50

bb.c:                                             ; preds = %bb.a
  %.not.i.not = xor i1 %.not.i, true
  %narrow.i193 = and i1 %i.f, %.not.i.not
  br i1 %narrow.i193, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cx = getelementptr i8, ptr %0, i64 792
  %.val158 = load ptr, ptr %i.cx, align 8, !tbaa !35 ; 3 uses
  %.val158290 = ptrtoaddr ptr %.val158 to i64     ; 3 uses
  %i.cy = getelementptr i8, ptr %0, i64 808
  %.val159 = load i32, ptr %i.cy, align 8, !tbaa !36 ; 5 uses
  %i.cz = shl i32 %.val159, 1                     ; 2 uses
  %i.da = mul i32 %i.cz, %1
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %.val158, i64 %i.db ; 5 uses
  %i.dd = sext i32 %.val159 to i64                ; 3 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd ; 4 uses
  %i.df = trunc i64 %.val174 to i32               ; 2 uses
  %i.dg = and i32 %i.df, 536870912
  %.not141 = icmp eq i32 %i.dg, 0                 ; 2 uses
  %i.dh = and i32 %i.df, 536870911
  %i.di = sub nsw i32 %1, %i.dh
  %i.dj = mul nsw i32 %i.cz, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %.val158, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dd ; 2 uses
  %. = select i1 %.not141, ptr %i.dl, ptr %i.dm   ; 5 uses
  %.291 = ptrtoaddr ptr %. to i64                 ; 2 uses
  %.247 = select i1 %.not141, ptr %i.dm, ptr %i.dl ; 5 uses
  %.247292 = ptrtoaddr ptr %.247 to i64           ; 2 uses
  %i.dn = icmp sgt i32 %.val159, 0
  br i1 %i.dn, label %.lr.ph207.preheader, label %.loopexit

.lr.ph207.preheader:                              ; preds = %bb.d
  %wide.trip.count226 = zext nneg i32 %.val159 to i64 ; 5 uses
  %min.iters.check294 = icmp ult i32 %.val159, 36
  br i1 %min.iters.check294, label %.lr.ph207.preheader382, label %vector.memcheck295

vector.memcheck295:                               ; preds = %.lr.ph207.preheader
  %i.do = shl nsw i64 %i.db, 3                    ; 3 uses
  %i.dp = add i64 %i.do, %.val158290
  %i.dq = sub i64 %.291, %i.dp
  %diff.check297 = icmp ugt i64 %i.dq, -32
  %i.dr = add i64 %i.do, %.val158290
  %i.ds = sub i64 %i.dr, %.247292
  %diff.check299 = icmp ugt i64 %i.ds, -32
  %conflict.rdx300 = or i1 %diff.check297, %diff.check299
  %3 = shl nuw nsw i64 %i.dd, 3
  %i.dt = add i64 %3, %.val158290
  %i.du = add i64 %i.dt, %i.do                    ; 2 uses
  %i.dv = sub i64 %.291, %i.du
  %diff.check301 = icmp ugt i64 %i.dv, -32
  %conflict.rdx302 = or i1 %conflict.rdx300, %diff.check301
  %i.dw = sub i64 %.247292, %i.du
  %diff.check303 = icmp ugt i64 %i.dw, -32
  %conflict.rdx304 = or i1 %conflict.rdx302, %diff.check303
  br i1 %conflict.rdx304, label %.lr.ph207.preheader382, label %vector.ph305

vector.ph305:                                     ; preds = %vector.memcheck295
  %n.vec306 = and i64 %wide.trip.count226, 2147483644 ; 3 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next313, %vector.body307 ] ; 5 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %., i64 %index308 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load309 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !38
  %wide.load310 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !38
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index308 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x i64> %wide.load309, ptr %i.dz, align 8, !tbaa !38
  store <2 x i64> %wide.load310, ptr %i.ea, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.247, i64 %index308 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load311 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !38
  %wide.load312 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index308 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x i64> %wide.load311, ptr %i.ed, align 8, !tbaa !38
  store <2 x i64> %wide.load312, ptr %i.ee, align 8, !tbaa !38
  %index.next313 = add nuw i64 %index308, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next313, %n.vec306
  br i1 %i.ef, label %middle.block314, label %vector.body307, !llvm.loop !51

middle.block314:                                  ; preds = %vector.body307
  %cmp.n315 = icmp eq i64 %n.vec306, %wide.trip.count226
  br i1 %cmp.n315, label %.loopexit, label %.lr.ph207.preheader382

.lr.ph207.preheader382:                           ; preds = %vector.memcheck295, %.lr.ph207.preheader, %middle.block314
  %indvars.iv223.ph = phi i64 [ 0, %vector.memcheck295 ], [ 0, %.lr.ph207.preheader ], [ %n.vec306, %middle.block314 ] ; 7 uses
  %xtraiter389 = and i64 %wide.trip.count226, 1
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph207.prol.loopexit, label %.lr.ph207.prol

.lr.ph207.prol:                                   ; preds = %.lr.ph207.preheader382
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %., i64 %indvars.iv223.ph
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !38
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv223.ph
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.247, i64 %indvars.iv223.ph
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !38
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv223.ph
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !38
  %indvars.iv.next224.prol = or disjoint i64 %indvars.iv223.ph, 1
  br label %.lr.ph207.prol.loopexit

.lr.ph207.prol.loopexit:                          ; preds = %.lr.ph207.prol, %.lr.ph207.preheader382
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %.lr.ph207.preheader382 ], [ %indvars.iv.next224.prol, %.lr.ph207.prol ]
  %i.em = add nsw i64 %wide.trip.count226, -1
  %i.en = icmp eq i64 %indvars.iv223.ph, %i.em
  br i1 %i.en, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.prol.loopexit, %.lr.ph207
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.1, %.lr.ph207 ], [ %indvars.iv223.unr, %.lr.ph207.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %., i64 %indvars.iv223
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !38
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv223
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.247, i64 %indvars.iv223
  %i.es = load i64, ptr %i.er, align 8, !tbaa !38
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv223
  store i64 %i.es, ptr %i.et, align 8, !tbaa !38
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %., i64 %indvars.iv.next224
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !38
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next224
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !38
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.247, i64 %indvars.iv.next224
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next224
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !38
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 2 uses
  %exitcond227.not.1 = icmp eq i64 %indvars.iv.next224.1, %wide.trip.count226
  br i1 %exitcond227.not.1, label %.loopexit, label %.lr.ph207, !llvm.loop !52

bb.e:                                             ; preds = %bb.c
  %i.fa = and i64 %.val174, 2684354559
  %narrow.i194.not = icmp eq i64 %i.fa, 2684354559
  br i1 %narrow.i194.not, label %Gia_ObjIsPi.exit, label %bb.g

Gia_ObjIsPi.exit:                                 ; preds = %bb.e
  %i.fb = lshr i64 %.val174, 32
  %i.fc = trunc nuw i64 %i.fb to i32
  %i.fd = and i32 %i.fc, 536870911                ; 2 uses
  %i.fe = getelementptr i8, ptr %0, i64 16
  %.val4.i = load i32, ptr %i.fe, align 8, !tbaa !30
  %i.ff = getelementptr i8, ptr %0, i64 64
  %.val5.i = load ptr, ptr %i.ff, align 8, !tbaa !42
  %i.fg = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.fg, align 4, !tbaa !34 ; 2 uses
  %i.fh = sub nsw i32 %.val5.val.i, %.val4.i
  %.not = icmp slt i32 %i.fd, %i.fh
  br i1 %.not, label %bb.f, label %Gia_ObjIsPi.exit.thread

bb.f:                                             ; preds = %Gia_ObjIsPi.exit
  %i.fi = getelementptr i8, ptr %0, i64 792
  %.val152 = load ptr, ptr %i.fi, align 8, !tbaa !35
  %i.fj = getelementptr i8, ptr %0, i64 808       ; 2 uses
  %.val153 = load i32, ptr %i.fj, align 8, !tbaa !36 ; 3 uses
  %i.fk = shl i32 %1, 1
  %i.fl = mul i32 %i.fk, %.val153
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %.val152, i64 %i.fm ; 2 uses
  %i.fo = zext nneg i32 %.val153 to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = icmp sgt i32 %.val153, 0
  br i1 %i.fq, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %bb.f, %.lr.ph205
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %.lr.ph205 ], [ 0, %bb.f ] ; 3 uses
  %i.fr = tail call i64 @Gia_ManRandomW(i32 noundef 0) #16 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv220
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !38
  %i.ft = xor i64 %i.fr, -1
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv220
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !38
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.fv = load i32, ptr %i.fj, align 8, !tbaa !36
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next221, %i.fw
  br i1 %i.fx, label %.lr.ph205, label %.loopexit, !llvm.loop !53

Gia_ObjIsPi.exit.thread:                          ; preds = %Gia_ObjIsPi.exit
  %i.fy = getelementptr i8, ptr %0, i64 72
  %.val6.i = load ptr, ptr %i.fy, align 8, !tbaa !32 ; 2 uses
  %i.fz = getelementptr i8, ptr %.val6.i, i64 4
  %.val6.val.i = load i32, ptr %i.fz, align 4, !tbaa !34
  %i.ga = add i32 %.val6.val.i, %i.fd
  %i.gb = sub i32 %i.ga, %.val5.val.i
  %i.gc = getelementptr i8, ptr %.val6.i, i64 8
  %.val4.val.i = load ptr, ptr %i.gc, align 8, !tbaa !33
  %i.gd = sext i32 %i.gb to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %.val4.val.i, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !37
  %i.gg = getelementptr i8, ptr %0, i64 792
  %.val150 = load ptr, ptr %i.gg, align 8, !tbaa !35 ; 2 uses
  %i.gh = getelementptr i8, ptr %0, i64 808
  %.val151 = load i32, ptr %i.gh, align 8, !tbaa !36 ; 5 uses
  %i.gi = shl i32 %.val151, 1                     ; 2 uses
  %i.gj = mul i32 %i.gi, %1
  %i.gk = sext i32 %i.gj to i64                   ; 4 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %.val150, i64 %i.gk ; 5 uses
  %i.gm = sext i32 %.val151 to i64                ; 4 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gm ; 4 uses
  %i.go = mul i32 %i.gi, %i.gf
  %i.gp = sext i32 %i.go to i64                   ; 4 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %.val150, i64 %i.gp ; 5 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gm ; 4 uses
  %i.gs = icmp sgt i32 %.val151, 0
  br i1 %i.gs, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %Gia_ObjIsPi.exit.thread
  %wide.trip.count218 = zext nneg i32 %.val151 to i64 ; 5 uses
  %min.iters.check260 = icmp ult i32 %.val151, 30
  br i1 %min.iters.check260, label %.lr.ph203.preheader385, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph203.preheader
  %i.gt = sub nsw i64 %i.gp, %i.gk
  %i.gu = shl nsw i64 %i.gt, 3
  %diff.check261 = icmp ugt i64 %i.gu, -32
  %i.gv = add nsw i64 %i.gm, %i.gp
  %i.gw = sub nsw i64 %i.gv, %i.gk
  %i.gx = shl nsw i64 %i.gw, 3
  %i.gy = add nsw i64 %i.gx, -1
  %diff.check262 = icmp ult i64 %i.gy, 31
  %conflict.rdx263 = or i1 %diff.check261, %diff.check262
  %i.gz = add nsw i64 %i.gm, %i.gk
  %i.ha = sub nsw i64 %i.gz, %i.gp
  %i.hb = shl nsw i64 %i.ha, 3
  %i.hc = add nsw i64 %i.hb, -1
  %diff.check264 = icmp ult i64 %i.hc, 31
  %conflict.rdx265 = or i1 %conflict.rdx263, %diff.check264
  br i1 %conflict.rdx265, label %.lr.ph203.preheader385, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck
  %n.vec267 = and i64 %wide.trip.count218, 2147483644 ; 3 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next273, %vector.body268 ] ; 5 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %index269 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load = load <2 x i64>, ptr %i.hd, align 8, !tbaa !38
  %wide.load270 = load <2 x i64>, ptr %i.he, align 8, !tbaa !38
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %index269 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <2 x i64> %wide.load, ptr %i.hf, align 8, !tbaa !38
  store <2 x i64> %wide.load270, ptr %i.hg, align 8, !tbaa !38
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index269 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load271 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !38
  %wide.load272 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !38
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index269 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x i64> %wide.load271, ptr %i.hj, align 8, !tbaa !38
  store <2 x i64> %wide.load272, ptr %i.hk, align 8, !tbaa !38
  %index.next273 = add nuw i64 %index269, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next273, %n.vec267
  br i1 %i.hl, label %middle.block274, label %vector.body268, !llvm.loop !54

middle.block274:                                  ; preds = %vector.body268
  %cmp.n275 = icmp eq i64 %n.vec267, %wide.trip.count218
  br i1 %cmp.n275, label %.loopexit, label %.lr.ph203.preheader385

.lr.ph203.preheader385:                           ; preds = %vector.memcheck, %.lr.ph203.preheader, %middle.block274
  %indvars.iv215.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph203.preheader ], [ %n.vec267, %middle.block274 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count218, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol

.lr.ph203.prol:                                   ; preds = %.lr.ph203.preheader385
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv215.ph
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !38
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv215.ph
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !38
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv215.ph
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !38
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv215.ph
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !38
  %indvars.iv.next216.prol = or disjoint i64 %indvars.iv215.ph, 1
  br label %.lr.ph203.prol.loopexit

.lr.ph203.prol.loopexit:                          ; preds = %.lr.ph203.prol, %.lr.ph203.preheader385
  %indvars.iv215.unr = phi i64 [ %indvars.iv215.ph, %.lr.ph203.preheader385 ], [ %indvars.iv.next216.prol, %.lr.ph203.prol ]
  %i.hs = add nsw i64 %wide.trip.count218, -1
  %i.ht = icmp eq i64 %indvars.iv215.ph, %i.hs
  br i1 %i.ht, label %.loopexit, label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203
  %indvars.iv215 = phi i64 [ %indvars.iv.next216.1, %.lr.ph203 ], [ %indvars.iv215.unr, %.lr.ph203.prol.loopexit ] ; 6 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv215
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !38
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv215
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !38
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv215
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv215
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !38
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 4 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next216
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !38
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next216
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !38
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next216
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !38
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next216
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !38
  %indvars.iv.next216.1 = add nuw nsw i64 %indvars.iv215, 2 ; 2 uses
  %exitcond219.not.1 = icmp eq i64 %indvars.iv.next216.1, %wide.trip.count218
  br i1 %exitcond219.not.1, label %.loopexit, label %.lr.ph203, !llvm.loop !55

bb.g:                                             ; preds = %bb.e
  %i.ig = and i64 %.val174, 2305843005455597567
  %narrow.i195.not = icmp eq i64 %i.ig, 2305843005455597567
  br i1 %narrow.i195.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ih = getelementptr i8, ptr %0, i64 792
  %.val146 = load ptr, ptr %i.ih, align 8, !tbaa !35
  %i.ii = getelementptr i8, ptr %0, i64 808
  %.val147 = load i32, ptr %i.ii, align 8, !tbaa !36 ; 5 uses
  %i.ij = shl i32 %1, 1
  %i.ik = mul i32 %i.ij, %.val147
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %.val146, i64 %i.il ; 3 uses
  %i.in = zext nneg i32 %.val147 to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.in ; 2 uses
  %i.ip = icmp sgt i32 %.val147, 0
  br i1 %i.ip, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %.val147 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val147, 4
  br i1 %min.iters.check, label %.lr.ph.preheader387, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %index ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.iq, align 8, !tbaa !38
  store <2 x i64> splat (i64 -1), ptr %i.ir, align 8, !tbaa !38
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %index ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <2 x i64> zeroinitializer, ptr %i.is, align 8, !tbaa !38
  store <2 x i64> zeroinitializer, ptr %i.it, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader387

.lr.ph.preheader387:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader387, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader387 ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv
  store i64 -1, ptr %i.iv, align 8, !tbaa !38
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv
  store i64 0, ptr %i.iw, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !57

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph203.prol.loopexit, %.lr.ph203, %.lr.ph205, %.lr.ph207.prol.loopexit, %.lr.ph207, %.lr.ph209.prol.loopexit, %.lr.ph209, %middle.block, %middle.block274, %middle.block314, %middle.block378, %bb.h, %Gia_ObjIsPi.exit.thread, %bb.f, %bb.d, %bb.b, %bb.g
  ret void
}

declare i64 @Gia_ManRandomW(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Gia_ManInseHighestScore(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.c = shl nsw i32 %i.b, 6                      ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #17 ; 8 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val52 = load i32, ptr %i.f, align 8, !tbaa !30 ; 4 uses
  %i.g = icmp sgt i32 %.val52, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32
  %.val55 = load ptr, ptr %i.h, align 8, !tbaa !31
  %.not = icmp eq ptr %.val55, null
  %i.i = shl i32 %i.b, 1
  %i.j = sext i32 %i.b to i64
  %i.k = icmp slt i32 %i.b, 1
  %brmerge = or i1 %.not, %i.k
  br i1 %brmerge, label %.critedge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %0, i64 792
  %i.m = getelementptr i8, ptr %0, i64 72
  %.val54 = load ptr, ptr %i.m, align 8, !tbaa !32 ; 2 uses
  %i.n = getelementptr i8, ptr %.val54, i64 8
  %.val56.val = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr i8, ptr %.val54, i64 4
  %.val54.val = load i32, ptr %i.o, align 4, !tbaa !34
  %invariant.op = sub i32 %.val54.val, %.val52
  %.val58 = load ptr, ptr %i.l, align 8, !tbaa !35
  %wide.trip.count82 = zext nneg i32 %.val52 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader.lr.ph

end_hunk_0
