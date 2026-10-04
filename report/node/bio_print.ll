Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bio_print?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@doapr_outch:bb.a
  store i8 %i.v, ptr %i.y, align 1, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.k, %bb.l, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.f ], [ 1, %bb.l ], [ 0, %bb.a ], [ 0, %bb.k ], [ 1, %.sink.split ]
  ret i32 %.1
}

declare i32 @ossl_isdigit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @fmtint(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i64 noundef %4, i32 noundef range(i32 8, 17) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %7, i32 0) ; 2 uses
  %i.b = and i32 %8, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %4, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = sub i64 0, %4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = and i32 %8, 2
  %.not99 = icmp eq i32 %i.e, 0
  br i1 %.not99, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = and i32 %8, 4                            ; 2 uses
  %.not100 = icmp eq i32 %i.f, 0
  %spec.select116 = shl nuw nsw i32 %i.f, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.not105 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ %.not100, %bb.e ], [ false, %bb.d ] ; 2 uses
  %.093 = phi i32 [ 0, %bb.a ], [ 45, %bb.c ], [ %spec.select116, %bb.e ], [ 43, %bb.d ]
  %.088 = phi i64 [ %4, %bb.a ], [ %i.d, %bb.c ], [ %4, %bb.e ], [ %4, %bb.d ]
  %i.g = and i32 %8, 32
  %.not102 = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not102, ptr @.str.5, ptr @.str.4
  %i.i = zext nneg i32 %5 to i64                  ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %.189 = phi i64 [ %i.n, %bb.g ], [ %.088, %bb.f ] ; 3 uses
  %i.j = urem i64 %.189, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.l, ptr %i.m, align 1, !tbaa !15
  %i.n = udiv i64 %.189, %i.i
  %i.o = icmp uge i64 %.189, %i.i
  %i.p = icmp samesign ult i64 %indvars.iv, 25
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %bb.g, label %bb.h, !llvm.loop !29

bb.h:                                             ; preds = %bb.g
  %i.r = and i32 %8, 8
  %.not101 = icmp eq i32 %i.r, 0
  %i.s = icmp eq i32 %5, 8
  %spec.select117 = select i1 %i.s, ptr @.str.2, ptr @.str.1
  %i.t = icmp eq i32 %5, 16
  %spec.select119 = select i1 %i.t, ptr @.str.3, ptr %spec.select117
  %.191 = select i1 %.not101, ptr @.str.1, ptr %spec.select119 ; 3 uses
  %i.u = icmp eq i64 %indvars.iv.next, 26
  %spec.select118.v = select i1 %i.u, i64 %indvars.iv, i64 %indvars.iv.next ; 3 uses
  %spec.select118 = trunc i64 %spec.select118.v to i32 ; 2 uses
  %i.v = and i64 %spec.select118.v, 4294967295    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !15
  %i.x = sub nsw i32 %spec.store.select, %spec.select118
  %i.y = tail call i32 @llvm.smax.i32(i32 %spec.store.select, i32 %spec.select118)
  %not..not105 = xor i1 %.not105, true
  %.neg = sext i1 %not..not105 to i32
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.191) #7
  %i.aa = trunc i64 %i.z to i32
  %.neg123 = add i32 %6, %.neg
  %i.ab = add i32 %i.y, %i.aa
  %i.ac = sub i32 %.neg123, %i.ab
  %spec.store.select3 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 0) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0) ; 2 uses
  %i.ad = and i32 %8, 16
  %.not106 = icmp eq i32 %i.ad, 0                 ; 2 uses
  %i.ae = tail call i32 @llvm.umax.i32(i32 %spec.store.select3, i32 %spec.store.select1)
  %.083 = select i1 %.not106, i32 %spec.store.select1, i32 0 ; 2 uses
  %.082 = select i1 %.not106, i32 %spec.store.select3, i32 %i.ae ; 2 uses
  %i.af = and i32 %8, 1
  %.not108 = icmp eq i32 %i.af, 0
  %i.ag = sub nsw i32 0, %.083
  %spec.select = select i1 %.not108, i32 %.083, i32 %i.ag ; 3 uses
  %i.ah = icmp sgt i32 %spec.select, 0
  br i1 %i.ah, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.h, %select.unfold
  %.2131 = phi i32 [ %i.aj, %select.unfold ], [ %spec.select, %bb.h ] ; 2 uses
  %i.ai = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 32)
  %.not115 = icmp eq i32 %i.ai, 0
  br i1 %.not115, label %.loopexit, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph
  %i.aj = add nsw i32 %.2131, -1
  %i.ak = icmp sgt i32 %.2131, 1
  br i1 %i.ak, label %.lr.ph, label %select.unfold._crit_edge, !llvm.loop !30

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.h
  %.2.lcssa = phi i32 [ %spec.select, %bb.h ], [ 0, %select.unfold ] ; 2 uses
  br i1 %.not105, label %bb.j, label %bb.i

bb.i:                                             ; preds = %select.unfold._crit_edge
  %i.al = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.093)
  %.not109 = icmp eq i32 %i.al, 0
  br i1 %.not109, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %select.unfold._crit_edge
  %i.am = load i8, ptr %.191, align 1, !tbaa !15  ; 2 uses
  %.not110132 = icmp eq i8 %i.am, 0
  br i1 %.not110132, label %._crit_edge, label %.lr.ph134

bb.k:                                             ; preds = %.lr.ph134
  %i.an = getelementptr inbounds nuw i8, ptr %.292133, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15  ; 2 uses
  %.not110 = icmp eq i8 %i.ao, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph134, !llvm.loop !31

.lr.ph134:                                        ; preds = %bb.j, %bb.k
  %i.ap = phi i8 [ %i.ao, %bb.k ], [ %i.am, %bb.j ]
  %.292133 = phi ptr [ %i.an, %bb.k ], [ %.191, %bb.j ]
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.aq)
  %.not114 = icmp eq i32 %i.ar, 0
  br i1 %.not114, label %.loopexit, label %bb.k

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.not120 = icmp eq i32 %.082, 0
  br i1 %.not120, label %.loopexit127, label %.preheader125

.preheader125:                                    ; preds = %._crit_edge, %bb.l
  %.1 = phi i32 [ %i.at, %bb.l ], [ %.082, %._crit_edge ] ; 2 uses
  %i.as = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 48)
  %.not111 = icmp eq i32 %i.as, 0
  br i1 %.not111, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.preheader125
  %i.at = add nsw i32 %.1, -1
  %.old2 = icmp sgt i32 %.1, 1
  br i1 %.old2, label %.preheader125, label %.loopexit127

.loopexit127:                                     ; preds = %bb.l, %._crit_edge
  %i.au = trunc i64 %spec.select118.v to i32
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph162, label %.preheader

bb.m:                                             ; preds = %.lr.ph162
  %i.aw = trunc nuw i64 %i.az to i32
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph162, label %.preheader, !llvm.loop !32

.preheader:                                       ; preds = %bb.m, %.loopexit127
  %i.ay = icmp slt i32 %.2.lcssa, 0
  br i1 %i.ay, label %.lr.ph136, label %.loopexit

.lr.ph162:                                        ; preds = %.loopexit127, %bb.m
  %indvars.iv146161 = phi i64 [ %i.az, %bb.m ], [ %i.v, %.loopexit127 ]
  %i.az = add nsw i64 %indvars.iv146161, -1       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15
  %i.bc = sext i8 %i.bb to i32
  %i.bd = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.bc)
  %.not113 = icmp eq i32 %i.bd, 0
  br i1 %.not113, label %.loopexit, label %bb.m, !llvm.loop !32

bb.n:                                             ; preds = %.lr.ph136
  %i.be = add nsw i32 %.3135, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, 0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph136, !llvm.loop !33

.lr.ph136:                                        ; preds = %.preheader, %bb.n
  %.3135 = phi i32 [ %i.be, %bb.n ], [ %.2.lcssa, %.preheader ]
  %i.bf = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 32)
  %.not112 = icmp eq i32 %i.bf, 0
  br i1 %.not112, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph134, %.preheader125, %.lr.ph162, %.lr.ph136, %bb.n, %.preheader, %bb.i
  %.094 = phi i32 [ 0, %.preheader125 ], [ 0, %bb.i ], [ 1, %.preheader ], [ 0, %.lr.ph134 ], [ 0, %.lr.ph162 ], [ 1, %bb.n ], [ 0, %.lr.ph136 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.094
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @fmtfp(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, double noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef range(i32 0, 3) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = alloca [20 x i8], align 16               ; 7 uses
  %i.c = alloca [20 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = icmp slt i32 %6, 0
  %spec.store.select = select i1 %i.d, i32 6, i32 %6 ; 9 uses
  %i.e = fcmp olt double %4, 0.000000e+00         ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %7, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = shl i32 %7, 3
  %spec.select = and i32 %i.g, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0227 = phi i32 [ %spec.select, %bb.c ], [ 45, %bb.a ], [ 43, %bb.b ]
  %i.h = fneg double %4
  %.0.i = select i1 %i.e, double %i.h, double %4  ; 5 uses
  %i.i = fcmp ogt double %.0.i, 0.000000e+00
  %i.j = fmul nnan double %.0.i, 5.000000e-01
  %i.k = fcmp oeq double %i.j, %.0.i
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  %.inv.i = fcmp uno double %.0.i, 0.000000e+00
  %i.l = or i1 %.inv.i, %or.cond.i
  %.1.i = select i1 %i.l, double 0.000000e+00, double %.0.i ; 11 uses
  %i.m = fcmp oeq double %.1.i, 0.000000e+00      ; 3 uses
  %i.n = fcmp une double %4, 0.000000e+00
  %or.cond = and i1 %i.n, %i.m
  %spec.select273 = select i1 %or.cond, i32 63, i32 %.0227 ; 4 uses
  %i.o = icmp ne i32 %8, 2                        ; 4 uses
  %brmerge = select i1 %i.o, i1 true, i1 %i.m
  br i1 %brmerge, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp olt double %.1.i, 1.000000e-04
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %spec.store.select, 0        ; 2 uses
  %i.r = fcmp oge double %.1.i, 1.000000e+01
  %or.cond4 = and i1 %i.q, %i.r
  br i1 %or.cond4, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.q, label %bb.h, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %xtraiter = and i32 %spec.store.select, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi double [ %i.s, %.lr.ph.i.prol ], [ 1.000000e+00, %.lr.ph.i.preheader ]
  %.035.i.prol = phi i32 [ %i.t, %.lr.ph.i.prol ], [ %spec.store.select, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.s = fmul double %.06.i.prol, 1.000000e+01    ; 3 uses
  %i.t = add nsw i32 %.035.i.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !34

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa516.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.06.i.unr = phi double [ 1.000000e+00, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.035.i.unr = phi i32 [ %spec.store.select, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = icmp samesign ult i32 %spec.store.select, 8
  br i1 %i.u, label %pow_10.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi double [ %i.ac, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ]
  %.035.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %.035.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.v = fmul double %.06.i, 1.000000e+01
  %i.w = fmul double %i.v, 1.000000e+01
  %i.x = fmul double %i.w, 1.000000e+01
  %i.y = fmul double %i.x, 1.000000e+01
  %i.z = fmul double %i.y, 1.000000e+01
  %i.aa = fmul double %i.z, 1.000000e+01
  %i.ab = fmul double %i.aa, 1.000000e+01
  %i.ac = fmul double %i.ab, 1.000000e+01         ; 2 uses
  %i.ad = add nsw i32 %.035.i, -8                 ; 2 uses
  %.not.i.7 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.7, label %pow_10.exit, label %.lr.ph.i, !llvm.loop !35

pow_10.exit:                                      ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa516 = phi double [ %.lcssa516.unr, %.lr.ph.i.prol.loopexit ], [ %i.ac, %.lr.ph.i ]
  %i.ae = fcmp ult double %.1.i, %.lcssa516
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %pow_10.exit, %bb.g
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %.mux = select i1 %i.o, i32 %8, i32 0           ; 2 uses
  %.not253 = icmp eq i32 %8, 0
  br i1 %.not253, label %.thread299, label %.thread

.thread:                                          ; preds = %bb.h, %bb.e, %bb.f, %pow_10.exit, %bb.i
  %.0201297 = phi i32 [ %.mux, %bb.i ], [ 1, %bb.f ], [ 0, %bb.h ], [ 1, %bb.e ], [ 1, %pow_10.exit ] ; 2 uses
  br i1 %i.m, label %.loopexit320, label %.preheader321

.preheader321:                                    ; preds = %.thread
  %i.af = fcmp olt double %.1.i, 1.000000e+00
  br i1 %i.af, label %.lr.ph, label %.preheader319

.preheader319:                                    ; preds = %.lr.ph, %.preheader321
  %.0223.lcssa = phi double [ %.1.i, %.preheader321 ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.0206.lcssa = phi i64 [ 0, %.preheader321 ], [ %i.ai, %.lr.ph ] ; 2 uses
  %i.ag = fcmp ogt double %.0223.lcssa, 1.000000e+01
  br i1 %i.ag, label %.lr.ph338, label %.loopexit320

.lr.ph:                                           ; preds = %.preheader321, %.lr.ph
  %.0206334 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.preheader321 ]
  %.0223333 = phi double [ %i.ah, %.lr.ph ], [ %.1.i, %.preheader321 ]
  %i.ah = fmul nnan double %.0223333, 1.000000e+01 ; 3 uses
  %i.ai = add nsw i64 %.0206334, -1               ; 2 uses
  %i.aj = fcmp olt double %i.ah, 1.000000e+00
  br i1 %i.aj, label %.lr.ph, label %.preheader319, !llvm.loop !36

.lr.ph338:                                        ; preds = %.preheader319, %.lr.ph338
  %.1207337 = phi i64 [ %i.al, %.lr.ph338 ], [ %.0206.lcssa, %.preheader319 ]
  %.1224336 = phi double [ %i.ak, %.lr.ph338 ], [ %.0223.lcssa, %.preheader319 ]
  %i.ak = fdiv double %.1224336, 1.000000e+01     ; 3 uses
  %i.al = add nsw i64 %.1207337, 1                ; 2 uses
  %i.am = fcmp ogt double %i.ak, 1.000000e+01
  br i1 %i.am, label %.lr.ph338, label %.loopexit320, !llvm.loop !37

.loopexit320:                                     ; preds = %.lr.ph338, %.preheader319, %.thread
  %.2225 = phi double [ %.1.i, %.thread ], [ %.0223.lcssa, %.preheader319 ], [ %i.ak, %.lr.ph338 ] ; 2 uses
  %.2 = phi i64 [ 0, %.thread ], [ %.0206.lcssa, %.preheader319 ], [ %i.al, %.lr.ph338 ] ; 5 uses
  br i1 %i.o, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.loopexit320
  %spec.store.select5 = tail call i32 @llvm.umax.i32(i32 %spec.store.select, i32 1) ; 2 uses
  %i.an = icmp eq i32 %.0201297, 0
  br i1 %i.an, label %bb.k, label %.thread440

bb.k:                                             ; preds = %bb.j
  %i.ao = trunc i64 %.2 to i32
  %i.ap = xor i32 %i.ao, -1
  %i.aq = add i32 %spec.store.select5, %i.ap      ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.critedge.sink.split, label %.thread299

.thread440:                                       ; preds = %bb.j
  %i.as = add nsw i32 %spec.store.select5, -1
  br label %.thread299

bb.l:                                             ; preds = %.loopexit320
  %i.at = icmp eq i32 %.0201297, 1
  br i1 %i.at, label %bb.m, label %.thread299

bb.m:                                             ; preds = %bb.l
  br label %.thread299

.thread299:                                       ; preds = %.thread440, %bb.k, %bb.l, %bb.m, %bb.i
  %.0201298 = phi i32 [ 0, %bb.k ], [ 0, %bb.l ], [ %.mux, %bb.i ], [ 1, %.thread440 ], [ 1, %bb.m ]
  %.1236 = phi i32 [ %i.aq, %bb.k ], [ %spec.store.select, %bb.l ], [ %spec.store.select, %bb.i ], [ %i.as, %.thread440 ], [ %spec.store.select, %bb.m ] ; 5 uses
  %.0226 = phi double [ %.1.i, %bb.k ], [ %.1.i, %bb.l ], [ %.1.i, %bb.i ], [ %.2225, %.thread440 ], [ %.2225, %bb.m ] ; 3 uses
  %.3 = phi i64 [ %.2, %bb.k ], [ %.2, %bb.l ], [ 0, %bb.i ], [ %.2, %.thread440 ], [ %.2, %bb.m ] ; 3 uses
  %i.au = fcmp ult double %.0226, f0x43F0000000000000
  br i1 %i.au, label %bb.n, label %.critedge.sink.split

bb.n:                                             ; preds = %.thread299
  %i.av = fptoui double %.0226 to i64             ; 2 uses
  %i.aw = tail call i32 @llvm.umin.i32(i32 %.1236, i32 9) ; 11 uses
  %.not4.i280 = icmp eq i32 %.1236, 0
  br i1 %.not4.i280, label %pow_10.exit293, label %.lr.ph.i281.preheader

.lr.ph.i281.preheader:                            ; preds = %bb.n
  %xtraiter517 = and i32 %i.aw, 7                 ; 2 uses
  %lcmp.mod518.not = icmp eq i32 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph.i281.prol.loopexit, label %.lr.ph.i281.prol

.lr.ph.i281.prol:                                 ; preds = %.lr.ph.i281.preheader, %.lr.ph.i281.prol
  %.06.i282.prol = phi double [ %i.ax, %.lr.ph.i281.prol ], [ 1.000000e+00, %.lr.ph.i281.preheader ]
  %.035.i283.prol = phi i32 [ %i.ay, %.lr.ph.i281.prol ], [ %i.aw, %.lr.ph.i281.preheader ]
  %prol.iter519 = phi i32 [ %prol.iter519.next, %.lr.ph.i281.prol ], [ 0, %.lr.ph.i281.preheader ]
  %i.ax = fmul double %.06.i282.prol, 1.000000e+01 ; 3 uses
  %i.ay = add nsw i32 %.035.i283.prol, -1         ; 2 uses
  %prol.iter519.next = add i32 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i32 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.i281.prol.loopexit, label %.lr.ph.i281.prol, !llvm.loop !38

.lr.ph.i281.prol.loopexit:                        ; preds = %.lr.ph.i281.prol, %.lr.ph.i281.preheader
  %.lcssa511.unr = phi double [ poison, %.lr.ph.i281.preheader ], [ %i.ax, %.lr.ph.i281.prol ]
  %.06.i282.unr = phi double [ 1.000000e+00, %.lr.ph.i281.preheader ], [ %i.ax, %.lr.ph.i281.prol ]
  %.035.i283.unr = phi i32 [ %i.aw, %.lr.ph.i281.preheader ], [ %i.ay, %.lr.ph.i281.prol ]
  %i.az = icmp ult i32 %.1236, 8
  br i1 %i.az, label %.lr.ph.i288.preheader, label %.lr.ph.i281

.lr.ph.i281:                                      ; preds = %.lr.ph.i281.prol.loopexit, %.lr.ph.i281
  %.06.i282 = phi double [ %i.bh, %.lr.ph.i281 ], [ %.06.i282.unr, %.lr.ph.i281.prol.loopexit ]
  %.035.i283 = phi i32 [ %i.bi, %.lr.ph.i281 ], [ %.035.i283.unr, %.lr.ph.i281.prol.loopexit ]
  %i.ba = fmul double %.06.i282, 1.000000e+01
  %i.bb = fmul double %i.ba, 1.000000e+01
  %i.bc = fmul double %i.bb, 1.000000e+01
  %i.bd = fmul double %i.bc, 1.000000e+01
  %i.be = fmul double %i.bd, 1.000000e+01
  %i.bf = fmul double %i.be, 1.000000e+01
  %i.bg = fmul double %i.bf, 1.000000e+01
  %i.bh = fmul double %i.bg, 1.000000e+01         ; 2 uses
  %i.bi = add nsw i32 %.035.i283, -8              ; 2 uses
  %.not.i284.7 = icmp eq i32 %i.bi, 0
  br i1 %.not.i284.7, label %.lr.ph.i288.preheader, label %.lr.ph.i281, !llvm.loop !35

.lr.ph.i288.preheader:                            ; preds = %.lr.ph.i281, %.lr.ph.i281.prol.loopexit
  %.lcssa511 = phi double [ %.lcssa511.unr, %.lr.ph.i281.prol.loopexit ], [ %i.bh, %.lr.ph.i281 ] ; 2 uses
  %xtraiter520 = and i32 %i.aw, 7                 ; 2 uses
  %lcmp.mod521.not = icmp eq i32 %xtraiter520, 0
  br i1 %lcmp.mod521.not, label %.lr.ph.i288.prol.loopexit, label %.lr.ph.i288.prol

.lr.ph.i288.prol:                                 ; preds = %.lr.ph.i288.preheader, %.lr.ph.i288.prol
  %.06.i289.prol = phi double [ %i.bj, %.lr.ph.i288.prol ], [ 1.000000e+00, %.lr.ph.i288.preheader ]
  %.035.i290.prol = phi i32 [ %i.bk, %.lr.ph.i288.prol ], [ %i.aw, %.lr.ph.i288.preheader ]
  %prol.iter522 = phi i32 [ %prol.iter522.next, %.lr.ph.i288.prol ], [ 0, %.lr.ph.i288.preheader ]
  %i.bj = fmul double %.06.i289.prol, 1.000000e+01 ; 3 uses
  %i.bk = add nsw i32 %.035.i290.prol, -1         ; 2 uses
  %prol.iter522.next = add i32 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i32 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.lr.ph.i288.prol.loopexit, label %.lr.ph.i288.prol, !llvm.loop !39

.lr.ph.i288.prol.loopexit:                        ; preds = %.lr.ph.i288.prol, %.lr.ph.i288.preheader
  %.lcssa510.unr = phi double [ poison, %.lr.ph.i288.preheader ], [ %i.bj, %.lr.ph.i288.prol ]
  %.06.i289.unr = phi double [ 1.000000e+00, %.lr.ph.i288.preheader ], [ %i.bj, %.lr.ph.i288.prol ]
  %.035.i290.unr = phi i32 [ %i.aw, %.lr.ph.i288.preheader ], [ %i.bk, %.lr.ph.i288.prol ]
  %i.bl = icmp ult i32 %.1236, 8
  br i1 %i.bl, label %pow_10.exit293.loopexit, label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %.lr.ph.i288.prol.loopexit, %.lr.ph.i288
  %.06.i289 = phi double [ %i.bt, %.lr.ph.i288 ], [ %.06.i289.unr, %.lr.ph.i288.prol.loopexit ]
  %.035.i290 = phi i32 [ %i.bu, %.lr.ph.i288 ], [ %.035.i290.unr, %.lr.ph.i288.prol.loopexit ]
  %i.bm = fmul double %.06.i289, 1.000000e+01
  %i.bn = fmul double %i.bm, 1.000000e+01
  %i.bo = fmul double %i.bn, 1.000000e+01
  %i.bp = fmul double %i.bo, 1.000000e+01
  %i.bq = fmul double %i.bp, 1.000000e+01
  %i.br = fmul double %i.bq, 1.000000e+01
  %i.bs = fmul double %i.br, 1.000000e+01
  %i.bt = fmul double %i.bs, 1.000000e+01         ; 2 uses
  %i.bu = add nsw i32 %.035.i290, -8              ; 2 uses
  %.not.i291.7 = icmp eq i32 %i.bu, 0
  br i1 %.not.i291.7, label %pow_10.exit293.loopexit, label %.lr.ph.i288, !llvm.loop !35

pow_10.exit293.loopexit:                          ; preds = %.lr.ph.i288, %.lr.ph.i288.prol.loopexit
  %.lcssa510 = phi double [ %.lcssa510.unr, %.lr.ph.i288.prol.loopexit ], [ %i.bt, %.lr.ph.i288 ]
  %i.bv = fptosi double %.lcssa511 to i64         ; 2 uses
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = fsub double %.lcssa511, %i.bw
  %i.by = fcmp oge double %i.bx, 5.000000e-01
  %i.bz = zext i1 %i.by to i64
  %spec.select.i = add nsw i64 %i.bz, %i.bv
  br label %pow_10.exit293

pow_10.exit293:                                   ; preds = %pow_10.exit293.loopexit, %bb.n
  %spec.select.i303 = phi i64 [ 1, %bb.n ], [ %spec.select.i, %pow_10.exit293.loopexit ] ; 2 uses
  %.0.lcssa.i292 = phi double [ 1.000000e+00, %bb.n ], [ %.lcssa510, %pow_10.exit293.loopexit ]
  %i.ca = uitofp i64 %i.av to double
  %i.cb = fsub double %.0226, %i.ca
  %i.cc = fmul double %i.cb, %.0.lcssa.i292       ; 2 uses
  %i.cd = fptosi double %i.cc to i64              ; 2 uses
  %i.ce = sitofp i64 %i.cd to double
  %i.cf = fsub double %i.cc, %i.ce
  %i.cg = fcmp oge double %i.cf, 5.000000e-01
  %i.ch = zext i1 %i.cg to i64
  %spec.select.i294 = add nsw i64 %i.ch, %i.cd    ; 2 uses
  %.not254 = icmp uge i64 %spec.select.i294, %spec.select.i303 ; 2 uses
  %i.ci = zext i1 %.not254 to i64
  %.0204 = add i64 %i.ci, %i.av
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %pow_10.exit293
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %pow_10.exit293 ] ; 4 uses
  %.1205 = phi i64 [ %i.cn, %bb.o ], [ %.0204, %pow_10.exit293 ] ; 3 uses
  %i.cj = urem i64 %.1205, 10
  %i.ck = getelementptr inbounds nuw i8, ptr @.str.6, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !15
  %i.cn = udiv i64 %.1205, 10
  %i.co = icmp ugt i64 %.1205, 9
  %i.cp = icmp samesign ult i64 %indvars.iv, 19
  %i.cq = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.o, label %bb.p, !llvm.loop !40

bb.p:                                             ; preds = %bb.o
  %i.cr = select i1 %.not254, i64 %spec.select.i303, i64 0
  %.0202 = sub nuw i64 %spec.select.i294, %i.cr   ; 2 uses
  %i.cs = icmp eq i64 %indvars.iv.next, 20
  %spec.select274.v = select i1 %i.cs, i64 %indvars.iv, i64 %indvars.iv.next ; 3 uses
  %spec.select274 = trunc i64 %spec.select274.v to i32
  %i.ct = and i64 %spec.select274.v, 4294967295   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !15
  br i1 %i.o, label %.outer, label %.outer.us

.outer.us:                                        ; preds = %bb.p, %.lr.ph343.us.preheader._crit_edge
  %.2237.ph.us = phi i32 [ %i.de, %.lr.ph343.us.preheader._crit_edge ], [ %i.aw, %bb.p ] ; 7 uses
  %.1203.ph.us = phi i64 [ %.pre, %.lr.ph343.us.preheader._crit_edge ], [ %.0202, %bb.p ] ; 3 uses
  %i.cv = icmp sgt i32 %.2237.ph.us, 0
  br i1 %i.cv, label %.lr.ph343.us.preheader, label %.loopexit317

.lr.ph343.us.preheader:                           ; preds = %.outer.us
  %i.cw = urem i64 %.1203.ph.us, 10               ; 2 uses
  %.pre = udiv i64 %.1203.ph.us, 10
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph343.us.preheader._crit_edge, label %bb.q

bb.q:                                             ; preds = %.lr.ph343.us.preheader
  %wide.trip.count.le = zext nneg i32 %.2237.ph.us to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @.str.6, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !15
  store i8 %i.cz, ptr %i.b, align 16, !tbaa !15
  %exitcond.peel.not.a = icmp eq i32 %.2237.ph.us, 1
  br i1 %exitcond.peel.not.a, label %.loopexit317, label %.lr.ph343.us.peel.next.a

.lr.ph343.us.peel.next.a:                         ; preds = %bb.q, %.lr.ph343.us.peel.next.a
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %.lr.ph343.us.peel.next.a ], [ 1, %bb.q ] ; 2 uses
  %.1203342.us356.in = phi i64 [ %.1203342.us356.a, %.lr.ph343.us.peel.next.a ], [ %.1203.ph.us, %bb.q ]
  %.1203342.us356.a = udiv i64 %.1203342.us356.in, 10 ; 2 uses
  %i.da = urem i64 %.1203342.us356.a, 10
  %i.db = getelementptr inbounds nuw i8, ptr @.str.6, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !15
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv409
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !15
  %exitcond.not.a = icmp eq i64 %indvars.iv.next410, %wide.trip.count.le
  br i1 %exitcond.not.a, label %.loopexit317, label %.lr.ph343.us.peel.next.a, !llvm.loop !41

.lr.ph343.us.preheader._crit_edge:                ; preds = %.lr.ph343.us.preheader
  %i.de = add nsw i32 %.2237.ph.us, -1
  %.not381 = icmp eq i32 %.2237.ph.us, 1
  br i1 %.not381, label %.loopexit317, label %.outer.us, !llvm.loop !42

.outer:                                           ; preds = %bb.p
  %.not471 = icmp eq i32 %.1236, 0
  br i1 %.not471, label %.loopexit317, label %.lr.ph343.split.us

.lr.ph343.split.us:                               ; preds = %.outer
  %wide.trip.count420 = zext nneg i32 %i.aw to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph343.split.us
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %bb.r ], [ 0, %.lr.ph343.split.us ] ; 2 uses
  %.1203342.us = phi i64 [ %i.dj, %bb.r ], [ %.0202, %.lr.ph343.split.us ] ; 2 uses
  %i.df = urem i64 %.1203342.us, 10
  %i.dg = getelementptr inbounds nuw i8, ptr @.str.6, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv417
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !15
  %i.dj = udiv i64 %.1203342.us, 10
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %.loopexit317, label %bb.r, !llvm.loop !42

.loopexit317:                                     ; preds = %.lr.ph343.us.preheader._crit_edge, %.outer.us, %.lr.ph343.us.peel.next.a, %bb.r, %bb.q, %.outer
  %.0218326 = phi i32 [ 1, %bb.q ], [ 0, %.outer ], [ %i.aw, %bb.r ], [ %.2237.ph.us, %.lr.ph343.us.peel.next.a ], [ 0, %.outer.us ], [ 0, %.lr.ph343.us.preheader._crit_edge ] ; 4 uses
  %.3238 = phi i32 [ 1, %bb.q ], [ %i.aw, %.outer ], [ %i.aw, %bb.r ], [ %.2237.ph.us, %.lr.ph343.us.peel.next.a ], [ 0, %.outer.us ], [ 0, %.lr.ph343.us.preheader._crit_edge ] ; 3 uses
  %i.dk = zext nneg i32 %.0218326 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dk
  store i8 0, ptr %i.dl, align 1, !tbaa !15
  %i.dm = icmp eq i32 %.0201298, 1                ; 3 uses
  br i1 %i.dm, label %bb.s, label %.thread305

bb.s:                                             ; preds = %.loopexit317
  %i.dn = icmp slt i64 %.3, 0
  %i.do = trunc i64 %.3 to i32                    ; 2 uses
  %i.dp = sub i32 0, %i.do
  %.0198 = select i1 %i.dn, i32 %i.dp, i32 %i.do
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv422 = phi i64 [ %indvars.iv.next423, %bb.t ], [ 0, %bb.s ] ; 4 uses
  %.1 = phi i32 [ %i.dv, %bb.t ], [ %.0198, %bb.s ] ; 3 uses
  %i.dq = srem i32 %.1, 10
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr @.str.6, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv422
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !15
  %i.dv = udiv i32 %.1, 10
  %i.dw = icmp sgt i32 %.1, 9                     ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv422, 19
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %bb.t, label %bb.u, !llvm.loop !43

bb.u:                                             ; preds = %bb.t
  br i1 %i.dw, label %.critedge.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = trunc nuw nsw i64 %indvars.iv.next423 to i32
  %i.ea = icmp eq i64 %indvars.iv422, 0
  br i1 %i.ea, label %bb.w, label %.thread305

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 48, ptr %i.eb, align 1, !tbaa !15
  br label %.thread305

.thread305:                                       ; preds = %bb.w, %bb.v, %.loopexit317
  %.3216 = phi i32 [ 0, %.loopexit317 ], [ %i.dz, %bb.v ], [ 2, %bb.w ] ; 3 uses
  %i.ec = icmp sgt i32 %.3238, 0                  ; 2 uses
  %.neg = sext i1 %i.ec to i32
  %.not255 = icmp ne i32 %spec.select273, 0       ; 2 uses
  %.neg256 = sext i1 %.not255 to i32
  %.neg382 = sub i32 -2, %.3216
  %.neg383 = select i1 %i.dm, i32 %.neg382, i32 0
  %.neg307 = add i32 %5, %.neg256
  %i.ed = add i32 %.3238, %spec.select274
  %i.ee = sub i32 %.neg307, %i.ed
  %i.ef = add i32 %i.ee, %.neg
  %.0209 = add i32 %i.ef, %.neg383
  %i.eg = sub nsw i32 %.3238, %.0218326           ; 2 uses
  %spec.store.select9 = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %spec.store.select12 = tail call i32 @llvm.smax.i32(i32 %.0209, i32 0) ; 2 uses
  %i.eh = and i32 %7, 1
  %.not257 = icmp eq i32 %i.eh, 0
  %i.ei = sub nsw i32 0, %spec.store.select12
  %.1210 = select i1 %.not257, i32 %spec.store.select12, i32 %i.ei ; 6 uses
  %i.ej = and i32 %7, 16
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = icmp sgt i32 %.1210, 0
  %or.cond11 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond11, label %bb.x, label %.loopexit315

bb.x:                                             ; preds = %.thread305
  br i1 %.not255, label %bb.y, label %.lr.ph367.preheader

bb.y:                                             ; preds = %bb.x
  %i.em = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %spec.select273)
  %.not258 = icmp eq i32 %i.em, 0
  br i1 %.not258, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = add nsw i32 %.1210, -1                  ; 2 uses
  %.not472 = icmp eq i32 %i.en, 0
  br i1 %.not472, label %._crit_edge.thread, label %.lr.ph367.preheader

.lr.ph367.preheader:                              ; preds = %bb.x, %bb.z
  %.3212366.ph = phi i32 [ %.1210, %bb.x ], [ %i.en, %bb.z ]
  br label %.lr.ph367

bb.aa:                                            ; preds = %.lr.ph367
  %i.eo = add nsw i32 %.3212366, -1
  %i.ep = icmp sgt i32 %.3212366, 1
  br i1 %i.ep, label %.lr.ph367, label %._crit_edge.thread, !llvm.loop !44

.lr.ph367:                                        ; preds = %.lr.ph367.preheader, %bb.aa
  %.3212366 = phi i32 [ %i.eo, %bb.aa ], [ %.3212366.ph, %.lr.ph367.preheader ] ; 2 uses
  %i.eq = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 48)
  %.not272 = icmp eq i32 %i.eq, 0
  br i1 %.not272, label %.critedge, label %bb.aa

.loopexit315:                                     ; preds = %.thread305
  %i.er = icmp sgt i32 %.1210, 0
  br i1 %i.er, label %.lr.ph369, label %._crit_edge

.lr.ph369:                                        ; preds = %.loopexit315, %bb.ab
  %.5368 = phi i32 [ %i.et, %bb.ab ], [ %.1210, %.loopexit315 ] ; 2 uses
  %i.es = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 32)
  %.not271 = icmp eq i32 %i.es, 0
  br i1 %.not271, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph369
  %i.et = add nsw i32 %.5368, -1
  %i.eu = icmp sgt i32 %.5368, 1
  br i1 %i.eu, label %.lr.ph369, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.ab, %.loopexit315
  %.5.lcssa = phi i32 [ %.1210, %.loopexit315 ], [ 0, %bb.ab ] ; 2 uses
  %.not259 = icmp eq i32 %spec.select273, 0
  br i1 %.not259, label %._crit_edge.thread, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.ev = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %spec.select273)
  %.not260 = icmp eq i32 %i.ev, 0
  br i1 %.not260, label %.critedge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.aa, %bb.z, %bb.ac, %._crit_edge
  %.5.lcssa452 = phi i32 [ %.5.lcssa, %._crit_edge ], [ %.5.lcssa, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.aa ] ; 2 uses
  %i.ew = trunc i64 %spec.select274.v to i32
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph492, label %._crit_edge493

bb.ad:                                            ; preds = %.lr.ph492
  %i.ey = trunc nuw i64 %i.fa to i32
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph492, label %._crit_edge493, !llvm.loop !46

.lr.ph492:                                        ; preds = %._crit_edge.thread, %bb.ad
  %indvars.iv425491 = phi i64 [ %i.fa, %bb.ad ], [ %i.ct, %._crit_edge.thread ]
  %i.fa = add nsw i64 %indvars.iv425491, -1       ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15
  %i.fd = sext i8 %i.fc to i32
  %i.fe = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.fd)
  %.not270 = icmp eq i32 %i.fe, 0
  br i1 %.not270, label %.critedge, label %bb.ad, !llvm.loop !46

._crit_edge493:                                   ; preds = %bb.ad, %._crit_edge.thread
  %i.ff = and i32 %7, 8
  %.not261 = icmp ne i32 %i.ff, 0
  %or.cond278.not = or i1 %.not261, %i.ec
  br i1 %or.cond278.not, label %bb.ae, label %.loopexit311

bb.ae:                                            ; preds = %._crit_edge493
  %i.fg = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 46)
  %.not262 = icmp eq i32 %i.fg, 0
  br i1 %.not262, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ae
  %i.fh = icmp sgt i32 %.0218326, 0
  br i1 %i.fh, label %.lr.ph495, label %.loopexit311

.lr.ph495:                                        ; preds = %.preheader.preheader
  %i.fi = zext nneg i32 %.0218326 to i64
  br label %bb.af

.preheader:                                       ; preds = %bb.af
  %i.fj = trunc nuw i64 %i.fl to i32
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.af, label %.loopexit311, !llvm.loop !47

bb.af:                                            ; preds = %.lr.ph495, %.preheader
  %indvars.iv428494 = phi i64 [ %i.fi, %.lr.ph495 ], [ %i.fl, %.preheader ]
  %i.fl = add nsw i64 %indvars.iv428494, -1       ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !15
  %i.fo = sext i8 %i.fn to i32
  %i.fp = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.fo)
  %.not269 = icmp eq i32 %i.fp, 0
  br i1 %.not269, label %.critedge, label %.preheader, !llvm.loop !47

.loopexit311:                                     ; preds = %.preheader, %.preheader.preheader, %._crit_edge493
  %.not384 = icmp slt i32 %i.eg, 1
  br i1 %.not384, label %._crit_edge374, label %.lr.ph373

bb.ag:                                            ; preds = %.lr.ph373
  %i.fq = add nsw i32 %.0208371, -1
  %i.fr = icmp sgt i32 %.0208371, 1
  br i1 %i.fr, label %.lr.ph373, label %._crit_edge374, !llvm.loop !48

.lr.ph373:                                        ; preds = %.loopexit311, %bb.ag
  %.0208371 = phi i32 [ %i.fq, %bb.ag ], [ %spec.store.select9, %.loopexit311 ] ; 2 uses
  %i.fs = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 48)
  %.not268 = icmp eq i32 %i.fs, 0
  br i1 %.not268, label %.critedge, label %bb.ag

._crit_edge374:                                   ; preds = %bb.ag, %.loopexit311
  br i1 %i.dm, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %._crit_edge374
  %i.ft = and i32 %7, 32
  %. = xor i32 %i.ft, 101
  %i.fu = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.)
  %.not263 = icmp eq i32 %i.fu, 0
  br i1 %.not263, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = icmp slt i64 %.3, 0
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fw = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 45)
  %.not265 = icmp eq i32 %i.fw, 0
  br i1 %.not265, label %.critedge, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.fx = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 43)
  %.not264 = icmp eq i32 %i.fx, 0
  br i1 %.not264, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fy = icmp sgt i32 %.3216, 0
  br i1 %i.fy, label %.lr.ph498, label %.loopexit

.lr.ph498:                                        ; preds = %bb.al
  %i.fz = zext nneg i32 %.3216 to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %i.ga = trunc nuw i64 %i.gc to i32
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %bb.an, label %.loopexit, !llvm.loop !49

bb.an:                                            ; preds = %.lr.ph498, %bb.am
  %indvars.iv431496 = phi i64 [ %i.fz, %.lr.ph498 ], [ %i.gc, %bb.am ]
  %i.gc = add nsw i64 %indvars.iv431496, -1       ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !15
  %i.gf = sext i8 %i.ge to i32
  %i.gg = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.gf)
  %.not266 = icmp eq i32 %i.gg, 0
  br i1 %.not266, label %.critedge, label %bb.am, !llvm.loop !49

.loopexit:                                        ; preds = %bb.am, %bb.al, %._crit_edge374
  %i.gh = icmp slt i32 %.5.lcssa452, 0
  br i1 %i.gh, label %.lr.ph377, label %.critedge

bb.ao:                                            ; preds = %.lr.ph377
  %i.gi = add nsw i32 %.6375, 1                   ; 2 uses
  %exitcond434.not = icmp eq i32 %i.gi, 0
  br i1 %exitcond434.not, label %.critedge, label %.lr.ph377, !llvm.loop !50

.lr.ph377:                                        ; preds = %.loopexit, %bb.ao
  %.6375 = phi i32 [ %i.gi, %bb.ao ], [ %.5.lcssa452, %.loopexit ]
  %i.gj = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 32)
  %.not267 = icmp eq i32 %i.gj, 0
  br i1 %.not267, label %.critedge, label %bb.ao

.critedge.sink.split:                             ; preds = %bb.u, %.thread299, %bb.k
  %i.gk = tail call fastcc i32 @doapr_outch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph369, %.lr.ph367, %.lr.ph492, %bb.af, %.lr.ph373, %bb.an, %.lr.ph377, %bb.ao, %.critedge.sink.split, %.loopexit, %bb.ak, %bb.ah, %bb.aj, %bb.ae, %bb.ac, %bb.y
  %.3234 = phi i32 [ 0, %.lr.ph492 ], [ 0, %bb.ah ], [ 0, %bb.y ], [ 0, %.critedge.sink.split ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %.lr.ph377 ], [ 1, %.loopexit ], [ 0, %bb.af ], [ 0, %bb.ak ], [ 0, %.lr.ph367 ], [ 0, %bb.an ], [ 0, %.lr.ph373 ], [ 0, %bb.aj ], [ 1, %bb.ao ], [ 0, %.lr.ph369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.3234
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i64 @OPENSSL_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!7, !7, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!10, !10, i64 0}
!26 = !{!"p1 int", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"branch_weights", !"expected", i32 2861879, i32 2144621769}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !51}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !51}
!39 = distinct !{!39, !51}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18, !52}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
