Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/subspic?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Substitute_Frame_Buffer:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.ab, ptr @Substitute_Frame_Buffer.previous_picture_coding_type, align 4, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @Read_Frame(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 11 uses
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr @Big_Picture_Flag, align 4, !tbaa !7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2) ; 6 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %i.h = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %i.i = mul nsw i32 %i.h, %i.g                   ; 5 uses
  %i.j = load i32, ptr @chroma_format, align 4, !tbaa !7 ; 2 uses
  switch i32 %i.j, label %bb.i [
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = mul nsw i32 %i.i, 3
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = shl nsw i32 %i.i, 1
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.m = ashr i32 %i.i, 1
  %i.n = add nsw i32 %i.m, %i.i
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.j) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.n, %bb.h ], [ %i.i, %bb.i ]
  %i.p = mul nsw i32 %.0.i, %2
  %i.q = sext i32 %i.p to i64
  %i.r = tail call i32 @fseek(ptr noundef nonnull %i.f, i64 noundef %i.q, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i, %bb.j
  %i.u = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph4.i, label %Extract_Components.exit.thread

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.0252.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %bb.j ] ; 2 uses
  %i.w = load ptr, ptr @substitute_frame, align 16, !tbaa !10
  %i.x = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7 ; 2 uses
  %i.y = mul nsw i32 %i.x, %.0252.i
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = sext i32 %i.x to i64
  %i.ac = tail call i64 @fread(ptr noundef %i.aa, i64 noundef 1, i64 noundef %i.ab, ptr noundef nonnull %i.f) ; 0 uses
  %i.ad = add nuw nsw i32 %.0252.i, 1             ; 2 uses
  %i.ae = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %.preheader1.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph4.i
  %i.ag = icmp sgt i32 %i.ap, 0
  br i1 %i.ag, label %.lr.ph6.i, label %Extract_Components.exit.thread

.lr.ph4.i:                                        ; preds = %.preheader1.i, %.lr.ph4.i
  %.13.i = phi i32 [ %i.ao, %.lr.ph4.i ], [ 0, %.preheader1.i ] ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10
  %i.ai = load i32, ptr @Chroma_Width, align 4, !tbaa !7 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %.13.i
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = sext i32 %i.ai to i64
  %i.an = tail call i64 @fread(ptr noundef %i.al, i64 noundef 1, i64 noundef %i.am, ptr noundef nonnull %i.f) ; 0 uses
  %i.ao = add nuw nsw i32 %.13.i, 1               ; 2 uses
  %i.ap = load i32, ptr @Chroma_Height, align 4, !tbaa !7 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph4.i, label %.preheader.i, !llvm.loop !12

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.25.i = phi i32 [ %i.ay, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 16), align 16, !tbaa !10
  %i.as = load i32, ptr @Chroma_Width, align 4, !tbaa !7 ; 2 uses
  %i.at = mul nsw i32 %i.as, %.25.i
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = sext i32 %i.as to i64
  %i.ax = tail call i64 @fread(ptr noundef %i.av, i64 noundef 1, i64 noundef %i.aw, ptr noundef nonnull %i.f) ; 0 uses
  %i.ay = add nuw nsw i32 %.25.i, 1               ; 2 uses
  %i.az = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph6.i, label %Extract_Components.exit.thread, !llvm.loop !13

Extract_Components.exit.thread:                   ; preds = %.lr.ph6.i, %.preheader1.i, %.preheader.i
  %i.bb = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.o

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef %2) #6 ; 0 uses
  %i.bd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.be = load ptr, ptr @substitute_frame, align 16, !tbaa !10
  %i.bf = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %i.bg = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %i.bh = mul nsw i32 %i.bg, %i.bf                ; 3 uses
  %i.bi = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 0) #6 ; 2 uses
  %i.bj = sext i32 %i.bh to i64
  %i.bk = call i64 @read(i32 noundef %i.bi, ptr noundef %i.be, i64 noundef %i.bj) #6
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.bh, %i.bl
  br i1 %.not.i.i, label %Read_Component.exit.i, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.bl, i32 noundef %i.bh, ptr noundef nonnull %i.b) ; 0 uses
  br label %Read_Component.exit.i

Read_Component.exit.i:                            ; preds = %bb.k, %.critedge
  %i.bn = call i32 @close(i32 noundef %i.bi) #6   ; 0 uses
  %i.bo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10
  %i.bq = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %i.br = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  %i.bs = mul nsw i32 %i.br, %i.bq                ; 3 uses
  %i.bt = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 0) #6 ; 2 uses
  %i.bu = sext i32 %i.bs to i64
  %i.bv = call i64 @read(i32 noundef %i.bt, ptr noundef %i.bp, i64 noundef %i.bu) #6
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %.not.i8.i = icmp eq i32 %i.bs, %i.bw
  br i1 %.not.i8.i, label %Read_Component.exit9.i, label %bb.l

bb.l:                                             ; preds = %Read_Component.exit.i
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.bw, i32 noundef %i.bs, ptr noundef nonnull %i.b) ; 0 uses
  br label %Read_Component.exit9.i

Read_Component.exit9.i:                           ; preds = %bb.l, %Read_Component.exit.i
  %i.by = call i32 @close(i32 noundef %i.bt) #6   ; 0 uses
  %i.bz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 16), align 16, !tbaa !10
  %i.cb = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %i.cc = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  %i.cd = mul nsw i32 %i.cc, %i.cb                ; 3 uses
  %i.ce = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 0) #6 ; 2 uses
  %i.cf = sext i32 %i.cd to i64
  %i.cg = call i64 @read(i32 noundef %i.ce, ptr noundef %i.ca, i64 noundef %i.cf) #6
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %.not.i10.i = icmp eq i32 %i.cd, %i.ch
  br i1 %.not.i10.i, label %Read_Components.exit, label %bb.m

bb.m:                                             ; preds = %Read_Component.exit9.i
  %i.ci = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.ch, i32 noundef %i.cd, ptr noundef nonnull %i.b) ; 0 uses
  br label %Read_Components.exit

Read_Components.exit:                             ; preds = %Read_Component.exit9.i, %bb.m
  %i.cj = call i32 @close(i32 noundef %i.ce) #6   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  %i.ck = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0) #6 ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %Extract_Components.exit.thread, %Read_Components.exit, %bb.n
  %i.cl = load i32, ptr @Second_Field, align 4, !tbaa !7
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = load i32, ptr @picture_coding_type, align 4
  %i.co = icmp eq i32 %i.cn, 2
  %or.cond = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cp = load i32, ptr @picture_structure, align 4, !tbaa !7
  %.fr = freeze i32 %i.cp                         ; 2 uses
  %3 = icmp eq i32 %.fr, 1
  %.not67 = icmp eq i32 %.fr, 3                   ; 3 uses
  %4 = or i1 %3, %.not67
  %spec.select = select i1 %.not67, i32 1, i32 2
  %5 = xor i1 %.not67, true
  %i.cq = zext i1 %5 to i32
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.p
  %.092 = phi i32 [ %i.cq, %bb.p ], [ 0, %bb.o ]  ; 3 uses
  %.01790 = phi i1 [ %4, %bb.p ], [ true, %bb.o ] ; 3 uses
  %i.cr = phi i32 [ %spec.select, %bb.p ], [ 1, %bb.o ] ; 3 uses
  %i.cs = load ptr, ptr @substitute_frame, align 16, !tbaa !10 ; 2 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.cu = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7 ; 5 uses
  %i.cv = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = icmp sgt i32 %i.cu, 0
  %or.cond.i = and i1 %i.cx, %i.cw
  br i1 %or.cond.i, label %.preheader.preheader.i, label %Copy_Frame.exit

.preheader.preheader.i:                           ; preds = %.thread
  %i.cy = ptrtoaddr ptr %i.ct to i64
  %i.cz = ptrtoaddr ptr %i.cs to i64
  %i.da = shl nuw i32 %i.cu, %.092
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = zext nneg i32 %i.cu to i64              ; 9 uses
  %i.dd = select i1 %.01790, i64 0, i64 %i.dc     ; 2 uses
  %i.de = add i64 %i.dd, %i.cz
  %min.iters.check = icmp ult i32 %i.cu, 4
  %i.df = sub i64 %i.de, %i.cy
  %diff.check = icmp ugt i64 %i.df, -32
  %or.cond157 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %min.iters.check94 = icmp ult i32 %i.cu, 32
  %i.dg = and i64 %i.dc, 28
  %n.vec = and i64 %i.dc, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dc
  %min.epilog.iters.check = icmp eq i64 %i.dg, 0
  %n.vec96 = and i64 %i.dc, 2147483644            ; 3 uses
  %cmp.n100 = icmp eq i64 %n.vec96, %i.dc
  %xtraiter = and i64 %i.dc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i23, %.preheader.preheader.i
  %indvars.iv36.i = phi i64 [ %i.dd, %.preheader.preheader.i ], [ %indvars.iv.next37.i, %._crit_edge.i23 ] ; 2 uses
  %indvars.iv34.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next35.i, %._crit_edge.i23 ] ; 2 uses
  %.02528.i = phi i32 [ 0, %.preheader.preheader.i ], [ %i.dw, %._crit_edge.i23 ]
  %invariant.gep.i = getelementptr i8, ptr %i.cs, i64 %indvars.iv36.i ; 7 uses
  %invariant.gep44.i = getelementptr i8, ptr %i.ct, i64 %indvars.iv34.i ; 7 uses
  br i1 %or.cond157, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.dh = getelementptr i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %wide.load = load <16 x i8>, ptr %i.dh, align 1, !tbaa !28
  %wide.load95 = load <16 x i8>, ptr %i.di, align 1, !tbaa !28
  %i.dj = getelementptr i8, ptr %invariant.gep44.i, i64 %index ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store <16 x i8> %wide.load, ptr %i.dj, align 1, !tbaa !28
  store <16 x i8> %wide.load95, ptr %i.dk, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i23, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 3 uses
  %i.dm = getelementptr i8, ptr %invariant.gep.i, i64 %index97
  %wide.load98 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !28
  %i.dn = getelementptr i8, ptr %invariant.gep44.i, i64 %index97
  store <4 x i8> %wide.load98, ptr %i.dn, align 1, !tbaa !28
  %index.next99 = add nuw i64 %index97, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next99, %n.vec96
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n100, label %._crit_edge.i23, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec96, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.dp = load i8, ptr %gep.i.prol, align 1, !tbaa !28
  %gep45.i.prol = getelementptr i8, ptr %invariant.gep44.i, i64 %indvars.iv.i.prol
  store i8 %i.dp, ptr %gep45.i.prol, align 1, !tbaa !28
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !16

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.dq = sub nsw i64 %indvars.iv.i.ph, %i.dc
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge.i23, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ds = load i8, ptr %gep.i, align 1, !tbaa !28
  %gep45.i = getelementptr i8, ptr %invariant.gep44.i, i64 %indvars.iv.i
  store i8 %i.ds, ptr %gep45.i, align 1, !tbaa !28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.dt = load i8, ptr %gep.i.1, align 1, !tbaa !28
  %gep45.i.1 = getelementptr i8, ptr %invariant.gep44.i, i64 %indvars.iv.next.i
  store i8 %i.dt, ptr %gep45.i.1, align 1, !tbaa !28
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.du = load i8, ptr %gep.i.2, align 1, !tbaa !28
  %gep45.i.2 = getelementptr i8, ptr %invariant.gep44.i, i64 %indvars.iv.next.i.1
  store i8 %i.du, ptr %gep45.i.2, align 1, !tbaa !28
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.dv = load i8, ptr %gep.i.3, align 1, !tbaa !28
  %gep45.i.3 = getelementptr i8, ptr %invariant.gep44.i, i64 %indvars.iv.next.i.2
  store i8 %i.dv, ptr %gep45.i.3, align 1, !tbaa !28
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.dc
  br i1 %exitcond.not.i.3, label %._crit_edge.i23, label %vec.epilog.scalar.ph, !llvm.loop !17

._crit_edge.i23:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, %i.db
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, %i.db
  %i.dw = add nuw nsw i32 %.02528.i, %i.cr        ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.cv
  br i1 %i.dx, label %iter.check, label %Copy_Frame.exit, !llvm.loop !18

Copy_Frame.exit:                                  ; preds = %._crit_edge.i23, %.thread
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !10 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !10 ; 2 uses
  %i.eb = load i32, ptr @Chroma_Width, align 4, !tbaa !7 ; 6 uses
  %i.ec = load i32, ptr @Chroma_Height, align 4, !tbaa !7 ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  %i.ee = icmp sgt i32 %i.eb, 0
  %or.cond.i26 = and i1 %i.ee, %i.ed
  br i1 %or.cond.i26, label %.preheader.preheader.i27, label %Copy_Frame.exit44

.preheader.preheader.i27:                         ; preds = %Copy_Frame.exit
  %i.ef = ptrtoaddr ptr %i.ea to i64
  %i.eg = ptrtoaddr ptr %i.dy to i64
  %i.eh = shl nuw i32 %i.eb, %.092
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = zext nneg i32 %i.eb to i64              ; 9 uses
  %i.ek = select i1 %.01790, i64 0, i64 %i.ej     ; 2 uses
  %i.el = add i64 %i.ek, %i.eg
  %min.iters.check103 = icmp ult i32 %i.eb, 4
  %i.em = sub i64 %i.el, %i.ef
  %diff.check102 = icmp ugt i64 %i.em, -32
  %or.cond158 = select i1 %min.iters.check103, i1 true, i1 %diff.check102
  %min.iters.check105 = icmp ult i32 %i.eb, 32
  %i.en = and i64 %i.ej, 28
  %n.vec107 = and i64 %i.ej, 2147483616           ; 4 uses
  %cmp.n114 = icmp eq i64 %n.vec107, %i.ej
  %min.epilog.iters.check119 = icmp eq i64 %i.en, 0
  %n.vec121 = and i64 %i.ej, 2147483644           ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec121, %i.ej
  %xtraiter160 = and i64 %i.ej, 3                 ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br label %iter.check116

iter.check116:                                    ; preds = %._crit_edge.i41, %.preheader.preheader.i27
  %indvars.iv36.i31 = phi i64 [ %i.ek, %.preheader.preheader.i27 ], [ %indvars.iv.next37.i43, %._crit_edge.i41 ] ; 2 uses
  %indvars.iv34.i32 = phi i64 [ 0, %.preheader.preheader.i27 ], [ %indvars.iv.next35.i42, %._crit_edge.i41 ] ; 2 uses
  %.02528.i33 = phi i32 [ 0, %.preheader.preheader.i27 ], [ %i.fd, %._crit_edge.i41 ]
  %invariant.gep.i34 = getelementptr i8, ptr %i.dy, i64 %indvars.iv36.i31 ; 7 uses
  %invariant.gep44.i35 = getelementptr i8, ptr %i.ea, i64 %indvars.iv34.i32 ; 7 uses
  br i1 %or.cond158, label %vec.epilog.scalar.ph117.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %iter.check116
  br i1 %min.iters.check105, label %vec.epilog.ph120, label %vector.body108

vector.body108:                                   ; preds = %vector.main.loop.iter.check104, %vector.body108
  %index109 = phi i64 [ %index.next112, %vector.body108 ], [ 0, %vector.main.loop.iter.check104 ] ; 3 uses
  %i.eo = getelementptr i8, ptr %invariant.gep.i34, i64 %index109 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %wide.load110 = load <16 x i8>, ptr %i.eo, align 1, !tbaa !28
  %wide.load111 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !28
  %i.eq = getelementptr i8, ptr %invariant.gep44.i35, i64 %index109 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  store <16 x i8> %wide.load110, ptr %i.eq, align 1, !tbaa !28
  store <16 x i8> %wide.load111, ptr %i.er, align 1, !tbaa !28
  %index.next112 = add nuw i64 %index109, 32      ; 2 uses
  %i.es = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.es, label %middle.block113, label %vector.body108, !llvm.loop !19

middle.block113:                                  ; preds = %vector.body108
  br i1 %cmp.n114, label %._crit_edge.i41, label %vec.epilog.iter.check118

vec.epilog.iter.check118:                         ; preds = %middle.block113
  br i1 %min.epilog.iters.check119, label %vec.epilog.scalar.ph117.preheader, label %vec.epilog.ph120, !prof !31

vec.epilog.ph120:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check118
  %vec.epilog.resume.val115 = phi i64 [ %n.vec107, %vec.epilog.iter.check118 ], [ 0, %vector.main.loop.iter.check104 ]
  br label %vec.epilog.vector.body122

vec.epilog.vector.body122:                        ; preds = %vec.epilog.vector.body122, %vec.epilog.ph120
  %index123 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph120 ], [ %index.next125, %vec.epilog.vector.body122 ] ; 3 uses
  %i.et = getelementptr i8, ptr %invariant.gep.i34, i64 %index123
  %wide.load124 = load <4 x i8>, ptr %i.et, align 1, !tbaa !28
  %i.eu = getelementptr i8, ptr %invariant.gep44.i35, i64 %index123
  store <4 x i8> %wide.load124, ptr %i.eu, align 1, !tbaa !28
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.ev, label %vec.epilog.middle.block126, label %vec.epilog.vector.body122, !llvm.loop !20

vec.epilog.middle.block126:                       ; preds = %vec.epilog.vector.body122
  br i1 %cmp.n127, label %._crit_edge.i41, label %vec.epilog.scalar.ph117.preheader

vec.epilog.scalar.ph117.preheader:                ; preds = %iter.check116, %vec.epilog.iter.check118, %vec.epilog.middle.block126
  %indvars.iv.i36.ph = phi i64 [ 0, %iter.check116 ], [ %n.vec107, %vec.epilog.iter.check118 ], [ %n.vec121, %vec.epilog.middle.block126 ] ; 3 uses
  br i1 %lcmp.mod161.not, label %vec.epilog.scalar.ph117.prol.loopexit, label %vec.epilog.scalar.ph117.prol

vec.epilog.scalar.ph117.prol:                     ; preds = %vec.epilog.scalar.ph117.preheader, %vec.epilog.scalar.ph117.prol
  %indvars.iv.i36.prol = phi i64 [ %indvars.iv.next.i39.prol, %vec.epilog.scalar.ph117.prol ], [ %indvars.iv.i36.ph, %vec.epilog.scalar.ph117.preheader ] ; 3 uses
  %prol.iter162 = phi i64 [ %prol.iter162.next, %vec.epilog.scalar.ph117.prol ], [ 0, %vec.epilog.scalar.ph117.preheader ]
  %gep.i37.prol = getelementptr i8, ptr %invariant.gep.i34, i64 %indvars.iv.i36.prol
  %i.ew = load i8, ptr %gep.i37.prol, align 1, !tbaa !28
  %gep45.i38.prol = getelementptr i8, ptr %invariant.gep44.i35, i64 %indvars.iv.i36.prol
  store i8 %i.ew, ptr %gep45.i38.prol, align 1, !tbaa !28
  %indvars.iv.next.i39.prol = add nuw nsw i64 %indvars.iv.i36.prol, 1 ; 2 uses
  %prol.iter162.next = add i64 %prol.iter162, 1   ; 2 uses
  %prol.iter162.cmp.not = icmp eq i64 %prol.iter162.next, %xtraiter160
  br i1 %prol.iter162.cmp.not, label %vec.epilog.scalar.ph117.prol.loopexit, label %vec.epilog.scalar.ph117.prol, !llvm.loop !21

vec.epilog.scalar.ph117.prol.loopexit:            ; preds = %vec.epilog.scalar.ph117.prol, %vec.epilog.scalar.ph117.preheader
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %vec.epilog.scalar.ph117.preheader ], [ %indvars.iv.next.i39.prol, %vec.epilog.scalar.ph117.prol ]
  %i.ex = sub nsw i64 %indvars.iv.i36.ph, %i.ej
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge.i41, label %vec.epilog.scalar.ph117

vec.epilog.scalar.ph117:                          ; preds = %vec.epilog.scalar.ph117.prol.loopexit, %vec.epilog.scalar.ph117
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i39.3, %vec.epilog.scalar.ph117 ], [ %indvars.iv.i36.unr, %vec.epilog.scalar.ph117.prol.loopexit ] ; 6 uses
  %gep.i37 = getelementptr i8, ptr %invariant.gep.i34, i64 %indvars.iv.i36
  %i.ez = load i8, ptr %gep.i37, align 1, !tbaa !28
  %gep45.i38 = getelementptr i8, ptr %invariant.gep44.i35, i64 %indvars.iv.i36
  store i8 %i.ez, ptr %gep45.i38, align 1, !tbaa !28
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %gep.i37.1 = getelementptr i8, ptr %invariant.gep.i34, i64 %indvars.iv.next.i39
  %i.fa = load i8, ptr %gep.i37.1, align 1, !tbaa !28
  %gep45.i38.1 = getelementptr i8, ptr %invariant.gep44.i35, i64 %indvars.iv.next.i39
  store i8 %i.fa, ptr %gep45.i38.1, align 1, !tbaa !28
  %indvars.iv.next.i39.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %gep.i37.2 = getelementptr i8, ptr %invariant.gep.i34, i64 %indvars.iv.next.i39.1
  %i.fb = load i8, ptr %gep.i37.2, align 1, !tbaa !28
  %gep45.i38.2 = getelementptr i8, ptr %invariant.gep44.i35, i64 %indvars.iv.next.i39.1
  store i8 %i.fb, ptr %gep45.i38.2, align 1, !tbaa !28
  %indvars.iv.next.i39.2 = add nuw nsw i64 %indvars.iv.i36, 3 ; 2 uses
  %gep.i37.3 = getelementptr i8, ptr %invariant.gep.i34, i64 %indvars.iv.next.i39.2
  %i.fc = load i8, ptr %gep.i37.3, align 1, !tbaa !28
  %gep45.i38.3 = getelementptr i8, ptr %invariant.gep44.i35, i64 %indvars.iv.next.i39.2
  store i8 %i.fc, ptr %gep45.i38.3, align 1, !tbaa !28
  %indvars.iv.next.i39.3 = add nuw nsw i64 %indvars.iv.i36, 4 ; 2 uses
  %exitcond.not.i40.3 = icmp eq i64 %indvars.iv.next.i39.3, %i.ej
  br i1 %exitcond.not.i40.3, label %._crit_edge.i41, label %vec.epilog.scalar.ph117, !llvm.loop !22

._crit_edge.i41:                                  ; preds = %vec.epilog.scalar.ph117.prol.loopexit, %vec.epilog.scalar.ph117, %vec.epilog.middle.block126, %middle.block113
  %indvars.iv.next35.i42 = add nsw i64 %indvars.iv34.i32, %i.ei
  %indvars.iv.next37.i43 = add nsw i64 %indvars.iv36.i31, %i.ei
  %i.fd = add nuw nsw i32 %.02528.i33, %i.cr      ; 2 uses
  %i.fe = icmp slt i32 %i.fd, %i.ec
  br i1 %i.fe, label %iter.check116, label %Copy_Frame.exit44.loopexit, !llvm.loop !18

Copy_Frame.exit44.loopexit:                       ; preds = %._crit_edge.i41
  %.pre = load i32, ptr @Chroma_Width, align 4, !tbaa !7
  %.pre68 = load i32, ptr @Chroma_Height, align 4, !tbaa !7
  br label %Copy_Frame.exit44

Copy_Frame.exit44:                                ; preds = %Copy_Frame.exit44.loopexit, %Copy_Frame.exit
  %i.ff = phi i32 [ %.pre68, %Copy_Frame.exit44.loopexit ], [ %i.ec, %Copy_Frame.exit ] ; 2 uses
  %i.fg = phi i32 [ %.pre, %Copy_Frame.exit44.loopexit ], [ %i.eb, %Copy_Frame.exit ] ; 5 uses
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 16), align 16, !tbaa !10 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !10 ; 2 uses
  %i.fk = icmp sgt i32 %i.ff, 0
  %i.fl = icmp sgt i32 %i.fg, 0
  %or.cond.i47 = and i1 %i.fl, %i.fk
  br i1 %or.cond.i47, label %.preheader.preheader.i48, label %Copy_Frame.exit65

.preheader.preheader.i48:                         ; preds = %Copy_Frame.exit44
  %i.fm = ptrtoaddr ptr %i.fj to i64
  %i.fn = ptrtoaddr ptr %i.fh to i64
  %i.fo = shl nuw i32 %i.fg, %.092
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = zext nneg i32 %i.fg to i64              ; 9 uses
  %i.fr = select i1 %.01790, i64 0, i64 %i.fq     ; 2 uses
  %i.fs = add i64 %i.fr, %i.fn
  %min.iters.check131 = icmp ult i32 %i.fg, 4
  %i.ft = sub i64 %i.fs, %i.fm
  %diff.check130 = icmp ugt i64 %i.ft, -32
  %or.cond159 = select i1 %min.iters.check131, i1 true, i1 %diff.check130
  %min.iters.check133 = icmp ult i32 %i.fg, 32
  %i.fu = and i64 %i.fq, 28
  %n.vec135 = and i64 %i.fq, 2147483616           ; 4 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %i.fq
  %min.epilog.iters.check147 = icmp eq i64 %i.fu, 0
  %n.vec149 = and i64 %i.fq, 2147483644           ; 3 uses
  %cmp.n155 = icmp eq i64 %n.vec149, %i.fq
  %xtraiter163 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br label %iter.check144

iter.check144:                                    ; preds = %._crit_edge.i62, %.preheader.preheader.i48
  %indvars.iv36.i52 = phi i64 [ %i.fr, %.preheader.preheader.i48 ], [ %indvars.iv.next37.i64, %._crit_edge.i62 ] ; 2 uses
  %indvars.iv34.i53 = phi i64 [ 0, %.preheader.preheader.i48 ], [ %indvars.iv.next35.i63, %._crit_edge.i62 ] ; 2 uses
  %.02528.i54 = phi i32 [ 0, %.preheader.preheader.i48 ], [ %i.gk, %._crit_edge.i62 ]
  %invariant.gep.i55 = getelementptr i8, ptr %i.fh, i64 %indvars.iv36.i52 ; 7 uses
  %invariant.gep44.i56 = getelementptr i8, ptr %i.fj, i64 %indvars.iv34.i53 ; 7 uses
  br i1 %or.cond159, label %vec.epilog.scalar.ph145.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %iter.check144
  br i1 %min.iters.check133, label %vec.epilog.ph148, label %vector.body136

vector.body136:                                   ; preds = %vector.main.loop.iter.check132, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %vector.main.loop.iter.check132 ] ; 3 uses
  %i.fv = getelementptr i8, ptr %invariant.gep.i55, i64 %index137 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  %wide.load138 = load <16 x i8>, ptr %i.fv, align 1, !tbaa !28
  %wide.load139 = load <16 x i8>, ptr %i.fw, align 1, !tbaa !28
  %i.fx = getelementptr i8, ptr %invariant.gep44.i56, i64 %index137 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store <16 x i8> %wide.load138, ptr %i.fx, align 1, !tbaa !28
  store <16 x i8> %wide.load139, ptr %i.fy, align 1, !tbaa !28
  %index.next140 = add nuw i64 %index137, 32      ; 2 uses
  %i.fz = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.fz, label %middle.block141, label %vector.body136, !llvm.loop !23

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge.i62, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block141
  br i1 %min.epilog.iters.check147, label %vec.epilog.scalar.ph145.preheader, label %vec.epilog.ph148, !prof !31

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check146
  %vec.epilog.resume.val143 = phi i64 [ %n.vec135, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check132 ]
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph148 ], [ %index.next153, %vec.epilog.vector.body150 ] ; 3 uses
  %i.ga = getelementptr i8, ptr %invariant.gep.i55, i64 %index151
  %wide.load152 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !28
  %i.gb = getelementptr i8, ptr %invariant.gep44.i56, i64 %index151
  store <4 x i8> %wide.load152, ptr %i.gb, align 1, !tbaa !28
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.gc, label %vec.epilog.middle.block154, label %vec.epilog.vector.body150, !llvm.loop !24

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n155, label %._crit_edge.i62, label %vec.epilog.scalar.ph145.preheader

vec.epilog.scalar.ph145.preheader:                ; preds = %iter.check144, %vec.epilog.iter.check146, %vec.epilog.middle.block154
  %indvars.iv.i57.ph = phi i64 [ 0, %iter.check144 ], [ %n.vec135, %vec.epilog.iter.check146 ], [ %n.vec149, %vec.epilog.middle.block154 ] ; 3 uses
  br i1 %lcmp.mod164.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol

vec.epilog.scalar.ph145.prol:                     ; preds = %vec.epilog.scalar.ph145.preheader, %vec.epilog.scalar.ph145.prol
  %indvars.iv.i57.prol = phi i64 [ %indvars.iv.next.i60.prol, %vec.epilog.scalar.ph145.prol ], [ %indvars.iv.i57.ph, %vec.epilog.scalar.ph145.preheader ] ; 3 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %vec.epilog.scalar.ph145.prol ], [ 0, %vec.epilog.scalar.ph145.preheader ]
  %gep.i58.prol = getelementptr i8, ptr %invariant.gep.i55, i64 %indvars.iv.i57.prol
  %i.gd = load i8, ptr %gep.i58.prol, align 1, !tbaa !28
  %gep45.i59.prol = getelementptr i8, ptr %invariant.gep44.i56, i64 %indvars.iv.i57.prol
  store i8 %i.gd, ptr %gep45.i59.prol, align 1, !tbaa !28
  %indvars.iv.next.i60.prol = add nuw nsw i64 %indvars.iv.i57.prol, 1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol, !llvm.loop !25

vec.epilog.scalar.ph145.prol.loopexit:            ; preds = %vec.epilog.scalar.ph145.prol, %vec.epilog.scalar.ph145.preheader
  %indvars.iv.i57.unr = phi i64 [ %indvars.iv.i57.ph, %vec.epilog.scalar.ph145.preheader ], [ %indvars.iv.next.i60.prol, %vec.epilog.scalar.ph145.prol ]
  %i.ge = sub nsw i64 %indvars.iv.i57.ph, %i.fq
  %i.gf = icmp ugt i64 %i.ge, -4
  br i1 %i.gf, label %._crit_edge.i62, label %vec.epilog.scalar.ph145

vec.epilog.scalar.ph145:                          ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145
  %indvars.iv.i57 = phi i64 [ %indvars.iv.next.i60.3, %vec.epilog.scalar.ph145 ], [ %indvars.iv.i57.unr, %vec.epilog.scalar.ph145.prol.loopexit ] ; 6 uses
  %gep.i58 = getelementptr i8, ptr %invariant.gep.i55, i64 %indvars.iv.i57
  %i.gg = load i8, ptr %gep.i58, align 1, !tbaa !28
  %gep45.i59 = getelementptr i8, ptr %invariant.gep44.i56, i64 %indvars.iv.i57
  store i8 %i.gg, ptr %gep45.i59, align 1, !tbaa !28
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %gep.i58.1 = getelementptr i8, ptr %invariant.gep.i55, i64 %indvars.iv.next.i60
  %i.gh = load i8, ptr %gep.i58.1, align 1, !tbaa !28
  %gep45.i59.1 = getelementptr i8, ptr %invariant.gep44.i56, i64 %indvars.iv.next.i60
  store i8 %i.gh, ptr %gep45.i59.1, align 1, !tbaa !28
  %indvars.iv.next.i60.1 = add nuw nsw i64 %indvars.iv.i57, 2 ; 2 uses
  %gep.i58.2 = getelementptr i8, ptr %invariant.gep.i55, i64 %indvars.iv.next.i60.1
  %i.gi = load i8, ptr %gep.i58.2, align 1, !tbaa !28
  %gep45.i59.2 = getelementptr i8, ptr %invariant.gep44.i56, i64 %indvars.iv.next.i60.1
  store i8 %i.gi, ptr %gep45.i59.2, align 1, !tbaa !28
  %indvars.iv.next.i60.2 = add nuw nsw i64 %indvars.iv.i57, 3 ; 2 uses
  %gep.i58.3 = getelementptr i8, ptr %invariant.gep.i55, i64 %indvars.iv.next.i60.2
  %i.gj = load i8, ptr %gep.i58.3, align 1, !tbaa !28
  %gep45.i59.3 = getelementptr i8, ptr %invariant.gep44.i56, i64 %indvars.iv.next.i60.2
  store i8 %i.gj, ptr %gep45.i59.3, align 1, !tbaa !28
  %indvars.iv.next.i60.3 = add nuw nsw i64 %indvars.iv.i57, 4 ; 2 uses
  %exitcond.not.i61.3 = icmp eq i64 %indvars.iv.next.i60.3, %i.fq
  br i1 %exitcond.not.i61.3, label %._crit_edge.i62, label %vec.epilog.scalar.ph145, !llvm.loop !26

._crit_edge.i62:                                  ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145, %vec.epilog.middle.block154, %middle.block141
  %indvars.iv.next35.i63 = add nsw i64 %indvars.iv34.i53, %i.fp
  %indvars.iv.next37.i64 = add nsw i64 %indvars.iv36.i52, %i.fp
  %i.gk = add nuw nsw i32 %.02528.i54, %i.cr      ; 2 uses
  %i.gl = icmp slt i32 %i.gk, %i.ff
  br i1 %i.gl, label %iter.check144, label %Copy_Frame.exit65, !llvm.loop !18

Copy_Frame.exit65:                                ; preds = %._crit_edge.i62, %Copy_Frame.exit44
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !27}
!12 = distinct !{!12, !27}
!13 = distinct !{!13, !27}
!14 = distinct !{!14, !27, !29, !30}
!15 = distinct !{!15, !27, !29, !30}
!16 = distinct !{!16, !32}
!17 = distinct !{!17, !27, !29}
!18 = distinct !{!18, !27}
!19 = distinct !{!19, !27, !29, !30}
!20 = distinct !{!20, !27, !29, !30}
!21 = distinct !{!21, !32}
!22 = distinct !{!22, !27, !29}
!23 = distinct !{!23, !27, !29, !30}
!24 = distinct !{!24, !27, !29, !30}
!25 = distinct !{!25, !32}
!26 = distinct !{!26, !27, !29}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!5, !5, i64 0}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 4, i32 28}
!32 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
