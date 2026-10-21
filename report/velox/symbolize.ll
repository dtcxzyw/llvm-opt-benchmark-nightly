Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/symbolize?download=true
inline.NumInlined: 60
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@open
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL22GetSectionHeaderByTypeEitmjP10Elf64_Shdr(i32 noundef %0, i16 noundef zeroext %1, i64 noundef %2, i32 noundef range(i32 2, 12) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #13 {
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
  %.02957 = phi i64 [ %i.cu, %._crit_edge ], [ 0, %.critedge.i.preheader.preheader ] ; 3 uses
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
  %.020.i = phi i64 [ %i.ah, %.critedge27.i ], [ 0, %.critedge.i.preheader ] ; 6 uses
  %i.x = icmp ult i64 %.020.i, %i.u
  br i1 %i.x, label %.preheader.i, label %.critedge.thread33.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %.020.i
  %i.z = sub nuw nsw i64 %i.u, %.020.i
  %i.aa = add i64 %i.w, %.020.i
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.i
  %i.ab = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef %i.aa) ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.critedge27.i

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call ptr @__errno_location() #21
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %bb.c, label %.thread44, !llvm.loop !0

.critedge27.i:                                    ; preds = %bb.c
  %i.ag = icmp eq i64 %i.ab, 0
  %i.ah = add nuw i64 %i.ab, %.020.i              ; 2 uses
  br i1 %i.ag, label %.critedge.thread33.i, label %.critedge.i

.critedge.thread33.i:                             ; preds = %.critedge27.i, %.critedge.i
  %.2.i = phi i64 [ %.020.i, %.critedge.i ], [ %i.ah, %.critedge27.i ] ; 5 uses
  %.not26.i = icmp ugt i64 %.2.i, %i.u
  br i1 %.not26.i, label %bb.e, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit

bb.e:                                             ; preds = %.critedge.thread33.i
  tail call void @abort() #20
  unreachable

_ZN6googleL14ReadFromOffsetEiPvmm.exit:           ; preds = %.critedge.thread33.i
  %i.ai = and i64 %.2.i, 63
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.preheader, label %bb.f

bb.f:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit
  tail call void @abort() #20
  unreachable

.preheader:                                       ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit
  %i.ak = lshr exact i64 %.2.i, 6                 ; 4 uses
  %.not.not54.not = icmp eq i64 %.2.i, 0
  br i1 %.not.not54.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %.2.i, 1024
  br i1 %min.iters.check, label %.lr.ph.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ak, 288230376151711736      ; 3 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !41
  %i.am = load i32, ptr %i.d, align 4, !tbaa !41
  %i.an = load i32, ptr %i.e, align 4, !tbaa !41
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !41
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !41
  %i.aq = load i32, ptr %i.h, align 4, !tbaa !41
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !41
  %i.as = load i32, ptr %i.j, align 4, !tbaa !41
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
  %i.be = load i32, ptr %i.k, align 4, !tbaa !41
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !41
  %i.bg = load i32, ptr %i.m, align 4, !tbaa !41
  %i.bh = load i32, ptr %i.n, align 4, !tbaa !41
  %i.bi = load i32, ptr %i.o, align 4, !tbaa !41
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !41
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !41
  %i.bl = load i32, ptr %i.r, align 4, !tbaa !41
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
  %i.ce = insertelement <4 x ptr> poison, ptr %.lcssa87, i64 0
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %.lcssa85, i64 1
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %.lcssa83, i64 2
  %i.ch = insertelement <4 x ptr> %i.cg, ptr %.lcssa81, i64 3
  %i.ci = getelementptr inbounds nuw i8, <4 x ptr> %i.ch, <4 x i64> <i64 256, i64 320, i64 384, i64 448>
  %i.cj = insertelement <2 x ptr> poison, ptr %.lcssa91, i64 0
  %i.ck = insertelement <2 x ptr> %i.cj, ptr %.lcssa89, i64 1
  %i.cl = getelementptr inbounds nuw i8, <2 x ptr> %i.ck, <2 x i64> <i64 128, i64 192>
  %6 = insertelement <2 x ptr> poison, ptr %.lcssa95, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %.lcssa93, i64 1
  %8 = getelementptr inbounds nuw i8, <2 x ptr> %7, <2 x i64> <i64 0, i64 64>
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <8 x ptr> %9, <8 x ptr> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %.lcssa79, i1 false)
  %i.co = extractelement <8 x ptr> %i.cn, i64 %first.active.lane
  br label %.thread48

bb.g:                                             ; preds = %.lr.ph
  %i.cp = add nuw nsw i64 %.055, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %.lr.ph.preheader76, %bb.g
  %.055 = phi i64 [ %i.cp, %bb.g ], [ %.055.ph, %.lr.ph.preheader76 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %.055 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !41
  %i.ct = icmp eq i32 %i.cs, %3
  br i1 %i.ct, label %.thread48, label %bb.g

.thread48:                                        ; preds = %.lr.ph, %vector.early.exit
  %.lcssa74 = phi ptr [ %i.co, %vector.early.exit ], [ %i.cq, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %.lcssa74, i64 64, i1 false), !tbaa.struct !44
  br label %.thread44

._crit_edge:                                      ; preds = %bb.g, %middle.block, %.preheader
  %i.cu = add nuw nsw i64 %i.ak, %.02957          ; 2 uses
  %.not38 = icmp samesign ult i64 %i.cu, %i.a
  br i1 %.not38, label %.critedge.i.preheader, label %.thread44

.thread44:                                        ; preds = %._crit_edge, %bb.d, %bb.a, %.thread48
  %.335 = phi i1 [ true, %.thread48 ], [ false, %bb.a ], [ false, %bb.d ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.335
}

; Function Attrs: mustprogress nofree noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL10FindSymbolEmiPcmmPK10Elf64_ShdrS3_(i64 noundef %0, i32 noundef %1, ptr nofree noundef %2, i64 noundef %3, i64 noundef %4, i64 %.24.val, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #13 {
bb.a:
  %6 = alloca [32 x %struct.Elf64_Sym], align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = udiv i64 %i.b, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = icmp sgt i32 %1, -1
  %.not.i71 = icmp slt i64 %3, 0
  %.not68.us60.not = icmp ugt i64 %i.d, %i.b      ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not68.us60.not, label %.split22.us, label %.critedge.i.preheader.us

.critedge.i.preheader.us:                         ; preds = %.split.us.preheader, %.loopexit.us
  %i.h = phi i64 [ %i.bf, %.loopexit.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %.052.us61 = phi i32 [ %i.be, %.loopexit.us ], [ 0, %.split.us.preheader ]
  %i.i = load i64, ptr %i.f, align 8, !tbaa !49
  %i.j = load i64, ptr %i.c, align 8, !tbaa !48
  %i.k = mul i64 %i.j, %i.h
  %i.l = add i64 %i.k, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.m = sub nuw i64 %i.e, %i.h
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  %i.n = mul nuw nsw i64 %.sroa.speculated.us, 24 ; 3 uses
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.preheader.us, %.critedge27.i.us
  %.020.i.us = phi i64 [ %i.y, %.critedge27.i.us ], [ 0, %.critedge.i.preheader.us ] ; 6 uses
  %i.o = icmp ult i64 %.020.i.us, %i.n
  br i1 %i.o, label %.preheader.i.us, label %.critedge.thread33.i.us

.preheader.i.us:                                  ; preds = %.critedge.i.us
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %.020.i.us
  %i.q = sub nuw nsw i64 %i.n, %.020.i.us
  %i.r = add i64 %i.l, %.020.i.us
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i.us
  %i.s = call i64 @pread(i32 noundef %1, ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef %i.r) ; 3 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %.critedge27.i.us

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @__errno_location() #21
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.b, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread, !llvm.loop !0

.critedge27.i.us:                                 ; preds = %bb.b
  %i.x = icmp eq i64 %i.s, 0
  %i.y = add nuw i64 %i.s, %.020.i.us             ; 2 uses
  br i1 %i.x, label %.critedge.thread33.i.us, label %.critedge.i.us

.critedge.thread33.i.us:                          ; preds = %.critedge27.i.us, %.critedge.i.us
  %.2.i.us = phi i64 [ %.020.i.us, %.critedge.i.us ], [ %i.y, %.critedge27.i.us ] ; 4 uses
  %.not26.i.us = icmp ugt i64 %.2.i.us, %i.n
  br i1 %.not26.i.us, label %.split24.us, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us

_ZN6googleL14ReadFromOffsetEiPvmm.exit.us:        ; preds = %.critedge.thread33.i.us
  %i.z = urem i64 %.2.i.us, 24
  %i.aa = udiv i64 %.2.i.us, 24                   ; 3 uses
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %bb.d, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread

bb.d:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us
  %.not.us = icmp samesign ugt i64 %i.aa, %.sroa.speculated.us
  br i1 %.not.us, label %.split26.us, label %.preheader.us

.lr.ph.us:                                        ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader.us ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %indvars.iv ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !51 ; 2 uses
  %.not64.us = icmp eq i64 %i.ae, 0
  br i1 %.not64.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us
  %i.af = add i64 %i.ae, %4                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !53
  %.not65.us = icmp ne i16 %i.ak, 0
  %.not66.us = icmp ule i64 %i.af, %0
  %or.cond.not10.us = and i1 %.not66.us, %.not65.us
  %i.al = icmp ult i64 %0, %i.ai
  %or.cond69.us = select i1 %or.cond.not10.us, i1 %i.al, i1 false
  br i1 %or.cond69.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not67.not.us = icmp samesign ugt i64 %i.aa, %indvars.iv.next
  br i1 %.not67.not.us, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !45

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !54
  %i.an = zext i32 %i.am to i64
  %i.ao = add i64 %.24.val, %i.an
  br i1 %.not.i71, label %.split28.us, label %.critedge.i72.us

.critedge.i72.us:                                 ; preds = %bb.g, %.critedge27.i79.us
  %.020.i73.us = phi i64 [ %i.az, %.critedge27.i79.us ], [ 0, %bb.g ] ; 6 uses
  %i.ap = icmp ult i64 %.020.i73.us, %3
  br i1 %i.ap, label %.preheader.i78.us, label %.critedge.thread33.i74.us

.preheader.i78.us:                                ; preds = %.critedge.i72.us
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i73.us
  %i.ar = sub nuw nsw i64 %3, %.020.i73.us
  %i.as = add i64 %i.ao, %.020.i73.us
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.i78.us
  %i.at = tail call i64 @pread(i32 noundef %1, ptr noundef %i.aq, i64 noundef %i.ar, i64 noundef %i.as) ; 3 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.i, label %.critedge27.i79.us

bb.i:                                             ; preds = %bb.h
  %i.av = tail call ptr @__errno_location() #21
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !11
  %i.ax = icmp eq i32 %i.aw, 4
  br i1 %i.ax, label %bb.h, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, !llvm.loop !0

.critedge27.i79.us:                               ; preds = %bb.h
  %i.ay = icmp eq i64 %i.at, 0
  %i.az = add nuw i64 %i.at, %.020.i73.us         ; 2 uses
  br i1 %i.ay, label %.critedge.thread33.i74.us, label %.critedge.i72.us

.critedge.thread33.i74.us:                        ; preds = %.critedge27.i79.us, %.critedge.i72.us
  %.2.i75.us = phi i64 [ %.020.i73.us, %.critedge.i72.us ], [ %i.az, %.critedge27.i79.us ] ; 2 uses
  %.not26.i76.us = icmp ugt i64 %.2.i75.us, %3
  br i1 %.not26.i76.us, label %.split30.us, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us:      ; preds = %.critedge.thread33.i74.us
  %i.ba = icmp slt i64 %.2.i75.us, 1
  br i1 %i.ba, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %bb.j

bb.j:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  %i.bb = tail call noundef ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %3) #22
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %.loopexit.us.thread

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us: ; preds = %bb.i, %bb.j, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false)
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, %bb.j
  %.458.us.ph = phi i1 [ true, %bb.j ], [ false, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.split22.us

.loopexit.us:                                     ; preds = %bb.f, %.preheader.us
  %i.bd = trunc nuw nsw i64 %i.aa to i32
  %i.be = add i32 %.052.us61, %i.bd               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %.not68.us = icmp ugt i64 %i.e, %i.bf
  br i1 %.not68.us, label %.critedge.i.preheader.us, label %.split22.us, !llvm.loop !46

.preheader.us:                                    ; preds = %bb.d
  %.not67.not18.us = icmp ugt i64 %.2.i.us, 23
  br i1 %.not67.not18.us, label %.lr.ph.us, label %.loopexit.us
end_hunk_0
