Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sfmLib?download=true
inline.NumInlined: 238
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Vec_MemHashInsert:bb.a
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !46 ; 6 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.ht, align 4, !tbaa !17 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i30, align 4, !tbaa !26
  %i.hu = load i32, ptr %i.hs, align 8, !tbaa !18
  %i.hv = icmp eq i32 %.val14, %i.hu
  br i1 %i.hv, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.hw = icmp slt i32 %.val14, 16
  br i1 %i.hw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !19 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ia = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.ib = phi ptr [ %i.hz, %bb.y ], [ %i.ia, %bb.z ]
  store ptr %i.ib, ptr %i.hx, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.ic = icmp samesign ult i32 %.val14, 1073741823
  %i.id = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.ic, i32 %i.id, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !19 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.if, null
  %i.ig = zext nneg i32 %spec.select.i to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = tail call ptr @realloc(ptr noundef nonnull %i.if, i64 noundef %i.ih) #25
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ih) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ik = phi ptr [ %i.ii, %bb.ac ], [ %i.ij, %bb.ad ]
  store ptr %i.ik, ptr %i.ie, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hs, align 8, !tbaa !18
  %.pre = load i32, ptr %i.ht, align 4, !tbaa !17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.il = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !19
  %i.io = add nsw i32 %i.il, 1
  store i32 %i.io, ptr %i.ht, align 4, !tbaa !17
  %i.ip = sext i32 %i.il to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ip
  store i32 -1, ptr %i.iq, align 4, !tbaa !26
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !74  ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !42 ; 3 uses
  %i.iu = ashr i32 %i.ir, %i.it                   ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !44 ; 3 uses
  %i.ix = icmp slt i32 %i.iw, %i.iu
  br i1 %i.ix, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !122 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.iu, %i.iz
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !58 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.jb, null
  %.not38.i.i = icmp eq i32 %i.iz, 0
  %i.jc = shl nsw i32 %i.iz, 1
  %i.jd = add nsw i32 %i.iu, 32
  %i.je = select i1 %.not38.i.i, i32 %i.jd, i32 %i.jc ; 2 uses
  store i32 %i.je, ptr %i.iy, align 8, !tbaa !122
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #25
  %.pre.pre.i.i = load i32, ptr %i.iv, align 4, !tbaa !44
  %.pre.pre.pre.pre.i = load i32, ptr %i.is, align 8, !tbaa !42
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.it, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.iw, %bb.ai ]
  %i.jj = phi ptr [ %i.jh, %bb.ah ], [ %i.ji, %bb.ai ]
  store ptr %i.jj, ptr %i.ja, align 8, !tbaa !58
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.it, %bb.af ] ; 2 uses
  %i.jk = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.iw, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.jk, %i.iu
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i23, label %._crit_edge.i.i

.lr.ph.i.i23:                                     ; preds = %bb.ak
  %i.jl = load i32, ptr %0, align 8, !tbaa !41
  %i.jm = shl i32 %i.jl, %.pre.pre.i
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !58
  %i.jr = sext i32 %i.jk to i64
  %wide.trip.count.i.i24 = sext i32 %i.iu to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23
  %indvars.iv.i.i25 = phi i64 [ %i.jr, %.lr.ph.i.i23 ], [ %indvars.iv.next.i.i26, %bb.al ]
  %indvars.iv.next.i.i26 = add nsw i64 %indvars.iv.i.i25, 1 ; 3 uses
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jo) #23
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %indvars.iv.next.i.i26
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !59
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i24
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i, label %bb.al, !llvm.loop !121

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !44
  %.pre.i = ashr i32 %i.ir, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i = phi i32 [ %i.iu, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.ju = add nsw i32 %i.ir, 1
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !74
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !58
  %i.jx = sext i32 %.pre-phi.i to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !59
  %i.ka = load i32, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !43
  %i.kd = and i32 %i.kc, %i.ir
  %i.ke = mul nsw i32 %i.kd, %i.ka
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kf
  %i.kh = sext i32 %i.ka to i64
  %i.ki = shl nsw i64 %i.kh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kg, ptr readonly align 8 %1, i64 %i.ki, i1 false)
  %i.kj = load ptr, ptr %i.hr, align 8, !tbaa !46
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val = load i32, ptr %i.kk, align 4, !tbaa !17
  %i.kl = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.kl, %Vec_MemPush.exit ], [ %i.gk, %.lr.ph.i18 ], [ %i.hp, %bb.u ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define noundef ptr @Sfm_LibPrepare(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [8 x i64], align 16               ; 11 uses
  %i.b = alloca [4 x i64], align 16               ; 6 uses
  %i.c = alloca [8 x ptr], align 16               ; 6 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.d = alloca [9 x ptr], align 16               ; 6 uses
  %i.e = alloca [8 x i32], align 16               ; 18 uses
  %i.f = alloca [9 x i32], align 16               ; 5 uses
  %i.g = alloca [4 x i64], align 16               ; 32 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = alloca [1000 x i8], align 16             ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.k = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #24
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %6, align 8, !tbaa !154
  %.neg236 = mul i64 %i.m, -1000000
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !155
  %.neg = sdiv i64 %i.o, -1000
  %.neg237 = add i64 %.neg, %.neg236
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg237, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.p = call ptr @Sfm_LibStart(i32 noundef %0, i32 noundef %2, i32 noundef %4) ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.q = call noundef range(i32 -2147483648, 7) i32 @llvm.smin.i32(i32 %0, i32 6)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.s = call ptr @Mio_CollectRootsNewDefault2(i32 noundef %i.q, ptr noundef nonnull %i.r, i32 noundef 0) #24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !60
  %i.u = load i32, ptr %i.r, align 8, !tbaa !156  ; 2 uses
  %i.v = sext i32 %i.u to i64
  %.idx = mul nsw i64 %i.v, 80
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %.idx ; 7 uses
  %i.x = icmp sgt i32 %i.u, 4
  br i1 %i.x, label %.lr.ph, label %.preheader248

.lr.ph:                                           ; preds = %Abc_Clock.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %.not153 = icmp eq i32 %4, 0
  br label %bb.c

.preheader248:                                    ; preds = %bb.h, %Abc_Clock.exit
  %.not250 = icmp slt i32 %0, 2                   ; 2 uses
  br i1 %.not250, label %._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %.preheader248
  %i.z = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %i.z to i64
  br label %.lr.ph252

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.0134249 = phi ptr [ %i.y, %.lr.ph ], [ %i.aw, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %.0134249, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !157 ; 3 uses
  store i64 %i.ab, ptr %i.j, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.0134249, i64 16 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i32 %i.ad, -201326593               ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = lshr i32 %i.ad, 28                      ; 2 uses
  %.neg.i = shl nsw i32 -1, %i.af
  %i.ag = add nsw i32 %.neg.i, 64
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah                      ; 2 uses
  %i.aj = and i64 %i.ai, %i.ab
  %i.ak = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aj)
  %or.cond.not = icmp eq i64 %i.ak, 1
  br i1 %or.cond.not, label %bb.d, label %Abc_Tt6IsAndType.exit.thread

Abc_Tt6IsAndType.exit.thread:                     ; preds = %bb.c
  %i.al = xor i64 %i.ab, -1
  %i.am = and i64 %i.ai, %i.al
  %i.an = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.am)
  %or.cond240.not = icmp eq i64 %i.an, 1
  br i1 %or.cond240.not, label %bb.d, label %Abc_Tt6IsOrType.exit.thread

bb.d:                                             ; preds = %Abc_Tt6IsAndType.exit.thread, %bb.c
  %i.ao = or disjoint i32 %i.ae, 67108864
  store i32 %i.ao, ptr %i.ac, align 8
  br label %bb.h

Abc_Tt6IsOrType.exit.thread:                      ; preds = %Abc_Tt6IsAndType.exit.thread
  %i.ap = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.j, i32 noundef %i.af, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.i) #24
  %i.aq = icmp slt i32 %i.ap, 4
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %Abc_Tt6IsOrType.exit.thread
  %i.ar = load i32, ptr %i.ac, align 8
  %i.as = and i32 %i.ar, -201326593
  %i.at = or disjoint i32 %i.as, 134217728
  store i32 %i.at, ptr %i.ac, align 8
  br label %bb.h

bb.f:                                             ; preds = %Abc_Tt6IsOrType.exit.thread
  br i1 %.not153, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %.0134249, align 8, !tbaa !75
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.au, ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0134249, i64 80 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.w
  br i1 %i.ax, label %bb.c, label %.preheader248, !llvm.loop !123

.lr.ph255.preheader:                              ; preds = %.lr.ph252
  %i.ay = add nuw i32 %0, 1
  %wide.trip.count301 = zext i32 %i.ay to i64
  br label %.lr.ph255

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %.lr.ph252
  %indvars.iv = phi i64 [ 2, %.lr.ph252.preheader ], [ %indvars.iv.next, %.lr.ph252 ] ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv to i32
  %i.ba = call ptr @Extra_PermSchedule(i32 noundef %i.az) #24
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph255.preheader, label %.lr.ph252, !llvm.loop !124

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %indvars.iv298 = phi i64 [ 2, %.lr.ph255.preheader ], [ %indvars.iv.next299, %.lr.ph255 ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv298 to i32
  %i.bd = call i32 @Extra_Factorial(i32 noundef %i.bc) #24
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv298
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !26
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge, label %.lr.ph255, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph255, %.preheader248
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 320 ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.w
  br i1 %i.bh, label %.lr.ph266, label %._crit_edge267

.lr.ph266:                                        ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph266, %._crit_edge263
  %.1135264 = phi ptr [ %i.bg, %.lr.ph266 ], [ %i.gg, %._crit_edge263 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1135264, i64 16
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.bo = lshr i32 %i.bn, 28                      ; 4 uses
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %._crit_edge259, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %bb.i
  %i.bp = and i32 %i.bo, 7                        ; 3 uses
  %xtraiter = zext nneg i32 %i.bp to i64
  %i.bq = icmp sgt i32 %i.bn, -1
  br i1 %i.bq, label %.lr.ph258.epil.preheader, label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %.lr.ph258
  %indvars.iv303 = phi i64 [ %indvars.iv.next304.7, %.lr.ph258 ], [ 0, %.lr.ph258.preheader ] ; 10 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph258 ], [ 0, %.lr.ph258.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv303
  %i.bs = trunc nuw nsw i64 %indvars.iv303 to i32
  store i32 %i.bs, ptr %i.br, align 16, !tbaa !26
  %indvars.iv.next304 = or disjoint i64 %indvars.iv303, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304
  %i.bu = trunc nuw nsw i64 %indvars.iv.next304 to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !26
  %indvars.iv.next304.1 = or disjoint i64 %indvars.iv303, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.1
  %i.bw = trunc nuw nsw i64 %indvars.iv.next304.1 to i32
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !26
  %indvars.iv.next304.2 = or disjoint i64 %indvars.iv303, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.2
  %i.by = trunc nuw nsw i64 %indvars.iv.next304.2 to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !26
  %indvars.iv.next304.3 = or disjoint i64 %indvars.iv303, 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.3
  %i.ca = trunc nuw nsw i64 %indvars.iv.next304.3 to i32
  store i32 %i.ca, ptr %i.bz, align 16, !tbaa !26
  %indvars.iv.next304.4 = or disjoint i64 %indvars.iv303, 5 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.4
  %i.cc = trunc nuw nsw i64 %indvars.iv.next304.4 to i32
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !26
  %indvars.iv.next304.5 = or disjoint i64 %indvars.iv303, 6 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.5
  %i.ce = trunc nuw nsw i64 %indvars.iv.next304.5 to i32
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !26
  %indvars.iv.next304.6 = or disjoint i64 %indvars.iv303, 7 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.6
  %i.cg = trunc nuw nsw i64 %indvars.iv.next304.6 to i32
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !26
  %indvars.iv.next304.7 = add nuw nsw i64 %indvars.iv303, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.7, label %._crit_edge259.loopexit.unr-lcssa, label %.lr.ph258, !llvm.loop !126

._crit_edge259.loopexit.unr-lcssa:                ; preds = %.lr.ph258
  %lcmp.mod.not = icmp eq i32 %i.bp, 0
  br i1 %lcmp.mod.not, label %._crit_edge259, label %.lr.ph258.epil.preheader

.lr.ph258.epil.preheader:                         ; preds = %._crit_edge259.loopexit.unr-lcssa, %.lr.ph258.preheader
  %indvars.iv303.epil.init = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next304.7, %._crit_edge259.loopexit.unr-lcssa ]
  %lcmp.mod477 = icmp ne i32 %i.bp, 0
  call void @llvm.assume(i1 %lcmp.mod477)
  br label %.lr.ph258.epil

.lr.ph258.epil:                                   ; preds = %.lr.ph258.epil, %.lr.ph258.epil.preheader
  %indvars.iv303.epil = phi i64 [ %indvars.iv303.epil.init, %.lr.ph258.epil.preheader ], [ %indvars.iv.next304.epil, %.lr.ph258.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph258.epil.preheader ], [ %epil.iter.next, %.lr.ph258.epil ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv303.epil
  %i.ci = trunc nuw nsw i64 %indvars.iv303.epil to i32
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !26
  %indvars.iv.next304.epil = add nuw nsw i64 %indvars.iv303.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge259, label %.lr.ph258.epil, !llvm.loop !127

._crit_edge259:                                   ; preds = %._crit_edge259.loopexit.unr-lcssa, %.lr.ph258.epil, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.1135264, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !157 ; 4 uses
  store i64 %i.ck, ptr %i.g, align 16, !tbaa !25
  %i.cl = load i32, ptr %i.p, align 8, !tbaa !55
  %i.cm = icmp sgt i32 %i.cl, 6
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge259
  store i64 %i.ck, ptr %i.bi, align 8, !tbaa !25
  store i64 %i.ck, ptr %i.bj, align 16, !tbaa !25
  store i64 %i.ck, ptr %i.bk, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge259
  %i.cn = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !26 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cn
  %wide.trip.count311 = zext nneg i32 %i.cp to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph262, %Abc_TtSwapAdjacent.exit
  %indvars.iv308 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next309, %Abc_TtSwapAdjacent.exit ] ; 2 uses
  call void @Sfm_LibPrepareAdd(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef %i.bo, ptr noundef nonnull %.1135264, ptr noundef null, i32 noundef -1)
  %i.cs = load i32, ptr %i.bl, align 4, !tbaa !56 ; 7 uses
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !158
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv308
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !26 ; 7 uses
  %i.cw = icmp slt i32 %i.cv, 5
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = icmp sgt i32 %i.cs, 0
  br i1 %i.cx, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.m
  %i.cy = shl nuw nsw i32 1, %i.cv
  %i.cz = sext i32 %i.cv to i64
  %i.da = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.cz ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !25 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !25 ; 2 uses
  %i.de = zext nneg i32 %i.cy to i64              ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25 ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.cs to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.cs, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.db, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert377 = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %broadcast.splat378 = shufflevector <2 x i64> %broadcast.splatinsert377, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert379 = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %broadcast.splat380 = shufflevector <2 x i64> %broadcast.splatinsert379, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert381 = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %broadcast.splat382 = shufflevector <2 x i64> %broadcast.splatinsert381, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dh, align 16, !tbaa !25 ; 3 uses
  %wide.load383 = load <2 x i64>, ptr %i.di, align 16, !tbaa !25 ; 3 uses
  %i.dj = and <2 x i64> %wide.load, %broadcast.splat
  %i.dk = and <2 x i64> %wide.load383, %broadcast.splat
  %i.dl = and <2 x i64> %wide.load, %broadcast.splat378
  %i.dm = and <2 x i64> %wide.load383, %broadcast.splat378
  %i.dn = shl <2 x i64> %i.dl, %broadcast.splat380
  %i.do = shl <2 x i64> %i.dm, %broadcast.splat380
  %i.dp = or <2 x i64> %i.dn, %i.dj
  %i.dq = or <2 x i64> %i.do, %i.dk
  %i.dr = and <2 x i64> %wide.load, %broadcast.splat382
  %i.ds = and <2 x i64> %wide.load383, %broadcast.splat382
  %i.dt = lshr <2 x i64> %i.dr, %broadcast.splat380
  %i.du = lshr <2 x i64> %i.ds, %broadcast.splat380
  %i.dv = or <2 x i64> %i.dp, %i.dt
  %i.dw = or <2 x i64> %i.dq, %i.du
  store <2 x i64> %i.dv, ptr %i.dh, align 16, !tbaa !25
  store <2 x i64> %i.dw, ptr %i.di, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i, %middle.block
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph ], [ %indvars.iv70.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv70.i ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !25 ; 3 uses
  %i.ea = and i64 %i.dz, %i.db
  %i.eb = and i64 %i.dz, %i.dd
  %i.ec = shl i64 %i.eb, %i.de
  %i.ed = or i64 %i.ec, %i.ea
  %i.ee = and i64 %i.dz, %i.dg
  %i.ef = lshr i64 %i.ee, %i.de
  %i.eg = or i64 %i.ed, %i.ef
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !25
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph, !llvm.loop !129

bb.n:                                             ; preds = %bb.l
  %i.eh = icmp eq i32 %i.cv, 5
  br i1 %i.eh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %7 = zext nneg i32 %i.cs to i64
  %.idx65.i = shl nuw nsw i64 %7, 3
  %8 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx65.i
  %i.ei = icmp sgt i32 %i.cs, 0
  br i1 %i.ei, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.05462.i = phi ptr [ %i.em, %.lr.ph.i ], [ %i.g, %bb.o ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !tbaa !26
  %i.el = shufflevector <2 x i32> %i.ek, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.el, ptr %i.ej, align 4, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.en = icmp ult ptr %i.em, %8
  br i1 %i.en, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !130

bb.p:                                             ; preds = %bb.n
  %9 = sext i32 %i.cs to i64
  %.idx.i = shl nsw i64 %9, 3                     ; 2 uses
  %10 = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i
  %i.eo = icmp samesign ult i32 %i.cv, 7
  %i.ep = add nsw i32 %i.cv, -6
  %i.eq = shl nuw i32 1, %i.ep
  %i.er = select i1 %i.eo, i32 1, i32 %i.eq       ; 7 uses
  %i.es = icmp sgt i32 %i.cs, 0
  br i1 %i.es, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.p
  %i.et = icmp sgt i32 %i.er, 0
  %i.eu = shl i32 %i.er, 2                        ; 2 uses
  %i.ev = sext i32 %i.eu to i64                   ; 3 uses
  br i1 %i.et, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ew = shl nuw nsw i32 %i.er, 1
  %i.ex = zext nneg i32 %i.er to i64              ; 6 uses
  %i.ey = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.ez = shl nsw i64 %i.ev, 3                    ; 4 uses
  %i.fa = shl nuw nsw i64 %i.ey, 3                ; 2 uses
  %i.fb = shl nuw nsw i64 %i.ex, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.fa
  %i.fc = shl nuw nsw i64 %i.ex, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.ez, i64 1)
  %i.fd = add i64 %.idx.i, %i.h
  %i.fe = add i64 %i.ez, %i.h
  %umax388 = call i64 @llvm.umax.i64(i64 %i.fd, i64 %i.fe)
  %i.ff = sub i64 %umax388, %i.h                  ; 2 uses
  %i.fg = icmp ne i64 %i.ff, %i.ez
  %umin = zext i1 %i.fg to i64                    ; 2 uses
  %i.fh = or disjoint i64 %i.ez, %umin
  %i.fi = sub i64 %i.ff, %i.fh
  %scevgep389 = getelementptr i8, ptr %i.g, i64 %i.fb
  %min.iters.check391 = icmp ult i32 %i.er, 4
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.fc
  %invariant.gep503 = getelementptr i8, ptr %i.g, i64 %i.fb
  %invariant.gep505 = getelementptr i8, ptr %invariant.gep503, i64 %i.fa
  %stride.check = icmp slt i32 %i.eu, 0
  %n.vec393 = and i64 %i.ex, 2147483644
  %xtraiter478 = and i64 %i.ex, 1
  %i.fj = icmp eq i32 %i.er, 1
  %unroll_iter482 = and i64 %i.ex, 2147483646
  %lcmp.mod480.not = icmp eq i64 %xtraiter478, 0
  %lcmp.mod481 = trunc i32 %i.er to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ga, %._crit_edge.us.i ], [ %i.g, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ex ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ey ; 4 uses
  br i1 %min.iters.check391, label %scalar.ph390.preheader, label %vector.memcheck

scalar.ph390.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i
  br i1 %i.fj, label %scalar.ph390.epil.preheader, label %scalar.ph390

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.fk = udiv i64 %i.fi, %umax
  %i.fl = add i64 %i.fk, %umin
  %i.fm = mul i64 %i.fl, %i.ev
  %i.fn = shl i64 %i.fm, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fn
  %gep506 = getelementptr i8, ptr %invariant.gep505, i64 %i.fn
  %bound0 = icmp ult ptr %scevgep389, %gep506
  %bound1 = icmp ult ptr %scevgep, %gep
  %found.conflict = and i1 %bound0, %bound1
  %i.fo = or i1 %found.conflict, %stride.check
  br i1 %i.fo, label %scalar.ph390.preheader, label %vector.body394

vector.body394:                                   ; preds = %vector.memcheck, %vector.body394
  %index395 = phi i64 [ %index.next400, %vector.body394 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index395 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load396 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !25, !alias.scope !159, !noalias !160
  %wide.load397 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !25, !alias.scope !159, !noalias !160
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index395 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load398 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !25, !alias.scope !160
  %wide.load399 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !25, !alias.scope !160
  store <2 x i64> %wide.load398, ptr %i.fp, align 8, !tbaa !25, !alias.scope !159, !noalias !160
  store <2 x i64> %wide.load399, ptr %i.fq, align 8, !tbaa !25, !alias.scope !159, !noalias !160
  store <2 x i64> %wide.load396, ptr %i.fr, align 8, !tbaa !25, !alias.scope !160
  store <2 x i64> %wide.load397, ptr %i.fs, align 8, !tbaa !25, !alias.scope !160
  %index.next400 = add nuw i64 %index395, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.ft, label %._crit_edge.us.i, label %vector.body394, !llvm.loop !134

scalar.ph390:                                     ; preds = %scalar.ph390.preheader, %scalar.ph390
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph390 ], [ 0, %scalar.ph390.preheader ] ; 4 uses
  %niter483 = phi i64 [ %niter483.next.1, %scalar.ph390 ], [ 0, %scalar.ph390.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.fu = load i64, ptr %gep.i, align 8, !tbaa !25
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i ; 2 uses
  %i.fv = load i64, ptr %gep81.i, align 8, !tbaa !25
  store i64 %i.fv, ptr %gep.i, align 8, !tbaa !25
  store i64 %i.fu, ptr %gep81.i, align 8, !tbaa !25
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fw = load i64, ptr %gep.i.1, align 8, !tbaa !25
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fx = load i64, ptr %gep81.i.1, align 8, !tbaa !25
  store i64 %i.fx, ptr %gep.i.1, align 8, !tbaa !25
  store i64 %i.fw, ptr %gep81.i.1, align 8, !tbaa !25
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter483.next.1 = add i64 %niter483, 2         ; 2 uses
  %niter483.ncmp.1 = icmp eq i64 %niter483.next.1, %unroll_iter482
  br i1 %niter483.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph390, !llvm.loop !135

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph390
  br i1 %lcmp.mod480.not, label %._crit_edge.us.i, label %scalar.ph390.epil.preheader

scalar.ph390.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph390.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph390.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod481)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fy = load i64, ptr %gep.i.epil, align 8, !tbaa !25
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fz = load i64, ptr %gep81.i.epil, align 8, !tbaa !25
  store i64 %i.fz, ptr %gep.i.epil, align 8, !tbaa !25
  store i64 %i.fy, ptr %gep81.i.epil, align 8, !tbaa !25
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body394, %scalar.ph390.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ev ; 2 uses
  %i.gb = icmp ult ptr %i.ga, %10
  br i1 %i.gb, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !136

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i, %scalar.ph, %middle.block, %bb.m, %bb.o, %bb.p, %.preheader.lr.ph.i
  %i.gc = sext i32 %i.cv to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gc ; 2 uses
  %i.ge = load <2 x i32>, ptr %i.gd, align 4, !tbaa !26
  %i.gf = shufflevector <2 x i32> %i.ge, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gf, ptr %i.gd, align 4, !tbaa !26
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %._crit_edge263, label %bb.l, !llvm.loop !137

._crit_edge263:                                   ; preds = %Abc_TtSwapAdjacent.exit, %bb.k
  %i.gg = getelementptr inbounds nuw i8, ptr %.1135264, i64 80 ; 2 uses
  %i.gh = icmp ult ptr %i.gg, %i.w
  br i1 %i.gh, label %bb.i, label %._crit_edge267, !llvm.loop !138

._crit_edge267:                                   ; preds = %._crit_edge263, %._crit_edge
  %.not144 = icmp eq i32 %1, 0
  br i1 %.not144, label %.loopexit244, label %bb.q

bb.q:                                             ; preds = %._crit_edge267
  %i.gi = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 320 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %i.w
  br i1 %i.gk, label %.lr.ph285, label %.loopexit244

.lr.ph285:                                        ; preds = %bb.q
  %i.gl = add nsw i32 %0, 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph285, %.loopexit243
  %.2136282 = phi ptr [ %i.gj, %.lr.ph285 ], [ %i.sr, %.loopexit243 ] ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.2136282, i64 16 ; 6 uses
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = and i32 %i.go, 201326592
  %.not148 = icmp eq i32 %i.gp, 0
  br i1 %.not148, label %.loopexit243, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 320 ; 2 uses
  %i.gs = icmp ult ptr %i.gr, %i.w
  br i1 %i.gs, label %.lr.ph281, label %.loopexit243

.lr.ph281:                                        ; preds = %bb.s
  %i.gt = getelementptr inbounds nuw i8, ptr %.2136282, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph281, %.loopexit
  %.0133278 = phi ptr [ %i.gr, %.lr.ph281 ], [ %i.sp, %.loopexit ] ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0133278, i64 16 ; 4 uses
  %i.gv = load i32, ptr %i.gu, align 8            ; 2 uses
  %i.gw = and i32 %i.gv, 201326592
  %.not149 = icmp eq i32 %i.gw, 0
  br i1 %.not149, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gx = load i32, ptr %i.gn, align 8
  %i.gy = lshr i32 %i.gx, 28
  %i.gz = lshr i32 %i.gv, 28                      ; 3 uses
  %i.ha = add nuw nsw i32 %i.gy, %i.gz
  %.not150 = icmp sgt i32 %i.ha, %i.gl
  %.not291 = icmp eq i32 %i.gz, 0
  %or.cond = or i1 %.not150, %.not291
  br i1 %or.cond, label %.loopexit, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.u
  %i.hb = getelementptr inbounds nuw i8, ptr %.0133278, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph277, %._crit_edge275
  %indvars.iv323 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next324, %._crit_edge275 ] ; 9 uses
  %i.hc = phi i32 [ %i.gz, %.lr.ph277 ], [ %i.sm, %._crit_edge275 ]
  %i.hd = load i32, ptr %i.gn, align 8
  %i.he = lshr i32 %i.hd, 28                      ; 6 uses
  %i.hf = add nuw nsw i32 %i.he, %i.hc
  %.fr292 = freeze i32 %i.hf                      ; 4 uses
  %i.hg = add i32 %.fr292, -1                     ; 4 uses
  %i.hh = icmp samesign ugt i32 %.fr292, 1
  br i1 %i.hh, label %.lr.ph270.preheader, label %._crit_edge271

.lr.ph270.preheader:                              ; preds = %bb.v
  %wide.trip.count316 = zext i32 %i.hg to i64     ; 3 uses
  %min.iters.check461 = icmp ult i32 %.fr292, 9
  br i1 %min.iters.check461, label %.lr.ph270.preheader473, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph270.preheader
  %n.vec463 = and i64 %wide.trip.count316, 4294967288 ; 3 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next466, %vector.body464 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph462 ], [ %vec.ind.next, %vector.body464 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index465 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <4 x i32> %vec.ind, ptr %i.hi, align 16, !tbaa !26
  store <4 x i32> %step.add, ptr %i.hj, align 16, !tbaa !26
  %index.next466 = add nuw i64 %index465, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hk = icmp eq i64 %index.next466, %n.vec463
  br i1 %i.hk, label %middle.block467, label %vector.body464, !llvm.loop !139

middle.block467:                                  ; preds = %vector.body464
  %cmp.n468 = icmp eq i64 %n.vec463, %wide.trip.count316
  br i1 %cmp.n468, label %._crit_edge271, label %.lr.ph270.preheader473

.lr.ph270.preheader473:                           ; preds = %.lr.ph270.preheader, %middle.block467
  %indvars.iv313.ph = phi i64 [ 0, %.lr.ph270.preheader ], [ %n.vec463, %middle.block467 ]
  br label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph270.preheader473, %.lr.ph270
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %.lr.ph270 ], [ %indvars.iv313.ph, %.lr.ph270.preheader473 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv313
  %i.hm = trunc nuw nsw i64 %indvars.iv313 to i32
  store i32 %i.hm, ptr %i.hl, align 4, !tbaa !26
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %._crit_edge271, label %.lr.ph270, !llvm.loop !140

._crit_edge271:                                   ; preds = %.lr.ph270, %middle.block467, %bb.v
  %i.hn = load i32, ptr %i.p, align 8, !tbaa !55
  %i.ho = icmp sgt i32 %i.hn, 6
  br i1 %i.ho, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.hp = load i32, ptr %i.gn, align 8
  %i.hq = lshr i32 %i.hp, 28
  %i.hr = load ptr, ptr %i.gt, align 8, !tbaa !63 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  %.val16.i = load i32, ptr %i.hs, align 4, !tbaa !17
  %i.ht = getelementptr i8, ptr %i.hr, i64 8
  %.val17.i = load ptr, ptr %i.ht, align 8, !tbaa !19
  call fastcc void @Exp_Truth8(i32 noundef %i.hq, i32 %.val16.i, ptr %.val17.i, ptr noundef null, ptr noundef nonnull %i.b)
  %i.hu = load i32, ptr %i.gu, align 8
  %i.hv = lshr i32 %i.hu, 28                      ; 5 uses
  %.not.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i, label %Sfm_LibTruth8Two.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.hw = load i32, ptr %i.gn, align 8
  %i.hx = lshr i32 %i.hw, 28                      ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.hv to i64 ; 2 uses
  %xtraiter490 = and i64 %wide.trip.count.i, 1
  %i.hy = icmp eq i32 %i.hv, 1
  br i1 %i.hy, label %.lr.ph.i157.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter494 = and i64 %wide.trip.count.i, 14
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157, %.lr.ph.preheader.i.new
  %indvars.iv.i158 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i159.1, %.lr.ph.i157 ] ; 4 uses
  %.019.i = phi i32 [ %i.hx, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i157 ] ; 2 uses
  %niter495 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter495.next.1, %.lr.ph.i157 ]
  %i.hz = icmp ne i64 %indvars.iv.i158, %indvars.iv323 ; 2 uses
  %i.ia = zext nneg i32 %.019.i to i64
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr @s_Truth8, i64 %i.ia
  %.sink.i = select i1 %i.hz, ptr %i.ib, ptr %i.b
  %i.ic = zext i1 %i.hz to i32
  %.1.i = add nuw nsw i32 %.019.i, %i.ic          ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i158
  store ptr %.sink.i, ptr %i.id, align 16, !tbaa !59
  %indvars.iv.next.i159 = or disjoint i64 %indvars.iv.i158, 1 ; 2 uses
  %i.ie = icmp ne i64 %indvars.iv.next.i159, %indvars.iv323 ; 2 uses
  %i.if = zext nneg i32 %.1.i to i64
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr @s_Truth8, i64 %i.if
  %.sink.i.1 = select i1 %i.ie, ptr %i.ig, ptr %i.b
  %i.ih = zext i1 %i.ie to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.ih          ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i159
  store ptr %.sink.i.1, ptr %i.ii, align 8, !tbaa !59
  %indvars.iv.next.i159.1 = add nuw nsw i64 %indvars.iv.i158, 2 ; 2 uses
  %niter495.next.1 = add i64 %niter495, 2         ; 2 uses
  %niter495.ncmp.1 = icmp eq i64 %niter495.next.1, %unroll_iter494
  br i1 %niter495.ncmp.1, label %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa, label %.lr.ph.i157, !llvm.loop !3

Sfm_LibTruth8Two.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph.i157
  %lcmp.mod492.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod492.not, label %Sfm_LibTruth8Two.exit, label %.lr.ph.i157.epil.preheader

.lr.ph.i157.epil.preheader:                       ; preds = %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i158.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i159.1, %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa ] ; 2 uses
  %.019.i.epil.init = phi i32 [ %i.hx, %.lr.ph.preheader.i ], [ %.1.i.1, %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa ]
  %lcmp.mod493 = trunc i32 %i.hv to i1
  call void @llvm.assume(i1 %lcmp.mod493)
  %.not502 = icmp eq i64 %indvars.iv.i158.epil.init, %indvars.iv323
  %i.ij = zext nneg i32 %.019.i.epil.init to i64
  %i.ik = getelementptr inbounds nuw [32 x i8], ptr @s_Truth8, i64 %i.ij
  %.sink.i.epil = select i1 %.not502, ptr %i.b, ptr %i.ik
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i158.epil.init
  store ptr %.sink.i.epil, ptr %i.il, align 8, !tbaa !59
  br label %Sfm_LibTruth8Two.exit

Sfm_LibTruth8Two.exit:                            ; preds = %.lr.ph.i157.epil.preheader, %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa, %bb.w
  %i.im = load ptr, ptr %i.hb, align 8, !tbaa !63 ; 2 uses
end_hunk_0
begin_hunk_1_@Sfm_LibPrepare:bb.a
  %i.md = sext i32 %i.mc to i64
  %i.me = call noalias ptr @calloc(i64 noundef %i.md, i64 noundef 8) #26 ; 6 uses
  %i.mf = icmp sgt i32 %.val26.i, 1
  %i.mg = getelementptr i8, ptr %i.ma, i64 8
  %.val24.i = load ptr, ptr %i.mg, align 8, !tbaa !19 ; 2 uses
  br i1 %i.mf, label %.lr.ph.i200, label %._crit_edge.i

.lr.ph.i200:                                      ; preds = %Sfm_LibTruth6Two.exit
  %i.mh = shl nuw nsw i32 %i.lf, 1                ; 2 uses
  %wide.trip.count.i201 = zext nneg i32 %i.mc to i64
  br label %bb.av

bb.av:                                            ; preds = %Exp_Truth6Lit.exit32.i, %.lr.ph.i200
  %indvars.iv.i202 = phi i64 [ 0, %.lr.ph.i200 ], [ %indvars.iv.next.i204, %Exp_Truth6Lit.exit32.i ] ; 3 uses
  %.idx.i.a = shl nuw nsw i64 %indvars.iv.i202, 3
  %i.mi = getelementptr inbounds nuw i8, ptr %.val24.i, i64 %.idx.i.a ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !26 ; 6 uses
  switch i32 %i.mj, label %bb.ax [
    i32 -1, label %Exp_Truth6Lit.exit.i
    i32 -2, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  br label %Exp_Truth6Lit.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.mk = icmp slt i32 %i.mj, %i.mh
  %.not17.i.i = trunc i32 %i.mj to i1             ; 2 uses
  br i1 %i.mk, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not17.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ml = sdiv i32 %i.mj, 2
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.mm
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !25
  %i.mp = xor i64 %i.mo, -1
  br label %Exp_Truth6Lit.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.mq = ashr exact i32 %i.mj, 1
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.mr
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !25
  br label %Exp_Truth6Lit.exit.i

bb.bb:                                            ; preds = %bb.ax
  %i.mu = lshr i32 %i.mj, 1
  %i.mv = sub nsw i32 %i.mu, %i.lf
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !25
  %i.mz = sext i1 %.not17.i.i to i64
  %spec.select.i.i = xor i64 %i.my, %i.mz
  br label %Exp_Truth6Lit.exit.i

Exp_Truth6Lit.exit.i:                             ; preds = %bb.bb, %bb.ba, %bb.az, %bb.aw, %bb.av
  %.0.i.i203 = phi i64 [ %i.mt, %bb.ba ], [ -1, %bb.aw ], [ 0, %bb.av ], [ %i.mp, %bb.az ], [ %spec.select.i.i, %bb.bb ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !26 ; 6 uses
  switch i32 %i.nb, label %bb.bd [
    i32 -1, label %Exp_Truth6Lit.exit32.i
    i32 -2, label %bb.bc
  ]

bb.bc:                                            ; preds = %Exp_Truth6Lit.exit.i
  br label %Exp_Truth6Lit.exit32.i

bb.bd:                                            ; preds = %Exp_Truth6Lit.exit.i
  %i.nc = icmp slt i32 %i.nb, %i.mh
  %.not17.i30.i = trunc i32 %i.nb to i1           ; 2 uses
  br i1 %i.nc, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  br i1 %.not17.i30.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.nd = sdiv i32 %i.nb, 2
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ne
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !25
  %i.nh = xor i64 %i.ng, -1
  br label %Exp_Truth6Lit.exit32.i

bb.bg:                                            ; preds = %bb.be
  %i.ni = ashr exact i32 %i.nb, 1
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !25
  br label %Exp_Truth6Lit.exit32.i

bb.bh:                                            ; preds = %bb.bd
  %i.nm = lshr i32 %i.nb, 1
  %i.nn = sub nsw i32 %i.nm, %i.lf
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !25
  %i.nr = sext i1 %.not17.i30.i to i64
  %spec.select.i31.i = xor i64 %i.nq, %i.nr
  br label %Exp_Truth6Lit.exit32.i

Exp_Truth6Lit.exit32.i:                           ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bc, %Exp_Truth6Lit.exit.i
  %.0.i29.i = phi i64 [ %i.nl, %bb.bg ], [ -1, %bb.bc ], [ 0, %Exp_Truth6Lit.exit.i ], [ %i.nh, %bb.bf ], [ %spec.select.i31.i, %bb.bh ]
  %i.ns = and i64 %.0.i29.i, %.0.i.i203
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv.i202
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !25
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i202, 1 ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %indvars.iv.next.i204, %wide.trip.count.i201
  br i1 %exitcond.not.i205, label %._crit_edge.i, label %bb.av, !llvm.loop !2

._crit_edge.i:                                    ; preds = %Exp_Truth6Lit.exit32.i, %Sfm_LibTruth6Two.exit
  %i.nu = sext i32 %.val26.i to i64
  %i.nv = getelementptr [4 x i8], ptr %.val24.i, i64 %i.nu
  %i.nw = getelementptr i8, ptr %i.nv, i64 -4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !26 ; 6 uses
  switch i32 %i.nx, label %bb.bj [
    i32 -1, label %Exp_Truth6Lit.exit36.i
    i32 -2, label %bb.bi
  ]

bb.bi:                                            ; preds = %._crit_edge.i
  br label %Exp_Truth6Lit.exit36.i

bb.bj:                                            ; preds = %._crit_edge.i
  %i.ny = shl nuw nsw i32 %i.lf, 1
  %i.nz = icmp slt i32 %i.nx, %i.ny
  %.not17.i34.i = trunc i32 %i.nx to i1           ; 2 uses
  br i1 %i.nz, label %bb.bk, label %Exp_Truth6Lit.exit36.thread.i

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not17.i34.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.oa = sdiv i32 %i.nx, 2
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ob
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !25
  %i.oe = xor i64 %i.od, -1
  br label %Exp_Truth6Lit.exit36.i

bb.bm:                                            ; preds = %bb.bk
  %i.of = ashr exact i32 %i.nx, 1
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.og
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !25
  br label %Exp_Truth6Lit.exit36.i

Exp_Truth6Lit.exit36.thread.i:                    ; preds = %bb.bj
  %i.oj = lshr i32 %i.nx, 1
  %i.ok = sub nsw i32 %i.oj, %i.lf
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.ol
  %i.on = load i64, ptr %i.om, align 8, !tbaa !25
  %i.oo = sext i1 %.not17.i34.i to i64
  %spec.select.i35.i = xor i64 %i.on, %i.oo
  br label %bb.bn

Exp_Truth6Lit.exit36.i:                           ; preds = %bb.bm, %bb.bl, %bb.bi, %._crit_edge.i
  %.0.i33.i = phi i64 [ %i.oi, %bb.bm ], [ -1, %bb.bi ], [ 0, %._crit_edge.i ], [ %i.oe, %bb.bl ] ; 2 uses
  %.not.i199 = icmp eq ptr %i.me, null
  br i1 %.not.i199, label %Exp_Truth6.exit, label %bb.bn

bb.bn:                                            ; preds = %Exp_Truth6Lit.exit36.i, %Exp_Truth6Lit.exit36.thread.i
  %.0.i3339.i = phi i64 [ %spec.select.i35.i, %Exp_Truth6Lit.exit36.thread.i ], [ %.0.i33.i, %Exp_Truth6Lit.exit36.i ]
  call void @free(ptr noundef nonnull %i.me) #24
  br label %Exp_Truth6.exit

Exp_Truth6.exit:                                  ; preds = %Exp_Truth6Lit.exit36.i, %bb.bn
  %.0.i3340.i = phi i64 [ %.0.i33.i, %Exp_Truth6Lit.exit36.i ], [ %.0.i3339.i, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 %.0.i3340.i, ptr %i.g, align 16, !tbaa !25
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %Sfm_LibTruth8Two.exit, %Exp_Truth6.exit
  %i.op = sext i32 %i.hg to i64                   ; 2 uses
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !26 ; 2 uses
  %i.os = icmp sgt i32 %i.or, 0
  br i1 %i.os, label %.lr.ph273, label %._crit_edge275

.lr.ph273:                                        ; preds = %Abc_TtCopy.exit
  %i.ot = icmp ugt i32 %.fr292, 6
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.op
  br i1 %i.ot, label %.lr.ph273.split.us, label %.lr.ph273.split.preheader

.lr.ph273.split.preheader:                        ; preds = %.lr.ph273
  %wide.trip.count321 = zext nneg i32 %i.or to i64
  %i.ov = trunc nuw nsw i64 %indvars.iv323 to i32
  br label %.lr.ph273.split

.lr.ph273.split.us:                               ; preds = %.lr.ph273
  %i.ow = trunc nuw nsw i64 %indvars.iv323 to i32
  call void @Sfm_LibPrepareAdd(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef %i.hg, ptr noundef nonnull %.2136282, ptr noundef nonnull %.0133278, i32 noundef %i.ow)
  br label %._crit_edge275

.lr.ph273.split:                                  ; preds = %.lr.ph273.split.preheader, %Abc_TtSwapAdjacent.exit196
  %indvars.iv318 = phi i64 [ 0, %.lr.ph273.split.preheader ], [ %indvars.iv.next319, %Abc_TtSwapAdjacent.exit196 ] ; 2 uses
  call void @Sfm_LibPrepareAdd(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef %i.hg, ptr noundef nonnull %.2136282, ptr noundef nonnull %.0133278, i32 noundef %i.ov)
  %i.ox = load i32, ptr %i.gm, align 4, !tbaa !56 ; 7 uses
  %i.oy = load ptr, ptr %i.ou, align 8, !tbaa !158
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv318
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !26 ; 7 uses
  %i.pb = icmp slt i32 %i.pa, 5
  br i1 %i.pb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph273.split
  %i.pc = icmp sgt i32 %i.ox, 0
  br i1 %i.pc, label %.lr.ph64.i191, label %Abc_TtSwapAdjacent.exit196

.lr.ph64.i191:                                    ; preds = %bb.bo
  %i.pd = shl nuw nsw i32 1, %i.pa
  %i.pe = sext i32 %i.pa to i64
  %i.pf = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.pe ; 3 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !25 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !25 ; 2 uses
  %i.pj = zext nneg i32 %i.pd to i64              ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !25 ; 2 uses
  %wide.trip.count73.i192 = zext nneg i32 %i.ox to i64 ; 3 uses
  %min.iters.check405 = icmp ult i32 %i.ox, 4
  br i1 %min.iters.check405, label %scalar.ph404.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph64.i191
  %n.vec407 = and i64 %wide.trip.count73.i192, 2147483644 ; 3 uses
  %broadcast.splatinsert408 = insertelement <2 x i64> poison, i64 %i.pg, i64 0
  %broadcast.splat409 = shufflevector <2 x i64> %broadcast.splatinsert408, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert410 = insertelement <2 x i64> poison, i64 %i.pi, i64 0
  %broadcast.splat411 = shufflevector <2 x i64> %broadcast.splatinsert410, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert412 = insertelement <2 x i64> poison, i64 %i.pj, i64 0
  %broadcast.splat413 = shufflevector <2 x i64> %broadcast.splatinsert412, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert414 = insertelement <2 x i64> poison, i64 %i.pl, i64 0
  %broadcast.splat415 = shufflevector <2 x i64> %broadcast.splatinsert414, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph406
  %index417 = phi i64 [ 0, %vector.ph406 ], [ %index.next420, %vector.body416 ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index417 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16 ; 2 uses
  %wide.load418 = load <2 x i64>, ptr %i.pm, align 16, !tbaa !25 ; 3 uses
  %wide.load419 = load <2 x i64>, ptr %i.pn, align 16, !tbaa !25 ; 3 uses
  %i.po = and <2 x i64> %wide.load418, %broadcast.splat409
  %i.pp = and <2 x i64> %wide.load419, %broadcast.splat409
  %i.pq = and <2 x i64> %wide.load418, %broadcast.splat411
  %i.pr = and <2 x i64> %wide.load419, %broadcast.splat411
  %i.ps = shl <2 x i64> %i.pq, %broadcast.splat413
  %i.pt = shl <2 x i64> %i.pr, %broadcast.splat413
  %i.pu = or <2 x i64> %i.ps, %i.po
  %i.pv = or <2 x i64> %i.pt, %i.pp
  %i.pw = and <2 x i64> %wide.load418, %broadcast.splat415
  %i.px = and <2 x i64> %wide.load419, %broadcast.splat415
  %i.py = lshr <2 x i64> %i.pw, %broadcast.splat413
  %i.pz = lshr <2 x i64> %i.px, %broadcast.splat413
  %i.qa = or <2 x i64> %i.pu, %i.py
  %i.qb = or <2 x i64> %i.pv, %i.pz
  store <2 x i64> %i.qa, ptr %i.pm, align 16, !tbaa !25
  store <2 x i64> %i.qb, ptr %i.pn, align 16, !tbaa !25
  %index.next420 = add nuw i64 %index417, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next420, %n.vec407
  br i1 %i.qc, label %middle.block421, label %vector.body416, !llvm.loop !141

middle.block421:                                  ; preds = %vector.body416
  %cmp.n422 = icmp eq i64 %n.vec407, %wide.trip.count73.i192
  br i1 %cmp.n422, label %Abc_TtSwapAdjacent.exit196, label %scalar.ph404.preheader

scalar.ph404.preheader:                           ; preds = %.lr.ph64.i191, %middle.block421
  %indvars.iv70.i193.ph = phi i64 [ 0, %.lr.ph64.i191 ], [ %n.vec407, %middle.block421 ]
  br label %scalar.ph404

scalar.ph404:                                     ; preds = %scalar.ph404.preheader, %scalar.ph404
  %indvars.iv70.i193 = phi i64 [ %indvars.iv.next71.i194, %scalar.ph404 ], [ %indvars.iv70.i193.ph, %scalar.ph404.preheader ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv70.i193 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !25 ; 3 uses
  %i.qf = and i64 %i.qe, %i.pg
  %i.qg = and i64 %i.qe, %i.pi
  %i.qh = shl i64 %i.qg, %i.pj
  %i.qi = or i64 %i.qh, %i.qf
  %i.qj = and i64 %i.qe, %i.pl
  %i.qk = lshr i64 %i.qj, %i.pj
  %i.ql = or i64 %i.qi, %i.qk
  store i64 %i.ql, ptr %i.qd, align 8, !tbaa !25
  %indvars.iv.next71.i194 = add nuw nsw i64 %indvars.iv70.i193, 1 ; 2 uses
  %exitcond74.not.i195 = icmp eq i64 %indvars.iv.next71.i194, %wide.trip.count73.i192
  br i1 %exitcond74.not.i195, label %Abc_TtSwapAdjacent.exit196, label %scalar.ph404, !llvm.loop !142

bb.bp:                                            ; preds = %.lr.ph273.split
  %i.qm = icmp eq i32 %i.pa, 5
  br i1 %i.qm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %11 = zext nneg i32 %i.ox to i64
  %.idx65.i189 = shl nuw nsw i64 %11, 3
  %12 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx65.i189
  %i.qn = icmp sgt i32 %i.ox, 0
  br i1 %i.qn, label %.lr.ph.i189, label %Abc_TtSwapAdjacent.exit196

.lr.ph.i189:                                      ; preds = %bb.bq, %.lr.ph.i189
  %.05462.i190 = phi ptr [ %i.qr, %.lr.ph.i189 ], [ %i.g, %bb.bq ] ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.05462.i190, i64 4 ; 2 uses
  %i.qp = load <2 x i32>, ptr %i.qo, align 4, !tbaa !26
  %i.qq = shufflevector <2 x i32> %i.qp, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.qq, ptr %i.qo, align 4, !tbaa !26
  %i.qr = getelementptr inbounds nuw i8, ptr %.05462.i190, i64 16 ; 2 uses
  %i.qs = icmp ult ptr %i.qr, %12
  br i1 %i.qs, label %.lr.ph.i189, label %Abc_TtSwapAdjacent.exit196, !llvm.loop !130

bb.br:                                            ; preds = %bb.bp
  %13 = sext i32 %i.ox to i64
  %.idx.i176 = shl nsw i64 %13, 3                 ; 2 uses
  %14 = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i176
  %i.qt = icmp samesign ult i32 %i.pa, 7
  %i.qu = add nsw i32 %i.pa, -6
  %i.qv = shl nuw i32 1, %i.qu
  %i.qw = select i1 %i.qt, i32 1, i32 %i.qv       ; 7 uses
  %i.qx = icmp sgt i32 %i.ox, 0
  br i1 %i.qx, label %.preheader.lr.ph.i177, label %Abc_TtSwapAdjacent.exit196

.preheader.lr.ph.i177:                            ; preds = %bb.br
  %i.qy = icmp sgt i32 %i.qw, 0
  %i.qz = shl i32 %i.qw, 2                        ; 2 uses
  %i.ra = sext i32 %i.qz to i64                   ; 3 uses
  br i1 %i.qy, label %.preheader.us.preheader.i178, label %Abc_TtSwapAdjacent.exit196

.preheader.us.preheader.i178:                     ; preds = %.preheader.lr.ph.i177
  %i.rb = shl nuw nsw i32 %i.qw, 1
  %i.rc = zext nneg i32 %i.qw to i64              ; 6 uses
  %i.rd = zext nneg i32 %i.rb to i64              ; 2 uses
  %i.re = shl nsw i64 %i.ra, 3                    ; 4 uses
  %i.rf = shl nuw nsw i64 %i.rd, 3                ; 2 uses
  %i.rg = shl nuw nsw i64 %i.rc, 3                ; 2 uses
  %scevgep436 = getelementptr i8, ptr %i.g, i64 %i.rf
  %i.rh = shl nuw nsw i64 %i.rc, 4
  %umax437 = call i64 @llvm.umax.i64(i64 %i.re, i64 1)
  %i.ri = add i64 %.idx.i176, %i.h
  %i.rj = add i64 %i.re, %i.h
  %umax438 = call i64 @llvm.umax.i64(i64 %i.ri, i64 %i.rj)
  %i.rk = sub i64 %umax438, %i.h                  ; 2 uses
  %i.rl = icmp ne i64 %i.rk, %i.re
  %umin439 = zext i1 %i.rl to i64                 ; 2 uses
  %i.rm = or disjoint i64 %i.re, %umin439
  %i.rn = sub i64 %i.rk, %i.rm
  %scevgep440 = getelementptr i8, ptr %i.g, i64 %i.rg
  %min.iters.check442 = icmp ult i32 %i.qw, 4
  %invariant.gep507 = getelementptr i8, ptr %i.g, i64 %i.rh
  %invariant.gep509 = getelementptr i8, ptr %i.g, i64 %i.rg
  %invariant.gep511 = getelementptr i8, ptr %invariant.gep509, i64 %i.rf
  %stride.check447 = icmp slt i32 %i.qz, 0
  %n.vec449 = and i64 %i.rc, 2147483644
  %xtraiter496 = and i64 %i.rc, 1
  %i.ro = icmp eq i32 %i.qw, 1
  %unroll_iter500 = and i64 %i.rc, 2147483646
  %lcmp.mod498.not = icmp eq i64 %xtraiter496, 0
  %lcmp.mod499 = trunc i32 %i.qw to i1
  br label %.preheader.us.i179

.preheader.us.i179:                               ; preds = %._crit_edge.us.i188, %.preheader.us.preheader.i178
  %.061.us.i180 = phi ptr [ %i.sf, %._crit_edge.us.i188 ], [ %i.g, %.preheader.us.preheader.i178 ] ; 3 uses
  %invariant.gep.i181 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i180, i64 %i.rc ; 4 uses
  %invariant.gep80.i182 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i180, i64 %i.rd ; 4 uses
  br i1 %min.iters.check442, label %scalar.ph441.preheader, label %vector.memcheck443

scalar.ph441.preheader:                           ; preds = %vector.memcheck443, %.preheader.us.i179
  br i1 %i.ro, label %scalar.ph441.epil.preheader, label %scalar.ph441

vector.memcheck443:                               ; preds = %.preheader.us.i179
  %i.rp = udiv i64 %i.rn, %umax437
  %i.rq = add i64 %i.rp, %umin439
  %i.rr = mul i64 %i.rq, %i.ra
  %i.rs = shl i64 %i.rr, 3                        ; 2 uses
  %gep508 = getelementptr i8, ptr %invariant.gep507, i64 %i.rs
  %gep512 = getelementptr i8, ptr %invariant.gep511, i64 %i.rs
  %bound0444 = icmp ult ptr %scevgep440, %gep512
  %bound1445 = icmp ult ptr %scevgep436, %gep508
  %found.conflict446 = and i1 %bound0444, %bound1445
  %i.rt = or i1 %found.conflict446, %stride.check447
  br i1 %i.rt, label %scalar.ph441.preheader, label %vector.body450

vector.body450:                                   ; preds = %vector.memcheck443, %vector.body450
  %index451 = phi i64 [ %index.next456, %vector.body450 ], [ 0, %vector.memcheck443 ] ; 3 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %index451 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %wide.load452 = load <2 x i64>, ptr %i.ru, align 8, !tbaa !25, !alias.scope !161, !noalias !162
  %wide.load453 = load <2 x i64>, ptr %i.rv, align 8, !tbaa !25, !alias.scope !161, !noalias !162
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %index451 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16 ; 2 uses
  %wide.load454 = load <2 x i64>, ptr %i.rw, align 8, !tbaa !25, !alias.scope !162
  %wide.load455 = load <2 x i64>, ptr %i.rx, align 8, !tbaa !25, !alias.scope !162
  store <2 x i64> %wide.load454, ptr %i.ru, align 8, !tbaa !25, !alias.scope !161, !noalias !162
  store <2 x i64> %wide.load455, ptr %i.rv, align 8, !tbaa !25, !alias.scope !161, !noalias !162
  store <2 x i64> %wide.load452, ptr %i.rw, align 8, !tbaa !25, !alias.scope !162
  store <2 x i64> %wide.load453, ptr %i.rx, align 8, !tbaa !25, !alias.scope !162
  %index.next456 = add nuw i64 %index451, 4       ; 2 uses
  %i.ry = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.ry, label %._crit_edge.us.i188, label %vector.body450, !llvm.loop !146

scalar.ph441:                                     ; preds = %scalar.ph441.preheader, %scalar.ph441
  %indvars.iv.i183 = phi i64 [ %indvars.iv.next.i186.1, %scalar.ph441 ], [ 0, %scalar.ph441.preheader ] ; 4 uses
  %niter501 = phi i64 [ %niter501.next.1, %scalar.ph441 ], [ 0, %scalar.ph441.preheader ]
  %gep.i184 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %indvars.iv.i183 ; 2 uses
  %i.rz = load i64, ptr %gep.i184, align 8, !tbaa !25
  %gep81.i185 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %indvars.iv.i183 ; 2 uses
  %i.sa = load i64, ptr %gep81.i185, align 8, !tbaa !25
  store i64 %i.sa, ptr %gep.i184, align 8, !tbaa !25
  store i64 %i.rz, ptr %gep81.i185, align 8, !tbaa !25
  %indvars.iv.next.i186 = or disjoint i64 %indvars.iv.i183, 1 ; 2 uses
  %gep.i184.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %indvars.iv.next.i186 ; 2 uses
  %i.sb = load i64, ptr %gep.i184.1, align 8, !tbaa !25
  %gep81.i185.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %indvars.iv.next.i186 ; 2 uses
  %i.sc = load i64, ptr %gep81.i185.1, align 8, !tbaa !25
  store i64 %i.sc, ptr %gep.i184.1, align 8, !tbaa !25
  store i64 %i.sb, ptr %gep81.i185.1, align 8, !tbaa !25
  %indvars.iv.next.i186.1 = add nuw nsw i64 %indvars.iv.i183, 2 ; 2 uses
  %niter501.next.1 = add i64 %niter501, 2         ; 2 uses
  %niter501.ncmp.1 = icmp eq i64 %niter501.next.1, %unroll_iter500
  br i1 %niter501.ncmp.1, label %._crit_edge.us.i188.loopexit.unr-lcssa, label %scalar.ph441, !llvm.loop !147

._crit_edge.us.i188.loopexit.unr-lcssa:           ; preds = %scalar.ph441
  br i1 %lcmp.mod498.not, label %._crit_edge.us.i188, label %scalar.ph441.epil.preheader

scalar.ph441.epil.preheader:                      ; preds = %._crit_edge.us.i188.loopexit.unr-lcssa, %scalar.ph441.preheader
  %indvars.iv.i183.epil.init = phi i64 [ 0, %scalar.ph441.preheader ], [ %indvars.iv.next.i186.1, %._crit_edge.us.i188.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod499)
  %gep.i184.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %indvars.iv.i183.epil.init ; 2 uses
  %i.sd = load i64, ptr %gep.i184.epil, align 8, !tbaa !25
  %gep81.i185.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %indvars.iv.i183.epil.init ; 2 uses
  %i.se = load i64, ptr %gep81.i185.epil, align 8, !tbaa !25
  store i64 %i.se, ptr %gep.i184.epil, align 8, !tbaa !25
  store i64 %i.sd, ptr %gep81.i185.epil, align 8, !tbaa !25
  br label %._crit_edge.us.i188

._crit_edge.us.i188:                              ; preds = %vector.body450, %scalar.ph441.epil.preheader, %._crit_edge.us.i188.loopexit.unr-lcssa
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i180, i64 %i.ra ; 2 uses
  %i.sg = icmp ult ptr %i.sf, %14
  br i1 %i.sg, label %.preheader.us.i179, label %Abc_TtSwapAdjacent.exit196, !llvm.loop !136

Abc_TtSwapAdjacent.exit196:                       ; preds = %._crit_edge.us.i188, %.lr.ph.i189, %scalar.ph404, %middle.block421, %bb.bo, %bb.bq, %bb.br, %.preheader.lr.ph.i177
  %i.sh = sext i32 %i.pa to i64
  %i.si = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.sh ; 2 uses
  %i.sj = load <2 x i32>, ptr %i.si, align 4, !tbaa !26
  %i.sk = shufflevector <2 x i32> %i.sj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.sk, ptr %i.si, align 4, !tbaa !26
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count321
  br i1 %exitcond322.not, label %._crit_edge275, label %.lr.ph273.split, !llvm.loop !148

._crit_edge275:                                   ; preds = %Abc_TtSwapAdjacent.exit196, %.lr.ph273.split.us, %Abc_TtCopy.exit
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %i.sl = load i32, ptr %i.gu, align 8
  %i.sm = lshr i32 %i.sl, 28                      ; 2 uses
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = icmp samesign ult i64 %indvars.iv.next324, %i.sn
  br i1 %i.so, label %bb.v, label %.loopexit, !llvm.loop !149

.loopexit:                                        ; preds = %._crit_edge275, %bb.t, %bb.u
  %i.sp = getelementptr inbounds nuw i8, ptr %.0133278, i64 80 ; 2 uses
  %i.sq = icmp ult ptr %i.sp, %i.w
  br i1 %i.sq, label %bb.t, label %.loopexit243, !llvm.loop !150

.loopexit243:                                     ; preds = %.loopexit, %bb.s, %bb.r
  %i.sr = getelementptr inbounds nuw i8, ptr %.2136282, i64 80 ; 2 uses
  %i.ss = icmp ult ptr %i.sr, %i.w
  br i1 %i.ss, label %bb.r, label %.loopexit244, !llvm.loop !151

.loopexit244:                                     ; preds = %.loopexit243, %bb.q, %._crit_edge267
  br i1 %.not250, label %._crit_edge290, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %.loopexit244
  %i.st = add nuw i32 %0, 1
  %wide.trip.count329 = zext i32 %i.st to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.bt
  %indvars.iv326 = phi i64 [ 2, %.lr.ph289.preheader ], [ %indvars.iv.next327, %bb.bt ] ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv326 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !158 ; 2 uses
  %.not147 = icmp eq ptr %i.sv, null
  br i1 %.not147, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph289
  call void @free(ptr noundef nonnull %i.sv) #24
  store ptr null, ptr %i.su, align 8, !tbaa !158
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph289
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge290, label %.lr.ph289, !llvm.loop !152

._crit_edge290:                                   ; preds = %bb.bt, %.loopexit244
  %.not146 = icmp eq i32 %3, 0
  br i1 %.not146, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge290
  %i.sw = load i32, ptr %i.r, align 8, !tbaa !156
  %i.sx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !51
  %i.sz = getelementptr i8, ptr %i.sy, i64 4
  %.val154 = load i32, ptr %i.sz, align 4, !tbaa !74
  %i.ta = add nsw i32 %.val154, -2                ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !72
  %i.td = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %i.te = load i32, ptr %i.td, align 4, !tbaa !70 ; 2 uses
  %i.tf = sub nsw i32 %i.tc, %i.te                ; 2 uses
  %i.tg = sitofp i32 %i.tf to double
  %i.th = sitofp i32 %i.ta to double
  %i.ti = fdiv double %i.tg, %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !68
  %i.tl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0, i32 noundef %i.sw, i32 noundef %i.ta, i32 noundef %i.tf, double noundef %i.ti, i32 noundef %i.tk, i32 noundef %i.te) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.tm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #24
  %i.tn = icmp slt i32 %i.tm, 0
  br i1 %i.tn, label %Abc_Clock.exit198, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.to = load i64, ptr %5, align 8, !tbaa !154
  %i.tp = mul nsw i64 %i.to, 1000000
  %i.tq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !155
  %i.ts = sdiv i64 %i.tr, 1000
  %i.tt = add nsw i64 %i.ts, %i.tp
  br label %Abc_Clock.exit198

Abc_Clock.exit198:                                ; preds = %bb.bu, %bb.bv
  %.0.i197 = phi i64 [ %i.tt, %bb.bv ], [ -1, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.tu = add i64 %.0.i197, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2)
  %i.tv = sitofp i64 %i.tu to double
  %i.tw = fdiv double %i.tv, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, double noundef %i.tw)
  br label %bb.bw

bb.bw:                                            ; preds = %Abc_Clock.exit198, %._crit_edge290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  ret ptr %i.p
}

declare ptr @Mio_CollectRootsNewDefault2(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

declare ptr @Extra_PermSchedule(i32 noundef) local_unnamed_addr #2

declare i32 @Extra_Factorial(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define void @Sfm_LibPrintGate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp ult i32 %i.d, 268435456
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !73    ; 2 uses
  %i.g = icmp eq i8 %i.f, 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @Sfm_LibPrintGate(ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.h = sext i8 %i.f to i32
  %i.i = add nsw i32 %i.h, 97
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.i) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.c, align 8
  %i.l = lshr i32 %i.k, 28
  %i.m = zext nneg i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Sfm_LibPrintObj(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !73
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !73    ; 2 uses
  %i.i = sext i8 %i.h to i64
  %.idx = mul nsw i64 %i.i, 80
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = lshr i32 %i.l, 28
  %i.n = icmp eq i8 %i.h, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = lshr i32 %i.p, 28
  %i.r = add nsw i32 %i.q, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = phi i32 [ %i.r, %bb.b ], [ 0, %bb.a ]
  %i.t = add nsw i32 %i.s, %i.m                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !67
  %i.w = sitofp i32 %i.v to float
  %i.x = fdiv float %i.w, 1.000000e+03
  %i.y = fpext float %i.x to double
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.t, double noundef %i.y) ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.ab = icmp eq ptr %i.j, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e
end_hunk_1
