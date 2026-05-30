inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@Substitute_Frame_Buffer:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @Read_Frame(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 11 uses
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr @Big_Picture_Flag, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2) ; 6 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.h = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.i = mul nsw i32 %i.h, %i.g                   ; 5 uses
  %i.j = load i32, ptr @chroma_format, align 4, !tbaa !4 ; 2 uses
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
  %.025.i = phi i32 [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.n, %bb.h ], [ %i.i, %bb.i ]
  %i.p = mul nsw i32 %.025.i, %2
  %i.q = sext i32 %i.p to i64
  %i.r = tail call i32 @fseek(ptr noundef nonnull %i.f, i64 noundef %i.q, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i, %bb.j
  %i.u = load i32, ptr @Chroma_Height, align 4, !tbaa !4
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph4.i, label %Extract_Components.exit.thread

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.0262.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %bb.j ] ; 2 uses
  %i.w = load ptr, ptr @substitute_frame, align 16, !tbaa !8
  %i.x = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4 ; 2 uses
  %i.y = mul nsw i32 %i.x, %.0262.i
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = sext i32 %i.x to i64
  %i.ac = tail call i64 @fread(ptr noundef %i.aa, i64 noundef 1, i64 noundef %i.ab, ptr noundef nonnull %i.f) ; 0 uses
  %i.ad = add nuw nsw i32 %.0262.i, 1             ; 2 uses
  %i.ae = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %.preheader1.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph4.i
  %i.ag = icmp sgt i32 %i.ap, 0
  br i1 %i.ag, label %.lr.ph6.i, label %Extract_Components.exit.thread

.lr.ph4.i:                                        ; preds = %.preheader1.i, %.lr.ph4.i
  %.13.i = phi i32 [ %i.ao, %.lr.ph4.i ], [ 0, %.preheader1.i ] ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !8
  %i.ai = load i32, ptr @Chroma_Width, align 4, !tbaa !4 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %.13.i
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = sext i32 %i.ai to i64
  %i.an = tail call i64 @fread(ptr noundef %i.al, i64 noundef 1, i64 noundef %i.am, ptr noundef nonnull %i.f) ; 0 uses
  %i.ao = add nuw nsw i32 %.13.i, 1               ; 2 uses
  %i.ap = load i32, ptr @Chroma_Height, align 4, !tbaa !4 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph4.i, label %.preheader.i, !llvm.loop !13

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.25.i = phi i32 [ %i.ay, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 16), align 16, !tbaa !8
  %i.as = load i32, ptr @Chroma_Width, align 4, !tbaa !4 ; 2 uses
  %i.at = mul nsw i32 %i.as, %.25.i
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = sext i32 %i.as to i64
  %i.ax = tail call i64 @fread(ptr noundef %i.av, i64 noundef 1, i64 noundef %i.aw, ptr noundef nonnull %i.f) ; 0 uses
  %i.ay = add nuw nsw i32 %.25.i, 1               ; 2 uses
  %i.az = load i32, ptr @Chroma_Height, align 4, !tbaa !4
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph6.i, label %Extract_Components.exit.thread, !llvm.loop !14

Extract_Components.exit.thread:                   ; preds = %.lr.ph6.i, %.preheader1.i, %.preheader.i
  %i.bb = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.o

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef %2) #6 ; 0 uses
  %i.bd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.be = load ptr, ptr @substitute_frame, align 16, !tbaa !8
  %i.bf = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.bg = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
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
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !8
  %i.bq = load i32, ptr @Chroma_Width, align 4, !tbaa !4
  %i.br = load i32, ptr @Chroma_Height, align 4, !tbaa !4
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
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 16), align 16, !tbaa !8
  %i.cb = load i32, ptr @Chroma_Width, align 4, !tbaa !4
  %i.cc = load i32, ptr @Chroma_Height, align 4, !tbaa !4
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
  %i.cl = load i32, ptr @Second_Field, align 4, !tbaa !4
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = load i32, ptr @picture_coding_type, align 4
  %i.co = icmp eq i32 %i.cn, 2
  %or.cond = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cp = load i32, ptr @picture_structure, align 4, !tbaa !4
  %.fr = freeze i32 %i.cp                         ; 2 uses
  %i.cq = icmp eq i32 %.fr, 1
  %.not65 = icmp eq i32 %.fr, 3                   ; 3 uses
  %i.cr = or i1 %i.cq, %.not65
  %spec.select = select i1 %.not65, i32 1, i32 2
  %i.cs = xor i1 %.not65, true
  %i.ct = zext i1 %i.cs to i32
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.p
  %.093 = phi i32 [ %i.ct, %bb.p ], [ 0, %bb.o ]  ; 3 uses
  %.01791 = phi i1 [ %i.cr, %bb.p ], [ true, %bb.o ] ; 3 uses
  %i.cu = phi i32 [ %spec.select, %bb.p ], [ 1, %bb.o ] ; 3 uses
  %i.cv = load ptr, ptr @substitute_frame, align 16, !tbaa !8 ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.cx = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4 ; 5 uses
  %i.cy = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  %i.da = icmp sgt i32 %i.cx, 0
  %or.cond.i = and i1 %i.da, %i.cz
  br i1 %or.cond.i, label %.preheader.us.preheader.i, label %Copy_Frame.exit

.preheader.us.preheader.i:                        ; preds = %.thread
  %i.db = ptrtoaddr ptr %i.cw to i64
  %i.dc = ptrtoaddr ptr %i.cv to i64
  %i.dd = shl nuw i32 %i.cx, %.093
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = zext nneg i32 %i.cx to i64              ; 9 uses
  %i.dg = select i1 %.01791, i64 0, i64 %i.df     ; 2 uses
  %i.dh = add i64 %i.dg, %i.dc
  %i.di = sub i64 %i.db, %i.dh
  %min.iters.check = icmp ult i32 %i.cx, 4
  %diff.check = icmp ult i64 %i.di, 32
  %or.cond163 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %min.iters.check95 = icmp ult i32 %i.cx, 32
  %n.mod.vf = and i64 %i.df, 28
  %n.vec = and i64 %i.df, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.df
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec98 = and i64 %i.df, 2147483644            ; 3 uses
  %cmp.n102 = icmp eq i64 %n.vec98, %i.df
  %xtraiter = and i64 %i.df, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv37.i = phi i64 [ %i.dg, %.preheader.us.preheader.i ], [ %indvars.iv.next38.i, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv35.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next36.i, %._crit_edge.us.i ] ; 2 uses
  %.02528.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %i.dy, %._crit_edge.us.i ]
  %invariant.gep.i = getelementptr i8, ptr %i.cv, i64 %indvars.iv37.i ; 7 uses
  %invariant.gep45.i = getelementptr i8, ptr %i.cw, i64 %indvars.iv35.i ; 7 uses
  br i1 %or.cond163, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.dj = getelementptr i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %wide.load = load <16 x i8>, ptr %i.dj, align 1, !tbaa !15
  %wide.load96 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !15
  %i.dl = getelementptr i8, ptr %invariant.gep45.i, i64 %index ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store <16 x i8> %wide.load, ptr %i.dl, align 1, !tbaa !15
  store <16 x i8> %wide.load96, ptr %i.dm, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 3 uses
  %i.do = getelementptr i8, ptr %invariant.gep.i, i64 %index99
  %wide.load100 = load <4 x i8>, ptr %i.do, align 1, !tbaa !15
  %i.dp = getelementptr i8, ptr %invariant.gep45.i, i64 %index99
  store <4 x i8> %wide.load100, ptr %i.dp, align 1, !tbaa !15
  %index.next101 = add nuw i64 %index99, 4        ; 2 uses
  %i.dq = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n102, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec98, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.dr = load i8, ptr %gep.i.prol, align 1, !tbaa !15
  %gep46.i.prol = getelementptr i8, ptr %invariant.gep45.i, i64 %indvars.iv.i.prol
  store i8 %i.dr, ptr %gep46.i.prol, align 1, !tbaa !15
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !21

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i.ph, %i.df
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge.us.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.du = load i8, ptr %gep.i, align 1, !tbaa !15
  %gep46.i = getelementptr i8, ptr %invariant.gep45.i, i64 %indvars.iv.i
  store i8 %i.du, ptr %gep46.i, align 1, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.dv = load i8, ptr %gep.i.1, align 1, !tbaa !15
  %gep46.i.1 = getelementptr i8, ptr %invariant.gep45.i, i64 %indvars.iv.next.i
  store i8 %i.dv, ptr %gep46.i.1, align 1, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.dw = load i8, ptr %gep.i.2, align 1, !tbaa !15
  %gep46.i.2 = getelementptr i8, ptr %invariant.gep45.i, i64 %indvars.iv.next.i.1
  store i8 %i.dw, ptr %gep46.i.2, align 1, !tbaa !15
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.dx = load i8, ptr %gep.i.3, align 1, !tbaa !15
  %gep46.i.3 = getelementptr i8, ptr %invariant.gep45.i, i64 %indvars.iv.next.i.2
  store i8 %i.dx, ptr %gep46.i.3, align 1, !tbaa !15
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.df
  br i1 %exitcond.not.i.3, label %._crit_edge.us.i, label %vec.epilog.scalar.ph, !llvm.loop !23

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, %i.de
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, %i.de
  %i.dy = add nuw nsw i32 %.02528.us.i, %i.cu     ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.cy
  br i1 %i.dz, label %iter.check, label %Copy_Frame.exit, !llvm.loop !24

Copy_Frame.exit:                                  ; preds = %._crit_edge.us.i, %.thread
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @substitute_frame, i64 8), align 8, !tbaa !8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !8  ; 2 uses
  %i.ed = load i32, ptr @Chroma_Width, align 4, !tbaa !4 ; 6 uses
  %i.ee = load i32, ptr @Chroma_Height, align 4, !tbaa !4 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  %i.eg = icmp sgt i32 %i.ed, 0
  %or.cond.i24 = and i1 %i.eg, %i.ef
  br i1 %or.cond.i24, label %.preheader.us.preheader.i25, label %Copy_Frame.exit42

.preheader.us.preheader.i25:                      ; preds = %Copy_Frame.exit
  %i.eh = ptrtoaddr ptr %i.ec to i64
  %i.ei = ptrtoaddr ptr %i.ea to i64
  %i.ej = shl nuw i32 %i.ed, %.093
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = zext nneg i32 %i.ed to i64              ; 9 uses
  %i.em = select i1 %.01791, i64 0, i64 %i.el     ; 2 uses
  %i.en = add i64 %i.em, %i.ei
  %i.eo = sub i64 %i.eh, %i.en
  %min.iters.check105 = icmp ult i32 %i.ed, 4
  %diff.check104 = icmp ult i64 %i.eo, 32
  %or.cond164 = select i1 %min.iters.check105, i1 true, i1 %diff.check104
  %min.iters.check107 = icmp ult i32 %i.ed, 32
  %n.mod.vf109 = and i64 %i.el, 28
  %n.vec110 = and i64 %i.el, 2147483616           ; 4 uses
  %cmp.n117 = icmp eq i64 %n.vec110, %i.el
  %min.epilog.iters.check122 = icmp eq i64 %n.mod.vf109, 0
  %n.vec125 = and i64 %i.el, 2147483644           ; 3 uses
  %cmp.n131 = icmp eq i64 %n.vec125, %i.el
  %xtraiter166 = and i64 %i.el, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br label %iter.check119

iter.check119:                                    ; preds = %._crit_edge.us.i39, %.preheader.us.preheader.i25
  %indvars.iv37.i29 = phi i64 [ %i.em, %.preheader.us.preheader.i25 ], [ %indvars.iv.next38.i41, %._crit_edge.us.i39 ] ; 2 uses
  %indvars.iv35.i30 = phi i64 [ 0, %.preheader.us.preheader.i25 ], [ %indvars.iv.next36.i40, %._crit_edge.us.i39 ] ; 2 uses
  %.02528.us.i31 = phi i32 [ 0, %.preheader.us.preheader.i25 ], [ %i.fe, %._crit_edge.us.i39 ]
  %invariant.gep.i32 = getelementptr i8, ptr %i.ea, i64 %indvars.iv37.i29 ; 7 uses
  %invariant.gep45.i33 = getelementptr i8, ptr %i.ec, i64 %indvars.iv35.i30 ; 7 uses
  br i1 %or.cond164, label %vec.epilog.scalar.ph120.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %iter.check119
  br i1 %min.iters.check107, label %vec.epilog.ph123, label %vector.body111

vector.body111:                                   ; preds = %vector.main.loop.iter.check106, %vector.body111
  %index112 = phi i64 [ %index.next115, %vector.body111 ], [ 0, %vector.main.loop.iter.check106 ] ; 3 uses
  %i.ep = getelementptr i8, ptr %invariant.gep.i32, i64 %index112 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %wide.load113 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !15
  %wide.load114 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !15
  %i.er = getelementptr i8, ptr %invariant.gep45.i33, i64 %index112 ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  store <16 x i8> %wide.load113, ptr %i.er, align 1, !tbaa !15
  store <16 x i8> %wide.load114, ptr %i.es, align 1, !tbaa !15
  %index.next115 = add nuw i64 %index112, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next115, %n.vec110
end_hunk_0
