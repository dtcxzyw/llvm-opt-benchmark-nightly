inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@get_full_ipv6_addr:bb.a

.preheader.preheader:                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(32) %1, i8 42, i64 32, i1 false)
  %i.n = getelementptr i8, ptr %1, i64 32
  store i8 0, ptr %i.n, align 1
  br label %bb.v

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = call fastcc i32 @get_ipv6_suffix(ptr noundef nonnull %i.a, ptr noundef nonnull %2) ; 3 uses
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21 ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp slt i32 %i.q, 32                    ; 2 uses
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = sext i32 %i.o to i64
  %i.t = sub i64 %i.j, %i.s
  %i.u = call noalias ptr @wmem_strndup(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.t)
  %i.v = call fastcc i32 @get_ipv6_suffix(ptr noundef nonnull %i.b, ptr noundef %i.u)
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %sext = shl i64 %i.w, 32
  %i.y = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %1, ptr noundef nonnull align 16 %i.b, i64 noundef %i.y, i1 noundef false) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.056 = phi i32 [ %i.v, %bb.j ], [ 0, %bb.i ]
  %.055 = phi i32 [ %i.x, %bb.j ], [ 0, %bb.i ]   ; 6 uses
  %i.z = add i32 %.055, %i.q
  %i.aa = sub i32 32, %i.z                        ; 5 uses
  %.not6269 = icmp slt i32 %i.aa, 0
  br i1 %.not6269, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.aa, 7
  %i.ad = add i32 %.055, %i.aa
  %i.ae = icmp slt i32 %i.ad, %.055
  %or.cond = or i1 %min.iters.check, %i.ae
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %i.aa, 31
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = trunc nuw nsw i64 %index to i32
  %i.ah = add i32 %.055, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  store <16 x i8> splat (i8 48), ptr %i.aj, align 1
  store <16 x i8> splat (i8 48), ptr %i.ak, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.ac, 4294967288            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 2 uses
  %i.am = trunc nuw nsw i64 %index87 to i32
  %i.an = add i32 %.055, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  store <8 x i8> splat (i8 48), ptr %i.ap, align 1
  %index.next88 = add nuw i64 %index87, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next88, %n.vec86
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.ac, %n.vec86
  br i1 %cmp.n89, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec86, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = add i32 %.055, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  store i8 48, ptr %i.au, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not62.not = icmp samesign ult i64 %indvars.iv, %i.ab
  br i1 %.not62.not, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.k
  %i.av = getelementptr i8, ptr %1, i64 32
  %sext63 = shl i64 %i.p, 32                      ; 2 uses
  %i.aw = ashr exact i64 %sext63, 32
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr i8, ptr %i.av, i64 %i.ax
  %sext64 = add i64 %sext63, 4294967296
  %i.az = ashr exact i64 %sext64, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ay, ptr noundef nonnull align 16 %i.a, i64 noundef %i.az, i1 noundef false) #19
  %.pre80 = load i32, ptr %i.d, align 4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.r
  %i.ba = phi i32 [ %.pre80, %._crit_edge ], [ %i.bt, %bb.r ] ; 3 uses
  %indvars.iv74 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next75, %bb.r ] ; 4 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.bb = shl nuw nsw i64 %indvars.iv.next75, 2   ; 2 uses
  %i.bc = zext i32 %i.ba to i64                   ; 2 uses
  %i.bd = icmp samesign ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.be = shl nuw nsw i64 %indvars.iv74, 2
  %.not65 = icmp samesign ult i64 %i.be, %i.bc
  br i1 %.not65, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr i8, ptr %1, i64 %indvars.iv74 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 42
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bi = getelementptr i8, ptr %1, i64 %indvars.iv74
  store i8 42, ptr %i.bi, align 1
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bj = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.bf, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.c) #19
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.d, align 4
  %i.bm = trunc nuw nsw i64 %i.bb to i32
  %i.bn = sub i32 %i.bm, %i.bl
  %i.bo = shl i32 15, %i.bn
  %i.bp = load i32, ptr %i.c, align 4
  %i.bq = and i32 %i.bp, 15
  %i.br = and i32 %i.bq, %i.bo                    ; 2 uses
  store i32 %i.br, ptr %i.c, align 4
  %i.bs = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.bf, i64 noundef 4, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.225, i32 noundef %i.br) ; 0 uses
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.q, %bb.o
  %i.bt = phi i32 [ %i.ba, %bb.l ], [ %.pre, %bb.q ], [ %i.ba, %bb.o ]
  %exitcond.not = icmp eq i64 %indvars.iv.next75, 32
  br i1 %exitcond.not, label %bb.s, label %bb.l, !llvm.loop !58

bb.s:                                             ; preds = %bb.p, %bb.r
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.r, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bw = add i32 %.056, %i.o
  %i.bx = sub i32 %i.bv, %i.bw
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.by = sub i32 %i.bv, %i.o
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.b, %bb.u, %bb.t, %.preheader.preheader
  %.057 = phi i32 [ %i.by, %bb.u ], [ 0, %.preheader.preheader ], [ %i.bx, %bb.t ], [ -1, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.057
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @get_ipv6_suffix(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call i64 @strlen(ptr noundef %1) #21
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge71, label %.preheader57

.preheader57:                                     ; preds = %bb.a, %bb.g
  %.063 = phi i8 [ %.1, %bb.g ], [ 0, %bb.a ]
  %.04562 = phi i32 [ %.146, %bb.g ], [ 0, %bb.a ] ; 6 uses
  %.04761 = phi i32 [ %.249, %bb.g ], [ 0, %bb.a ] ; 13 uses
  %.05060 = phi i32 [ %.151, %bb.g ], [ 0, %bb.a ] ; 6 uses
  %i.d = sub i32 %i.c, %.05060                    ; 2 uses
  %i.e = add i32 %i.d, -1                         ; 3 uses
  %i.f = icmp sgt i32 %i.e, -1
  %i.g = icmp eq i8 %.063, 0
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader57
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = icmp eq i8 %i.j, 58
  br i1 %i.k, label %.preheader56, label %bb.f

.preheader56:                                     ; preds = %bb.b
  %i.l = icmp slt i32 %.04562, 4
  br i1 %i.l, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader56
  %i.m = add nsw i32 %.04761, 4
  %i.n = sub i32 %i.m, %.04562                    ; 4 uses
  %i.o = sub i32 4, %.04562                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.p = sub i32 31, %.04761
  %i.q = sub i32 %.04562, %.04761
  %i.r = add i32 %i.q, 28
  %i.s = icmp sgt i32 %i.r, %i.p
  br i1 %i.s, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check87 = icmp ult i32 %i.o, 32
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i32 %i.o, 24
  %n.vec = and i32 %i.o, -32                      ; 4 uses
  %i.u = add i32 %.04761, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = add i32 %.04761, %index
  %i.w = sub i32 31, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.a, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -15
  %i.aa = getelementptr i8, ptr %i.y, i64 -31
  store <16 x i8> splat (i8 48), ptr %i.z, align 1
  store <16 x i8> splat (i8 48), ptr %i.aa, align 1
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.ab = icmp eq i32 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i32 %i.o, -8                     ; 3 uses
  %i.ac = add i32 %.04761, %n.vec88
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = add i32 %.04761, %index89
  %i.ae = sub i32 31, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -7
  store <8 x i8> splat (i8 48), ptr %i.ah, align 1
  %index.next90 = add nuw i32 %index89, 8         ; 2 uses
  %i.ai = icmp eq i32 %index.next90, %n.vec88
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i32 %i.o, %n.vec88
  br i1 %cmp.n91, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.14858.ph = phi i32 [ %.04761, %iter.check ], [ %.04761, %vector.scevcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.14858 = phi i32 [ %i.am, %.lr.ph ], [ %.14858.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = sub i32 31, %.14858
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.a, i64 %i.ak
  store i8 48, ptr %i.al, align 1
  %i.am = add i32 %.14858, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader56
  %.148.lcssa = phi i32 [ %.04761, %.preheader56 ], [ %i.n, %middle.block ], [ %i.n, %vec.epilog.middle.block ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.an = icmp eq i32 %i.e, 0
  br i1 %i.an, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ao = add i32 %i.d, -2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 58
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = add i32 %.05060, 2
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.au = add i32 %.05060, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.av = tail call signext i8 @g_ascii_toupper(i8 noundef signext %i.j) #24
  %i.aw = sub i32 31, %.04761
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.a, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1
  %i.az = add i32 %.04562, 1
  %i.ba = add nsw i32 %.04761, 1
  %i.bb = add i32 %.05060, 1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.d, %bb.f
  %.151 = phi i32 [ %i.bb, %bb.f ], [ %i.at, %bb.d ], [ %i.au, %bb.e ], [ %.05060, %._crit_edge ] ; 2 uses
  %.249 = phi i32 [ %i.ba, %bb.f ], [ %.148.lcssa, %bb.d ], [ %.148.lcssa, %bb.e ], [ %.148.lcssa, %._crit_edge ] ; 3 uses
  %.146 = phi i32 [ %i.az, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %._crit_edge ] ; 2 uses
  %.1 = phi i8 [ 0, %bb.f ], [ 1, %bb.d ], [ 0, %bb.e ], [ 1, %._crit_edge ]
  %i.bc = icmp slt i32 %.249, 32
  br i1 %i.bc, label %.preheader57, label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %.preheader57, %bb.g
  %.050.lcssa = phi i32 [ %.05060, %.preheader57 ], [ %.151, %bb.g ] ; 5 uses
  %.047.lcssa = phi i32 [ %.04761, %.preheader57 ], [ %.249, %bb.g ] ; 10 uses
  %.045.lcssa = phi i32 [ %.04562, %.preheader57 ], [ %.146, %bb.g ] ; 7 uses
  %i.bd = and i32 %.047.lcssa, 3
  %.not54 = icmp ne i32 %i.bd, 0
  %i.be = icmp slt i32 %.045.lcssa, 4
  %or.cond73 = select i1 %.not54, i1 %i.be, i1 false
  br i1 %or.cond73, label %iter.check106, label %.loopexit

iter.check106:                                    ; preds = %.critedge
  %i.bf = sub i32 4, %.045.lcssa                  ; 7 uses
  %min.iters.check94 = icmp ult i32 %i.bf, 8
  br i1 %min.iters.check94, label %.lr.ph66.preheader, label %vector.scevcheck93

vector.scevcheck93:                               ; preds = %iter.check106
  %i.bg = sub i32 31, %.047.lcssa
  %i.bh = sub i32 %.045.lcssa, %.047.lcssa
  %i.bi = add i32 %i.bh, 28
  %i.bj = icmp sgt i32 %i.bi, %i.bg
  br i1 %i.bj, label %.lr.ph66.preheader, label %vector.main.loop.iter.check95

vector.main.loop.iter.check95:                    ; preds = %vector.scevcheck93
  %min.iters.check96 = icmp ult i32 %i.bf, 32
  br i1 %min.iters.check96, label %vec.epilog.ph110, label %vector.ph97

vector.ph97:                                      ; preds = %vector.main.loop.iter.check95
  %i.bk = and i32 %i.bf, 24
  %n.vec98 = and i32 %i.bf, -32                   ; 5 uses
  %i.bl = add i32 %.045.lcssa, %n.vec98
  %i.bm = add i32 %.047.lcssa, %n.vec98           ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i32 [ 0, %vector.ph97 ], [ %index.next101, %vector.body99 ] ; 2 uses
  %i.bn = add i32 %.047.lcssa, %index100
  %i.bo = sub i32 31, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.a, i64 %i.bp   ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -15
  %i.bs = getelementptr i8, ptr %i.bq, i64 -31
  store <16 x i8> splat (i8 48), ptr %i.br, align 1
  store <16 x i8> splat (i8 48), ptr %i.bs, align 1
  %index.next101 = add nuw i32 %index100, 32      ; 2 uses
  %i.bt = icmp eq i32 %index.next101, %n.vec98
  br i1 %i.bt, label %middle.block102, label %vector.body99, !llvm.loop !63

middle.block102:                                  ; preds = %vector.body99
  %cmp.n103 = icmp eq i32 %i.bf, %n.vec98
  br i1 %cmp.n103, label %.loopexit, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block102
  %min.epilog.iters.check109 = icmp eq i32 %i.bk, 0
  br i1 %min.epilog.iters.check109, label %.lr.ph66.preheader, label %vec.epilog.ph110, !prof !55

vec.epilog.ph110:                                 ; preds = %vector.main.loop.iter.check95, %vec.epilog.iter.check108
  %vec.epilog.resume.val104 = phi i32 [ %n.vec98, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check95 ]
  %n.vec111 = and i32 %i.bf, -8                   ; 4 uses
  %i.bu = add i32 %.045.lcssa, %n.vec111
  %i.bv = add i32 %.047.lcssa, %n.vec111          ; 2 uses
  br label %vec.epilog.vector.body112

vec.epilog.vector.body112:                        ; preds = %vec.epilog.vector.body112, %vec.epilog.ph110
  %index113 = phi i32 [ %vec.epilog.resume.val104, %vec.epilog.ph110 ], [ %index.next114, %vec.epilog.vector.body112 ] ; 2 uses
  %i.bw = add i32 %.047.lcssa, %index113
  %i.bx = sub i32 31, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.a, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -7
  store <8 x i8> splat (i8 48), ptr %i.ca, align 1
  %index.next114 = add nuw i32 %index113, 8       ; 2 uses
  %i.cb = icmp eq i32 %index.next114, %n.vec111
  br i1 %i.cb, label %vec.epilog.middle.block115, label %vec.epilog.vector.body112, !llvm.loop !64

vec.epilog.middle.block115:                       ; preds = %vec.epilog.vector.body112
  %cmp.n116 = icmp eq i32 %i.bf, %n.vec111
  br i1 %cmp.n116, label %.loopexit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %vector.scevcheck93, %iter.check106, %vec.epilog.iter.check108, %vec.epilog.middle.block115
  %.14465.ph = phi i32 [ %.045.lcssa, %iter.check106 ], [ %.045.lcssa, %vector.scevcheck93 ], [ %i.bl, %vec.epilog.iter.check108 ], [ %i.bu, %vec.epilog.middle.block115 ] ; 4 uses
  %.364.ph = phi i32 [ %.047.lcssa, %iter.check106 ], [ %.047.lcssa, %vector.scevcheck93 ], [ %i.bm, %vec.epilog.iter.check108 ], [ %i.bv, %vec.epilog.middle.block115 ] ; 2 uses
  %i.cc = sub i32 0, %.14465.ph
  %xtraiter = and i32 %i.cc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.14465.prol = phi i32 [ %i.ch, %.lr.ph66.prol ], [ %.14465.ph, %.lr.ph66.preheader ]
  %.364.prol = phi i32 [ %i.cg, %.lr.ph66.prol ], [ %.364.ph, %.lr.ph66.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.cd = sub i32 31, %.364.prol
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.a, i64 %i.ce
  store i8 48, ptr %i.cf, align 1
  %i.cg = add i32 %.364.prol, 1                   ; 3 uses
  %i.ch = add i32 %.14465.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !65

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph66.preheader ], [ %i.cg, %.lr.ph66.prol ]
  %.14465.unr = phi i32 [ %.14465.ph, %.lr.ph66.preheader ], [ %i.ch, %.lr.ph66.prol ]
  %.364.unr = phi i32 [ %.364.ph, %.lr.ph66.preheader ], [ %i.cg, %.lr.ph66.prol ]
  %i.ci = add i32 %.14465.ph, -1
  %i.cj = icmp ult i32 %i.ci, 3
  br i1 %i.cj, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.14465 = phi i32 [ %i.cx, %.lr.ph66 ], [ %.14465.unr, %.lr.ph66.prol.loopexit ] ; 2 uses
  %.364 = phi i32 [ %i.cw, %.lr.ph66 ], [ %.364.unr, %.lr.ph66.prol.loopexit ] ; 5 uses
  %i.ck = sub i32 31, %.364
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl
  store i8 48, ptr %i.cm, align 1
  %i.cn = sub i32 30, %.364
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr %i.a, i64 %i.co
  store i8 48, ptr %i.cp, align 1
  %i.cq = sub i32 29, %.364
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.a, i64 %i.cr
  store i8 48, ptr %i.cs, align 1
  %i.ct = sub i32 28, %.364
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr %i.a, i64 %i.cu
  store i8 48, ptr %i.cv, align 1
  %i.cw = add i32 %.364, 4                        ; 2 uses
  %i.cx = add i32 %.14465, 4
  %exitcond76.not.3 = icmp eq i32 %.14465, 0
  br i1 %exitcond76.not.3, label %.loopexit, label %.lr.ph66, !llvm.loop !67

.loopexit:                                        ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block102, %vec.epilog.middle.block115, %.critedge
  %.4 = phi i32 [ %.047.lcssa, %.critedge ], [ %i.bv, %vec.epilog.middle.block115 ], [ %i.bm, %middle.block102 ], [ %.lcssa.unr, %.lr.ph66.prol.loopexit ], [ %i.cw, %.lr.ph66 ] ; 15 uses
  %i.cy = icmp sgt i32 %.4, 0
  br i1 %i.cy, label %iter.check133, label %._crit_edge71

iter.check133:                                    ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %.4 to i64     ; 9 uses
  %min.iters.check121 = icmp ult i32 %.4, 4
  br i1 %min.iters.check121, label %vec.epilog.scalar.ph134.preheader, label %vector.scevcheck119

vector.scevcheck119:                              ; preds = %iter.check133
  %i.cz = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.da = sub nsw i32 32, %.4                     ; 2 uses
  %i.db = trunc nsw i64 %i.cz to i32
  %i.dc = add i32 %i.da, %i.db
  %i.dd = icmp slt i32 %i.dc, %i.da
  %i.de = icmp ugt i64 %i.cz, 4294967295
  %i.df = or i1 %i.dd, %i.de
  %i.dg = add nsw i32 %.4, -33
  %diff.check = icmp ult i32 %i.dg, 31
  %or.cond145 = select i1 %i.df, i1 true, i1 %diff.check
  br i1 %or.cond145, label %vec.epilog.scalar.ph134.preheader, label %vector.main.loop.iter.check122

vector.main.loop.iter.check122:                   ; preds = %vector.scevcheck119
  %min.iters.check123 = icmp ult i32 %.4, 32
  br i1 %min.iters.check123, label %vec.epilog.ph137, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check122
  %i.dh = and i64 %wide.trip.count, 28
  %n.vec125 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %invariant.op = sub i32 32, %.4
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next129, %vector.body126 ] ; 3 uses
  %i.di = trunc i64 %index127 to i32
  %.reass152 = add i32 %i.di, %invariant.op
  %i.dj = sext i32 %.reass152 to i64
  %i.dk = getelementptr i8, ptr %i.a, i64 %i.dj   ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %wide.load = load <16 x i8>, ptr %i.dk, align 1
  %wide.load128 = load <16 x i8>, ptr %i.dl, align 1
  %i.dm = getelementptr i8, ptr %i.a, i64 %index127 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  store <16 x i8> %wide.load, ptr %i.dm, align 16
  store <16 x i8> %wide.load128, ptr %i.dn, align 16
  %index.next129 = add nuw i64 %index127, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next129, %n.vec125
  br i1 %i.do, label %middle.block130, label %vector.body126, !llvm.loop !68

middle.block130:                                  ; preds = %vector.body126
  %cmp.n131 = icmp eq i64 %n.vec125, %wide.trip.count
  br i1 %cmp.n131, label %._crit_edge71, label %vec.epilog.iter.check135

vec.epilog.iter.check135:                         ; preds = %middle.block130
  %min.epilog.iters.check136 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check136, label %vec.epilog.scalar.ph134.preheader, label %vec.epilog.ph137, !prof !48

vec.epilog.ph137:                                 ; preds = %vector.main.loop.iter.check122, %vec.epilog.iter.check135
  %vec.epilog.resume.val132 = phi i64 [ %n.vec125, %vec.epilog.iter.check135 ], [ 0, %vector.main.loop.iter.check122 ]
  %n.vec138 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %invariant.op153 = sub i32 32, %.4
  br label %vec.epilog.vector.body139

vec.epilog.vector.body139:                        ; preds = %vec.epilog.vector.body139, %vec.epilog.ph137
  %index140 = phi i64 [ %vec.epilog.resume.val132, %vec.epilog.ph137 ], [ %index.next142, %vec.epilog.vector.body139 ] ; 3 uses
  %i.dp = trunc i64 %index140 to i32
  %.reass154 = add i32 %i.dp, %invariant.op153
  %i.dq = sext i32 %.reass154 to i64
  %i.dr = getelementptr i8, ptr %i.a, i64 %i.dq
  %wide.load141 = load <4 x i8>, ptr %i.dr, align 1
  %i.ds = getelementptr i8, ptr %i.a, i64 %index140
  store <4 x i8> %wide.load141, ptr %i.ds, align 4
  %index.next142 = add nuw i64 %index140, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next142, %n.vec138
  br i1 %i.dt, label %vec.epilog.middle.block143, label %vec.epilog.vector.body139, !llvm.loop !69

vec.epilog.middle.block143:                       ; preds = %vec.epilog.vector.body139
  %cmp.n144 = icmp eq i64 %n.vec138, %wide.trip.count
  br i1 %cmp.n144, label %._crit_edge71, label %vec.epilog.scalar.ph134.preheader

vec.epilog.scalar.ph134.preheader:                ; preds = %vector.scevcheck119, %iter.check133, %vec.epilog.iter.check135, %vec.epilog.middle.block143
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck119 ], [ 0, %iter.check133 ], [ %n.vec125, %vec.epilog.iter.check135 ], [ %n.vec138, %vec.epilog.middle.block143 ] ; 5 uses
  %xtraiter146 = and i64 %wide.trip.count, 1
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %vec.epilog.scalar.ph134.prol.loopexit, label %vec.epilog.scalar.ph134.prol

vec.epilog.scalar.ph134.prol:                     ; preds = %vec.epilog.scalar.ph134.preheader
  %i.du = trunc nuw nsw i64 %indvars.iv.ph to i32
  %reass.sub.prol = sub nsw i32 %i.du, %.4
  %.reass.prol = add i32 %reass.sub.prol, 32
  %i.dv = sext i32 %.reass.prol to i64
  %i.dw = getelementptr i8, ptr %i.a, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr i8, ptr %i.a, i64 %indvars.iv.ph
  store i8 %i.dx, ptr %i.dy, align 4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph134.prol.loopexit

vec.epilog.scalar.ph134.prol.loopexit:            ; preds = %vec.epilog.scalar.ph134.prol, %vec.epilog.scalar.ph134.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph134.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph134.prol ]
  %i.dz = add nsw i64 %wide.trip.count, -1
  %i.ea = icmp eq i64 %indvars.iv.ph, %i.dz
  br i1 %i.ea, label %._crit_edge71, label %vec.epilog.scalar.ph134.preheader.new

vec.epilog.scalar.ph134.preheader.new:            ; preds = %vec.epilog.scalar.ph134.prol.loopexit
  %invariant.op155.a = sub i32 32, %.4
  %invariant.op156 = sub i32 32, %.4
  br label %vec.epilog.scalar.ph134

vec.epilog.scalar.ph134:                          ; preds = %vec.epilog.scalar.ph134, %vec.epilog.scalar.ph134.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph134.preheader.new ], [ %indvars.iv.next.1, %vec.epilog.scalar.ph134 ] ; 4 uses
  %i.eb = trunc i64 %indvars.iv to i32
  %.reass.reass = add i32 %i.eb, %invariant.op155.a
  %i.ec = sext i32 %.reass.reass to i64
  %i.ed = getelementptr i8, ptr %i.a, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ee, ptr %i.ef, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = trunc i64 %indvars.iv.next to i32
  %.reass.1.reass = add i32 %i.eg, %invariant.op156
  %i.eh = sext i32 %.reass.1.reass to i64
  %i.ei = getelementptr i8, ptr %i.a, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.ej, ptr %i.ek, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond79.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond79.not.1, label %._crit_edge71, label %vec.epilog.scalar.ph134, !llvm.loop !70

._crit_edge71:                                    ; preds = %vec.epilog.scalar.ph134.prol.loopexit, %vec.epilog.scalar.ph134, %middle.block130, %vec.epilog.middle.block143, %bb.a, %.loopexit
  %.25285 = phi i32 [ %.050.lcssa, %.loopexit ], [ 0, %bb.a ], [ %.050.lcssa, %middle.block130 ], [ %.050.lcssa, %vec.epilog.middle.block143 ], [ %.050.lcssa, %vec.epilog.scalar.ph134 ], [ %.050.lcssa, %vec.epilog.scalar.ph134.prol.loopexit ]
  %.2.lcssa = phi i32 [ 0, %.loopexit ], [ 0, %bb.a ], [ %.4, %middle.block130 ], [ %.4, %vec.epilog.middle.block143 ], [ %.4, %vec.epilog.scalar.ph134 ], [ %.4, %vec.epilog.scalar.ph134.prol.loopexit ] ; 2 uses
  %i.el = zext nneg i32 %.2.lcssa to i64
  %i.em = getelementptr i8, ptr %i.a, i64 %i.el
  store i8 0, ptr %i.em, align 1
  %i.en = add nuw i32 %.2.lcssa, 1
  %i.eo = sext i32 %i.en to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %0, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 noundef %i.eo, i1 noundef false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.25285
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strndup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare signext i8 @g_ascii_toupper(i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @have_tap_listener(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @export_pdu_create_common_tags(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_handle_get_dissector_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @tap_queue_packet(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_get_parent_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @p_ipv6_pinfo_select_root(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @p_ipv6_pinfo_add_len(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ipv6_dissect_next(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_child_uncompress_zlib(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @try_capture_dissector(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_load_str(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_map_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wmem_map_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @esp_print_record(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
end_hunk_0
