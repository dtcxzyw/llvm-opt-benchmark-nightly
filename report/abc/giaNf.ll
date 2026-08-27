Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaNf?download=true
inline.NumInlined: 1012
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Vec_MemHashInsert:bb.a

bb.x:                                             ; preds = %bb.w
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.im, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.in = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.im, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.io = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.ip = phi ptr [ %i.in, %bb.y ], [ %i.io, %bb.z ]
  store ptr %i.ip, ptr %i.il, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.iq = icmp samesign ult i32 %.val14, 1073741823
  %i.ir = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.iq, i32 %i.ir, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.it, null
  %i.iu = zext nneg i32 %spec.select.i to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iw = tail call ptr @realloc(ptr noundef nonnull %i.it, i64 noundef %i.iv) #27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ix = tail call noalias ptr @malloc(i64 noundef %i.iv) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.iy = phi ptr [ %i.iw, %bb.ac ], [ %i.ix, %bb.ad ]
  store ptr %i.iy, ptr %i.is, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ig, align 8, !tbaa !31
  %.pre = load i32, ptr %i.ih, align 4, !tbaa !24
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.iz = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !27
  %i.jc = add nsw i32 %i.iz, 1
  store i32 %i.jc, ptr %i.ih, align 4, !tbaa !24
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.jd
  store i32 -1, ptr %i.je, align 4, !tbaa !15
  %i.jf = load i32, ptr %i.a, align 4, !tbaa !33  ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !41 ; 3 uses
  %i.ji = ashr i32 %i.jf, %i.jh                   ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !57 ; 3 uses
  %i.jl = icmp slt i32 %i.jk, %i.ji
  br i1 %i.jl, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !58 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.ji, %i.jn
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !40 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.jp, null
  %.not38.i.i = icmp eq i32 %i.jn, 0
  %i.jq = shl nsw i32 %i.jn, 1
  %i.jr = add nsw i32 %i.ji, 32
  %i.js = select i1 %.not38.i.i, i32 %i.jr, i32 %i.jq ; 2 uses
  store i32 %i.js, ptr %i.jm, align 8, !tbaa !58
  %i.jt = sext i32 %i.js to i64
  %i.ju = shl nsw i64 %i.jt, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jv = tail call ptr @realloc(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #27
  %.pre.pre.i.i = load i32, ptr %i.jj, align 4, !tbaa !57
  %.pre.pre.pre.pre.i = load i32, ptr %i.jg, align 8, !tbaa !41
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.jw = tail call noalias ptr @malloc(i64 noundef %i.ju) #28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.jh, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.jk, %bb.ai ]
  %i.jx = phi ptr [ %i.jv, %bb.ah ], [ %i.jw, %bb.ai ]
  store ptr %i.jx, ptr %i.jo, align 8, !tbaa !40
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.jh, %bb.af ] ; 2 uses
  %i.jy = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.jk, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.jy, %i.ji
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i24, label %._crit_edge.i.i

.lr.ph.i.i24:                                     ; preds = %bb.ak
  %i.jz = load i32, ptr %0, align 8, !tbaa !44
  %i.ka = shl i32 %i.jz, %.pre.pre.i
  %i.kb = sext i32 %i.ka to i64
  %i.kc = shl nsw i64 %i.kb, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !40
  %i.kf = sext i32 %i.jy to i64
  %wide.trip.count.i.i25 = sext i32 %i.ji to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i24
  %indvars.iv.i.i26 = phi i64 [ %i.kf, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.al ]
  %indvars.iv.next.i.i27 = add nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.kg = tail call noalias ptr @malloc(i64 noundef %i.kc) #28
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %indvars.iv.next.i.i27
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !42
  %exitcond.not.i.i28 = icmp eq i64 %indvars.iv.next.i.i27, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i28, label %._crit_edge.i.i, label %bb.al, !llvm.loop !59

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !57
  %.pre.i = ashr i32 %i.jf, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i23 = phi i32 [ %i.ji, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.ki = add nsw i32 %i.jf, 1
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !33
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !40
  %i.kl = sext i32 %.pre-phi.i23 to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !42
  %i.ko = load i32, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !45
  %i.kr = and i32 %i.kq, %i.jf
  %i.ks = mul nsw i32 %i.kr, %i.ko
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.kt
  %i.kv = sext i32 %i.ko to i64
  %i.kw = shl nsw i64 %i.kv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ku, ptr nonnull readonly align 8 %1, i64 %i.kw, i1 false)
  %i.kx = load ptr, ptr %i.if, align 8, !tbaa !39
  %i.ky = getelementptr i8, ptr %i.kx, i64 4
  %.val = load i32, ptr %i.ky, align 4, !tbaa !24
  %i.kz = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.kz, %Vec_MemPush.exit ], [ %i.gy, %.lr.ph.i18 ], [ %i.id, %bb.u ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Nf_StoCreateGateMaches(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %i.d = lshr i32 %i.c, 28                        ; 4 uses
  %i.e = zext nneg i32 %i.d to i64                ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %.fr58 = freeze i32 %i.g                        ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.h = icmp ult i32 %i.c, 1073741824
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, 12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.j = shl nuw nsw i32 %indvars.iv.tr, 1
  store i32 %i.j, ptr %i.i, align 16, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.l = shl nuw nsw i32 %indvars.iv.tr.1, 1
  store i32 %i.l, ptr %i.k, align 4, !tbaa !15
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %indvars.iv.tr.2 = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.n = shl nuw nsw i32 %indvars.iv.tr.2, 1
  store i32 %i.n, ptr %i.m, align 8, !tbaa !15
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.2
  %indvars.iv.tr.3 = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.p = shl nuw nsw i32 %indvars.iv.tr.3, 1
  store i32 %i.p, ptr %i.o, align 4, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !60

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil to i32
  %i.r = shl nuw nsw i32 %indvars.iv.tr.epil, 1
  store i32 %i.r, ptr %i.q, align 4, !tbaa !15
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !61

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.s = icmp sgt i32 %.fr58, 0
  br i1 %i.s, label %.preheader.lr.ph, label %._crit_edge57

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62   ; 2 uses
  %i.v = icmp eq i32 %.fr58, 1
  br i1 %i.v, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count68 = zext nneg i32 %.fr58 to i64
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %i.w = phi i32 [ %i.y, %.preheader.us ], [ %i.c, %.preheader.lr.ph ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.153.us = phi i64 [ %i.ao, %.preheader.us ], [ %i.u, %.preheader.lr.ph ] ; 3 uses
  %i.x = lshr i32 %i.w, 28
  call void @Nf_StoCreateGateAdd(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %.153.us, ptr noundef nonnull %i.a, i32 noundef %i.x, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  %i.y = load i32, ptr %i.b, align 8              ; 2 uses
  %i.z = lshr i32 %i.y, 28
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv70
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl i64 %.153.us, %i.ag
  %i.ai = sext i32 %i.ae to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = and i64 %i.ah, %i.ak
  %i.am = and i64 %i.ak, %.153.us
  %i.an = lshr i64 %i.am, %i.ag
  %i.ao = or i64 %i.al, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %i.ar = xor i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !15
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.next71 to i32
  %.0.highbits.us = lshr i32 %i.as, %i.d
  %i.at = icmp eq i32 %.0.highbits.us, 0
  br i1 %i.at, label %.preheader.us, label %._crit_edge57, !llvm.loop !64

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %i.au = phi i32 [ %i.c, %.preheader.preheader ], [ %i.ax, %bb.c ]
  %indvars.iv65 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next66, %bb.c ] ; 2 uses
  %.05055 = phi i64 [ %i.u, %.preheader.preheader ], [ %i.cm, %bb.c ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.av = phi i32 [ %i.au, %.preheader ], [ %i.ax, %bb.b ]
  %indvars.iv62 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next63, %bb.b ] ; 2 uses
  %.153 = phi i64 [ %.05055, %.preheader ], [ %i.bn, %bb.b ] ; 3 uses
  %i.aw = lshr i32 %i.av, 28
  call void @Nf_StoCreateGateAdd(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %.153, ptr noundef nonnull %i.a, i32 noundef %i.aw, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  %i.ax = load i32, ptr %i.b, align 8             ; 3 uses
  %i.ay = lshr i32 %i.ax, 28
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv62
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !15 ; 2 uses
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = shl i64 %.153, %i.bf
  %i.bh = sext i32 %i.bd to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !18 ; 2 uses
  %i.bk = and i64 %i.bg, %i.bj
  %i.bl = and i64 %i.bj, %.153
  %i.bm = lshr i64 %i.bl, %i.bf
  %i.bn = or i64 %i.bk, %i.bm                     ; 4 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !15
  %i.bq = xor i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !15
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv.next63 to i32
  %.0.highbits = lshr i32 %i.br, %i.d
  %i.bs = icmp eq i32 %.0.highbits, 0
  br i1 %i.bs, label %bb.b, label %bb.c, !llvm.loop !64

bb.c:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !63
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv65
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !15 ; 2 uses
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.bx ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !18
  %i.ca = and i64 %i.bz, %i.bn
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !18
  %i.cd = and i64 %i.cc, %i.bn
  %i.ce = shl nuw i32 1, %i.bw
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = shl i64 %i.cd, %i.cf
  %i.ch = or i64 %i.cg, %i.ca
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !18
  %i.ck = and i64 %i.cj, %i.bn
  %i.cl = lshr i64 %i.ck, %i.cf
  %i.cm = or i64 %i.ch, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !15
  %i.cp = shufflevector <2 x i32> %i.co, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cp, ptr %i.cn, align 4, !tbaa !15
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge57, label %.preheader, !llvm.loop !65

._crit_edge57:                                    ; preds = %bb.c, %.preheader.us, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Nf_StoDeriveMatches(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
Vec_WecPushLevel.exit55:
  %i.a = alloca [7 x ptr], align 16               ; 9 uses
  %i.b = alloca [7 x ptr], align 16               ; 9 uses
  %i.c = alloca [7 x i32], align 16               ; 9 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 1000, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call noalias dereferenceable_or_null(16000) ptr @calloc(i64 noundef 1000, i64 noundef 16) #29
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !24
  store i32 10000, ptr %i.h, align 8, !tbaa !31
  %i.j = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 2, ptr %i.e, align 4, !tbaa !19
  %i.l = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 1) #26 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !63
  %i.n = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 2) #26 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.o, align 16, !tbaa !63
  %i.p = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 3) #26 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !63
  %i.r = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 4) #26 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.r, ptr %i.s, align 16, !tbaa !63
  %i.t = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 5) #26 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.t, ptr %i.u, align 8, !tbaa !63
  %i.v = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 6) #26 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.v, ptr %i.w, align 16, !tbaa !63
  %i.x = tail call ptr @Extra_PermSchedule(i32 noundef 1) #26 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !63
  %i.z = tail call ptr @Extra_PermSchedule(i32 noundef 2) #26 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %i.aa, align 16, !tbaa !63
  %i.ab = tail call ptr @Extra_PermSchedule(i32 noundef 3) #26 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !63
  %i.ad = tail call ptr @Extra_PermSchedule(i32 noundef 4) #26 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ad, ptr %i.ae, align 16, !tbaa !63
  %i.af = tail call ptr @Extra_PermSchedule(i32 noundef 5) #26 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !63
  %i.ah = tail call ptr @Extra_PermSchedule(i32 noundef 6) #26 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.ah, ptr %i.ai, align 16, !tbaa !63
  %i.aj = tail call i32 @Extra_Factorial(i32 noundef 1) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !15
  %i.al = tail call i32 @Extra_Factorial(i32 noundef 2) #26
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !15
  %i.an = tail call i32 @Extra_Factorial(i32 noundef 3) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !15
  %i.ap = tail call i32 @Extra_Factorial(i32 noundef 4) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ap, ptr %i.aq, align 16, !tbaa !15
  %i.ar = tail call i32 @Extra_Factorial(i32 noundef 5) #26
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !15
end_hunk_0
begin_hunk_1_@Nf_ManCutMatchOne:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %wide.gep.4, ptr %i.ar, align 16, !tbaa !216
  store <2 x ptr> %wide.gep240.4, ptr %i.as, align 16, !tbaa !216
  %i.at = icmp eq i64 %n.vec, 20
  br i1 %i.at, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92
  %wide.load.5 = load <2 x i32>, ptr %i.au, align 4, !tbaa !15
  %wide.load239.5 = load <2 x i32>, ptr %i.av, align 4, !tbaa !15
  %i.aw = sext <2 x i32> %wide.load.5 to <2 x i64>
  %i.ax = sext <2 x i32> %wide.load239.5 to <2 x i64>
  %wide.gep.5 = getelementptr inbounds [64 x i8], ptr %.val154, <2 x i64> %i.aw
  %wide.gep240.5 = getelementptr inbounds [64 x i8], ptr %.val154, <2 x i64> %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x ptr> %wide.gep.5, ptr %i.ay, align 16, !tbaa !216
  store <2 x ptr> %wide.gep240.5, ptr %i.az, align 16, !tbaa !216
  %i.ba = icmp eq i64 %n.vec, 24
  br i1 %i.ba, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 108
  %wide.load.6 = load <2 x i32>, ptr %i.bb, align 4, !tbaa !15
  %wide.load239.6 = load <2 x i32>, ptr %i.bc, align 4, !tbaa !15
  %i.bd = sext <2 x i32> %wide.load.6 to <2 x i64>
  %i.be = sext <2 x i32> %wide.load239.6 to <2 x i64>
  %wide.gep.6 = getelementptr inbounds [64 x i8], ptr %.val154, <2 x i64> %i.bd
  %wide.gep240.6 = getelementptr inbounds [64 x i8], ptr %.val154, <2 x i64> %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x ptr> %wide.gep.6, ptr %i.bf, align 16, !tbaa !216
  store <2 x ptr> %wide.gep240.6, ptr %i.bg, align 16, !tbaa !216
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader247

.lr.ph.preheader247:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader247, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader247 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !15
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [64 x i8], ptr %.val154, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !216
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !217

.preheader:                                       ; preds = %.lr.ph, %middle.block
  %i.bm = getelementptr i8, ptr %i.m, i64 4       ; 2 uses
  %.val175 = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.bn = icmp sgt i32 %.val175, 1
  br i1 %i.bn, label %.critedge.lr.ph, label %.loopexit

.critedge.lr.ph:                                  ; preds = %.preheader
  %i.bo = getelementptr i8, ptr %i.m, i64 8
  %i.bp = getelementptr i8, ptr %0, i64 40
  %i.bq = getelementptr i8, ptr %0, i64 136
  %i.br = shl nsw i32 %1, 1
  %i.bs = ptrtoint ptr %2 to i64
  %i.bt = ptrtoint ptr %3 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = shl i32 %i.bv, 18
  %i.bx = and i32 %i.bw, 1072693248               ; 2 uses
  %wide.trip.count192 = zext nneg i32 %i.f to i64
  %wide.trip.count197 = zext nneg i32 %i.f to i64
  %wide.trip.count202 = zext nneg i32 %i.f to i64
  %wide.trip.count207 = zext nneg i32 %i.f to i64
  br label %.critedge

.loopexit.loopexit:                               ; preds = %bb.a
  %i.by = icmp eq i32 %i.g, 1                     ; 2 uses
  %i.bz = zext i1 %i.by to i32                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cb = ptrtoint ptr %2 to i64
  %i.cc = ptrtoint ptr %3 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = shl i32 %i.ce, 18
  %i.cg = and i32 %i.cf, 1072693248               ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %i.ci, align 4, !tbaa !206
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.cj, align 4, !tbaa !206
  %i.ck = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.cl = zext i1 %i.by to i64
  %i.cm = getelementptr inbounds nuw [80 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.co = load float, ptr %i.cn, align 4, !tbaa !8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store float %i.co, ptr %i.cp, align 4, !tbaa !209
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.co, ptr %i.cq, align 4, !tbaa !209
  %i.cr = load i32, ptr %i.ch, align 4
  %i.cs = and i32 %i.cr, -1073741824
  %i.ct = or disjoint i32 %i.cs, %i.cg
  %i.cu = load i32, ptr %i.d, align 4
  %i.cv = and i32 %i.cu, -1073741824
  %i.cw = or disjoint i32 %i.cv, %i.cg
  %i.cx = or disjoint i32 %i.ct, %i.bz
  store i32 %i.cx, ptr %i.ch, align 4
  %i.cy = or disjoint i32 %i.cw, %i.bz
  store i32 %i.cy, ptr %i.d, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %i.da, align 4, !tbaa !157
  store i32 0, ptr %i.cz, align 4, !tbaa !157
  %.val155.1 = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.db = getelementptr inbounds [64 x i8], ptr %.val155.1, i64 %i.c ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store i32 0, ptr %i.de, align 4, !tbaa !206
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i32 0, ptr %i.df, align 4, !tbaa !206
  %i.dg = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.dh = xor i32 %i.bz, 1                        ; 3 uses
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [80 x i8], ptr %i.dg, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 60
  store float %i.dl, ptr %i.dm, align 4, !tbaa !209
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store float %i.dl, ptr %i.dn, align 4, !tbaa !209
  %i.do = load i32, ptr %i.dd, align 4
  %i.dp = and i32 %i.do, -1073741824
  %i.dq = or disjoint i32 %i.dp, %i.cg
  %i.dr = load i32, ptr %i.dc, align 4
  %i.ds = and i32 %i.dr, -1073741824
  %i.dt = or disjoint i32 %i.ds, %i.cg
  %i.du = or disjoint i32 %i.dq, %i.dh
  store i32 %i.du, ptr %i.dd, align 4
  %i.dv = or disjoint i32 %i.dt, %i.dh
  store i32 %i.dv, ptr %i.dc, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 52
  store i32 0, ptr %i.dx, align 4, !tbaa !157
  store i32 0, ptr %i.dw, align 4, !tbaa !157
  br label %.loopexit

.critedge:                                        ; preds = %.critedge.lr.ph, %.loopexit161
  %indvars.iv209 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next210, %.loopexit161 ] ; 2 uses
  %.val152 = load ptr, ptr %i.bo, align 8, !tbaa !27
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val152, i64 %indvars.iv209 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !15 ; 5 uses
  %.val158 = load ptr, ptr %i.bp, align 8, !tbaa !68
  %i.ec = sext i32 %i.dz to i64
  %i.ed = getelementptr inbounds [80 x i8], ptr %.val158, i64 %i.ec ; 4 uses
  %i.ee = xor i32 %i.eb, %i.g
  %i.ef = and i32 %i.ee, 1                        ; 2 uses
  %.val160 = load ptr, ptr %i.bq, align 8, !tbaa !27
  %i.eg = or disjoint i32 %i.ef, %i.br
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.val160, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15
  %.fr178 = freeze i32 %i.ej                      ; 3 uses
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.ek ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  %i.eo = load float, ptr %i.en, align 4, !tbaa !8 ; 4 uses
  %i.ep = lshr i32 %i.eb, 8                       ; 4 uses
  %i.eq = lshr i32 %i.eb, 1
  %i.er = and i32 %i.eq, 127                      ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 44 ; 4 uses
  %.not179 = icmp eq i32 %.fr178, 1073741823
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 3 uses
  br i1 %.not179, label %.critedge.split.us, label %.critedge2

.critedge.split.us:                               ; preds = %.critedge
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !206 ; 4 uses
  %i.ew = icmp slt i32 %i.ev, 1073741823
  br i1 %i.ew, label %.critedge.split.us.split.us, label %.critedge2.us

.critedge.split.us.split.us:                      ; preds = %.critedge.split.us
  %i.ex = load i32, ptr %i.eu, align 4, !tbaa !206
  %.fr = freeze i32 %i.ex
  %i.ey = icmp slt i32 %.fr, 1073741823
  br i1 %i.ey, label %.critedge2.us.us, label %.critedge2.us.us.us

.critedge2.us.us.us:                              ; preds = %.critedge.split.us.split.us, %bb.d
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.d ], [ 0, %.critedge.split.us.split.us ] ; 4 uses
  %.0168.us.us.us = phi float [ %.1.us.us.us, %bb.d ], [ %i.eo, %.critedge.split.us.split.us ] ; 2 uses
  %.0135167.us.us.us = phi i32 [ %i.fp, %bb.d ], [ 0, %.critedge.split.us.split.us ]
  %indvars.iv199.tr = trunc nuw i64 %indvars.iv199 to i32
  %i.ez = shl nuw nsw i32 %indvars.iv199.tr, 2
  %i.fa = lshr i32 %i.ep, %i.ez
  %i.fb = and i32 %i.fa, 15
  %i.fc = trunc nuw nsw i64 %indvars.iv199 to i32
  %i.fd = lshr i32 %i.er, %i.fc
  %i.fe = and i32 %i.fd, 1
  %i.ff = zext nneg i32 %i.fb to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !216
  %i.fi = zext nneg i32 %i.fe to i64
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !206
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv199
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !15
  %i.fo = add nsw i32 %i.fn, %i.fl
  %i.fp = tail call noundef i32 @llvm.smax.i32(i32 %.0135167.us.us.us, i32 %i.fo) ; 2 uses
  %i.fq = fcmp ult float %.0168.us.us.us, 1.000000e+32
  br i1 %i.fq, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge2.us.us.us
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !209 ; 2 uses
  %i.ft = fcmp ult float %i.fs, 1.000000e+32
  br i1 %i.ft, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fu = fadd float %.0168.us.us.us, %i.fs
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.critedge2.us.us.us
  %.1.us.us.us = phi float [ %i.fu, %bb.c ], [ 1.000000e+32, %bb.b ], [ 1.000000e+32, %.critedge2.us.us.us ] ; 2 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %.critedge149, label %.critedge2.us.us.us, !llvm.loop !218

.critedge2.us.us:                                 ; preds = %.critedge.split.us.split.us, %bb.h
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %bb.h ], [ 0, %.critedge.split.us.split.us ] ; 4 uses
  %.0168.us.us = phi float [ %.1.us.us, %bb.h ], [ %i.eo, %.critedge.split.us.split.us ] ; 2 uses
  %.0135167.us.us = phi i32 [ %i.gm, %bb.h ], [ 0, %.critedge.split.us.split.us ]
  %indvars.iv204.tr = trunc nuw i64 %indvars.iv204 to i32
  %i.fv = shl nuw nsw i32 %indvars.iv204.tr, 2
  %i.fw = lshr i32 %i.ep, %i.fv
  %i.fx = and i32 %i.fw, 15
  %i.fy = trunc nuw nsw i64 %indvars.iv204 to i32
  %i.fz = lshr i32 %i.er, %i.fy
  %i.ga = and i32 %i.fz, 1
  %i.gb = zext nneg i32 %i.fx to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !216
  %i.ge = zext nneg i32 %i.ga to i64
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !206
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv204
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !15
  %i.gk = add nsw i32 %i.gj, %i.gh                ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 1073741823
  br i1 %i.gl, label %.loopexit161, label %bb.e

bb.e:                                             ; preds = %.critedge2.us.us
  %i.gm = tail call noundef i32 @llvm.smax.i32(i32 %.0135167.us.us, i32 %i.gk) ; 2 uses
  %i.gn = fcmp ult float %.0168.us.us, 1.000000e+32
  br i1 %i.gn, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gp = load float, ptr %i.go, align 4, !tbaa !209 ; 2 uses
  %i.gq = fcmp ult float %i.gp, 1.000000e+32
  br i1 %i.gq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gr = fadd float %.0168.us.us, %i.gp
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1.us.us = phi float [ %i.gr, %bb.g ], [ 1.000000e+32, %bb.f ], [ 1.000000e+32, %bb.e ] ; 2 uses
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %.critedge149, label %.critedge2.us.us, !llvm.loop !218

.critedge2.us:                                    ; preds = %.critedge.split.us, %bb.k
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %bb.k ], [ 0, %.critedge.split.us ] ; 4 uses
  %.0168.us = phi float [ %.1.us, %bb.k ], [ %i.eo, %.critedge.split.us ] ; 2 uses
  %.0135167.us = phi i32 [ %i.hi, %bb.k ], [ 0, %.critedge.split.us ]
  %indvars.iv194.tr = trunc nuw i64 %indvars.iv194 to i32
  %i.gs = shl nuw nsw i32 %indvars.iv194.tr, 2
  %i.gt = lshr i32 %i.ep, %i.gs
  %i.gu = and i32 %i.gt, 15
  %i.gv = trunc nuw nsw i64 %indvars.iv194 to i32
  %i.gw = lshr i32 %i.er, %i.gv
  %i.gx = and i32 %i.gw, 1
  %i.gy = zext nneg i32 %i.gu to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !216
  %i.hb = zext nneg i32 %i.gx to i64
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !206
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv194
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !15
  %i.hh = add nsw i32 %i.hg, %i.he
  %i.hi = tail call noundef i32 @llvm.smax.i32(i32 %.0135167.us, i32 %i.hh) ; 2 uses
  %i.hj = fcmp ult float %.0168.us, 1.000000e+32
  br i1 %i.hj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.critedge2.us
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !209 ; 2 uses
  %i.hm = fcmp ult float %i.hl, 1.000000e+32
  br i1 %i.hm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hn = fadd float %.0168.us, %i.hl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.critedge2.us
  %.1.us = phi float [ %i.hn, %bb.j ], [ 1.000000e+32, %bb.i ], [ 1.000000e+32, %.critedge2.us ] ; 2 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.critedge149, label %.critedge2.us, !llvm.loop !218

.critedge2:                                       ; preds = %.critedge, %bb.t
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %bb.t ], [ 0, %.critedge ] ; 4 uses
  %.0168 = phi float [ %.1, %bb.t ], [ %i.eo, %.critedge ] ; 4 uses
  %.0135167 = phi i32 [ %.1136, %bb.t ], [ 0, %.critedge ] ; 2 uses
  %indvars.iv189.tr = trunc nuw i64 %indvars.iv189 to i32
  %i.ho = shl nuw nsw i32 %indvars.iv189.tr, 2
  %i.hp = lshr i32 %i.ep, %i.ho
  %i.hq = and i32 %i.hp, 15
  %i.hr = trunc nuw nsw i64 %indvars.iv189 to i32
  %i.hs = lshr i32 %i.er, %i.hr
  %i.ht = and i32 %i.hs, 1
  %i.hu = zext nneg i32 %i.hq to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !216
  %i.hx = zext nneg i32 %i.ht to i64
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.hw, i64 %i.hx ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !206 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !206
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv189
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !15 ; 3 uses
  %i.if = add nsw i32 %i.ie, %i.ic                ; 2 uses
  %.not180 = icmp sgt i32 %i.if, %.fr178
  br i1 %.not180, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.critedge2
  %i.ig = tail call noundef i32 @llvm.smax.i32(i32 %.0135167, i32 %i.if) ; 3 uses
  %i.ih = fcmp ult float %.0168, 1.000000e+32
  br i1 %i.ih, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !209 ; 2 uses
  %i.ik = fcmp ult float %i.ij, 1.000000e+32
  br i1 %i.ik, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.il = fadd float %.0168, %i.ij
  br label %bb.t

bb.o:                                             ; preds = %.critedge2
  %i.im = load i32, ptr %i.et, align 4, !tbaa !206
  %i.in = icmp slt i32 %i.im, 1073741823
  br i1 %i.in, label %bb.p, label %._crit_edge215

._crit_edge215:                                   ; preds = %bb.o
  %.pre216 = add nsw i32 %i.ie, %i.ia
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.io = load i32, ptr %i.eu, align 4, !tbaa !206
  %i.ip = icmp slt i32 %i.io, 1073741823
  %i.iq = add nsw i32 %i.ie, %i.ia                ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, %.fr178
  %or.cond147 = select i1 %i.ip, i1 %i.ir, i1 false
  br i1 %or.cond147, label %.loopexit161, label %bb.q

bb.q:                                             ; preds = %._crit_edge215, %bb.p
  %.pre-phi = phi i32 [ %.pre216, %._crit_edge215 ], [ %i.iq, %bb.p ]
  %i.is = tail call noundef i32 @llvm.smax.i32(i32 %.0135167, i32 %.pre-phi) ; 3 uses
  %i.it = fcmp ult float %.0168, 1.000000e+32
  br i1 %i.it, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !209 ; 2 uses
  %i.iw = fcmp ult float %i.iv, 1.000000e+32
  br i1 %i.iw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ix = fadd float %.0168, %i.iv
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.l, %bb.m, %bb.n, %bb.s
  %.1136 = phi i32 [ %i.is, %bb.s ], [ %i.ig, %bb.n ], [ %i.ig, %bb.l ], [ %i.ig, %bb.m ], [ %i.is, %bb.r ], [ %i.is, %bb.q ] ; 2 uses
  %.1 = phi float [ %i.ix, %bb.s ], [ %i.il, %bb.n ], [ 1.000000e+32, %bb.l ], [ 1.000000e+32, %bb.m ], [ 1.000000e+32, %bb.r ], [ 1.000000e+32, %bb.q ] ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %.critedge149.loopexit184, label %.critedge2, !llvm.loop !218

.critedge149.loopexit184:                         ; preds = %bb.t
  %.pre = load i32, ptr %i.et, align 4, !tbaa !206
  br label %.critedge149

.critedge149:                                     ; preds = %bb.k, %bb.d, %bb.h, %.critedge149.loopexit184
  %i.iy = phi i32 [ %i.ev, %bb.h ], [ %i.ev, %bb.d ], [ %.pre, %.critedge149.loopexit184 ], [ %i.ev, %bb.k ]
  %.us-phi = phi i32 [ %i.gm, %bb.h ], [ %i.fp, %bb.d ], [ %.1136, %.critedge149.loopexit184 ], [ %i.hi, %bb.k ] ; 3 uses
  %.us-phi169 = phi float [ %.1.us.us, %bb.h ], [ %.1.us.us.us, %bb.d ], [ %.1, %.critedge149.loopexit184 ], [ %.1.us, %bb.k ] ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, %.us-phi
  br i1 %i.iz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge149
  store i32 %.us-phi, ptr %i.et, align 4, !tbaa !206
  %i.ja = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store float %.us-phi169, ptr %i.ja, align 4, !tbaa !209
  %i.jb = load i32, ptr %i.el, align 4
  %i.jc = and i32 %i.jb, -1072693249
  %i.jd = or disjoint i32 %i.jc, %i.bx            ; 2 uses
  store i32 %i.jd, ptr %i.el, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.jf = load i32, ptr %i.je, align 8
  %i.jg = and i32 %i.jf, 1048575
  %i.jh = and i32 %i.jd, -1048576
  %i.ji = or disjoint i32 %i.jh, %i.jg
  store i32 %i.ji, ptr %i.el, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.jk = and i32 %i.eb, -2
  store i32 %i.jk, ptr %i.jj, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge149
  %i.jl = getelementptr inbounds nuw i8, ptr %i.el, i64 28 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !209
  %i.jn = fpext float %i.jm to double
  %i.jo = fpext float %.us-phi169 to double
  %i.jp = fadd double %i.jo, 1.000000e-03
  %i.jq = fcmp olt double %i.jp, %i.jn
  br i1 %i.jq, label %bb.w, label %.loopexit161

bb.w:                                             ; preds = %bb.v
  store i32 %.us-phi, ptr %i.eu, align 4, !tbaa !206
  store float %.us-phi169, ptr %i.jl, align 4, !tbaa !209
  %i.jr = load i32, ptr %i.em, align 4
  %i.js = and i32 %i.jr, -1072693249
  %i.jt = or disjoint i32 %i.js, %i.bx            ; 2 uses
  store i32 %i.jt, ptr %i.em, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.jv = load i32, ptr %i.ju, align 8
  %i.jw = and i32 %i.jv, 1048575
  %i.jx = and i32 %i.jt, -1048576
  %i.jy = or disjoint i32 %i.jx, %i.jw
  store i32 %i.jy, ptr %i.em, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  %i.ka = and i32 %i.eb, -2
  store i32 %i.ka, ptr %i.jz, align 4
  br label %.loopexit161

.loopexit161:                                     ; preds = %bb.p, %.critedge2.us.us, %bb.v, %bb.w
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %i.kb = or disjoint i64 %indvars.iv.next210, 1
  %.val = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.kc = sext i32 %.val to i64
  %i.kd = icmp slt i64 %i.kb, %i.kc
  br i1 %i.kd, label %.critedge, label %.loopexit, !llvm.loop !219

.loopexit:                                        ; preds = %.loopexit161, %.loopexit.loopexit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Nf_ManCutMatch(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val122 = load ptr, ptr %i.a, align 8, !tbaa !110 ; 3 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [64 x i8], ptr %.val122, i64 %i.b ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 120
  %.val124 = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.h = shl nsw i32 %1, 1
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.val124, i64 %i.i
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !116 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 72
  %.val125 = load ptr, ptr %i.l, align 8, !tbaa !113
  %i.m = getelementptr i8, ptr %0, i64 88
  %.val126 = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds [4 x i8], ptr %.val126, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15   ; 2 uses
  %i.p = ashr i32 %i.o, 16
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val125, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !131
  %i.t = and i32 %i.o, 65535
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.x = load i32, ptr %i.w, align 4, !tbaa !220
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %Nf_ObjComputeRequired.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %0, i64 136
  %.val17.i = load ptr, ptr %i.y, align 8, !tbaa !27 ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val17.i, i64 %i.i ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 1073741823
  br i1 %i.ae, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ag = lshr i32 %i.af, 20
  %i.ah = and i32 %i.ag, 1023
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.val34.i.i = load i32, ptr %i.aj, align 4, !tbaa !15
  %i.al = and i32 %.val34.i.i, 31                 ; 2 uses
  %.not44.i.i = icmp eq i32 %i.al, 0
  br i1 %.not44.i.i, label %Nf_CutRequired.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.val35.i.i = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.an = and i32 %i.af, 1048575
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [80 x i8], ptr %.val35.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ar = lshr i32 %i.aq, 8
  %i.as = lshr i32 %i.aq, 1
  %i.at = and i32 %i.as, 127
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %wide.trip.count.i.i = zext nneg i32 %i.al to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %.039.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.e ] ; 3 uses
  %.03038.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.br, %bb.e ] ; 2 uses
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.av = shl nuw nsw i32 %indvars.iv.tr.i.i, 2
  %i.aw = lshr i32 %i.ar, %i.av
  %i.ax = and i32 %i.aw, 15
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !15 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %Nf_CutRequired.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = lshr i32 %i.at, %indvars.iv.tr.i.i
  %i.bc = and i32 %i.bb, 1                        ; 2 uses
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [64 x i8], ptr %.val122, i64 %i.bd
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !206
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !15 ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.bi
  %i.bm = shl nsw i32 %i.ba, 1
  %i.bn = or disjoint i32 %i.bm, %i.bc
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val17.i, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !15 ; 2 uses
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %.03038.i.i, i32 %i.bl) ; 2 uses
  %i.bs = icmp slt i32 %i.bq, 1073741823
  %i.bt = add nsw i32 %i.bq, %i.bk
  %i.bu = tail call i32 @llvm.smax.i32(i32 %.039.i.i, i32 %i.bt)
  %.1.i.i = select i1 %i.bs, i32 %i.bu, i32 %.039.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Nf_CutRequired.exit.i, label %bb.d, !llvm.loop !221

Nf_CutRequired.exit.i:                            ; preds = %bb.e, %bb.d, %bb.c
  %.030.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %.03038.i.i, %bb.d ], [ %i.br, %bb.e ]
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %.039.i.i, %bb.d ], [ %.1.i.i, %bb.e ]
  %i.bv = load ptr, ptr %i.aa, align 8, !tbaa !108
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !222
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !126
  %i.bz = mul nsw i32 %i.by, %i.bx
  %i.ca = add nsw i32 %i.bz, %.0.lcssa.i.i
  %i.cb = tail call noundef i32 @llvm.smax.i32(i32 %i.ca, i32 %.030.lcssa.i.i) ; 2 uses
  store i32 %i.cb, ptr %i.ac, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %Nf_CutRequired.exit.i, %bb.b
  %i.cc = phi i32 [ %i.cb, %Nf_CutRequired.exit.i ], [ %i.ad, %bb.b ] ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !15 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 1073741823
  br i1 %i.cf, label %bb.g, label %Nf_ObjComputeRequired.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ch = lshr i32 %i.cg, 20
  %i.ci = and i32 %i.ch, 1023
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.val34.i.1.i = load i32, ptr %i.ck, align 4, !tbaa !15
  %i.cm = and i32 %.val34.i.1.i, 31               ; 2 uses
  %.not44.i.1.i = icmp eq i32 %i.cm, 0
  br i1 %.not44.i.1.i, label %Nf_CutRequired.exit.1.i, label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.val35.i.1.i = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.co = and i32 %i.cg, 1048575
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [80 x i8], ptr %.val35.i.1.i, i64 %i.cp
  %i.cr = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = lshr i32 %i.cr, 1
  %i.cu = and i32 %i.ct, 127
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %wide.trip.count.i.1.i = zext nneg i32 %i.cm to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.1.i
  %indvars.iv.i.1.i = phi i64 [ 0, %.lr.ph.i.1.i ], [ %indvars.iv.next.i.1.i, %bb.i ] ; 3 uses
  %.039.i.1.i = phi i32 [ 0, %.lr.ph.i.1.i ], [ %.1.i.1.i, %bb.i ] ; 3 uses
  %.03038.i.1.i = phi i32 [ 0, %.lr.ph.i.1.i ], [ %i.ds, %bb.i ] ; 2 uses
  %indvars.iv.tr.i.1.i = trunc nuw i64 %indvars.iv.i.1.i to i32 ; 2 uses
  %i.cw = shl nuw nsw i32 %indvars.iv.tr.i.1.i, 2
  %i.cx = lshr i32 %i.cs, %i.cw
  %i.cy = and i32 %i.cx, 15
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !15 ; 3 uses
  %.not.i.1.i = icmp eq i32 %i.db, 0
  br i1 %.not.i.1.i, label %Nf_CutRequired.exit.1.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = lshr i32 %i.cu, %indvars.iv.tr.i.1.i
  %i.dd = and i32 %i.dc, 1                        ; 2 uses
  %i.de = sext i32 %i.db to i64
  %i.df = getelementptr inbounds [64 x i8], ptr %.val122, i64 %i.de
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !206
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.1.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15 ; 2 uses
  %i.dm = add nsw i32 %i.dl, %i.dj
  %i.dn = shl nsw i32 %i.db, 1
  %i.do = or disjoint i32 %i.dn, %i.dd
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.val17.i, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !15 ; 2 uses
  %i.ds = tail call noundef i32 @llvm.smax.i32(i32 %.03038.i.1.i, i32 %i.dm) ; 2 uses
  %i.dt = icmp slt i32 %i.dr, 1073741823
  %i.du = add nsw i32 %i.dr, %i.dl
  %i.dv = tail call i32 @llvm.smax.i32(i32 %.039.i.1.i, i32 %i.du)
  %.1.i.1.i = select i1 %i.dt, i32 %i.dv, i32 %.039.i.1.i ; 2 uses
  %indvars.iv.next.i.1.i = add nuw nsw i64 %indvars.iv.i.1.i, 1 ; 2 uses
  %exitcond.not.i.1.i = icmp eq i64 %indvars.iv.next.i.1.i, %wide.trip.count.i.1.i
  br i1 %exitcond.not.i.1.i, label %Nf_CutRequired.exit.1.i, label %bb.h, !llvm.loop !221

Nf_CutRequired.exit.1.i:                          ; preds = %bb.i, %bb.h, %bb.g
  %.030.lcssa.i.1.i = phi i32 [ 0, %bb.g ], [ %.03038.i.1.i, %bb.h ], [ %i.ds, %bb.i ]
  %.0.lcssa.i.1.i = phi i32 [ 0, %bb.g ], [ %.039.i.1.i, %bb.h ], [ %.1.i.1.i, %bb.i ]
  %i.dw = load ptr, ptr %i.aa, align 8, !tbaa !108
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !222
  %i.dz = load i32, ptr %i.ab, align 8, !tbaa !126
  %i.ea = mul nsw i32 %i.dz, %i.dy
  %i.eb = add nsw i32 %i.ea, %.0.lcssa.i.1.i
  %i.ec = tail call noundef i32 @llvm.smax.i32(i32 %i.eb, i32 %.030.lcssa.i.1.i) ; 2 uses
  store i32 %i.ec, ptr %i.cd, align 4, !tbaa !15
  br label %Nf_ObjComputeRequired.exit

Nf_ObjComputeRequired.exit:                       ; preds = %Nf_CutRequired.exit.1.i, %bb.f, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %i.cc, %bb.f ], [ %i.cc, %Nf_CutRequired.exit.1.i ]
  %.sroa.5.0 = phi i32 [ 0, %bb.a ], [ %i.ce, %bb.f ], [ %i.ec, %Nf_CutRequired.exit.1.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, i8 0, i64 56, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i32 1073741823, ptr %i.ed, align 4, !tbaa !206
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 5 uses
  store float f0x7F7FFFFF, ptr %i.ee, align 4, !tbaa !209
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  store i32 1073741823, ptr %i.ef, align 4, !tbaa !206
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 5 uses
  store float f0x7F7FFFFF, ptr %i.eg, align 4, !tbaa !209
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  store i32 1073741823, ptr %i.eh, align 4, !tbaa !206
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 6 uses
  store float f0x7F7FFFFF, ptr %i.ei, align 4, !tbaa !209
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 6 uses
  store i32 1073741823, ptr %i.ej, align 4, !tbaa !206
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 6 uses
  store float f0x7F7FFFFF, ptr %i.ek, align 4, !tbaa !209
  %i.el = load i32, ptr %i.v, align 4, !tbaa !15  ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Nf_ObjComputeRequired.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %i.eo = phi i32 [ %i.el, %.lr.ph ], [ %i.es, %bb.l ]
  %.pn = phi ptr [ %i.v, %.lr.ph ], [ %i.ew, %bb.l ]
  %.0117136 = phi i32 [ 0, %.lr.ph ], [ %i.et, %bb.l ]
  %.0137 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 4 uses
  %.0.val = load i32, ptr %.0137, align 4, !tbaa !15 ; 2 uses
  %i.ep = lshr i32 %.0.val, 6
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !83
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %.val = load i32, ptr %i.er, align 4, !tbaa !19
  %.not121 = icmp slt i32 %i.ep, %.val
  br i1 %.not121, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @Nf_ManCutMatchOne(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %.0137, ptr noundef nonnull %i.v)
  %.0.val127.pre = load i32, ptr %.0137, align 4, !tbaa !15
  %.pre = load i32, ptr %i.v, align 4, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.es = phi i32 [ %i.eo, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %.0.val127 = phi i32 [ %.0.val, %bb.j ], [ %.0.val127.pre, %bb.k ]
  %i.et = add nuw nsw i32 %.0117136, 1            ; 2 uses
  %i.eu = and i32 %.0.val127, 31
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0137, i64 %i.ev
  %i.ex = icmp slt i32 %i.et, %i.es
  br i1 %i.ex, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !223

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre139 = load float, ptr %i.ee, align 4, !tbaa !209
  %.pre140 = load float, ptr %i.ei, align 4, !tbaa !209
  %.pre141 = load float, ptr %i.eg, align 4, !tbaa !209
  %.pre142 = load float, ptr %i.ek, align 4, !tbaa !209
  %.pre143 = load i32, ptr %i.ed, align 4, !tbaa !206
  %.pre144 = load i32, ptr %i.ef, align 4, !tbaa !206
  %i.ey = insertelement <2 x float> poison, float %.pre140, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %.pre142, i64 1
  %i.fa = insertelement <2 x float> poison, float %.pre139, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %.pre141, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Nf_ObjComputeRequired.exit
  %i.fc = phi i32 [ %.pre144, %._crit_edge.loopexit ], [ 1073741823, %Nf_ObjComputeRequired.exit ] ; 5 uses
  %i.fd = phi i32 [ %.pre143, %._crit_edge.loopexit ], [ 1073741823, %Nf_ObjComputeRequired.exit ] ; 5 uses
  %i.fe = phi <2 x float> [ %i.ez, %._crit_edge.loopexit ], [ splat (float f0x7F7FFFFF), %Nf_ObjComputeRequired.exit ]
  %i.ff = phi <2 x float> [ %i.fb, %._crit_edge.loopexit ], [ splat (float f0x7F7FFFFF), %Nf_ObjComputeRequired.exit ]
  %i.fg = fdiv <2 x float> %i.fe, %i.k            ; 3 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  store float %i.fh, ptr %i.ei, align 4, !tbaa !209
  %i.fi = fdiv <2 x float> %i.ff, %i.k            ; 2 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 0
  store float %i.fj, ptr %i.ee, align 4, !tbaa !209
  %i.fk = extractelement <2 x float> %i.fi, i64 1
  store float %i.fk, ptr %i.eg, align 4, !tbaa !209
  %i.fl = extractelement <2 x float> %i.fg, i64 1
  store float %i.fl, ptr %i.ek, align 4, !tbaa !209
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !126 ; 2 uses
  %i.fo = add nsw i32 %i.fn, %i.fc
  %i.fp = icmp sgt i32 %i.fd, %i.fo
  br i1 %i.fp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !224
  %i.fq = load i32, ptr %i.fm, align 8, !tbaa !126
  %i.fr = load i32, ptr %i.ed, align 4, !tbaa !206
  %i.fs = add nsw i32 %i.fr, %i.fq                ; 3 uses
  store i32 %i.fs, ptr %i.ed, align 4, !tbaa !206
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !129
  %i.fv = load float, ptr %i.ee, align 4, !tbaa !209
  %i.fw = fadd float %i.fu, %i.fv
  store float %i.fw, ptr %i.ee, align 4, !tbaa !209
  %i.fx = load i32, ptr %i.c, align 4
  %i.fy = or i32 %i.fx, 1073741824
  store i32 %i.fy, ptr %i.c, align 4
  %i.fz = load i32, ptr %i.eh, align 4, !tbaa !206 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 1073741823
  br i1 %i.ga, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !224
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %i.gb = add nsw i32 %i.fn, %i.fd
  %i.gc = icmp sgt i32 %i.fc, %i.gb
  br i1 %i.gc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !224
  %i.gd = load i32, ptr %i.fm, align 8, !tbaa !126
  %i.ge = load i32, ptr %i.ef, align 4, !tbaa !206
  %i.gf = add nsw i32 %i.ge, %i.gd                ; 3 uses
  store i32 %i.gf, ptr %i.ef, align 4, !tbaa !206
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !129
  %i.gi = load float, ptr %i.eg, align 4, !tbaa !209
  %i.gj = fadd float %i.gh, %i.gi
  store float %i.gj, ptr %i.eg, align 4, !tbaa !209
  %i.gk = load i32, ptr %i.d, align 4
  %i.gl = or i32 %i.gk, 1073741824
  store i32 %i.gl, ptr %i.d, align 4
  %i.gm = load i32, ptr %i.ej, align 4, !tbaa !206
  %i.gn = icmp eq i32 %i.gm, 1073741823
  br i1 %i.gn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !224
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.n
  %i.go = phi i32 [ %i.fd, %bb.o ], [ %i.fd, %bb.q ], [ %i.fd, %bb.p ], [ %i.fs, %bb.n ] ; 2 uses
  %i.gp = phi i32 [ %i.fc, %bb.o ], [ %i.gf, %bb.q ], [ %i.gf, %bb.p ], [ %i.fc, %bb.n ]
  %.pr = load i32, ptr %i.eh, align 4, !tbaa !206 ; 2 uses
  %i.gq = icmp eq i32 %.pr, 1073741823
  br i1 %i.gq, label %bb.t, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.r
  %.pre145 = load float, ptr %i.ei, align 4, !tbaa !209
  %.pre146 = load float, ptr %i.ek, align 4, !tbaa !209
  %i.gr = insertelement <2 x float> poison, float %.pre145, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %.pre146, i64 1
  br label %.thread
end_hunk_1
begin_hunk_2_@Nf_ManSetMapRefs:bb.a
bb.n:                                             ; preds = %Nf_ObjUpdateRequired.exit327, %bb.k
  %.pre-phi395 = phi i32 [ %.pre394, %Nf_ObjUpdateRequired.exit327 ], [ %i.bt, %bb.k ]
  %i.ei = load ptr, ptr %i.bb, align 8, !tbaa !107
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val295.pre, i64 %i.dk
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !15
  %i.el = sitofp i32 %i.ek to float
  tail call void @Tim_ManSetCiRequired(ptr noundef %i.ei, i32 noundef %.pre-phi395, float noundef %i.el) #26
  br label %.loopexit

bb.o:                                             ; preds = %bb.j
  %.not.i328 = icmp eq i64 %i.bv, 0
  %i.em = and i64 %.val282, 536870911
  %i.en = icmp eq i64 %i.em, 536870911
  %narrow.i329.not = or i1 %.not.i328, %i.en
  br i1 %narrow.i329.not, label %.preheader341, label %bb.p

.preheader341:                                    ; preds = %bb.o
  %.val320 = load ptr, ptr %i.l, align 8, !tbaa !27
  %scevgep = getelementptr i8, ptr %.val320, i64 %i.bm ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %scevgep, align 4, !tbaa !15
  %.sroa.4.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0.scevgep.sroa_idx, align 4, !tbaa !15 ; 2 uses
  %i.eo = icmp ne i32 %.sroa.0.0.copyload, 0      ; 2 uses
  %i.ep = icmp ne i32 %.sroa.4.0.copyload, 0      ; 2 uses
  %or.cond = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond, label %bb.r, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.eq = load ptr, ptr %i.bb, align 8, !tbaa !107
  %i.er = tail call float @Tim_ManGetCoRequired(ptr noundef %i.eq, i32 noundef %i.bt) #26
  %i.es = fptosi float %i.er to i32               ; 2 uses
  %.val273 = load i64, ptr %i.bo, align 4
  %i.et = trunc i64 %.val273 to i32               ; 2 uses
  %i.eu = and i32 %i.et, 536870911
  %i.ev = trunc nsw i64 %indvars.iv.next377 to i32 ; 2 uses
  %i.ew = sub nsw i32 %i.ev, %i.eu
  %i.ex = lshr i32 %i.et, 29
  %i.ey = and i32 %i.ex, 1
  %.val305 = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.ez = shl nsw i32 %i.ew, 1
  %i.fa = or disjoint i32 %i.ez, %i.ey
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val305, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !15
  %i.fe = icmp sgt i32 %i.fd, %i.es
  br i1 %i.fe, label %bb.q, label %Nf_ObjUpdateRequired.exit330

bb.q:                                             ; preds = %bb.p
  store i32 %i.es, ptr %i.fc, align 4, !tbaa !15
  %.val272.pre = load i64, ptr %i.bo, align 4
  %.pre396 = trunc i64 %.val272.pre to i32        ; 2 uses
  %.pre398 = and i32 %.pre396, 536870911
  %.pre400 = sub nsw i32 %i.ev, %.pre398
  %.pre402 = lshr i32 %.pre396, 29
  %.pre404 = and i32 %.pre402, 1
  %.pre406 = shl nsw i32 %.pre400, 1
  %.pre408 = or disjoint i32 %.pre406, %.pre404
  %.pre410 = sext i32 %.pre408 to i64
  br label %Nf_ObjUpdateRequired.exit330

Nf_ObjUpdateRequired.exit330:                     ; preds = %bb.p, %bb.q
  %.pre-phi411 = phi i64 [ %i.fb, %bb.p ], [ %.pre410, %bb.q ]
  %.val312 = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.ff = getelementptr inbounds [4 x i8], ptr %.val312, i64 %.pre-phi411 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !15
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !15
  br label %.loopexit

bb.r:                                             ; preds = %.preheader341
  %or.cond7 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond7, label %.preheader340, label %bb.x

.preheader340:                                    ; preds = %bb.r
  %.val294 = load ptr, ptr %i.ay, align 8, !tbaa !27 ; 3 uses
  %i.fi = shl nsw i64 %indvars.iv.next377, 1      ; 3 uses
  %.val270 = load ptr, ptr %i.bc, align 8, !tbaa !110
  %i.fj = getelementptr inbounds [64 x i8], ptr %.val270, i64 %indvars.iv.next377 ; 7 uses
  %scevgep369 = getelementptr i8, ptr %.val294, i64 %i.bm
  %i.fk = load i64, ptr %scevgep369, align 4, !tbaa !15
  store i64 %i.fk, ptr %i.b, align 8, !tbaa !15
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val294, i64 %i.fi
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !206
  %.not261 = icmp sgt i32 %i.fo, %i.fm
  %spec.select.idx = select i1 %.not261, i64 0, i64 16
  %spec.select = getelementptr inbounds nuw i8, ptr %i.fj, i64 %spec.select.idx ; 4 uses
  store ptr %spec.select, ptr %i.a, align 16, !tbaa !244
  %i.fp = getelementptr [4 x i8], ptr %.val294, i64 %i.fi
  %i.fq = getelementptr i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !206
  %.not261.1 = icmp sgt i32 %i.fu, %i.fr
  %spec.select.idx.1 = select i1 %.not261.1, i64 0, i64 16
  %spec.select.1 = getelementptr inbounds nuw i8, ptr %i.fs, i64 %spec.select.idx.1 ; 4 uses
  store ptr %spec.select.1, ptr %i.bd, align 8, !tbaa !244
  %i.fv = load i32, ptr %spec.select, align 4     ; 3 uses
  %i.fw = and i32 %i.fv, 1073741824
  %.not255 = icmp eq i32 %i.fw, 0
  br i1 %.not255, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.preheader340
  %i.fx = load i32, ptr %spec.select.1, align 4
  %i.fy = and i32 %i.fx, 1073741824
  %.not256 = icmp eq i32 %i.fy, 0
  br i1 %.not256, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.fj, ptr %i.a, align 16, !tbaa !244
  store ptr %i.fs, ptr %i.bd, align 8, !tbaa !244
  %.pre = load i32, ptr %i.fj, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.preheader340
  %i.fz = phi i32 [ %.pre, %bb.t ], [ %i.fv, %bb.s ], [ %i.fv, %.preheader340 ]
  %i.ga = phi ptr [ %i.fs, %bb.t ], [ %spec.select.1, %bb.s ], [ %spec.select.1, %.preheader340 ] ; 2 uses
  %i.gb = phi ptr [ %i.fj, %bb.t ], [ %spec.select, %bb.s ], [ %spec.select, %.preheader340 ]
  %i.gc = and i32 %i.fz, 1073741824
  %.not257 = icmp eq i32 %i.gc, 0
  %.pre388 = load i32, ptr %i.ga, align 4         ; 2 uses
  %i.gd = and i32 %.pre388, 1073741824
  %.not258 = icmp eq i32 %i.gd, 0
  %or.cond444 = select i1 %.not257, i1 %.not258, i1 false
  br i1 %or.cond444, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %bb.u
  %i.ge = load i32, ptr %i.b, align 8, !tbaa !15
  %i.gf = trunc nsw i64 %indvars.iv.next377 to i32 ; 2 uses
  tail call void @Nf_ManSetMapRefsGate(ptr noundef nonnull %0, i32 noundef %i.gf, i32 noundef %i.ge, ptr noundef nonnull %i.gb)
  %i.gg = load i32, ptr %i.bh, align 4, !tbaa !15
  tail call void @Nf_ManSetMapRefsGate(ptr noundef nonnull %0, i32 noundef %i.gf, i32 noundef %i.gg, ptr noundef nonnull %i.ga)
  br label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.gh = lshr i32 %.pre388, 30
  %i.gi = and i32 %i.gh, 1                        ; 2 uses
  %i.gj = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !244 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = or i32 %i.gm, -2147483648
  store i32 %i.gn, ptr %i.gl, align 4
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gj
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !15
  %i.gq = xor i32 %i.gi, 1                        ; 2 uses
  %.val311 = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = or disjoint i64 %i.fi, %i.gr            ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %.val311, i64 %i.gs ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !15
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !15
  %i.gw = load i32, ptr %i.az, align 8, !tbaa !126
  %i.gx = sub nsw i32 %i.gp, %i.gw                ; 3 uses
  %.val304 = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.gy = getelementptr inbounds [4 x i8], ptr %.val304, i64 %i.gs ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !15 ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, %i.gx
  br i1 %i.ha, label %bb.w, label %Nf_ObjUpdateRequired.exit331

bb.w:                                             ; preds = %bb.v
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !15
  br label %Nf_ObjUpdateRequired.exit331

Nf_ObjUpdateRequired.exit331:                     ; preds = %bb.v, %bb.w
  %i.hb = phi i32 [ %i.gz, %bb.v ], [ %i.gx, %bb.w ] ; 3 uses
  %.val267 = load ptr, ptr %i.bc, align 8, !tbaa !110
  %i.hc = getelementptr inbounds [64 x i8], ptr %.val267, i64 %indvars.iv.next377
  %i.hd = zext nneg i32 %i.gq to i64
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.hc, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !206
  %.not260 = icmp sgt i32 %i.hg, %i.hb
  %.idx338 = select i1 %.not260, i64 0, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx338
  %i.hi = trunc nsw i64 %indvars.iv.next377 to i32
  tail call void @Nf_ManSetMapRefsGate(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %i.hb, ptr noundef %i.hh)
  %i.hj = load float, ptr %i.ba, align 8, !tbaa !129
  %i.hk = load ptr, ptr %i.aq, align 8, !tbaa !108 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 240 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !192
  %i.hn = fadd float %i.hj, %i.hm
  store float %i.hn, ptr %i.hl, align 8, !tbaa !192
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 176 ; 2 uses
  %i.hp = load <2 x i64>, ptr %i.ho, align 8, !tbaa !18
  %i.hq = add <2 x i64> %i.hp, splat (i64 1)
  store <2 x i64> %i.hq, ptr %i.ho, align 8, !tbaa !18
  %i.hr = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.hs = add nsw i32 %i.hr, 1
  store i32 %i.hs, ptr %i.ap, align 4, !tbaa !194
  br label %.loopexit

bb.x:                                             ; preds = %bb.r
  %i.ht = icmp sgt i32 %.sroa.4.0.copyload, 0     ; 3 uses
  %i.hu = zext i1 %i.ht to i32
  %.val292 = load ptr, ptr %i.ay, align 8, !tbaa !27
  %indvars.iv.next377.tr = trunc i64 %indvars.iv.next377 to i32
  %i.hv = shl nsw i32 %indvars.iv.next377.tr, 1   ; 2 uses
  %i.hw = or disjoint i32 %i.hv, %i.hu
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %.val292, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !15 ; 3 uses
  %.val266 = load ptr, ptr %i.bc, align 8, !tbaa !110
  %i.ia = getelementptr inbounds [64 x i8], ptr %.val266, i64 %indvars.iv.next377
  %i.ib = zext i1 %i.ht to i64
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.ia, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !206
  %.not252 = icmp sgt i32 %i.ie, %i.hz
  %.idx = select i1 %.not252, i64 0, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.idx ; 4 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = and i32 %i.ig, 1073741824
  %.not253 = icmp eq i32 %i.ih, 0
  br i1 %.not253, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ii = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.ij = add nsw i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ap, align 4, !tbaa !194
  %i.ik = load i32, ptr %i.if, align 4
  %i.il = or i32 %i.ik, -2147483648
  store i32 %i.il, ptr %i.if, align 4
  %i.im = xor i1 %i.ht, true                      ; 2 uses
  %i.in = zext i1 %i.im to i32
  %.val310 = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.io = or disjoint i32 %i.hv, %i.in
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %.val310, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !15
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !15
  %i.it = load i32, ptr %i.az, align 8, !tbaa !126
  %i.iu = sub nsw i32 %i.hz, %i.it                ; 3 uses
  %.val303 = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.iv = getelementptr inbounds [4 x i8], ptr %.val303, i64 %i.ip ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !15 ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, %i.iu
  br i1 %i.ix, label %bb.z, label %Nf_ObjUpdateRequired.exit332

bb.z:                                             ; preds = %bb.y
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !15
  br label %Nf_ObjUpdateRequired.exit332

Nf_ObjUpdateRequired.exit332:                     ; preds = %bb.y, %bb.z
  %i.iy = phi i32 [ %i.iw, %bb.y ], [ %i.iu, %bb.z ] ; 2 uses
  %.val265 = load ptr, ptr %i.bc, align 8, !tbaa !110
  %i.iz = getelementptr inbounds [64 x i8], ptr %.val265, i64 %indvars.iv.next377
  %i.ja = zext i1 %i.im to i64
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !206
  %.not254 = icmp sgt i32 %i.jd, %i.iy
  %.idx337 = select i1 %.not254, i64 0, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.idx337
  %i.jf = load float, ptr %i.ba, align 8, !tbaa !129
  %i.jg = load ptr, ptr %i.aq, align 8, !tbaa !108 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 240 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 8, !tbaa !192
  %i.jj = fadd float %i.jf, %i.ji
  store float %i.jj, ptr %i.jh, align 8, !tbaa !192
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 176 ; 2 uses
  %i.jl = load <2 x i64>, ptr %i.jk, align 8, !tbaa !18
  %i.jm = add <2 x i64> %i.jl, splat (i64 1)
  store <2 x i64> %i.jm, ptr %i.jk, align 8, !tbaa !18
  br label %bb.aa

bb.aa:                                            ; preds = %Nf_ObjUpdateRequired.exit332, %bb.x
  %.0235 = phi ptr [ %i.je, %Nf_ObjUpdateRequired.exit332 ], [ %i.if, %bb.x ]
  %.1 = phi i32 [ %i.iy, %Nf_ObjUpdateRequired.exit332 ], [ %i.hz, %bb.x ] ; 2 uses
  %i.jn = trunc nsw i64 %indvars.iv.next377 to i32
  tail call void @Nf_ManSetMapRefsGate(ptr noundef nonnull %0, i32 noundef %i.jn, i32 noundef %.1, ptr noundef nonnull %.0235)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.aa, %Nf_ObjUpdateRequired.exit331, %.preheader341, %Nf_ObjUpdateRequired.exit330, %bb.n, %Nf_ObjUpdateRequired.exit325
  %.2 = phi i32 [ %.0352, %Nf_ObjUpdateRequired.exit325 ], [ %.0352, %bb.n ], [ %.0352, %Nf_ObjUpdateRequired.exit330 ], [ %i.hb, %Nf_ObjUpdateRequired.exit331 ], [ %.0352, %.preheader341 ], [ %.1, %bb.aa ], [ %.0352, %.preheader.preheader ] ; 2 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1096
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !187
  %i.jr = sext i32 %i.jq to i64
  %.not245.not = icmp sgt i64 %indvars.iv.next377, %i.jr
  %indvar.next = add i32 %indvar, 1
  br i1 %.not245.not, label %bb.c, label %.critedge2, !llvm.loop !246

.critedge2:                                       ; preds = %bb.c, %.loopexit, %.critedge
  %.0.lcssa = phi i32 [ 0, %.critedge ], [ %.2, %.loopexit ], [ %.0352, %bb.c ]
  %.lcssa = phi ptr [ %i.r, %.critedge ], [ %i.jo, %.loopexit ], [ %i.bi, %bb.c ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1088 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !247 ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph361, label %.critedge9

.lr.ph361:                                        ; preds = %.critedge2
  %i.jv = getelementptr i8, ptr %.lcssa, i64 64
  %.val324 = load ptr, ptr %i.jv, align 8, !tbaa !202
  %i.jw = getelementptr i8, ptr %.val324, i64 8
  %.val324.val = load ptr, ptr %i.jw, align 8, !tbaa !27
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jy = getelementptr i8, ptr %0, i64 136
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph361, %bb.af
  %i.ka = phi i32 [ %i.jt, %.lr.ph361 ], [ %i.kz, %bb.af ]
  %indvars.iv379 = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next380, %bb.af ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.val324.val, i64 %indvars.iv379
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !15 ; 2 uses
  %.not247 = icmp eq i32 %i.kc, 0
  br i1 %.not247, label %.critedge9, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val319 = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.kd = shl nsw i32 %i.kc, 1
  %i.ke = sext i32 %i.kd to i64                   ; 2 uses
  %i.kf = getelementptr [4 x i8], ptr %.val319, i64 %i.ke ; 3 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !15
  %.not248 = icmp eq i32 %i.kh, 0
  br i1 %.not248, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ki = load i32, ptr %i.kf, align 4, !tbaa !15
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kf, align 4, !tbaa !15
  %i.kk = load i32, ptr %i.jx, align 8, !tbaa !126
  %i.kl = sub nsw i32 %.0.lcssa, %i.kk            ; 2 uses
  %.val302 = load ptr, ptr %i.jy, align 8, !tbaa !27
  %i.km = getelementptr inbounds [4 x i8], ptr %.val302, i64 %i.ke ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !15
  %i.ko = icmp sgt i32 %i.kn, %i.kl
  br i1 %i.ko, label %bb.ae, label %Nf_ObjUpdateRequired.exit333

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !15
  br label %Nf_ObjUpdateRequired.exit333

Nf_ObjUpdateRequired.exit333:                     ; preds = %bb.ad, %bb.ae
  %i.kp = load float, ptr %i.jz, align 8, !tbaa !129
  %i.kq = load ptr, ptr %i.aq, align 8, !tbaa !108 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 240 ; 2 uses
  %i.ks = load float, ptr %i.kr, align 8, !tbaa !192
  %i.kt = fadd float %i.kp, %i.ks
  store float %i.kt, ptr %i.kr, align 8, !tbaa !192
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 176 ; 2 uses
  %i.kv = load <2 x i64>, ptr %i.ku, align 8, !tbaa !18
  %i.kw = add <2 x i64> %i.kv, splat (i64 1)
  store <2 x i64> %i.kw, ptr %i.ku, align 8, !tbaa !18
  %i.kx = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.ap, align 4, !tbaa !194
  %.pre390 = load i32, ptr %i.js, align 8, !tbaa !247
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %Nf_ObjUpdateRequired.exit333
  %i.kz = phi i32 [ %i.ka, %bb.ac ], [ %.pre390, %Nf_ObjUpdateRequired.exit333 ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp slt i64 %indvars.iv.next380, %i.la
  br i1 %i.lb, label %bb.ab, label %.critedge9, !llvm.loop !248

.critedge9:                                       ; preds = %bb.ab, %bb.af, %.critedge2
  %i.lc = icmp sgt i32 %.val264, 0
  br i1 %i.lc, label %.lr.ph364, label %._crit_edge

.lr.ph364:                                        ; preds = %.critedge9
  %i.ld = fpext float %i.j to double
  %i.le = fsub double 1.000000e+00, %i.ld         ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.o, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph364
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.le, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert445 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat446 = shufflevector <4 x float> %broadcast.splatinsert445, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.val317, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.lf, align 4, !tbaa !116
  %i.lg = fmul <4 x float> %wide.load, %broadcast.splat446
  %i.lh = fpext <4 x float> %i.lg to <4 x double>
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.val318, i64 %index
  %wide.load447 = load <4 x i32>, ptr %i.li, align 4, !tbaa !15
  %i.lj = sitofp <4 x i32> %wide.load447 to <4 x float> ; 2 uses
  %i.lk = fcmp olt <4 x float> %i.lj, splat (float 1.000000e+00)
  %i.ll = select <4 x i1> %i.lk, <4 x float> splat (float 1.000000e+00), <4 x float> %i.lj
  %i.lm = fpext <4 x float> %i.ll to <4 x double>
  %i.ln = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.lm, <4 x double> %i.lh)
  %i.lo = fptrunc <4 x double> %i.ln to <4 x float> ; 2 uses
  %i.lp = fcmp olt <4 x float> %i.lo, splat (float 1.000000e+00)
  %i.lq = select <4 x i1> %i.lp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.lo
  store <4 x float> %i.lq, ptr %i.lf, align 4, !tbaa !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_2
begin_hunk_3_@Nf_ManElaBestMatchOne:bb.a
  %i.aa = sext <2 x i32> %wide.load140.2 to <2 x i64>
  %wide.gep.2 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.z
  %wide.gep141.2 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x ptr> %wide.gep.2, ptr %i.ab, align 16, !tbaa !216
  store <2 x ptr> %wide.gep141.2, ptr %i.ac, align 16, !tbaa !216
  %i.ad = icmp eq i64 %n.vec, 12
  br i1 %i.ad, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 60
  %wide.load.3 = load <2 x i32>, ptr %i.ae, align 4, !tbaa !15
  %wide.load140.3 = load <2 x i32>, ptr %i.af, align 4, !tbaa !15
  %i.ag = sext <2 x i32> %wide.load.3 to <2 x i64>
  %i.ah = sext <2 x i32> %wide.load140.3 to <2 x i64>
  %wide.gep.3 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.ag
  %wide.gep141.3 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x ptr> %wide.gep.3, ptr %i.ai, align 16, !tbaa !216
  store <2 x ptr> %wide.gep141.3, ptr %i.aj, align 16, !tbaa !216
  %i.ak = icmp eq i64 %n.vec, 16
  br i1 %i.ak, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 76
  %wide.load.4 = load <2 x i32>, ptr %i.al, align 4, !tbaa !15
  %wide.load140.4 = load <2 x i32>, ptr %i.am, align 4, !tbaa !15
  %i.an = sext <2 x i32> %wide.load.4 to <2 x i64>
  %i.ao = sext <2 x i32> %wide.load140.4 to <2 x i64>
  %wide.gep.4 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.an
  %wide.gep141.4 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x ptr> %wide.gep.4, ptr %i.ap, align 16, !tbaa !216
  store <2 x ptr> %wide.gep141.4, ptr %i.aq, align 16, !tbaa !216
  %i.ar = icmp eq i64 %n.vec, 20
  br i1 %i.ar, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 92
  %wide.load.5 = load <2 x i32>, ptr %i.as, align 4, !tbaa !15
  %wide.load140.5 = load <2 x i32>, ptr %i.at, align 4, !tbaa !15
  %i.au = sext <2 x i32> %wide.load.5 to <2 x i64>
  %i.av = sext <2 x i32> %wide.load140.5 to <2 x i64>
  %wide.gep.5 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.au
  %wide.gep141.5 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x ptr> %wide.gep.5, ptr %i.aw, align 16, !tbaa !216
  store <2 x ptr> %wide.gep141.5, ptr %i.ax, align 16, !tbaa !216
  %i.ay = icmp eq i64 %n.vec, 24
  br i1 %i.ay, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 108
  %wide.load.6 = load <2 x i32>, ptr %i.az, align 4, !tbaa !15
  %wide.load140.6 = load <2 x i32>, ptr %i.ba, align 4, !tbaa !15
  %i.bb = sext <2 x i32> %wide.load.6 to <2 x i64>
  %i.bc = sext <2 x i32> %wide.load140.6 to <2 x i64>
  %wide.gep.6 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.bb
  %wide.gep141.6 = getelementptr inbounds [64 x i8], ptr %.val110, <2 x i64> %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x ptr> %wide.gep.6, ptr %i.bd, align 16, !tbaa !216
  store <2 x ptr> %wide.gep141.6, ptr %i.be, align 16, !tbaa !216
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader115, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !15
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [64 x i8], ptr %.val110, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !216
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader115, label %scalar.ph, !llvm.loop !254

.preheader115:                                    ; preds = %scalar.ph, %middle.block
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.j, i64 4       ; 2 uses
  %.val120 = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.bn = icmp sgt i32 %.val120, 1
  br i1 %i.bn, label %.critedge.lr.ph, label %.loopexit

.critedge.lr.ph:                                  ; preds = %.preheader115
  %i.bo = getelementptr i8, ptr %i.j, i64 8
  %i.bp = getelementptr i8, ptr %0, i64 40
  %i.bq = ptrtoint ptr %3 to i64
  %i.br = ptrtoint ptr %4 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = shl i32 %i.bt, 18
  %i.bv = and i32 %i.bu, 1072693248
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  %i.bz = getelementptr i8, ptr %0, i64 184
  %i.ca = getelementptr i8, ptr %0, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count128 = zext nneg i32 %i.c to i64
  %invariant.op = or disjoint i32 %i.bv, -2147483648
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.cf = icmp eq i32 %i.d, 1
  %i.cg = zext i1 %i.cf to i32
  store i32 0, ptr %i.cd, align 4, !tbaa !206
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !68
  %i.cj = xor i32 %2, %i.cg                       ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [80 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !8 ; 2 uses
  store float %i.cn, ptr %i.ce, align 4, !tbaa !209
  %i.co = ptrtoint ptr %3 to i64
  %i.cp = ptrtoint ptr %4 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = shl i32 %i.cr, 18
  %i.ct = and i32 %i.cs, 1072693248
  %i.cu = and i32 %i.cj, 1048575
  %i.cv = or disjoint i32 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.cw, align 4, !tbaa !157
  %i.cx = or disjoint i32 %i.cv, -2147483648
  store i32 %i.cx, ptr %7, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !209
  %i.da = fpext float %i.cz to double             ; 2 uses
  %i.db = fpext float %i.cn to double             ; 2 uses
  %i.dc = fadd double %i.db, 1.000000e-03
  %i.dd = fcmp olt double %i.dc, %i.da
  br i1 %i.dd, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.de = fadd double %i.db, -1.000000e-03
  %i.df = fcmp olt double %i.de, %i.da
  br i1 %i.df, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !206
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !224
  br label %.loopexit

.critedge:                                        ; preds = %.critedge.lr.ph, %.thread
  %indvars.iv130 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next131, %.thread ] ; 2 uses
  %.val109 = load ptr, ptr %i.bo, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val109, i64 %indvars.iv130 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !15 ; 4 uses
  %.val113 = load ptr, ptr %i.bp, align 8, !tbaa !68
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds [80 x i8], ptr %.val113, i64 %i.dn ; 2 uses
  %i.dp = xor i32 %i.dm, %i.d
  %i.dq = and i32 %i.dp, 1
  %.not = icmp eq i32 %i.dq, %2
  br i1 %.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %.critedge
  %i.dr = lshr i32 %i.dm, 8
  %i.ds = lshr i32 %i.dm, 1
  %i.dt = and i32 %i.ds, 127
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  br label %.critedge2

bb.f:                                             ; preds = %.critedge2
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %bb.g, label %.critedge2, !llvm.loop !255

.critedge2:                                       ; preds = %.preheader, %bb.f
  %indvars.iv125 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next126, %bb.f ] ; 4 uses
  %.0119 = phi i32 [ 0, %.preheader ], [ %i.el, %bb.f ]
  %indvars.iv125.tr = trunc nuw i64 %indvars.iv125 to i32
  %i.dv = shl nuw nsw i32 %indvars.iv125.tr, 2
  %i.dw = lshr i32 %i.dr, %i.dv
  %i.dx = and i32 %i.dw, 15
  %i.dy = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.dz = lshr i32 %i.dt, %i.dy
  %i.ea = and i32 %i.dz, 1
  %i.eb = zext nneg i32 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !216
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !206
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv125
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.ek = add nsw i32 %i.ej, %i.eh
  %i.el = tail call noundef i32 @llvm.smax.i32(i32 %.0119, i32 %i.ek) ; 4 uses
  %i.em = icmp sgt i32 %i.el, %6
  br i1 %i.em, label %.thread, label %bb.f

bb.g:                                             ; preds = %bb.f
  store i32 %i.el, ptr %i.bk, align 4, !tbaa !206
  store float f0x7F7FFFFF, ptr %i.bl, align 4, !tbaa !209
  %i.en = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = and i32 %i.eo, 1048575
  %.reass = or disjoint i32 %i.ep, %invariant.op
  store i32 %.reass, ptr %7, align 4
  %i.eq = and i32 %i.dm, -2
  store i32 %i.eq, ptr %i.bw, align 4
  store i32 0, ptr %i.by, align 4, !tbaa !24
  %i.er = call i64 @Nf_MatchRef_rec(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull readonly %7, i32 noundef %6, ptr noundef nonnull %i.bx)
  %.val17.i = load i32, ptr %i.by, align 4, !tbaa !24
  %i.es = icmp sgt i32 %.val17.i, 0
  br i1 %i.es, label %.lr.ph.i, label %Nf_MatchRefArea.exit

.lr.ph.i:                                         ; preds = %bb.g
  %.val15.i = load ptr, ptr %i.bz, align 8, !tbaa !27
  %.val16.i = load ptr, ptr %i.ca, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !15
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !15
  %i.ey = add nsw i32 %i.ex, -1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.by, align 4, !tbaa !24
  %i.ez = sext i32 %.val.i to i64
  %i.fa = icmp slt i64 %indvars.iv.next.i, %i.ez
  br i1 %i.fa, label %bb.h, label %Nf_MatchRefArea.exit, !llvm.loop !253

Nf_MatchRefArea.exit:                             ; preds = %bb.h, %bb.g
  %i.fb = trunc i64 %i.er to i32
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = fdiv float %i.fc, 1.000000e+03          ; 2 uses
  store float %i.fd, ptr %i.bl, align 4, !tbaa !209
  %i.fe = load float, ptr %i.cb, align 4, !tbaa !209
  %i.ff = fpext float %i.fe to double             ; 2 uses
  %i.fg = fpext float %i.fd to double             ; 2 uses
  %i.fh = fadd double %i.fg, 1.000000e-03
  %i.fi = fcmp olt double %i.fh, %i.ff
  br i1 %i.fi, label %bb.k, label %bb.i

bb.i:                                             ; preds = %Nf_MatchRefArea.exit
  %i.fj = fadd double %i.fg, -1.000000e-03
  %i.fk = fcmp olt double %i.fj, %i.ff
  br i1 %i.fk, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.fl = load i32, ptr %i.cc, align 4, !tbaa !206
  %i.fm = icmp sgt i32 %i.fl, %i.el
  br i1 %i.fm, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %Nf_MatchRefArea.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !224
  br label %.thread

.thread:                                          ; preds = %.critedge2, %bb.i, %bb.j, %bb.k, %.critedge
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 2 ; 2 uses
  %.val = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.fn = trunc i64 %indvars.iv.next131 to i32
  %i.fo = or disjoint i32 %i.fn, 1
  %i.fp = icmp slt i32 %i.fo, %.val
  br i1 %i.fp, label %.critedge, label %.loopexit, !llvm.loop !256

.loopexit:                                        ; preds = %.thread, %.preheader115, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Nf_ManElaBestMatch(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 16)) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr i8, ptr %0, i64 88
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %.val21, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15   ; 2 uses
  %i.f = ashr i32 %i.e, 16
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %.val20, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.j = and i32 %i.e, 65535
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k ; 4 uses
  store i64 0, ptr %3, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1073741823, ptr %i.m, align 4, !tbaa !206
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float f0x7F7FFFFF, ptr %i.n, align 4, !tbaa !209
  %i.o = load i32, ptr %i.l, align 4, !tbaa !15   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.r = phi i32 [ %i.o, %.lr.ph ], [ %i.v, %bb.d ]
  %.pn = phi ptr [ %i.l, %.lr.ph ], [ %i.z, %bb.d ]
  %.01924 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.d ]
  %.025 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 4 uses
  %.0.val = load i32, ptr %.025, align 4, !tbaa !15 ; 2 uses
  %i.s = lshr i32 %.0.val, 6
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !83
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val = load i32, ptr %i.u, align 4, !tbaa !19
  %.not = icmp slt i32 %i.s, %.val
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @Nf_ManElaBestMatchOne(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %.025, ptr noundef nonnull %i.l, ptr noundef nonnull %3, i32 noundef %4)
  %.0.val22.pre = load i32, ptr %.025, align 4, !tbaa !15
  %.pre = load i32, ptr %i.l, align 4, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.v = phi i32 [ %i.r, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.val22 = phi i32 [ %.0.val, %bb.b ], [ %.0.val22.pre, %bb.c ]
  %i.w = add nuw nsw i32 %.01924, 1               ; 2 uses
  %i.x = and i32 %.0.val22, 31
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.025, i64 %i.y
  %i.aa = icmp slt i32 %i.w, %i.v
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !257

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @Nf_ManComputeArrival(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %i.b = lshr i32 %i.a, 20
  %i.c = and i32 %i.b, 1023
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !15
  %i.g = and i32 %.val, 31                        ; 2 uses
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr i8, ptr %0, i64 40
  %.val21 = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.j = and i32 %i.a, 1048575
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val21, i64 %i.k
  %i.m = load i32, ptr %i.h, align 4              ; 2 uses
  %i.n = lshr i32 %i.m, 8
  %i.o = lshr i32 %i.m, 1
  %i.p = and i32 %i.o, 127
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Nf_ObjMatchBest.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Nf_ObjMatchBest.exit ] ; 4 uses
  %.01923 = phi i32 [ 0, %.lr.ph ], [ %i.am, %Nf_ObjMatchBest.exit ] ; 2 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.s = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.t = lshr i32 %i.n, %i.s
  %i.u = and i32 %i.t, 15
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.critedge, label %Nf_ObjMatchBest.exit

Nf_ObjMatchBest.exit:                             ; preds = %bb.b
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = lshr i32 %i.p, %i.y
  %i.aa = and i32 %i.z, 1
  %.val22 = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [64 x i8], ptr %.val22, i64 %i.ab
  %i.ad = zext nneg i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %.not.i28 = icmp slt i32 %i.ag, 0
  %spec.select = select i1 %.not.i28, ptr %i.af, ptr %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !206
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !15
  %i.al = add nsw i32 %i.ak, %i.ai
  %i.am = tail call noundef i32 @llvm.smax.i32(i32 %.01923, i32 %i.al) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !258

.critedge:                                        ; preds = %Nf_ObjMatchBest.exit, %bb.b, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %.01923, %bb.b ], [ %i.am, %Nf_ObjMatchBest.exit ]
  ret i32 %.019.lcssa
}

; Function Attrs: nounwind uwtable
define void @Nf_ManResetMatches(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %2 = alloca %struct.Nf_Mat_t_, align 4          ; 8 uses
  %3 = alloca %struct.Nf_Mat_t_, align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Tim_ManIncrementTravId(ptr noundef nonnull %i.c) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1096
  %i.f = load i32, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !188
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 56         ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.not101 = trunc i32 %1 to i1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.r = sext i32 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 14 uses
  %i.s = phi ptr [ %i.d, %.lr.ph ], [ %i.jf, %.loopexit ]
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val109 = load ptr, ptr %i.t, align 8, !tbaa !141 ; 2 uses
  %.not93 = icmp eq ptr %.val109, null
  br i1 %.not93, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds [12 x i8], ptr %.val109, i64 %indvars.iv
  %.val118 = load i64, ptr %i.u, align 4          ; 9 uses
  %i.v = trunc i64 %.val118 to i32
  %i.w = and i32 %i.v, 536870911                  ; 2 uses
  %i.x = lshr i64 %.val118, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = and i32 %i.y, 536870911                  ; 3 uses
  %i.aa = icmp ne i32 %i.w, %i.z
  %.not.i = icmp eq i32 %i.w, 536870911
  %or.cond.not.i.not152 = or i1 %.not.i, %i.aa
  %i.ab = and i64 %.val118, 2147483648            ; 2 uses
  %.not4.i = icmp ne i64 %i.ab, 0
  %narrow.i.not = or i1 %.not4.i, %or.cond.not.i.not152
  br i1 %narrow.i.not, label %bb.f, label %.loopexit.loopexit163

.loopexit.loopexit163:                            ; preds = %bb.e
  %i.ac = and i64 %.val118, 536870911
  %i.ad = sub nsw i64 %indvars.iv, %i.ac
  %i.ae = lshr i64 %.val118, 29
  %i.af = and i64 %i.ae, 1
  %.val125 = load ptr, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.ag = getelementptr inbounds [64 x i8], ptr %.val125, i64 %i.ad
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds [64 x i8], ptr %.val125, i64 %indvars.iv ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !209
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store float 0.000000e+00, ptr %i.am, align 4, !tbaa !209
  %.not.i127162 = icmp slt i32 %i.aj, 0
  %spec.select = select i1 %.not.i127162, ptr %i.ai, ptr %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !206
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !206
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !209
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !209
  %i.as = load i32, ptr %i.an, align 4, !tbaa !206
  %i.at = load i32, ptr %i.k, align 8, !tbaa !126
  %i.au = add nsw i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i32 %i.au, ptr %i.av, align 4, !tbaa !206
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.aw = and i64 %.val118, 2684354559
  %narrow.i128.not = icmp eq i64 %i.aw, 2684354559
  br i1 %narrow.i128.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.ay = tail call float @Tim_ManGetCiArrival(ptr noundef %i.ax, i32 noundef %i.z) #26
  %i.az = fptosi float %i.ay to i32               ; 4 uses
  %.val28.i = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.ba = getelementptr inbounds [64 x i8], ptr %.val28.i, i64 %indvars.iv ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 %i.az, ptr %i.bf, align 4, !tbaa !206
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.az, ptr %i.bg, align 4, !tbaa !206
  %i.bh = load i32, ptr %i.bb, align 4
  %i.bi = or i32 %i.bh, 1073741824
  store i32 %i.bi, ptr %i.bb, align 4
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !126
  %i.bk = add nsw i32 %i.bj, %i.az
  store i32 %i.bk, ptr %i.be, align 4, !tbaa !206
  %i.bl = load float, ptr %i.q, align 8, !tbaa !129
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  store float %i.bl, ptr %i.bm, align 4, !tbaa !209
  %i.bn = load i32, ptr %i.bc, align 4
  %i.bo = or i32 %i.bn, 1073741824
  store i32 %i.bo, ptr %i.bc, align 4
  %i.bp = load i32, ptr %i.k, align 8, !tbaa !126
  %i.bq = add nsw i32 %i.bp, %i.az
  store i32 %i.bq, ptr %i.bd, align 4, !tbaa !206
  %i.br = load float, ptr %i.q, align 8, !tbaa !129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  store float %i.br, ptr %i.bs, align 4, !tbaa !209
  %.val26.i = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.bt = getelementptr inbounds [64 x i8], ptr %.val26.i, i64 %indvars.iv ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = or i32 %i.bu, -2147483648
  store i32 %i.bv, ptr %i.bt, align 4
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.bw = getelementptr inbounds [64 x i8], ptr %.val.i, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = or i32 %i.by, -2147483648
  store i32 %i.bz, ptr %i.bx, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %.not.i129 = icmp eq i64 %i.ab, 0
  %i.ca = and i64 %.val118, 536870911
  %i.cb = icmp eq i64 %i.ca, 536870911
  %narrow.i130.not = or i1 %.not.i129, %i.cb
  br i1 %narrow.i130.not, label %.preheader155, label %bb.i

.preheader155:                                    ; preds = %bb.h
  %i.cc = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %.val106 = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.cd = getelementptr inbounds [64 x i8], ptr %.val106, i64 %indvars.iv ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !209
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !209
  %.val126 = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val126, i64 %i.cc
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !15
  %.not100 = icmp eq i32 %i.ci, 0
  %.pre168 = load i32, ptr %i.ce, align 4         ; 3 uses
  br i1 %.not100, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = and i64 %.val118, 536870911
  %i.ck = sub nsw i64 %indvars.iv, %i.cj
  %i.cl = lshr i64 %.val118, 29
  %i.cm = and i64 %i.cl, 1
  %.val107 = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.cn = getelementptr inbounds [64 x i8], ptr %.val107, i64 %i.ck
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !206
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.cs = sitofp i32 %i.cq to float
  tail call void @Tim_ManSetCoArrival(ptr noundef %i.cr, i32 noundef %i.z, float noundef %i.cs) #26
  br label %.loopexit

bb.j:                                             ; preds = %.preheader155
  %.not103 = icmp sgt i32 %.pre168, -1
  br i1 %.not103, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.l:                                             ; preds = %.preheader155
  %i.ct = and i32 %.pre168, 1073741824
  %.not102 = icmp eq i32 %i.ct, 0
  %or.cond = select i1 %.not101, i1 %.not102, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre = load i32, ptr %i.ce, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cu = phi i32 [ %.pre, %bb.m ], [ %.pre168, %bb.l ]
  %i.cv = load i32, ptr %i.cd, align 4
  %i.cw = or i32 %i.cv, -2147483648
  store i32 %i.cw, ptr %i.cd, align 4
  %i.cx = and i32 %i.cu, 2147483647
  store i32 %i.cx, ptr %i.ce, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.j
  %.val106.1 = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.cy = getelementptr inbounds [64 x i8], ptr %.val106.1, i64 %indvars.iv ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  store float 0.000000e+00, ptr %i.db, align 4, !tbaa !209
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  store float 0.000000e+00, ptr %i.dc, align 4, !tbaa !209
  %.val126.1 = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.dd = getelementptr [4 x i8], ptr %.val126.1, i64 %i.cc
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !15
  %.not100.1 = icmp eq i32 %i.df, 0
  %.pre170 = load i32, ptr %i.da, align 4         ; 3 uses
  br i1 %.not100.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not103.1 = icmp sgt i32 %.pre170, -1
  br i1 %.not103.1, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.dg = and i32 %.pre170, 1073741824
  %.not102.1 = icmp eq i32 %i.dg, 0
  %or.cond187 = select i1 %.not101, i1 %.not102.1, i1 false
  br i1 %or.cond187, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !224
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre169 = load i32, ptr %i.da, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dh = phi i32 [ %.pre169, %bb.s ], [ %.pre170, %bb.r ]
  %i.di = load i32, ptr %i.cz, align 4
  %i.dj = or i32 %i.di, -2147483648
  store i32 %i.dj, ptr %i.cz, align 4
  %i.dk = and i32 %i.dh, 2147483647
  store i32 %i.dk, ptr %i.da, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.p
  %.val105 = load ptr, ptr %i.j, align 8, !tbaa !110 ; 4 uses
  %i.dl = getelementptr inbounds [64 x i8], ptr %.val105, i64 %indvars.iv ; 8 uses
  store ptr %i.dl, ptr %i.a, align 16, !tbaa !244
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 3 uses
  store ptr %i.dm, ptr %i.m, align 8, !tbaa !244
  %i.dn = load i32, ptr %i.dl, align 4            ; 3 uses
  %i.do = and i32 %i.dn, 1073741824
  %.not97 = icmp eq i32 %i.do, 0
  %.pre171 = load i32, ptr %i.dm, align 4         ; 4 uses
  br i1 %.not97, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.val112.pre = load ptr, ptr %i.n, align 8, !tbaa !113
  %.val113.pre = load ptr, ptr %i.o, align 8, !tbaa !27
  %.pre176 = and i32 %.pre171, 1073741824
  br label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dp = and i32 %.pre171, 1073741824            ; 2 uses
  %.not98 = icmp eq i32 %i.dp, 0
  %.val112.pre172 = load ptr, ptr %i.n, align 8, !tbaa !113 ; 3 uses
  %.val113.pre174 = load ptr, ptr %i.o, align 8, !tbaa !27 ; 2 uses
  br i1 %.not98, label %.preheader, label %bb.y

.preheader:                                       ; preds = %bb.v
  %i.dq = getelementptr inbounds [4 x i8], ptr %.val113.pre174, i64 %indvars.iv ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !15 ; 2 uses
  %i.ds = ashr i32 %i.dr, 16
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %.val112.pre172, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !131
  %i.dw = and i32 %i.dr, 65535
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = lshr i32 %i.dn, 20
  %i.ea = and i32 %i.dz, 1023
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.val.i131 = load i32, ptr %i.ec, align 4, !tbaa !15
  %i.ee = and i32 %.val.i131, 31                  ; 2 uses
  %.not27.i = icmp eq i32 %i.ee, 0
  br i1 %.not27.i, label %Nf_ManComputeArrival.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.val21.i = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.eg = and i32 %i.dn, 1048575
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [80 x i8], ptr %.val21.i, i64 %i.eh
  %i.ej = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.ek = lshr i32 %i.ej, 8
  %i.el = lshr i32 %i.ej, 1
  %i.em = and i32 %i.el, 127
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  %wide.trip.count.i = zext nneg i32 %i.ee to i64
  br label %bb.w

bb.w:                                             ; preds = %Nf_ObjMatchBest.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Nf_ObjMatchBest.exit.i ] ; 3 uses
  %.01923.i = phi i32 [ 0, %.lr.ph.i ], [ %i.fh, %Nf_ObjMatchBest.exit.i ] ; 2 uses
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32 ; 2 uses
  %i.eo = shl nuw nsw i32 %indvars.iv.tr.i, 2
  %i.ep = lshr i32 %i.ek, %i.eo
  %i.eq = and i32 %i.ep, 15
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !15 ; 2 uses
  %.not.i132 = icmp eq i32 %i.et, 0
  br i1 %.not.i132, label %Nf_ManComputeArrival.exit, label %Nf_ObjMatchBest.exit.i

Nf_ObjMatchBest.exit.i:                           ; preds = %bb.w
  %i.eu = lshr i32 %i.em, %indvars.iv.tr.i
  %i.ev = and i32 %i.eu, 1
  %i.ew = sext i32 %i.et to i64
  %i.ex = getelementptr inbounds [64 x i8], ptr %.val105, i64 %i.ew
  %i.ey = zext nneg i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4
  %.not.i28.i = icmp slt i32 %i.fb, 0
  %spec.select.i = select i1 %.not.i28.i, ptr %i.fa, ptr %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !206
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !15
  %i.fg = add nsw i32 %i.ff, %i.fd
  %i.fh = tail call noundef i32 @llvm.smax.i32(i32 %.01923.i, i32 %i.fg) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Nf_ManComputeArrival.exit, label %bb.w, !llvm.loop !258

Nf_ManComputeArrival.exit:                        ; preds = %bb.w, %Nf_ObjMatchBest.exit.i, %.preheader
  %.019.lcssa.i = phi i32 [ 0, %.preheader ], [ %i.fh, %Nf_ObjMatchBest.exit.i ], [ %.01923.i, %bb.w ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %.019.lcssa.i, ptr %i.fi, align 4, !tbaa !206
  %i.fj = load i32, ptr %i.dq, align 4, !tbaa !15 ; 2 uses
  %i.fk = ashr i32 %i.fj, 16
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %.val112.pre172, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !131
  %i.fo = and i32 %i.fj, 65535
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fp
  %i.fr = lshr i32 %.pre171, 20
  %i.fs = and i32 %i.fr, 1023
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %.val.i131.1 = load i32, ptr %i.fu, align 4, !tbaa !15
  %i.fw = and i32 %.val.i131.1, 31                ; 2 uses
  %.not27.i.1 = icmp eq i32 %i.fw, 0
  br i1 %.not27.i.1, label %Nf_ManComputeArrival.exit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %Nf_ManComputeArrival.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %.val21.i.1 = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.fy = and i32 %.pre171, 1048575
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [80 x i8], ptr %.val21.i.1, i64 %i.fz
  %i.gb = load i32, ptr %i.fx, align 4            ; 2 uses
  %i.gc = lshr i32 %i.gb, 8
  %i.gd = lshr i32 %i.gb, 1
  %i.ge = and i32 %i.gd, 127
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 44
  %wide.trip.count.i.1 = zext nneg i32 %i.fw to i64
  br label %bb.x

bb.x:                                             ; preds = %Nf_ObjMatchBest.exit.i.1, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.i.1 ], [ %indvars.iv.next.i.1, %Nf_ObjMatchBest.exit.i.1 ] ; 3 uses
  %.01923.i.1 = phi i32 [ 0, %.lr.ph.i.1 ], [ %i.gz, %Nf_ObjMatchBest.exit.i.1 ] ; 2 uses
  %indvars.iv.tr.i.1 = trunc nuw i64 %indvars.iv.i.1 to i32 ; 2 uses
  %i.gg = shl nuw nsw i32 %indvars.iv.tr.i.1, 2
  %i.gh = lshr i32 %i.gc, %i.gg
  %i.gi = and i32 %i.gh, 15
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !15 ; 2 uses
  %.not.i132.1 = icmp eq i32 %i.gl, 0
  br i1 %.not.i132.1, label %Nf_ManComputeArrival.exit.1, label %Nf_ObjMatchBest.exit.i.1

Nf_ObjMatchBest.exit.i.1:                         ; preds = %bb.x
  %i.gm = lshr i32 %i.ge, %indvars.iv.tr.i.1
  %i.gn = and i32 %i.gm, 1
  %i.go = sext i32 %i.gl to i64
  %i.gp = getelementptr inbounds [64 x i8], ptr %.val105, i64 %i.go
  %i.gq = zext nneg i32 %i.gn to i64
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4
  %.not.i28.i.1 = icmp slt i32 %i.gt, 0
  %spec.select.i.1 = select i1 %.not.i28.i.1, ptr %i.gs, ptr %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %spec.select.i.1, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !206
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.1
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !15
  %i.gy = add nsw i32 %i.gx, %i.gv
  %i.gz = tail call noundef i32 @llvm.smax.i32(i32 %.01923.i.1, i32 %i.gy) ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %Nf_ManComputeArrival.exit.1, label %bb.x, !llvm.loop !258

Nf_ManComputeArrival.exit.1:                      ; preds = %bb.x, %Nf_ObjMatchBest.exit.i.1, %Nf_ManComputeArrival.exit
  %.019.lcssa.i.1 = phi i32 [ 0, %Nf_ManComputeArrival.exit ], [ %i.gz, %Nf_ObjMatchBest.exit.i.1 ], [ %.01923.i.1, %bb.x ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i32 %.019.lcssa.i.1, ptr %i.ha, align 4, !tbaa !206
  br label %.loopexit

bb.y:                                             ; preds = %._crit_edge, %bb.v
  %.pre-phi = phi i32 [ %.pre176, %._crit_edge ], [ %i.dp, %bb.v ] ; 2 uses
  %.val113 = phi ptr [ %.val113.pre, %._crit_edge ], [ %.val113.pre174, %bb.v ]
  %.val112 = phi ptr [ %.val112.pre, %._crit_edge ], [ %.val112.pre172, %bb.v ]
  %.not99 = icmp eq i32 %.pre-phi, 0
  %i.hb = select i1 %.not99, ptr %i.dm, ptr %i.dl ; 4 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %.val113, i64 %indvars.iv
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !15 ; 2 uses
  %i.he = ashr i32 %i.hd, 16
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %.val112, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !131
  %i.hi = and i32 %i.hd, 65535
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hj
  %i.hl = load i32, ptr %i.hb, align 4            ; 2 uses
  %i.hm = lshr i32 %i.hl, 20
  %i.hn = and i32 %i.hm, 1023
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %.val.i133 = load i32, ptr %i.hp, align 4, !tbaa !15
  %i.hr = and i32 %.val.i133, 31                  ; 2 uses
  %.not27.i134 = icmp eq i32 %i.hr, 0
  br i1 %.not27.i134, label %Nf_ManComputeArrival.exit149, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %bb.y
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %.val21.i136 = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.ht = and i32 %i.hl, 1048575
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [80 x i8], ptr %.val21.i136, i64 %i.hu
  %i.hw = load i32, ptr %i.hs, align 4            ; 2 uses
  %i.hx = lshr i32 %i.hw, 8
  %i.hy = lshr i32 %i.hw, 1
  %i.hz = and i32 %i.hy, 127
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 44
  %wide.trip.count.i137 = zext nneg i32 %i.hr to i64
  br label %bb.z

bb.z:                                             ; preds = %Nf_ObjMatchBest.exit.i142, %.lr.ph.i135
  %indvars.iv.i138 = phi i64 [ 0, %.lr.ph.i135 ], [ %indvars.iv.next.i146, %Nf_ObjMatchBest.exit.i142 ] ; 3 uses
  %.01923.i139 = phi i32 [ 0, %.lr.ph.i135 ], [ %i.iu, %Nf_ObjMatchBest.exit.i142 ] ; 2 uses
  %indvars.iv.tr.i140 = trunc nuw i64 %indvars.iv.i138 to i32 ; 2 uses
  %i.ib = shl nuw nsw i32 %indvars.iv.tr.i140, 2
  %i.ic = lshr i32 %i.hx, %i.ib
  %i.id = and i32 %i.ic, 15
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !15 ; 2 uses
  %.not.i141 = icmp eq i32 %i.ig, 0
  br i1 %.not.i141, label %Nf_ManComputeArrival.exit149, label %Nf_ObjMatchBest.exit.i142

Nf_ObjMatchBest.exit.i142:                        ; preds = %bb.z
  %i.ih = lshr i32 %i.hz, %indvars.iv.tr.i140
  %i.ii = and i32 %i.ih, 1
  %i.ij = sext i32 %i.ig to i64
  %i.ik = getelementptr inbounds [64 x i8], ptr %.val105, i64 %i.ij
  %i.il = zext nneg i32 %i.ii to i64
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.ik, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4
  %.not.i28.i144 = icmp slt i32 %i.io, 0
  %spec.select.i145 = select i1 %.not.i28.i144, ptr %i.in, ptr %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %spec.select.i145, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !206
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.i138
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !15
  %i.it = add nsw i32 %i.is, %i.iq
  %i.iu = tail call noundef i32 @llvm.smax.i32(i32 %.01923.i139, i32 %i.it) ; 2 uses
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i138, 1 ; 2 uses
  %exitcond.not.i147 = icmp eq i64 %indvars.iv.next.i146, %wide.trip.count.i137
  br i1 %exitcond.not.i147, label %Nf_ManComputeArrival.exit149, label %bb.z, !llvm.loop !258

Nf_ManComputeArrival.exit149:                     ; preds = %bb.z, %Nf_ObjMatchBest.exit.i142, %bb.y
  %.019.lcssa.i148 = phi i32 [ 0, %bb.y ], [ %i.iu, %Nf_ObjMatchBest.exit.i142 ], [ %.01923.i139, %bb.z ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 %.019.lcssa.i148, ptr %i.iv, align 4, !tbaa !206
  %.lobit = lshr exact i32 %.pre-phi, 30
  %i.iw = zext nneg i32 %.lobit to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !244 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iy, ptr noundef nonnull align 4 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !224
  %i.iz = load i32, ptr %i.k, align 8, !tbaa !126
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !206
  %i.jc = add nsw i32 %i.jb, %i.iz
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !206
  %i.jd = load i32, ptr %i.iy, align 4
  %i.je = or i32 %i.jd, 1073741824
  store i32 %i.je, ptr %i.iy, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit163, %Nf_ManComputeArrival.exit.1, %Nf_ManComputeArrival.exit149, %bb.i, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jf = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1100
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !188
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %indvars.iv.next, %i.ji
  br i1 %i.jj, label %bb.d, label %.critedge, !llvm.loop !259

.critedge:                                        ; preds = %bb.d, %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define void @Nf_ManComputeMappingEla(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.Nf_Mat_t_, align 8          ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !198
  %i.g = sub nsw i32 %i.b, %i.f
  tail call void @Nf_ManResetMatches(ptr noundef %0, i32 noundef %i.g)
  tail call void @Nf_ManSetOutputRequireds(ptr noundef %0, i32 noundef 1)
  %i.h = load ptr, ptr %0, align 8, !tbaa !105    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1100
  %i.j = load i32, ptr %i.i, align 4, !tbaa !188  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1096
  %i.l = load i32, ptr %i.k, align 8, !tbaa !187
  %.not.not286 = icmp sgt i32 %i.j, %i.l
  br i1 %.not.not286, label %.lr.ph289, label %.critedge

.lr.ph289:                                        ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 104        ; 4 uses
  %i.n = getelementptr i8, ptr %0, i64 136        ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.p = getelementptr i8, ptr %0, i64 56         ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 88         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = sext i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph289, %Nf_ObjUpdateRequired.exit240
  %indvars.iv303 = phi i64 [ %i.y, %.lr.ph289 ], [ %indvars.iv.next304, %Nf_ObjUpdateRequired.exit240 ]
  %i.z = phi ptr [ %i.h, %.lr.ph289 ], [ %i.lk, %Nf_ObjUpdateRequired.exit240 ] ; 2 uses
  %indvars.iv.next304 = add nsw i64 %indvars.iv303, -1 ; 15 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !141 ; 2 uses
  %i.ab = getelementptr inbounds [12 x i8], ptr %.val, i64 %indvars.iv.next304 ; 5 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val204 = load i64, ptr %i.ab, align 4         ; 5 uses
  %i.ac = trunc i64 %.val204 to i32               ; 3 uses
  %i.ad = and i32 %i.ac, 536870911                ; 4 uses
  %i.ae = lshr i64 %.val204, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 536870911                ; 4 uses
  %i.ah = icmp ne i32 %i.ad, %i.ag
  %.not.i = icmp eq i32 %i.ad, 536870911
  %or.cond.not.i.not274 = or i1 %.not.i, %i.ah
  %i.ai = and i64 %.val204, 2147483648            ; 2 uses
  %.not4.i = icmp ne i64 %i.ai, 0
  %narrow.i.not = or i1 %.not4.i, %or.cond.not.i.not274
  br i1 %narrow.i.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val235 = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.aj = shl nsw i64 %indvars.iv.next304, 1      ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val235, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !15
  %.not195 = icmp eq i32 %i.am, 0
  %.val214.pre = load ptr, ptr %i.n, align 8, !tbaa !27 ; 5 uses
  br i1 %.not195, label %.Nf_ObjUpdateRequired.exit_crit_edge, label %bb.e

.Nf_ObjUpdateRequired.exit_crit_edge:             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.val214.pre, i64 %i.aj
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !15
  br label %Nf_ObjUpdateRequired.exit

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds [4 x i8], ptr %.val214.pre, i64 %i.ak
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !126
  %i.aq = sub nsw i32 %i.ao, %i.ap                ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val214.pre, i64 %i.aj ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !15 ; 2 uses
  %i.at = icmp sgt i32 %i.as, %i.aq
  br i1 %i.at, label %bb.f, label %Nf_ObjUpdateRequired.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !15
  %.val.i.pre = load i64, ptr %i.ab, align 4
  %.pre323 = trunc i64 %.val.i.pre to i32         ; 2 uses
  %.pre325 = and i32 %.pre323, 536870911
  br label %Nf_ObjUpdateRequired.exit

Nf_ObjUpdateRequired.exit:                        ; preds = %.Nf_ObjUpdateRequired.exit_crit_edge, %bb.f, %bb.e
  %.pre-phi326 = phi i32 [ %i.ad, %.Nf_ObjUpdateRequired.exit_crit_edge ], [ %.pre325, %bb.f ], [ %i.ad, %bb.e ]
  %.pre-phi324 = phi i32 [ %i.ac, %.Nf_ObjUpdateRequired.exit_crit_edge ], [ %.pre323, %bb.f ], [ %i.ac, %bb.e ]
  %i.au = phi i32 [ %.pre, %.Nf_ObjUpdateRequired.exit_crit_edge ], [ %i.aq, %bb.f ], [ %i.as, %bb.e ] ; 3 uses
  %i.av = trunc nsw i64 %indvars.iv.next304 to i32
  %i.aw = sub nsw i32 %i.av, %.pre-phi326         ; 3 uses
  %i.ax = lshr i32 %.pre-phi324, 29
  %i.ay = and i32 %i.ax, 1                        ; 2 uses
  %i.az = shl nsw i32 %i.aw, 1
  %i.ba = or disjoint i32 %i.az, %i.ay            ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %.val214.pre, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !15
  %i.be = icmp sgt i32 %i.bd, %i.au
  br i1 %i.be, label %bb.g, label %Nf_ObjUpdateRequired.exit238

bb.g:                                             ; preds = %Nf_ObjUpdateRequired.exit
  store i32 %i.au, ptr %i.bc, align 4, !tbaa !15
  br label %Nf_ObjUpdateRequired.exit238

Nf_ObjUpdateRequired.exit238:                     ; preds = %Nf_ObjUpdateRequired.exit, %bb.g
  %i.bf = icmp sgt i32 %i.aw, 0
  br i1 %i.bf, label %Nf_ObjMatchBest.exit, label %Nf_ObjUpdateRequired.exit240

Nf_ObjMatchBest.exit:                             ; preds = %Nf_ObjUpdateRequired.exit238
  %.val231 = load ptr, ptr %i.p, align 8, !tbaa !110
  %i.bg = zext nneg i32 %i.aw to i64
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %.val231, i64 %i.bg
  %i.bi = zext nneg i32 %i.ay to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %.not.i239295 = icmp slt i32 %i.bl, 0
  %spec.select = select i1 %.not.i239295, ptr %i.bk, ptr %i.bj
  %i.bm = load i32, ptr %spec.select, align 4
  %i.bn = and i32 %i.bm, 1073741824
  %.not196 = icmp eq i32 %i.bn, 0
  br i1 %.not196, label %Nf_ObjUpdateRequired.exit240, label %bb.h

bb.h:                                             ; preds = %Nf_ObjMatchBest.exit
  %i.bo = load i32, ptr %i.o, align 8, !tbaa !126
  %i.bp = sub nsw i32 %i.au, %i.bo                ; 2 uses
  %i.bq = xor i32 %i.ba, 1
end_hunk_3
begin_hunk_4_@Nf_ManDumpMatches:bb.a
  %i.gb = getelementptr inbounds [12 x i8], ptr %.val250, i64 %i.ga
  %i.gc = shl nsw i32 %i.fz, 1
  %.val.i.i = load i64, ptr %i.gb, align 4
  %i.gd = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.ge = and i32 %i.gd, 536870911
  %i.gf = sub nsw i32 %i.fz, %i.ge
  %i.gg = lshr i32 %i.gd, 29
  %i.gh = and i32 %i.gg, 1
  %i.gi = shl nsw i32 %i.gf, 1
  %i.gj = or disjoint i32 %i.gi, %i.gh
  %i.gk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.83, i32 noundef %i.gc, double noundef 0.000000e+00, i32 noundef %i.gj) #26 ; 0 uses
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !203 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %.val220 = load i32, ptr %i.go, align 4, !tbaa !24
  %i.gp = sext i32 %.val220 to i64
  %i.gq = icmp slt i64 %indvars.iv.next335, %i.gp
  br i1 %i.gq, label %.lr.ph296, label %.critedge8, !llvm.loop !270

.critedge8:                                       ; preds = %.lr.ph296, %bb.q, %.critedge2
  %.lcssa = phi ptr [ %i.fp, %.critedge2 ], [ %i.gl, %bb.q ], [ %i.fv, %.lr.ph296 ]
  %i.gr = tail call i32 @Gia_ManChoiceLevel(ptr noundef nonnull %.lcssa) #26
  %i.gs = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !202 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
  %.val219299 = load i32, ptr %i.gv, align 4, !tbaa !24
  %i.gw = icmp sgt i32 %.val219299, 0
  br i1 %i.gw, label %.lr.ph301.preheader, label %.critedge10

.lr.ph301.preheader:                              ; preds = %.critedge8
  %i.gx = getelementptr i8, ptr %i.gu, i64 8
  %.val258.val415 = load ptr, ptr %i.gx, align 8, !tbaa !27
  %i.gy = load i32, ptr %.val258.val415, align 4, !tbaa !15 ; 2 uses
  %.not201416 = icmp eq i32 %i.gy, 0
  br i1 %.not201416, label %.critedge10, label %.lr.ph418

.lr.ph301:                                        ; preds = %.lr.ph418
  %i.gz = getelementptr i8, ptr %i.hh, i64 8
  %.val258.val = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val258.val, i64 %indvars.iv.next338
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !15 ; 2 uses
  %.not201 = icmp eq i32 %i.hb, 0
  br i1 %.not201, label %.critedge10, label %.lr.ph418, !llvm.loop !271

.lr.ph418:                                        ; preds = %.lr.ph301.preheader, %.lr.ph301
  %i.hc = phi i32 [ %i.hb, %.lr.ph301 ], [ %i.gy, %.lr.ph301.preheader ]
  %indvars.iv337417 = phi i64 [ %indvars.iv.next338, %.lr.ph301 ], [ 0, %.lr.ph301.preheader ]
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.hd, i32 noundef 0) #26 ; 0 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337417, 1 ; 3 uses
  %i.hf = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !202 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 4
  %.val219 = load i32, ptr %i.hi, align 4, !tbaa !24
  %i.hj = sext i32 %.val219 to i64
  %i.hk = icmp slt i64 %indvars.iv.next338, %i.hj
  br i1 %i.hk, label %.lr.ph301, label %..critedge10.loopexit_crit_edge, !llvm.loop !271

..critedge10.loopexit_crit_edge:                  ; preds = %.lr.ph418
  br label %.critedge10, !llvm.loop !271

.critedge10:                                      ; preds = %.lr.ph301, %.lr.ph301.preheader, %..critedge10.loopexit_crit_edge, %.critedge8
  %i.hl = phi ptr [ %i.gs, %.critedge8 ], [ %i.hf, %..critedge10.loopexit_crit_edge ], [ %i.gs, %.lr.ph301.preheader ], [ %i.hf, %.lr.ph301 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !109
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph306, label %.critedge12

.lr.ph306:                                        ; preds = %.critedge10, %bb.ae
  %i.hp = phi ptr [ %i.ji, %bb.ae ], [ %i.hl, %.critedge10 ] ; 4 uses
  %indvars.iv340 = phi i64 [ %indvars.iv.next341.pre-phi, %bb.ae ], [ 0, %.critedge10 ] ; 10 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 32
  %.val228 = load ptr, ptr %i.hq, align 8, !tbaa !141 ; 2 uses
  %.not202 = icmp eq ptr %.val228, null
  br i1 %.not202, label %.critedge12, label %bb.r

bb.r:                                             ; preds = %.lr.ph306
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %.val228, i64 %indvars.iv340
  %.val244 = load i64, ptr %i.hr, align 4         ; 2 uses
  %i.hs = and i64 %.val244, 2147483648
  %.not.i263 = icmp ne i64 %i.hs, 0
  %i.ht = and i64 %.val244, 536870911
  %i.hu = icmp eq i64 %i.ht, 536870911
  %narrow.i264.not = or i1 %.not.i263, %i.hu
  br i1 %narrow.i264.not, label %._crit_edge380, label %bb.s

._crit_edge380:                                   ; preds = %bb.r
  %.pre381 = add nuw nsw i64 %indvars.iv340, 1
  br label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.hv = getelementptr i8, ptr %i.hp, i64 160
  %.val262 = load ptr, ptr %i.hv, align 8, !tbaa !272 ; 7 uses
  %i.hw = add nuw nsw i64 %indvars.iv340, 1       ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val262, i64 4 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !24 ; 3 uses
  %i.hz = sext i32 %i.hy to i64                   ; 3 uses
  %.not.i.not.i.i = icmp slt i64 %indvars.iv340, %i.hz
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ia = load i32, ptr %.val262, align 8, !tbaa !31 ; 4 uses
  %i.ib = shl nsw i32 %i.ia, 1                    ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %.not.i.i = icmp slt i64 %indvars.iv340, %i.ic
  br i1 %.not.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.id = getelementptr inbounds nuw i8, ptr %.val262, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ie, null
  %i.if = shl nuw nsw i64 %i.hw, 2                ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ig = tail call ptr @realloc(ptr noundef nonnull %i.ie, i64 noundef %i.if) #27
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ih = tail call noalias ptr @malloc(i64 noundef %i.if) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ii = phi ptr [ %i.ig, %bb.v ], [ %i.ih, %bb.w ]
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !27
  %i.ij = trunc nuw nsw i64 %i.hw to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.y:                                             ; preds = %bb.t
  %i.ik = sext i32 %i.ia to i64
  %.not.i.i.not.i.i = icmp slt i64 %indvars.iv340, %i.ik
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.il = icmp slt i32 %i.ia, 1073741823
  %spec.select.i.i.i = select i1 %i.il, i32 %i.ib, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ia, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.aa, label %Vec_IntGrow.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.im = getelementptr inbounds nuw i8, ptr %.val262, i64 8 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.in, null
  %i.io = sext i32 %spec.select.i.i.i to i64
  %i.ip = shl nsw i64 %i.io, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iq = tail call ptr @realloc(ptr noundef nonnull %i.in, i64 noundef %i.ip) #27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ir = tail call noalias ptr @malloc(i64 noundef %i.ip) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.is = phi ptr [ %i.iq, %bb.ab ], [ %i.ir, %bb.ac ]
  store ptr %i.is, ptr %i.im, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.ad, %bb.x
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ad ], [ %i.ij, %bb.x ]
  store i32 %spec.select.sink.i.i.i, ptr %.val262, align 8, !tbaa !31
  %.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !24 ; 2 uses
  %.pre371 = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.z, %bb.y
  %.pre-phi = phi i64 [ %.pre371, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.hz, %bb.z ], [ %i.hz, %bb.y ] ; 2 uses
  %i.it = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.hy, %bb.z ], [ %i.hy, %bb.y ]
  %.not3.i.i = icmp sgt i64 %.pre-phi, %indvars.iv340
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.val262, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27
  %i.iw = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.ix = trunc nuw nsw i64 %indvars.iv340 to i32
  %i.iy = sub i32 %i.ix, %i.it
  %i.iz = zext i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 2
  %i.jb = add nuw nsw i64 %i.ja, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.jb, i1 false), !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.jc = trunc nuw nsw i64 %i.hw to i32
  store i32 %i.jc, ptr %i.hx, align 4, !tbaa !24
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.s, %._crit_edge.i.i.i
  %i.jd = getelementptr i8, ptr %.val262, i64 8
  %.val.i.i265 = load ptr, ptr %i.jd, align 8, !tbaa !27
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i265, i64 %indvars.iv340
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !15
  %indvars.iv340.tr = trunc nuw i64 %indvars.iv340 to i32
  %i.jg = shl nuw i32 %indvars.iv340.tr, 1
  %i.jh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.jg, i32 noundef %i.jf) #26 ; 0 uses
  %.pre366 = load ptr, ptr %0, align 8, !tbaa !105
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge380, %Gia_ObjLevelId.exit
  %indvars.iv.next341.pre-phi = phi i64 [ %.pre381, %._crit_edge380 ], [ %i.hw, %Gia_ObjLevelId.exit ] ; 2 uses
  %i.ji = phi ptr [ %i.hp, %._crit_edge380 ], [ %.pre366, %Gia_ObjLevelId.exit ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !109
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv.next341.pre-phi, %i.jl
  br i1 %i.jm, label %.lr.ph306, label %.critedge12, !llvm.loop !273

.critedge12:                                      ; preds = %.lr.ph306, %bb.ae, %.critedge10
  %i.jn = phi ptr [ %i.hl, %.critedge10 ], [ %i.hp, %.lr.ph306 ], [ %i.ji, %bb.ae ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !203 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 4
  %.val218308 = load i32, ptr %i.jq, align 4, !tbaa !24
  %i.jr = icmp sgt i32 %.val218308, 0
  br i1 %i.jr, label %.lr.ph310, label %.critedge14

.lr.ph310:                                        ; preds = %.critedge12
  %i.js = add nsw i32 %i.gr, 1
  %i.jt = getelementptr i8, ptr %i.jp, i64 8
  %.val249.val420 = load ptr, ptr %i.jt, align 8, !tbaa !27
  %i.ju = load i32, ptr %.val249.val420, align 4, !tbaa !15 ; 2 uses
  %.not203421 = icmp eq i32 %i.ju, 0
  br i1 %.not203421, label %.critedge14, label %.lr.ph423

bb.af:                                            ; preds = %.lr.ph423
  %i.jv = getelementptr i8, ptr %i.kd, i64 8
  %.val249.val = load ptr, ptr %i.jv, align 8, !tbaa !27
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.val249.val, i64 %indvars.iv.next344
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !15 ; 2 uses
  %.not203 = icmp eq i32 %i.jx, 0
  br i1 %.not203, label %.critedge14, label %.lr.ph423, !llvm.loop !274

.lr.ph423:                                        ; preds = %.lr.ph310, %bb.af
  %i.jy = phi i32 [ %i.jx, %bb.af ], [ %i.ju, %.lr.ph310 ]
  %indvars.iv343422 = phi i64 [ %indvars.iv.next344, %bb.af ], [ 0, %.lr.ph310 ]
  %i.jz = shl nsw i32 %i.jy, 1
  %i.ka = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.84, i32 noundef %i.jz, i32 noundef %i.js) #26 ; 0 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343422, 1 ; 3 uses
  %i.kb = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !203 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 4
  %.val218 = load i32, ptr %i.ke, align 4, !tbaa !24
  %i.kf = sext i32 %.val218 to i64
  %i.kg = icmp slt i64 %indvars.iv.next344, %i.kf
  br i1 %i.kg, label %bb.af, label %..critedge14.loopexit_crit_edge, !llvm.loop !274

..critedge14.loopexit_crit_edge:                  ; preds = %.lr.ph423
  br label %.critedge14, !llvm.loop !274

.critedge14:                                      ; preds = %bb.af, %.lr.ph310, %..critedge14.loopexit_crit_edge, %.critedge12
  %i.kh = phi ptr [ %i.jn, %.critedge12 ], [ %i.kb, %..critedge14.loopexit_crit_edge ], [ %i.jn, %.lr.ph310 ], [ %i.kb, %bb.af ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !202 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val312 = load i32, ptr %i.kk, align 4, !tbaa !24
  %i.kl = icmp sgt i32 %.val312, 0
  br i1 %i.kl, label %.lr.ph314, label %.critedge16

.lr.ph314:                                        ; preds = %.critedge14
  %i.km = getelementptr i8, ptr %0, i64 104
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph314, %bb.aj
  %i.ko = phi ptr [ %i.kh, %.lr.ph314 ], [ %i.lf, %bb.aj ] ; 2 uses
  %indvars.iv346 = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next347, %bb.aj ] ; 2 uses
  %i.kp = phi ptr [ %i.kj, %.lr.ph314 ], [ %i.lh, %bb.aj ]
  %i.kq = getelementptr i8, ptr %i.kp, i64 8
  %.val256.val = load ptr, ptr %i.kq, align 8, !tbaa !27
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.val256.val, i64 %indvars.iv346
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !15 ; 2 uses
  %.not204 = icmp eq i32 %i.ks, 0
  br i1 %.not204, label %.critedge16, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val254 = load ptr, ptr %i.km, align 8, !tbaa !27
  %i.kt = shl nsw i32 %i.ks, 1                    ; 2 uses
  %i.ku = or disjoint i32 %i.kt, 1                ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %.val254, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !15
  %.not211 = icmp eq i32 %i.kx, 0
  br i1 %.not211, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ky = load ptr, ptr %i.kn, align 8, !tbaa !68 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 240
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !81
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 260
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !8
  %i.ld = fpext float %i.lc to double
  %i.le = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.85, i32 noundef %i.ku, ptr noundef %i.la, double noundef %i.ld, i32 noundef %i.kt) #26 ; 0 uses
  %.pre367 = load ptr, ptr %0, align 8, !tbaa !105
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.lf = phi ptr [ %i.ko, %bb.ah ], [ %.pre367, %bb.ai ] ; 3 uses
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !202 ; 2 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  %.val = load i32, ptr %i.li, align 4, !tbaa !24
  %i.lj = sext i32 %.val to i64
  %i.lk = icmp slt i64 %indvars.iv.next347, %i.lj
  br i1 %i.lk, label %bb.ag, label %.critedge16, !llvm.loop !275

.critedge16:                                      ; preds = %bb.ag, %bb.aj, %.critedge14
  %i.ll = phi ptr [ %i.kh, %.critedge14 ], [ %i.ko, %bb.ag ], [ %i.lf, %bb.aj ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !109
  %i.lo = icmp sgt i32 %i.ln, 0
  br i1 %i.lo, label %.lr.ph323, label %.critedge18

.lr.ph323:                                        ; preds = %.critedge16
  %i.lp = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.lq = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.lr = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.ls = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.lt = getelementptr i8, ptr %0, i64 88        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph323, %.loopexit
  %i.lu = phi ptr [ %i.ll, %.lr.ph323 ], [ %i.qz, %.loopexit ] ; 2 uses
  %indvars.iv352 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next353, %.loopexit ] ; 7 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 32
  %.val227 = load ptr, ptr %i.lv, align 8, !tbaa !141 ; 2 uses
  %.not205 = icmp eq ptr %.val227, null
  br i1 %.not205, label %.critedge18, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %.val227, i64 %indvars.iv352
  %.val243 = load i64, ptr %i.lw, align 4         ; 2 uses
  %i.lx = and i64 %.val243, 2147483648
  %.not.i266 = icmp ne i64 %i.lx, 0
  %i.ly = and i64 %.val243, 536870911
  %i.lz = icmp eq i64 %i.ly, 536870911
  %narrow.i267.not = or i1 %.not.i266, %i.lz
  br i1 %narrow.i267.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.al
  %i.ma = shl nuw nsw i64 %indvars.iv352, 1       ; 4 uses
  %.val253 = load ptr, ptr %i.lp, align 8, !tbaa !27
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.val253, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !15
  %.not207 = icmp eq i32 %i.mc, 0
  br i1 %.not207, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.preheader
  %.val252 = load ptr, ptr %i.lq, align 8, !tbaa !110
  %i.md = getelementptr inbounds nuw [64 x i8], ptr %.val252, i64 %indvars.iv352 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4            ; 2 uses
  %.not.i268 = icmp sgt i32 %i.mf, -1
  br i1 %.not.i268, label %bb.an, label %Nf_ObjMatchBest.exit

bb.an:                                            ; preds = %bb.am
  %i.mg = load i32, ptr %i.md, align 4
  br label %Nf_ObjMatchBest.exit

Nf_ObjMatchBest.exit:                             ; preds = %bb.am, %bb.an
  %i.mh = phi i32 [ %i.mf, %bb.am ], [ %i.mg, %bb.an ] ; 3 uses
  %.0.i = phi ptr [ %i.me, %bb.am ], [ %i.md, %bb.an ]
  %i.mi = and i32 %i.mh, 1073741824
  %.not208 = icmp eq i32 %i.mi, 0
  br i1 %.not208, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %Nf_ObjMatchBest.exit
  %i.mj = load ptr, ptr %i.lr, align 8, !tbaa !68 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 240
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !81
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 260
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !8
  %i.mo = fpext float %i.mn to double
  %i.mp = trunc nuw i64 %i.ma to i32              ; 2 uses
  %i.mq = or disjoint i32 %i.mp, 1
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.85, i32 noundef %i.mp, ptr noundef %i.ml, double noundef %i.mo, i32 noundef %i.mq) #26 ; 0 uses
  br label %bb.ar

bb.ap:                                            ; preds = %Nf_ObjMatchBest.exit
  %.val230 = load ptr, ptr %i.ls, align 8, !tbaa !113
  %.val231 = load ptr, ptr %i.lt, align 8, !tbaa !27
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.val231, i64 %indvars.iv352
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !15 ; 2 uses
  %i.mu = ashr i32 %i.mt, 16
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %.val230, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !131
  %i.my = and i32 %i.mt, 65535
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.mz
  %i.nb = lshr i32 %i.mh, 20
  %i.nc = and i32 %i.nb, 1023
  %i.nd = zext nneg i32 %i.nc to i64
end_hunk_4
