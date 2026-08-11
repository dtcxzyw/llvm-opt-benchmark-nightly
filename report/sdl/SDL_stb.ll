inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@stbi__convert_format:bb.a
  %i.amn = getelementptr inbounds nuw i8, ptr %.8152217, i64 1
  %i.amo = load i8, ptr %i.amn, align 1
  %i.amp = zext i8 %i.amo to i16
  %i.amq = getelementptr inbounds nuw i8, ptr %.8152217, i64 2
  %i.amr = load i8, ptr %i.amq, align 1
  %i.ams = zext i8 %i.amr to i16
  %i.amt = mul nuw nsw i16 %i.amm, 77
  %i.amu = mul nuw i16 %i.amp, 150
  %i.amv = add nuw i16 %i.amu, %i.amt
  %i.amw = mul nuw nsw i16 %i.ams, 29
  %i.amx = add nuw i16 %i.amv, %i.amw
  %i.amy = lshr i16 %i.amx, 8
  %i.amz = trunc nuw i16 %i.amy to i8
  store i8 %i.amz, ptr %.8218, align 1
  %i.ana = getelementptr inbounds nuw i8, ptr %.8218, i64 1
  store i8 -1, ptr %i.ana, align 1
  %i.anb = getelementptr inbounds nuw i8, ptr %.8152217, i64 3
  %i.anc = getelementptr inbounds nuw i8, ptr %.8218, i64 2
  %.8169 = add i32 %.8169219, -1                  ; 2 uses
  %i.and = icmp sgt i32 %.8169, -1
  br i1 %i.and, label %.lr.ph220, label %.loopexit, !llvm.loop !201

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %.9170214 = phi i32 [ %.9170, %.lr.ph215 ], [ %.9170214.ph, %.lr.ph215.preheader ]
  %.9213 = phi ptr [ %i.anu, %.lr.ph215 ], [ %.9213.ph, %.lr.ph215.preheader ] ; 2 uses
  %.9153212 = phi ptr [ %i.ant, %.lr.ph215 ], [ %.9153212.ph, %.lr.ph215.preheader ] ; 4 uses
  %i.ane = load i8, ptr %.9153212, align 1
  %i.anf = zext i8 %i.ane to i16
  %i.ang = getelementptr inbounds nuw i8, ptr %.9153212, i64 1
  %i.anh = load i8, ptr %i.ang, align 1
  %i.ani = zext i8 %i.anh to i16
  %i.anj = getelementptr inbounds nuw i8, ptr %.9153212, i64 2
  %i.ank = load i8, ptr %i.anj, align 1
  %i.anl = zext i8 %i.ank to i16
  %i.anm = mul nuw nsw i16 %i.anf, 77
  %i.ann = mul nuw i16 %i.ani, 150
  %i.ano = add nuw i16 %i.ann, %i.anm
  %i.anp = mul nuw nsw i16 %i.anl, 29
  %i.anq = add nuw i16 %i.ano, %i.anp
  %i.anr = lshr i16 %i.anq, 8
  %i.ans = trunc nuw i16 %i.anr to i8
  store i8 %i.ans, ptr %.9213, align 1
  %i.ant = getelementptr inbounds nuw i8, ptr %.9153212, i64 4
  %i.anu = getelementptr inbounds nuw i8, ptr %.9213, i64 1
  %.9170 = add i32 %.9170214, -1                  ; 2 uses
  %i.anv = icmp sgt i32 %.9170, -1
  br i1 %i.anv, label %.lr.ph215, label %.loopexit, !llvm.loop !202

.lr.ph210:                                        ; preds = %.lr.ph210.preheader541, %.lr.ph210
  %.10171209 = phi i32 [ %.10171, %.lr.ph210 ], [ %.10171209.ph, %.lr.ph210.preheader541 ]
  %.10208 = phi ptr [ %i.aop, %.lr.ph210 ], [ %.10208.ph, %.lr.ph210.preheader541 ] ; 3 uses
  %.10154207 = phi ptr [ %i.aoo, %.lr.ph210 ], [ %.10154207.ph, %.lr.ph210.preheader541 ] ; 5 uses
  %i.anw = load i8, ptr %.10154207, align 1
  %i.anx = zext i8 %i.anw to i16
  %i.any = getelementptr inbounds nuw i8, ptr %.10154207, i64 1
  %i.anz = load i8, ptr %i.any, align 1
  %i.aoa = zext i8 %i.anz to i16
  %i.aob = getelementptr inbounds nuw i8, ptr %.10154207, i64 2
  %i.aoc = load i8, ptr %i.aob, align 1
  %i.aod = zext i8 %i.aoc to i16
  %i.aoe = mul nuw nsw i16 %i.anx, 77
  %i.aof = mul nuw i16 %i.aoa, 150
  %i.aog = add nuw i16 %i.aof, %i.aoe
  %i.aoh = mul nuw nsw i16 %i.aod, 29
  %i.aoi = add nuw i16 %i.aog, %i.aoh
  %i.aoj = lshr i16 %i.aoi, 8
  %i.aok = trunc nuw i16 %i.aoj to i8
  store i8 %i.aok, ptr %.10208, align 1
  %i.aol = getelementptr inbounds nuw i8, ptr %.10154207, i64 3
  %i.aom = load i8, ptr %i.aol, align 1
  %i.aon = getelementptr inbounds nuw i8, ptr %.10208, i64 1
  store i8 %i.aom, ptr %i.aon, align 1
  %i.aoo = getelementptr inbounds nuw i8, ptr %.10154207, i64 4
  %i.aop = getelementptr inbounds nuw i8, ptr %.10208, i64 2
  %.10171 = add i32 %.10171209, -1                ; 2 uses
  %i.aoq = icmp sgt i32 %.10171, -1
  br i1 %i.aoq, label %.lr.ph210, label %.loopexit, !llvm.loop !203

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.11172205 = phi i32 [ %.11172.1, %.lr.ph ], [ %.11172205.unr, %.lr.ph.prol.loopexit ]
  %.11204 = phi ptr [ %i.api, %.lr.ph ], [ %.11204.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %.11155203 = phi ptr [ %i.aph, %.lr.ph ], [ %.11155203.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.aor = load i8, ptr %.11155203, align 1
  store i8 %i.aor, ptr %.11204, align 1
  %i.aos = getelementptr inbounds nuw i8, ptr %.11155203, i64 1
  %i.aot = load i8, ptr %i.aos, align 1
  %i.aou = getelementptr inbounds nuw i8, ptr %.11204, i64 1
  store i8 %i.aot, ptr %i.aou, align 1
  %i.aov = getelementptr inbounds nuw i8, ptr %.11155203, i64 2
  %i.aow = load i8, ptr %i.aov, align 1
  %i.aox = getelementptr inbounds nuw i8, ptr %.11204, i64 2
  store i8 %i.aow, ptr %i.aox, align 1
  %i.aoy = getelementptr inbounds nuw i8, ptr %.11155203, i64 4
  %i.aoz = getelementptr inbounds nuw i8, ptr %.11204, i64 3
  %i.apa = load i8, ptr %i.aoy, align 1
  store i8 %i.apa, ptr %i.aoz, align 1
  %i.apb = getelementptr inbounds nuw i8, ptr %.11155203, i64 5
  %i.apc = load i8, ptr %i.apb, align 1
  %i.apd = getelementptr inbounds nuw i8, ptr %.11204, i64 4
  store i8 %i.apc, ptr %i.apd, align 1
  %i.ape = getelementptr inbounds nuw i8, ptr %.11155203, i64 6
  %i.apf = load i8, ptr %i.ape, align 1
  %i.apg = getelementptr inbounds nuw i8, ptr %.11204, i64 5
  store i8 %i.apf, ptr %i.apg, align 1
  %i.aph = getelementptr inbounds nuw i8, ptr %.11155203, i64 8
  %i.api = getelementptr inbounds nuw i8, ptr %.11204, i64 6
  %.11172.1 = add i32 %.11172205, -2              ; 2 uses
  %i.apj = icmp sgt i32 %.11172.1, -1
  br i1 %i.apj, label %.lr.ph, label %.loopexit, !llvm.loop !204

.critedge:                                        ; preds = %.lr.ph262
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.k) #13
  %i.apk = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.32) #13 ; 0 uses
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph210, %.lr.ph215, %.lr.ph220, %.lr.ph225, %.lr.ph230.prol.loopexit, %.lr.ph230, %.lr.ph235.prol.loopexit, %.lr.ph235, %.lr.ph240.prol.loopexit, %.lr.ph240, %.lr.ph245, %.lr.ph250.prol.loopexit, %.lr.ph250, %.lr.ph255.prol.loopexit, %.lr.ph255, %.lr.ph260, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block525, %middle.block451, %middle.block407, %vec.epilog.middle.block430, %middle.block, %vec.epilog.middle.block, %.preheader199, %.preheader197, %.preheader195, %.preheader193, %.preheader191, %.preheader189, %.preheader187, %.preheader185, %.preheader183, %.preheader181, %.preheader179, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !205

._crit_edge:                                      ; preds = %.loopexit, %.preheader201
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.b, %bb.a, %._crit_edge, %stbi__malloc_mad3.exit.thread
  %.2159 = phi ptr [ %i.k, %._crit_edge ], [ null, %bb.a ], [ null, %stbi__malloc_mad3.exit.thread ], [ null, %.critedge ], [ %0, %bb.b ]
  ret ptr %.2159
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__convert_format16(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 5) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %3, 0                        ; 13 uses
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread24.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %3
  %.not34.i.i = icmp samesign ugt i32 %2, %i.c
  br i1 %.not34.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread24.i.i

stbi__mul2sizes_valid.exit.thread24.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %3, %2                   ; 4 uses
  %i.e = or i32 %4, %i.d
  %or.cond.not.i16.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i.i, label %bb.d, label %stbi__malloc_mad4.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i
  %i.f = icmp eq i32 %4, 0
  br i1 %i.f, label %stbi__malloc_mad4.exit, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %4
  %.not.i.i = icmp samesign ugt i32 %i.d, %i.g
  %i.h = mul nsw i32 %i.d, %4
  %i.i = icmp ugt i32 %i.h, 1073741823
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit18.i.i
  %i.j = shl nuw i32 %i.d, 1
  %i.k = mul i32 %i.j, %4
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.l) #13 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %stbi__malloc_mad4.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad4.exit
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.p = shl nsw i32 %1, 3
  %i.q = or disjoint i32 %i.p, %2                 ; 2 uses
  %.11170198 = add nsw i32 %3, -1                 ; 14 uses
  switch i32 %i.q, label %.critedge [
    i32 10, label %.lr.ph258.split
    i32 11, label %.lr.ph258.split
    i32 12, label %.lr.ph258.split
    i32 17, label %.lr.ph258.split
    i32 19, label %.lr.ph258.split
    i32 20, label %.lr.ph258.split
    i32 28, label %.lr.ph258.split
    i32 25, label %.lr.ph258.split
    i32 26, label %.lr.ph258.split
    i32 33, label %.lr.ph258.split
    i32 34, label %.lr.ph258.split
    i32 35, label %.lr.ph258.split
  ]

.lr.ph258.split:                                  ; preds = %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258
  %wide.trip.count = zext nneg i32 %4 to i64
  %min.iters.check315 = icmp ult i32 %3, 9
  %i.r = zext nneg i32 %3 to i64                  ; 2 uses
  %i.s = and i64 %i.r, 7                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 8, i64 %i.s
  %n.vec317 = sub nsw i64 %i.r, %i.u              ; 4 uses
  %i.v = trunc i64 %n.vec317 to i32
  %i.w = sub i32 %.11170198, %i.v
  %i.x = shl nsw i64 %n.vec317, 1
  %i.y = shl nsw i64 %n.vec317, 2
  %i.z = zext nneg i32 %3 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.z, 2147483640               ; 5 uses
  %i.aa = trunc nuw nsw i64 %n.vec to i32
  %i.ab = sub i32 %.11170198, %i.aa
  %i.ac = shl nuw nsw i64 %n.vec, 2
  %i.ad = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %bb.b, %stbi__malloc_mad4.exit
  tail call void @SDL_free_REAL(ptr noundef %0) #13
  %i.ae = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = mul i32 %3, %i.af                       ; 2 uses
  %i.ah = mul i32 %i.ag, %1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai ; 17 uses
  %i.ak = mul i32 %i.ag, %2
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.al ; 17 uses
  switch i32 %i.q, label %.preheader195 [
    i32 10, label %.preheader
    i32 11, label %.preheader175
    i32 12, label %.preheader177
    i32 17, label %.preheader179
    i32 19, label %.preheader181
    i32 20, label %.preheader183
    i32 28, label %.preheader185
    i32 25, label %.preheader187
    i32 26, label %.preheader189
    i32 33, label %.preheader191
    i32 34, label %.preheader193
  ]

.preheader195:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph206

.preheader191:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph211

.preheader189:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph216

.preheader187:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph221

.preheader185:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph226

.preheader183:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph231

.preheader181:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph236

.preheader179:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %.preheader179
  br i1 %min.iters.check315, label %.lr.ph241.preheader334, label %vector.ph316

.lr.ph241.preheader334:                           ; preds = %vector.body318, %.lr.ph241.preheader
  %.3162240.ph = phi i32 [ %.11170198, %.lr.ph241.preheader ], [ %i.w, %vector.body318 ]
  %.3239.ph = phi ptr [ %i.am, %.lr.ph241.preheader ], [ %i.an, %vector.body318 ]
  %.3145238.ph = phi ptr [ %i.aj, %.lr.ph241.preheader ], [ %i.ao, %vector.body318 ]
  br label %.lr.ph241

vector.ph316:                                     ; preds = %.lr.ph241.preheader
  %i.an = getelementptr i8, ptr %i.am, i64 %i.x
  %i.ao = getelementptr i8, ptr %i.aj, i64 %i.y
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next325, %vector.body318 ] ; 3 uses
  %i.ap = shl i64 %index319, 1
  %next.gep320 = getelementptr i8, ptr %i.am, i64 %i.ap ; 2 uses
  %i.aq = shl i64 %index319, 2                    ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.aj, i64 %i.aq
  %i.ar = getelementptr i8, ptr %i.aj, i64 %i.aq
  %next.gep322 = getelementptr i8, ptr %i.ar, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep321, align 2
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec323 = load <8 x i16>, ptr %next.gep322, align 2
  %strided.vec324 = shufflevector <8 x i16> %wide.vec323, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.as = getelementptr i8, ptr %next.gep320, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep320, align 2
  store <4 x i16> %strided.vec324, ptr %i.as, align 2
  %index.next325 = add nuw i64 %index319, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next325, %n.vec317
  br i1 %i.at, label %.lr.ph241.preheader334, label %vector.body318, !llvm.loop !206

.preheader177:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph246

.preheader175:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph251

.preheader:                                       ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph256.preheader

.lr.ph256.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph256.preheader330, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph256.preheader
  %i.au = getelementptr i8, ptr %i.am, i64 %i.ac
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw
  %next.gep308 = getelementptr i8, ptr %i.ax, i64 16
  %i.ay = shl i64 %index, 1
  %next.gep309 = getelementptr i8, ptr %i.aj, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep309, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep309, align 2
  %wide.load310 = load <4 x i16>, ptr %i.az, align 2
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  %interleaved.vec311 = shufflevector <4 x i16> %wide.load310, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec311, ptr %next.gep308, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph256.preheader330

.lr.ph256.preheader330:                           ; preds = %.lr.ph256.preheader, %middle.block
  %.0159255.ph = phi i32 [ %.11170198, %.lr.ph256.preheader ], [ %i.ab, %middle.block ]
  %.0254.ph = phi ptr [ %i.am, %.lr.ph256.preheader ], [ %i.au, %middle.block ]
  %.0142253.ph = phi ptr [ %i.aj, %.lr.ph256.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader330, %.lr.ph256
  %.0159255 = phi i32 [ %.0159, %.lr.ph256 ], [ %.0159255.ph, %.lr.ph256.preheader330 ]
  %.0254 = phi ptr [ %i.be, %.lr.ph256 ], [ %.0254.ph, %.lr.ph256.preheader330 ] ; 3 uses
  %.0142253 = phi ptr [ %i.bd, %.lr.ph256 ], [ %.0142253.ph, %.lr.ph256.preheader330 ] ; 2 uses
  %i.bb = load i16, ptr %.0142253, align 2
  store i16 %i.bb, ptr %.0254, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.0254, i64 2
  store i16 -1, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.0142253, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %.0254, i64 4
  %.0159 = add i32 %.0159255, -1                  ; 2 uses
  %i.bf = icmp sgt i32 %.0159, -1
  br i1 %i.bf, label %.lr.ph256, label %.loopexit, !llvm.loop !208

.lr.ph251:                                        ; preds = %.preheader175, %.lr.ph251
  %.1160250 = phi i32 [ %.1160, %.lr.ph251 ], [ %.11170198, %.preheader175 ]
  %.1249 = phi ptr [ %i.bk, %.lr.ph251 ], [ %i.am, %.preheader175 ] ; 4 uses
  %.1143248 = phi ptr [ %i.bj, %.lr.ph251 ], [ %i.aj, %.preheader175 ] ; 2 uses
  %i.bg = load i16, ptr %.1143248, align 2        ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1249, i64 4
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.1249, i64 2
  store i16 %i.bg, ptr %i.bi, align 2
  store i16 %i.bg, ptr %.1249, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.1143248, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.1249, i64 6
  %.1160 = add i32 %.1160250, -1                  ; 2 uses
  %i.bl = icmp sgt i32 %.1160, -1
  br i1 %i.bl, label %.lr.ph251, label %.loopexit, !llvm.loop !209

.lr.ph246:                                        ; preds = %.preheader177, %.lr.ph246
  %.2161245 = phi i32 [ %.2161, %.lr.ph246 ], [ %.11170198, %.preheader177 ]
  %.2244 = phi ptr [ %i.bq, %.lr.ph246 ], [ %i.am, %.preheader177 ] ; 2 uses
  %.2144243 = phi ptr [ %i.bp, %.lr.ph246 ], [ %i.aj, %.preheader177 ] ; 2 uses
  %i.bm = load i16, ptr %.2144243, align 2
  %i.bn = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.bm, i64 0
  %i.bo = shufflevector <4 x i16> %i.bn, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.bo, ptr %.2244, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.2144243, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.2244, i64 8
  %.2161 = add i32 %.2161245, -1                  ; 2 uses
  %i.br = icmp sgt i32 %.2161, -1
  br i1 %i.br, label %.lr.ph246, label %.loopexit, !llvm.loop !210

.lr.ph241:                                        ; preds = %.lr.ph241.preheader334, %.lr.ph241
  %.3162240 = phi i32 [ %.3162, %.lr.ph241 ], [ %.3162240.ph, %.lr.ph241.preheader334 ]
  %.3239 = phi ptr [ %i.bu, %.lr.ph241 ], [ %.3239.ph, %.lr.ph241.preheader334 ] ; 2 uses
  %.3145238 = phi ptr [ %i.bt, %.lr.ph241 ], [ %.3145238.ph, %.lr.ph241.preheader334 ] ; 2 uses
  %i.bs = load i16, ptr %.3145238, align 2
  store i16 %i.bs, ptr %.3239, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %.3145238, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.3239, i64 2
  %.3162 = add i32 %.3162240, -1                  ; 2 uses
  %i.bv = icmp sgt i32 %.3162, -1
  br i1 %i.bv, label %.lr.ph241, label %.loopexit, !llvm.loop !211

.lr.ph236:                                        ; preds = %.preheader181, %.lr.ph236
  %.4163235 = phi i32 [ %.4163, %.lr.ph236 ], [ %.11170198, %.preheader181 ]
  %.4234 = phi ptr [ %i.ca, %.lr.ph236 ], [ %i.am, %.preheader181 ] ; 4 uses
  %.4146233 = phi ptr [ %i.bz, %.lr.ph236 ], [ %i.aj, %.preheader181 ] ; 2 uses
  %i.bw = load i16, ptr %.4146233, align 2        ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.4234, i64 4
  store i16 %i.bw, ptr %i.bx, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.4234, i64 2
end_hunk_0
