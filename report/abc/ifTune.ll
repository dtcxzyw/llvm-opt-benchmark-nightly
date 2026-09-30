Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifTune?download=true
inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@If_ManDeriveGiaFromCells:bb.a
  %i.fc = icmp eq i32 %spec.select.sink.i126, %i.fb
  br i1 %i.fc, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %.lr.ph122
  %i.fd = icmp samesign ult i64 %indvars.iv140, 16
  br i1 %i.fd, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i = icmp eq ptr %storemerge128, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fe = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge128, i64 noundef 64) #29
  br label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.o
  %i.ff = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.n
  %i.fg = icmp samesign ult i64 %indvars.iv140, 1073741823
  %indvars.iv140.tr = trunc nsw i64 %indvars.iv140 to i32
  %i.fh = shl nsw i32 %indvars.iv140.tr, 1
  %spec.select.i = select i1 %i.fg, i32 %i.fh, i32 2147483647 ; 4 uses
  %i.fi = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv140, %i.fi
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i = icmp eq ptr %storemerge128, null
  %i.fj = zext nneg i32 %spec.select.i to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fl = tail call ptr @realloc(ptr noundef nonnull %storemerge128, i64 noundef %i.fk) #29
  br label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.s
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fk) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.q, %bb.p, %bb.u, %bb.t, %.lr.ph122, %bb.r
  %storemerge129 = phi ptr [ %storemerge128, %.lr.ph122 ], [ %storemerge128, %bb.r ], [ %i.ff, %bb.q ], [ %i.fe, %bb.p ], [ %i.fl, %bb.t ], [ %i.fm, %bb.u ] ; 4 uses
  %spec.select.sink.i125 = phi i32 [ %spec.select.sink.i126, %.lr.ph122 ], [ %spec.select.sink.i126, %bb.r ], [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i, %bb.t ], [ %spec.select.i, %bb.u ] ; 3 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %storemerge129, i64 %indvars.iv140
  store i32 %i.fa, ptr %i.fn, align 4, !tbaa !31
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %.val102 = load ptr, ptr %i.cq, align 8, !tbaa !84
  %i.fo = getelementptr i8, ptr %.val102, i64 8
  %.val102.val = load ptr, ptr %i.fo, align 8, !tbaa !61 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val102.val, i64 %indvars.iv147
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !31
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val102.val, i64 %i.fr ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !31
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next143, %i.fu
  br i1 %i.fv, label %.lr.ph122, label %..critedge4_crit_edge, !llvm.loop !159

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.fw = trunc nsw i64 %indvars.iv.next141 to i32
  store i32 %i.fw, ptr %i.ch, align 4, !tbaa !58
  store i32 %spec.select.sink.i125, ptr %i.cg, align 8
  store ptr %storemerge129, ptr %i.cj, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %bb.m
  %.promoted127158 = phi ptr [ %storemerge129, %..critedge4_crit_edge ], [ %.promoted127, %bb.m ]
  %.promoted124155 = phi i32 [ %spec.select.sink.i125, %..critedge4_crit_edge ], [ %.promoted124, %bb.m ]
  %i.fx = load ptr, ptr %i.aq, align 8, !tbaa !163
  %i.fy = add nsw i32 %.0131, 1
  %i.fz = mul nsw i32 %.0131, %i.au
  %i.ga = getelementptr i8, ptr %i.fx, i64 8
  %.val103 = load ptr, ptr %i.ga, align 8, !tbaa !61
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr [4 x i8], ptr %.val103, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  %i.ge = tail call i32 @If_ManSatDeriveGiaFromBits(ptr noundef nonnull %i.az, ptr noundef nonnull %i.c, ptr noundef %i.gd, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ck)
  %.val89 = load ptr, ptr %i.bo, align 8, !tbaa !59
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %.critedge4
  %i.gf = phi ptr [ %.val89, %.critedge4 ], [ %.val91, %bb.k ]
  %.sink = phi i32 [ %i.ge, %.critedge4 ], [ %i.el, %bb.k ]
  %.promoted127157.ph = phi ptr [ %.promoted127158, %.critedge4 ], [ %.promoted127, %bb.k ]
  %.promoted124154.ph = phi i32 [ %.promoted124155, %.critedge4 ], [ %.promoted124, %bb.k ]
  %.1.ph = phi i32 [ %i.fy, %.critedge4 ], [ %.0131, %bb.k ]
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %indvars.iv147
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 %.sink, ptr %i.gh, align 4, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.i, %bb.l
  %.promoted127157 = phi ptr [ %.promoted127, %bb.l ], [ %.promoted127, %bb.i ], [ %.promoted127157.ph, %.sink.split ] ; 2 uses
  %.promoted124154 = phi i32 [ %.promoted124, %bb.l ], [ %.promoted124, %bb.i ], [ %.promoted124154.ph, %.sink.split ]
  %.1 = phi i32 [ %.0131, %bb.l ], [ %.0131, %bb.i ], [ %.1.ph, %.sink.split ]
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.gi = load i32, ptr %i.av, align 8, !tbaa !64
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next148, %i.gj
  br i1 %i.gk, label %bb.h, label %.critedge2, !llvm.loop !160

.critedge2:                                       ; preds = %bb.h, %bb.v, %.critedge
  %i.gl = phi ptr [ %i.ci, %.critedge ], [ %.promoted127, %bb.h ], [ %.promoted127157, %bb.v ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !62 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %.val134 = load i32, ptr %i.go, align 4, !tbaa !58
  %i.gp = icmp sgt i32 %.val134, 0
  br i1 %i.gp, label %.lr.ph136, label %.critedge6

.lr.ph136:                                        ; preds = %.critedge2, %bb.w
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %bb.w ], [ 0, %.critedge2 ] ; 2 uses
  %i.gq = phi ptr [ %i.hi, %bb.w ], [ %i.gn, %.critedge2 ]
  %.val98 = load ptr, ptr %i.bo, align 8, !tbaa !59 ; 2 uses
  %.not84 = icmp eq ptr %.val98, null
  br i1 %.not84, label %.critedge6, label %bb.w

bb.w:                                             ; preds = %.lr.ph136
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %.val99.val = load ptr, ptr %i.gr, align 8, !tbaa !61
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val99.val, i64 %indvars.iv150
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !31
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [12 x i8], ptr %.val98, i64 %i.gu ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 4            ; 2 uses
  %i.gx = and i64 %i.gw, 536870911
  %i.gy = sub nsw i64 0, %i.gx
  %i.gz = getelementptr inbounds [12 x i8], ptr %i.gv, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !66
  %i.hc = trunc i64 %i.gw to i32
  %i.hd = lshr i32 %i.hc, 29
  %i.he = and i32 %i.hd, 1
  %i.hf = xor i32 %i.he, %i.hb
  %i.hg = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.az, i32 noundef %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !66
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.hi = load ptr, ptr %i.gm, align 8, !tbaa !62 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  %.val = load i32, ptr %i.hj, align 4, !tbaa !58
  %i.hk = sext i32 %.val to i64
  %i.hl = icmp slt i64 %indvars.iv.next151, %i.hk
  br i1 %i.hl, label %.lr.ph136, label %.critedge6, !llvm.loop !161

.critedge6:                                       ; preds = %.lr.ph136, %bb.w, %.critedge2
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.az) #26
  %i.hm = getelementptr i8, ptr %0, i64 16
  %.val105 = load i32, ptr %i.hm, align 8, !tbaa !67
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.az, i32 noundef %.val105) #26
  %.not.i112 = icmp eq ptr %i.gl, null
  br i1 %.not.i112, label %Vec_IntFree.exit, label %bb.x

bb.x:                                             ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.gl) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge6, %bb.x
  tail call void @free(ptr noundef nonnull %i.cg) #26
  %i.hn = load ptr, ptr %i.cn, align 8, !tbaa !61 ; 2 uses
  %.not.i113 = icmp eq ptr %i.hn, null
  br i1 %.not.i113, label %Vec_IntFree.exit114, label %bb.y

bb.y:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.hn) #26
  br label %Vec_IntFree.exit114

Vec_IntFree.exit114:                              ; preds = %Vec_IntFree.exit, %bb.y
  tail call void @free(ptr noundef nonnull %i.ck) #26
  tail call void @free(ptr noundef %i.c) #26
  %i.ho = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.az) #26
  tail call void @Gia_ManStop(ptr noundef nonnull %i.az) #26
  ret ptr %i.ho
}

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #9

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #9

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define void @If_ManConfigPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !30      ; 2 uses
  %i.b = load i32, ptr @If_ManConfigPrint.Count, align 4, !tbaa !31 ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @If_ManConfigPrint.Count, align 4, !tbaa !31
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.b) ; 0 uses
  switch i8 %i.a, label %bb.bg [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %2 = load i16, ptr %i.e, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.f = zext i16 %3 to i64
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i64 noundef %i.f) ; 0 uses
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph, label %.lr.ph119.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.i = icmp samesign ult i32 %1, 4
  br i1 %i.i, label %.lr.ph119.preheader, label %._crit_edge

.lr.ph119.preheader:                              ; preds = %bb.b, %.preheader
  %.1118.ph = phi i32 [ 0, %bb.b ], [ %1, %.preheader ]
  br label %.lr.ph119

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0117 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.j = add nuw nsw i32 %.0117, 97
  %putchar112 = tail call i32 @putchar(i32 %i.j)  ; 0 uses
  %i.k = add nuw nsw i32 %.0117, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !164

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %.lr.ph119
  %.1118 = phi i32 [ %i.l, %.lr.ph119 ], [ %.1118.ph, %.lr.ph119.preheader ]
  %putchar111 = tail call i32 @putchar(i32 48)    ; 0 uses
  %i.l = add nuw i32 %.1118, 1                    ; 2 uses
  %exitcond128.not = icmp eq i32 %i.l, 4
  br i1 %exitcond128.not, label %._crit_edge, label %.lr.ph119, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph119, %.preheader
  %putchar109 = tail call i32 @putchar(i32 125)   ; 0 uses
  %i.m = icmp slt i32 %1, 4
  br i1 %i.m, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %._crit_edge, %.lr.ph122
  %.2120 = phi i32 [ %i.n, %.lr.ph122 ], [ %1, %._crit_edge ]
  %putchar110 = tail call i32 @putchar(i32 32)    ; 0 uses
  %i.n = add i32 %.2120, 1                        ; 2 uses
  %exitcond129.not = icmp eq i32 %i.n, 4
  br i1 %exitcond129.not, label %._crit_edge123, label %.lr.ph122, !llvm.loop !166

._crit_edge123:                                   ; preds = %.lr.ph122, %._crit_edge
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef 0, i32 noundef %1) ; 0 uses
  br label %bb.bh

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i16, ptr %i.p, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.q = zext i16 %5 to i64
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %i.q) ; 0 uses
  %i.s = add nsw i32 %1, 2                        ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.u, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp sgt i32 %i.s, %i.v
  %i.x = add nuw nsw i32 %i.v, 95
  %spec.select = select i1 %i.w, i32 %i.x, i32 63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d
  %.sink = phi i32 [ 49, %bb.d ], [ 48, %bb.c ], [ %spec.select, %bb.e ]
  %putchar107 = tail call i32 @putchar(i32 %.sink) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.z, label %bb.h [
    i8 0, label %bb.g
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = icmp sgt i32 %i.s, %i.aa
  %i.ac = add nuw nsw i32 %i.aa, 95
  %spec.select165 = select i1 %i.ab, i32 %i.ac, i32 63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %.sink148 = phi i32 [ %spec.select165, %bb.h ], [ 49, %bb.f ], [ 48, %bb.g ]
  %putchar106.1 = tail call i32 @putchar(i32 %.sink148) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.ae, label %bb.k [
    i8 0, label %bb.j
    i8 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = icmp sgt i32 %i.s, %i.af
  %i.ah = add nuw nsw i32 %i.af, 95
  %spec.select166 = select i1 %i.ag, i32 %i.ah, i32 63
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.sink149 = phi i32 [ %spec.select166, %bb.k ], [ 49, %bb.i ], [ 48, %bb.j ]
  %putchar106.2 = tail call i32 @putchar(i32 %.sink149) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.aj, label %bb.n [
    i8 0, label %bb.m
    i8 1, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = icmp sgt i32 %i.s, %i.ak
  %i.am = add nuw nsw i32 %i.ak, 95
  %spec.select167 = select i1 %i.al, i32 %i.am, i32 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.m
  %.sink150 = phi i32 [ %spec.select167, %bb.n ], [ 49, %bb.l ], [ 48, %bb.m ]
  %putchar106.3 = tail call i32 @putchar(i32 %.sink150) ; 0 uses
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 10
  %6 = load i16, ptr %i.ao, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.ap = zext i16 %7 to i64
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i64 noundef %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30  ; 3 uses
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  switch i8 %i.as, label %bb.q [
    i8 0, label %bb.t
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.au = icmp sgt i32 %i.s, %i.at
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = add nuw nsw i32 %i.at, 95
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aw = icmp eq i8 %i.as, 9
  %. = select i1 %i.aw, i32 104, i32 63
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %bb.p, %bb.r
  %.sink151 = phi i32 [ 49, %bb.p ], [ %., %bb.s ], [ 48, %bb.o ], [ %i.av, %bb.r ]
  %putchar103 = tail call i32 @putchar(i32 %.sink151) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !30  ; 3 uses
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  switch i8 %i.ay, label %bb.v [
    i8 0, label %bb.u
    i8 1, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.ba = icmp sgt i32 %i.s, %i.az
  br i1 %i.ba, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = icmp eq i8 %i.ay, 9
  %.163 = select i1 %i.bb, i32 104, i32 63
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bc = add nuw nsw i32 %i.az, 95
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.x, %bb.u
  %.sink152 = phi i32 [ %i.bc, %bb.x ], [ 49, %bb.t ], [ %.163, %bb.w ], [ 48, %bb.u ]
  %putchar102.1 = tail call i32 @putchar(i32 %.sink152) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !30  ; 3 uses
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  switch i8 %i.be, label %bb.aa [
    i8 0, label %bb.z
    i8 1, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.bg = icmp sgt i32 %i.s, %i.bf
  br i1 %i.bg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = icmp eq i8 %i.be, 9
  %.164 = select i1 %i.bh, i32 104, i32 63
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bi = add nuw nsw i32 %i.bf, 95
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.y, %bb.ac, %bb.z
  %.sink153 = phi i32 [ %i.bi, %bb.ac ], [ 49, %bb.y ], [ %.164, %bb.ab ], [ 48, %bb.z ]
  %putchar102.2 = tail call i32 @putchar(i32 %.sink153) ; 0 uses
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef 1, i32 noundef %1) ; 0 uses
  br label %bb.bh

bb.ae:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 10
  %8 = load i16, ptr %i.bk, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %i.bl = zext i16 %9 to i64
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.bl) ; 0 uses
  %i.bn = add nsw i32 %1, 2                       ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.bp, label %bb.ag [
    i8 0, label %bb.ah
    i8 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = icmp sgt i32 %i.bn, %i.bq
  %i.bs = add nuw nsw i32 %i.bq, 95
  %spec.select168 = select i1 %i.br, i32 %i.bs, i32 63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %bb.af
  %.sink154 = phi i32 [ 49, %bb.af ], [ 48, %bb.ae ], [ %spec.select168, %bb.ag ]
  %putchar98 = tail call i32 @putchar(i32 %.sink154) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.bu, label %bb.aj [
    i8 0, label %bb.ai
    i8 1, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = icmp sgt i32 %i.bn, %i.bv
  %i.bx = add nuw nsw i32 %i.bv, 95
  %spec.select169 = select i1 %i.bw, i32 %i.bx, i32 63
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ai
  %.sink155 = phi i32 [ %spec.select169, %bb.aj ], [ 49, %bb.ah ], [ 48, %bb.ai ]
  %putchar97.1 = tail call i32 @putchar(i32 %.sink155) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.bz, label %bb.am [
    i8 0, label %bb.al
    i8 1, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = icmp sgt i32 %i.bn, %i.ca
  %i.cc = add nuw nsw i32 %i.ca, 95
  %spec.select170 = select i1 %i.cb, i32 %i.cc, i32 63
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.al
  %.sink156 = phi i32 [ %spec.select170, %bb.am ], [ 49, %bb.ak ], [ 48, %bb.al ]
  %putchar97.2 = tail call i32 @putchar(i32 %.sink156) ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.ce, label %bb.ap [
    i8 0, label %bb.ao
    i8 1, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = icmp sgt i32 %i.bn, %i.cf
  %i.ch = add nuw nsw i32 %i.cf, 95
  %spec.select171 = select i1 %i.cg, i32 %i.ch, i32 63
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.ao
  %.sink157 = phi i32 [ %spec.select171, %bb.ap ], [ 49, %bb.an ], [ 48, %bb.ao ]
  %putchar97.3 = tail call i32 @putchar(i32 %.sink157) ; 0 uses
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i16, ptr %i.cj, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %i.ck = zext i16 %11 to i64
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.ck) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.cn, label %bb.as [
    i8 0, label %bb.at
    i8 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = icmp sgt i32 %i.bn, %i.co
  %i.cq = add nuw nsw i32 %i.co, 95
  %spec.select172 = select i1 %i.cp, i32 %i.cq, i32 63
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ar
  %.sink158 = phi i32 [ 49, %bb.ar ], [ 48, %bb.aq ], [ %spec.select172, %bb.as ]
  %putchar94 = tail call i32 @putchar(i32 %.sink158) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.cs, label %bb.av [
    i8 0, label %bb.au
    i8 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = icmp sgt i32 %i.bn, %i.ct
  %i.cv = add nuw nsw i32 %i.ct, 95
  %spec.select173 = select i1 %i.cu, i32 %i.cv, i32 63
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at, %bb.au
  %.sink159 = phi i32 [ %spec.select173, %bb.av ], [ 49, %bb.at ], [ 48, %bb.au ]
  %putchar93.1 = tail call i32 @putchar(i32 %.sink159) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.cx, label %bb.ay [
    i8 0, label %bb.ax
    i8 1, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = icmp sgt i32 %i.bn, %i.cy
  %i.da = add nuw nsw i32 %i.cy, 95
  %spec.select174 = select i1 %i.cz, i32 %i.da, i32 63
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.ax
  %.sink160 = phi i32 [ %spec.select174, %bb.ay ], [ 49, %bb.aw ], [ 48, %bb.ax ]
  %putchar93.2 = tail call i32 @putchar(i32 %.sink160) ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.dc, label %bb.bb [
    i8 0, label %bb.ba
    i8 1, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.dd = zext i8 %i.dc to i32                    ; 2 uses
  %i.de = icmp sgt i32 %i.bn, %i.dd
  %i.df = add nuw nsw i32 %i.dd, 95
  %spec.select175 = select i1 %i.de, i32 %i.df, i32 63
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.ba
  %.sink161 = phi i32 [ %spec.select175, %bb.bb ], [ 49, %bb.az ], [ 48, %bb.ba ]
  %putchar93.3 = tail call i32 @putchar(i32 %.sink161) ; 0 uses
  %i.dg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40) ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.dj, label %bb.be [
    i8 0, label %bb.bf
    i8 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = icmp sgt i32 %i.bn, %i.dk
  %i.dm = add nuw nsw i32 %i.dk, 95
  %spec.select176 = select i1 %i.dl, i32 %i.dm, i32 63
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc, %bb.bd
  %.sink162 = phi i32 [ 49, %bb.bd ], [ 48, %bb.bc ], [ %spec.select176, %bb.be ]
  %putchar90 = tail call i32 @putchar(i32 %.sink162) ; 0 uses
  %i.dn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef 2, i32 noundef %1) ; 0 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.a
  %i.do = zext i8 %i.a to i32
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %i.do) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ad, %bb.bg, %bb.bf, %._crit_edge123
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @If_ManDeriveGiaFromCells2(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val229 = load i32, ptr %i.h, align 8, !tbaa !64
  %i.i = mul nsw i32 %.val229, 6
  %i.j = sdiv i32 %i.i, 5
  %i.k = add nsw i32 %i.j, 100
  %i.l = tail call ptr @Gia_ManStart(i32 noundef %i.k) #26 ; 18 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.m) #30
  %i.o = add i64 %i.n, 1
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #28 ; 2 uses
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull readonly dereferenceable(1) %i.m) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  store ptr %i.r, ptr %i.l, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82   ; 3 uses
  %.not.i247 = icmp eq ptr %i.t, null
  br i1 %.not.i247, label %Abc_UtilStrsav.exit248, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.u = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #30
  %i.v = add i64 %i.u, 1
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #28 ; 2 uses
  %i.x = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull readonly dereferenceable(1) %i.t) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit248

Abc_UtilStrsav.exit248:                           ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.y = phi ptr [ %i.w, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !82
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #26
  %i.aa = getelementptr i8, ptr %0, i64 32        ; 8 uses
  %.val230 = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %.val230, i64 8
  store i32 0, ptr %i.ab, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val223377 = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.af = icmp sgt i32 %.val223377, 0
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit248, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %Abc_UtilStrsav.exit248 ] ; 2 uses
  %i.ag = phi ptr [ %i.ao, %bb.d ], [ %i.ad, %Abc_UtilStrsav.exit248 ]
  %.val236 = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %.val236, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val237.val = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val237.val, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %.val236, i64 %i.ak
  %i.am = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.l)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.am, ptr %i.an, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val223 = load i32, ptr %i.ap, align 4, !tbaa !58
  %i.aq = sext i32 %.val223 to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %.lr.ph, %bb.d, %Abc_UtilStrsav.exit248
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 10 uses
end_hunk_0
begin_hunk_1_@If_ManDeriveGiaFromCells2:bb.a
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.l) #26
  %i.ba = load i32, ptr %i.h, align 8, !tbaa !64
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph391, label %.critedge2

.lr.ph391:                                        ; preds = %.critedge
  %i.bc = getelementptr i8, ptr %0, i64 264       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  %i.bf = getelementptr i8, ptr %i.l, i64 32      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph391, %bb.fc
  %indvars.iv416 = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next417, %bb.fc ] ; 7 uses
  %.0191390 = phi i32 [ 0, %.lr.ph391 ], [ %.2, %bb.fc ] ; 8 uses
  %.val228 = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.val228, i64 %indvars.iv416 ; 3 uses
  %.not208 = icmp eq ptr %.val228, null
  br i1 %.not208, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val238 = load i64, ptr %i.bj, align 4         ; 4 uses
  %i.bk = and i64 %.val238, 2147483648
  %.not.i249 = icmp eq i64 %i.bk, 0
  %i.bl = and i64 %.val238, 536870911             ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 536870911
  %narrow.i = and i1 %.not.i249, %i.bm
  br i1 %narrow.i, label %bb.g, label %bb.fc

bb.g:                                             ; preds = %bb.f
  %i.bn = trunc i64 %.val238 to i32               ; 2 uses
  %i.bo = and i32 %i.bn, 536870911                ; 2 uses
  %i.bp = lshr i64 %.val238, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = and i32 %i.bq, 536870911
  %i.bs = icmp eq i32 %i.bo, %i.br
  %.not.i250 = icmp ne i32 %i.bo, 536870911
  %or.cond.not.i = and i1 %.not.i250, %i.bs
  br i1 %or.cond.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = sub nsw i64 0, %i.bl
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !66 ; 2 uses
  %i.bx = lshr i32 %i.bn, 29
  %i.by = xor i32 %i.bw, %i.bx
  %i.bz = call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.l) ; 3 uses
  %.val11.i = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = ptrtoint ptr %.val11.i to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 12
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = lshr i32 %i.bw, 1
  %i.cg = sub i32 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.bz, align 4
  %i.ci = and i32 %i.cg, 536870911
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 32
  %i.cl = and i64 %i.ch, -4611686015206162432
  %i.cm = or disjoint i64 %i.ck, %i.cl
  %i.cn = and i32 %i.by, 1                        ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 61
  %i.cq = or disjoint i64 %i.cm, %i.cp
  %i.cr = shl nuw nsw i32 %i.cn, 29
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = or disjoint i64 %i.cq, %i.cs
  %i.cu = or disjoint i64 %i.ct, %i.cj
  store i64 %i.cu, ptr %i.bz, align 4
  %i.cv = load i32, ptr %i.bg, align 8, !tbaa !83
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.bg, align 8, !tbaa !83
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.cx = ptrtoint ptr %.val.i to i64
  %i.cy = sub i64 %i.ca, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 12
  %i.da = trunc i64 %i.cz to i32
  %i.db = shl i32 %i.da, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !66
  br label %bb.fc

bb.i:                                             ; preds = %bb.g
  %.val242 = load ptr, ptr %i.bc, align 8, !tbaa !84 ; 2 uses
  %i.dd = getelementptr i8, ptr %.val242, i64 8
  %.val242.val = load ptr, ptr %i.dd, align 8, !tbaa !61 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val242.val, i64 %indvars.iv416 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %.not363 = icmp eq i32 %i.df, 0
  br i1 %.not363, label %bb.fc, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.at, align 4, !tbaa !58
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !31
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.val242.val, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !31
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph383, label %.critedge4

.lr.ph383:                                        ; preds = %bb.j, %Vec_IntPush.exit
  %.val243424 = phi ptr [ %.val243, %Vec_IntPush.exit ], [ %.val242, %bb.j ] ; 2 uses
  %indvars.iv398 = phi i64 [ %indvars.iv.next399, %Vec_IntPush.exit ], [ 0, %bb.j ] ; 2 uses
  %i.dl = phi ptr [ %i.ep, %Vec_IntPush.exit ], [ %i.di, %bb.j ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv398
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !31
  %.val227 = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [12 x i8], ptr %.val227, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !66
  %i.dt = load i32, ptr %i.at, align 4, !tbaa !58 ; 7 uses
  %i.du = load i32, ptr %i.as, align 8, !tbaa !60
  %i.dv = icmp eq i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.k, label %.lr.ph383.Vec_IntPush.exit_crit_edge

.lr.ph383.Vec_IntPush.exit_crit_edge:             ; preds = %.lr.ph383
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !61
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %.lr.ph383
  %i.dw = icmp slt i32 %i.dt, 16
  br i1 %i.dw, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dx = load ptr, ptr %i.av, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.dx, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dx, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.dz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.ea = icmp samesign ult i32 %i.dt, 1073741823
  %i.eb = shl nuw nsw i32 %i.dt, 1
  %spec.select.i = select i1 %i.ea, i32 %i.eb, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.dt, %spec.select.i
  %.pre422 = load ptr, ptr %i.av, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i = icmp eq ptr %.pre422, null
  %i.ec = zext nneg i32 %spec.select.i to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = call ptr @realloc(ptr noundef nonnull %.pre422, i64 noundef %i.ed) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.ef = call noalias ptr @malloc(i64 noundef %i.ed) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.q, %bb.r, %bb.m, %bb.n
  %storemerge376 = phi ptr [ %i.dz, %bb.n ], [ %i.dy, %bb.m ], [ %i.ee, %bb.q ], [ %i.ef, %bb.r ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.r ]
  store ptr %storemerge376, ptr %i.av, align 8, !tbaa !61
  store i32 %spec.select.sink.i, ptr %i.as, align 8, !tbaa !60
  %.pre423 = load i32, ptr %i.at, align 4, !tbaa !58
  %.val243.pre = load ptr, ptr %i.bc, align 8, !tbaa !84
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph383.Vec_IntPush.exit_crit_edge, %bb.o, %Vec_IntGrow.exit11.sink.split.i
  %.val243 = phi ptr [ %.val243424, %.lr.ph383.Vec_IntPush.exit_crit_edge ], [ %.val243424, %bb.o ], [ %.val243.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.eg = phi i32 [ %i.dt, %.lr.ph383.Vec_IntPush.exit_crit_edge ], [ %i.dt, %bb.o ], [ %.pre423, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.eh = phi ptr [ %.pre, %.lr.ph383.Vec_IntPush.exit_crit_edge ], [ %.pre422, %bb.o ], [ %storemerge376, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ei = add nsw i32 %i.eg, 1
  store i32 %i.ei, ptr %i.at, align 4, !tbaa !58
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej
  store i32 %i.ds, ptr %i.ek, align 4, !tbaa !31
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %i.el = getelementptr i8, ptr %.val243, i64 8
  %.val243.val = load ptr, ptr %i.el, align 8, !tbaa !61 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val243.val, i64 %indvars.iv416
  %i.en = load i32, ptr %i.em, align 4, !tbaa !31
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %.val243.val, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !31
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next399, %i.er
  br i1 %i.es, label %.lr.ph383, label %.critedge4, !llvm.loop !168

.critedge4:                                       ; preds = %Vec_IntPush.exit, %bb.j
  %i.et = load ptr, ptr %i.bd, align 8, !tbaa !176
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %.val246 = load ptr, ptr %i.eu, align 8, !tbaa !178
  %i.ev = sext i32 %.0191390 to i64
  %i.ew = getelementptr inbounds i8, ptr %.val246, i64 %i.ev ; 11 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !30
  switch i8 %i.ex, label %bb.fc [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.cn
  ]

bb.s:                                             ; preds = %.critedge4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 5
  %1 = load i16, ptr %i.ey, align 1
  %2 = call i16 @llvm.bswap.i16(i16 %1)
  %i.ez = zext i16 %2 to i64
  %i.fa = mul nuw i64 %i.ez, 281479271743489
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !37
  %.val222 = load i32, ptr %i.at, align 4, !tbaa !58
  %i.fb = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i32 noundef %.val222, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.as, i32 noundef 1) #26
  %.val226 = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.fc = getelementptr inbounds nuw [12 x i8], ptr %.val226, i64 %indvars.iv416
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !66
  %i.fe = load i32, ptr %i.be, align 4, !tbaa !31
  %i.ff = add nsw i32 %i.fe, %.0191390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.fc

bb.t:                                             ; preds = %.critedge4
  %i.fg = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 18 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 19 uses
  store i32 16, ptr %i.fg, align 8, !tbaa !60
  %i.fi = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 19 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !61
  store i32 0, ptr %i.fh, align 4, !tbaa !58
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.ax
  %i.fk = phi ptr [ %i.fi, %bb.t ], [ %i.hk, %bb.ax ] ; 11 uses
  %i.fl = phi ptr [ %i.fi, %bb.t ], [ %i.hl, %bb.ax ] ; 11 uses
  %i.fm = phi ptr [ %i.fi, %bb.t ], [ %i.hm, %bb.ax ] ; 7 uses
  %i.fn = phi ptr [ %i.fi, %bb.t ], [ %i.hn, %bb.ax ] ; 5 uses
  %indvars.iv408 = phi i64 [ 0, %bb.t ], [ %indvars.iv.next409, %bb.ax ]
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next409
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !30  ; 3 uses
  switch i8 %i.fp, label %bb.an [
    i8 0, label %bb.v
    i8 1, label %bb.ae
  ]

bb.v:                                             ; preds = %bb.u
  %i.fq = load i32, ptr %i.fh, align 4, !tbaa !58 ; 7 uses
  %i.fr = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.w, label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.ft = icmp slt i32 %i.fq, 16
  br i1 %i.ft, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not9.i.i257 = icmp eq ptr %i.fm, null
  br i1 %.not9.i.i257, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fm, i64 noundef 64) #29
  br label %.sink.split.sink.split

bb.z:                                             ; preds = %bb.x
  %i.fv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %.sink.split.sink.split

bb.aa:                                            ; preds = %bb.w
  %i.fw = icmp samesign ult i32 %i.fq, 1073741823
  %i.fx = shl nuw nsw i32 %i.fq, 1
  %spec.select.i252 = select i1 %i.fw, i32 %i.fx, i32 2147483647 ; 4 uses
  %.not.i9.i253 = icmp samesign ult i32 %i.fq, %spec.select.i252
  br i1 %.not.i9.i253, label %bb.ab, label %.sink.split

bb.ab:                                            ; preds = %bb.aa
  %.not9.i10.i254 = icmp eq ptr %i.fm, null
  %i.fy = zext nneg i32 %spec.select.i252 to i64
  %i.fz = shl nuw nsw i64 %i.fy, 2                ; 2 uses
  br i1 %.not9.i10.i254, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = call ptr @realloc(ptr noundef nonnull %i.fm, i64 noundef %i.fz) #29
  br label %.sink.split.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.gb = call noalias ptr @malloc(i64 noundef %i.fz) #28
  br label %.sink.split.sink.split

bb.ae:                                            ; preds = %bb.u
  %i.gc = load i32, ptr %i.fh, align 4, !tbaa !58 ; 7 uses
  %i.gd = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.ge = icmp eq i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.af, label %.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.gf = icmp slt i32 %i.gc, 16
  br i1 %i.gf, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not9.i.i265 = icmp eq ptr %i.fn, null
  br i1 %.not9.i.i265, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gg = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fn, i64 noundef 64) #29
  br label %.sink.split.sink.split

bb.ai:                                            ; preds = %bb.ag
  %i.gh = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %.sink.split.sink.split

bb.aj:                                            ; preds = %bb.af
  %i.gi = icmp samesign ult i32 %i.gc, 1073741823
  %i.gj = shl nuw nsw i32 %i.gc, 1
  %spec.select.i260 = select i1 %i.gi, i32 %i.gj, i32 2147483647 ; 4 uses
  %.not.i9.i261 = icmp samesign ult i32 %i.gc, %spec.select.i260
  br i1 %.not.i9.i261, label %bb.ak, label %.sink.split

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i262 = icmp eq ptr %i.fn, null
  %i.gk = zext nneg i32 %spec.select.i260 to i64
  %i.gl = shl nuw nsw i64 %i.gk, 2                ; 2 uses
  br i1 %.not9.i10.i262, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gm = call ptr @realloc(ptr noundef nonnull %i.fn, i64 noundef %i.gl) #29
  br label %.sink.split.sink.split

bb.am:                                            ; preds = %bb.ak
  %i.gn = call noalias ptr @malloc(i64 noundef %i.gl) #28
  br label %.sink.split.sink.split

bb.an:                                            ; preds = %bb.u
  %i.go = zext i8 %i.fp to i32
  %.val221 = load i32, ptr %i.at, align 4, !tbaa !58
  %i.gp = add nsw i32 %.val221, 2
  %i.gq = icmp sgt i32 %i.gp, %i.go
  br i1 %i.gq, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %.val235 = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.gr = zext i8 %i.fp to i64
  %i.gs = getelementptr [4 x i8], ptr %.val235, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 -8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !31 ; 6 uses
  %i.gv = load i32, ptr %i.fh, align 4, !tbaa !58 ; 7 uses
  %i.gw = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.gx = icmp eq i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.ap, label %.sink.split

bb.ap:                                            ; preds = %bb.ao
  %i.gy = icmp slt i32 %i.gv, 16
  br i1 %i.gy, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.not9.i.i273 = icmp eq ptr %i.fl, null
  br i1 %.not9.i.i273, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gz = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fl, i64 noundef 64) #29
  br label %.sink.split.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.ha = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %.sink.split.sink.split

bb.at:                                            ; preds = %bb.ap
  %i.hb = icmp samesign ult i32 %i.gv, 1073741823
  %i.hc = shl nuw nsw i32 %i.gv, 1
  %spec.select.i268 = select i1 %i.hb, i32 %i.hc, i32 2147483647 ; 4 uses
  %.not.i9.i269 = icmp samesign ult i32 %i.gv, %spec.select.i268
  br i1 %.not.i9.i269, label %bb.au, label %.sink.split

bb.au:                                            ; preds = %bb.at
  %.not9.i10.i270 = icmp eq ptr %i.fl, null
  %i.hd = zext nneg i32 %spec.select.i268 to i64
  %i.he = shl nuw nsw i64 %i.hd, 2                ; 2 uses
  br i1 %.not9.i10.i270, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hf = call ptr @realloc(ptr noundef nonnull %i.fl, i64 noundef %i.he) #29
  br label %.sink.split.sink.split

bb.aw:                                            ; preds = %bb.au
  %i.hg = call noalias ptr @malloc(i64 noundef %i.he) #28
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.as, %bb.ar, %bb.aw, %bb.av, %bb.ai, %bb.ah, %bb.am, %bb.al, %bb.z, %bb.y, %bb.ad, %bb.ac
  %storemerge375.sink = phi ptr [ %i.gn, %bb.am ], [ %i.gb, %bb.ad ], [ %i.fv, %bb.z ], [ %i.fu, %bb.y ], [ %i.ga, %bb.ac ], [ %i.gh, %bb.ai ], [ %i.gg, %bb.ah ], [ %i.gm, %bb.al ], [ %i.ha, %bb.as ], [ %i.gz, %bb.ar ], [ %i.hf, %bb.av ], [ %i.hg, %bb.aw ] ; 4 uses
  %spec.select.sink.i272.sink = phi i32 [ %spec.select.i260, %bb.am ], [ %spec.select.i252, %bb.ad ], [ 16, %bb.z ], [ 16, %bb.y ], [ %spec.select.i252, %bb.ac ], [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i260, %bb.al ], [ 16, %bb.as ], [ 16, %bb.ar ], [ %spec.select.i268, %bb.av ], [ %spec.select.i268, %bb.aw ]
  %.sink.ph = phi i32 [ 1, %bb.am ], [ 0, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.ac ], [ 1, %bb.ai ], [ 1, %bb.ah ], [ 1, %bb.al ], [ %i.gu, %bb.as ], [ %i.gu, %bb.ar ], [ %i.gu, %bb.av ], [ %i.gu, %bb.aw ]
  store ptr %storemerge375.sink, ptr %i.fj, align 8, !tbaa !61
  store i32 %spec.select.sink.i272.sink, ptr %i.fg, align 8, !tbaa !60
  %.pre440 = load i32, ptr %i.fh, align 4, !tbaa !58
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.at, %bb.ao, %bb.aj, %bb.ae, %bb.aa, %bb.v
  %.sink516 = phi i32 [ %i.gv, %bb.ao ], [ %i.gv, %bb.at ], [ %i.fq, %bb.v ], [ %i.fq, %bb.aa ], [ %i.gc, %bb.ae ], [ %i.gc, %bb.aj ], [ %.pre440, %.sink.split.sink.split ] ; 2 uses
  %.sink512 = phi ptr [ %i.fk, %bb.ao ], [ %i.fk, %bb.at ], [ %i.fl, %bb.v ], [ %i.fl, %bb.aa ], [ %i.fm, %bb.ae ], [ %i.fm, %bb.aj ], [ %storemerge375.sink, %.sink.split.sink.split ] ; 3 uses
  %.sink = phi i32 [ %i.gu, %bb.ao ], [ %i.gu, %bb.at ], [ 0, %bb.v ], [ 0, %bb.aa ], [ 1, %bb.ae ], [ 1, %bb.aj ], [ %.sink.ph, %.sink.split.sink.split ]
  %.ph = phi ptr [ %i.fk, %bb.ao ], [ %i.fk, %bb.at ], [ %i.fk, %bb.v ], [ %i.fk, %bb.aa ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.aj ], [ %storemerge375.sink, %.sink.split.sink.split ]
  %.ph508 = phi ptr [ %i.fk, %bb.ao ], [ %i.fk, %bb.at ], [ %i.fl, %bb.v ], [ %i.fl, %bb.aa ], [ %i.fl, %bb.ae ], [ %i.fl, %bb.aj ], [ %storemerge375.sink, %.sink.split.sink.split ]
  %i.hh = add nsw i32 %.sink516, 1
  store i32 %i.hh, ptr %i.fh, align 4, !tbaa !58
  %i.hi = sext i32 %.sink516 to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %.sink512, i64 %i.hi
  store i32 %.sink, ptr %i.hj, align 4, !tbaa !31
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.an
  %i.hk = phi ptr [ %i.fk, %bb.an ], [ %.ph, %.sink.split ]
  %i.hl = phi ptr [ %i.fl, %bb.an ], [ %.ph508, %.sink.split ]
  %i.hm = phi ptr [ %i.fm, %bb.an ], [ %.sink512, %.sink.split ]
  %i.hn = phi ptr [ %i.fn, %bb.an ], [ %.sink512, %.sink.split ]
  %exitcond411.not = icmp eq i64 %indvars.iv.next409, 4
  br i1 %exitcond411.not, label %bb.ay, label %bb.u, !llvm.loop !169

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %3 = load i16, ptr %i.ho, align 1
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  %i.hp = zext i16 %4 to i64
  %i.hq = mul nuw i64 %i.hp, 281479271743489
  store i64 %i.hq, ptr %i.b, align 8, !tbaa !37
  %.val220 = load i32, ptr %i.fh, align 4, !tbaa !58
  %i.hr = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, i32 noundef %.val220, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.fg, i32 noundef 1) #26
  store i32 0, ptr %i.fh, align 4, !tbaa !58
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.cc
  %indvars.iv412 = phi i64 [ 4, %bb.ay ], [ %indvars.iv.next413, %bb.cc ]
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next413
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !30  ; 3 uses
  switch i8 %i.ht, label %bb.bs [
    i8 0, label %bb.ba
    i8 1, label %bb.bj
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hu = load i32, ptr %i.fh, align 4, !tbaa !58 ; 7 uses
  %i.hv = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.hw = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.bb, label %.Vec_IntPush.exit283_crit_edge

.Vec_IntPush.exit283_crit_edge:                   ; preds = %bb.ba
  %.pre444 = load ptr, ptr %i.fj, align 8, !tbaa !61
  br label %.sink.split517

bb.bb:                                            ; preds = %bb.ba
  %i.hx = icmp slt i32 %i.hu, 16
  br i1 %i.hx, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.hy = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i281 = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i281, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hz = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i279

bb.be:                                            ; preds = %bb.bc
  %i.ia = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i279

bb.bf:                                            ; preds = %bb.bb
  %i.ib = icmp samesign ult i32 %i.hu, 1073741823
  %i.ic = shl nuw nsw i32 %i.hu, 1
  %spec.select.i276 = select i1 %i.ib, i32 %i.ic, i32 2147483647 ; 4 uses
  %.not.i9.i277 = icmp samesign ult i32 %i.hu, %spec.select.i276
  %.pre445 = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i277, label %bb.bg, label %.sink.split517

bb.bg:                                            ; preds = %bb.bf
  %.not9.i10.i278 = icmp eq ptr %.pre445, null
  %i.id = zext nneg i32 %spec.select.i276 to i64
  %i.ie = shl nuw nsw i64 %i.id, 2                ; 2 uses
  br i1 %.not9.i10.i278, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.if = call ptr @realloc(ptr noundef nonnull %.pre445, i64 noundef %i.ie) #29
  br label %Vec_IntGrow.exit11.sink.split.i279

bb.bi:                                            ; preds = %bb.bg
  %i.ig = call noalias ptr @malloc(i64 noundef %i.ie) #28
  br label %Vec_IntGrow.exit11.sink.split.i279

Vec_IntGrow.exit11.sink.split.i279:               ; preds = %bb.bh, %bb.bi, %bb.bd, %bb.be
  %storemerge371 = phi ptr [ %i.ia, %bb.be ], [ %i.hz, %bb.bd ], [ %i.if, %bb.bh ], [ %i.ig, %bb.bi ] ; 2 uses
  %spec.select.sink.i280 = phi i32 [ 16, %bb.be ], [ 16, %bb.bd ], [ %spec.select.i276, %bb.bh ], [ %spec.select.i276, %bb.bi ]
  store ptr %storemerge371, ptr %i.fj, align 8, !tbaa !61
  store i32 %spec.select.sink.i280, ptr %i.fg, align 8, !tbaa !60
  %.pre446 = load i32, ptr %i.fh, align 4, !tbaa !58
  br label %.sink.split517

bb.bj:                                            ; preds = %bb.az
  %i.ih = load i32, ptr %i.fh, align 4, !tbaa !58 ; 7 uses
  %i.ii = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.ij = icmp eq i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.bk, label %.Vec_IntPush.exit291_crit_edge

.Vec_IntPush.exit291_crit_edge:                   ; preds = %bb.bj
  %.pre441 = load ptr, ptr %i.fj, align 8, !tbaa !61
  br label %.sink.split517

bb.bk:                                            ; preds = %bb.bj
  %i.ik = icmp slt i32 %i.ih, 16
  br i1 %i.ik, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.il = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i289 = icmp eq ptr %i.il, null
  br i1 %.not9.i.i289, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.im = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.il, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i287

bb.bn:                                            ; preds = %bb.bl
  %i.in = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i287

bb.bo:                                            ; preds = %bb.bk
  %i.io = icmp samesign ult i32 %i.ih, 1073741823
  %i.ip = shl nuw nsw i32 %i.ih, 1
  %spec.select.i284 = select i1 %i.io, i32 %i.ip, i32 2147483647 ; 4 uses
  %.not.i9.i285 = icmp samesign ult i32 %i.ih, %spec.select.i284
  %.pre442 = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i285, label %bb.bp, label %.sink.split517

bb.bp:                                            ; preds = %bb.bo
  %.not9.i10.i286 = icmp eq ptr %.pre442, null
  %i.iq = zext nneg i32 %spec.select.i284 to i64
  %i.ir = shl nuw nsw i64 %i.iq, 2                ; 2 uses
  br i1 %.not9.i10.i286, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.is = call ptr @realloc(ptr noundef nonnull %.pre442, i64 noundef %i.ir) #29
  br label %Vec_IntGrow.exit11.sink.split.i287

bb.br:                                            ; preds = %bb.bp
  %i.it = call noalias ptr @malloc(i64 noundef %i.ir) #28
  br label %Vec_IntGrow.exit11.sink.split.i287

Vec_IntGrow.exit11.sink.split.i287:               ; preds = %bb.bq, %bb.br, %bb.bm, %bb.bn
  %storemerge370 = phi ptr [ %i.in, %bb.bn ], [ %i.im, %bb.bm ], [ %i.is, %bb.bq ], [ %i.it, %bb.br ] ; 2 uses
  %spec.select.sink.i288 = phi i32 [ 16, %bb.bn ], [ 16, %bb.bm ], [ %spec.select.i284, %bb.bq ], [ %spec.select.i284, %bb.br ]
  store ptr %storemerge370, ptr %i.fj, align 8, !tbaa !61
  store i32 %spec.select.sink.i288, ptr %i.fg, align 8, !tbaa !60
  %.pre443 = load i32, ptr %i.fh, align 4, !tbaa !58
  br label %.sink.split517

bb.bs:                                            ; preds = %bb.az
  %i.iu = zext i8 %i.ht to i32
  %.val219 = load i32, ptr %i.at, align 4, !tbaa !58
  %i.iv = add nsw i32 %.val219, 2
  %i.iw = icmp sgt i32 %i.iv, %i.iu
  br i1 %i.iw, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %.val234 = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.ix = zext i8 %i.ht to i64
  %i.iy = getelementptr [4 x i8], ptr %.val234, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 -8
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !31 ; 3 uses
  %i.jb = load i32, ptr %i.fh, align 4, !tbaa !58 ; 7 uses
  %i.jc = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.jd = icmp eq i32 %i.jb, %i.jc
  br i1 %i.jd, label %bb.bu, label %.Vec_IntPush.exit299_crit_edge

.Vec_IntPush.exit299_crit_edge:                   ; preds = %bb.bt
  %.pre447 = load ptr, ptr %i.fj, align 8, !tbaa !61
  br label %.sink.split517

bb.bu:                                            ; preds = %bb.bt
  %i.je = icmp slt i32 %i.jb, 16
  br i1 %i.je, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.jf = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i297 = icmp eq ptr %i.jf, null
  br i1 %.not9.i.i297, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jg = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jf, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i295

bb.bx:                                            ; preds = %bb.bv
  %i.jh = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i295

bb.by:                                            ; preds = %bb.bu
  %i.ji = icmp samesign ult i32 %i.jb, 1073741823
  %i.jj = shl nuw nsw i32 %i.jb, 1
  %spec.select.i292 = select i1 %i.ji, i32 %i.jj, i32 2147483647 ; 4 uses
  %.not.i9.i293 = icmp samesign ult i32 %i.jb, %spec.select.i292
  %.pre448 = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i293, label %bb.bz, label %.sink.split517

bb.bz:                                            ; preds = %bb.by
  %.not9.i10.i294 = icmp eq ptr %.pre448, null
  %i.jk = zext nneg i32 %spec.select.i292 to i64
  %i.jl = shl nuw nsw i64 %i.jk, 2                ; 2 uses
  br i1 %.not9.i10.i294, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jm = call ptr @realloc(ptr noundef nonnull %.pre448, i64 noundef %i.jl) #29
  br label %Vec_IntGrow.exit11.sink.split.i295

bb.cb:                                            ; preds = %bb.bz
  %i.jn = call noalias ptr @malloc(i64 noundef %i.jl) #28
  br label %Vec_IntGrow.exit11.sink.split.i295

Vec_IntGrow.exit11.sink.split.i295:               ; preds = %bb.ca, %bb.cb, %bb.bw, %bb.bx
  %storemerge372 = phi ptr [ %i.jh, %bb.bx ], [ %i.jg, %bb.bw ], [ %i.jm, %bb.ca ], [ %i.jn, %bb.cb ] ; 2 uses
  %spec.select.sink.i296 = phi i32 [ 16, %bb.bx ], [ 16, %bb.bw ], [ %spec.select.i292, %bb.ca ], [ %spec.select.i292, %bb.cb ]
  store ptr %storemerge372, ptr %i.fj, align 8, !tbaa !61
  store i32 %spec.select.sink.i296, ptr %i.fg, align 8, !tbaa !60
  %.pre449 = load i32, ptr %i.fh, align 4, !tbaa !58
  br label %.sink.split517

.sink.split517:                                   ; preds = %Vec_IntGrow.exit11.sink.split.i295, %bb.by, %.Vec_IntPush.exit299_crit_edge, %Vec_IntGrow.exit11.sink.split.i287, %bb.bo, %.Vec_IntPush.exit291_crit_edge, %Vec_IntGrow.exit11.sink.split.i279, %bb.bf, %.Vec_IntPush.exit283_crit_edge
  %.sink524 = phi i32 [ %.pre446, %Vec_IntGrow.exit11.sink.split.i279 ], [ %.pre443, %Vec_IntGrow.exit11.sink.split.i287 ], [ %i.hu, %.Vec_IntPush.exit283_crit_edge ], [ %i.hu, %bb.bf ], [ %i.ih, %.Vec_IntPush.exit291_crit_edge ], [ %i.ih, %bb.bo ], [ %i.jb, %.Vec_IntPush.exit299_crit_edge ], [ %i.jb, %bb.by ], [ %.pre449, %Vec_IntGrow.exit11.sink.split.i295 ] ; 2 uses
  %.sink520 = phi ptr [ %storemerge371, %Vec_IntGrow.exit11.sink.split.i279 ], [ %storemerge370, %Vec_IntGrow.exit11.sink.split.i287 ], [ %.pre444, %.Vec_IntPush.exit283_crit_edge ], [ %.pre445, %bb.bf ], [ %.pre441, %.Vec_IntPush.exit291_crit_edge ], [ %.pre442, %bb.bo ], [ %.pre447, %.Vec_IntPush.exit299_crit_edge ], [ %.pre448, %bb.by ], [ %storemerge372, %Vec_IntGrow.exit11.sink.split.i295 ]
  %.sink518 = phi i32 [ 0, %Vec_IntGrow.exit11.sink.split.i279 ], [ 1, %Vec_IntGrow.exit11.sink.split.i287 ], [ 0, %.Vec_IntPush.exit283_crit_edge ], [ 0, %bb.bf ], [ 1, %.Vec_IntPush.exit291_crit_edge ], [ 1, %bb.bo ], [ %i.ja, %.Vec_IntPush.exit299_crit_edge ], [ %i.ja, %bb.by ], [ %i.ja, %Vec_IntGrow.exit11.sink.split.i295 ]
  %i.jo = add nsw i32 %.sink524, 1
  store i32 %i.jo, ptr %i.fh, align 4, !tbaa !58
  %i.jp = sext i32 %.sink524 to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %.sink520, i64 %i.jp
  store i32 %.sink518, ptr %i.jq, align 4, !tbaa !31
  br label %bb.cc

bb.cc:                                            ; preds = %.sink.split517, %bb.bs
  %exitcond415.not = icmp eq i64 %indvars.iv.next413, 7
  br i1 %exitcond415.not, label %bb.cd, label %bb.az, !llvm.loop !170

bb.cd:                                            ; preds = %bb.cc
  %i.jr = load i32, ptr %i.fh, align 4, !tbaa !58 ; 7 uses
  %i.js = load i32, ptr %i.fg, align 8, !tbaa !60
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %bb.ce, label %.Vec_IntPush.exit307_crit_edge

.Vec_IntPush.exit307_crit_edge:                   ; preds = %bb.cd
  %.pre450 = load ptr, ptr %i.fj, align 8, !tbaa !61
  br label %Vec_IntPush.exit307

bb.ce:                                            ; preds = %bb.cd
  %i.ju = icmp slt i32 %i.jr, 16
  br i1 %i.ju, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.jv = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i305 = icmp eq ptr %i.jv, null
  br i1 %.not9.i.i305, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jw = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jv, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i303

bb.ch:                                            ; preds = %bb.cf
  %i.jx = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i303

bb.ci:                                            ; preds = %bb.ce
  %i.jy = icmp samesign ult i32 %i.jr, 1073741823
  %i.jz = shl nuw nsw i32 %i.jr, 1
  %spec.select.i300 = select i1 %i.jy, i32 %i.jz, i32 2147483647 ; 4 uses
  %.not.i9.i301 = icmp samesign ult i32 %i.jr, %spec.select.i300
  %.pre451 = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i301, label %bb.cj, label %Vec_IntPush.exit307

bb.cj:                                            ; preds = %bb.ci
  %.not9.i10.i302 = icmp eq ptr %.pre451, null
  %i.ka = zext nneg i32 %spec.select.i300 to i64
  %i.kb = shl nuw nsw i64 %i.ka, 2                ; 2 uses
  br i1 %.not9.i10.i302, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kc = call ptr @realloc(ptr noundef nonnull %.pre451, i64 noundef %i.kb) #29
  br label %Vec_IntGrow.exit11.sink.split.i303

bb.cl:                                            ; preds = %bb.cj
  %i.kd = call noalias ptr @malloc(i64 noundef %i.kb) #28
  br label %Vec_IntGrow.exit11.sink.split.i303

Vec_IntGrow.exit11.sink.split.i303:               ; preds = %bb.ck, %bb.cl, %bb.cg, %bb.ch
  %storemerge369 = phi ptr [ %i.jx, %bb.ch ], [ %i.jw, %bb.cg ], [ %i.kc, %bb.ck ], [ %i.kd, %bb.cl ] ; 2 uses
  %spec.select.sink.i304 = phi i32 [ 16, %bb.ch ], [ 16, %bb.cg ], [ %spec.select.i300, %bb.ck ], [ %spec.select.i300, %bb.cl ]
  store ptr %storemerge369, ptr %i.fj, align 8, !tbaa !61
  store i32 %spec.select.sink.i304, ptr %i.fg, align 8, !tbaa !60
  %.pre452 = load i32, ptr %i.fh, align 4, !tbaa !58
  br label %Vec_IntPush.exit307

Vec_IntPush.exit307:                              ; preds = %.Vec_IntPush.exit307_crit_edge, %bb.ci, %Vec_IntGrow.exit11.sink.split.i303
  %i.ke = phi i32 [ %i.jr, %.Vec_IntPush.exit307_crit_edge ], [ %i.jr, %bb.ci ], [ %.pre452, %Vec_IntGrow.exit11.sink.split.i303 ] ; 2 uses
  %i.kf = phi ptr [ %.pre450, %.Vec_IntPush.exit307_crit_edge ], [ %.pre451, %bb.ci ], [ %storemerge369, %Vec_IntGrow.exit11.sink.split.i303 ]
  %i.kg = add nsw i32 %i.ke, 1
  store i32 %i.kg, ptr %i.fh, align 4, !tbaa !58
  %i.kh = sext i32 %i.ke to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kh
  store i32 %i.hr, ptr %i.ki, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ew, i64 10
  %5 = load i16, ptr %i.kj, align 1
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %i.kk = zext i16 %6 to i64
  %i.kl = mul nuw i64 %i.kk, 281479271743489
  store i64 %i.kl, ptr %i.c, align 8, !tbaa !37
  %.val218 = load i32, ptr %i.fh, align 4, !tbaa !58
  %i.km = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.l, ptr noundef nonnull %i.c, i32 noundef %.val218, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.fg, i32 noundef 1) #26
  %.val225 = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.kn = getelementptr inbounds nuw [12 x i8], ptr %.val225, i64 %indvars.iv416
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !66
  %i.kp = load ptr, ptr %i.fj, align 8, !tbaa !61 ; 2 uses
  %.not.i308 = icmp eq ptr %i.kp, null
  br i1 %.not.i308, label %Vec_IntFree.exit, label %bb.cm

bb.cm:                                            ; preds = %Vec_IntPush.exit307
  call void @free(ptr noundef nonnull %i.kp) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntPush.exit307, %bb.cm
  call void @free(ptr noundef nonnull %i.fg) #26
  %i.kq = load i32, ptr %i.bi, align 4, !tbaa !31
  %i.kr = add nsw i32 %i.kq, %.0191390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.fc

bb.cn:                                            ; preds = %.critedge4
  %i.ks = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 16 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4 ; 16 uses
  store i32 16, ptr %i.ks, align 8, !tbaa !60
  %i.ku = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 15 uses
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !61
  store i32 0, ptr %i.kt, align 4, !tbaa !58
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.dr
  %i.kw = phi ptr [ %i.ku, %bb.cn ], [ %i.mw, %bb.dr ] ; 11 uses
  %i.kx = phi ptr [ %i.ku, %bb.cn ], [ %i.mx, %bb.dr ] ; 11 uses
  %i.ky = phi ptr [ %i.ku, %bb.cn ], [ %i.my, %bb.dr ] ; 7 uses
  %i.kz = phi ptr [ %i.ku, %bb.cn ], [ %i.mz, %bb.dr ] ; 5 uses
  %indvars.iv401 = phi i64 [ 0, %bb.cn ], [ %indvars.iv.next402, %bb.dr ]
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next402
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !30  ; 3 uses
  switch i8 %i.lb, label %bb.dh [
    i8 0, label %bb.cp
    i8 1, label %bb.cy
  ]

bb.cp:                                            ; preds = %bb.co
  %i.lc = load i32, ptr %i.kt, align 4, !tbaa !58 ; 7 uses
  %i.ld = load i32, ptr %i.ks, align 8, !tbaa !60
  %i.le = icmp eq i32 %i.lc, %i.ld
  br i1 %i.le, label %bb.cq, label %.sink.split525

bb.cq:                                            ; preds = %bb.cp
  %i.lf = icmp slt i32 %i.lc, 16
  br i1 %i.lf, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %.not9.i.i314 = icmp eq ptr %i.ky, null
  br i1 %.not9.i.i314, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lg = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ky, i64 noundef 64) #29
  br label %.sink.split525.sink.split

bb.ct:                                            ; preds = %bb.cr
  %i.lh = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %.sink.split525.sink.split

bb.cu:                                            ; preds = %bb.cq
  %i.li = icmp samesign ult i32 %i.lc, 1073741823
  %i.lj = shl nuw nsw i32 %i.lc, 1
  %spec.select.i309 = select i1 %i.li, i32 %i.lj, i32 2147483647 ; 4 uses
  %.not.i9.i310 = icmp samesign ult i32 %i.lc, %spec.select.i309
  br i1 %.not.i9.i310, label %bb.cv, label %.sink.split525

bb.cv:                                            ; preds = %bb.cu
  %.not9.i10.i311 = icmp eq ptr %i.ky, null
  %i.lk = zext nneg i32 %spec.select.i309 to i64
  %i.ll = shl nuw nsw i64 %i.lk, 2                ; 2 uses
  br i1 %.not9.i10.i311, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lm = call ptr @realloc(ptr noundef nonnull %i.ky, i64 noundef %i.ll) #29
  br label %.sink.split525.sink.split

bb.cx:                                            ; preds = %bb.cv
  %i.ln = call noalias ptr @malloc(i64 noundef %i.ll) #28
  br label %.sink.split525.sink.split

bb.cy:                                            ; preds = %bb.co
  %i.lo = load i32, ptr %i.kt, align 4, !tbaa !58 ; 7 uses
  %i.lp = load i32, ptr %i.ks, align 8, !tbaa !60
  %i.lq = icmp eq i32 %i.lo, %i.lp
  br i1 %i.lq, label %bb.cz, label %.sink.split525

bb.cz:                                            ; preds = %bb.cy
  %i.lr = icmp slt i32 %i.lo, 16
  br i1 %i.lr, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %.not9.i.i322 = icmp eq ptr %i.kz, null
  br i1 %.not9.i.i322, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ls = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kz, i64 noundef 64) #29
  br label %.sink.split525.sink.split

bb.dc:                                            ; preds = %bb.da
  %i.lt = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %.sink.split525.sink.split

bb.dd:                                            ; preds = %bb.cz
  %i.lu = icmp samesign ult i32 %i.lo, 1073741823
  %i.lv = shl nuw nsw i32 %i.lo, 1
  %spec.select.i317 = select i1 %i.lu, i32 %i.lv, i32 2147483647 ; 4 uses
  %.not.i9.i318 = icmp samesign ult i32 %i.lo, %spec.select.i317
  br i1 %.not.i9.i318, label %bb.de, label %.sink.split525

bb.de:                                            ; preds = %bb.dd
  %.not9.i10.i319 = icmp eq ptr %i.kz, null
  %i.lw = zext nneg i32 %spec.select.i317 to i64
  %i.lx = shl nuw nsw i64 %i.lw, 2                ; 2 uses
  br i1 %.not9.i10.i319, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ly = call ptr @realloc(ptr noundef nonnull %i.kz, i64 noundef %i.lx) #29
  br label %.sink.split525.sink.split

bb.dg:                                            ; preds = %bb.de
  %i.lz = call noalias ptr @malloc(i64 noundef %i.lx) #28
  br label %.sink.split525.sink.split

bb.dh:                                            ; preds = %bb.co
  %i.ma = zext i8 %i.lb to i32
  %.val217 = load i32, ptr %i.at, align 4, !tbaa !58
  %i.mb = add nsw i32 %.val217, 2
  %i.mc = icmp sgt i32 %i.mb, %i.ma
  br i1 %i.mc, label %bb.di, label %bb.dr

bb.di:                                            ; preds = %bb.dh
  %.val233 = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.md = zext i8 %i.lb to i64
  %i.me = getelementptr [4 x i8], ptr %.val233, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -8
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !31 ; 6 uses
  %i.mh = load i32, ptr %i.kt, align 4, !tbaa !58 ; 7 uses
  %i.mi = load i32, ptr %i.ks, align 8, !tbaa !60
  %i.mj = icmp eq i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.dj, label %.sink.split525

bb.dj:                                            ; preds = %bb.di
  %i.mk = icmp slt i32 %i.mh, 16
  br i1 %i.mk, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %.not9.i.i330 = icmp eq ptr %i.kx, null
  br i1 %.not9.i.i330, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ml = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kx, i64 noundef 64) #29
  br label %.sink.split525.sink.split

bb.dm:                                            ; preds = %bb.dk
  %i.mm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %.sink.split525.sink.split

bb.dn:                                            ; preds = %bb.dj
  %i.mn = icmp samesign ult i32 %i.mh, 1073741823
  %i.mo = shl nuw nsw i32 %i.mh, 1
  %spec.select.i325 = select i1 %i.mn, i32 %i.mo, i32 2147483647 ; 4 uses
  %.not.i9.i326 = icmp samesign ult i32 %i.mh, %spec.select.i325
  br i1 %.not.i9.i326, label %bb.do, label %.sink.split525

bb.do:                                            ; preds = %bb.dn
  %.not9.i10.i327 = icmp eq ptr %i.kx, null
  %i.mp = zext nneg i32 %spec.select.i325 to i64
  %i.mq = shl nuw nsw i64 %i.mp, 2                ; 2 uses
  br i1 %.not9.i10.i327, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mr = call ptr @realloc(ptr noundef nonnull %i.kx, i64 noundef %i.mq) #29
  br label %.sink.split525.sink.split

bb.dq:                                            ; preds = %bb.do
  %i.ms = call noalias ptr @malloc(i64 noundef %i.mq) #28
  br label %.sink.split525.sink.split

.sink.split525.sink.split:                        ; preds = %bb.dm, %bb.dl, %bb.dq, %bb.dp, %bb.dc, %bb.db, %bb.dg, %bb.df, %bb.ct, %bb.cs, %bb.cx, %bb.cw
  %storemerge368.sink = phi ptr [ %i.lz, %bb.dg ], [ %i.ln, %bb.cx ], [ %i.lh, %bb.ct ], [ %i.lg, %bb.cs ], [ %i.lm, %bb.cw ], [ %i.lt, %bb.dc ], [ %i.ls, %bb.db ], [ %i.ly, %bb.df ], [ %i.mm, %bb.dm ], [ %i.ml, %bb.dl ], [ %i.mr, %bb.dp ], [ %i.ms, %bb.dq ] ; 4 uses
  %spec.select.sink.i329.sink = phi i32 [ %spec.select.i317, %bb.dg ], [ %spec.select.i309, %bb.cx ], [ 16, %bb.ct ], [ 16, %bb.cs ], [ %spec.select.i309, %bb.cw ], [ 16, %bb.dc ], [ 16, %bb.db ], [ %spec.select.i317, %bb.df ], [ 16, %bb.dm ], [ 16, %bb.dl ], [ %spec.select.i325, %bb.dp ], [ %spec.select.i325, %bb.dq ]
  %.sink530.ph = phi i32 [ 1, %bb.dg ], [ 0, %bb.cx ], [ 0, %bb.ct ], [ 0, %bb.cs ], [ 0, %bb.cw ], [ 1, %bb.dc ], [ 1, %bb.db ], [ 1, %bb.df ], [ %i.mg, %bb.dm ], [ %i.mg, %bb.dl ], [ %i.mg, %bb.dp ], [ %i.mg, %bb.dq ]
  store ptr %storemerge368.sink, ptr %i.kv, align 8, !tbaa !61
  store i32 %spec.select.sink.i329.sink, ptr %i.ks, align 8, !tbaa !60
  %.pre428 = load i32, ptr %i.kt, align 4, !tbaa !58
  br label %.sink.split525

.sink.split525:                                   ; preds = %.sink.split525.sink.split, %bb.dn, %bb.di, %bb.dd, %bb.cy, %bb.cu, %bb.cp
  %.sink536 = phi i32 [ %i.mh, %bb.di ], [ %i.mh, %bb.dn ], [ %i.lc, %bb.cp ], [ %i.lc, %bb.cu ], [ %i.lo, %bb.cy ], [ %i.lo, %bb.dd ], [ %.pre428, %.sink.split525.sink.split ] ; 2 uses
  %.sink532 = phi ptr [ %i.kw, %bb.di ], [ %i.kw, %bb.dn ], [ %i.kx, %bb.cp ], [ %i.kx, %bb.cu ], [ %i.ky, %bb.cy ], [ %i.ky, %bb.dd ], [ %storemerge368.sink, %.sink.split525.sink.split ] ; 3 uses
  %.sink530 = phi i32 [ %i.mg, %bb.di ], [ %i.mg, %bb.dn ], [ 0, %bb.cp ], [ 0, %bb.cu ], [ 1, %bb.cy ], [ 1, %bb.dd ], [ %.sink530.ph, %.sink.split525.sink.split ]
  %.ph526 = phi ptr [ %i.kw, %bb.di ], [ %i.kw, %bb.dn ], [ %i.kw, %bb.cp ], [ %i.kw, %bb.cu ], [ %i.kw, %bb.cy ], [ %i.kw, %bb.dd ], [ %storemerge368.sink, %.sink.split525.sink.split ]
  %.ph527 = phi ptr [ %i.kw, %bb.di ], [ %i.kw, %bb.dn ], [ %i.kx, %bb.cp ], [ %i.kx, %bb.cu ], [ %i.kx, %bb.cy ], [ %i.kx, %bb.dd ], [ %storemerge368.sink, %.sink.split525.sink.split ]
  %i.mt = add nsw i32 %.sink536, 1
  store i32 %i.mt, ptr %i.kt, align 4, !tbaa !58
  %i.mu = sext i32 %.sink536 to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %.sink532, i64 %i.mu
  store i32 %.sink530, ptr %i.mv, align 4, !tbaa !31
  br label %bb.dr

bb.dr:                                            ; preds = %.sink.split525, %bb.dh
  %i.mw = phi ptr [ %i.kw, %bb.dh ], [ %.ph526, %.sink.split525 ]
  %i.mx = phi ptr [ %i.kx, %bb.dh ], [ %.ph527, %.sink.split525 ]
  %i.my = phi ptr [ %i.ky, %bb.dh ], [ %.sink532, %.sink.split525 ]
  %i.mz = phi ptr [ %i.kz, %bb.dh ], [ %.sink532, %.sink.split525 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next402, 4
  br i1 %exitcond.not, label %bb.ds, label %bb.co, !llvm.loop !171

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.na = getelementptr inbounds nuw i8, ptr %i.ew, i64 10
  %7 = load i16, ptr %i.na, align 1
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %i.nb = zext i16 %8 to i64
  %i.nc = mul nuw i64 %i.nb, 281479271743489
  store i64 %i.nc, ptr %i.d, align 8, !tbaa !37
  %.val216 = load i32, ptr %i.kt, align 4, !tbaa !58
  %i.nd = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, i32 noundef %.val216, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ks, i32 noundef 1) #26
  store i32 0, ptr %i.kt, align 4, !tbaa !58
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.ew
  %indvars.iv404 = phi i64 [ 4, %bb.ds ], [ %indvars.iv.next405, %bb.ew ]
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next405
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !30  ; 3 uses
  switch i8 %i.nf, label %bb.em [
    i8 0, label %bb.du
    i8 1, label %bb.ed
  ]

bb.du:                                            ; preds = %bb.dt
  %i.ng = load i32, ptr %i.kt, align 4, !tbaa !58 ; 7 uses
  %i.nh = load i32, ptr %i.ks, align 8, !tbaa !60
  %i.ni = icmp eq i32 %i.ng, %i.nh
  br i1 %i.ni, label %bb.dv, label %.Vec_IntPush.exit340_crit_edge

.Vec_IntPush.exit340_crit_edge:                   ; preds = %bb.du
  %.pre432 = load ptr, ptr %i.kv, align 8, !tbaa !61
  br label %.sink.split537

bb.dv:                                            ; preds = %bb.du
  %i.nj = icmp slt i32 %i.ng, 16
  br i1 %i.nj, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.nk = load ptr, ptr %i.kv, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i338 = icmp eq ptr %i.nk, null
  br i1 %.not9.i.i338, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nl = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nk, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i336

bb.dy:                                            ; preds = %bb.dw
  %i.nm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i336

bb.dz:                                            ; preds = %bb.dv
  %i.nn = icmp samesign ult i32 %i.ng, 1073741823
  %i.no = shl nuw nsw i32 %i.ng, 1
  %spec.select.i333 = select i1 %i.nn, i32 %i.no, i32 2147483647 ; 4 uses
  %.not.i9.i334 = icmp samesign ult i32 %i.ng, %spec.select.i333
  %.pre433 = load ptr, ptr %i.kv, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i334, label %bb.ea, label %.sink.split537

bb.ea:                                            ; preds = %bb.dz
  %.not9.i10.i335 = icmp eq ptr %.pre433, null
  %i.np = zext nneg i32 %spec.select.i333 to i64
  %i.nq = shl nuw nsw i64 %i.np, 2                ; 2 uses
  br i1 %.not9.i10.i335, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.nr = call ptr @realloc(ptr noundef nonnull %.pre433, i64 noundef %i.nq) #29
  br label %Vec_IntGrow.exit11.sink.split.i336

bb.ec:                                            ; preds = %bb.ea
  %i.ns = call noalias ptr @malloc(i64 noundef %i.nq) #28
  br label %Vec_IntGrow.exit11.sink.split.i336

Vec_IntGrow.exit11.sink.split.i336:               ; preds = %bb.eb, %bb.ec, %bb.dx, %bb.dy
  %storemerge364 = phi ptr [ %i.nm, %bb.dy ], [ %i.nl, %bb.dx ], [ %i.nr, %bb.eb ], [ %i.ns, %bb.ec ] ; 2 uses
  %spec.select.sink.i337 = phi i32 [ 16, %bb.dy ], [ 16, %bb.dx ], [ %spec.select.i333, %bb.eb ], [ %spec.select.i333, %bb.ec ]
  store ptr %storemerge364, ptr %i.kv, align 8, !tbaa !61
  store i32 %spec.select.sink.i337, ptr %i.ks, align 8, !tbaa !60
  %.pre434 = load i32, ptr %i.kt, align 4, !tbaa !58
  br label %.sink.split537

bb.ed:                                            ; preds = %bb.dt
  %i.nt = load i32, ptr %i.kt, align 4, !tbaa !58 ; 7 uses
  %i.nu = load i32, ptr %i.ks, align 8, !tbaa !60
  %i.nv = icmp eq i32 %i.nt, %i.nu
  br i1 %i.nv, label %bb.ee, label %.Vec_IntPush.exit348_crit_edge

.Vec_IntPush.exit348_crit_edge:                   ; preds = %bb.ed
  %.pre429 = load ptr, ptr %i.kv, align 8, !tbaa !61
  br label %.sink.split537

bb.ee:                                            ; preds = %bb.ed
  %i.nw = icmp slt i32 %i.nt, 16
  br i1 %i.nw, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.nx = load ptr, ptr %i.kv, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i346 = icmp eq ptr %i.nx, null
  br i1 %.not9.i.i346, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ny = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nx, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i344

bb.eh:                                            ; preds = %bb.ef
  %i.nz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i344

bb.ei:                                            ; preds = %bb.ee
  %i.oa = icmp samesign ult i32 %i.nt, 1073741823
  %i.ob = shl nuw nsw i32 %i.nt, 1
  %spec.select.i341 = select i1 %i.oa, i32 %i.ob, i32 2147483647 ; 4 uses
  %.not.i9.i342 = icmp samesign ult i32 %i.nt, %spec.select.i341
  %.pre430 = load ptr, ptr %i.kv, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i342, label %bb.ej, label %.sink.split537

bb.ej:                                            ; preds = %bb.ei
  %.not9.i10.i343 = icmp eq ptr %.pre430, null
  %i.oc = zext nneg i32 %spec.select.i341 to i64
  %i.od = shl nuw nsw i64 %i.oc, 2                ; 2 uses
  br i1 %.not9.i10.i343, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.oe = call ptr @realloc(ptr noundef nonnull %.pre430, i64 noundef %i.od) #29
  br label %Vec_IntGrow.exit11.sink.split.i344

bb.el:                                            ; preds = %bb.ej
  %i.of = call noalias ptr @malloc(i64 noundef %i.od) #28
  br label %Vec_IntGrow.exit11.sink.split.i344

Vec_IntGrow.exit11.sink.split.i344:               ; preds = %bb.ek, %bb.el, %bb.eg, %bb.eh
  %storemerge = phi ptr [ %i.nz, %bb.eh ], [ %i.ny, %bb.eg ], [ %i.oe, %bb.ek ], [ %i.of, %bb.el ] ; 2 uses
  %spec.select.sink.i345 = phi i32 [ 16, %bb.eh ], [ 16, %bb.eg ], [ %spec.select.i341, %bb.ek ], [ %spec.select.i341, %bb.el ]
  store ptr %storemerge, ptr %i.kv, align 8, !tbaa !61
  store i32 %spec.select.sink.i345, ptr %i.ks, align 8, !tbaa !60
  %.pre431 = load i32, ptr %i.kt, align 4, !tbaa !58
  br label %.sink.split537

bb.em:                                            ; preds = %bb.dt
  %i.og = zext i8 %i.nf to i32
  %.val215 = load i32, ptr %i.at, align 4, !tbaa !58
  %i.oh = add nsw i32 %.val215, 2
  %i.oi = icmp sgt i32 %i.oh, %i.og
  br i1 %i.oi, label %bb.en, label %bb.ew

bb.en:                                            ; preds = %bb.em
  %.val232 = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.oj = zext i8 %i.nf to i64
  %i.ok = getelementptr [4 x i8], ptr %.val232, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 -8
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !31 ; 3 uses
  %i.on = load i32, ptr %i.kt, align 4, !tbaa !58 ; 7 uses
  %i.oo = load i32, ptr %i.ks, align 8, !tbaa !60
  %i.op = icmp eq i32 %i.on, %i.oo
  br i1 %i.op, label %bb.eo, label %.Vec_IntPush.exit356_crit_edge

.Vec_IntPush.exit356_crit_edge:                   ; preds = %bb.en
  %.pre435 = load ptr, ptr %i.kv, align 8, !tbaa !61
  br label %.sink.split537

bb.eo:                                            ; preds = %bb.en
  %i.oq = icmp slt i32 %i.on, 16
  br i1 %i.oq, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.or = load ptr, ptr %i.kv, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i354 = icmp eq ptr %i.or, null
  br i1 %.not9.i.i354, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.os = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.or, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i352

bb.er:                                            ; preds = %bb.ep
  %i.ot = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i352

bb.es:                                            ; preds = %bb.eo
  %i.ou = icmp samesign ult i32 %i.on, 1073741823
  %i.ov = shl nuw nsw i32 %i.on, 1
  %spec.select.i349 = select i1 %i.ou, i32 %i.ov, i32 2147483647 ; 4 uses
  %.not.i9.i350 = icmp samesign ult i32 %i.on, %spec.select.i349
  %.pre436 = load ptr, ptr %i.kv, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i350, label %bb.et, label %.sink.split537

bb.et:                                            ; preds = %bb.es
  %.not9.i10.i351 = icmp eq ptr %.pre436, null
  %i.ow = zext nneg i32 %spec.select.i349 to i64
  %i.ox = shl nuw nsw i64 %i.ow, 2                ; 2 uses
  br i1 %.not9.i10.i351, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.oy = call ptr @realloc(ptr noundef nonnull %.pre436, i64 noundef %i.ox) #29
  br label %Vec_IntGrow.exit11.sink.split.i352

bb.ev:                                            ; preds = %bb.et
  %i.oz = call noalias ptr @malloc(i64 noundef %i.ox) #28
  br label %Vec_IntGrow.exit11.sink.split.i352

Vec_IntGrow.exit11.sink.split.i352:               ; preds = %bb.eu, %bb.ev, %bb.eq, %bb.er
  %storemerge365 = phi ptr [ %i.ot, %bb.er ], [ %i.os, %bb.eq ], [ %i.oy, %bb.eu ], [ %i.oz, %bb.ev ] ; 2 uses
  %spec.select.sink.i353 = phi i32 [ 16, %bb.er ], [ 16, %bb.eq ], [ %spec.select.i349, %bb.eu ], [ %spec.select.i349, %bb.ev ]
  store ptr %storemerge365, ptr %i.kv, align 8, !tbaa !61
  store i32 %spec.select.sink.i353, ptr %i.ks, align 8, !tbaa !60
  %.pre437 = load i32, ptr %i.kt, align 4, !tbaa !58
  br label %.sink.split537

.sink.split537:                                   ; preds = %Vec_IntGrow.exit11.sink.split.i352, %bb.es, %.Vec_IntPush.exit356_crit_edge, %Vec_IntGrow.exit11.sink.split.i344, %bb.ei, %.Vec_IntPush.exit348_crit_edge, %Vec_IntGrow.exit11.sink.split.i336, %bb.dz, %.Vec_IntPush.exit340_crit_edge
  %.sink544 = phi i32 [ %.pre434, %Vec_IntGrow.exit11.sink.split.i336 ], [ %.pre431, %Vec_IntGrow.exit11.sink.split.i344 ], [ %i.ng, %.Vec_IntPush.exit340_crit_edge ], [ %i.ng, %bb.dz ], [ %i.nt, %.Vec_IntPush.exit348_crit_edge ], [ %i.nt, %bb.ei ], [ %i.on, %.Vec_IntPush.exit356_crit_edge ], [ %i.on, %bb.es ], [ %.pre437, %Vec_IntGrow.exit11.sink.split.i352 ] ; 2 uses
  %.sink540 = phi ptr [ %storemerge364, %Vec_IntGrow.exit11.sink.split.i336 ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i344 ], [ %.pre432, %.Vec_IntPush.exit340_crit_edge ], [ %.pre433, %bb.dz ], [ %.pre429, %.Vec_IntPush.exit348_crit_edge ], [ %.pre430, %bb.ei ], [ %.pre435, %.Vec_IntPush.exit356_crit_edge ], [ %.pre436, %bb.es ], [ %storemerge365, %Vec_IntGrow.exit11.sink.split.i352 ]
  %.sink538 = phi i32 [ 0, %Vec_IntGrow.exit11.sink.split.i336 ], [ 1, %Vec_IntGrow.exit11.sink.split.i344 ], [ 0, %.Vec_IntPush.exit340_crit_edge ], [ 0, %bb.dz ], [ 1, %.Vec_IntPush.exit348_crit_edge ], [ 1, %bb.ei ], [ %i.om, %.Vec_IntPush.exit356_crit_edge ], [ %i.om, %bb.es ], [ %i.om, %Vec_IntGrow.exit11.sink.split.i352 ]
  %i.pa = add nsw i32 %.sink544, 1
  store i32 %i.pa, ptr %i.kt, align 4, !tbaa !58
  %i.pb = sext i32 %.sink544 to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %.sink540, i64 %i.pb
  store i32 %.sink538, ptr %i.pc, align 4, !tbaa !31
  br label %bb.ew

bb.ew:                                            ; preds = %.sink.split537, %bb.em
  %exitcond407.not = icmp eq i64 %indvars.iv.next405, 8
  br i1 %exitcond407.not, label %bb.ex, label %bb.dt, !llvm.loop !172

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %9 = load i16, ptr %i.pd, align 1
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %i.pe = zext i16 %10 to i64
  %i.pf = mul nuw i64 %i.pe, 281479271743489
  store i64 %i.pf, ptr %i.e, align 8, !tbaa !37
  %.val214 = load i32, ptr %i.kt, align 4, !tbaa !58
  %i.pg = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.l, ptr noundef nonnull %i.e, i32 noundef %.val214, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ks, i32 noundef 1) #26
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ew, i64 9
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.pi, label %bb.ez [
    i8 0, label %bb.fa
    i8 1, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %.val231 = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.pj = zext i8 %i.pi to i64
  %i.pk = getelementptr [4 x i8], ptr %.val231, i64 %i.pj
  %i.pl = getelementptr i8, ptr %i.pk, i64 -8
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !31
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ex, %bb.ey, %bb.ez
  %.0 = phi i32 [ 0, %bb.ex ], [ 1, %bb.ey ], [ %i.pm, %bb.ez ]
  %i.pn = call i32 @Gia_ManHashMux(ptr noundef nonnull %i.l, i32 noundef %.0, i32 noundef %i.pg, i32 noundef %i.nd) #26
  %.val224 = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.po = getelementptr inbounds nuw [12 x i8], ptr %.val224, i64 %indvars.iv416
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store i32 %i.pn, ptr %i.pp, align 4, !tbaa !66
  %i.pq = load ptr, ptr %i.kv, align 8, !tbaa !61 ; 2 uses
  %.not.i357 = icmp eq ptr %i.pq, null
  br i1 %.not.i357, label %Vec_IntFree.exit358, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @free(ptr noundef nonnull %i.pq) #26
  br label %Vec_IntFree.exit358

Vec_IntFree.exit358:                              ; preds = %bb.fa, %bb.fb
  call void @free(ptr noundef nonnull %i.ks) #26
  %i.pr = load i32, ptr %i.bh, align 4, !tbaa !31
  %i.ps = add nsw i32 %i.pr, %.0191390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.fc

bb.fc:                                            ; preds = %bb.s, %Vec_IntFree.exit358, %Vec_IntFree.exit, %.critedge4, %bb.f, %bb.i, %bb.h
  %.2 = phi i32 [ %.0191390, %bb.h ], [ %.0191390, %bb.f ], [ %.0191390, %bb.i ], [ %i.ff, %bb.s ], [ %i.kr, %Vec_IntFree.exit ], [ %i.ps, %Vec_IntFree.exit358 ], [ %.0191390, %.critedge4 ]
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %i.pt = load i32, ptr %i.h, align 8, !tbaa !64
  %i.pu = sext i32 %i.pt to i64
  %i.pv = icmp slt i64 %indvars.iv.next417, %i.pu
  br i1 %i.pv, label %bb.e, label %.critedge2, !llvm.loop !173

.critedge2:                                       ; preds = %bb.e, %bb.fc, %.critedge
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !62 ; 2 uses
  %i.py = getelementptr i8, ptr %i.px, i64 4
  %.val393 = load i32, ptr %i.py, align 4, !tbaa !58
  %i.pz = icmp sgt i32 %.val393, 0
  br i1 %i.pz, label %.lr.ph395, label %.critedge6

.lr.ph395:                                        ; preds = %.critedge2, %bb.fd
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %bb.fd ], [ 0, %.critedge2 ] ; 2 uses
  %i.qa = phi ptr [ %i.qs, %bb.fd ], [ %i.px, %.critedge2 ]
  %.val239 = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %.not209 = icmp eq ptr %.val239, null
  br i1 %.not209, label %.critedge6, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph395
  %i.qb = getelementptr i8, ptr %i.qa, i64 8
  %.val240.val = load ptr, ptr %i.qb, align 8, !tbaa !61
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %.val240.val, i64 %indvars.iv419
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !31
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [12 x i8], ptr %.val239, i64 %i.qe ; 3 uses
  %i.qg = load i64, ptr %i.qf, align 4            ; 2 uses
  %i.qh = and i64 %i.qg, 536870911
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds [12 x i8], ptr %i.qf, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !66
  %i.qm = trunc i64 %i.qg to i32
  %i.qn = lshr i32 %i.qm, 29
  %i.qo = and i32 %i.qn, 1
  %i.qp = xor i32 %i.qo, %i.ql
  %i.qq = call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.l, i32 noundef %i.qp)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !66
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.qs = load ptr, ptr %i.pw, align 8, !tbaa !62 ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 4
  %.val = load i32, ptr %i.qt, align 4, !tbaa !58
  %i.qu = sext i32 %.val to i64
  %i.qv = icmp slt i64 %indvars.iv.next420, %i.qu
  br i1 %i.qv, label %.lr.ph395, label %.critedge6, !llvm.loop !174

.critedge6:                                       ; preds = %.lr.ph395, %bb.fd, %.critedge2
  call void @Gia_ManHashStop(ptr noundef nonnull %i.l) #26
  %i.qw = getelementptr i8, ptr %0, i64 16
  %.val245 = load i32, ptr %i.qw, align 8, !tbaa !67
  call void @Gia_ManSetRegNum(ptr noundef nonnull %i.l, i32 noundef %.val245) #26
  %i.qx = load ptr, ptr %i.av, align 8, !tbaa !61 ; 2 uses
  %.not.i359 = icmp eq ptr %i.qx, null
  br i1 %.not.i359, label %Vec_IntFree.exit360, label %bb.fe

bb.fe:                                            ; preds = %.critedge6
  call void @free(ptr noundef nonnull %i.qx) #26
  br label %Vec_IntFree.exit360

Vec_IntFree.exit360:                              ; preds = %.critedge6, %bb.fe
  call void @free(ptr noundef nonnull %i.as) #26
  %i.qy = load ptr, ptr %i.az, align 8, !tbaa !61 ; 2 uses
  %.not.i361 = icmp eq ptr %i.qy, null
  br i1 %.not.i361, label %Vec_IntFree.exit362, label %bb.ff

bb.ff:                                            ; preds = %Vec_IntFree.exit360
  call void @free(ptr noundef nonnull %i.qy) #26
  br label %Vec_IntFree.exit362

Vec_IntFree.exit362:                              ; preds = %Vec_IntFree.exit360, %bb.ff
  call void @free(ptr noundef nonnull %i.aw) #26
  %i.qz = call ptr @Gia_ManCleanup(ptr noundef nonnull %i.l) #26
  call void @Gia_ManStop(ptr noundef nonnull %i.l) #26
  ret ptr %i.qz
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define nonnull ptr @Ifn_NtkDeriveTruth(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !23     ; 6 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph159, label %.preheader

.lr.ph159:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8496 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 7 uses
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %i.a, i32 6)
  %i.n = icmp sgt i32 %i.k, 0                     ; 2 uses
  %wide.trip.count.i = zext i32 %i.k to i64       ; 13 uses
  br i1 %i.g, label %.lr.ph159.split.us, label %.lr.ph159.split

.lr.ph159.split.us:                               ; preds = %.lr.ph159
  br i1 %i.n, label %.lr.ph.us.us.preheader, label %.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph159.split.us
  %i.o = zext nneg i32 %i.f to i64
  %i.p = sext i32 %i.d to i64
  %i.q = zext nneg i32 %i.k to i64
  %wide.trip.count197 = zext nneg i32 %i.a to i64
  %wide.trip.count192 = zext nneg i32 %i.f to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.h, i64 %i.p
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 3
  %min.iters.check258 = icmp ult i32 %i.f, 8
  %n.vec260 = and i64 %wide.trip.count192, 2147483640 ; 3 uses
  %cmp.n268 = icmp eq i64 %n.vec260, %wide.trip.count192
  %min.iters.check246 = icmp ult i32 %i.k, 6
  %n.vec248 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n255 = icmp eq i64 %n.vec248, %wide.trip.count.i
  %xtraiter402 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %Abc_TtCopy.exit.loopexit.us.us
  %indvars.iv194 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next195, %Abc_TtCopy.exit.loopexit.us.us ] ; 4 uses
  %i.s = mul i64 %i.r, %indvars.iv194
  %i.t = mul nuw nsw i64 %indvars.iv194, %i.o
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.t ; 2 uses
  br i1 %min.iters.check258, label %scalar.ph257.preheader, label %vector.body261

vector.body261:                                   ; preds = %.lr.ph.us.us, %vector.body261
  %index262 = phi i64 [ %index.next266, %vector.body261 ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ac, %vector.body261 ], [ zeroinitializer, %.lr.ph.us.us ]
  %vec.phi263 = phi <4 x i32> [ %i.ad, %vector.body261 ], [ zeroinitializer, %.lr.ph.us.us ]
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body261 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.us.us ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr [4 x i8], ptr %gep, i64 %index262 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %wide.load264 = load <4 x i32>, ptr %i.u, align 4, !tbaa !31
  %wide.load265 = load <4 x i32>, ptr %i.v, align 4, !tbaa !31
  %i.w = icmp eq <4 x i32> %wide.load264, zeroinitializer
  %i.x = icmp eq <4 x i32> %wide.load265, zeroinitializer
  %i.y = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.z = shl nuw <4 x i32> splat (i32 1), %step.add
  %i.aa = select <4 x i1> %i.w, <4 x i32> zeroinitializer, <4 x i32> %i.y
  %i.ab = select <4 x i1> %i.x, <4 x i32> zeroinitializer, <4 x i32> %i.z
  %i.ac = add <4 x i32> %i.aa, %vec.phi           ; 2 uses
  %i.ad = add <4 x i32> %i.ab, %vec.phi263        ; 2 uses
  %index.next266 = add nuw i64 %index262, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ae = icmp eq i64 %index.next266, %n.vec260
  br i1 %i.ae, label %middle.block267, label %vector.body261, !llvm.loop !179

middle.block267:                                  ; preds = %vector.body261
end_hunk_1
begin_hunk_2_@Gia_ManAppendObj:bb.a
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !303  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #29 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !303
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !301 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !301
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !58
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !58 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !60
  %.pre = load i32, ptr %i.al, align 4, !tbaa !58
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !61
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !58
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !64
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #20

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @Gia_ManToAigSimple(ptr noundef) local_unnamed_addr #9

declare ptr @Cnf_Derive(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #13 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !31
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #26 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #26
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #26 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !307
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #26 ; 0 uses
  call void @free(ptr noundef %i.d) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !307, !noalias !308
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #26, !inline_history !306 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #9

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #23

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { cold noreturn nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24, !35}
!4 = distinct !{!4, !24}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 long", !16, i64 0}
!18 = !{!"Ifn_Ntk_t_", !13, i64 0, !13, i64 4, !12, i64 8, !12, i64 1064, !13, i64 1548, !13, i64 1552, !13, i64 1556, !13, i64 1560, !13, i64 1564, !13, i64 1568, !17, i64 1576, !12, i64 1584, !12, i64 5680, !12, i64 8496}
!19 = !{!18, !17, i64 1576}
!20 = !{!18, !13, i64 1552}
!21 = !{!18, !13, i64 1556}
!22 = !{!18, !13, i64 4}
!23 = !{!18, !13, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!18, !13, i64 1564}
!26 = !{!18, !13, i64 1560}
!27 = !{!18, !13, i64 1568}
!28 = !{!"p1 omnipotent char", !16, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!12, !12, i64 0}
!31 = !{!13, !13, i64 0}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!18, !13, i64 1548}
!35 = !{!"llvm.loop.unswitch.partial.disable"}
!36 = !{!"long", !12, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS10Gia_Obj_t_", !16, i64 0}
!39 = !{!"p1 int", !16, i64 0}
!40 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!41 = !{!"Vec_Int_t_", !13, i64 0, !13, i64 4, !39, i64 8}
!42 = !{!"p1 _ZTS10Gia_Rpr_t_", !16, i64 0}
!43 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!44 = !{!"p1 _ZTS10Vec_Str_t_", !16, i64 0}
!45 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!46 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!47 = !{!"p1 _ZTS10Gia_Plc_t_", !16, i64 0}
!48 = !{!"p1 _ZTS10Gia_Man_t_", !16, i64 0}
!49 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!50 = !{!"float", !12, i64 0}
!51 = !{!"p1 _ZTS10Vec_Vec_t_", !16, i64 0}
!52 = !{!"p1 _ZTS10Vec_Wrd_t_", !16, i64 0}
!53 = !{!"p1 _ZTS10Vec_Bit_t_", !16, i64 0}
!54 = !{!"p1 _ZTS10Gia_Dat_t_", !16, i64 0}
!55 = !{!"Gia_Man_t_", !28, i64 0, !28, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !38, i64 32, !39, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !40, i64 64, !40, i64 72, !41, i64 80, !41, i64 96, !13, i64 112, !13, i64 116, !13, i64 120, !41, i64 128, !39, i64 144, !39, i64 152, !40, i64 160, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !39, i64 184, !42, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !13, i64 224, !13, i64 228, !39, i64 232, !13, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !43, i64 272, !43, i64 280, !40, i64 288, !16, i64 296, !40, i64 304, !40, i64 312, !44, i64 320, !28, i64 328, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !45, i64 376, !45, i64 384, !46, i64 392, !41, i64 400, !41, i64 416, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !40, i64 480, !40, i64 488, !40, i64 496, !40, i64 504, !40, i64 512, !28, i64 520, !47, i64 528, !48, i64 536, !49, i64 544, !49, i64 552, !40, i64 560, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !13, i64 600, !50, i64 604, !50, i64 608, !40, i64 616, !39, i64 624, !13, i64 632, !46, i64 640, !46, i64 648, !46, i64 656, !40, i64 664, !40, i64 672, !40, i64 680, !40, i64 688, !40, i64 696, !40, i64 704, !40, i64 712, !40, i64 720, !40, i64 728, !51, i64 736, !49, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !36, i64 776, !36, i64 784, !16, i64 792, !39, i64 800, !13, i64 808, !13, i64 812, !13, i64 816, !13, i64 820, !13, i64 824, !13, i64 828, !13, i64 832, !13, i64 836, !13, i64 840, !13, i64 844, !13, i64 848, !13, i64 852, !52, i64 856, !52, i64 864, !52, i64 872, !52, i64 880, !40, i64 888, !40, i64 896, !40, i64 904, !53, i64 912, !13, i64 920, !13, i64 924, !13, i64 928, !40, i64 936, !13, i64 944, !13, i64 948, !40, i64 952, !40, i64 960, !46, i64 968, !52, i64 976, !40, i64 984, !40, i64 992, !13, i64 1000, !13, i64 1004, !52, i64 1008, !41, i64 1016, !41, i64 1032, !41, i64 1048, !54, i64 1064, !44, i64 1072, !44, i64 1080, !13, i64 1088, !13, i64 1092, !13, i64 1096, !13, i64 1100, !44, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !46, i64 1136}
!56 = !{!55, !28, i64 0}
!57 = !{!55, !40, i64 64}
!58 = !{!41, !13, i64 4}
!59 = !{!55, !38, i64 32}
!60 = !{!41, !13, i64 0}
!61 = !{!41, !39, i64 8}
!62 = !{!55, !40, i64 72}
!63 = !{!55, !39, i64 232}
!64 = !{!55, !13, i64 24}
!65 = !{!"Gia_Obj_t_", !13, i64 0, !13, i64 3, !13, i64 3, !13, i64 3, !13, i64 4, !13, i64 7, !13, i64 7, !13, i64 7, !13, i64 8}
!66 = !{!65, !13, i64 8}
!67 = !{!55, !13, i64 16}
!68 = !{!"any p2 pointer", !16, i64 0}
!69 = !{!"p2 int", !68, i64 0}
!70 = !{!40, !40, i64 0}
!71 = !{!"Sat_Mem_t_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !69, i64 48}
!72 = !{!"p1 _ZTS8clause_t", !16, i64 0}
!73 = !{!"p1 _ZTS6veci_t", !16, i64 0}
!74 = !{!"veci_t", !13, i64 0, !13, i64 4, !39, i64 8}
!75 = !{!"double", !12, i64 0}
!76 = !{!"stats_t", !13, i64 0, !13, i64 4, !13, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!77 = !{!"p1 double", !16, i64 0}
!78 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!79 = !{!"sat_solver_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !71, i64 16, !13, i64 72, !13, i64 76, !72, i64 80, !73, i64 88, !13, i64 96, !13, i64 100, !13, i64 104, !13, i64 108, !13, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !17, i64 144, !17, i64 152, !13, i64 160, !13, i64 164, !74, i64 168, !28, i64 184, !13, i64 192, !39, i64 200, !28, i64 208, !28, i64 216, !28, i64 224, !28, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !74, i64 264, !74, i64 280, !74, i64 296, !74, i64 312, !39, i64 328, !74, i64 336, !13, i64 352, !13, i64 356, !13, i64 360, !75, i64 368, !75, i64 376, !13, i64 384, !13, i64 388, !13, i64 392, !76, i64 400, !13, i64 472, !13, i64 476, !13, i64 480, !13, i64 484, !13, i64 488, !36, i64 496, !36, i64 504, !36, i64 512, !74, i64 520, !77, i64 536, !13, i64 544, !13, i64 548, !13, i64 552, !74, i64 560, !74, i64 576, !13, i64 592, !13, i64 596, !13, i64 600, !39, i64 608, !16, i64 616, !13, i64 624, !78, i64 632, !13, i64 640, !13, i64 644, !74, i64 648, !74, i64 664, !74, i64 680, !16, i64 696, !16, i64 704, !13, i64 712, !16, i64 720}
!80 = !{!79, !39, i64 328}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!55, !28, i64 8}
!83 = !{!55, !13, i64 56}
!84 = !{!55, !40, i64 264}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24, !32, !33}
!88 = distinct !{!88, !24, !33, !32}
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
!92 = distinct !{!92, !24}
!93 = distinct !{!93, !24}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !24}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24}
!100 = distinct !{!100, !24}
!101 = distinct !{!101, !24}
!102 = distinct !{!102, !24, !32, !33}
!103 = distinct !{!103, !24, !33, !32}
!104 = distinct !{!104, !24, !32, !33}
!105 = distinct !{!105, !24, !33, !32}
!106 = distinct !{!106, !24}
!107 = distinct !{!107, !24, !32, !33}
!108 = distinct !{!108, !24, !33, !32}
!109 = distinct !{!109, !24}
!110 = distinct !{!110, !24}
!111 = distinct !{!111, !24}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
!115 = distinct !{!115, !24}
!116 = distinct !{!116, !24}
!117 = distinct !{!117, !24}
!118 = distinct !{!118, !24}
!119 = distinct !{!119, !24}
!120 = distinct !{!120, !24}
!121 = distinct !{!121, !24}
!122 = distinct !{!122, !24}
!123 = distinct !{!123, !24}
!124 = !{!"p1 _ZTS10Aig_Obj_t_", !16, i64 0}
!125 = !{!"Aig_Obj_t_", !12, i64 0, !124, i64 8, !124, i64 16, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 28, !13, i64 31, !13, i64 32, !13, i64 36, !12, i64 40}
!126 = !{!"p2 _ZTS10Aig_Obj_t_", !68, i64 0}
!127 = !{!"p1 _ZTS14Aig_MmFixed_t_", !16, i64 0}
!128 = !{!"p1 _ZTS10Aig_Man_t_", !16, i64 0}
!129 = !{!"Aig_Man_t_", !28, i64 0, !28, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !124, i64 48, !125, i64 56, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !12, i64 128, !13, i64 156, !126, i64 160, !13, i64 168, !39, i64 176, !13, i64 184, !51, i64 192, !13, i64 200, !13, i64 204, !13, i64 208, !39, i64 216, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !126, i64 248, !126, i64 256, !13, i64 264, !127, i64 272, !40, i64 280, !13, i64 288, !16, i64 296, !16, i64 304, !13, i64 312, !13, i64 316, !13, i64 320, !126, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !39, i64 368, !39, i64 376, !46, i64 384, !40, i64 392, !40, i64 400, !45, i64 408, !46, i64 416, !128, i64 424, !46, i64 432, !13, i64 440, !40, i64 448, !51, i64 456, !40, i64 464, !40, i64 472, !13, i64 480, !36, i64 488, !36, i64 496, !36, i64 504, !46, i64 512, !46, i64 520}
!130 = !{!129, !13, i64 104}
!131 = !{!"Cnf_Dat_t_", !128, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !69, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !28, i64 56, !40, i64 64}
!132 = !{!131, !13, i64 8}
!133 = !{!131, !13, i64 16}
!134 = !{!131, !69, i64 24}
!135 = !{!39, !39, i64 0}
!136 = !{!131, !39, i64 32}
!137 = !{!"p1 _ZTS10Ifn_Ntk_t_", !16, i64 0}
!138 = !{!137, !137, i64 0}
!139 = distinct !{!139, !24}
!140 = distinct !{!140, !24}
!141 = distinct !{!141, !24}
!142 = distinct !{!142, !24}
!143 = distinct !{!143, !24}
!144 = distinct !{!144, !24, !32, !33}
!145 = distinct !{!145, !24, !33, !32}
!146 = distinct !{!146, !24, !32, !33}
!147 = distinct !{!147, !24, !33, !32}
!148 = distinct !{!148, !24}
end_hunk_2
