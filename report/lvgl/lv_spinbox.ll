Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_spinbox?download=true
inline.NumInlined: 7
begin_hunk_0_@lv_spinbox_event:bb.a

bb.w:                                             ; preds = %bb.u
  %.not.i75 = icmp eq ptr %i.c, null
  br i1 %.not.i75, label %.preheader.i76, label %lv_spinbox_step_next.exit77

.preheader.i76:                                   ; preds = %bb.w, %.preheader.i76
  br label %.preheader.i76

lv_spinbox_step_next.exit77:                      ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 180 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !21 ; 2 uses
  %i.bs = sdiv i32 %i.br, 10
  %i.bt = icmp sgt i32 %i.br, 9
  %i.bu = select i1 %i.bt, i32 %i.bs, i32 1
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !21
  tail call fastcc void @lv_spinbox_updatevalue(ptr noundef nonnull %i.c)
  br label %lv_spinbox_increment.exit

bb.x:                                             ; preds = %bb.t
  %i.bv = icmp eq i32 %i.bm, 4
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @lv_spinbox_decrement(ptr noundef %i.c)
  br label %lv_spinbox_increment.exit

bb.z:                                             ; preds = %bb.x
  tail call void @lv_spinbox_step_prev(ptr noundef %i.c)
  br label %lv_spinbox_increment.exit

bb.aa:                                            ; preds = %bb.t
  %.not.i78 = icmp eq ptr %i.c, null
  br i1 %.not.i78, label %.preheader.i79, label %._crit_edge.i

.preheader.i79:                                   ; preds = %bb.aa, %.preheader.i79
  br label %.preheader.i79

._crit_edge.i:                                    ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !27 ; 5 uses
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !21 ; 2 uses
  %i.cb = add nsw i32 %i.ca, %i.bx                ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = sub nsw i32 0, %i.cb
  %i.ce = select i1 %i.by, i1 %i.cc, i1 false
  %.0.i = select i1 %i.ce, i32 %i.cd, i32 %i.bx
  %i.cf = add nsw i32 %.0.i, %i.ca                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !28 ; 3 uses
  %.not28.i = icmp sgt i32 %i.cf, %i.ch
  br i1 %.not28.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %._crit_edge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = and i16 %i.cj, 256
  %.not29.i = icmp ne i16 %i.ck, 0
  %i.cl = icmp eq i32 %i.bx, %i.ch
  %or.cond.i = and i1 %i.cl, %.not29.i
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i
  %.1.i = phi i32 [ %i.cf, %._crit_edge.i ], [ %i.cn, %bb.ac ], [ %i.ch, %bb.ab ] ; 2 uses
  %.not30.i = icmp eq i32 %.1.i, %i.bx
  br i1 %.not30.i, label %lv_spinbox_increment.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.1.i, ptr %i.bw, align 8, !tbaa !27
  tail call fastcc void @lv_spinbox_updatevalue(ptr noundef nonnull %i.c)
  br label %lv_spinbox_increment.exit

bb.af:                                            ; preds = %bb.t
  %.not.i80 = icmp eq ptr %i.c, null
  br i1 %.not.i80, label %.preheader.i87, label %._crit_edge.i81

.preheader.i87:                                   ; preds = %bb.af, %.preheader.i87
  br label %.preheader.i87

._crit_edge.i81:                                  ; preds = %bb.af
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !27 ; 6 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !21 ; 3 uses
  %i.ct = icmp slt i32 %i.cp, %i.cs
  %i.cu = sub nsw i32 %i.cs, %i.cp
  %i.cv = and i1 %i.cq, %i.ct
  %.0.i82 = select i1 %i.cv, i32 %i.cu, i32 %i.cp
  %i.cw = sub nsw i32 %.0.i82, %i.cs              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !23 ; 3 uses
  %.not27.i = icmp slt i32 %i.cw, %i.cy
  br i1 %.not27.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge.i81
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.da = load i16, ptr %i.cz, align 8
  %i.db = and i16 %i.da, 256
  %.not28.i85 = icmp ne i16 %i.db, 0
  %i.dc = icmp eq i32 %i.cp, %i.cy
  %or.cond.i86 = and i1 %i.dc, %.not28.i85
  br i1 %or.cond.i86, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i81
  %.1.i83 = phi i32 [ %i.cw, %._crit_edge.i81 ], [ %i.de, %bb.ah ], [ %i.cy, %bb.ag ] ; 2 uses
  %.not29.i84 = icmp eq i32 %.1.i83, %i.cp
  br i1 %.not29.i84, label %lv_spinbox_increment.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %.1.i83, ptr %i.co, align 8, !tbaa !27
  tail call fastcc void @lv_spinbox_updatevalue(ptr noundef nonnull %i.c)
  br label %lv_spinbox_increment.exit

bb.ak:                                            ; preds = %bb.t
  tail call void @lv_textarea_add_char(ptr noundef %i.c, i32 noundef %i.bo) #8
  br label %lv_spinbox_increment.exit

lv_spinbox_increment.exit:                        ; preds = %bb.aj, %bb.ai, %bb.ae, %bb.ad, %bb.e, %bb.j, %lv_spinbox_step_next.exit74, %lv_spinbox_step_next.exit, %bb.h, %bb.s, %bb.b, %bb.z, %bb.y, %bb.ak, %bb.v, %lv_spinbox_step_next.exit77, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_spinbox_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_spinbox_class, ptr noundef %0) #8 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_spinbox_set_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.1, ptr %i.e, align 8, !tbaa !27
  tail call fastcc void @lv_spinbox_updatevalue(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lv_spinbox_updatevalue(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 7 uses
  %i.b = alloca [14 x i8], align 1                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.a, i8 0, i64 18, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp slt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  br i1 %i.e, label %bb.b, label %._crit_edge101

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = select i1 %i.h, i8 43, i8 45
  store i8 %i.i, ptr %i.a, align 16, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %bb.a, %bb.b
  %.060 = phi ptr [ %i.j, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.059.neg = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.k = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.l = call i32 (ptr, i64, ptr, ...) @lv_snprintf(ptr noundef nonnull %i.b, i64 noundef 14, ptr noundef nonnull @.str.1, i32 noundef %i.k) #8 ; 0 uses
  %i.m = call i64 @lv_strlen(ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8              ; 3 uses
  %i.p = and i16 %i.o, 15                         ; 4 uses
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub i64 %i.q, %i.m                       ; 3 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %._crit_edge101
  %i.u = and i64 %i.m, 2147483648
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %iter.check, label %.lr.ph71.preheader

iter.check:                                       ; preds = %bb.c
  %i.w = and i64 %i.m, 2147483647                 ; 8 uses
  %i.x = and i64 %i.r, 2147483647
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.x ; 3 uses
  %i.y = add nuw nsw i64 %i.w, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check114 = icmp samesign ult i64 %i.w, 31
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 24
  %n.vec = and i64 %i.y, 4294967264               ; 4 uses
  %i.aa = sub nsw i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = sub i64 %i.w, %index                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !22
  %wide.load115 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !22
  %i.af = getelementptr i8, ptr %invariant.gep, i64 %i.ab ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -15
  %i.ah = getelementptr i8, ptr %i.af, i64 -31
  store <16 x i8> %wide.load, ptr %i.ag, align 1, !tbaa !22
  store <16 x i8> %wide.load115, ptr %i.ah, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.lr.ph71.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.y, 4294967288            ; 3 uses
  %i.aj = sub nsw i64 %i.w, %n.vec116
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = sub i64 %i.w, %index117                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -7
  %wide.load118 = load <8 x i8>, ptr %i.am, align 1, !tbaa !22
  %i.an = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  %i.ao = getelementptr i8, ptr %i.an, i64 -7
  store <8 x i8> %wide.load118, ptr %i.ao, align 1, !tbaa !22
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next119, %n.vec116
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.y, %n.vec116
  br i1 %cmp.n120, label %.lr.ph71.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.w, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph71.preheader:                               ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.aq = and i64 %i.r, 2147483647
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 48, i64 %i.aq, i1 false), !tbaa !22
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.as, ptr %gep, align 1, !tbaa !22
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not110 = icmp eq i64 %indvars.iv, 0
  br i1 %.not110, label %.lr.ph71.preheader, label %.lr.ph, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph71.preheader, %._crit_edge101
  %i.at = lshr i16 %i.o, 4
  %i.au = and i16 %i.at, 15                       ; 2 uses
  %i.av = icmp eq i16 %i.au, 0
  %.in = select i1 %i.av, i16 %i.p, i16 %i.au     ; 3 uses
  %i.aw = zext nneg i16 %.in to i32               ; 2 uses
  %.not88 = icmp eq i16 %.in, 0
  br i1 %.not88, label %.critedge, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %.loopexit
  %wide.trip.count = zext nneg i16 %.in to i64
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.d
  %indvars.iv93 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next94, %bb.d ] ; 3 uses
  %.16172 = phi ptr [ %.060, %.lr.ph74.preheader ], [ %i.az, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv93
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22  ; 2 uses
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %.critedge.loopexit.split.loop.exit107, label %bb.d

bb.d:                                             ; preds = %.lr.ph74
  store i8 %i.ay, ptr %.16172, align 1, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %.16172, i64 1 ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph74, !llvm.loop !35

.critedge.loopexit.split.loop.exit107:            ; preds = %.lr.ph74
  %i.ba = trunc nuw nsw i64 %indvars.iv93 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit107, %.loopexit
  %.161.lcssa = phi ptr [ %.060, %.loopexit ], [ %.16172, %.critedge.loopexit.split.loop.exit107 ], [ %i.az, %bb.d ] ; 2 uses
  %.2.lcssa = phi i32 [ 0, %.loopexit ], [ %i.ba, %.critedge.loopexit.split.loop.exit107 ], [ %i.aw, %bb.d ] ; 2 uses
  %i.bb = and i16 %i.o, 240
  %.not67 = icmp eq i16 %i.bb, 0
  br i1 %.not67, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %.critedge
  store i8 46, ptr %.161.lcssa, align 1, !tbaa !22
  %i.bc = zext nneg i16 %i.p to i32
  %i.bd = icmp samesign ult i32 %.2.lcssa, %i.bc
  br i1 %i.bd, label %.lr.ph82.preheader, label %.critedge2

.lr.ph82.preheader:                               ; preds = %bb.e
  %i.be = zext nneg i32 %.2.lcssa to i64
  %wide.trip.count99 = zext nneg i16 %i.p to i64
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.f
  %indvars.iv96 = phi i64 [ %i.be, %.lr.ph82.preheader ], [ %indvars.iv.next97, %bb.f ] ; 2 uses
  %.26281.pn = phi ptr [ %.161.lcssa, %.lr.ph82.preheader ], [ %.26281, %bb.f ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv96
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22  ; 2 uses
  %.not68 = icmp eq i8 %i.bg, 0
  br i1 %.not68, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %.lr.ph82
  %.26281 = getelementptr inbounds nuw i8, ptr %.26281.pn, i64 1 ; 2 uses
  store i8 %i.bg, ptr %.26281, align 1, !tbaa !22
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.critedge2, label %.lr.ph82, !llvm.loop !36

.critedge2:                                       ; preds = %bb.f, %.lr.ph82, %bb.e, %.critedge
  call void @lv_textarea_set_text(ptr noundef %0, ptr noundef nonnull %i.a) #8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !21 ; 2 uses
  %i.bj = load i16, ptr %i.n, align 8
  %i.bk = and i16 %i.bj, 15
  %i.bl = zext nneg i16 %i.bk to i32              ; 2 uses
  %i.bm = icmp sgt i32 %i.bi, 9
  br i1 %i.bm, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %.critedge2, %.lr.ph86
  %.085 = phi i32 [ %i.bo, %.lr.ph86 ], [ %i.bl, %.critedge2 ]
  %.05684 = phi i32 [ %i.bn, %.lr.ph86 ], [ %i.bi, %.critedge2 ] ; 2 uses
  %i.bn = udiv i32 %.05684, 10
  %i.bo = add i32 %.085, -1                       ; 2 uses
  %i.bp = icmp samesign ugt i32 %.05684, 99
  br i1 %i.bp, label %.lr.ph86, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph86, %.critedge2
  %.0.lcssa = phi i32 [ %i.bl, %.critedge2 ], [ %i.bo, %.lr.ph86 ] ; 2 uses
  %i.bq = icmp ugt i32 %.0.lcssa, %i.aw
  %i.br = zext i1 %i.bq to i32
  %spec.select = add i32 %.0.lcssa, %.059.neg
  %i.bs = add i32 %spec.select, %i.br
  call void @lv_textarea_set_cursor_pos(ptr noundef nonnull %0, i32 noundef %i.bs) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_spinbox_set_rollover(ptr nofree noundef captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = select i1 %1, i16 256, i16 0
  %i.d = and i16 %i.b, -257
  %i.e = or disjoint i16 %i.d, %i.c
  store i16 %i.e, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_spinbox_set_digit_format(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 10) ; 3 uses
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw nsw i32 %spec.store.select to i8
  %i.c = tail call i64 @lv_pow(i64 noundef 10, i8 noundef signext %i.b) #8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = sext i32 %i.e to i64
  %.not23 = icmp sgt i64 %i.c, %i.f
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i64 %i.c to i32
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr %i.d, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23
  %i.k = sext i32 %i.j to i64
  %i.l = sub i64 1, %i.c                          ; 2 uses
  %i.m = icmp sgt i64 %i.l, %i.k
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = trunc i64 %i.l to i32
  store i32 %i.n, ptr %i.i, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.not22 = icmp ult i32 %2, %spec.store.select
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.p = trunc nuw nsw i32 %spec.store.select to i16
  %i.q = load i16, ptr %i.o, align 8
  %i.r = and i16 %i.q, -256
  %i.s = trunc i32 %2 to i16
  %i.t = shl i16 %i.s, 4
  %i.u = and i16 %i.t, 240
  %i.v = select i1 %.not22, i16 %i.u, i16 0
  %i.w = or disjoint i16 %i.v, %i.p
  %i.x = or disjoint i16 %i.w, %i.r
  store i16 %i.x, ptr %i.o, align 8
  tail call fastcc void @lv_spinbox_updatevalue(ptr noundef nonnull %0)
  ret void
}

declare i64 @lv_pow(i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_spinbox_set_digit_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 10)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = trunc nuw nsw i32 %spec.store.select to i16
end_hunk_0
