Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbitmap?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Embolden:bb.a
  %.us-phi = phi i16 [ %i.go, %bb.ao ], [ %i.hv, %bb.at ]
  %i.hx = trunc i16 %.us-phi to i8
  %i.hy = add i8 %i.hx, -1
  store i8 %i.hy, ptr %i.fw, align 1, !tbaa !24
  br label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.hz = trunc i32 %i.hu to i8                   ; 2 uses
  store i8 %i.hz, ptr %i.fw, align 1, !tbaa !24
  %i.ia = and i32 %i.hu, 255
  %i.ib = load i16, ptr %i.fs, align 8, !tbaa !32
  %i.ic = zext i16 %i.ib to i32
  %i.id = add nsw i32 %i.ic, -1
  %i.ie = icmp eq i32 %i.ia, %i.id
  %.not129 = icmp sge i32 %.0108141, %.0104200
  %or.cond163 = select i1 %i.ie, i1 true, i1 %.not129
  br i1 %or.cond163, label %.loopexit, label %.lr.ph.split.backedge

.loopexit:                                        ; preds = %bb.ar, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.if = icmp sgt i64 %indvars.iv, 0
  %i.ig = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.if, label %.lr.ph, label %.preheader, !llvm.loop !44

iter.check:                                       ; preds = %.lr.ph151.preheader, %._crit_edge
  %.1153 = phi i32 [ %i.jy, %._crit_edge ], [ 1, %.lr.ph151.preheader ] ; 3 uses
  %i.ih = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.ii = mul nsw i32 %i.ih, %.1153
  %i.ij = sext i32 %i.ii to i64
  %i.ik = sub nsw i64 0, %i.ij                    ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.1111156, i64 %i.ik ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep224 = getelementptr i8, ptr %scevgep, i64 %i.ik
  %bound0 = icmp ult ptr %i.il, %scevgep
  %bound1 = icmp ult ptr %.1111156, %scevgep224
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load = load <16 x i8>, ptr %i.im, align 1, !tbaa !24, !alias.scope !54
  %wide.load226 = load <16 x i8>, ptr %i.in, align 1, !tbaa !24, !alias.scope !54
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %index ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %wide.load227 = load <16 x i8>, ptr %i.io, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %wide.load228 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.iq = or <16 x i8> %wide.load227, %wide.load
  %i.ir = or <16 x i8> %wide.load228, %wide.load226
  store <16 x i8> %i.iq, ptr %i.io, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  store <16 x i8> %i.ir, ptr %i.ip, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.1111156, i64 %index230
  %wide.load231 = load <4 x i8>, ptr %i.it, align 1, !tbaa !24, !alias.scope !54
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 %index230 ; 2 uses
  %wide.load232 = load <4 x i8>, ptr %i.iu, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %i.iv = or <4 x i8> %wide.load232, %wide.load231
  store <4 x i8> %i.iv, ptr %i.iu, align 1, !tbaa !24, !alias.scope !55, !noalias !54
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.iw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n234, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv173.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod244.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173.prol
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !24
  %i.iz = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv173.prol ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !24
  %i.jb = or i8 %i.ja, %i.iy
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !24
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next174.prol, %vec.epilog.scalar.ph.prol ]
  %i.jc = sub nsw i64 %indvars.iv173.ph, %wide.trip.count
  %i.jd = icmp ugt i64 %i.jc, -4
  br i1 %i.jd, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.3, %vec.epilog.scalar.ph ], [ %indvars.iv173.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv173
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv173 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !24
  %i.ji = or i8 %i.jh, %i.jf
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !24
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !24
  %i.jn = or i8 %i.jm, %i.jk
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !24
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.1
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174.1 ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !24
  %i.js = or i8 %i.jr, %i.jp
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !24
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173, 3 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.1111156, i64 %indvars.iv.next174.2
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next174.2 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !24
  %i.jx = or i8 %i.jw, %i.ju
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !24
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next174.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.jy = add nuw i32 %.1153, 1
  %exitcond176.not = icmp eq i32 %.1153, %.0103203
  br i1 %exitcond176.not, label %._crit_edge155.split, label %iter.check, !llvm.loop !52

._crit_edge155.split:                             ; preds = %._crit_edge, %.preheader136, %.preheader
  %i.jz = load i32, ptr %i.bm, align 8, !tbaa !13
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds i8, ptr %.1111156, i64 %i.ka
  %i.kc = add nuw i32 %.0105158, 1                ; 2 uses
  %i.kd = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ke = icmp ult i32 %i.kc, %i.kd
  br i1 %i.ke, label %.preheader136, label %._crit_edge159, !llvm.loop !53

._crit_edge159:                                   ; preds = %._crit_edge155.split, %bb.am
  %.lcssa138 = phi i32 [ 0, %bb.am ], [ %i.kd, %._crit_edge155.split ]
  %i.kf = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.kg = add i32 %i.kf, %.0104200
  store i32 %i.kg, ptr %i.bp, align 4, !tbaa !31
  %i.kh = add i32 %.lcssa138, %.0103203
  store i32 %i.kh, ptr %1, align 8, !tbaa !27
  br label %bb.av

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.av

bb.av:                                            ; preds = %ft_bitmap_assure_buffer.exit, %bb.g, %.critedge, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a, %._crit_edge159
  %.1113 = phi i32 [ 6, %bb.b ], [ 6, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %._crit_edge159 ], [ %.0124.i, %ft_bitmap_assure_buffer.exit ], [ %i.o, %.critedge ], [ 33, %bb.a ], [ 6, %bb.c ], [ 6, %bb.f ]
  ret i32 %.1113
}

; Function Attrs: nounwind uwtable
define i32 @FT_Bitmap_Convert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !30
  %.off = add i8 %i.f, -1
  %switch = icmp ult i8 %.off, 7
  br i1 %switch, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %FT_Bitmap_Done.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = icmp slt i32 %i.j, 0
  br label %FT_Bitmap_Done.exit

FT_Bitmap_Done.exit:                              ; preds = %bb.e, %bb.f
  %i.p = phi i1 [ true, %bb.e ], [ %i.o, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.r) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 2, ptr %i.s, align 2, !tbaa !30
  %i.t = load <2 x i32>, ptr %1, align 8, !tbaa !8
  %i.u = load i32, ptr %1, align 8, !tbaa !27
  store <2 x i32> %i.t, ptr %2, align 8, !tbaa !8
  %.not217 = icmp eq i32 %3, 0
  br i1 %.not217, label %bb.i, label %bb.g

bb.g:                                             ; preds = %FT_Bitmap_Done.exit
  %i.v = srem i32 %i.h, %3                        ; 3 uses
  %.not218 = icmp eq i32 %i.v, 0
  br i1 %.not218, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = icmp sgt i32 %3, 0
  %5 = add i32 %i.h, %3
  %6 = sub i32 %5, %i.v
  %i.w = add i32 %3, %i.v
  %i.x = sub i32 %i.h, %i.w
  %7 = select i1 %4, i32 %6, i32 %i.x
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %FT_Bitmap_Done.exit
  %.1200 = phi i32 [ %i.h, %FT_Bitmap_Done.exit ], [ %7, %bb.h ], [ %i.h, %bb.g ] ; 3 uses
  %i.y = sext i32 %.1200 to i64
  %i.z = zext i32 %i.u to i64
  %i.aa = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef %i.y, i64 noundef 0, i64 noundef %i.z, ptr noundef null, ptr noundef nonnull %i.a) #7 ; 2 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !21
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not219 = icmp eq i32 %i.ab, 0
  br i1 %.not219, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ac = sub nsw i32 0, %.1200
  %i.ad = select i1 %i.p, i32 %i.ac, i32 %.1200
  store i32 %i.ad, ptr %i.i, align 8, !tbaa !13
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  store i32 6, ptr %i.a, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ae = phi ptr [ %i.aa, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !13 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %1, align 8, !tbaa !27
  %i.al = add i32 %i.ak, -1
  %i.am = mul nsw i32 %i.al, %i.ai
  %i.an = sext i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 %i.ao
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0191 = phi ptr [ %i.ap, %bb.m ], [ %i.ag, %bb.l ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !13 ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %2, align 8, !tbaa !27
  %i.au = add i32 %i.at, -1
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = sext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ae, i64 %i.ax
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0202 = phi ptr [ %i.ay, %bb.o ], [ %i.ae, %bb.n ] ; 7 uses
  %i.az = load i8, ptr %i.e, align 2, !tbaa !30
  switch i8 %i.az, label %.loopexit238 [
    i8 1, label %bb.q
    i8 2, label %bb.z
    i8 5, label %bb.z
    i8 6, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.af
    i8 7, label %bb.aj
  ]

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 2, ptr %i.ba, align 8, !tbaa !32
  %i.bb = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.not230304 = icmp eq i32 %i.bb, 0
  br i1 %.not230304, label %.loopexit238, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph309, %.loopexit
  %.1192307 = phi ptr [ %.0191, %.lr.ph309 ], [ %i.cl, %.loopexit ] ; 3 uses
  %.0198306 = phi i32 [ %i.bb, %.lr.ph309 ], [ %i.cp, %.loopexit ]
  %.1203305 = phi ptr [ %.0202, %.lr.ph309 ], [ %i.co, %.loopexit ] ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !31 ; 2 uses
  %i.be = lshr i32 %i.bd, 3                       ; 2 uses
  %.not231292 = icmp eq i32 %i.be, 0
  br i1 %.not231292, label %._crit_edge298, label %.lr.ph297

.lr.ph297:                                        ; preds = %bb.r, %.lr.ph297
  %.0193295 = phi i32 [ %i.bm, %.lr.ph297 ], [ %i.be, %bb.r ]
  %.0195294 = phi ptr [ %i.bk, %.lr.ph297 ], [ %.1203305, %bb.r ] ; 2 uses
  %.0197293 = phi ptr [ %i.bl, %.lr.ph297 ], [ %.1192307, %bb.r ] ; 2 uses
  %i.bf = load i8, ptr %.0197293, align 1, !tbaa !24
  %i.bg = insertelement <8 x i8> poison, i8 %i.bf, i64 0
  %i.bh = shufflevector <8 x i8> %i.bg, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bi = lshr <8 x i8> %i.bh, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.bj = and <8 x i8> %i.bi, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.bj, ptr %.0195294, align 1, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %.0195294, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0197293, i64 1 ; 2 uses
  %i.bm = add nsw i32 %.0193295, -1               ; 2 uses
  %.not231 = icmp eq i32 %i.bm, 0
  br i1 %.not231, label %._crit_edge298.loopexit, label %.lr.ph297, !llvm.loop !57

._crit_edge298.loopexit:                          ; preds = %.lr.ph297
  %.pre326 = load i32, ptr %i.bc, align 4, !tbaa !31
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %bb.r
  %i.bn = phi i32 [ %i.bd, %bb.r ], [ %.pre326, %._crit_edge298.loopexit ]
  %.0197.lcssa = phi ptr [ %.1192307, %bb.r ], [ %i.bl, %._crit_edge298.loopexit ]
  %.0195.lcssa = phi ptr [ %.1203305, %bb.r ], [ %i.bk, %._crit_edge298.loopexit ] ; 7 uses
  %i.bo = and i32 %i.bn, 7                        ; 7 uses
  %.not232 = icmp eq i32 %i.bo, 0
  br i1 %.not232, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %._crit_edge298
  %i.bp = load i8, ptr %.0197.lcssa, align 1, !tbaa !24 ; 7 uses
  %i.bq = lshr i8 %i.bp, 7
  store i8 %i.bq, ptr %.0195.lcssa, align 1, !tbaa !24
  %.not233 = icmp eq i32 %i.bo, 1
  br i1 %.not233, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 1
  %i.bs = lshr i8 %i.bp, 6
  %i.bt = and i8 %i.bs, 1
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !24
  %.not233.1 = icmp eq i32 %i.bo, 2
  br i1 %.not233.1, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 2
  %i.bv = lshr i8 %i.bp, 5
  %i.bw = and i8 %i.bv, 1
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !24
  %.not233.2 = icmp eq i32 %i.bo, 3
  br i1 %.not233.2, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 3
  %i.by = lshr i8 %i.bp, 4
  %i.bz = and i8 %i.by, 1
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !24
  %.not233.3 = icmp eq i32 %i.bo, 4
  br i1 %.not233.3, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 4
  %i.cb = lshr i8 %i.bp, 3
  %i.cc = and i8 %i.cb, 1
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !24
  %.not233.4 = icmp eq i32 %i.bo, 5
  br i1 %.not233.4, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 5
  %i.ce = lshr i8 %i.bp, 2
  %i.cf = and i8 %i.ce, 1
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !24
  %.not233.5 = icmp eq i32 %i.bo, 6
  br i1 %.not233.5, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %.0195.lcssa, i64 6
  %i.ch = lshr i8 %i.bp, 1
  %i.ci = and i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %._crit_edge298
  %i.cj = load i32, ptr %i.ah, align 8, !tbaa !13
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %.1192307, i64 %i.ck
  %i.cm = load i32, ptr %i.aq, align 8, !tbaa !13
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %.1203305, i64 %i.cn
  %i.cp = add i32 %.0198306, -1                   ; 2 uses
  %.not230 = icmp eq i32 %i.cp, 0
  br i1 %.not230, label %.loopexit238, label %bb.r, !llvm.loop !58

bb.z:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 256, ptr %i.cs, align 8, !tbaa !32
  %i.ct = load i32, ptr %1, align 8, !tbaa !27    ; 5 uses
  %.not229286 = icmp eq i32 %i.ct, 0
  br i1 %.not229286, label %.loopexit238, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.z
  %i.cu = zext i32 %i.cr to i64                   ; 3 uses
  %xtraiter402 = and i32 %i.ct, 1
  %lcmp.mod403.not = icmp eq i32 %xtraiter402, 0
  br i1 %lcmp.mod403.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0202, ptr align 1 %.0191, i64 %i.cu, i1 false)
  %i.cv = load i32, ptr %i.ah, align 8, !tbaa !13
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %.0191, i64 %i.cw
end_hunk_0
