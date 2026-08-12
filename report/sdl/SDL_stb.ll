inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@stbi__convert_format:bb.a
  store i8 -1, ptr %i.alp, align 1
  %i.alq = getelementptr inbounds nuw i8, ptr %.6150227, i64 6
  %i.alr = getelementptr inbounds nuw i8, ptr %.6228, i64 8
  %.6167.1 = add i32 %.6167229, -2                ; 2 uses
  %i.als = icmp sgt i32 %.6167.1, -1
  br i1 %i.als, label %.lr.ph230, label %.loopexit, !llvm.loop !199

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %.lr.ph225
  %.7168224 = phi i32 [ %.7168, %.lr.ph225 ], [ %.7168224.ph, %.lr.ph225.preheader ]
  %.7223 = phi ptr [ %i.amj, %.lr.ph225 ], [ %.7223.ph, %.lr.ph225.preheader ] ; 2 uses
  %.7151222 = phi ptr [ %i.ami, %.lr.ph225 ], [ %.7151222.ph, %.lr.ph225.preheader ] ; 4 uses
  %i.alt = load i8, ptr %.7151222, align 1
  %i.alu = zext i8 %i.alt to i16
  %i.alv = getelementptr inbounds nuw i8, ptr %.7151222, i64 1
  %i.alw = load i8, ptr %i.alv, align 1
  %i.alx = zext i8 %i.alw to i16
  %i.aly = getelementptr inbounds nuw i8, ptr %.7151222, i64 2
  %i.alz = load i8, ptr %i.aly, align 1
  %i.ama = zext i8 %i.alz to i16
  %i.amb = mul nuw nsw i16 %i.alu, 77
  %i.amc = mul nuw i16 %i.alx, 150
  %i.amd = add nuw i16 %i.amc, %i.amb
  %i.ame = mul nuw nsw i16 %i.ama, 29
  %i.amf = add nuw i16 %i.amd, %i.ame
  %i.amg = lshr i16 %i.amf, 8
  %i.amh = trunc nuw i16 %i.amg to i8
  store i8 %i.amh, ptr %.7223, align 1
  %i.ami = getelementptr inbounds nuw i8, ptr %.7151222, i64 3
  %i.amj = getelementptr inbounds nuw i8, ptr %.7223, i64 1
  %.7168 = add i32 %.7168224, -1                  ; 2 uses
  %i.amk = icmp sgt i32 %.7168, -1
  br i1 %i.amk, label %.lr.ph225, label %.loopexit, !llvm.loop !200

.lr.ph220:                                        ; preds = %.lr.ph220.preheader538, %.lr.ph220
  %.8169219 = phi i32 [ %.8169, %.lr.ph220 ], [ %.8169219.ph, %.lr.ph220.preheader538 ]
  %.8218 = phi ptr [ %i.anc, %.lr.ph220 ], [ %.8218.ph, %.lr.ph220.preheader538 ] ; 3 uses
  %.8152217 = phi ptr [ %i.anb, %.lr.ph220 ], [ %.8152217.ph, %.lr.ph220.preheader538 ] ; 4 uses
  %i.aml = load i8, ptr %.8152217, align 1
  %i.amm = zext i8 %i.aml to i16
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
  %5 = icmp ugt i32 %i.h, 1073741823
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %5
  br i1 %or.cond.i, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit18.i.i
  %i.i = shl nuw i32 %i.d, 1
  %i.j = mul i32 %i.i, %4
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.k) #13 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %stbi__malloc_mad4.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad4.exit
  %i.n = icmp sgt i32 %4, 0
  br i1 %i.n, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.o = shl nsw i32 %1, 3
  %i.p = or disjoint i32 %i.o, %2                 ; 2 uses
  %.11170198 = add nsw i32 %3, -1                 ; 14 uses
  switch i32 %i.p, label %.critedge [
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
  %i.q = add nsw i32 %3, -2                       ; 2 uses
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.q, i32 -1)
  %i.s = sub i32 %i.q, %i.r                       ; 2 uses
  %min.iters.check315 = icmp ult i32 %i.s, 8
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.v = and i64 %i.u, 7                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 8, i64 %i.v
  %n.vec317 = sub nsw i64 %i.u, %i.x              ; 4 uses
  %i.y = trunc i64 %n.vec317 to i32
  %i.z = sub i32 %.11170198, %i.y
  %i.aa = shl nsw i64 %n.vec317, 1
  %i.ab = shl nsw i64 %n.vec317, 2
  %i.ac = add nsw i32 %3, -2                      ; 2 uses
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 -1)
  %i.ae = sub i32 %i.ac, %i.ad                    ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ae, 7
  %n.vec = and i64 %i.ag, 8589934584              ; 5 uses
  %i.ah = trunc i64 %n.vec to i32
  %i.ai = sub i32 %.11170198, %i.ah
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %bb.b, %stbi__malloc_mad4.exit
  tail call void @SDL_free_REAL(ptr noundef %0) #13
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = mul i32 %3, %i.am                       ; 2 uses
  %i.ao = mul i32 %i.an, %1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap ; 17 uses
  %i.ar = mul i32 %i.an, %2
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.as ; 17 uses
  switch i32 %i.p, label %.preheader195 [
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
  %.3162240.ph = phi i32 [ %.11170198, %.lr.ph241.preheader ], [ %i.z, %vector.body318 ]
  %.3239.ph = phi ptr [ %i.at, %.lr.ph241.preheader ], [ %i.au, %vector.body318 ]
  %.3145238.ph = phi ptr [ %i.aq, %.lr.ph241.preheader ], [ %i.av, %vector.body318 ]
  br label %.lr.ph241

vector.ph316:                                     ; preds = %.lr.ph241.preheader
  %i.au = getelementptr i8, ptr %i.at, i64 %i.aa
  %i.av = getelementptr i8, ptr %i.aq, i64 %i.ab
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next325, %vector.body318 ] ; 3 uses
  %i.aw = shl i64 %index319, 1
  %next.gep320 = getelementptr i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ax = shl i64 %index319, 2                    ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.ax
  %next.gep322 = getelementptr i8, ptr %i.ay, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep321, align 2
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec323 = load <8 x i16>, ptr %next.gep322, align 2
  %strided.vec324 = shufflevector <8 x i16> %wide.vec323, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.az = getelementptr i8, ptr %next.gep320, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep320, align 2
  store <4 x i16> %strided.vec324, ptr %i.az, align 2
  %index.next325 = add nuw i64 %index319, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next325, %n.vec317
  br i1 %i.ba, label %.lr.ph241.preheader334, label %vector.body318, !llvm.loop !206

.preheader177:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph246

.preheader175:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph251

.preheader:                                       ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph256.preheader

.lr.ph256.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph256.preheader330, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph256.preheader
  %i.bb = getelementptr i8, ptr %i.at, i64 %i.aj
  %i.bc = getelementptr i8, ptr %i.aq, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bd
  %i.be = getelementptr i8, ptr %i.at, i64 %i.bd
  %next.gep308 = getelementptr i8, ptr %i.be, i64 16
  %i.bf = shl i64 %index, 1
  %next.gep309 = getelementptr i8, ptr %i.aq, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep309, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep309, align 2
  %wide.load310 = load <4 x i16>, ptr %i.bg, align 2
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  %interleaved.vec311 = shufflevector <4 x i16> %wide.load310, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec311, ptr %next.gep308, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph256.preheader330

.lr.ph256.preheader330:                           ; preds = %.lr.ph256.preheader, %middle.block
  %.0159255.ph = phi i32 [ %.11170198, %.lr.ph256.preheader ], [ %i.ai, %middle.block ]
  %.0254.ph = phi ptr [ %i.at, %.lr.ph256.preheader ], [ %i.bb, %middle.block ]
  %.0142253.ph = phi ptr [ %i.aq, %.lr.ph256.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader330, %.lr.ph256
  %.0159255 = phi i32 [ %.0159, %.lr.ph256 ], [ %.0159255.ph, %.lr.ph256.preheader330 ]
  %.0254 = phi ptr [ %i.bl, %.lr.ph256 ], [ %.0254.ph, %.lr.ph256.preheader330 ] ; 3 uses
  %.0142253 = phi ptr [ %i.bk, %.lr.ph256 ], [ %.0142253.ph, %.lr.ph256.preheader330 ] ; 2 uses
end_hunk_0
