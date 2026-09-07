Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/symbolize?download=true
inline.NumInlined: 60
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6googleL22GetSectionHeaderByTypeEitmjP10Elf64_Shdr:bb.a
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
  %i.cm = getelementptr inbounds nuw i8, ptr %.lcssa93, i64 64
  %i.cn = insertelement <8 x ptr> poison, ptr %.lcssa95, i64 0
  %i.co = insertelement <8 x ptr> %i.cn, ptr %i.cm, i64 1
  %i.cp = shufflevector <2 x ptr> %i.cl, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <8 x ptr> %i.co, <8 x ptr> %i.cp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cs = shufflevector <8 x ptr> %i.cq, <8 x ptr> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %.lcssa79, i1 false)
  %i.ct = extractelement <8 x ptr> %i.cs, i64 %first.active.lane
  br label %.thread48

bb.g:                                             ; preds = %.lr.ph
  %i.cu = add nuw nsw i64 %.055, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %.lr.ph.preheader76, %bb.g
  %.055 = phi i64 [ %i.cu, %bb.g ], [ %.055.ph, %.lr.ph.preheader76 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %.055 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !41
  %i.cy = icmp eq i32 %i.cx, %3
  br i1 %i.cy, label %.thread48, label %bb.g

.thread48:                                        ; preds = %.lr.ph, %vector.early.exit
  %.lcssa74 = phi ptr [ %i.ct, %vector.early.exit ], [ %i.cv, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %.lcssa74, i64 64, i1 false), !tbaa.struct !44
  br label %.thread44

._crit_edge:                                      ; preds = %bb.g, %middle.block, %.preheader
  %i.cz = add nuw nsw i64 %i.ak, %.02957          ; 2 uses
  %.not38 = icmp samesign ult i64 %i.cz, %i.a
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
  %.not68.us62.not = icmp ugt i64 %i.d, %i.b      ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not68.us62.not, label %.split22.us, label %.critedge.i.preheader.us

.critedge.i.preheader.us:                         ; preds = %.split.us.preheader, %.loopexit.us
  %i.h = phi i64 [ %i.bf, %.loopexit.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %.052.us63 = phi i32 [ %i.be, %.loopexit.us ], [ 0, %.split.us.preheader ]
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
  %i.aa = udiv i64 %.2.i.us, 24                   ; 2 uses
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %bb.d, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread

bb.d:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us
  %.not.us = icmp samesign ugt i64 %i.aa, %.sroa.speculated.us
  br i1 %.not.us, label %.split26.us, label %.preheader.us

.lr.ph.us:                                        ; preds = %.preheader.us, %bb.f
  %i.ac = phi i64 [ %8, %bb.f ], [ 0, %.preheader.us ]
  %.019.us = phi i32 [ %7, %bb.f ], [ 0, %.preheader.us ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %.not64.us = icmp eq i64 %i.af, 0
  br i1 %.not64.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us
  %i.ag = add i64 %i.af, %4                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !52
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !53
  %.not65.us = icmp ne i16 %i.al, 0
  %.not66.us = icmp ule i64 %i.ag, %0
  %or.cond.not10.us = and i1 %.not66.us, %.not65.us
  %i.am = icmp ult i64 %0, %i.aj
  %or.cond69.us = select i1 %or.cond.not10.us, i1 %i.am, i1 false
  br i1 %or.cond69.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us
  %7 = add nuw i32 %.019.us, 1                    ; 3 uses
  %8 = zext i32 %7 to i64
  %.not67.not.us = icmp ult i32 %7, %9
  br i1 %.not67.not.us, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !45

bb.g:                                             ; preds = %bb.e
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !54
  %i.ao = zext i32 %i.an to i64
  %i.ap = add i64 %.24.val, %i.ao
  br i1 %.not.i71, label %.split28.us, label %.critedge.i72.us

.critedge.i72.us:                                 ; preds = %bb.g, %.critedge27.i79.us
  %.020.i73.us = phi i64 [ %i.ba, %.critedge27.i79.us ], [ 0, %bb.g ] ; 6 uses
  %i.aq = icmp ult i64 %.020.i73.us, %3
  br i1 %i.aq, label %.preheader.i78.us, label %.critedge.thread33.i74.us

.preheader.i78.us:                                ; preds = %.critedge.i72.us
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.020.i73.us
  %i.as = sub nuw nsw i64 %3, %.020.i73.us
  %i.at = add i64 %i.ap, %.020.i73.us
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.i78.us
  %i.au = tail call i64 @pread(i32 noundef %1, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.at) ; 3 uses
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.i, label %.critedge27.i79.us

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call ptr @__errno_location() #21
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %i.ay = icmp eq i32 %i.ax, 4
  br i1 %i.ay, label %bb.h, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, !llvm.loop !0

.critedge27.i79.us:                               ; preds = %bb.h
  %i.az = icmp eq i64 %i.au, 0
  %i.ba = add nuw i64 %i.au, %.020.i73.us         ; 2 uses
  br i1 %i.az, label %.critedge.thread33.i74.us, label %.critedge.i72.us

.critedge.thread33.i74.us:                        ; preds = %.critedge27.i79.us, %.critedge.i72.us
  %.2.i75.us = phi i64 [ %.020.i73.us, %.critedge.i72.us ], [ %i.ba, %.critedge27.i79.us ] ; 2 uses
  %.not26.i76.us = icmp ugt i64 %.2.i75.us, %3
  br i1 %.not26.i76.us, label %.split30.us, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us:      ; preds = %.critedge.thread33.i74.us
  %i.bb = icmp slt i64 %.2.i75.us, 1
  br i1 %i.bb, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %bb.j

bb.j:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  %i.bc = tail call noundef ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %3) #22
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %.loopexit.us.thread

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us: ; preds = %bb.i, %bb.j, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false)
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %bb.j, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us
  %.458.us.ph = phi i1 [ false, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.split22.us

.loopexit.us:                                     ; preds = %bb.f, %.preheader.us
  %i.be = add i32 %.052.us63, %9                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %.not68.us = icmp ugt i64 %i.e, %i.bf
  br i1 %.not68.us, label %.critedge.i.preheader.us, label %.split22.us, !llvm.loop !46

.preheader.us:                                    ; preds = %bb.d
  %.not67.not18.us = icmp ugt i64 %.2.i.us, 23
  %9 = trunc nuw nsw i64 %i.aa to i32             ; 2 uses
  br i1 %.not67.not18.us, label %.lr.ph.us, label %.loopexit.us

.split:                                           ; preds = %bb.a
  br i1 %.not68.us62.not, label %.split22.us, label %bb.k

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  tail call void @abort() #20
  unreachable

.split24.us:                                      ; preds = %.critedge.thread33.i.us
  tail call void @abort() #20
  unreachable

_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread:    ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us, %bb.c
  tail call void @abort() #20
  unreachable

.split26.us:                                      ; preds = %bb.d
  tail call void @abort() #20
  unreachable

.split28.us:                                      ; preds = %bb.g
  tail call void @abort() #20
  unreachable

.split30.us:                                      ; preds = %.critedge.thread33.i74.us
  tail call void @abort() #20
  unreachable

.split22.us:                                      ; preds = %.loopexit.us, %.split.us.preheader, %.loopexit.us.thread, %.split
  %.us-phi = phi i1 [ false, %.split ], [ %.458.us.ph, %.loopexit.us.thread ], [ false, %.split.us.preheader ], [ false, %.loopexit.us ]
  ret i1 %.us-phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN6google8DemangleEPKcPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1>, i1 immarg) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"short", !5, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTS10Elf64_Ehdr", !5, i64 0, !13, i64 16, !13, i64 18, !6, i64 20, !14, i64 24, !14, i64 32, !14, i64 40, !6, i64 48, !13, i64 52, !13, i64 54, !13, i64 56, !13, i64 58, !13, i64 60, !13, i64 62}
!16 = !{!15, !14, i64 40}
!17 = !{!15, !13, i64 60}
!18 = !{!"_ZTS10Elf64_Shdr", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !14, i64 48, !14, i64 56}
!19 = !{!14, !14, i64 0}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !12}
!22 = !{!15, !13, i64 58}
!23 = !{!15, !13, i64 62}
!24 = !{!18, !6, i64 0}
!25 = !{!18, !6, i64 40}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = !{!15, !13, i64 16}
!35 = !{!15, !13, i64 56}
!36 = !{!15, !14, i64 32}
!37 = !{!"_ZTS10Elf64_Phdr", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!38 = !{!37, !14, i64 16}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12, !42, !43}
!41 = !{!18, !6, i64 4}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 8, !19, i64 16, i64 8, !19, i64 24, i64 8, !19, i64 32, i64 8, !19, i64 40, i64 4, !11, i64 44, i64 4, !11, i64 48, i64 8, !19, i64 56, i64 8, !19}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = !{!18, !14, i64 32}
!48 = !{!18, !14, i64 56}
!49 = !{!18, !14, i64 24}
!50 = !{!"_ZTS9Elf64_Sym", !6, i64 0, !5, i64 4, !5, i64 5, !13, i64 6, !14, i64 8, !14, i64 16}
!51 = !{!50, !14, i64 8}
!52 = !{!50, !14, i64 16}
!53 = !{!50, !13, i64 6}
!54 = !{!50, !6, i64 0}
end_hunk_0
