inline.NumInlined: 60
inline.NumDeleted: 17
begin_hunk_0_@_ZN6google12_GLOBAL__N_114FileDescriptorD2Ev:bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL22GetSectionHeaderByTypeEitmjP10Elf64_Shdr(i32 noundef %0, i16 noundef zeroext %1, i64 noundef %2, i32 noundef range(i32 2, 12) %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %5 = alloca [16 x %struct.Elf64_Shdr], align 16 ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %.not3856.not = icmp eq i16 %1, 0
  br i1 %.not3856.not, label %.thread44, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.a
  %i.b = icmp sgt i32 %0, -1
  br i1 %i.b, label %.critedge.i.preheader.preheader, label %bb.b

.critedge.i.preheader.preheader:                  ; preds = %.lr.ph59
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 132
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 196
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 260
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 324
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 388
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 452
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 516
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 580
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 644
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 708
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 772
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 836
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 900
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 964
  br label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %.critedge.i.preheader.preheader, %._crit_edge
  %.02957 = phi i64 [ %i.cm, %._crit_edge ], [ 0, %.critedge.i.preheader.preheader ] ; 3 uses
  %i.s = sub nuw nsw i64 %i.a, %.02957
  %i.t = shl nuw nsw i64 %i.s, 6
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1024) ; 3 uses
  %i.v = shl nuw nsw i64 %.02957, 6
  %i.w = add i64 %i.v, %2
  br label %.critedge.i

bb.b:                                             ; preds = %.lr.ph59
  tail call void @abort() #20
  unreachable

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge27.i
  %.021.i = phi i64 [ %i.ah, %.critedge27.i ], [ 0, %.critedge.i.preheader ] ; 6 uses
  %i.x = icmp ult i64 %.021.i, %i.u
  br i1 %i.x, label %.preheader.i, label %.critedge.thread33.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %.021.i
  %i.z = sub nuw nsw i64 %i.u, %.021.i
  %i.aa = add i64 %i.w, %.021.i
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.i
  %i.ab = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef %i.aa) ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.critedge27.i

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call ptr @__errno_location() #21
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %bb.c, label %.thread44, !llvm.loop !9

.critedge27.i:                                    ; preds = %bb.c
  %i.ag = icmp eq i64 %i.ab, 0
  %i.ah = add nuw i64 %i.ab, %.021.i              ; 2 uses
  br i1 %i.ag, label %.critedge.thread33.i, label %.critedge.i

.critedge.thread33.i:                             ; preds = %.critedge27.i, %.critedge.i
  %.223.i = phi i64 [ %.021.i, %.critedge.i ], [ %i.ah, %.critedge27.i ] ; 5 uses
  %.not26.i = icmp ugt i64 %.223.i, %i.u
  br i1 %.not26.i, label %bb.e, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit

bb.e:                                             ; preds = %.critedge.thread33.i
  tail call void @abort() #20
  unreachable

_ZN6googleL14ReadFromOffsetEiPvmm.exit:           ; preds = %.critedge.thread33.i
  %i.ai = and i64 %.223.i, 63
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.preheader, label %bb.f

bb.f:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit
  tail call void @abort() #20
  unreachable

.preheader:                                       ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit
  %i.ak = lshr exact i64 %.223.i, 6               ; 4 uses
  %.not.not54.not = icmp eq i64 %.223.i, 0
  br i1 %.not.not54.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %.223.i, 1024
  br i1 %min.iters.check, label %.lr.ph.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ak, 288230376151711736      ; 3 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !38
  %i.am = load i32, ptr %i.d, align 4, !tbaa !38
  %i.an = load i32, ptr %i.e, align 4, !tbaa !38
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !38
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !38
  %i.aq = load i32, ptr %i.h, align 4, !tbaa !38
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !38
  %i.as = load i32, ptr %i.j, align 4, !tbaa !38
  %i.at = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %i.au = insertelement <8 x i32> %i.at, i32 %i.am, i64 1
  %i.av = insertelement <8 x i32> %i.au, i32 %i.an, i64 2
  %i.aw = insertelement <8 x i32> %i.av, i32 %i.ao, i64 3
  %i.ax = insertelement <8 x i32> %i.aw, i32 %i.ap, i64 4
  %i.ay = insertelement <8 x i32> %i.ax, i32 %i.aq, i64 5
  %i.az = insertelement <8 x i32> %i.ay, i32 %i.ar, i64 6
  %i.ba = insertelement <8 x i32> %i.az, i32 %i.as, i64 7
  %.fr = freeze <8 x i32> %i.ba
  %i.bb = icmp eq <8 x i32> %.fr, %broadcast.splat ; 2 uses
  %i.bc = bitcast <8 x i1> %i.bb to i8
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.bd = icmp eq i64 %n.vec, 8
  br i1 %i.bd, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.interim
  %i.be = load i32, ptr %i.k, align 4, !tbaa !38
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !38
  %i.bg = load i32, ptr %i.m, align 4, !tbaa !38
  %i.bh = load i32, ptr %i.n, align 4, !tbaa !38
  %i.bi = load i32, ptr %i.o, align 4, !tbaa !38
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !38
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !38
  %i.bl = load i32, ptr %i.r, align 4, !tbaa !38
  %i.bm = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %i.bn = insertelement <8 x i32> %i.bm, i32 %i.bf, i64 1
  %i.bo = insertelement <8 x i32> %i.bn, i32 %i.bg, i64 2
  %i.bp = insertelement <8 x i32> %i.bo, i32 %i.bh, i64 3
  %i.bq = insertelement <8 x i32> %i.bp, i32 %i.bi, i64 4
  %i.br = insertelement <8 x i32> %i.bq, i32 %i.bj, i64 5
  %i.bs = insertelement <8 x i32> %i.br, i32 %i.bk, i64 6
  %i.bt = insertelement <8 x i32> %i.bs, i32 %i.bl, i64 7
  %.fr.1 = freeze <8 x i32> %i.bt
  %i.bu = icmp eq <8 x i32> %.fr.1, %broadcast.splat ; 2 uses
  %i.bv = bitcast <8 x i1> %i.bu to i8
  %.not.1 = icmp eq i8 %i.bv, 0
  br i1 %.not.1, label %middle.block, label %vector.early.exit.split.loop.exit

middle.block:                                     ; preds = %vector.body.1, %vector.body.interim
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader76

.lr.ph.preheader76:                               ; preds = %.lr.ph.preheader, %middle.block
  %.055.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

vector.early.exit.split.loop.exit:                ; preds = %vector.body.1
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 512
  br label %vector.early.exit

vector.early.exit:                                ; preds = %vector.ph, %vector.early.exit.split.loop.exit
  %.lcssa95 = phi ptr [ %i.bw, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa93 = phi ptr [ %i.bx, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa91 = phi ptr [ %i.by, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa89 = phi ptr [ %i.bz, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa87 = phi ptr [ %i.ca, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa85 = phi ptr [ %i.cb, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa83 = phi ptr [ %i.cc, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa81 = phi ptr [ %i.cd, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa79 = phi <8 x i1> [ %i.bu, %vector.early.exit.split.loop.exit ], [ %i.bb, %vector.ph ]
  %6 = insertelement <4 x ptr> poison, ptr %.lcssa87, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %.lcssa85, i64 1
  %8 = insertelement <4 x ptr> %7, ptr %.lcssa83, i64 2
  %9 = insertelement <4 x ptr> %8, ptr %.lcssa81, i64 3
  %10 = getelementptr inbounds nuw i8, <4 x ptr> %9, <4 x i64> <i64 256, i64 320, i64 384, i64 448>
  %11 = insertelement <2 x ptr> poison, ptr %.lcssa91, i64 0
  %12 = insertelement <2 x ptr> %11, ptr %.lcssa89, i64 1
  %13 = getelementptr inbounds nuw i8, <2 x ptr> %12, <2 x i64> <i64 128, i64 192>
  %14 = getelementptr inbounds nuw i8, ptr %.lcssa93, i64 64
  %i.ce = insertelement <8 x ptr> poison, ptr %.lcssa95, i64 0
  %i.cf = insertelement <8 x ptr> %i.ce, ptr %14, i64 1
  %15 = shufflevector <2 x ptr> %13, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <8 x ptr> %i.cf, <8 x ptr> %15, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <4 x ptr> %10, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <8 x ptr> %16, <8 x ptr> %17, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %.lcssa79, i1 false)
  %i.cg = extractelement <8 x ptr> %18, i64 %first.active.lane
  br label %.thread48

bb.g:                                             ; preds = %.lr.ph
  %i.ch = add nuw nsw i64 %.055, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

.lr.ph:                                           ; preds = %.lr.ph.preheader76, %bb.g
  %.055 = phi i64 [ %i.ch, %bb.g ], [ %.055.ph, %.lr.ph.preheader76 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %.055 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !38
  %i.cl = icmp eq i32 %i.ck, %3
  br i1 %i.cl, label %.thread48, label %bb.g

.thread48:                                        ; preds = %.lr.ph, %vector.early.exit
  %.lcssa74 = phi ptr [ %i.cg, %vector.early.exit ], [ %i.ci, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %.lcssa74, i64 64, i1 false), !tbaa.struct !42
  br label %.thread44

._crit_edge:                                      ; preds = %bb.g, %middle.block, %.preheader
  %i.cm = add nuw nsw i64 %i.ak, %.02957          ; 2 uses
  %.not38 = icmp samesign ult i64 %i.cm, %i.a
  br i1 %.not38, label %.critedge.i.preheader, label %.thread44

.thread44:                                        ; preds = %._crit_edge, %bb.d, %bb.a, %.thread48
  %.3 = phi i1 [ true, %.thread48 ], [ false, %bb.a ], [ false, %bb.d ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.3
}

; Function Attrs: mustprogress nofree noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL10FindSymbolEmiPcmmPK10Elf64_ShdrS3_(i64 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 %.24.val, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #13 {
bb.a:
  %6 = alloca [32 x %struct.Elf64_Sym], align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = udiv i64 %i.b, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = icmp sgt i32 %1, -1
  %.not.i71 = icmp slt i64 %3, 0
  %.not68.us62.not = icmp ugt i64 %i.d, %i.b      ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not68.us62.not, label %.split22.us, label %.critedge.i.preheader.us

.critedge.i.preheader.us:                         ; preds = %.split.us.preheader, %.loopexit.us
  %i.h = phi i64 [ %i.bc, %.loopexit.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %.051.us63 = phi i32 [ %i.bb, %.loopexit.us ], [ 0, %.split.us.preheader ]
  %i.i = load i64, ptr %i.f, align 8, !tbaa !45
  %i.j = load i64, ptr %i.c, align 8, !tbaa !44
  %i.k = mul i64 %i.j, %i.h
  %i.l = add i64 %i.k, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.m = sub nuw i64 %i.e, %i.h
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  %i.n = mul nuw nsw i64 %.sroa.speculated.us, 24 ; 3 uses
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.preheader.us, %.critedge27.i.us
  %.021.i.us = phi i64 [ %i.v, %.critedge27.i.us ], [ 0, %.critedge.i.preheader.us ] ; 6 uses
  %i.o = icmp ult i64 %.021.i.us, %i.n
  br i1 %i.o, label %.preheader.i.us, label %.critedge.thread33.i.us

.preheader.i.us:                                  ; preds = %.critedge.i.us
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %.021.i.us
  %i.q = sub nuw nsw i64 %i.n, %.021.i.us
  %i.r = add i64 %i.l, %.021.i.us
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.preheader.i.us
  %i.s = call i64 @pread(i32 noundef %1, ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef %i.r) ; 3 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %.critedge27.i.us

.critedge27.i.us:                                 ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  %i.v = add nuw i64 %i.s, %.021.i.us             ; 2 uses
  br i1 %i.u, label %.critedge.thread33.i.us, label %.critedge.i.us

.critedge.thread33.i.us:                          ; preds = %.critedge27.i.us, %.critedge.i.us
  %.223.i.us = phi i64 [ %.021.i.us, %.critedge.i.us ], [ %i.v, %.critedge27.i.us ] ; 4 uses
  %.not26.i.us = icmp ugt i64 %.223.i.us, %i.n
  br i1 %.not26.i.us, label %.split24.us, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us

_ZN6googleL14ReadFromOffsetEiPvmm.exit.us:        ; preds = %.critedge.thread33.i.us
  %i.w = urem i64 %.223.i.us, 24
  %i.x = udiv i64 %.223.i.us, 24                  ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %bb.c, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread

bb.c:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us
  %.not.us = icmp samesign ugt i64 %i.x, %.sroa.speculated.us
  br i1 %.not.us, label %.split26.us, label %.preheader.us

.lr.ph.us:                                        ; preds = %.preheader.us, %bb.i
  %i.z = phi i64 [ %i.be, %bb.i ], [ 0, %.preheader.us ]
  %.05819.us = phi i32 [ %i.bd, %bb.i ], [ 0, %.preheader.us ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %.not64.us = icmp eq i64 %i.ac, 0
  br i1 %.not64.us, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us
  %i.ad = add i64 %i.ac, %4                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !49
  %.not65.us = icmp ne i16 %i.ai, 0
  %.not66.us = icmp ule i64 %i.ad, %0
  %or.cond.not10.us = and i1 %.not66.us, %.not65.us
  %i.aj = icmp ult i64 %0, %i.ag
  %or.cond69.us = select i1 %or.cond.not10.us, i1 %i.aj, i1 false
  br i1 %or.cond69.us, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !50
  %i.al = zext i32 %i.ak to i64
  %i.am = add i64 %.24.val, %i.al
  br i1 %.not.i71, label %.split28.us, label %.critedge.i72.us

.critedge.i72.us:                                 ; preds = %bb.e, %.critedge27.i79.us
  %.021.i73.us = phi i64 [ %i.au, %.critedge27.i79.us ], [ 0, %bb.e ] ; 6 uses
  %i.an = icmp ult i64 %.021.i73.us, %3
  br i1 %i.an, label %.preheader.i78.us, label %.critedge.thread33.i74.us

.preheader.i78.us:                                ; preds = %.critedge.i72.us
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.021.i73.us
  %i.ap = sub nuw nsw i64 %3, %.021.i73.us
  %i.aq = add i64 %i.am, %.021.i73.us
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.preheader.i78.us
  %i.ar = tail call i64 @pread(i32 noundef %1, ptr noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq) ; 3 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.h, label %.critedge27.i79.us

.critedge27.i79.us:                               ; preds = %bb.f
  %i.at = icmp eq i64 %i.ar, 0
  %i.au = add nuw i64 %i.ar, %.021.i73.us         ; 2 uses
  br i1 %i.at, label %.critedge.thread33.i74.us, label %.critedge.i72.us

.critedge.thread33.i74.us:                        ; preds = %.critedge27.i79.us, %.critedge.i72.us
  %.223.i75.us = phi i64 [ %.021.i73.us, %.critedge.i72.us ], [ %i.au, %.critedge27.i79.us ] ; 2 uses
  %.not26.i76.us = icmp ugt i64 %.223.i75.us, %3
  br i1 %.not26.i76.us, label %.split30.us, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us:      ; preds = %.critedge.thread33.i74.us
  %i.av = icmp slt i64 %.223.i75.us, 1
  br i1 %i.av, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %bb.g

bb.g:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  %i.aw = tail call noundef ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %3) #22
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %.loopexit.us.thread

bb.h:                                             ; preds = %bb.f
  %i.ay = tail call ptr @__errno_location() #21
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = icmp eq i32 %i.az, 4
  br i1 %i.ba, label %bb.f, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, !llvm.loop !9

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us: ; preds = %bb.h, %bb.g, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false)
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %bb.g, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us
  %.4.us.ph = phi i1 [ false, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.split22.us

.loopexit.us:                                     ; preds = %bb.i, %.preheader.us
  %i.bb = add i32 %.051.us63, %i.bi               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %.not68.us = icmp ugt i64 %i.e, %i.bc
  br i1 %.not68.us, label %.critedge.i.preheader.us, label %.split22.us, !llvm.loop !51

bb.i:                                             ; preds = %bb.d, %.lr.ph.us
  %i.bd = add nuw i32 %.05819.us, 1               ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %.not67.not.us = icmp ult i32 %i.bd, %i.bi
  br i1 %.not67.not.us, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !52

bb.j:                                             ; preds = %bb.b
  %i.bf = tail call ptr @__errno_location() #21
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = icmp eq i32 %i.bg, 4
  br i1 %i.bh, label %bb.b, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread, !llvm.loop !9

.preheader.us:                                    ; preds = %bb.c
  %.not67.not18.us = icmp ugt i64 %.223.i.us, 23
end_hunk_0
