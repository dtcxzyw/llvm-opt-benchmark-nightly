inline.NumInlined: 428
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Acec_TreeVerifyConnections:bb.a

bb.k:                                             ; preds = %bb.j
  %i.cn = add nuw nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.co = icmp slt i64 %indvars.iv.next130, %i.bp
  br i1 %i.co, label %bb.f, label %.critedge6, !llvm.loop !74

.critedge6:                                       ; preds = %bb.l, %bb.e
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.cp = icmp samesign ult i64 %indvars.iv.next133, %i.p
  br i1 %i.cp, label %bb.e, label %.critedge4, !llvm.loop !75

.critedge4:                                       ; preds = %.critedge6, %Vec_IntStartFull.exit
  %i.cq = icmp sgt i32 %.val76, 0
  br i1 %i.cq, label %.lr.ph.i, label %.critedge8

.lr.ph.i:                                         ; preds = %.critedge4
  %wide.trip.count.i = zext nneg i32 %.val76 to i64 ; 10 uses
  %min.iters.check = icmp ult i32 %.val76, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi156 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !27
  %wide.load157 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !27
  %i.ct = icmp sgt <4 x i32> %wide.load, splat (i32 -1)
  %i.cu = icmp sgt <4 x i32> %wide.load157, splat (i32 -1)
  %i.cv = zext <4 x i1> %i.ct to <4 x i32>
  %i.cw = zext <4 x i1> %i.cu to <4 x i32>
  %i.cx = add <4 x i32> %vec.phi, %i.cv           ; 2 uses
  %i.cy = add <4 x i32> %vec.phi156, %i.cw        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cy, %i.cx
  %i.da = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.i82, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.da, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.09.i = phi i32 [ %i.df, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !27
  %i.dd = icmp sgt i32 %i.dc, -1
  %i.de = zext i1 %i.dd to i32
  %i.df = add nuw nsw i32 %.09.i, %i.de           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i82, label %scalar.ph, !llvm.loop !79

.lr.ph.i82:                                       ; preds = %scalar.ph, %middle.block
  %.lcssa155 = phi i32 [ %i.da, %middle.block ], [ %i.df, %scalar.ph ]
  %i.dg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.lcssa155) ; 0 uses
  %min.iters.check159 = icmp ult i32 %.val76, 8
  br i1 %min.iters.check159, label %scalar.ph158.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph.i82
  %n.vec161 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <4 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.dn, %vector.body162 ]
  %vec.phi165 = phi <4 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.do, %vector.body162 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index163 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load166 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !27
  %wide.load167 = load <4 x i32>, ptr %i.di, align 4, !tbaa !27
  %i.dj = icmp sgt <4 x i32> %wide.load166, splat (i32 1)
  %i.dk = icmp sgt <4 x i32> %wide.load167, splat (i32 1)
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = zext <4 x i1> %i.dk to <4 x i32>
  %i.dn = add <4 x i32> %vec.phi164, %i.dl        ; 2 uses
  %i.do = add <4 x i32> %vec.phi165, %i.dm        ; 2 uses
  %index.next168 = add nuw i64 %index163, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.dp, label %middle.block169, label %vector.body162, !llvm.loop !80

middle.block169:                                  ; preds = %vector.body162
  %bin.rdx170 = add <4 x i32> %i.do, %i.dn
  %i.dq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %n.vec161, %wide.trip.count.i
  br i1 %cmp.n171, label %Vec_IntCountLarger.exit88, label %scalar.ph158.preheader

scalar.ph158.preheader:                           ; preds = %.lr.ph.i82, %middle.block169
  %indvars.iv.i84.ph = phi i64 [ 0, %.lr.ph.i82 ], [ %n.vec161, %middle.block169 ]
  %.09.i85.ph = phi i32 [ 0, %.lr.ph.i82 ], [ %i.dq, %middle.block169 ]
  br label %scalar.ph158

scalar.ph158:                                     ; preds = %scalar.ph158.preheader, %scalar.ph158
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i86, %scalar.ph158 ], [ %indvars.iv.i84.ph, %scalar.ph158.preheader ] ; 2 uses
  %.09.i85 = phi i32 [ %i.dv, %scalar.ph158 ], [ %.09.i85.ph, %scalar.ph158.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i84
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !27
  %i.dt = icmp sgt i32 %i.ds, 1
  %i.du = zext i1 %i.dt to i32
  %i.dv = add nuw nsw i32 %.09.i85, %i.du         ; 2 uses
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %indvars.iv.next.i86, %wide.trip.count.i
  br i1 %exitcond.not.i87, label %Vec_IntCountLarger.exit88, label %scalar.ph158, !llvm.loop !81

Vec_IntCountLarger.exit88:                        ; preds = %scalar.ph158, %middle.block169
  %.lcssa154 = phi i32 [ %i.dq, %middle.block169 ], [ %i.dv, %scalar.ph158 ]
  %i.dw = icmp eq i32 %.lcssa154, 0
  br i1 %i.dw, label %.critedge8.thread149, label %.lr.ph.i90.preheader

.lr.ph.i90.preheader:                             ; preds = %Vec_IntCountLarger.exit88
  %min.iters.check175 = icmp ult i32 %.val76, 8
  br i1 %min.iters.check175, label %.lr.ph.i90.preheader190, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.i90.preheader
  %n.vec177 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <4 x i32> [ zeroinitializer, %vector.ph176 ], [ %i.ed, %vector.body178 ]
  %vec.phi181 = phi <4 x i32> [ zeroinitializer, %vector.ph176 ], [ %i.ee, %vector.body178 ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index179 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load182 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !27
  %wide.load183 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !27
  %i.dz = icmp sgt <4 x i32> %wide.load182, splat (i32 1)
  %i.ea = icmp sgt <4 x i32> %wide.load183, splat (i32 1)
  %i.eb = zext <4 x i1> %i.dz to <4 x i32>
  %i.ec = zext <4 x i1> %i.ea to <4 x i32>
  %i.ed = add <4 x i32> %vec.phi180, %i.eb        ; 2 uses
  %i.ee = add <4 x i32> %vec.phi181, %i.ec        ; 2 uses
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.ef, label %middle.block185, label %vector.body178, !llvm.loop !82

middle.block185:                                  ; preds = %vector.body178
  %bin.rdx186 = add <4 x i32> %i.ee, %i.ed
  %i.eg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx186) ; 2 uses
  %cmp.n187 = icmp eq i64 %n.vec177, %wide.trip.count.i
  br i1 %cmp.n187, label %.lr.ph119, label %.lr.ph.i90.preheader190

.lr.ph.i90.preheader190:                          ; preds = %.lr.ph.i90.preheader, %middle.block185
  %indvars.iv.i92.ph = phi i64 [ 0, %.lr.ph.i90.preheader ], [ %n.vec177, %middle.block185 ]
  %.09.i93.ph = phi i32 [ 0, %.lr.ph.i90.preheader ], [ %i.eg, %middle.block185 ]
  br label %.lr.ph.i90

.critedge8.thread149:                             ; preds = %Vec_IntCountLarger.exit88
  %puts150 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.critedge8.thread

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader190, %.lr.ph.i90
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i94, %.lr.ph.i90 ], [ %indvars.iv.i92.ph, %.lr.ph.i90.preheader190 ] ; 2 uses
  %.09.i93 = phi i32 [ %i.el, %.lr.ph.i90 ], [ %.09.i93.ph, %.lr.ph.i90.preheader190 ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i92
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !27
  %i.ej = icmp sgt i32 %i.ei, 1
  %i.ek = zext i1 %i.ej to i32
  %i.el = add nuw nsw i32 %.09.i93, %i.ek         ; 2 uses
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, %wide.trip.count.i
  br i1 %exitcond.not.i95, label %.lr.ph119, label %.lr.ph.i90, !llvm.loop !83

.lr.ph119:                                        ; preds = %.lr.ph.i90, %middle.block185
  %.lcssa = phi i32 [ %i.eg, %middle.block185 ], [ %i.el, %.lr.ph.i90 ]
  %i.em = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.lcssa) ; 0 uses
  %i.en = getelementptr i8, ptr %0, i64 160
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph119, %bb.z
  %indvars.iv135 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next136.pre-phi, %bb.z ] ; 10 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv135
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !27 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.pre139 = add nuw nsw i64 %indvars.iv135, 1
  br label %bb.z

bb.n:                                             ; preds = %bb.m
  %.val80 = load ptr, ptr %i.en, align 8, !tbaa !84 ; 7 uses
  %i.er = add nuw nsw i64 %indvars.iv135, 1       ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val80, i64 4 ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !26 ; 4 uses
  %i.eu = sext i32 %i.et to i64                   ; 4 uses
  %.not.i.not.i.i = icmp slt i64 %indvars.iv135, %i.eu
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ev = load i32, ptr %.val80, align 8, !tbaa !85 ; 4 uses
  %i.ew = shl nsw i32 %i.ev, 1                    ; 2 uses
  %3 = sext i32 %i.ew to i64
  %.not.i.i97 = icmp slt i64 %indvars.iv135, %3
  %i.ex = sext i32 %i.ev to i64
  %.not.i.i.not.i.i.a = icmp slt i64 %indvars.iv135, %i.ex ; 2 uses
  br i1 %.not.i.i97, label %bb.t, label %4

4:                                                ; preds = %bb.o
  br i1 %.not.i.i.not.i.i.a, label %Vec_IntGrow.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %4
  %i.ey = getelementptr inbounds nuw i8, ptr %.val80, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !15 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ez, null
  %i.fa = shl nuw nsw i64 %i.er, 2                ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fb = tail call ptr @realloc(ptr noundef nonnull %i.ez, i64 noundef %i.fa) #28
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fa) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fd = phi ptr [ %i.fb, %bb.q ], [ %i.fc, %bb.r ]
  store ptr %i.fd, ptr %i.ey, align 8, !tbaa !15
  %i.fe = trunc nuw nsw i64 %i.er to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.t:                                             ; preds = %bb.o
  br i1 %.not.i.i.not.i.i.a, label %Vec_IntGrow.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = icmp slt i32 %i.ev, 1073741823
  %spec.select.i.i.i = select i1 %i.ff, i32 %i.ew, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ev, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.v, label %Vec_IntGrow.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.fg = getelementptr inbounds nuw i8, ptr %.val80, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !15 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.fh, null
  %i.fi = sext i32 %spec.select.i.i.i to i64
  %i.fj = shl nsw i64 %i.fi, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fk = tail call ptr @realloc(ptr noundef nonnull %i.fh, i64 noundef %i.fj) #28
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fj) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fm = phi ptr [ %i.fk, %bb.w ], [ %i.fl, %bb.x ]
  store ptr %i.fm, ptr %i.fg, align 8, !tbaa !15
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.y, %bb.s
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.y ], [ %i.fe, %bb.s ]
  store i32 %spec.select.sink.i.i.i, ptr %.val80, align 8, !tbaa !85
  %.pre.i.i = load i32, ptr %i.es, align 4, !tbaa !26 ; 2 uses
  %.pre = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.u, %bb.t, %4
  %.pre-phi = phi i64 [ %.pre, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.eu, %bb.u ], [ %i.eu, %bb.t ], [ %i.eu, %4 ] ; 2 uses
  %5 = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.et, %bb.u ], [ %i.et, %bb.t ], [ %i.et, %4 ]
  %.not3.i.i = icmp sgt i64 %.pre-phi, %indvars.iv135
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.val80, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !15
  %i.fp = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.fo, i64 %i.fp
  %i.fq = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.fr = sub i32 %i.fq, %5
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.fu, i1 false), !tbaa !27
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.fv = trunc nuw nsw i64 %i.er to i32
  store i32 %i.fv, ptr %i.es, align 4, !tbaa !26
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.n, %._crit_edge.i.i.i
  %i.fw = getelementptr i8, ptr %.val80, i64 8
  %.val.i.i = load ptr, ptr %i.fw, align 8, !tbaa !15
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %indvars.iv135
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !27
  %i.fz = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.ga = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.fz, i32 noundef %i.fy, i32 noundef %i.ep) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %Gia_ObjLevelId.exit
  %indvars.iv.next136.pre-phi = phi i64 [ %.pre139, %._crit_edge ], [ %i.er, %Gia_ObjLevelId.exit ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next136.pre-phi, %wide.trip.count.i
  br i1 %exitcond.not, label %.critedge8.thread, label %bb.m, !llvm.loop !86

.critedge8:                                       ; preds = %.critedge4
  %i.gb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef 0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.not.i98 = icmp eq ptr %i.h, null
  br i1 %.not.i98, label %Vec_IntFree.exit, label %.critedge8.thread

.critedge8.thread:                                ; preds = %bb.z, %.critedge8.thread149, %.critedge8
  tail call void @free(ptr noundef nonnull %i.h) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge8, %.critedge8.thread
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_TreeCarryMap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val22 = load i32, ptr %i.a, align 8, !tbaa !49 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 5 uses
  %i.c = add i32 %.val22, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val22 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !85
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store i32 %.val22, ptr %i.d, align 4, !tbaa !26
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #27 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !15
  store i32 %.val22, ptr %i.d, align 4, !tbaa !26
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %.val22 to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 -1, i64 %i.k, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val23 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.b ]
  %i.l = getelementptr i8, ptr %2, i64 4
  %.val26 = load i32, ptr %i.l, align 4, !tbaa !25 ; 2 uses
  %i.m = icmp sgt i32 %.val26, 0
  br i1 %i.m, label %.lr.ph28, label %.critedge

.lr.ph28:                                         ; preds = %Vec_IntStartFull.exit
  %i.n = getelementptr i8, ptr %2, i64 8
  %.val18 = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = zext nneg i32 %.val26 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph28, %.critedge2
  %indvars.iv30 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next31, %.critedge2 ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val18, i64 %indvars.iv30 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4        ; 2 uses
  %.val1924 = load i32, ptr %i.r, align 4, !tbaa !26
  %i.s = icmp sgt i32 %.val1924, 0
  br i1 %i.s, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val21 = load ptr, ptr %i.t, align 8, !tbaa !15
  %.val20 = load ptr, ptr %i.o, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27   ; 2 uses
  %i.w = mul nsw i32 %i.v, 6
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %.val20, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.ab
  store i32 %i.v, ptr %i.ac, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val19 = load i32, ptr %i.r, align 4, !tbaa !26
  %i.ad = sext i32 %.val19 to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.d, label %.critedge2, !llvm.loop !87

.critedge2:                                       ; preds = %bb.d, %bb.c
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next31, %i.p
  br i1 %i.af, label %bb.c, label %.critedge, !llvm.loop !88

.critedge:                                        ; preds = %.critedge2, %Vec_IntStartFull.exit
  ret ptr %i.b
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Acec_TreePhases_rec(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val54 = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %.val54, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27   ; 4 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %Acec_SignSetBit2.exit67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %5, i64 8
  %.val55 = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.g = ashr i32 %i.d, 5
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %.val55, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27   ; 2 uses
  %i.k = and i32 %i.d, 31
  %i.l = shl nuw i32 1, %i.k                      ; 2 uses
  %i.m = and i32 %i.j, %i.l
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %Acec_SignSetBit2.exit67

bb.c:                                             ; preds = %bb.b
  %i.n = or i32 %i.j, %i.l
  store i32 %i.n, ptr %i.i, align 4, !tbaa !27
  %i.o = mul nsw i32 %i.d, 6
  %i.p = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %.val53 = load ptr, ptr %i.p, align 8, !tbaa !15 ; 2 uses
  %i.q = sext i32 %i.o to i64                     ; 10 uses
  %i.r = getelementptr [4 x i8], ptr %.val53, i64 %i.q ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 20       ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 5 uses
  %i.u = lshr i32 %i.t, 3
  %i.v = and i32 %i.u, 1                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.r, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %Acec_SignSetBit2.exit

bb.d:                                             ; preds = %bb.c
  %i.z = lshr i32 %i.t, 2
  %i.aa = and i32 %i.z, 1                         ; 2 uses
  %i.ab = xor i32 %i.aa, %4                       ; 2 uses
  %i.ac = xor i32 %i.ab, %i.v                     ; 2 uses
  %.not.i = icmp eq i32 %4, %i.aa
  br i1 %.not.i, label %Acec_SignSetBit2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = or i32 %i.t, 262144                     ; 2 uses
  store i32 %i.ad, ptr %i.s, align 4, !tbaa !27
  br label %Acec_SignSetBit2.exit

Acec_SignSetBit2.exit:                            ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = phi i32 [ %i.t, %bb.c ], [ %i.t, %bb.d ], [ %i.ad, %bb.e ]
  %.049 = phi i32 [ %i.v, %bb.c ], [ %i.ac, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %4, %bb.c ], [ 0, %bb.d ], [ %i.ab, %bb.e ] ; 7 uses
  %i.af = load i32, ptr %i.r, align 4, !tbaa !27  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %Acec_SignSetBit2.exit61, label %bb.f

bb.f:                                             ; preds = %Acec_SignSetBit2.exit
  %i.ah = and i32 %i.ae, 1                        ; 2 uses
  %i.ai = xor i32 %i.ah, %.0                      ; 2 uses
  %i.aj = xor i32 %i.ai, %.049                    ; 2 uses
  tail call void @Acec_TreePhases_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull %5)
  %.not.i59 = icmp eq i32 %i.ah, %.0
  %.val.1.pre = load ptr, ptr %i.p, align 8, !tbaa !15 ; 3 uses
  br i1 %.not.i59, label %Acec_SignSetBit2.exit61, label %bb.g
end_hunk_0
