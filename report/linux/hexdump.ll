inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hex_dump_to_buffer:bb.a
  %.not150 = icmp eq i32 %2, 32
  %spec.store.select4 = select i1 %.not150, i32 32, i32 16 ; 3 uses
  %i.a = zext nneg i32 %spec.store.select4 to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.a) ; 8 uses
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 2 uses
  %i.d = xor i64 %i.c, %i.b
  %i.e = icmp ult i64 %i.c, %i.d
  %i.f = icmp slt i32 %3, 9
  %or.cond3.not = and i1 %i.f, %i.e
  %spec.store.select5 = select i1 %or.cond3.not, i32 %3, i32 1 ; 2 uses
  %i.g = sext i32 %spec.store.select5 to i64
  %i.h = urem i64 %spec.select, %i.g
  %.not = icmp eq i64 %i.h, 0
  %spec.store.select = select i1 %.not, i32 %spec.store.select5, i32 1 ; 4 uses
  %i.i = sext i32 %spec.store.select to i64       ; 4 uses
  %i.j = udiv i64 %spec.select, %i.i              ; 7 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %spec.store.select4, 1
  %i.m = sdiv i32 %spec.store.select4, %spec.store.select
  %i.n = add nsw i32 %i.m, %i.l                   ; 3 uses
  %.not152 = icmp eq i64 %5, 0
  br i1 %.not152, label %.loopexit178, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not153 = icmp eq i64 %1, 0
  br i1 %.not153, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %spec.store.select, label %.preheader175 [
    i32 8, label %.preheader177
    i32 4, label %.preheader179
    i32 2, label %.preheader182
  ]

.preheader182:                                    ; preds = %bb.c
  %.not210 = icmp samesign ult i64 %spec.select, %i.i
  br i1 %.not210, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader182
  %.0.copyload.peel = load i16, ptr %0, align 1
  %i.o = zext i16 %.0.copyload.peel to i32
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %4, i64 noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %i.o) #9 ; 3 uses
  %i.q = sext i32 %i.p to i64
  %.not156.peel = icmp ugt i64 %5, %i.q
  br i1 %.not156.peel, label %bb.d, label %.loopexit178

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.r = icmp samesign ugt i64 %i.j, 1
  br i1 %i.r, label %.lr.ph, label %.thread

.preheader179:                                    ; preds = %bb.c
  %.not211 = icmp samesign ult i64 %spec.select, %i.i
  br i1 %.not211, label %.thread, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %.preheader179
  %.0.copyload8.peel = load i32, ptr %0, align 1
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %4, i64 noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %.0.copyload8.peel) #9 ; 3 uses
  %i.t = sext i32 %i.s to i64
  %.not158.peel = icmp ugt i64 %5, %i.t
  br i1 %.not158.peel, label %bb.e, label %.loopexit178

bb.e:                                             ; preds = %.lr.ph196.preheader
  %i.u = icmp samesign ugt i64 %i.j, 1
  br i1 %i.u, label %.lr.ph196, label %.thread

.preheader177:                                    ; preds = %bb.c
  %.not212 = icmp samesign ult i64 %spec.select, %i.i
  br i1 %.not212, label %.thread, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %.preheader177
  %.0.copyload15.peel = load i64, ptr %0, align 1
  %i.v = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %4, i64 noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i64 noundef %.0.copyload15.peel) #9 ; 3 uses
  %i.w = sext i32 %i.v to i64
  %.not160.peel = icmp ugt i64 %5, %i.w
  br i1 %.not160.peel, label %bb.f, label %.loopexit178

bb.f:                                             ; preds = %.lr.ph200.preheader
  %i.x = icmp samesign ugt i64 %i.j, 1
  br i1 %i.x, label %.lr.ph200, label %.thread

.lr.ph200:                                        ; preds = %bb.f, %bb.g
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %.0139198 = phi i32 [ %i.ae, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = sext i32 %.0139198 to i64                ; 2 uses
  %i.z = getelementptr i8, ptr %4, i64 %i.y
  %i.aa = sub i64 %5, %i.y                        ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %indvars.iv233
  %.0.copyload15 = load i64, ptr %i.ab, align 1
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %.0.copyload15) #9 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %.not160 = icmp ugt i64 %i.aa, %i.ad
  br i1 %.not160, label %bb.g, label %.loopexit178

bb.g:                                             ; preds = %.lr.ph200
  %i.ae = add i32 %i.ac, %.0139198                ; 2 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next234, %i.j
  br i1 %i.af, label %.lr.ph200, label %.thread, !llvm.loop !13

.lr.ph196:                                        ; preds = %bb.e, %bb.h
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %bb.h ], [ 1, %bb.e ] ; 2 uses
  %.1140194 = phi i32 [ %i.am, %bb.h ], [ %i.s, %bb.e ] ; 2 uses
  %i.ag = sext i32 %.1140194 to i64               ; 2 uses
  %i.ah = getelementptr i8, ptr %4, i64 %i.ag
  %i.ai = sub i64 %5, %i.ag                       ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %indvars.iv229
  %.0.copyload8 = load i32, ptr %i.aj, align 1
  %i.ak = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %.0.copyload8) #9 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %.not158 = icmp ugt i64 %i.ai, %i.al
  br i1 %.not158, label %bb.h, label %.loopexit178

bb.h:                                             ; preds = %.lr.ph196
  %i.am = add i32 %i.ak, %.1140194                ; 2 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next230, %i.j
  br i1 %i.an, label %.lr.ph196, label %.thread, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.d ] ; 2 uses
  %.2141192 = phi i32 [ %i.av, %bb.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.ao = sext i32 %.2141192 to i64               ; 2 uses
  %i.ap = getelementptr i8, ptr %4, i64 %i.ao
  %i.aq = sub i64 %5, %i.ao                       ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %0, i64 %indvars.iv
  %.0.copyload = load i16, ptr %i.ar, align 1
  %i.as = zext i16 %.0.copyload to i32
  %i.at = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %i.as) #9 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.not156 = icmp ugt i64 %i.aq, %i.au
  br i1 %.not156, label %bb.i, label %.loopexit178

bb.i:                                             ; preds = %.lr.ph
  %i.av = add i32 %i.at, %.2141192                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.aw, label %.lr.ph, label %.thread, !llvm.loop !16

.preheader175:                                    ; preds = %bb.c, %bb.l
  %i.ax = phi i64 [ %i.bz, %bb.l ], [ 0, %bb.c ]
  %.3203 = phi i32 [ %i.by, %bb.l ], [ 0, %bb.c ]
  %.3142202 = phi i32 [ %i.bl, %bb.l ], [ 0, %bb.c ] ; 6 uses
  %i.ay = add i32 %.3142202, 2                    ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp ult i64 %5, %i.az
  br i1 %i.ba, label %.loopexit172, label %bb.j

bb.j:                                             ; preds = %.preheader175
  %i.bb = getelementptr i8, ptr %0, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = lshr i32 %i.bd, 4
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr @hex_asc, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = add i32 %.3142202, 1                    ; 2 uses
  %i.bj = sext i32 %.3142202 to i64
  %i.bk = getelementptr i8, ptr %4, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1
  %i.bl = add i32 %.3142202, 3                    ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp ult i64 %5, %i.bm
  br i1 %i.bn, label %.loopexit172, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = and i32 %i.bd, 15
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr @hex_asc, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i32 %i.bi to i64
  %i.bt = getelementptr i8, ptr %4, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1
  %i.bu = add i32 %.3142202, 4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp ult i64 %5, %i.bv
  br i1 %i.bw, label %.loopexit172, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr i8, ptr %4, i64 %i.az
  store i8 32, ptr %i.bx, align 1
  %i.by = add i32 %.3203, 1                       ; 3 uses
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = icmp ugt i64 %spec.select, %i.bz
  br i1 %i.ca, label %.preheader175, label %bb.m, !llvm.loop !17

bb.m:                                             ; preds = %bb.l
  %.not154 = icmp ne i32 %i.by, 0
  %i.cb = sext i1 %.not154 to i32
  %spec.select164 = add i32 %i.bl, %i.cb
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.e, %bb.f, %.preheader182, %.preheader179, %.preheader177, %bb.m
  %.4143 = phi i32 [ %spec.select164, %bb.m ], [ %i.ae, %bb.g ], [ %i.am, %bb.h ], [ 0, %.preheader177 ], [ 0, %.preheader179 ], [ 0, %.preheader182 ], [ %i.v, %bb.f ], [ %i.s, %bb.e ], [ %i.p, %bb.d ], [ %i.av, %bb.i ] ; 4 uses
  br i1 %6, label %.preheader173, label %.loopexit

.preheader173:                                    ; preds = %.thread
  %.not171204 = icmp sgt i32 %.4143, %i.n
  br i1 %.not171204, label %.preheader.preheader, label %.lr.ph206.preheader

.preheader.preheader:                             ; preds = %.preheader.loopexit, %.preheader173
  %.6208.ph = phi i32 [ %.4143, %.preheader173 ], [ %8, %.preheader.loopexit ]
  br label %.preheader

.lr.ph206.preheader:                              ; preds = %.preheader173
  %i.cc = sext i32 %.4143 to i64
  %7 = zext nneg i32 %i.n to i64
  br label %.lr.ph206

.preheader.loopexit:                              ; preds = %bb.n
  %8 = trunc nsw i64 %indvars.iv.next238 to i32
  br label %.preheader.preheader

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.n
  %indvars.iv237 = phi i64 [ %i.cc, %.lr.ph206.preheader ], [ %indvars.iv.next238, %bb.n ] ; 5 uses
  %i.cd = shl i64 %indvars.iv237, 32
  %sext = add i64 %i.cd, 8589934592
  %i.ce = ashr exact i64 %sext, 32
  %i.cf = icmp ult i64 %5, %i.ce
  br i1 %i.cf, label %.loopexit172.loopexit213, label %bb.n

bb.n:                                             ; preds = %.lr.ph206
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.cg = getelementptr i8, ptr %4, i64 %indvars.iv237
  store i8 32, ptr %i.cg, align 1
  %.not171.not = icmp slt i64 %indvars.iv237, %7
  br i1 %.not171.not, label %.lr.ph206, label %.preheader.loopexit, !llvm.loop !18

.preheader:                                       ; preds = %.preheader.preheader, %bb.q
  %i.ch = phi i64 [ %i.cx, %bb.q ], [ 0, %.preheader.preheader ]
  %.4209 = phi i32 [ %i.cw, %bb.q ], [ 0, %.preheader.preheader ]
  %.6208 = phi i32 [ %i.ct, %bb.q ], [ %.6208.ph, %.preheader.preheader ] ; 4 uses
  %i.ci = add i32 %.6208, 2
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp ult i64 %5, %i.cj
  br i1 %i.ck, label %.loopexit172, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.cl = getelementptr i8, ptr %0, i64 %i.ch
  %i.cm = load i8, ptr %i.cl, align 1             ; 3 uses
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = zext nneg i8 %i.cm to i64
  %i.cp = getelementptr i8, ptr @_ctype, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = and i8 %i.cq, -105
  %.not161 = icmp eq i8 %i.cr, 0
  %spec.select165 = select i1 %.not161, i8 46, i8 %i.cm
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cs = phi i8 [ 46, %bb.o ], [ %spec.select165, %bb.p ]
  %i.ct = add i32 %.6208, 1                       ; 2 uses
  %i.cu = sext i32 %.6208 to i64
  %i.cv = getelementptr i8, ptr %4, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1
  %i.cw = add i32 %.4209, 1                       ; 2 uses
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = icmp ugt i64 %spec.select, %i.cx
  br i1 %i.cy, label %.preheader, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %bb.q, %.thread, %bb.b
  %.7 = phi i32 [ 0, %bb.b ], [ %.4143, %.thread ], [ %i.ct, %bb.q ] ; 2 uses
  %i.cz = sext i32 %.7 to i64
  %i.da = getelementptr i8, ptr %4, i64 %i.cz
  store i8 0, ptr %i.da, align 1
  br label %bb.t

.loopexit172.loopexit213:                         ; preds = %.lr.ph206
  %i.db = trunc nsw i64 %indvars.iv237 to i32
  br label %.loopexit172

.loopexit172:                                     ; preds = %bb.k, %bb.j, %.preheader175, %.preheader, %.loopexit172.loopexit213
  %.8 = phi i32 [ %.6208, %.preheader ], [ %i.db, %.loopexit172.loopexit213 ], [ %i.bi, %bb.j ], [ %.3142202, %.preheader175 ], [ %i.ay, %bb.k ]
  %i.dc = sext i32 %.8 to i64
  %i.dd = getelementptr i8, ptr %4, i64 %i.dc
  store i8 0, ptr %i.dd, align 1
  br label %.loopexit178

.loopexit178:                                     ; preds = %.lr.ph, %.lr.ph196, %.lr.ph200, %.lr.ph.preheader, %.lr.ph196.preheader, %.lr.ph200.preheader, %bb.a, %.loopexit172
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit178
  %i.de = trunc nuw nsw i64 %spec.select to i32
  %i.df = add nuw nsw i32 %i.de, 1
  %i.dg = add nuw nsw i32 %i.df, %i.n
  br label %bb.t

bb.s:                                             ; preds = %.loopexit178
  %i.dh = shl i32 %spec.store.select, 1
  %i.di = or disjoint i32 %i.dh, 1
  %i.dj = mul i32 %i.di, %i.k
  %i.dk = add i32 %i.dj, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.loopexit
  %.0 = phi i32 [ %.7, %.loopexit ], [ %i.dg, %bb.r ], [ %i.dk, %bb.s ]
  ret i32 %.0
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @print_hex_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7) #5 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [131 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq i32 %3, 32
  %spec.store.select = select i1 %.not, i32 32, i32 16 ; 12 uses
  %.not44 = icmp eq i64 %6, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(131) %i.a, i8 0, i64 131, i1 false), !annotation !20
  %i.b = trunc i64 %6 to i32                      ; 3 uses
  switch i32 %2, label %.lr.ph.split [
    i32 1, label %.lr.ph.split.us
    i32 2, label %.lr.ph.split.us41
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.c = phi i64 [ %i.k, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.040.us = phi i32 [ %i.j, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.03739.us = phi i32 [ %i.e, %.lr.ph.split.us ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.d = call i32 @llvm.smin.i32(i32 %.03739.us, i32 %spec.store.select)
  %i.e = sub i32 %.03739.us, %spec.store.select
  %i.f = getelementptr i8, ptr %5, i64 %i.c       ; 2 uses
  %i.g = sext i32 %i.d to i64
  %i.h = call i32 @hex_dump_to_buffer(ptr noundef %i.f, i64 noundef %i.g, i32 noundef %spec.store.select, i32 noundef %4, ptr noundef nonnull %i.a, i64 noundef 131, i1 noundef zeroext %7) #11 ; 0 uses
  %i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.j = add i32 %.040.us, %spec.store.select     ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = icmp ugt i64 %6, %i.k
  br i1 %i.l, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !21

.lr.ph.split.us41:                                ; preds = %.lr.ph, %.lr.ph.split.us41
  %i.m = phi i64 [ %i.u, %.lr.ph.split.us41 ], [ 0, %.lr.ph ]
  %.040.us42 = phi i32 [ %i.t, %.lr.ph.split.us41 ], [ 0, %.lr.ph ] ; 2 uses
  %.03739.us43 = phi i32 [ %i.o, %.lr.ph.split.us41 ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.n = call i32 @llvm.smin.i32(i32 %.03739.us43, i32 %spec.store.select)
  %i.o = sub i32 %.03739.us43, %spec.store.select
  %i.p = getelementptr i8, ptr %5, i64 %i.m
  %i.q = sext i32 %i.n to i64
  %i.r = call i32 @hex_dump_to_buffer(ptr noundef %i.p, i64 noundef %i.q, i32 noundef %spec.store.select, i32 noundef %4, ptr noundef nonnull %i.a, i64 noundef 131, i1 noundef zeroext %7) #11 ; 0 uses
  %i.s = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0, ptr noundef %1, i32 noundef %.040.us42, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.t = add i32 %.040.us42, %spec.store.select   ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp ugt i64 %6, %i.u
  br i1 %i.v, label %.lr.ph.split.us41, label %._crit_edge, !llvm.loop !21

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.w = phi i64 [ %i.ae, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.040 = phi i32 [ %i.ad, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.03739 = phi i32 [ %i.y, %.lr.ph.split ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.x = call i32 @llvm.smin.i32(i32 %.03739, i32 %spec.store.select)
  %i.y = sub i32 %.03739, %spec.store.select
  %i.z = getelementptr i8, ptr %5, i64 %i.w
  %i.aa = sext i32 %i.x to i64
  %i.ab = call i32 @hex_dump_to_buffer(ptr noundef %i.z, i64 noundef %i.aa, i32 noundef %spec.store.select, i32 noundef %4, ptr noundef nonnull %i.a, i64 noundef 131, i1 noundef zeroext %7) #11 ; 0 uses
  %i.ac = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ad = add i32 %.040, %spec.store.select       ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp ugt i64 %6, %i.ae
  br i1 %i.af, label %.lr.ph.split, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.split.us41, %.lr.ph.split.us, %.lr.ph.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { noredzone "no-builtin-wcslen" }
attributes #12 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = distinct !{!15, !12, !14}
!16 = distinct !{!16, !12, !14}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{!"auto-init"}
!21 = distinct !{!21, !12}
end_hunk_0
