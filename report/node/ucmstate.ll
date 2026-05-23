inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@ucm_parseHeaderLine:bb.a
  unreachable

bb.ak:                                            ; preds = %bb.af
  %i.bz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(10) @.str.15) #18
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 132128 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4
  switch i8 %i.cc, label %bb.an [
    i8 0, label %bb.am
    i8 1, label %bb.am
    i8 9, label %bb.am
    i8 2, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al
  store i8 2, ptr %i.cb, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.cd = load ptr, ptr @stderr, align 8
  %i.ce = tail call i64 @fwrite(ptr nonnull @.str.16, i64 81, i64 1, ptr %i.cd) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 132120
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ci = load ptr, ptr @stderr, align 8
  %i.cj = tail call i64 @fwrite(ptr nonnull @.str.17, i64 52, i64 1, ptr %i.ci) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ck = load ptr, ptr %3, align 8
  tail call void @ucm_addState(ptr noundef nonnull %i.a, ptr noundef %i.ck)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ak
  %i.cl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(9) @.str.18) #18
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.cn = load ptr, ptr %3, align 8               ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.cq = load ptr, ptr @stderr, align 8
  %i.cr = tail call i64 @fwrite(ptr nonnull @.str.19, i64 48, i64 1, ptr %i.cq) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 132132
  %i.ct = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(1) %i.cn) #17 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %bb.s, %bb.w, %bb.y, %bb.u, %bb.e, %.critedge, %bb.au, %bb.aq, %bb.ai, %bb.ad
  %.087 = phi i8 [ 1, %bb.s ], [ 1, %.critedge ], [ 0, %bb.e ], [ 1, %bb.ad ], [ 1, %bb.ai ], [ 1, %bb.aq ], [ 1, %bb.au ], [ 1, %bb.u ], [ 1, %bb.y ], [ 1, %bb.w ], [ 0, %bb.ar ]
  ret i8 %.087
}

declare ptr @u_skipWhitespace(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucm_processStates(ptr noundef captures(none) %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132112 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.20, i64 51, i64 1, ptr %i.d) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132096 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  switch i8 %i.b, label %bb.q [
    i8 0, label %bb.e
    i8 2, label %bb.h
    i8 9, label %bb.i
    i8 1, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 132104
  %i.j = load i32, ptr %i.i, align 4
  %.not95 = icmp eq i32 %i.j, 1
  br i1 %.not95, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stderr, align 8
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.21, i64 40, i64 1, ptr %i.k) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 2, ptr %i.a, align 4
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.23, i64 66, i64 1, ptr %i.m) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132100
  %i.p = load i32, ptr %i.o, align 4
  %.not93 = icmp eq i32 %i.p, 1
  br i1 %.not93, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132104
  %i.r = load i32, ptr %i.q, align 4
  %.not94 = icmp eq i32 %i.r, 2
  br i1 %.not94, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = load ptr, ptr @stderr, align 8
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.24, i64 57, i64 1, ptr %i.s) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  store i8 2, ptr %i.a, align 4
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull @.str.25)
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull @.str.26)
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull @.str.28)
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132100
  %i.v = load i32, ptr %i.u, align 4
  %.not = icmp eq i32 %i.v, 2
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132104
  %i.x = load i32, ptr %i.w, align 4
  %.not92 = icmp eq i32 %i.x, 2
  br i1 %.not92, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = load ptr, ptr @stderr, align 8
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.30, i64 47, i64 1, ptr %i.y) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  store i8 2, ptr %i.a, align 4
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull @.str.31)
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull @.str.33)
  br label %.sink.split

bb.q:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr @stderr, align 8
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.35, i64 37, i64 1, ptr %i.aa) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

.sink.split:                                      ; preds = %bb.p, %bb.l, %bb.g
  %.str.22.sink = phi ptr [ @.str.22, %bb.g ], [ @.str.29, %bb.l ], [ @.str.34, %bb.p ]
  tail call void @ucm_addState(ptr noundef nonnull %0, ptr noundef nonnull %.str.22.sink)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 132104 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 132100
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.s, label %.preheader103

.preheader103:                                    ; preds = %bb.r
  %i.ah = load i32, ptr %i.f, align 4             ; 12 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader103
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ah, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi183 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4
  %wide.load184 = load <4 x i32>, ptr %i.al, align 4
  %i.am = and <4 x i32> %wide.load, splat (i32 15)
  %i.an = and <4 x i32> %wide.load184, splat (i32 15)
  %i.ao = icmp ne <4 x i32> %i.am, splat (i32 1)
  %i.ap = icmp ne <4 x i32> %i.an, splat (i32 1)
  %i.aq = zext <4 x i1> %i.ao to <4 x i32>
  %i.ar = zext <4 x i1> %i.ap to <4 x i32>
  %i.as = add <4 x i32> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <4 x i32> %vec.phi183, %i.ar        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0115.ph = phi i32 [ 0, %.lr.ph ], [ %i.av, %middle.block ]
  br label %scalar.ph

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = tail call i64 @fwrite(ptr nonnull @.str.36, i64 35, i64 1, ptr %i.aw) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0115 = phi i32 [ %spec.select, %scalar.ph ], [ %.0115.ph, %scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 15
  %.not100 = icmp ne i32 %i.ba, 1
  %i.bb = zext i1 %.not100 to i32
  %spec.select = add nuw nsw i32 %.0115, %i.bb    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.av, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.bc = add nuw nsw i32 %spec.select.lcssa, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader103
  %.0.lcssa = phi i32 [ 1, %.preheader103 ], [ %i.bc, %._crit_edge.loopexit ]
  %i.bd = icmp sgt i32 %i.ad, %.0.lcssa
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.be = load ptr, ptr @stderr, align 8
  %i.bf = tail call i64 @fwrite(ptr nonnull @.str.37, i64 32, i64 1, ptr %i.be) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.u:                                             ; preds = %._crit_edge
  %i.bg = icmp eq i32 %i.af, 1
  br i1 %i.bg, label %.preheader102, label %.thread

.preheader102:                                    ; preds = %bb.u, %bb.x
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.1, %bb.x ], [ 0, %bb.u ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv137
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %2, label %bb.v

2:                                                ; preds = %.preheader102
  %3 = and i32 %i.bi, 15728640
  switch i32 %3, label %bb.v [
    i32 6291456, label %.thread
    i32 0, label %.thread
  ]

bb.v:                                             ; preds = %2, %.preheader102
  %4 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv137
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %6 = load i32, ptr %5, align 4                  ; 2 uses
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %.preheader102.1

8:                                                ; preds = %bb.v
  %9 = and i32 %6, 15728640
  switch i32 %9, label %.preheader102.1 [
    i32 6291456, label %.thread
    i32 0, label %.thread
  ]

.preheader102.1:                                  ; preds = %8, %bb.v
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv137
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %10, label %bb.w

10:                                               ; preds = %.preheader102.1
  %11 = and i32 %i.bm, 15728640
  switch i32 %11, label %bb.w [
    i32 6291456, label %.thread
    i32 0, label %.thread
  ]

bb.w:                                             ; preds = %10, %.preheader102.1
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv137
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %14 = load i32, ptr %13, align 4                ; 2 uses
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %bb.x

16:                                               ; preds = %bb.w
  %17 = and i32 %14, 15728640
  switch i32 %17, label %bb.x [
    i32 6291456, label %.thread
    i32 0, label %.thread
  ]

bb.x:                                             ; preds = %16, %bb.w
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 4 ; 2 uses
  %exitcond140.not.1 = icmp eq i64 %indvars.iv.next138.1, 256
  br i1 %exitcond140.not.1, label %bb.y, label %.preheader102, !llvm.loop !16

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr @stderr, align 8
  %i.bp = tail call i64 @fwrite(ptr nonnull @.str.38, i64 34, i64 1, ptr %i.bo) #19 ; 0 uses
  %.pre = load i32, ptr %i.f, align 4
  br label %.thread

.thread:                                          ; preds = %2, %2, %8, %8, %10, %10, %16, %16, %bb.y, %bb.u
  %18 = phi i32 [ %i.ah, %bb.u ], [ %.pre, %bb.y ], [ %i.ah, %16 ], [ %i.ah, %16 ], [ %i.ah, %10 ], [ %i.ah, %10 ], [ %i.ah, %8 ], [ %i.ah, %8 ], [ %i.ah, %2 ], [ %i.ah, %2 ] ; 8 uses
  %i.bq = icmp sgt i32 %18, 0
  br i1 %i.bq, label %.preheader.lr.ph, label %._crit_edge120.thread

.preheader.lr.ph:                                 ; preds = %.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 2 uses
  %i.bs = zext nneg i32 %18 to i64
  br label %.preheader

.loopexit:                                        ; preds = %bb.ak
  %i.bt = icmp sgt i64 %indvars.iv145, 1
  br i1 %i.bt, label %.preheader, label %._crit_edge120, !llvm.loop !17

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvars.iv145 = phi i64 [ %i.bs, %.preheader.lr.ph ], [ %indvars.iv.next146, %.loopexit ] ; 2 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -1 ; 5 uses
  %i.bu = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv.next146 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ak, %.preheader
  %indvars.iv141 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next142.1, %bb.ak ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv141
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = lshr i32 %i.bw, 24
  %i.by = and i32 %i.bx, 127                      ; 5 uses
  %.not98 = icmp slt i32 %i.by, %18
  br i1 %.not98, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %bb.z
  %indvars.iv141.lcssa = phi i64 [ %indvars.iv141, %bb.z ], [ %indvars.iv.next142, %bb.ag ]
  %.lcssa = phi i32 [ %i.by, %bb.z ], [ %i.ct, %bb.ag ]
  %i.bz = trunc nuw nsw i64 %indvars.iv.next146 to i32
  %i.ca = trunc nuw nsw i64 %indvars.iv141.lcssa to i32
  %i.cb = load ptr, ptr @stderr, align 8
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.39, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %.lcssa) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cd = icmp slt i32 %i.bw, 0
  %i.ce = zext nneg i32 %i.by to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = and i32 %i.cg, 15
  %.not99 = icmp eq i32 %i.ch, 1                  ; 2 uses
  br i1 %i.cd, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not99, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.aj, %bb.ac
  %indvars.iv141.lcssa190 = phi i64 [ %indvars.iv141, %bb.ac ], [ %indvars.iv.next142, %bb.aj ]
  %.lcssa187 = phi i32 [ %i.by, %bb.ac ], [ %i.ct, %bb.aj ]
  %i.ci = trunc nuw nsw i64 %indvars.iv.next146 to i32
  %i.cj = trunc nuw nsw i64 %indvars.iv141.lcssa190 to i32
  %i.ck = load ptr, ptr @stderr, align 8
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.40, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %.lcssa187) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not99, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %indvars.iv141.lcssa189 = phi i64 [ %indvars.iv141, %bb.ae ], [ %indvars.iv.next142, %bb.ai ]
  %.lcssa186 = phi i32 [ %i.by, %bb.ae ], [ %i.ct, %bb.ai ]
  %i.cm = trunc nuw nsw i64 %indvars.iv.next146 to i32
  %i.cn = trunc nuw nsw i64 %indvars.iv141.lcssa189 to i32
  %i.co = load ptr, ptr @stderr, align 8
  %i.cp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.41, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef %.lcssa186) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.ag:                                            ; preds = %bb.ac, %bb.ae
  %indvars.iv.next142 = or disjoint i64 %indvars.iv141, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next142
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = lshr i32 %i.cr, 24
  %i.ct = and i32 %i.cs, 127                      ; 5 uses
  %.not98.1 = icmp slt i32 %i.ct, %18
  br i1 %.not98.1, label %bb.ah, label %bb.aa

bb.ah:                                            ; preds = %bb.ag
  %i.cu = icmp slt i32 %i.cr, 0
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, 15
  %.not99.1 = icmp eq i32 %i.cy, 1                ; 2 uses
  br i1 %i.cu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not99.1, label %bb.af, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  br i1 %.not99.1, label %bb.ak, label %bb.ad

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %exitcond144.not.1 = icmp eq i64 %indvars.iv.next142.1, 256
  br i1 %exitcond144.not.1, label %.loopexit, label %bb.z, !llvm.loop !18

._crit_edge120:                                   ; preds = %.loopexit
  %.not172 = icmp eq i32 %18, 1
  br i1 %.not172, label %._crit_edge120.thread, label %bb.al

bb.al:                                            ; preds = %._crit_edge120
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 131076
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = and i32 %i.da, 15
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.am, label %._crit_edge120.thread

bb.am:                                            ; preds = %bb.al
  %i.dd = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not96 = icmp eq i32 %i.dd, 2
  br i1 %.not96, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = load ptr, ptr @stderr, align 8
  %i.df = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.42, i32 noundef %i.dd) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dg = icmp eq i32 %18, 2
  br i1 %i.dg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load ptr, ptr @stderr, align 8
  %i.di = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.43, i32 noundef 2) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %.not97 = icmp eq i8 %1, 0
  br i1 %.not97, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp eq i32 %i.dk, -2122317824
  br i1 %i.dl, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = icmp eq i32 %i.dn, -2139095040
  br i1 %i.do, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = icmp eq i32 %i.dq, -2122317824
  br i1 %i.dr, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = icmp eq i32 %i.dt, -2139095040
  br i1 %i.du, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 132113
  store i8 12, ptr %i.dv, align 1
  br label %._crit_edge120.thread

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %i.dw = load ptr, ptr @stderr, align 8
  %i.dx = tail call i64 @fwrite(ptr nonnull @.str.44, i64 80, i64 1, ptr %i.dw) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

._crit_edge120.thread:                            ; preds = %.thread, %._crit_edge120, %bb.al, %bb.av
  %.2 = phi i32 [ 2, %bb.av ], [ 1, %bb.al ], [ 1, %._crit_edge120 ], [ 1, %.thread ] ; 2 uses
  %i.dy = icmp slt i32 %.2, %18
  br i1 %i.dy, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %._crit_edge120.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 131072
  %i.ea = zext nneg i32 %.2 to i64
  %wide.trip.count151 = zext nneg i32 %18 to i64
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph123, %bb.az
  %indvars.iv148 = phi i64 [ %i.ea, %.lr.ph123 ], [ %indvars.iv.next149, %bb.az ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv148
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = and i32 %i.ec, 15
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ef = trunc nuw nsw i64 %indvars.iv148 to i32
  %i.eg = load ptr, ptr @stderr, align 8
  %i.eh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eg, ptr noundef nonnull @.str.45, i32 noundef %i.ef) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.az:                                            ; preds = %bb.ax
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge124, label %bb.ax, !llvm.loop !19

._crit_edge124:                                   ; preds = %bb.az, %._crit_edge120.thread
  %i.ei = tail call fastcc noundef i32 @_ZL11sumUpStatesP9UCMStates(ptr noundef nonnull %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef range(i32 0, -1) i32 @_ZL11sumUpStatesP9UCMStates(ptr noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132096 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.lr.ph101, label %.critedge

.lr.ph101:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 131584 ; 5 uses
  %.not132 = icmp eq i32 %i.b, 0
  br i1 %.not132, label %._crit_edge109.sink.split, label %.lr.ph101.split

.lr.ph101.split:                                  ; preds = %.lr.ph101, %._crit_edge
  %.07399 = phi i32 [ %i.al, %._crit_edge ], [ %i.b, %.lr.ph101 ] ; 2 uses
  %i.f = load i32, ptr %i.a, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge109.sink.split

.lr.ph.preheader:                                 ; preds = %.lr.ph101.split
  %i.h = zext nneg i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %indvars.iv117 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next118, %.thread ] ; 2 uses
  %.197 = phi i8 [ 1, %.lr.ph.preheader ], [ %.2, %.thread ]
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, -1 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next118 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 16
  %.not85 = icmp eq i32 %i.k, 0
  br i1 %.not85, label %.preheader90, label %.thread

.preheader90:                                     ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv.next118 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader90
  %indvars.iv = phi i64 [ 0, %.preheader90 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.07992 = phi i32 [ 0, %.preheader90 ], [ %.180.a, %bb.e ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %1, label %6

1:                                                ; preds = %bb.b
  %2 = and i32 %i.n, 15728640
  switch i32 %2, label %6 [
    i32 4194304, label %bb.c
    i32 5242880, label %3
  ]

3:                                                ; preds = %1
  br label %bb.c

bb.c:                                             ; preds = %1, %3
  %.sink = phi i32 [ 2, %3 ], [ 1, %1 ]
  %i.p = and i32 %i.n, -1048576
  %4 = or i32 %i.p, %.07992
  store i32 %4, ptr %i.m, align 4
  %5 = add nsw i32 %.07992, %.sink
  br label %6

6:                                                ; preds = %bb.c, %bb.b, %1
  %.180 = phi i32 [ %.07992, %1 ], [ %.07992, %bb.b ], [ %5, %bb.c ] ; 4 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %9 = load i32, ptr %8, align 4                  ; 3 uses
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %bb.e

11:                                               ; preds = %6
  %12 = and i32 %9, 15728640
  switch i32 %12, label %bb.e [
    i32 4194304, label %.sink.split
    i32 5242880, label %bb.d
  ]

bb.d:                                             ; preds = %11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %11
  %.sink.a = phi i32 [ 2, %bb.d ], [ 1, %11 ]
  %i.q = and i32 %9, -1048576
  %i.r = or i32 %i.q, %.180
  store i32 %i.r, ptr %8, align 4
  %i.s = add nsw i32 %.180, %.sink.a
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %11, %6
  %.180.a = phi i32 [ %.180, %11 ], [ %.180, %6 ], [ %i.s, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !20

.preheader:                                       ; preds = %bb.e, %bb.h
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.28194 = phi i32 [ %.3, %bb.h ], [ %.180.a, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv113 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader
  %i.w = lshr i32 %i.u, 24
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 16
  %.not86 = icmp eq i32 %i.aa, 0
  br i1 %.not86, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = and i32 %i.u, 2130706432
  %i.ac = or i32 %i.ab, %.28194
  store i32 %i.ac, ptr %i.t, align 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, %.28194
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %.3 = phi i32 [ %i.af, %bb.g ], [ %.28194, %.preheader ] ; 3 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next114, 256
  br i1 %exitcond116.not, label %bb.i, label %.preheader, !llvm.loop !21

bb.i:                                             ; preds = %bb.h
  %.not87 = icmp eq i32 %.3, -1
  br i1 %.not87, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next118
  store i32 %.3, ptr %i.ag, align 4
  %i.ah = load i32, ptr %i.i, align 4
  %i.ai = or i32 %i.ah, 16
  store i32 %i.ai, ptr %i.i, align 4
  br label %.thread

.thread:                                          ; preds = %bb.f, %.lr.ph, %bb.j, %bb.i
  %.2 = phi i8 [ %.197, %.lr.ph ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.aj = icmp sgt i64 %indvars.iv117, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.thread
  %i.ak = icmp eq i8 %.2, 0                       ; 2 uses
  %i.al = add nsw i32 %.07399, -1
  %i.am = icmp sgt i32 %.07399, 0
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph101.split, label %._crit_edge102, !llvm.loop !23

._crit_edge102:                                   ; preds = %._crit_edge
  br i1 %i.ak, label %.critedge, label %.lr.ph101.split.us

.critedge:                                        ; preds = %bb.a, %._crit_edge102
  %i.ao = load ptr, ptr @stderr, align 8
  %i.ap = tail call i64 @fwrite(ptr nonnull @.str.54, i64 42, i64 1, ptr %i.ao) #19 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

.lr.ph101.split.us:                               ; preds = %._crit_edge102
  %.pre.pr = load i32, ptr %i.a, align 4          ; 2 uses
  %i.aq = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ar = icmp sgt i32 %.pre.pr, 1
  br i1 %i.ar, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.lr.ph101.split.us, %.loopexit
  %i.as = phi i32 [ %i.cs, %.loopexit ], [ %.pre.pr, %.lr.ph101.split.us ]
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.loopexit ], [ 1, %.lr.ph101.split.us ] ; 4 uses
  %.5105 = phi i32 [ %.6, %.loopexit ], [ %i.aq, %.lr.ph101.split.us ] ; 10 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv123
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 15
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %vector.ph, label %.loopexit

vector.ph:                                        ; preds = %.lr.ph108
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv123
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv123 ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue154, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue154 ] ; 9 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x i32>, ptr %i.ba, align 4 ; 5 uses
  %wide.load140 = load <4 x i32>, ptr %i.bb, align 4 ; 5 uses
  %i.bc = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.bd = icmp sgt <4 x i32> %wide.load140, splat (i32 -1) ; 4 uses
  %i.be = extractelement <4 x i1> %i.bc, i64 0
  br i1 %i.be, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bf = extractelement <4 x i32> %wide.load, i64 0
  %i.bg = add nsw i32 %i.bf, %.5105
  store i32 %i.bg, ptr %i.ba, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bh = extractelement <4 x i1> %i.bc, i64 1
  br i1 %i.bh, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = extractelement <4 x i32> %wide.load, i64 1
  %i.bl = add nsw i32 %i.bk, %.5105
  store i32 %i.bl, ptr %i.bj, align 4
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue
  %i.bm = extractelement <4 x i1> %i.bc, i64 2
  br i1 %i.bm, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = extractelement <4 x i32> %wide.load, i64 2
  %i.bq = add nsw i32 %i.bp, %.5105
  store i32 %i.bq, ptr %i.bo, align 4
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.br = extractelement <4 x i1> %i.bc, i64 3
  br i1 %i.br, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bu = extractelement <4 x i32> %wide.load, i64 3
  %i.bv = add nsw i32 %i.bu, %.5105
  store i32 %i.bv, ptr %i.bt, align 4
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.bw = extractelement <4 x i1> %i.bd, i64 0
  br i1 %i.bw, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = extractelement <4 x i32> %wide.load140, i64 0
  %i.ca = add nsw i32 %i.bz, %.5105
  store i32 %i.ca, ptr %i.by, align 4
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.cb = extractelement <4 x i1> %i.bd, i64 1
  br i1 %i.cb, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ce = extractelement <4 x i32> %wide.load140, i64 1
  %i.cf = add nsw i32 %i.ce, %.5105
  store i32 %i.cf, ptr %i.cd, align 4
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.cg = extractelement <4 x i1> %i.bd, i64 2
  br i1 %i.cg, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = extractelement <4 x i32> %wide.load140, i64 2
  %i.ck = add nsw i32 %i.cj, %.5105
  store i32 %i.ck, ptr %i.ci, align 4
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.cl = extractelement <4 x i1> %i.bd, i64 3
  br i1 %i.cl, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.co = extractelement <4 x i32> %wide.load140, i64 3
  %i.cp = add nsw i32 %i.co, %.5105
  store i32 %i.cp, ptr %i.cn, align 4
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, 256
  br i1 %i.cq, label %.loopexit.loopexit, label %vector.body, !llvm.loop !25

.loopexit.loopexit:                               ; preds = %pred.store.continue154
  %i.cr = add i32 %i.ay, %.5105
  %.pre126 = load i32, ptr %i.a, align 4
  br label %.loopexit
end_hunk_0
begin_hunk_1_@ucm_optimizeStates:bb.a
  %i.ar = extractelement <4 x i32> %wide.load88, i64 2
  %i.as = or disjoint i32 %i.ar, 6291456
  store i32 %i.as, ptr %i.aq, align 4
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.at = extractelement <4 x i1> %i.l, i64 3
  br i1 %i.at, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.aw = extractelement <4 x i32> %wide.load88, i64 3
  %i.ax = or disjoint i32 %i.aw, 6291456
  store i32 %i.ax, ptr %i.av, align 4
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, 256
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %pred.store.continue102
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.az = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next54, %i.ba
  br i1 %i.bb, label %.preheader, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %middle.block, %bb.a
  %.lcssa41 = phi i32 [ %i.d, %bb.a ], [ %i.az, %middle.block ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 132104
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 132113
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 12
  %..i = zext i1 %i.bh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.bi = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %..i ; 5 uses
  br label %bb.c

.preheader213.i:                                  ; preds = %bb.g
  %i.bj = icmp sgt i32 %.lcssa41, 1
  br i1 %i.bj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader213.i
  %wide.trip.count.i = zext nneg i32 %.lcssa41 to i64
  %i.bk = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.bk, 3                    ; 3 uses
  %i.bl = add nsw i32 %.lcssa41, -2
  %i.bm = icmp ult i32 %i.bl, 3
  br i1 %i.bm, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bk, -4
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %bb.g ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bq = lshr i32 %i.bo, 24
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.br ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = add i16 %i.bt, 1
  store i16 %i.bu, ptr %i.bs, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = lshr i32 %i.bx, 24
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %i.cb, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader213.i, label %bb.c, !llvm.loop !30

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv247.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next248.i.3, %.lr.ph.i ] ; 6 uses
  %.0217.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv247.i
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = zext nneg i32 %.0217.i to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = icmp ugt i16 %i.cf, %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv247.i to i32
  %spec.select.i = select i1 %i.cj, i32 %i.ck, i32 %.0217.i ; 2 uses
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next248.i
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = zext nneg i32 %spec.select.i to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = icmp ugt i16 %i.cm, %i.cp
  %i.cr = trunc nuw nsw i64 %indvars.iv.next248.i to i32
  %spec.select.i.1 = select i1 %i.cq, i32 %i.cr, i32 %spec.select.i ; 2 uses
  %indvars.iv.next248.i.1 = add nuw nsw i64 %indvars.iv247.i, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next248.i.1
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = zext nneg i32 %spec.select.i.1 to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = icmp ugt i16 %i.ct, %i.cw
  %i.cy = trunc nuw nsw i64 %indvars.iv.next248.i.1 to i32
  %spec.select.i.2 = select i1 %i.cx, i32 %i.cy, i32 %spec.select.i.1 ; 2 uses
  %indvars.iv.next248.i.2 = add nuw nsw i64 %indvars.iv247.i, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next248.i.2
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext nneg i32 %spec.select.i.2 to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = icmp ugt i16 %i.da, %i.dd
  %i.df = trunc nuw nsw i64 %indvars.iv.next248.i.2 to i32
  %spec.select.i.3 = select i1 %i.de, i32 %i.df, i32 %spec.select.i.2 ; 3 uses
  %indvars.iv.next248.i.3 = add nuw nsw i64 %indvars.iv247.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !31

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv247.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next248.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0217.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv247.i.epil = phi i64 [ %indvars.iv247.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next248.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.0217.i.epil = phi i32 [ %.0217.i.epil.init, %.lr.ph.i.epil.preheader ], [ %spec.select.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv247.i.epil
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext nneg i32 %.0217.i.epil to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = icmp ugt i16 %i.dh, %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv247.i.epil to i32
  %spec.select.i.epil = select i1 %i.dl, i32 %i.dm, i32 %.0217.i.epil ; 2 uses
  %indvars.iv.next248.i.epil = add nuw nsw i64 %indvars.iv247.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !32

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader213.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader213.i ], [ %spec.select.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.dn = zext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.do = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.dn ; 5 uses
  %i.dp = icmp sgt i32 %3, 0                      ; 3 uses
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %._crit_edge.i
  %indvars.iv251.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next252.i, %bb.o ] ; 3 uses
  %.0179221.i = phi i32 [ 0, %._crit_edge.i ], [ %.1180.i, %bb.o ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv251.i
  %i.dr = load i32, ptr %i.dq, align 4            ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, -1
  %i.dt = lshr i32 %i.dr, 24
  %i.du = icmp eq i32 %i.dt, %.0.lcssa.i
  %or.cond.i = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dv = and i32 %i.dr, 16777215                 ; 4 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv251.i ; 6 uses
  br i1 %i.dp, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.i, %ucm_findFallback.exit.us.i
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %ucm_findFallback.exit.us.i ], [ 0, %bb.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv60
  %i.dy = load i32, ptr %i.dx, align 4            ; 3 uses
  %i.dz = and i32 %i.dy, 15728640
  switch i32 %i.dz, label %ucm_findFallback.exit.us.i [
    i32 4194304, label %bb.k
    i32 5242880, label %bb.j
  ]

bb.j:                                             ; preds = %.split.us.i
  %i.ea = and i32 %i.dy, 65535
  %i.eb = add nuw nsw i32 %i.ea, %i.dv
  %i.ec = load ptr, ptr %1, align 8
  %i.ed = zext nneg i32 %i.eb to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = icmp eq i16 %i.ef, -2
  br i1 %i.eg, label %ucm_findFallback.exit.us.sink.split.i, label %.split220.us.thread.i

bb.k:                                             ; preds = %.split.us.i
  %i.eh = and i32 %i.dy, 65535
  %i.ei = add nuw nsw i32 %i.eh, %i.dv            ; 2 uses
  %i.ej = load ptr, ptr %1, align 8
  %i.ek = zext nneg i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2
  %i.en = icmp eq i16 %i.em, -2
  br i1 %i.en, label %.lr.ph.i.us.i, label %.split220.us.thread.i

.lr.ph.i.us.i:                                    ; preds = %bb.k, %bb.l
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.us.i
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp eq i32 %i.ei, %i.ep
  br i1 %i.eq, label %.split220.us.thread.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %ucm_findFallback.exit.us.sink.split.i, label %.lr.ph.i.us.i, !llvm.loop !27

ucm_findFallback.exit.us.sink.split.i:            ; preds = %bb.l, %bb.j
  %.sink322.i = phi i16 [ 2, %bb.j ], [ 1, %bb.l ]
  %i.er = load i16, ptr %i.dw, align 2
  %i.es = add i16 %i.er, %.sink322.i
  store i16 %i.es, ptr %i.dw, align 2
  br label %ucm_findFallback.exit.us.i

ucm_findFallback.exit.us.i:                       ; preds = %ucm_findFallback.exit.us.sink.split.i, %.split.us.i
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, 256
  br i1 %exitcond63.not, label %.split220.us.i, label %.split.us.i, !llvm.loop !34

.split.i:                                         ; preds = %bb.i, %ucm_findFallback.exit.i
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %ucm_findFallback.exit.i ], [ 0, %bb.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv56
  %i.eu = load i32, ptr %i.et, align 4            ; 3 uses
  %i.ev = and i32 %i.eu, 15728640
  switch i32 %i.ev, label %ucm_findFallback.exit.i [
    i32 4194304, label %bb.m
    i32 5242880, label %bb.n
  ]

bb.m:                                             ; preds = %.split.i
  %i.ew = and i32 %i.eu, 65535
  %i.ex = add nuw nsw i32 %i.ew, %i.dv
  %i.ey = load ptr, ptr %1, align 8
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2
  %i.fc = icmp eq i16 %i.fb, -2
  br i1 %i.fc, label %ucm_findFallback.exit.sink.split.i, label %.split220.us.thread.i

bb.n:                                             ; preds = %.split.i
  %i.fd = and i32 %i.eu, 65535
  %i.fe = add nuw nsw i32 %i.fd, %i.dv
  %i.ff = load ptr, ptr %1, align 8
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = icmp eq i16 %i.fi, -2
  br i1 %i.fj, label %ucm_findFallback.exit.sink.split.i, label %.split220.us.thread.i

ucm_findFallback.exit.sink.split.i:               ; preds = %bb.n, %bb.m
  %.sink324.i = phi i16 [ 1, %bb.m ], [ 2, %bb.n ]
  %i.fk = load i16, ptr %i.dw, align 2
  %i.fl = add i16 %i.fk, %.sink324.i
  store i16 %i.fl, ptr %i.dw, align 2
  br label %ucm_findFallback.exit.i

ucm_findFallback.exit.i:                          ; preds = %ucm_findFallback.exit.sink.split.i, %.split.i
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, 256
  br i1 %exitcond59.not, label %.split220.us.i, label %.split.i, !llvm.loop !34

.split220.us.i:                                   ; preds = %ucm_findFallback.exit.i, %ucm_findFallback.exit.us.i
  %i.fm = load i16, ptr %i.dw, align 2
  %i.fn = zext i16 %i.fm to i32
  %i.fo = add nsw i32 %.0179221.i, %i.fn
  br label %bb.o

.split220.us.thread.i:                            ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %.lr.ph.i.us.i
  store i16 0, ptr %i.dw, align 2
  br label %bb.o

bb.o:                                             ; preds = %.split220.us.thread.i, %.split220.us.i, %bb.h
  %.1180.i = phi i32 [ %i.fo, %.split220.us.i ], [ %.0179221.i, %.split220.us.thread.i ], [ %.0179221.i, %bb.h ] ; 3 uses
  %indvars.iv.next252.i = add nuw nsw i64 %indvars.iv251.i, 1 ; 2 uses
  %exitcond254.not.i = icmp eq i64 %indvars.iv.next252.i, 256
  br i1 %exitcond254.not.i, label %bb.p, label %bb.h, !llvm.loop !35

bb.p:                                             ; preds = %bb.o
  %i.fp = shl nsw i32 %.1180.i, 1
  %i.fq = add nsw i32 %i.fp, -1024
  %i.fr = icmp slt i32 %.1180.i, 513
  br i1 %i.fr, label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fs = zext nneg i32 %i.fq to i64
  %i.ft = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i64 noundef %i.fs) ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fu = phi i32 [ %.pre.i, %bb.r ], [ %.lcssa41, %bb.q ] ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, 127
  br i1 %i.fv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fw = load ptr, ptr @stderr, align 8
  %i.fx = tail call i64 @fwrite(ptr nonnull @.str.56, i64 73, i64 1, ptr %i.fw) #19 ; 0 uses
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

bb.u:                                             ; preds = %bb.s
  %i.fy = shl nsw i32 %i.fu, 10
  %i.fz = sext i32 %i.fy to i64
  %i.ga = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.fz) #20 ; 10 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.v, label %vector.memcheck

bb.v:                                             ; preds = %bb.u
  %i.gc = load ptr, ptr @stderr, align 8
  %i.gd = tail call i64 @fwrite(ptr nonnull @.str.57, i64 40, i64 1, ptr %i.gc) #19 ; 0 uses
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

vector.memcheck:                                  ; preds = %bb.u
  %i.ge = load i32, ptr %i.c, align 4             ; 6 uses
  %i.gf = shl nsw i32 %i.ge, 10
  %i.gg = sext i32 %i.gf to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ga, ptr nonnull align 4 %0, i64 %i.gg, i1 false)
  %i.gh = add nsw i32 %i.ge, 1
  store i32 %i.gh, ptr %i.c, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 4 uses
  %i.gj = sext i32 %i.ge to i64                   ; 3 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gj
  store i32 0, ptr %i.gk, align 4
  %i.gl = getelementptr inbounds [1024 x i8], ptr %0, i64 %i.gj ; 3 uses
  %diff.check = icmp eq i64 %i.gj, %i.dn
  br i1 %diff.check, label %scalar.ph, label %vector.body104

vector.body104:                                   ; preds = %vector.memcheck, %vector.body104
  %index105 = phi i64 [ %index.next108, %vector.body104 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index105 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load106 = load <4 x i32>, ptr %i.gm, align 4 ; 3 uses
  %wide.load107 = load <4 x i32>, ptr %i.gn, align 4 ; 3 uses
  %i.go = and <4 x i32> %wide.load106, splat (i32 14680064)
  %5 = icmp eq <4 x i32> %i.go, splat (i32 4194304)
  %6 = and <4 x i32> %wide.load107, splat (i32 14680064)
  %i.gp = icmp eq <4 x i32> %6, splat (i32 4194304)
  %i.gq = and <4 x i32> %wide.load106, splat (i32 -16777216)
  %i.gr = and <4 x i32> %wide.load107, splat (i32 -16777216)
  %i.gs = or disjoint <4 x i32> %i.gq, splat (i32 6356990)
  %i.gt = or disjoint <4 x i32> %i.gr, splat (i32 6356990)
  %i.gu = select <4 x i1> %5, <4 x i32> %i.gs, <4 x i32> %wide.load106
  %i.gv = select <4 x i1> %i.gp, <4 x i32> %i.gt, <4 x i32> %wide.load107
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index105 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x i32> %i.gu, ptr %i.gw, align 4
  store <4 x i32> %i.gv, ptr %i.gx, align 4
  %index.next108 = add nuw i64 %index105, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next108, 256
  br i1 %i.gy, label %.preheader212.i, label %vector.body104, !llvm.loop !36

.preheader212.i:                                  ; preds = %vector.body104, %16
  %i.gz = shl i32 %i.ge, 24                       ; 2 uses
  br label %bb.w

scalar.ph:                                        ; preds = %vector.memcheck, %16
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i.1, %16 ], [ 0, %vector.memcheck ] ; 4 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv255.i
  %8 = load i32, ptr %7, align 4                  ; 3 uses
  %9 = and i32 %8, 15728640
  switch i32 %9, label %scalar.ph.a [
    i32 4194304, label %10
    i32 5242880, label %10
  ]

10:                                               ; preds = %scalar.ph, %scalar.ph
  %11 = and i32 %8, -16777216
  %12 = or disjoint i32 %11, 6356990
  br label %scalar.ph.a

scalar.ph.a:                                      ; preds = %10, %scalar.ph
  %.sink.i = phi i32 [ %12, %10 ], [ %8, %scalar.ph ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv255.i
  store i32 %.sink.i, ptr %i.ha, align 4
  %indvars.iv.next256.i = or disjoint i64 %indvars.iv255.i, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next256.i
  %i.hc = load i32, ptr %i.hb, align 4            ; 3 uses
  %i.hd = and i32 %i.hc, 15728640
  switch i32 %i.hd, label %16 [
    i32 4194304, label %13
    i32 5242880, label %13
  ]

13:                                               ; preds = %scalar.ph.a, %scalar.ph.a
  %14 = and i32 %i.hc, -16777216
  %15 = or disjoint i32 %14, 6356990
  br label %16

16:                                               ; preds = %13, %scalar.ph.a
  %.sink.i.1 = phi i32 [ %15, %13 ], [ %i.hc, %scalar.ph.a ]
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next256.i
  store i32 %.sink.i.1, ptr %17, align 4
  %indvars.iv.next256.i.1 = add nuw nsw i64 %indvars.iv255.i, 2 ; 2 uses
  %exitcond258.not.i.1 = icmp eq i64 %indvars.iv.next256.i.1, 256
  br i1 %exitcond258.not.i.1, label %.preheader212.i, label %scalar.ph, !llvm.loop !37

.preheader211.i:                                  ; preds = %bb.aa
  %i.he = load i32, ptr %i.c, align 4
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph226.i, label %._crit_edge227.i

bb.w:                                             ; preds = %bb.aa, %.preheader212.i
  %indvars.iv259.i = phi i64 [ 0, %.preheader212.i ], [ %indvars.iv.next260.i.1, %bb.aa ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv259.i
  %i.hh = load i16, ptr %i.hg, align 4
  %.not193.i = icmp eq i16 %i.hh, 0
  br i1 %.not193.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv259.i ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = and i32 %i.hj, -2130706433
  %i.hl = or i32 %i.hk, %i.gz
  store i32 %i.hl, ptr %i.hi, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.next260.i = or disjoint i64 %indvars.iv259.i, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next260.i
  %i.hn = load i16, ptr %i.hm, align 2
  %.not193.i.1 = icmp eq i16 %i.hn, 0
  br i1 %.not193.i.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next260.i ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = and i32 %i.hp, -2130706433
  %i.hr = or i32 %i.hq, %i.gz
  store i32 %i.hr, ptr %i.ho, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next260.i.1 = add nuw nsw i64 %indvars.iv259.i, 2 ; 2 uses
  %exitcond262.not.i.1 = icmp eq i64 %indvars.iv.next260.i.1, 256
  br i1 %exitcond262.not.i.1, label %.preheader211.i, label %bb.w, !llvm.loop !38

.lr.ph226.i:                                      ; preds = %.preheader211.i, %.lr.ph226.i
  %indvars.iv263.i = phi i64 [ %indvars.iv.next264.i, %.lr.ph226.i ], [ 0, %.preheader211.i ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv263.i ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, -17
  store i32 %i.hu, ptr %i.hs, align 4
  %indvars.iv.next264.i = add nuw nsw i64 %indvars.iv263.i, 1 ; 2 uses
  %i.hv = load i32, ptr %i.c, align 4
  %i.hw = sext i32 %i.hv to i64
  %i.hx = icmp slt i64 %indvars.iv.next264.i, %i.hw
  br i1 %i.hx, label %.lr.ph226.i, label %._crit_edge227.i, !llvm.loop !39

._crit_edge227.i:                                 ; preds = %.lr.ph226.i, %.preheader211.i
  %i.hy = tail call fastcc noundef i32 @_ZL11sumUpStatesP9UCMStates(ptr noundef nonnull %0) ; 5 uses
  %i.hz = load ptr, ptr %1, align 8               ; 8 uses
  %i.ia = icmp eq i32 %i.hy, 0
  br i1 %i.ia, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %._crit_edge227.i
  store ptr null, ptr %1, align 8
  %.not192.i = icmp eq ptr %i.hz, null
  br i1 %.not192.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @uprv_free_78(ptr noundef nonnull %i.hz) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @uprv_free_78(ptr noundef nonnull %i.ga) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

bb.ae:                                            ; preds = %._crit_edge227.i
  %i.ib = sext i32 %i.hy to i64                   ; 2 uses
  %i.ic = shl nsw i64 %i.ib, 1
  %i.id = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ic) #20 ; 2 uses
  store ptr %i.id, ptr %1, align 8
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.af, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.ae
  %i.if = icmp sgt i32 %i.hy, 0
  br i1 %i.if, label %.lr.ph229.preheader.i, label %.preheader209.i

.lr.ph229.preheader.i:                            ; preds = %.preheader210.i
  %wide.trip.count269.i = zext nneg i32 %i.hy to i64 ; 2 uses
  %xtraiter118 = and i64 %wide.trip.count269.i, 3 ; 3 uses
  %i.ig = icmp ult i32 %i.hy, 4
  br i1 %i.ig, label %.lr.ph229.i.epil.preheader, label %.lr.ph229.preheader.i.new

.lr.ph229.preheader.i.new:                        ; preds = %.lr.ph229.preheader.i
  %unroll_iter122 = and i64 %wide.trip.count269.i, 2147483644
  br label %.lr.ph229.i

bb.af:                                            ; preds = %bb.ae
  %i.ih = load ptr, ptr @stderr, align 8
  %i.ii = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.58, i64 noundef %i.ib) #15 ; 0 uses
  store ptr %i.hz, ptr %1, align 8
  %i.ij = load i32, ptr %i.c, align 4
  %i.ik = add nsw i32 %i.ij, -1                   ; 2 uses
  store i32 %i.ik, ptr %i.c, align 4
  %i.il = shl nsw i32 %i.ik, 10
  %i.im = sext i32 %i.il to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.ga, i64 %i.im, i1 false)
  tail call void @uprv_free_78(ptr noundef nonnull %i.ga) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

.preheader209.i.loopexit.unr-lcssa:               ; preds = %.lr.ph229.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %.preheader209.i, label %.lr.ph229.i.epil.preheader

.lr.ph229.i.epil.preheader:                       ; preds = %.preheader209.i.loopexit.unr-lcssa, %.lr.ph229.preheader.i
  %indvars.iv266.i.epil.init = phi i64 [ 0, %.lr.ph229.preheader.i ], [ %indvars.iv.next267.i.3, %.preheader209.i.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %.lr.ph229.i.epil

.lr.ph229.i.epil:                                 ; preds = %.lr.ph229.i.epil, %.lr.ph229.i.epil.preheader
  %indvars.iv266.i.epil = phi i64 [ %indvars.iv266.i.epil.init, %.lr.ph229.i.epil.preheader ], [ %indvars.iv.next267.i.epil, %.lr.ph229.i.epil ] ; 2 uses
  %epil.iter119 = phi i64 [ 0, %.lr.ph229.i.epil.preheader ], [ %epil.iter119.next, %.lr.ph229.i.epil ]
  %i.in = load ptr, ptr %1, align 8
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %indvars.iv266.i.epil
  store i16 -2, ptr %i.io, align 2
  %indvars.iv.next267.i.epil = add nuw nsw i64 %indvars.iv266.i.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %.preheader209.i, label %.lr.ph229.i.epil, !llvm.loop !40

.preheader209.i:                                  ; preds = %.preheader209.i.loopexit.unr-lcssa, %.lr.ph229.i.epil, %.preheader210.i
  %i.ip = load i32, ptr %i.c, align 4             ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph238.i, label %.preheader.i

.lr.ph238.i:                                      ; preds = %.preheader209.i
  br i1 %i.dp, label %.lr.ph238.split.us.i, label %.lr.ph238.split.i

.lr.ph238.split.us.i:                             ; preds = %.lr.ph238.i, %.loopexit208.split.us.us.i
  %i.ir = phi i32 [ %i.iw, %.loopexit208.split.us.us.i ], [ %i.ip, %.lr.ph238.i ]
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %.loopexit208.split.us.us.i ], [ 0, %.lr.ph238.i ] ; 4 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv290.i
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = and i32 %i.it, 15
  %i.iv = icmp eq i32 %i.iu, 1
  br i1 %i.iv, label %.preheader207.us.i, label %.loopexit208.split.us.us.i

.loopexit208.split.us.us.loopexit.i:              ; preds = %.loopexit.split.us235.us.i
  %.pre299.i = load i32, ptr %i.c, align 4
  br label %.loopexit208.split.us.us.i

.loopexit208.split.us.us.i:                       ; preds = %.loopexit208.split.us.us.loopexit.i, %.lr.ph238.split.us.i
  %i.iw = phi i32 [ %.pre299.i, %.loopexit208.split.us.us.loopexit.i ], [ %i.ir, %.lr.ph238.split.us.i ] ; 2 uses
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %i.iy = icmp slt i64 %indvars.iv.next291.i, %i.ix
  br i1 %i.iy, label %.lr.ph238.split.us.i, label %.preheader.i, !llvm.loop !41

.preheader207.us.i:                               ; preds = %.lr.ph238.split.us.i
  %i.iz = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv290.i
  %i.ja = getelementptr inbounds nuw [1024 x i8], ptr %i.ga, i64 %indvars.iv290.i
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split.us235.us.i, %.preheader207.us.i
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %.loopexit.split.us235.us.i ], [ 0, %.preheader207.us.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv286.i
  %i.jc = load i32, ptr %i.jb, align 4            ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %bb.ah, label %.loopexit.split.us235.us.i

bb.ah:                                            ; preds = %bb.ag
  %i.je = lshr i32 %i.jc, 24                      ; 2 uses
  %.not191.us.us.i = icmp eq i32 %i.je, %i.ge
  br i1 %.not191.us.us.i, label %.loopexit.split.us235.us.i, label %.split231.us236.us.i

.split231.us236.us.i:                             ; preds = %bb.ah
  %i.jf = and i32 %i.jc, 16777215                 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv286.i
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = and i32 %i.jh, 16777215                 ; 2 uses
  %i.jj = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jk = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.jj
  %i.jl = getelementptr inbounds nuw [1024 x i8], ptr %i.ga, i64 %i.jj ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %ucm_findFallback.exit203.thread.us234.us.i, %.split231.us236.us.i
  %indvars.iv282.i = phi i64 [ %indvars.iv.next283.i, %ucm_findFallback.exit203.thread.us234.us.i ], [ 0, %.split231.us236.us.i ] ; 4 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv282.i
  %i.jn = load i32, ptr %i.jm, align 4            ; 3 uses
  %i.jo = and i32 %i.jn, 15728640
  switch i32 %i.jo, label %ucm_findFallback.exit203.thread.us234.us.i [
    i32 4194304, label %bb.ak
    i32 5242880, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.jp = and i32 %i.jn, 65535
  %i.jq = add nuw nsw i32 %i.jp, %i.jf
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv282.i
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = and i32 %i.js, 65535
  %i.ju = add nuw nsw i32 %i.jt, %i.ji
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.jv ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2
  %i.jy = load ptr, ptr %1, align 8
  %i.jz = zext nneg i32 %i.jq to i64              ; 2 uses
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.jz
  store i16 %i.jx, ptr %i.ka, align 2
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = load ptr, ptr %1, align 8
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %i.jz
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  store i16 %i.kc, ptr %i.kf, align 2
  br label %ucm_findFallback.exit203.thread.us234.us.i

bb.ak:                                            ; preds = %bb.ai
  %i.kg = and i32 %i.jn, 65535
  %i.kh = add nuw nsw i32 %i.kg, %i.jf            ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv282.i
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = and i32 %i.kj, 65535
  %i.kl = add nuw nsw i32 %i.kk, %i.ji            ; 2 uses
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2            ; 2 uses
  %i.kp = load ptr, ptr %1, align 8
  %i.kq = zext nneg i32 %i.kh to i64
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.kq
  store i16 %i.ko, ptr %i.kr, align 2
  %i.ks = icmp eq i16 %i.ko, -2
  br i1 %i.ks, label %.lr.ph.i198.us.us.i, label %ucm_findFallback.exit203.thread.us234.us.i

.lr.ph.i198.us.us.i:                              ; preds = %bb.ak, %bb.al
  %indvars.iv.i199.us.us.i = phi i64 [ %indvars.iv.next.i200.us.us.i, %bb.al ], [ 0, %bb.ak ] ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i199.us.us.i
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = icmp eq i32 %i.kl, %i.ku
  br i1 %i.kv, label %ucm_findFallback.exit203.us.us.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i198.us.us.i
  %indvars.iv.next.i200.us.us.i = add nuw nsw i64 %indvars.iv.i199.us.us.i, 1 ; 2 uses
  %exitcond.not.i201.us.us.i = icmp eq i64 %indvars.iv.next.i200.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i201.us.us.i, label %ucm_findFallback.exit203.thread.us234.us.i, label %.lr.ph.i198.us.us.i, !llvm.loop !27

ucm_findFallback.exit203.us.us.i:                 ; preds = %.lr.ph.i198.us.us.i
  %i.kw = or disjoint i32 %i.kh, -2147483648
  %i.kx = and i64 %indvars.iv.i199.us.us.i, 4294967295
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kx
  store i32 %i.kw, ptr %i.ky, align 4
  br label %ucm_findFallback.exit203.thread.us234.us.i

ucm_findFallback.exit203.thread.us234.us.i:       ; preds = %bb.al, %ucm_findFallback.exit203.us.us.i, %bb.ak, %bb.aj, %bb.ai
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 2 uses
  %exitcond285.not.i = icmp eq i64 %indvars.iv.next283.i, 256
  br i1 %exitcond285.not.i, label %.loopexit.split.us235.us.i, label %bb.ai, !llvm.loop !42

.loopexit.split.us235.us.i:                       ; preds = %ucm_findFallback.exit203.thread.us234.us.i, %bb.ah, %bb.ag
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next287.i, 256
  br i1 %exitcond289.not.i, label %.loopexit208.split.us.us.loopexit.i, label %bb.ag, !llvm.loop !43

.lr.ph229.i:                                      ; preds = %.lr.ph229.i, %.lr.ph229.preheader.i.new
  %indvars.iv266.i = phi i64 [ 0, %.lr.ph229.preheader.i.new ], [ %indvars.iv.next267.i.3, %.lr.ph229.i ] ; 5 uses
  %niter123 = phi i64 [ 0, %.lr.ph229.preheader.i.new ], [ %niter123.next.3, %.lr.ph229.i ]
  %i.kz = load ptr, ptr %1, align 8
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %indvars.iv266.i
  store i16 -2, ptr %i.la, align 2
  %i.lb = load ptr, ptr %1, align 8
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %indvars.iv266.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  store i16 -2, ptr %i.ld, align 2
  %i.le = load ptr, ptr %1, align 8
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %indvars.iv266.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store i16 -2, ptr %i.lg, align 2
  %i.lh = load ptr, ptr %1, align 8
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %indvars.iv266.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 6
  store i16 -2, ptr %i.lj, align 2
  %indvars.iv.next267.i.3 = add nuw nsw i64 %indvars.iv266.i, 4 ; 2 uses
  %niter123.next.3 = add i64 %niter123, 4         ; 2 uses
  %niter123.ncmp.3 = icmp eq i64 %niter123.next.3, %unroll_iter122
  br i1 %niter123.ncmp.3, label %.preheader209.i.loopexit.unr-lcssa, label %.lr.ph229.i, !llvm.loop !44

.preheader.i:                                     ; preds = %.loopexit208.split.i, %.loopexit208.split.us.us.i, %.preheader209.i
  br i1 %i.dp, label %.lr.ph240.i.preheader, label %._crit_edge241.i

.lr.ph240.i.preheader:                            ; preds = %.preheader.i
  %xtraiter124 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.lk = icmp ult i32 %3, 4
  br i1 %i.lk, label %.lr.ph240.i.epil.preheader, label %.lr.ph240.i.preheader.new

.lr.ph240.i.preheader.new:                        ; preds = %.lr.ph240.i.preheader
  %unroll_iter128 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph240.i

.lr.ph238.split.i:                                ; preds = %.lr.ph238.i, %.loopexit208.split.i
  %i.ll = phi i32 [ %i.nj, %.loopexit208.split.i ], [ %i.ip, %.lr.ph238.i ]
  %indvars.iv279.i = phi i64 [ %indvars.iv.next280.i, %.loopexit208.split.i ], [ 0, %.lr.ph238.i ] ; 4 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv279.i
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = and i32 %i.ln, 15
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %.preheader207.i, label %.loopexit208.split.i

.preheader207.i:                                  ; preds = %.lr.ph238.split.i
  %i.lq = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv279.i
  %i.lr = getelementptr inbounds nuw [1024 x i8], ptr %i.ga, i64 %indvars.iv279.i
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split.us.i, %.preheader207.i
  %indvars.iv275.i = phi i64 [ 0, %.preheader207.i ], [ %indvars.iv.next276.i, %.loopexit.split.us.i ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv275.i
  %i.lt = load i32, ptr %i.ls, align 4            ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, -1
  br i1 %i.lu, label %bb.an, label %.loopexit.split.us.i

bb.an:                                            ; preds = %bb.am
  %i.lv = lshr i32 %i.lt, 24                      ; 2 uses
  %.not191.i = icmp eq i32 %i.lv, %i.ge
  br i1 %.not191.i, label %.loopexit.split.us.i, label %.split231.us.i

.split231.us.i:                                   ; preds = %bb.an
  %i.lw = and i32 %i.lt, 16777215                 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv275.i
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = and i32 %i.ly, 16777215                 ; 2 uses
  %i.ma = zext nneg i32 %i.lv to i64              ; 2 uses
  %i.mb = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.ma
  %i.mc = getelementptr inbounds nuw [1024 x i8], ptr %i.ga, i64 %i.ma ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %ucm_findFallback.exit203.thread.us.i, %.split231.us.i
  %indvars.iv271.i = phi i64 [ %indvars.iv.next272.i, %ucm_findFallback.exit203.thread.us.i ], [ 0, %.split231.us.i ] ; 4 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv271.i
  %i.me = load i32, ptr %i.md, align 4            ; 3 uses
  %i.mf = and i32 %i.me, 15728640
  switch i32 %i.mf, label %ucm_findFallback.exit203.thread.us.i [
    i32 4194304, label %bb.aq
    i32 5242880, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.mg = and i32 %i.me, 65535
  %i.mh = add nuw nsw i32 %i.mg, %i.lw
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv271.i
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = and i32 %i.mj, 65535
  %i.ml = add nuw nsw i32 %i.mk, %i.lz
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.mm ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2
  %i.mp = load ptr, ptr %1, align 8
  %i.mq = zext nneg i32 %i.mh to i64              ; 2 uses
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %i.mq
  store i16 %i.mo, ptr %i.mr, align 2
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  %i.mt = load i16, ptr %i.ms, align 2
  %i.mu = load ptr, ptr %1, align 8
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.mu, i64 %i.mq
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 2
  store i16 %i.mt, ptr %i.mw, align 2
  br label %ucm_findFallback.exit203.thread.us.i

bb.aq:                                            ; preds = %bb.ao
  %i.mx = and i32 %i.me, 65535
  %i.my = add nuw nsw i32 %i.mx, %i.lw
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv271.i
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = and i32 %i.na, 65535
  %i.nc = add nuw nsw i32 %i.nb, %i.lz
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.nd
  %i.nf = load i16, ptr %i.ne, align 2
  %i.ng = load ptr, ptr %1, align 8
  %i.nh = zext nneg i32 %i.my to i64
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.ng, i64 %i.nh
  store i16 %i.nf, ptr %i.ni, align 2
  br label %ucm_findFallback.exit203.thread.us.i

ucm_findFallback.exit203.thread.us.i:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next272.i, 256
  br i1 %exitcond274.not.i, label %.loopexit.split.us.i, label %bb.ao, !llvm.loop !42

.loopexit.split.us.i:                             ; preds = %ucm_findFallback.exit203.thread.us.i, %bb.an, %bb.am
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %exitcond278.not.i = icmp eq i64 %indvars.iv.next276.i, 256
  br i1 %exitcond278.not.i, label %.loopexit208.split.loopexit.i, label %bb.am, !llvm.loop !43

.loopexit208.split.loopexit.i:                    ; preds = %.loopexit.split.us.i
  %.pre298.i = load i32, ptr %i.c, align 4
  br label %.loopexit208.split.i

.loopexit208.split.i:                             ; preds = %.loopexit208.split.loopexit.i, %.lr.ph238.split.i
  %i.nj = phi i32 [ %.pre298.i, %.loopexit208.split.loopexit.i ], [ %i.ll, %.lr.ph238.split.i ] ; 2 uses
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %i.nk = sext i32 %i.nj to i64
  %i.nl = icmp slt i64 %indvars.iv.next280.i, %i.nk
  br i1 %i.nl, label %.lr.ph238.split.i, label %.preheader.i, !llvm.loop !41

.lr.ph240.i:                                      ; preds = %.lr.ph240.i, %.lr.ph240.i.preheader.new
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph240.i.preheader.new ], [ %indvars.iv.next294.i.3, %.lr.ph240.i ] ; 5 uses
  %niter129 = phi i64 [ 0, %.lr.ph240.i.preheader.new ], [ %niter129.next.3, %.lr.ph240.i ]
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = and i32 %i.nn, 2147483647
  store i32 %i.no, ptr %i.nm, align 4
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4
  %i.ns = and i32 %i.nr, 2147483647
  store i32 %i.ns, ptr %i.nq, align 4
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4
  %i.nw = and i32 %i.nv, 2147483647
  store i32 %i.nw, ptr %i.nu, align 4
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = and i32 %i.nz, 2147483647
  store i32 %i.oa, ptr %i.ny, align 4
  %indvars.iv.next294.i.3 = add nuw nsw i64 %indvars.iv293.i, 4 ; 2 uses
  %niter129.next.3 = add i64 %niter129, 4         ; 2 uses
  %niter129.ncmp.3 = icmp eq i64 %niter129.next.3, %unroll_iter128
  br i1 %niter129.ncmp.3, label %._crit_edge241.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !45

._crit_edge241.i.loopexit.unr-lcssa:              ; preds = %.lr.ph240.i
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %._crit_edge241.i, label %.lr.ph240.i.epil.preheader

.lr.ph240.i.epil.preheader:                       ; preds = %._crit_edge241.i.loopexit.unr-lcssa, %.lr.ph240.i.preheader
  %indvars.iv293.i.epil.init = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next294.i.3, %._crit_edge241.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph240.i.epil

.lr.ph240.i.epil:                                 ; preds = %.lr.ph240.i.epil, %.lr.ph240.i.epil.preheader
  %indvars.iv293.i.epil = phi i64 [ %indvars.iv.next294.i.epil, %.lr.ph240.i.epil ], [ %indvars.iv293.i.epil.init, %.lr.ph240.i.epil.preheader ] ; 2 uses
  %epil.iter125 = phi i64 [ %epil.iter125.next, %.lr.ph240.i.epil ], [ 0, %.lr.ph240.i.epil.preheader ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i.epil ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4
  %i.od = and i32 %i.oc, 2147483647
  store i32 %i.od, ptr %i.ob, align 4
  %indvars.iv.next294.i.epil = add nuw nsw i64 %indvars.iv293.i.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %._crit_edge241.i, label %.lr.ph240.i.epil, !llvm.loop !46

._crit_edge241.i:                                 ; preds = %._crit_edge241.i.loopexit.unr-lcssa, %.lr.ph240.i.epil, %.preheader.i
  tail call void @uprv_free_78(ptr noundef %i.hz) #17
  tail call void @uprv_free_78(ptr noundef nonnull %i.ga) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit: ; preds = %bb.p, %bb.t, %bb.v, %bb.ad, %bb.af, %._crit_edge241.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit

bb.ar:                                            ; preds = %._crit_edge
  %i.oe = icmp sgt i32 %i.bd, 2
  %i.of = icmp ne i8 %4, 0
  %or.cond = and i1 %i.of, %i.oe
  br i1 %or.cond, label %bb.as, label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit

bb.as:                                            ; preds = %bb.ar
  %i.og = load ptr, ptr %1, align 8
  %i.oh = icmp sgt i32 %.lcssa41, 0
  br i1 %i.oh, label %.lr.ph.i32, label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit

.lr.ph.i32:                                       ; preds = %bb.as
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 131072
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i34, %bb.aw ] ; 4 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.i33
  %i.ok = load i32, ptr %i.oj, align 4
  %i.ol = and i32 %i.ok, 15
  %i.om = icmp eq i32 %i.ol, 1
  br i1 %i.om, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.on = trunc nuw nsw i64 %indvars.iv.i33 to i32
  %i.oo = tail call fastcc noundef i32 @_ZL14findUnassignedP9UCMStatesPtP16_MBCSToUFallbackiiij(ptr noundef nonnull readonly %0, ptr noundef readonly %i.og, ptr noundef readonly %2, i32 noundef %3, i32 noundef %i.on, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.oq = zext nneg i32 %i.oo to i64
  %i.or = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i64 noundef %indvars.iv.i33, i64 noundef %i.oq) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %i.os = load i32, ptr %i.c, align 4
  %i.ot = sext i32 %i.os to i64
  %i.ou = icmp slt i64 %indvars.iv.next.i34, %i.ot
  br i1 %i.ou, label %bb.at, label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit, !llvm.loop !47

_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit: ; preds = %bb.aw, %bb.as, %bb.ar, %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit
  %i.ov = icmp sgt i32 %3, 0
  br i1 %i.ov, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit
  store i32 0, ptr %i.b, align 4
  call void @uprv_sortArray_78(ptr noundef %2, i32 noundef %3, i32 noundef 8, ptr noundef nonnull @_ZL16compareFallbacksPKvS0_S0_, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull %i.b) #17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

declare void @uprv_sortArray_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL16compareFallbacksPKvS0_S0_(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = load i32, ptr %2, align 4
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @ucm_countChars(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132096
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.46, i64 42, i64 1, ptr %i.d) #19 ; 0 uses
  br label %.thread77

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 2
  br i1 %i.f, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132113
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 12
  %spec.select = zext i1 %i.i to i64
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph.preheader, label %.thread77

.lr.ph.preheader:                                 ; preds = %.thread, %bb.d
  %.059 = phi i64 [ %spec.select, %.thread ], [ 0, %bb.d ]
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %.thread64, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next68, %.thread64 ], [ 0, %.lr.ph.preheader ]
  %.150.ph = phi i64 [ %i.ag, %.thread64 ], [ %.059, %.lr.ph.preheader ]
  %.02649.ph = phi i32 [ %i.ad, %.thread64 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv.ph, %.lr.ph.outer ] ; 3 uses
  %.150 = phi i64 [ %i.aa, %bb.i ], [ %.150.ph, %.lr.ph.outer ]
  %.03047 = phi i32 [ %i.ac, %bb.i ], [ 0, %.lr.ph.outer ]
  %i.k = and i64 %.150, 255
  %i.l = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4              ; 6 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %3 = and i32 %i.q, 15728640
  %4 = sub i32 %3, 0                              ; 2 uses
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 12)
  switch i32 %5, label %bb.h [
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 6, label %.thread64
    i32 2, label %.thread64
    i32 0, label %.thread64
    i32 3, label %.thread64
    i32 1, label %.thread64
    i32 4, label %.thread64
    i32 5, label %.thread64
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @stderr, align 8
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.47, i64 47, i64 1, ptr %i.s) #19 ; 0 uses
  br label %.thread77

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @stderr, align 8
  %i.v = tail call i64 @fwrite(ptr nonnull @.str.48, i64 51, i64 1, ptr %i.u) #19 ; 0 uses
  br label %.thread77

bb.h:                                             ; preds = %bb.e
  %i.w = load ptr, ptr @stderr, align 8
  %i.x = sext i32 %i.q to i64
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.49, i64 noundef %i.x) #15 ; 0 uses
  br label %.thread77

bb.i:                                             ; preds = %.lr.ph
  %i.z = lshr i32 %i.q, 24                        ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = and i32 %i.q, 16777215
  %i.ac = add i32 %i.ab, %.03047                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

.thread64:                                        ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.ad = add nuw nsw i32 %.02649.ph, 1           ; 2 uses
  %i.ae = lshr i32 %i.q, 24
  %i.af = and i32 %i.ae, 127
  %i.ag = zext nneg i32 %i.af to i64
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not69 = icmp eq i64 %indvars.iv.next68, %wide.trip.count
  br i1 %exitcond.not69, label %._crit_edge.thread73, label %.lr.ph.outer, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.i
  %i.ah = icmp eq i32 %i.ac, 0
  br i1 %i.ah, label %._crit_edge.thread73, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr @stderr, align 8
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.50, i32 noundef %i.z) #15 ; 0 uses
  br label %.thread77

._crit_edge.thread73:                             ; preds = %.thread64, %._crit_edge
  %.026.lcssa63 = phi i32 [ %.02649.ph, %._crit_edge ], [ %i.ad, %.thread64 ] ; 5 uses
  %i.ak = icmp sgt i32 %.026.lcssa63, 1
  br i1 %i.ak, label %bb.k, label %.thread77

bb.k:                                             ; preds = %._crit_edge.thread73
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 132113
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp ne i8 %i.am, 12
  %i.ao = shl nuw nsw i32 %.026.lcssa63, 1
  %.not35 = icmp eq i32 %2, %i.ao
  %or.cond = select i1 %i.an, i1 true, i1 %.not35
  br i1 %or.cond, label %.thread77, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr @stderr, align 8
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.51, i32 noundef %.026.lcssa63) #15 ; 0 uses
  br label %.thread77

.thread77:                                        ; preds = %bb.d, %._crit_edge.thread73, %bb.k, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.b
  %.028 = phi i32 [ -1, %bb.b ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.l ], [ %.026.lcssa63, %bb.k ], [ %.026.lcssa63, %._crit_edge.thread73 ], [ 0, %bb.d ]
  ret i32 %.028
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef i32 @_ZL14findUnassignedP9UCMStatesPtP16_MBCSToUFallbackiiij(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %4 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [1024 x i8], ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.d = shl i32 %6, 8
  %i.e = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ucm_findFallback.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %ucm_findFallback.exit ] ; 3 uses
  %.058 = phi i8 [ 0, %bb.a ], [ %.1, %ucm_findFallback.exit ] ; 3 uses
  %.04157 = phi i32 [ 0, %bb.a ], [ %.142, %ucm_findFallback.exit ] ; 9 uses
  %.04356 = phi i32 [ 0, %bb.a ], [ %.144, %ucm_findFallback.exit ] ; 10 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4              ; 6 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.g, 24
  %i.j = and i32 %i.g, 16777215
  %i.k = add nsw i32 %i.j, %5
  %i.l = add nuw nsw i64 %indvars.iv, %i.e        ; 2 uses
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = tail call fastcc noundef i32 @_ZL14findUnassignedP9UCMStatesPtP16_MBCSToUFallbackiiij(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %ucm_findFallback.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not51 = icmp eq i32 %i.n, 0
  br i1 %.not51, label %ucm_findFallback.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %i.n to i64
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i64 noundef %i.l, i64 noundef %i.a, i64 noundef %i.p) ; 0 uses
  %i.r = add nuw nsw i32 %i.n, %.04157
  br label %ucm_findFallback.exit

bb.f:                                             ; preds = %bb.b
  %.not50 = icmp eq i8 %.058, 0
  br i1 %.not50, label %bb.g, label %ucm_findFallback.exit

bb.g:                                             ; preds = %bb.f
  %i.s = and i32 %i.g, 15728640
  switch i32 %i.s, label %ucm_findFallback.exit [
    i32 4194304, label %bb.h
    i32 5242880, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %i.g, 65535
  %i.u = add nsw i32 %i.t, %5                     ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = icmp eq i16 %i.x, -2
  br i1 %i.y, label %bb.i, label %ucm_findFallback.exit

bb.i:                                             ; preds = %bb.h
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4
  %.not64 = icmp eq i32 %i.u, %i.aa
  br i1 %.not64, label %ucm_findFallback.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.ab = add nsw i32 %.04356, 2
  br label %ucm_findFallback.exit

bb.k:                                             ; preds = %bb.g
  %i.ac = and i32 %i.g, 65535
  %i.ad = add nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = icmp ne i16 %i.ag, -2                   ; 2 uses
  %i.ai = add nsw i32 %.04356, 4
  %spec.select53 = select i1 %i.ah, i32 %.04356, i32 %i.ai
  %spec.select54 = zext i1 %i.ah to i8
  br label %ucm_findFallback.exit

ucm_findFallback.exit:                            ; preds = %.lr.ph.i, %.loopexit, %bb.k, %bb.h, %bb.c, %bb.d, %bb.e, %bb.g, %bb.f
  %.144 = phi i32 [ %.04356, %bb.h ], [ %.04356, %bb.e ], [ %.04356, %bb.d ], [ %.04356, %bb.f ], [ %.04356, %bb.g ], [ %spec.select53, %bb.k ], [ %.04356, %bb.c ], [ %i.ab, %.loopexit ], [ %.04356, %.lr.ph.i ] ; 2 uses
  %.142 = phi i32 [ %.04157, %bb.h ], [ %i.r, %bb.e ], [ %.04157, %bb.d ], [ %.04157, %bb.f ], [ %.04157, %bb.g ], [ %.04157, %bb.k ], [ %.04157, %bb.c ], [ %.04157, %.loopexit ], [ %.04157, %.lr.ph.i ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.h ], [ %.058, %bb.e ], [ %.058, %bb.d ], [ 1, %bb.f ], [ 0, %bb.g ], [ %spec.select54, %bb.k ], [ 1, %bb.c ], [ 0, %.loopexit ], [ 1, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.l, label %bb.b, !llvm.loop !49

bb.l:                                             ; preds = %ucm_findFallback.exit
  %.not = icmp eq i8 %.1, 0
  %i.aj = add nsw i32 %.142, %.144
  %.045 = select i1 %.not, i32 %i.aj, i32 -1
  ret i32 %.045
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7, !8}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6, !8, !7}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6, !7, !8}
!15 = distinct !{!15, !6, !8, !7}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
!25 = distinct !{!25, !6, !7, !8}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6, !7, !8}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6, !7, !8}
!37 = distinct !{!37, !6, !7}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
end_hunk_1
