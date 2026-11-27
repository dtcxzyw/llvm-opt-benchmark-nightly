Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 84
begin_hunk_0_@Gia_ManFromIfLogicHop:bb.a
  %.not = icmp eq i8 %i.cx, 0
  br i1 %.not, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %If_CutTruthW.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.da = getelementptr i8, ptr %3, i64 8
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph94, %bb.z
  %indvars.iv115 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next116, %bb.z ] ; 2 uses
  %.05792 = phi i32 [ 2, %.lr.ph94 ], [ %.2.lcssa, %bb.z ] ; 2 uses
  %i.db = sext i32 %.05792 to i64
  %i.dc = getelementptr inbounds i8, ptr %i.a, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !63
  %.fr = freeze i8 %i.dd                          ; 6 uses
  store i32 0, ptr %i.cy, align 4, !tbaa !56
  %.15876 = add i32 %.05792, 1                    ; 2 uses
  %.not97 = icmp eq i8 %.fr, 0
  br i1 %.not97, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.c
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !112
  %i.df = sext i32 %.15876 to i64
  br label %.lr.ph84.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dg = sext i32 %.15876 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %i.dg, %.lr.ph.preheader ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.05577 = phi i8 [ 0, %.lr.ph.preheader ], [ %i.ew, %Vec_IntPush.exit ]
  %i.dh = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !63  ; 2 uses
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %.val66 = load i64, ptr %i.h, align 4
  %i.dk = trunc i64 %.val66 to i32
  %i.dl = lshr i32 %i.dk, 24                      ; 2 uses
  %i.dm = icmp samesign ugt i32 %i.dl, %i.dj
  %i.dn = load i32, ptr %i.cy, align 4, !tbaa !56 ; 13 uses
  %i.do = load i32, ptr %4, align 8, !tbaa !64
  %i.dp = icmp eq i32 %i.dn, %i.do                ; 2 uses
  br i1 %i.dm, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %i.da, align 8, !tbaa !51
  %i.dq = zext i8 %i.di to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !19 ; 3 uses
  br i1 %i.dp, label %bb.e, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.d
  %.pre121 = load ptr, ptr %i.cz, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.dt = icmp slt i32 %i.dn, 16
  br i1 %i.dt, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.du = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.du, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dv = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.du, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.dw = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.dx = icmp samesign ult i32 %i.dn, 1073741823
  %i.dy = shl nuw nsw i32 %i.dn, 1
  %spec.select.i = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.dn, %spec.select.i
  %.pre122 = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %.pre122, null
  %i.dz = zext nneg i32 %spec.select.i to i64
  %i.ea = shl nuw nsw i64 %i.dz, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = call ptr @realloc(ptr noundef nonnull %.pre122, i64 noundef %i.ea) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.ec = call noalias ptr @malloc(i64 noundef %i.ea) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %i.ed = phi ptr [ %i.dw, %bb.h ], [ %i.dv, %bb.g ], [ %i.eb, %bb.k ], [ %i.ec, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ]
  store ptr %i.ed, ptr %i.cz, align 8, !tbaa !51
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !64
  %.pre123 = load i32, ptr %i.cy, align 4, !tbaa !56
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %.lr.ph
  %i.ee = sub nuw nsw i32 %i.dj, %i.dl
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !19 ; 3 uses
  br i1 %i.dp, label %bb.n, label %.Vec_IntPush.exit74_crit_edge

.Vec_IntPush.exit74_crit_edge:                    ; preds = %bb.m
  %.pre = load ptr, ptr %i.cz, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ei = icmp slt i32 %i.dn, 16
  br i1 %i.ei, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ej = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i72 = icmp eq ptr %i.ej, null
  br i1 %.not9.i.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ej, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i70

bb.q:                                             ; preds = %bb.o
  %i.el = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i70

bb.r:                                             ; preds = %bb.n
  %i.em = icmp samesign ult i32 %i.dn, 1073741823
  %i.en = shl nuw nsw i32 %i.dn, 1
  %spec.select.i67 = select i1 %i.em, i32 %i.en, i32 2147483647 ; 4 uses
  %.not.i9.i68 = icmp samesign ult i32 %i.dn, %spec.select.i67
  %.pre119 = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i68, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i69 = icmp eq ptr %.pre119, null
  %i.eo = zext nneg i32 %spec.select.i67 to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2                ; 2 uses
  br i1 %.not9.i10.i69, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eq = call ptr @realloc(ptr noundef nonnull %.pre119, i64 noundef %i.ep) #30
  br label %Vec_IntGrow.exit11.sink.split.i70

bb.u:                                             ; preds = %bb.s
  %i.er = call noalias ptr @malloc(i64 noundef %i.ep) #31
  br label %Vec_IntGrow.exit11.sink.split.i70

Vec_IntGrow.exit11.sink.split.i70:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.es = phi ptr [ %i.el, %bb.q ], [ %i.ek, %bb.p ], [ %i.eq, %bb.t ], [ %i.er, %bb.u ] ; 2 uses
  %spec.select.sink.i71 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i67, %bb.t ], [ %spec.select.i67, %bb.u ]
  store ptr %i.es, ptr %i.cz, align 8, !tbaa !51
  store i32 %spec.select.sink.i71, ptr %4, align 8, !tbaa !64
  %.pre120 = load i32, ptr %i.cy, align 4, !tbaa !56
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntGrow.exit11.sink.split.i70, %bb.r, %.Vec_IntPush.exit74_crit_edge, %Vec_IntGrow.exit11.sink.split.i, %bb.i, %.Vec_IntPush.exit_crit_edge
  %.sink157 = phi i32 [ %.pre123, %Vec_IntGrow.exit11.sink.split.i ], [ %i.dn, %.Vec_IntPush.exit_crit_edge ], [ %i.dn, %bb.i ], [ %i.dn, %.Vec_IntPush.exit74_crit_edge ], [ %i.dn, %bb.r ], [ %.pre120, %Vec_IntGrow.exit11.sink.split.i70 ] ; 2 uses
  %.sink153 = phi ptr [ %i.ed, %Vec_IntGrow.exit11.sink.split.i ], [ %.pre121, %.Vec_IntPush.exit_crit_edge ], [ %.pre122, %bb.i ], [ %.pre, %.Vec_IntPush.exit74_crit_edge ], [ %.pre119, %bb.r ], [ %i.es, %Vec_IntGrow.exit11.sink.split.i70 ]
  %.sink = phi i32 [ %i.ds, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ds, %.Vec_IntPush.exit_crit_edge ], [ %i.ds, %bb.i ], [ %i.eh, %.Vec_IntPush.exit74_crit_edge ], [ %i.eh, %bb.r ], [ %i.eh, %Vec_IntGrow.exit11.sink.split.i70 ]
  %i.et = add nsw i32 %.sink157, 1
  store i32 %i.et, ptr %i.cy, align 4, !tbaa !56
  %i.eu = sext i32 %.sink157 to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %.sink153, i64 %i.eu
  store i32 %.sink, ptr %i.ev, align 4, !tbaa !19
  %i.ew = add nuw i8 %.05577, 1                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %exitcond.not = icmp eq i8 %i.ew, %.fr
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !112 ; 4 uses
  %i.ey = icmp ult i8 %.fr, 4
  br i1 %i.ey, label %.lr.ph84.preheader, label %.split

.split:                                           ; preds = %._crit_edge
  %i.ez = icmp ult i8 %.fr, 7
  %i.fa = zext i8 %.fr to i32                     ; 2 uses
  %i.fb = call i32 @llvm.umin.i32(i32 %i.fa, i32 6)
  %i.fc = add nsw i32 %i.fb, -3
  %i.fd = shl nuw nsw i32 1, %i.fc                ; 3 uses
  br i1 %i.ez, label %.lr.ph84.preheader, label %bb.v

bb.v:                                             ; preds = %.split
  %i.fe = add nsw i32 %i.fa, -6                   ; 2 uses
  %i.ff = shl nuw i32 1, %i.fe
  %i.fg = and i32 %i.ff, 255
  %.not98 = icmp ugt i32 %i.fe, 7
  br i1 %.not98, label %._crit_edge85, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %._crit_edge, %.split, %.thread, %bb.v
  %i.fh = phi i32 [ %i.fg, %bb.v ], [ 1, %.split ], [ 1, %.thread ], [ 1, %._crit_edge ]
  %i.fi = phi ptr [ %i.ex, %bb.v ], [ %i.ex, %.split ], [ %i.de, %.thread ], [ %i.ex, %._crit_edge ] ; 4 uses
  %.158.lcssa138141150 = phi i64 [ %indvars.iv.next, %bb.v ], [ %indvars.iv.next, %.split ], [ %i.df, %.thread ], [ %indvars.iv.next, %._crit_edge ]
  %i.fj = phi i32 [ %i.fd, %bb.v ], [ %i.fd, %.split ], [ 1, %.thread ], [ 1, %._crit_edge ] ; 7 uses
  %wide.trip.count = zext nneg i32 %i.fh to i64   ; 2 uses
  %i.fk = call i32 @llvm.usub.sat.i32(i32 %i.fj, i32 1)
  %i.fl = call i32 @llvm.usub.sat.i32(i32 %i.fj, i32 1)
  %i.fm = zext nneg i32 %i.fl to i64
  %scevgep181 = getelementptr i8, ptr %scevgep, i64 %i.fm
  %i.fn = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep182 = getelementptr i8, ptr %i.fi, i64 %i.fn
  %min.iters.check184 = icmp samesign ult i32 %i.fj, 6
  %i.fo = and i32 %i.fk, 255
  %i.fp = icmp eq i32 %i.fo, 255
  %i.fq = icmp samesign ugt i32 %i.fj, 256
  %i.fr = or i1 %i.fp, %i.fq
  %i.fs = and i32 %i.fj, 508
  %n.vec187 = zext nneg i32 %i.fs to i64          ; 2 uses
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.loopexit
  %indvars.iv110 = phi i64 [ 0, %.lr.ph84.preheader ], [ %indvars.iv.next111, %.loopexit ] ; 2 uses
  %.281 = phi i64 [ %.158.lcssa138141150, %.lr.ph84.preheader ], [ %indvars.iv.next108.lcssa, %.loopexit ] ; 5 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv110 ; 3 uses
  store i64 0, ptr %i.ft, align 8, !tbaa !110
  %brmerge = select i1 %min.iters.check184, i1 true, i1 %i.fr
  br i1 %brmerge, label %scalar.ph183.preheader, label %vector.memcheck185

scalar.ph183.preheader:                           ; preds = %.lr.ph84, %vector.memcheck185
  br label %scalar.ph183

vector.memcheck185:                               ; preds = %.lr.ph84
  %i.fu = getelementptr i8, ptr %i.a, i64 %.281
  %i.fv = getelementptr i8, ptr %scevgep181, i64 %.281
  %bound0 = icmp ult ptr %i.fi, %i.fv
  %bound1 = icmp ult ptr %i.fu, %scevgep182
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph183.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck185
  %i.fw = add i64 %.281, %n.vec187
  %i.fx = getelementptr i8, ptr %i.a, i64 %.281
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next193, %vector.body188 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph186 ], [ %vec.ind.next, %vector.body188 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph186 ], [ %i.gg, %vector.body188 ]
  %vec.phi190 = phi <2 x i64> [ zeroinitializer, %vector.ph186 ], [ %i.gh, %vector.body188 ]
  %i.fy = getelementptr i8, ptr %i.fx, i64 %index189 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %wide.load191 = load <2 x i8>, ptr %i.fy, align 1, !tbaa !63, !alias.scope !263
  %wide.load192 = load <2 x i8>, ptr %i.fz, align 1, !tbaa !63, !alias.scope !263
  %i.ga = zext <2 x i8> %wide.load191 to <2 x i64>
  %i.gb = zext <2 x i8> %wide.load192 to <2 x i64>
  %i.gc = shl nuw nsw <2 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 3)
  %i.gd = add <2 x i64> %step.add, splat (i64 16)
  %i.ge = shl <2 x i64> %i.ga, %i.gc
  %i.gf = shl <2 x i64> %i.gb, %i.gd
  %i.gg = or <2 x i64> %i.ge, %vec.phi            ; 2 uses
  %i.gh = or <2 x i64> %i.gf, %vec.phi190         ; 2 uses
  %index.next193 = add nuw i64 %index189, 4       ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.gi = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.gi, label %middle.block194, label %vector.body188, !llvm.loop !257

middle.block194:                                  ; preds = %vector.body188
  %bin.rdx = or <2 x i64> %i.gh, %i.gg
  %i.gj = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  store i64 %i.gj, ptr %i.ft, align 8, !tbaa !110, !alias.scope !264, !noalias !263
  br label %.loopexit

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %scalar.ph183 ], [ %.281, %scalar.ph183.preheader ] ; 2 uses
  %indvars.iv105 = phi i32 [ %indvars.iv.next106, %scalar.ph183 ], [ 0, %scalar.ph183.preheader ]
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph183 ], [ 0, %scalar.ph183.preheader ] ; 2 uses
  %i.gk = phi i64 [ %i.gq, %scalar.ph183 ], [ 0, %scalar.ph183.preheader ]
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv107
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !63
  %i.gn = zext i8 %i.gm to i64
  %i.go = shl nuw nsw i64 %indvars.iv103, 3
  %i.gp = shl i64 %i.gn, %i.go
  %i.gq = or i64 %i.gp, %i.gk                     ; 2 uses
  store i64 %i.gq, ptr %i.ft, align 8, !tbaa !110
  %indvars.iv.next106 = add i32 %indvars.iv105, 1 ; 2 uses
  %i.gr = and i32 %indvars.iv.next106, 255
  %i.gs = icmp samesign ugt i32 %i.fj, %i.gr
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  br i1 %i.gs, label %scalar.ph183, label %.loopexit, !llvm.loop !259

.loopexit:                                        ; preds = %scalar.ph183, %middle.block194
  %indvars.iv.next108.lcssa = phi i64 [ %i.fw, %middle.block194 ], [ %indvars.iv.next108, %scalar.ph183 ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond114.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !260

._crit_edge85:                                    ; preds = %.loopexit, %bb.v
  %i.gt = phi ptr [ %i.ex, %bb.v ], [ %i.fi, %.loopexit ] ; 5 uses
  %i.gu = phi i32 [ %i.fd, %bb.v ], [ %i.fj, %.loopexit ] ; 2 uses
  %.2.lcssa.in = phi i64 [ %indvars.iv.next, %bb.v ], [ %indvars.iv.next108.lcssa, %.loopexit ]
  %.2.lcssa = trunc i64 %.2.lcssa.in to i32
  %i.gv = icmp eq i8 %.fr, 2
  br i1 %i.gv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge85
  %i.gw = load i64, ptr %i.gt, align 8, !tbaa !110 ; 2 uses
  %i.gx = shl i64 %i.gw, 4
  %i.gy = or i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %i.gt, align 8, !tbaa !110
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge85
  %i.gz = icmp samesign ult i32 %i.gu, 4
  br i1 %i.gz, label %.lr.ph89, label %bb.z

.lr.ph89:                                         ; preds = %bb.x
  %.promoted91 = load i64, ptr %i.gt, align 8, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph89, %bb.y
  %i.ha = phi i64 [ %.promoted91, %.lr.ph89 ], [ %i.he, %bb.y ] ; 2 uses
  %.087 = phi i32 [ %i.gu, %.lr.ph89 ], [ %i.hf, %bb.y ] ; 3 uses
  %i.hb = shl nuw nsw i32 %.087, 3
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = shl i64 %i.ha, %i.hc
  %i.he = or i64 %i.hd, %i.ha                     ; 2 uses
  %i.hf = shl nuw nsw i32 %.087, 1
  %i.hg = icmp ult i32 %.087, 2
  br i1 %i.hg, label %bb.y, label %._crit_edge90, !llvm.loop !261

._crit_edge90:                                    ; preds = %bb.y
  store i64 %i.he, ptr %i.gt, align 8, !tbaa !110
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge90, %bb.x
  %i.hh = call i32 @Gia_ManFromIfLogicCreateLut(ptr noundef %0, ptr noundef %i.gt, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv115
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !19
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 3 uses
  %i.hj = load i8, ptr %i.cw, align 1, !tbaa !63
  %i.hk = zext i8 %i.hj to i64
  %i.hl = icmp samesign ult i64 %indvars.iv.next116, %i.hk
  br i1 %i.hl, label %bb.c, label %._crit_edge95, !llvm.loop !262

._crit_edge95:                                    ; preds = %bb.z, %If_CutTruthW.exit
  %.056.lcssa = phi i64 [ 0, %If_CutTruthW.exit ], [ %indvars.iv.next116, %bb.z ]
  %i.hm = getelementptr [4 x i8], ptr %i.c, i64 %.056.lcssa
  %i.hn = getelementptr i8, ptr %i.hm, i64 -4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %i.ho
}

declare i32 @acd_decompose(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @Gia_ManNodeIfToGia_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %.val51 = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %.not = icmp eq i32 %.val51, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !96   ; 7 uses
  %i.d = load i32, ptr %3, align 8, !tbaa !266
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %Vec_PtrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.c, 16
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.h, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.h, i64 noundef 128) #30
  br label %Vec_PtrGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  store ptr %i.k, ptr %i.g, align 8, !tbaa !98
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i32 %i.c, 1073741823
  %i.m = shl nuw nsw i32 %i.c, 1
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.c, %spec.select.i
  br i1 %.not.i10.i, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.o, null
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.q) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
end_hunk_0
