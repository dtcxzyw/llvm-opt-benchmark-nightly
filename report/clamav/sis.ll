Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/sis?download=true
inline.NumInlined: 38
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cli_scansis:bb.a
  %.4.lcssa.i = phi i32 [ %.3382.i, %bb.gp ], [ %.4.lcssa.ph.i, %.critedge.loopexit.i ]
  store i32 %i.akb, ptr %i.pt, align 4, !tbaa !27
  br label %getd.exit.thread.i

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %real_scansis9x.exit

getd.exit.thread.i:                               ; preds = %.critedge.i, %bb.go, %getd.exit.i, %fmap_readn.exit.i.i, %bb.gm, %bb.gl, %bb.gk, %bb.gh
  %.9.ph.i = phi i32 [ %.4.lcssa.i, %.critedge.i ], [ %.3382.i, %bb.gh ], [ %.3382.i, %getd.exit.i ], [ %.3382.i, %bb.go ], [ %.3382.i, %fmap_readn.exit.i.i ], [ %.3382.i, %bb.gm ], [ %.3382.i, %bb.gk ], [ %.3382.i, %bb.gl ]
  %i.akc = load i32, ptr %i.pt, align 4, !tbaa !27
  %i.akd = add i32 %i.akc, -1                     ; 2 uses
  store i32 %i.akd, ptr %i.pt, align 4, !tbaa !27
  %i.ake = zext i32 %i.akd to i64
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.ake
  %i.akg = load i64, ptr %i.akf, align 8, !tbaa !21
  store i64 %i.akg, ptr %i.pq, align 8, !tbaa !24
  store i32 0, ptr %i.pr, align 8, !tbaa !25
  store i32 0, ptr %i.ps, align 4, !tbaa !26
  %i.akh = call fastcc i32 @getfield(ptr noundef %1, ptr noundef %i.a)
  %i.aki = icmp ne i32 %i.akh, 0
  %i.akj = load i32, ptr %i.a, align 4
  %i.akk = icmp ne i32 %i.akj, 30
  %or.cond4.i = select i1 %i.aki, i1 true, i1 %i.akk
  br i1 %or.cond4.i, label %real_scansis9x.exit, label %bb.gh

real_scansis9x.exit:                              ; preds = %bb.gb, %getd.exit.thread.i, %bb.fz, %.loopexit343.thread.i, %.preheader.i31, %bb.jd
  %.6195.i = phi i32 [ 0, %.loopexit343.thread.i ], [ 0, %bb.fz ], [ %i.aje, %bb.jd ], [ 0, %.preheader.i31 ], [ 0, %getd.exit.thread.i ], [ 0, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.jf

bb.je:                                            ; preds = %bb.fy
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #9
  br label %bb.jf

bb.jf:                                            ; preds = %real_scansis9x.exit, %bb.je, %real_scansis.exit
  %.0 = phi i32 [ %.4624.i, %real_scansis.exit ], [ %.6195.i, %real_scansis9x.exit ], [ 26, %bb.je ]
  %i.akl = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 48
  %i.akn = load i32, ptr %i.akm, align 8, !tbaa !68
  %.not23 = icmp eq i32 %i.akn, 0
  br i1 %.not23, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.ako = call i32 @cli_rmdirs(ptr noundef nonnull %i.l) #9 ; 0 uses
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  call void @free(ptr noundef %i.l) #9
  br label %bb.ji

bb.ji:                                            ; preds = %bb.a, %bb.jh, %fmap_readn.exit.thread, %bb.c
  %.018 = phi i32 [ 18, %bb.c ], [ 12, %fmap_readn.exit.thread ], [ %.0, %bb.jh ], [ 18, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i32 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_gentemp_with_prefix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -1, 2147483648) i64 @fmap_readn(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = icmp ne i64 %2, %i.b
  %i.d = icmp ne i64 %3, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, %i.b
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %i.b, %2
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.f) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call ptr %i.h(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %spec.select, i32 noundef 0) #9, !inline_history !80 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.i, i64 %spec.select, i1 false)
  %i.j = icmp samesign ult i64 %spec.select, 2147483648
  %i.k = select i1 %i.j, i64 %spec.select, i64 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.020 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.d ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.020
}

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @spamsisnames(ptr noundef %0, i64 noundef range(i64 0, 38653919236) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.tr = zext i16 %2 to i64                       ; 2 uses
  %i.a = shl nuw nsw i64 %.tr, 3                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = tail call ptr %i.c(ptr noundef %0, i64 noundef range(i64 0, 38653919236) %1, i64 noundef range(i64 0, 524281) %i.a, i32 noundef 1) #9, !inline_history !81 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.198) #9
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.tr
  %.not33 = icmp eq i16 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.trip.count = zext i16 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %getsistring.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %getsistring.exit.thread ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.h = load i32, ptr %i.g, align 1, !tbaa !18
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 1, !tbaa !18   ; 4 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %getsistring.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.j, i32 400) ; 3 uses
  %i.k = add nuw nsw i32 %spec.store.select.i, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call ptr @cli_max_malloc(i64 noundef %i.l) #9 ; 34 uses
  %.not23.i = icmp eq ptr %i.m, null
  br i1 %.not23.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.151) #9
  br label %getsistring.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.n = zext i32 %i.h to i64                     ; 3 uses
  %i.o = load i64, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.o, %i.n
  br i1 %or.cond.not.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %i.q = sub nuw i64 %i.o, %i.n
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.p, i64 %i.q) ; 3 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.s = tail call ptr %i.r(ptr noundef nonnull %0, i64 noundef %i.n, i64 noundef %spec.select.i.i, i32 noundef 0) #9, !inline_history !82 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.critedge.i, label %fmap_readn.exit.i

fmap_readn.exit.i:                                ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.s, i64 %spec.select.i.i, i1 false)
  %i.t = trunc nuw nsw i64 %spec.select.i.i to i32
  %i.u = icmp eq i32 %spec.store.select.i, %i.t
  br i1 %i.u, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %fmap_readn.exit.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 2)
  %i.v = add nsw i64 %umax, -1
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw nsw i64 %i.w, 1                  ; 4 uses
  %min.iters.check = icmp ult i32 %i.j, 17
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i32 %i.j, 33
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.x, 15                         ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 16, i64 %i.y        ; 2 uses
  %n.vec = sub nsw i64 %i.x, %i.aa                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = shl nuw i64 %index, 1                   ; 16 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 18
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 22
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 30
  %i.bh = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.bi = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.bj = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.bk = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.bl = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.bm = load i8, ptr %i.am, align 1, !tbaa !18
  %i.bn = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.bo = load i8, ptr %i.aq, align 1, !tbaa !18
  %i.bp = load i8, ptr %i.as, align 1, !tbaa !18
  %i.bq = load i8, ptr %i.au, align 1, !tbaa !18
  %i.br = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.bs = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.bt = load i8, ptr %i.ba, align 1, !tbaa !18
  %i.bu = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.bv = load i8, ptr %i.be, align 1, !tbaa !18
  %i.bw = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.bx = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 1
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 2
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 3
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 4
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 5
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 6
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 7
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bp, i64 8
  %i.cg = insertelement <16 x i8> %i.cf, i8 %i.bq, i64 9
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 10
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 11
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 12
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 13
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 14
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 %index
  store <16 x i8> %i.cm, ptr %i.cn, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !83

vec.epilog.iter.check:                            ; preds = %vector.body
  %4 = shl i64 %n.vec, 1
  %min.epilog.iters.check = icmp samesign ult i64 %i.aa, 9
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !30

.preheader.i.preheader.loopexit:                  ; preds = %vec.epilog.vector.body
  %5 = shl i64 %n.vec2, 1
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.loopexit, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %4, %vec.epilog.iter.check ], [ %5, %.preheader.i.preheader.loopexit ]
  br label %.preheader.i

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cp = and i64 %i.x, 7                         ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = select i1 %i.cq, i64 8, i64 %i.cp
  %n.vec2 = sub nsw i64 %i.x, %i.cr               ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = shl nuw i64 %index3, 1                  ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.m, i64 %i.cs
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  %i.cw = getelementptr i8, ptr %i.m, i64 %i.cs
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  %i.cy = getelementptr i8, ptr %i.m, i64 %i.cs
  %i.cz = getelementptr i8, ptr %i.cy, i64 6
  %i.da = getelementptr i8, ptr %i.m, i64 %i.cs
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = getelementptr i8, ptr %i.m, i64 %i.cs
  %i.dd = getelementptr i8, ptr %i.dc, i64 10
  %i.de = getelementptr i8, ptr %i.m, i64 %i.cs
  %i.df = getelementptr i8, ptr %i.de, i64 12
  %i.dg = getelementptr i8, ptr %i.m, i64 %i.cs
  %i.dh = getelementptr i8, ptr %i.dg, i64 14
  %i.di = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.dj = load i8, ptr %i.cv, align 1, !tbaa !18
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !18
  %i.dl = load i8, ptr %i.cz, align 1, !tbaa !18
  %i.dm = load i8, ptr %i.db, align 1, !tbaa !18
  %i.dn = load i8, ptr %i.dd, align 1, !tbaa !18
  %i.do = load i8, ptr %i.df, align 1, !tbaa !18
  %i.dp = load i8, ptr %i.dh, align 1, !tbaa !18
  %i.dq = insertelement <8 x i8> poison, i8 %i.di, i64 0
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 1
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 2
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 3
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 4
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 5
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 6
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 %index3
  store <8 x i8> %i.dx, ptr %i.dy, align 1, !tbaa !18
  %index.next4 = add nuw i64 %index3, 8           ; 2 uses
  %i.dz = icmp eq i64 %index.next4, %n.vec2
  br i1 %i.dz, label %.preheader.i.preheader.loopexit, label %vec.epilog.vector.body, !llvm.loop !84

.critedge.i:                                      ; preds = %fmap_readn.exit.i, %bb.h, %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.200) #9
  tail call void @free(ptr noundef nonnull %i.m) #9
  br label %getsistring.exit.thread

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = lshr exact i64 %indvars.iv.i, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ec
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next.i, %i.p
  br i1 %i.ee, label %.preheader.i, label %bb.i, !llvm.loop !85

bb.i:                                             ; preds = %.preheader.i
  %i.ef = lshr exact i64 %indvars.iv.next.i, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ef
  store i8 0, ptr %i.eg, align 1, !tbaa !18
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !19
  %i.ej = load i32, ptr %i.g, align 1, !tbaa !18
  %i.ek = load i32, ptr %i.i, align 1, !tbaa !18
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.199, ptr noundef nonnull %i.m, ptr noundef %i.ei, i32 noundef %i.ej, i32 noundef %i.ek) #9
  tail call void @free(ptr noundef nonnull %i.m) #9
  br label %getsistring.exit.thread

getsistring.exit.thread:                          ; preds = %bb.d, %bb.f, %.critedge.i, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %getsistring.exit.thread, %bb.c
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !87
  tail call void %i.em(ptr noundef %0, i64 noundef range(i64 0, 38653919236) %1, i64 noundef range(i64 0, 524281) %i.a) #9, !inline_history !86
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getsistring(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 400) ; 3 uses
  %i.a = add nuw nsw i32 %spec.store.select, 1
  %i.b = zext nneg i32 %i.a to i64
  %i.c = tail call ptr @cli_max_malloc(i64 noundef %i.b) #9 ; 33 uses
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.151) #9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = zext i32 %1 to i64                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %or.cond.not = icmp ugt i64 %i.f, %i.d
  br i1 %or.cond.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i32 %spec.store.select to i64  ; 3 uses
  %i.h = sub nuw i64 %i.f, %i.d
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.g, i64 %i.h) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = tail call ptr %i.j(ptr noundef nonnull %0, i64 noundef %i.d, i64 noundef %spec.select.i, i32 noundef 0) #9, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.critedge, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %i.k, i64 %spec.select.i, i1 false)
  %i.l = trunc nuw nsw i64 %spec.select.i to i32
  %i.m = icmp eq i32 %spec.store.select, %i.l
  br i1 %i.m, label %iter.check, label %.critedge

iter.check:                                       ; preds = %fmap_readn.exit
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2)
  %i.n = add nsw i64 %umax, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = add nuw nsw i64 %i.o, 1                  ; 4 uses
  %min.iters.check = icmp ult i32 %2, 17
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i32 %2, 33
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 15                         ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 16, i64 %i.q         ; 2 uses
  %n.vec = sub nsw i64 %i.p, %i.s                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = shl nuw i64 %index, 1                    ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 26
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 30
  %i.az = load i8, ptr %i.u, align 1, !tbaa !18
  %i.ba = load i8, ptr %i.w, align 1, !tbaa !18
  %i.bb = load i8, ptr %i.y, align 1, !tbaa !18
  %i.bc = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.bd = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.be = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.bf = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.bg = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.bh = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.bi = load i8, ptr %i.am, align 1, !tbaa !18
  %i.bj = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.bk = load i8, ptr %i.aq, align 1, !tbaa !18
  %i.bl = load i8, ptr %i.as, align 1, !tbaa !18
  %i.bm = load i8, ptr %i.au, align 1, !tbaa !18
  %i.bn = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.bo = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.bp = insertelement <16 x i8> poison, i8 %i.az, i64 0
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 1
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 2
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 3
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 4
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 5
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 6
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 7
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 8
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 9
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 10
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 11
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 12
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 13
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 14
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  store <16 x i8> %i.ce, ptr %i.cf, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !88

vec.epilog.iter.check:                            ; preds = %vector.body
  %3 = shl i64 %n.vec, 1
  %min.epilog.iters.check = icmp samesign ult i64 %i.s, 9
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !30

.preheader.preheader.loopexit:                    ; preds = %vec.epilog.vector.body
  %4 = shl i64 %n.vec33, 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.loopexit, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %3, %vec.epilog.iter.check ], [ %4, %.preheader.preheader.loopexit ]
  br label %.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ch = and i64 %i.p, 7                         ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec33 = sub nsw i64 %i.p, %i.cj              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ck = shl nuw i64 %index34, 1                 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 2
  %i.co = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.cr = getelementptr i8, ptr %i.cq, i64 6
  %i.cs = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.cv = getelementptr i8, ptr %i.cu, i64 10
  %i.cw = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.cx = getelementptr i8, ptr %i.cw, i64 12
  %i.cy = getelementptr i8, ptr %i.c, i64 %i.ck
  %i.cz = getelementptr i8, ptr %i.cy, i64 14
  %i.da = load i8, ptr %i.cl, align 1, !tbaa !18
  %i.db = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.dc = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.dd = load i8, ptr %i.cr, align 1, !tbaa !18
  %i.de = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.df = load i8, ptr %i.cv, align 1, !tbaa !18
  %i.dg = load i8, ptr %i.cx, align 1, !tbaa !18
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !18
  %i.di = insertelement <8 x i8> poison, i8 %i.da, i64 0
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 1
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 2
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 3
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.de, i64 4
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.df, i64 5
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 6
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dh, i64 7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %index34
  store <8 x i8> %i.dp, ptr %i.dq, align 1, !tbaa !18
  %index.next35 = add nuw i64 %index34, 8         ; 2 uses
  %i.dr = icmp eq i64 %index.next35, %n.vec33
  br i1 %i.dr, label %.preheader.preheader.loopexit, label %vec.epilog.vector.body, !llvm.loop !89

.critedge:                                        ; preds = %bb.d, %bb.e, %fmap_readn.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.200) #9
  tail call void @free(ptr noundef nonnull %i.c) #9
  br label %bb.g

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !18
  %i.du = lshr exact i64 %indvars.iv, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.du
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.dw, label %.preheader, label %bb.f, !llvm.loop !90

bb.f:                                             ; preds = %.preheader
  %i.dx = lshr exact i64 %indvars.iv.next, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dx
  store i8 0, ptr %i.dy, align 1, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %.critedge, %bb.c
  %.020 = phi ptr [ null, %.critedge ], [ %i.c, %bb.f ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.020
}

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @getfield(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8212 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 3 uses
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = zext nneg i32 %i.b to i64                ; 2 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 1 %i.k, i64 %i.i, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !26   ; 4 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24   ; 4 uses
  %i.r = sub i32 8192, %i.m
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16   ; 3 uses
  %i.v = icmp ne i64 %i.q, %i.u
  %i.w = icmp ne i32 %i.m, 8192
  %or.cond.i.i = and i1 %i.w, %i.v
  br i1 %or.cond.i.i, label %bb.c, label %fmap_readn.exit.i

bb.c:                                             ; preds = %bb.b
  %i.x = icmp ugt i64 %i.q, %i.u
  br i1 %i.x, label %getsize.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = sub nuw i64 %i.u, %i.q
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.s, i64 %i.y) ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = tail call ptr %i.aa(ptr noundef nonnull %i.l, i64 noundef %i.q, i64 noundef %spec.select.i.i, i32 noundef 0) #9, !inline_history !91 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %getsize.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.ab, i64 %spec.select.i.i, i1 false)
  %i.ac = icmp samesign ult i64 %spec.select.i.i, 2147483648
  br i1 %i.ac, label %.fmap_readn.exit_crit_edge.i, label %getsize.exit.thread

.fmap_readn.exit_crit_edge.i:                     ; preds = %bb.e
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !26
  br label %fmap_readn.exit.i

fmap_readn.exit.i:                                ; preds = %.fmap_readn.exit_crit_edge.i, %bb.b
  %i.ad = phi i32 [ %i.m, %bb.b ], [ %.pre.i, %.fmap_readn.exit_crit_edge.i ]
  %.020.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.fmap_readn.exit_crit_edge.i ] ; 2 uses
  %i.ae = trunc nuw nsw i64 %.020.i.i to i32
  %i.af = add i32 %i.ad, %i.ae                    ; 5 uses
  store i32 %i.af, ptr %i.e, align 8, !tbaa !25
  store i32 %i.af, ptr %i.a, align 4, !tbaa !26
  %i.ag = icmp ult i32 %i.af, 4
  br i1 %i.ag, label %getsize.exit.thread, label %bb.f

bb.f:                                             ; preds = %fmap_readn.exit.i
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !24
  %i.ai = add i64 %i.ah, %.020.i.i
  store i64 %i.ai, ptr %i.p, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.aj = phi i32 [ %i.b, %._crit_edge.i ], [ %i.af, %bb.f ]
  %i.ak = phi i32 [ %.pre29.i, %._crit_edge.i ], [ %i.af, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.am = sub i32 %i.ak, %i.aj
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !18
  store i32 %i.ap, ptr %1, align 4, !tbaa !20
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !26
  %i.ar = add i32 %i.aq, -4                       ; 4 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8272 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8300 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !27
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = icmp ult i32 %i.ar, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8208 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  br i1 %i.ax, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ba
  %i.bc = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 1 %i.be, i64 %i.bc, i1 false)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !26  ; 4 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24 ; 4 uses
  %i.bl = sub i32 8192, %i.bg
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16 ; 3 uses
  %i.bp = icmp ne i64 %i.bk, %i.bo
  %i.bq = icmp ne i32 %i.bg, 8192
  %or.cond.i.i.i = and i1 %i.bq, %i.bp
  br i1 %or.cond.i.i.i, label %bb.i, label %fmap_readn.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.br = icmp ugt i64 %i.bk, %i.bo
  br i1 %i.br, label %getsize.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = sub nuw i64 %i.bo, %i.bk
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.bm, i64 %i.bs) ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !17
  %i.bv = tail call ptr %i.bu(ptr noundef nonnull %i.bf, i64 noundef %i.bk, i64 noundef %spec.select.i.i.i, i32 noundef 0) #9, !inline_history !92 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %getsize.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 1 %i.bv, i64 %spec.select.i.i.i, i1 false)
  %i.bw = icmp samesign ult i64 %spec.select.i.i.i, 2147483648
  br i1 %i.bw, label %.fmap_readn.exit_crit_edge.i.i, label %getsize.exit.thread

.fmap_readn.exit_crit_edge.i.i:                   ; preds = %bb.k
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !26
  br label %fmap_readn.exit.i.i

fmap_readn.exit.i.i:                              ; preds = %.fmap_readn.exit_crit_edge.i.i, %bb.h
  %i.bx = phi i32 [ %i.bg, %bb.h ], [ %.pre.i.i, %.fmap_readn.exit_crit_edge.i.i ]
  %.020.i.i.i = phi i64 [ 0, %bb.h ], [ %spec.select.i.i.i, %.fmap_readn.exit_crit_edge.i.i ] ; 2 uses
  %i.by = trunc nuw nsw i64 %.020.i.i.i to i32
  %i.bz = add i32 %i.bx, %i.by                    ; 5 uses
  store i32 %i.bz, ptr %i.ay, align 8, !tbaa !25
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !26
  %i.ca = icmp ult i32 %i.bz, 4
  br i1 %i.ca, label %getsize.exit.thread, label %bb.l

bb.l:                                             ; preds = %fmap_readn.exit.i.i
  %i.cb = load i64, ptr %i.bj, align 8, !tbaa !24
end_hunk_0
