Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastArea?download=true
inline.NumInlined: 85
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z19rcErodeWalkableAreaP9rcContextiR20rcCompactHeightfield:bb.a
  br label %bb.ab

._crit_edge308.split:                             ; preds = %..loopexit275_crit_edge, %bb.d, %.preheader279.lr.ph
  %i.gb = load i32, ptr %i.j, align 8, !tbaa !69  ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %._crit_edge308.split
  %i.gd = shl i32 %1, 1
  %i.ge = and i32 %i.gd, 254
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ap

.loopexit:                                        ; preds = %bb.ao, %bb.ab
  %i.gg = icmp sgt i64 %indvars.iv344, 1
  br i1 %i.gg, label %bb.ab, label %..loopexit275_crit_edge

bb.ab:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv344 = phi i64 [ %i.cw, %.preheader ], [ %indvars.iv.next345, %.loopexit ] ; 5 uses
  %indvars.iv.next345 = add nsw i64 %indvars.iv344, -1 ; 3 uses
  %i.gh = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.gi = getelementptr [4 x i8], ptr %i.gh, i64 %indvars.iv.next345
  %i.gj = getelementptr [4 x i8], ptr %i.gi, i64 %i.fy
  %i.gk = load i32, ptr %i.gj, align 4            ; 3 uses
  %i.gl = lshr i32 %i.gk, 24                      ; 2 uses
  %.not315 = icmp eq i32 %i.gl, 0
  br i1 %.not315, label %.loopexit, label %.lr.ph298

.lr.ph298:                                        ; preds = %bb.ab
  %i.gm = and i32 %i.gk, 16777215
  %i.gn = add nuw nsw i32 %i.gm, %i.gl
  %.reass.reass304 = add i64 %i.ga, %indvars.iv344
  %sext375 = shl i64 %.reass.reass304, 32
  %i.go = and i32 %i.gk, 16777215
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = zext nneg i32 %i.gn to i64
  %i.gr = ashr exact i64 %sext375, 30
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph298, %bb.ao
  %indvars.iv341 = phi i64 [ %i.gp, %.lr.ph298 ], [ %indvars.iv.next342, %bb.ao ] ; 4 uses
  %i.gs = load ptr, ptr %i.cv, align 8, !tbaa !73 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv341
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = lshr i32 %i.gv, 12
  %i.gx = and i32 %i.gw, 63                       ; 2 uses
  %.not256 = icmp eq i32 %i.gx, 63
  br i1 %.not256, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gy = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.gz = getelementptr [4 x i8], ptr %i.gy, i64 %indvars.iv344
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.fy
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = and i32 %i.hb, 16777215
  %i.hd = add nuw nsw i32 %i.hc, %i.gx
  %i.he = zext nneg i32 %i.hd to i64              ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.he
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !72
  %narrow = tail call i8 @llvm.uadd.sat.i8(i8 %i.hh, i8 2) ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv341 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !72  ; 2 uses
  %i.hk = icmp ult i8 %narrow, %i.hj
  br i1 %i.hk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 %narrow, ptr %i.hi, align 1, !tbaa !72
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hl = phi i8 [ %narrow, %bb.ae ], [ %i.hj, %bb.ad ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = lshr i32 %i.hn, 6
  %i.hp = and i32 %i.ho, 63                       ; 2 uses
  %.not257 = icmp eq i32 %i.hp, 63
  br i1 %.not257, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hq = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv344
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.fz
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, 16777215
  %i.hv = add nuw nsw i32 %i.hu, %i.hp
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !72
  %narrow267 = tail call i8 @llvm.uadd.sat.i8(i8 %i.hy, i8 3) ; 2 uses
  %i.hz = icmp ult i8 %narrow267, %i.hl
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i8 %narrow267, ptr %i.hi, align 1, !tbaa !72
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah, %bb.ag, %bb.ac
  %i.ia = load i32, ptr %i.gu, align 4
  %i.ib = lshr i32 %i.ia, 6
  %i.ic = and i32 %i.ib, 63                       ; 2 uses
  %.not258 = icmp eq i32 %i.ic, 63
  br i1 %.not258, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv.next345
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.fz
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = and i32 %i.ig, 16777215
  %i.ii = add nuw nsw i32 %i.ih, %i.ic
  %i.ij = load ptr, ptr %i.cv, align 8, !tbaa !73
  %i.ik = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ik
  %i.in = load i8, ptr %i.im, align 1, !tbaa !72
  %narrow268 = tail call i8 @llvm.uadd.sat.i8(i8 %i.in, i8 2) ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv341 ; 3 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !72  ; 2 uses
  %i.iq = icmp ult i8 %narrow268, %i.ip
  br i1 %i.iq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 %narrow268, ptr %i.io, align 1, !tbaa !72
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ir = phi i8 [ %narrow268, %bb.ak ], [ %i.ip, %bb.aj ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = and i32 %i.it, 63                       ; 2 uses
  %.not259 = icmp eq i32 %i.iu, 63
  br i1 %.not259, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iv = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 %i.gr
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = and i32 %i.ix, 16777215
  %i.iz = add nuw nsw i32 %i.iy, %i.iu
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !72
  %narrow269 = tail call i8 @llvm.uadd.sat.i8(i8 %i.jc, i8 3) ; 2 uses
  %i.jd = icmp ult i8 %narrow269, %i.ir
  br i1 %i.jd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 %narrow269, ptr %i.io, align 1, !tbaa !72
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.am, %bb.ai
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.je = icmp samesign ult i64 %indvars.iv.next342, %i.gq
  br i1 %i.je, label %bb.ac, label %.loopexit

._crit_edge312:                                   ; preds = %bb.ar, %._crit_edge308.split
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.m) #5
  br label %bb.as

bb.ap:                                            ; preds = %.lr.ph311, %bb.ar
  %i.jf = phi i32 [ %i.gb, %.lr.ph311 ], [ %i.jm, %bb.ar ]
  %indvars.iv351 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next352, %bb.ar ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv351
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !72
  %i.ji = zext i8 %i.jh to i32
  %i.jj = icmp samesign ugt i32 %i.ge, %i.ji
  br i1 %i.jj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jk = load ptr, ptr %i.gf, align 8, !tbaa !71
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %indvars.iv351
  store i8 0, ptr %i.jl, align 1, !tbaa !72
  %.pre = load i32, ptr %i.j, align 8, !tbaa !69
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.jm = phi i32 [ %i.jf, %bb.ap ], [ %.pre, %bb.aq ] ; 2 uses
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next352, %i.jn
  br i1 %i.jo, label %bb.ap, label %._crit_edge312

bb.as:                                            ; preds = %._crit_edge312, %bb.c
  %i.jp = load i8, ptr %i.d, align 1, !tbaa !27, !range !28, !noundef !29
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.at, label %_ZN13rcScopedTimerD2Ev.exit

bb.at:                                            ; preds = %bb.as
  %i.jr = load ptr, ptr %0, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = load ptr, ptr %i.js, align 8
  tail call void %i.jt(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 13) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.as, %bb.at
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z6rcFreePv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z26rcMedianFilterWalkableAreaP9rcContextR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i8, align 1                   ; 19 uses
  %.sroa.20 = alloca i8, align 1                  ; 27 uses
  %.sroa.46 = alloca i8, align 1                  ; 24 uses
  %.sroa.69 = alloca i8, align 1                  ; 21 uses
  %.sroa.89 = alloca i8, align 1                  ; 19 uses
  %.sroa.107 = alloca i8, align 1                 ; 14 uses
  %.sroa.121 = alloca i8, align 1                 ; 11 uses
  %.sroa.132 = alloca i8, align 1                 ; 8 uses
  %.sroa.140 = alloca i8, align 1                 ; 4 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27, !range !28, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 9) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !69
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.l, i32 noundef 1) #5 ; 6 uses
  %.not = icmp ne ptr %i.m, null                  ; 2 uses
  %i.n = load i32, ptr %i.j, align 8, !tbaa !69   ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %i.n) #5
  br label %bb.aj

bb.d:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.o = sext i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 -1, i64 %i.o, i1 false)
  %i.p = icmp sgt i32 %i.c, 0
  br i1 %i.p, label %.preheader131.lr.ph, label %._crit_edge139.split

.preheader131.lr.ph:                              ; preds = %bb.d
  %i.q = icmp sgt i32 %i.a, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  br i1 %i.q, label %.preheader131.preheader, label %._crit_edge139.split

.preheader131.preheader:                          ; preds = %.preheader131.lr.ph
  %i.u = zext nneg i32 %i.a to i64                ; 5 uses
  %wide.trip.count150 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader131

.preheader131:                                    ; preds = %.preheader131.preheader, %._crit_edge137
  %indvars.iv147 = phi i64 [ 0, %.preheader131.preheader ], [ %indvars.iv.next148, %._crit_edge137 ] ; 6 uses
  %i.v = mul nuw nsw i64 %indvars.iv147, %i.u     ; 3 uses
  %i.w = add nuw nsw i64 %indvars.iv147, 1
  %i.x = mul nuw nsw i64 %i.w, %i.u
  %i.y = add nuw nsw i64 %indvars.iv147, 1
  %i.z = mul nuw nsw i64 %i.y, %i.u               ; 2 uses
  %i.aa = add nsw i64 %indvars.iv147, -1
  %i.ab = mul nsw i64 %i.aa, %i.u
  %i.ac = add nsw i64 %indvars.iv147, -1
  %i.ad = mul nsw i64 %i.ac, %i.u                 ; 2 uses
  br label %bb.e

._crit_edge139.split:                             ; preds = %._crit_edge137, %.preheader131.lr.ph, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = load i32, ptr %i.j, align 8, !tbaa !69
  %i.ah = sext i32 %i.ag to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.m, i64 %i.ah, i1 false)
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.m) #5
  br label %bb.aj

._crit_edge137:                                   ; preds = %._crit_edge
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %._crit_edge139.split, label %.preheader131

bb.e:                                             ; preds = %.preheader131, %._crit_edge
  %indvars.iv144 = phi i64 [ 0, %.preheader131 ], [ %indvars.iv.next145, %._crit_edge ] ; 8 uses
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv144
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.v
  %i.al = load i32, ptr %i.ak, align 4            ; 3 uses
  %i.am = lshr i32 %i.al, 24                      ; 2 uses
  %.not140 = icmp eq i32 %i.am, 0
  br i1 %.not140, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.an = and i32 %i.al, 16777215
  %i.ao = add nuw nsw i32 %i.an, %i.am
  %i.ap = and i32 %i.al, 16777215
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = add nsw i64 %indvars.iv144, -1          ; 2 uses
  %i.at = add nuw nsw i64 %indvars.iv144, 1       ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ai, %bb.e
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge137, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 5 uses
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !73  ; 5 uses
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !71  ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !72  ; 39 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %2, label %.preheader

2:                                                ; preds = %.lr.ph
  %3 = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 0, ptr %3, align 1, !tbaa !72
  br label %bb.ai

.preheader:                                       ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.89)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.107)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.121)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.140)
  store i8 %i.ax, ptr %.sroa.0, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.20, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.46, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.69, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.89, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.107, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.121, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.132, align 1, !tbaa !72
  store i8 %i.ax, ptr %.sroa.140, align 1, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4            ; 4 uses
  %i.bc = and i32 %i.bb, 63                       ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 63
  br i1 %i.bd, label %bb.y, label %bb.w

4:                                                ; preds = %bb.ah
  store i8 %.sroa.0.0..sroa.0.0., ptr %.sroa.20, align 1, !tbaa !72
  br label %.critedge.i

.critedge.i:                                      ; preds = %4, %bb.ah
  %.0.in.lcssa.i.sroa.phi = phi ptr [ %.sroa.0, %4 ], [ %.sroa.20, %bb.ah ]
  store i8 %.sroa.20.0..sroa.20.1.165, ptr %.0.in.lcssa.i.sroa.phi, align 1, !tbaa !72
  %.sroa.20.0..sroa.20.0..sroa.20.1.164 = load i8, ptr %.sroa.20, align 1, !tbaa !72 ; 2 uses
  %5 = icmp ugt i8 %.sroa.20.0..sroa.20.0..sroa.20.1.164, %.sroa.46.0..sroa.46.2.171
  br i1 %5, label %6, label %.critedge.1.i

6:                                                ; preds = %.critedge.i
  store i8 %.sroa.20.0..sroa.20.0..sroa.20.1.164, ptr %.sroa.46, align 1, !tbaa !72
  %.sroa.0.0..sroa.0.0..sroa.0.0.158 = load i8, ptr %.sroa.0, align 1, !tbaa !72 ; 2 uses
  %7 = icmp ugt i8 %.sroa.0.0..sroa.0.0..sroa.0.0.158, %.sroa.46.0..sroa.46.2.171
  br i1 %7, label %8, label %.critedge.1.i

8:                                                ; preds = %6
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.158, ptr %.sroa.20, align 1, !tbaa !72
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %8, %6, %.critedge.i
  %.0.in.lcssa.1.i.sroa.phi = phi ptr [ %.sroa.0, %8 ], [ %.sroa.46, %.critedge.i ], [ %.sroa.20, %6 ]
  store i8 %.sroa.46.0..sroa.46.2.171, ptr %.0.in.lcssa.1.i.sroa.phi, align 1, !tbaa !72
  %.sroa.46.0..sroa.46.0..sroa.46.2.170 = load i8, ptr %.sroa.46, align 1, !tbaa !72 ; 2 uses
  %9 = icmp ugt i8 %.sroa.46.0..sroa.46.0..sroa.46.2.170, %.sroa.69.0..sroa.69.3.176
  br i1 %9, label %10, label %.critedge.2.i

10:                                               ; preds = %.critedge.1.i
  store i8 %.sroa.46.0..sroa.46.0..sroa.46.2.170, ptr %.sroa.69, align 1, !tbaa !72
  %.sroa.20.0..sroa.20.0..sroa.20.1. = load i8, ptr %.sroa.20, align 1, !tbaa !72 ; 2 uses
  %11 = icmp ugt i8 %.sroa.20.0..sroa.20.0..sroa.20.1., %.sroa.69.0..sroa.69.3.176
  br i1 %11, label %12, label %.critedge.2.i

12:                                               ; preds = %10
  store i8 %.sroa.20.0..sroa.20.0..sroa.20.1., ptr %.sroa.46, align 1, !tbaa !72
  %.sroa.0.0..sroa.0.0..sroa.0.0.157 = load i8, ptr %.sroa.0, align 1, !tbaa !72 ; 2 uses
  %13 = icmp ugt i8 %.sroa.0.0..sroa.0.0..sroa.0.0.157, %.sroa.69.0..sroa.69.3.176
  br i1 %13, label %14, label %.critedge.2.i

14:                                               ; preds = %12
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.157, ptr %.sroa.20, align 1, !tbaa !72
  br label %.critedge.2.i

.critedge.2.i:                                    ; preds = %14, %12, %10, %.critedge.1.i
  %.0.in.lcssa.2.i.sroa.phi = phi ptr [ %.sroa.0, %14 ], [ %.sroa.69, %.critedge.1.i ], [ %.sroa.46, %10 ], [ %.sroa.20, %12 ]
  store i8 %.sroa.69.0..sroa.69.3.176, ptr %.0.in.lcssa.2.i.sroa.phi, align 1, !tbaa !72
  %.sroa.69.0..sroa.69.0..sroa.69.3.175 = load i8, ptr %.sroa.69, align 1, !tbaa !72 ; 2 uses
  %15 = icmp ugt i8 %.sroa.69.0..sroa.69.0..sroa.69.3.175, %.sroa.89.0..sroa.89.4.180
  br i1 %15, label %16, label %.critedge.3.i.a

16:                                               ; preds = %.critedge.2.i
  store i8 %.sroa.69.0..sroa.69.0..sroa.69.3.175, ptr %.sroa.89, align 1, !tbaa !72
  %.sroa.46.0..sroa.46.0..sroa.46.2. = load i8, ptr %.sroa.46, align 1, !tbaa !72 ; 2 uses
  %17 = icmp ugt i8 %.sroa.46.0..sroa.46.0..sroa.46.2., %.sroa.89.0..sroa.89.4.180
  br i1 %17, label %bb.f, label %.critedge.3.i.a

bb.f:                                             ; preds = %16
  store i8 %.sroa.46.0..sroa.46.0..sroa.46.2., ptr %.sroa.69, align 1, !tbaa !72
  %.sroa.20.0..sroa.20.0..sroa.20.1.159 = load i8, ptr %.sroa.20, align 1, !tbaa !72 ; 2 uses
  %i.be = icmp ugt i8 %.sroa.20.0..sroa.20.0..sroa.20.1.159, %.sroa.89.0..sroa.89.4.180
  br i1 %i.be, label %bb.g, label %.critedge.3.i.a

bb.g:                                             ; preds = %bb.f
  store i8 %.sroa.20.0..sroa.20.0..sroa.20.1.159, ptr %.sroa.46, align 1, !tbaa !72
  %.sroa.0.0..sroa.0.0..sroa.0.0.156 = load i8, ptr %.sroa.0, align 1, !tbaa !72 ; 2 uses
  %18 = icmp ugt i8 %.sroa.0.0..sroa.0.0..sroa.0.0.156, %.sroa.89.0..sroa.89.4.180
  br i1 %18, label %19, label %.critedge.3.i.a

19:                                               ; preds = %bb.g
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.156, ptr %.sroa.20, align 1, !tbaa !72
  br label %.critedge.3.i.a

.critedge.3.i.a:                                  ; preds = %19, %bb.g, %bb.f, %16, %.critedge.2.i
  %.0.in.lcssa.3.i.sroa.phi = phi ptr [ %.sroa.0, %19 ], [ %.sroa.89, %.critedge.2.i ], [ %.sroa.69, %16 ], [ %.sroa.20, %bb.g ], [ %.sroa.46, %bb.f ]
  store i8 %.sroa.89.0..sroa.89.4.180, ptr %.0.in.lcssa.3.i.sroa.phi, align 1, !tbaa !72
  %.sroa.89.0..sroa.89.0..sroa.89.4.179 = load i8, ptr %.sroa.89, align 1, !tbaa !72 ; 2 uses
  %i.bf = icmp ugt i8 %.sroa.89.0..sroa.89.0..sroa.89.4.179, %.sroa.107.0..sroa.107.5.184
  br i1 %i.bf, label %20, label %.critedge.4.i.a

20:                                               ; preds = %.critedge.3.i.a
  store i8 %.sroa.89.0..sroa.89.0..sroa.89.4.179, ptr %.sroa.107, align 1, !tbaa !72
  %.sroa.69.0..sroa.69.0..sroa.69.3. = load i8, ptr %.sroa.69, align 1, !tbaa !72 ; 2 uses
  %21 = icmp ugt i8 %.sroa.69.0..sroa.69.0..sroa.69.3., %.sroa.107.0..sroa.107.5.184
  br i1 %21, label %bb.h, label %.critedge.4.i.a

bb.h:                                             ; preds = %20
  store i8 %.sroa.69.0..sroa.69.0..sroa.69.3., ptr %.sroa.89, align 1, !tbaa !72
  %.sroa.46.0..sroa.46.0..sroa.46.2.166 = load i8, ptr %.sroa.46, align 1, !tbaa !72 ; 2 uses
  %i.bg = icmp ugt i8 %.sroa.46.0..sroa.46.0..sroa.46.2.166, %.sroa.107.0..sroa.107.5.184
  br i1 %i.bg, label %bb.i, label %.critedge.4.i.a

bb.i:                                             ; preds = %bb.h
  store i8 %.sroa.46.0..sroa.46.0..sroa.46.2.166, ptr %.sroa.69, align 1, !tbaa !72
  %.sroa.20.0..sroa.20.0..sroa.20.1.160 = load i8, ptr %.sroa.20, align 1, !tbaa !72 ; 2 uses
  %i.bh = icmp ugt i8 %.sroa.20.0..sroa.20.0..sroa.20.1.160, %.sroa.107.0..sroa.107.5.184
  br i1 %i.bh, label %bb.j, label %.critedge.4.i.a

bb.j:                                             ; preds = %bb.i
  store i8 %.sroa.20.0..sroa.20.0..sroa.20.1.160, ptr %.sroa.46, align 1, !tbaa !72
  %.sroa.0.0..sroa.0.0..sroa.0.0.155 = load i8, ptr %.sroa.0, align 1, !tbaa !72 ; 2 uses
  %22 = icmp ugt i8 %.sroa.0.0..sroa.0.0..sroa.0.0.155, %.sroa.107.0..sroa.107.5.184
  br i1 %22, label %23, label %.critedge.4.i.a

23:                                               ; preds = %bb.j
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.155, ptr %.sroa.20, align 1, !tbaa !72
  br label %.critedge.4.i.a

.critedge.4.i.a:                                  ; preds = %23, %bb.j, %bb.i, %bb.h, %20, %.critedge.3.i.a
  %.0.in.lcssa.4.i.sroa.phi = phi ptr [ %.sroa.0, %23 ], [ %.sroa.107, %.critedge.3.i.a ], [ %.sroa.89, %20 ], [ %.sroa.20, %bb.j ], [ %.sroa.69, %bb.h ], [ %.sroa.46, %bb.i ]
  store i8 %.sroa.107.0..sroa.107.5.184, ptr %.0.in.lcssa.4.i.sroa.phi, align 1, !tbaa !72
  %.sroa.107.0..sroa.107.0..sroa.107.5.183 = load i8, ptr %.sroa.107, align 1, !tbaa !72 ; 2 uses
  %i.bi = icmp ugt i8 %.sroa.107.0..sroa.107.0..sroa.107.5.183, %.sroa.121.0..sroa.121.6.186
  br i1 %i.bi, label %24, label %.critedge.5.i.a

24:                                               ; preds = %.critedge.4.i.a
  store i8 %.sroa.107.0..sroa.107.0..sroa.107.5.183, ptr %.sroa.121, align 1, !tbaa !72
  %.sroa.89.0..sroa.89.0..sroa.89.4. = load i8, ptr %.sroa.89, align 1, !tbaa !72 ; 2 uses
  %25 = icmp ugt i8 %.sroa.89.0..sroa.89.0..sroa.89.4., %.sroa.121.0..sroa.121.6.186
  br i1 %25, label %26, label %.critedge.5.i.a

26:                                               ; preds = %24
  store i8 %.sroa.89.0..sroa.89.0..sroa.89.4., ptr %.sroa.107, align 1, !tbaa !72
  %.sroa.69.0..sroa.69.0..sroa.69.3.172 = load i8, ptr %.sroa.69, align 1, !tbaa !72 ; 2 uses
  %27 = icmp ugt i8 %.sroa.69.0..sroa.69.0..sroa.69.3.172, %.sroa.121.0..sroa.121.6.186
  br i1 %27, label %bb.k, label %.critedge.5.i.a

bb.k:                                             ; preds = %26
  store i8 %.sroa.69.0..sroa.69.0..sroa.69.3.172, ptr %.sroa.89, align 1, !tbaa !72
  %.sroa.46.0..sroa.46.0..sroa.46.2.167 = load i8, ptr %.sroa.46, align 1, !tbaa !72 ; 2 uses
  %i.bj = icmp ugt i8 %.sroa.46.0..sroa.46.0..sroa.46.2.167, %.sroa.121.0..sroa.121.6.186
  br i1 %i.bj, label %bb.l, label %.critedge.5.i.a

bb.l:                                             ; preds = %bb.k
  store i8 %.sroa.46.0..sroa.46.0..sroa.46.2.167, ptr %.sroa.69, align 1, !tbaa !72
  %.sroa.20.0..sroa.20.0..sroa.20.1.161 = load i8, ptr %.sroa.20, align 1, !tbaa !72 ; 2 uses
  %i.bk = icmp ugt i8 %.sroa.20.0..sroa.20.0..sroa.20.1.161, %.sroa.121.0..sroa.121.6.186
  br i1 %i.bk, label %bb.m, label %.critedge.5.i.a

bb.m:                                             ; preds = %bb.l
  store i8 %.sroa.20.0..sroa.20.0..sroa.20.1.161, ptr %.sroa.46, align 1, !tbaa !72
  %.sroa.0.0..sroa.0.0..sroa.0.0.154 = load i8, ptr %.sroa.0, align 1, !tbaa !72 ; 2 uses
  %i.bl = icmp ugt i8 %.sroa.0.0..sroa.0.0..sroa.0.0.154, %.sroa.121.0..sroa.121.6.186
  br i1 %i.bl, label %bb.n, label %.critedge.5.i.a

bb.n:                                             ; preds = %bb.m
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.154, ptr %.sroa.20, align 1, !tbaa !72
  br label %.critedge.5.i.a

.critedge.5.i.a:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %26, %24, %.critedge.4.i.a
  %.0.in.lcssa.5.i.sroa.phi = phi ptr [ %.sroa.0, %bb.n ], [ %.sroa.121, %.critedge.4.i.a ], [ %.sroa.107, %24 ], [ %.sroa.20, %bb.m ], [ %.sroa.89, %26 ], [ %.sroa.46, %bb.l ], [ %.sroa.69, %bb.k ]
  store i8 %.sroa.121.0..sroa.121.6.186, ptr %.0.in.lcssa.5.i.sroa.phi, align 1, !tbaa !72
  %.sroa.121.0..sroa.121.0..sroa.121.6.185 = load i8, ptr %.sroa.121, align 1, !tbaa !72 ; 2 uses
  %i.bm = icmp ugt i8 %.sroa.121.0..sroa.121.0..sroa.121.6.185, %.sroa.132.0..sroa.132.7.187
  br i1 %i.bm, label %28, label %.critedge.6.i.a

28:                                               ; preds = %.critedge.5.i.a
  store i8 %.sroa.121.0..sroa.121.0..sroa.121.6.185, ptr %.sroa.132, align 1, !tbaa !72
  %.sroa.107.0..sroa.107.0..sroa.107.5. = load i8, ptr %.sroa.107, align 1, !tbaa !72 ; 2 uses
  %29 = icmp ugt i8 %.sroa.107.0..sroa.107.0..sroa.107.5., %.sroa.132.0..sroa.132.7.187
  br i1 %29, label %30, label %.critedge.6.i.a

30:                                               ; preds = %28
  store i8 %.sroa.107.0..sroa.107.0..sroa.107.5., ptr %.sroa.121, align 1, !tbaa !72
  %.sroa.89.0..sroa.89.0..sroa.89.4.177 = load i8, ptr %.sroa.89, align 1, !tbaa !72 ; 2 uses
  %31 = icmp ugt i8 %.sroa.89.0..sroa.89.0..sroa.89.4.177, %.sroa.132.0..sroa.132.7.187
  br i1 %31, label %32, label %.critedge.6.i.a

32:                                               ; preds = %30
  store i8 %.sroa.89.0..sroa.89.0..sroa.89.4.177, ptr %.sroa.107, align 1, !tbaa !72
  %.sroa.69.0..sroa.69.0..sroa.69.3.173 = load i8, ptr %.sroa.69, align 1, !tbaa !72 ; 2 uses
  %33 = icmp ugt i8 %.sroa.69.0..sroa.69.0..sroa.69.3.173, %.sroa.132.0..sroa.132.7.187
  br i1 %33, label %bb.o, label %.critedge.6.i.a

bb.o:                                             ; preds = %32
  store i8 %.sroa.69.0..sroa.69.0..sroa.69.3.173, ptr %.sroa.89, align 1, !tbaa !72
  %.sroa.46.0..sroa.46.0..sroa.46.2.168 = load i8, ptr %.sroa.46, align 1, !tbaa !72 ; 2 uses
  %i.bn = icmp ugt i8 %.sroa.46.0..sroa.46.0..sroa.46.2.168, %.sroa.132.0..sroa.132.7.187
  br i1 %i.bn, label %bb.p, label %.critedge.6.i.a

bb.p:                                             ; preds = %bb.o
  store i8 %.sroa.46.0..sroa.46.0..sroa.46.2.168, ptr %.sroa.69, align 1, !tbaa !72
  %.sroa.20.0..sroa.20.0..sroa.20.1.162 = load i8, ptr %.sroa.20, align 1, !tbaa !72 ; 2 uses
  %i.bo = icmp ugt i8 %.sroa.20.0..sroa.20.0..sroa.20.1.162, %.sroa.132.0..sroa.132.7.187
  br i1 %i.bo, label %bb.q, label %.critedge.6.i.a

bb.q:                                             ; preds = %bb.p
  store i8 %.sroa.20.0..sroa.20.0..sroa.20.1.162, ptr %.sroa.46, align 1, !tbaa !72
  %.sroa.0.0..sroa.0.0..sroa.0.0.153 = load i8, ptr %.sroa.0, align 1, !tbaa !72 ; 2 uses
  %i.bp = icmp ugt i8 %.sroa.0.0..sroa.0.0..sroa.0.0.153, %.sroa.132.0..sroa.132.7.187
  br i1 %i.bp, label %bb.r, label %.critedge.6.i.a

bb.r:                                             ; preds = %bb.q
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.153, ptr %.sroa.20, align 1, !tbaa !72
  br label %.critedge.6.i.a

.critedge.6.i.a:                                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %32, %30, %28, %.critedge.5.i.a
  %.0.in.lcssa.6.i.sroa.phi = phi ptr [ %.sroa.0, %bb.r ], [ %.sroa.132, %.critedge.5.i.a ], [ %.sroa.121, %28 ], [ %.sroa.20, %bb.q ], [ %.sroa.107, %30 ], [ %.sroa.69, %bb.o ], [ %.sroa.89, %32 ], [ %.sroa.46, %bb.p ]
  store i8 %.sroa.132.0..sroa.132.7.187, ptr %.0.in.lcssa.6.i.sroa.phi, align 1, !tbaa !72
  %.sroa.132.0..sroa.132.0..sroa.132.7. = load i8, ptr %.sroa.132, align 1, !tbaa !72
  %i.bq = icmp ugt i8 %.sroa.132.0..sroa.132.0..sroa.132.7., %i.ax
  br i1 %i.bq, label %34, label %_ZL10insertSortPhi.exit.a

34:                                               ; preds = %.critedge.6.i.a
  %.sroa.121.0..sroa.121.0..sroa.121.6. = load i8, ptr %.sroa.121, align 1, !tbaa !72
  %35 = icmp ugt i8 %.sroa.121.0..sroa.121.0..sroa.121.6., %i.ax
  br i1 %35, label %36, label %_ZL10insertSortPhi.exit.a

36:                                               ; preds = %34
  %.sroa.107.0..sroa.107.0..sroa.107.5.182 = load i8, ptr %.sroa.107, align 1, !tbaa !72
  %37 = icmp ugt i8 %.sroa.107.0..sroa.107.0..sroa.107.5.182, %i.ax
  br i1 %37, label %38, label %_ZL10insertSortPhi.exit.a

38:                                               ; preds = %36
  %.sroa.89.0..sroa.89.0..sroa.89.4.178 = load i8, ptr %.sroa.89, align 1, !tbaa !72
  %39 = icmp ugt i8 %.sroa.89.0..sroa.89.0..sroa.89.4.178, %i.ax
  br i1 %39, label %40, label %_ZL10insertSortPhi.exit.a

40:                                               ; preds = %38
  %.sroa.69.0..sroa.69.0..sroa.69.3.174 = load i8, ptr %.sroa.69, align 1, !tbaa !72 ; 2 uses
  %41 = icmp ugt i8 %.sroa.69.0..sroa.69.0..sroa.69.3.174, %i.ax
  br i1 %41, label %bb.s, label %_ZL10insertSortPhi.exit.a

bb.s:                                             ; preds = %40
  store i8 %.sroa.69.0..sroa.69.0..sroa.69.3.174, ptr %.sroa.89, align 1, !tbaa !72
  %.sroa.46.0..sroa.46.0..sroa.46.2.169 = load i8, ptr %.sroa.46, align 1, !tbaa !72 ; 2 uses
  %i.br = icmp ugt i8 %.sroa.46.0..sroa.46.0..sroa.46.2.169, %i.ax
  br i1 %i.br, label %bb.t, label %_ZL10insertSortPhi.exit.a

bb.t:                                             ; preds = %bb.s
  store i8 %.sroa.46.0..sroa.46.0..sroa.46.2.169, ptr %.sroa.69, align 1, !tbaa !72
  %.sroa.20.0..sroa.20.0..sroa.20.1.163 = load i8, ptr %.sroa.20, align 1, !tbaa !72 ; 2 uses
  %i.bs = icmp ugt i8 %.sroa.20.0..sroa.20.0..sroa.20.1.163, %i.ax
  br i1 %i.bs, label %bb.u, label %_ZL10insertSortPhi.exit.a

bb.u:                                             ; preds = %bb.t
  store i8 %.sroa.20.0..sroa.20.0..sroa.20.1.163, ptr %.sroa.46, align 1, !tbaa !72
  %.sroa.0.0..sroa.0.0..sroa.0.0.152 = load i8, ptr %.sroa.0, align 1, !tbaa !72 ; 2 uses
  %i.bt = icmp ugt i8 %.sroa.0.0..sroa.0.0..sroa.0.0.152, %i.ax
  br i1 %i.bt, label %bb.v, label %_ZL10insertSortPhi.exit.a

bb.v:                                             ; preds = %bb.u
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.152, ptr %.sroa.20, align 1, !tbaa !72
  br label %_ZL10insertSortPhi.exit.a

_ZL10insertSortPhi.exit.a:                        ; preds = %.critedge.6.i.a, %34, %36, %38, %40, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.in.lcssa.7.i.sroa.phi = phi ptr [ %.sroa.0, %bb.v ], [ %.sroa.140, %.critedge.6.i.a ], [ %.sroa.132, %34 ], [ %.sroa.20, %bb.u ], [ %.sroa.121, %36 ], [ %.sroa.69, %bb.s ], [ %.sroa.107, %38 ], [ %.sroa.46, %bb.t ], [ %.sroa.89, %40 ]
  store i8 %i.ax, ptr %.0.in.lcssa.7.i.sroa.phi, align 1, !tbaa !72
  %.sroa.89.0..sroa.89.0..sroa.89.4.181 = load i8, ptr %.sroa.89, align 1, !tbaa !72
  %42 = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 %.sroa.89.0..sroa.89.0..sroa.89.4.181, ptr %42, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.89)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.107)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.121)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.132)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.140)
  br label %bb.ai

bb.w:                                             ; preds = %.preheader
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.v
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %i.as
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 16777215
  %i.bz = add nuw nsw i32 %i.by, %i.bc
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !72  ; 3 uses
  %.not92.a = icmp eq i8 %i.cc, 0
  br i1 %.not92.a, label %44, label %43

43:                                               ; preds = %bb.w
  store i8 %i.cc, ptr %.sroa.0, align 1, !tbaa !72
  br label %44

44:                                               ; preds = %43, %bb.w
  %.sroa.0.0..sroa.0.0.189 = phi i8 [ %i.cc, %43 ], [ %i.ax, %bb.w ] ; 3 uses
  %45 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ca
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 6
  %49 = and i32 %48, 63                           ; 2 uses
  %.not93 = icmp eq i32 %49, 63
  br i1 %.not93, label %bb.y, label %bb.x

bb.x:                                             ; preds = %44
  %i.cd = getelementptr [4 x i8], ptr %i.bu, i64 %i.as
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.x
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = and i32 %i.cf, 16777215
  %i.ch = add nuw nsw i32 %i.cg, %49
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !72  ; 3 uses
  %.not94 = icmp eq i8 %i.ck, 0
  br i1 %.not94, label %bb.y, label %50

50:                                               ; preds = %bb.x
  store i8 %i.ck, ptr %.sroa.20, align 1, !tbaa !72
  br label %bb.y

bb.y:                                             ; preds = %44, %50, %bb.x, %.preheader
  %.sroa.0.0..sroa.0.0. = phi i8 [ %.sroa.0.0..sroa.0.0.189, %44 ], [ %.sroa.0.0..sroa.0.0.189, %50 ], [ %.sroa.0.0..sroa.0.0.189, %bb.x ], [ %i.ax, %.preheader ] ; 2 uses
  %.sroa.20.0..sroa.20.1.165 = phi i8 [ %i.ax, %44 ], [ %i.ck, %50 ], [ %i.ax, %bb.x ], [ %i.ax, %.preheader ] ; 2 uses
  %i.cl = lshr i32 %i.bb, 6
  %i.cm = and i32 %i.cl, 63                       ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 63
  br i1 %i.cn, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.z
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv144
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 16777215
  %i.ct = add nuw nsw i32 %i.cs, %i.cm
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !72  ; 3 uses
  %.not92.1.a = icmp eq i8 %i.cw, 0
  br i1 %.not92.1.a, label %52, label %51

51:                                               ; preds = %bb.z
  store i8 %i.cw, ptr %.sroa.46, align 1, !tbaa !72
  br label %52

52:                                               ; preds = %51, %bb.z
  %.sroa.46.0..sroa.46.2.171191 = phi i8 [ %i.cw, %51 ], [ %i.ax, %bb.z ] ; 3 uses
  %53 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cu
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 4
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 12
  %57 = and i32 %56, 63                           ; 2 uses
  %.not93.1 = icmp eq i32 %57, 63
  br i1 %.not93.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %52
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv144
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.z
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = and i32 %i.da, 16777215
  %i.dc = add nuw nsw i32 %i.db, %57
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !72  ; 3 uses
  %.not94.1 = icmp eq i8 %i.df, 0
  br i1 %.not94.1, label %bb.ab, label %58

58:                                               ; preds = %bb.aa
  store i8 %i.df, ptr %.sroa.69, align 1, !tbaa !72
  br label %bb.ab

bb.ab:                                            ; preds = %58, %bb.aa, %52, %bb.y
  %.sroa.69.0..sroa.69.3.176 = phi i8 [ %i.df, %58 ], [ %i.ax, %bb.aa ], [ %i.ax, %52 ], [ %i.ax, %bb.y ] ; 4 uses
  %.sroa.46.0..sroa.46.2.171 = phi i8 [ %.sroa.46.0..sroa.46.2.171191, %58 ], [ %.sroa.46.0..sroa.46.2.171191, %bb.aa ], [ %.sroa.46.0..sroa.46.2.171191, %52 ], [ %i.ax, %bb.y ] ; 3 uses
  %i.dg = lshr i32 %i.bb, 12
  %i.dh = and i32 %i.dg, 63                       ; 2 uses
  %i.di = icmp eq i32 %i.dh, 63
  br i1 %i.di, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.v
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.at
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = and i32 %i.dm, 16777215
  %i.do = add nuw nsw i32 %i.dn, %i.dh
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !72  ; 3 uses
  %.not92.2.a = icmp eq i8 %i.dr, 0
  br i1 %.not92.2.a, label %60, label %59

59:                                               ; preds = %bb.ac
  store i8 %i.dr, ptr %.sroa.89, align 1, !tbaa !72
  br label %60

60:                                               ; preds = %59, %bb.ac
  %.sroa.89.0..sroa.89.4.180194 = phi i8 [ %i.dr, %59 ], [ %i.ax, %bb.ac ] ; 3 uses
  %61 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dp
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 4
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 18
  %65 = and i32 %64, 63                           ; 2 uses
  %.not93.2 = icmp eq i32 %65, 63
  br i1 %.not93.2, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %60
  %i.ds = getelementptr [4 x i8], ptr %i.dj, i64 %i.at
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.ab
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 16777215
  %i.dw = add nuw nsw i32 %i.dv, %65
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !72  ; 3 uses
  %.not94.2 = icmp eq i8 %i.dz, 0
  br i1 %.not94.2, label %bb.ae, label %66

66:                                               ; preds = %bb.ad
  store i8 %i.dz, ptr %.sroa.107, align 1, !tbaa !72
  br label %bb.ae

bb.ae:                                            ; preds = %66, %bb.ad, %60, %bb.ab
  %.sroa.107.0..sroa.107.5.184 = phi i8 [ %i.dz, %66 ], [ %i.ax, %bb.ad ], [ %i.ax, %60 ], [ %i.ax, %bb.ab ] ; 6 uses
  %.sroa.89.0..sroa.89.4.180 = phi i8 [ %.sroa.89.0..sroa.89.4.180194, %66 ], [ %.sroa.89.0..sroa.89.4.180194, %bb.ad ], [ %.sroa.89.0..sroa.89.4.180194, %60 ], [ %i.ax, %bb.ab ] ; 5 uses
  %i.ea = lshr i32 %i.bb, 18
  %i.eb = and i32 %i.ea, 63                       ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 63
  br i1 %i.ec, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = load ptr, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.ad
  %i.ef = getelementptr [4 x i8], ptr %i.ee, i64 %indvars.iv144
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = and i32 %i.eg, 16777215
  %i.ei = add nuw nsw i32 %i.eh, %i.eb
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !72  ; 3 uses
  %.not92.3.a = icmp eq i8 %i.el, 0
  br i1 %.not92.3.a, label %68, label %67

67:                                               ; preds = %bb.af
  store i8 %i.el, ptr %.sroa.121, align 1, !tbaa !72
  br label %68

68:                                               ; preds = %67, %bb.af
  %.sroa.121.0..sroa.121.6.186197 = phi i8 [ %i.el, %67 ], [ %i.ax, %bb.af ] ; 3 uses
  %69 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ej
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 63                           ; 2 uses
  %.not93.3 = icmp eq i32 %72, 63
  br i1 %.not93.3, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %68
  %i.em = getelementptr [4 x i8], ptr %i.ed, i64 %indvars.iv144
  %i.en = getelementptr i8, ptr %i.em, i64 -4
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %i.ad
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 16777215
  %i.er = add nuw nsw i32 %i.eq, %72
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !72  ; 3 uses
  %.not94.3 = icmp eq i8 %i.eu, 0
  br i1 %.not94.3, label %bb.ah, label %73

73:                                               ; preds = %bb.ag
  store i8 %i.eu, ptr %.sroa.132, align 1, !tbaa !72
  br label %bb.ah

bb.ah:                                            ; preds = %73, %bb.ag, %68, %bb.ae
  %.sroa.132.0..sroa.132.7.187 = phi i8 [ %i.eu, %73 ], [ %i.ax, %bb.ag ], [ %i.ax, %68 ], [ %i.ax, %bb.ae ] ; 8 uses
  %.sroa.121.0..sroa.121.6.186 = phi i8 [ %.sroa.121.0..sroa.121.6.186197, %73 ], [ %.sroa.121.0..sroa.121.6.186197, %bb.ag ], [ %.sroa.121.0..sroa.121.6.186197, %68 ], [ %i.ax, %bb.ae ] ; 7 uses
  %i.ev = icmp ugt i8 %.sroa.0.0..sroa.0.0., %.sroa.20.0..sroa.20.1.165
  br i1 %i.ev, label %4, label %.critedge.i

bb.ai:                                            ; preds = %_ZL10insertSortPhi.exit.a, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.ew, label %.lr.ph, label %._crit_edge

bb.aj:                                            ; preds = %._crit_edge139.split, %bb.c
  %i.ex = load i8, ptr %i.d, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ak, label %_ZN13rcScopedTimerD2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ez = load ptr, ptr %0, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8
  tail call void %i.fb(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 9) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.aj, %bb.ak
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @_Z13rcMarkBoxAreaP9rcContextPKfS2_hR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 14) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %4, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !75
  %i.n = load float, ptr %2, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !75
  %i.q = load <2 x float>, ptr %1, align 4, !tbaa !75
  %i.r = load <2 x float>, ptr %i.k, align 4, !tbaa !75 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = load <3 x float>, ptr %i.j, align 4, !tbaa !75 ; 2 uses
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.v = insertelement <4 x float> poison, float %i.m, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.x, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.z = fsub <4 x float> %i.y, %i.u
  %i.aa = fdiv <4 x float> %i.z, %i.s             ; 4 uses
  %i.ab = extractelement <4 x float> %i.aa, i64 0
  %i.ac = fptosi float %i.ab to i32               ; 2 uses
  %i.ad = extractelement <4 x float> %i.aa, i64 1
  %i.ae = fptosi float %i.ad to i32
  %i.af = extractelement <4 x float> %i.aa, i64 2
  %i.ag = fptosi float %i.af to i32               ; 2 uses
  %i.ah = extractelement <4 x float> %i.aa, i64 3
  %i.ai = fptosi float %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !75
  %.not = icmp sgt i32 %i.g, %i.ac
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.n, i64 1
  %i.an = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ao = fsub <2 x float> %i.am, %i.an
  %i.ap = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.ao, %i.ap
  %i.ar = fptosi <2 x float> %i.aq to <2 x i32>   ; 3 uses
  %i.as = icmp sgt <2 x i32> %i.ar, splat (i32 -1) ; 2 uses
  %i.at = extractelement <2 x i1> %i.as, i64 1
  %or.cond81.not85.not89 = select i1 %i.at, i1 %.not, i1 false
  %i.au = extractelement <2 x i1> %i.as, i64 0
  %or.cond82.not87 = select i1 %or.cond81.not85.not89, i1 %i.au, i1 false
  %.not76 = icmp sgt i32 %i.i, %i.ag
  %or.cond83 = select i1 %or.cond82.not87, i1 %.not76, i1 false
  br i1 %or.cond83, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0) ; 2 uses
  %i.av = add nsw i32 %i.g, -1
  %i.aw = extractelement <2 x i32> %i.ar, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.av) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0) ; 2 uses
  %i.ax = add nsw i32 %i.i, -1
  %i.ay = extractelement <2 x i32> %i.ar, i64 0
  %.067 = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.ax) ; 2 uses
  %.not7995 = icmp sgt i32 %spec.store.select1, %.067
  br i1 %.not7995, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not8091 = icmp sgt i32 %spec.store.select, %spec.select
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 88
  br i1 %.not8091, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bc = zext nneg i32 %spec.store.select to i64
  %i.bd = add nuw nsw i32 %spec.select, 1
  %i.be = zext nneg i32 %spec.store.select1 to i64
  %i.bf = sext i32 %i.g to i64
  %i.bg = add nuw nsw i32 %.067, 1
  %wide.trip.count105 = zext nneg i32 %i.bg to i64
  %wide.trip.count = zext nneg i32 %i.bd to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge94
  %indvars.iv102 = phi i64 [ %i.be, %.preheader.preheader ], [ %indvars.iv.next103, %._crit_edge94 ] ; 2 uses
  %i.bh = mul nsw i64 %indvars.iv102, %i.bf
  br label %bb.d

._crit_edge94:                                    ; preds = %._crit_edge
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.preheader

bb.d:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv99 = phi i64 [ %i.bc, %.preheader ], [ %indvars.iv.next100, %._crit_edge ] ; 2 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %indvars.iv99
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = load i32, ptr %i.bk, align 4            ; 3 uses
  %i.bm = lshr i32 %i.bl, 24                      ; 2 uses
  %.not97 = icmp eq i32 %i.bm, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bn = and i32 %i.bl, 16777215
  %i.bo = add nuw nsw i32 %i.bn, %i.bm
  %i.bp = and i32 %i.bl, 16777215
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = zext nneg i32 %i.bo to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge94, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.bq, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !77
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.ae
  %i.bx = icmp sgt i32 %i.bv, %i.ai
  %or.cond = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !72
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %3, ptr %i.bz, align 1, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = icmp samesign ult i64 %indvars.iv.next, %i.br
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %._crit_edge94, %bb.c, %.preheader.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.cd = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.h, label %_ZN13rcScopedTimerD2Ev.exit

bb.h:                                             ; preds = %.loopexit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 14) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z20rcMarkConvexPolyAreaP9rcContextPKfiffhR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 16) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %6, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = load float, ptr %1, align 4, !tbaa !75   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !75 ; 4 uses
  %i.m = icmp sgt i32 %2, 1
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
end_hunk_0
begin_hunk_1_@_Z18rcMarkCylinderAreaP9rcContextPKfffhR20rcCompactHeightfield
define void @_Z18rcMarkCylinderAreaP9rcContextPKfffhR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 15) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %5, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = load float, ptr %1, align 4, !tbaa !75   ; 2 uses
  %i.k = fsub float %i.j, %2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !75 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !75 ; 2 uses
  %i.p = fsub float %i.o, %2
  %i.q = fadd float %3, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !75 ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = load <3 x float>, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.x = shufflevector <3 x float> %i.w, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.y = insertelement <4 x float> poison, float %i.k, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.m, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.p, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.q, i64 3
  %i.ac = fsub <4 x float> %i.ab, %i.x
  %i.ad = fdiv <4 x float> %i.ac, %i.v            ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fptosi float %i.ae to i32               ; 2 uses
  %i.ag = extractelement <4 x float> %i.ad, i64 1
  %i.ah = fptosi float %i.ag to i32
  %i.ai = extractelement <4 x float> %i.ad, i64 2
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  %i.ak = extractelement <4 x float> %i.ad, i64 3
  %i.al = fptosi float %i.ak to i32
  %.not = icmp sgt i32 %i.g, %i.af
  %i.am = insertelement <2 x float> poison, float %2, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.j, i64 1
  %i.aq = fadd <2 x float> %i.an, %i.ap
  %i.ar = shufflevector <3 x float> %i.w, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.as, %i.at
  %i.av = fptosi <2 x float> %i.au to <2 x i32>   ; 3 uses
  %i.aw = icmp sgt <2 x i32> %i.av, splat (i32 -1) ; 2 uses
  %i.ax = extractelement <2 x i1> %i.aw, i64 1
  %or.cond106.not110.not114 = select i1 %i.ax, i1 %.not, i1 false
  %i.ay = extractelement <2 x i1> %i.aw, i64 0
  %or.cond107.not112 = select i1 %or.cond106.not110.not114, i1 %i.ay, i1 false
  %.not99 = icmp sgt i32 %i.i, %i.aj
  %or.cond108 = select i1 %or.cond107.not112, i1 %.not99, i1 false
  br i1 %or.cond108, label %bb.c, label %.loopexit116

bb.c:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0) ; 2 uses
  %i.az = add nsw i32 %i.g, -1
  %i.ba = extractelement <2 x i32> %i.av, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.az) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0) ; 2 uses
  %i.bb = add nsw i32 %i.i, -1
  %i.bc = extractelement <2 x i32> %i.av, i64 0
  %.090 = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.bb) ; 2 uses
  %i.bd = fmul float %2, %2
  %.not102121 = icmp sgt i32 %spec.store.select1, %.090
  br i1 %.not102121, label %.loopexit116, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %bb.c
  %.not103118 = icmp sgt i32 %spec.store.select, %spec.select
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 72
  br i1 %.not103118, label %.loopexit116, label %.preheader115.preheader

.preheader115.preheader:                          ; preds = %.preheader115.lr.ph
  %i.bh = zext nneg i32 %spec.store.select to i64
  %i.bi = add nuw nsw i32 %spec.select, 1
  %i.bj = zext nneg i32 %spec.store.select1 to i64
  %i.bk = sext i32 %i.g to i64
  %i.bl = add nuw nsw i32 %.090, 1
  %wide.trip.count131 = zext nneg i32 %i.bl to i64
  %wide.trip.count = zext nneg i32 %i.bi to i64
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %._crit_edge
  %indvars.iv128 = phi i64 [ %i.bj, %.preheader115.preheader ], [ %indvars.iv.next129, %._crit_edge ] ; 3 uses
  %i.bm = mul nsw i64 %indvars.iv128, %i.bk
  %i.bn = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = fadd float %i.bo, 5.000000e-01
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 1
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit116, label %.preheader115

bb.d:                                             ; preds = %.preheader115, %.loopexit
  %indvars.iv125 = phi i64 [ %i.bh, %.preheader115 ], [ %indvars.iv.next126, %.loopexit ] ; 3 uses
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv125
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.bm
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %i.bv = lshr i32 %i.bu, 24                      ; 2 uses
  %i.bw = load float, ptr %i.r, align 4, !tbaa !75
  %i.bx = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = fadd float %i.by, 5.000000e-01
  %i.ca = load float, ptr %i.s, align 4, !tbaa !78
  %i.cb = load float, ptr %i.t, align 4, !tbaa !75
  %i.cc = load float, ptr %1, align 4, !tbaa !75
  %i.cd = load float, ptr %i.n, align 4, !tbaa !75
  %i.ce = insertelement <2 x float> %i.bq, float %i.bz, i64 0
  %i.cf = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cb, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.ci)
  %i.ck = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.cd, i64 1
  %i.cm = fsub <2 x float> %i.cj, %i.cl           ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %i.cm           ; 2 uses
  %shift = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cn, %shift
  %i.co = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cp = fcmp ult float %i.co, %i.bd
  %i.cq = icmp ne i32 %i.bv, 0
  %or.cond123 = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond123, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.cr = and i32 %i.bu, 16777215
  %i.cs = add nuw nsw i32 %i.cr, %i.bv
  %i.ct = and i32 %i.bu, 16777215
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = zext nneg i32 %i.cs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.cu, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !72
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.da = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !77
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %.not104 = icmp slt i32 %i.dd, %i.ah
  %.not105 = icmp sgt i32 %i.dd, %i.al
  %or.cond = select i1 %.not104, i1 true, i1 %.not105
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %4, ptr %i.cx, align 1, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = icmp samesign ult i64 %indvars.iv.next, %i.cv
  br i1 %i.de, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.d
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

.loopexit116:                                     ; preds = %._crit_edge, %bb.c, %.preheader115.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.df = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.h, label %_ZN13rcScopedTimerD2Ev.exit

bb.h:                                             ; preds = %.loopexit116
  %i.dh = load ptr, ptr %0, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 15) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit116, %bb.h
  ret void
}

declare noundef float @_Z6rcSqrtf(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !32, line: 39, baseType: !38, size: 32, elements: !68, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !32, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"short", !11, i64 0}
!16 = !{!"float", !11, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTS13rcCompactCell", !17, i64 0}
!19 = !{!"p1 _ZTS13rcCompactSpan", !17, i64 0}
!20 = !{!"p1 short", !17, i64 0}
!21 = !{!"p1 omnipotent char", !17, i64 0}
!22 = !{!"_ZTS20rcCompactHeightfield", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !15, i64 24, !15, i64 26, !11, i64 28, !11, i64 40, !16, i64 52, !16, i64 56, !18, i64 64, !19, i64 72, !20, i64 80, !21, i64 88}
!23 = !{!22, !12, i64 0}
!24 = !{!22, !12, i64 4}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"_ZTS9rcContext", !25, i64 8, !25, i64 9}
!27 = !{!26, !25, i64 9}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"vtable pointer", !10, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!35 = !{null, !33, !34}
!36 = !DISubroutineType(types: !35)
!37 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !1, file: !32, line: 176, type: !36, scopeLine: 176, containingType: !1, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!58 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!59 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!60 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!61 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!62 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!63 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!64 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!65 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!66 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!67 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!68 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!69 = !{!22, !12, i64 8}
!70 = !{!22, !18, i64 64}
!71 = !{!22, !21, i64 88}
!72 = !{!11, !11, i64 0}
!73 = !{!22, !19, i64 72}
!74 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !1, file: !32, line: 180, type: !36, scopeLine: 180, containingType: !1, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!75 = !{!16, !16, i64 0}
!76 = !{!"_ZTS13rcCompactSpan", !15, i64 0, !15, i64 2, !12, i64 4, !12, i64 7}
!77 = !{!76, !15, i64 0}
!78 = !{!22, !16, i64 52}
end_hunk_1
