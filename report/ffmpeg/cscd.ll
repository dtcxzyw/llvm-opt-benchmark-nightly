inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decode_frame:bb.a
  %.not61 = icmp eq i32 %i.ak, 0
  br i1 %.not61, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.a, align 4, !tbaa !45  ; 2 uses
  %.not62 = icmp eq i32 %i.al, 0
  %.not63 = icmp eq i32 %i.al, %i.w
  %or.cond = select i1 %.not62, i1 true, i1 %.not63
  br i1 %or.cond, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38
  %i.ao = zext i32 %i.an to i64
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.as = add nsw i32 %i.g, -2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = call i32 @uncompress(ptr noundef %i.aq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ar, i64 noundef %i.at) #5
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.i, label %.critedge68

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4, !tbaa !38 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.not59 = icmp eq i64 %i.av, %i.ax
  %i.ay = sub i32 %i.aw, %i.w
  %i.az = zext i32 %i.ay to i64
  %.not60 = icmp eq i64 %i.av, %i.az
  %or.cond66 = select i1 %.not59, i1 true, i1 %.not60
  br i1 %or.cond66, label %bb.j, label %.critedge68

.critedge68:                                      ; preds = %bb.i, %bb.h
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #5
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.g
  %i.ba = load i8, ptr %i.e, align 1, !tbaa !44
  %i.bb = and i8 %i.ba, 1
  %.not64 = icmp eq i8 %i.bb, 0
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !40  ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 276 ; 4 uses
  br i1 %.not64, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.bd, align 8, !tbaa !47
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !52
  %i.bg = or i32 %i.bf, 2
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !37 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 4 uses
  %.not16.i = icmp eq i32 %i.bi, 0
  br i1 %.not16.i, label %copy_frame_default.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !35 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39 ; 3 uses
  %i.bo = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.bp = load i32, ptr %i.bj, align 8, !tbaa !45
  %i.bq = add nsw i32 %i.bi, -1
  %i.br = mul nsw i32 %i.bp, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs ; 3 uses
  %i.bu = add nsw i32 %i.bl, 3
  %i.bv = and i32 %i.bu, -4
  %i.bw = sext i32 %i.bl to i64                   ; 3 uses
  %i.bx = sext i32 %i.bv to i64                   ; 3 uses
  %xtraiter = and i32 %i.bi, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bn, i64 %i.bw, i1 false)
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = load i32, ptr %i.bj, align 8, !tbaa !45
  %i.ca = sext i32 %i.bz to i64
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.bt, i64 %i.cb
  %i.cd = add nsw i32 %i.bi, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.019.i.unr = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.cc, %.prol.loopexit.unr-lcssa ]
  %.01418.i.unr = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.by, %.prol.loopexit.unr-lcssa ]
  %.01517.i.unr = phi i32 [ %i.bi, %.lr.ph.i ], [ %i.cd, %.prol.loopexit.unr-lcssa ]
  %i.ce = icmp eq i32 %i.bi, 1
  br i1 %i.ce, label %copy_frame_default.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.019.i = phi ptr [ %i.co, %.lr.ph.i.new ], [ %.019.i.unr, %.prol.loopexit ] ; 2 uses
  %.01418.i = phi ptr [ %i.ck, %.lr.ph.i.new ], [ %.01418.i.unr, %.prol.loopexit ] ; 2 uses
  %.01517.i = phi i32 [ %i.cp, %.lr.ph.i.new ], [ %.01517.i.unr, %.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.019.i, ptr align 1 %.01418.i, i64 %i.bw, i1 false)
  %i.cf = getelementptr inbounds i8, ptr %.01418.i, i64 %i.bx ; 2 uses
  %i.cg = load i32, ptr %i.bj, align 8, !tbaa !45
  %i.ch = sext i32 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %.019.i, i64 %i.ci ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cf, i64 %i.bw, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx
  %i.cl = load i32, ptr %i.bj, align 8, !tbaa !45
  %i.cm = sext i32 %i.cl to i64
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.cn
  %i.cp = add nsw i32 %.01517.i, -2               ; 2 uses
  %.not.i.1 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.1, label %copy_frame_default.exit, label %.lr.ph.i.new, !llvm.loop !54

bb.n:                                             ; preds = %bb.l
  store i32 2, ptr %i.bd, align 8, !tbaa !47
  %i.cq = load i32, ptr %i.be, align 4, !tbaa !52
  %i.cr = and i32 %i.cq, -3
  store i32 %i.cr, ptr %i.be, align 4, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !35
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !37
  call fastcc void @add_frame_default(ptr noundef %i.bc, ptr noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cx)
  br label %copy_frame_default.exit

copy_frame_default.exit:                          ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.m, %bb.n
  store i32 1, ptr %2, align 4, !tbaa !45
  %i.cy = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.cz = call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.cy) #5 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  %. = select i1 %i.da, i32 %i.cz, i32 %i.g
  br label %bb.o

bb.o:                                             ; preds = %copy_frame_default.exit, %.critedge68, %.critedge, %bb.c, %bb.k, %bb.b
  %.2 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %.critedge68 ], [ -1094995529, %bb.k ], [ %., %copy_frame_default.exit ], [ %i.z, %bb.c ], [ -1094995529, %.critedge ]
  ret i32 %.2
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.c) #5
  tail call void @av_frame_free(ptr noundef %i.b) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_lzo1x_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @add_frame_default(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not28 = icmp eq i32 %3, 0
  br i1 %.not28, label %._crit_edge32.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = add nsw i32 %2, 3
  %i.c = and i32 %i.b, -4
  %.not2223 = icmp eq i32 %2, 0
  %i.d = sub nsw i32 %i.c, %2
  %i.e = sext i32 %i.d to i64
  br i1 %.not2223, label %._crit_edge32.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = load ptr, ptr %0, align 8, !tbaa !53
  %i.g = load i32, ptr %i.a, align 8, !tbaa !45
  %i.h = add nsw i32 %3, -1
  %i.i = mul nsw i32 %i.g, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = zext i32 %2 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %min.iters.check39 = icmp ult i32 %2, 32
  %i.n = and i64 %i.m, 28
  %n.vec = and i64 %i.m, 4294967264               ; 6 uses
  %i.o = trunc nuw i64 %n.vec to i32
  %i.p = sub i32 %2, %i.o
  %cmp.n = icmp eq i64 %n.vec, %i.m
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  %n.vec46 = and i64 %i.m, 4294967292             ; 5 uses
  %i.q = trunc nuw i64 %n.vec46 to i32
  %i.r = sub i32 %2, %i.q
  %cmp.n53 = icmp eq i64 %n.vec46, %i.m
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.031 = phi ptr [ %i.bl, %._crit_edge ], [ %i.k, %.preheader.preheader ] ; 8 uses
  %.01830 = phi ptr [ %i.bg, %._crit_edge ], [ %1, %.preheader.preheader ] ; 8 uses
  %.02129 = phi i32 [ %i.bm, %._crit_edge ], [ %3, %.preheader.preheader ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.031, i64 %i.l
  %scevgep38 = getelementptr i8, ptr %.01830, i64 %i.l
  %bound0.a = icmp ult ptr %.031, %scevgep38
  %bound1 = icmp ult ptr %.01830, %scevgep
  %found.conflict = and i1 %bound0.a, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = getelementptr i8, ptr %.031, i64 %n.vec  ; 2 uses
  %i.t = getelementptr i8, ptr %.01830, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.031, i64 %index ; 3 uses
  %next.gep40 = getelementptr i8, ptr %.01830, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep40, align 1, !tbaa !44, !alias.scope !56
  %wide.load41 = load <16 x i8>, ptr %i.u, align 1, !tbaa !44, !alias.scope !56
  %i.v = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load42 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !44, !alias.scope !59, !noalias !56
  %wide.load43 = load <16 x i8>, ptr %i.v, align 1, !tbaa !44, !alias.scope !59, !noalias !56
  %i.w = add <16 x i8> %wide.load42, %wide.load
  %i.x = add <16 x i8> %wide.load43, %wide.load41
  store <16 x i8> %i.w, ptr %next.gep, align 1, !tbaa !44, !alias.scope !59, !noalias !56
  store <16 x i8> %i.x, ptr %i.v, align 1, !tbaa !44, !alias.scope !59, !noalias !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.z = getelementptr i8, ptr %.031, i64 %n.vec46 ; 2 uses
  %i.aa = getelementptr i8, ptr %.01830, i64 %n.vec46 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %next.gep48 = getelementptr i8, ptr %.031, i64 %index47 ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.01830, i64 %index47
  %wide.load50 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !44, !alias.scope !56
  %wide.load51 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !44, !alias.scope !59, !noalias !56
  %i.ab = add <4 x i8> %wide.load51, %wide.load50
  store <4 x i8> %i.ab, ptr %next.gep48, align 1, !tbaa !44, !alias.scope !59, !noalias !56
  %index.next52 = add nuw i64 %index47, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n53, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.126.ph = phi ptr [ %.031, %iter.check ], [ %.031, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 2 uses
  %.11925.ph = phi ptr [ %.01830, %iter.check ], [ %.01830, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 2 uses
  %.02024.ph = phi i32 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 4 uses
  %i.ad = add nsw i32 %.02024.ph, -1
  %xtraiter = and i32 %.02024.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.126.prol = phi ptr [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.126.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.11925.prol = phi ptr [ %i.ae, %vec.epilog.scalar.ph.prol ], [ %.11925.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.02024.prol = phi i32 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.02024.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.11925.prol, i64 1 ; 3 uses
  %i.af = load i8, ptr %.11925.prol, align 1, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %.126.prol, i64 1 ; 3 uses
  %i.ah = load i8, ptr %.126.prol, align 1, !tbaa !44
  %i.ai = add i8 %i.ah, %i.af
  store i8 %i.ai, ptr %.126.prol, align 1, !tbaa !44
  %i.aj = add nsw i32 %.02024.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !66

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa58.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.lcssa57.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %.126.unr = phi ptr [ %.126.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %.11925.unr = phi ptr [ %.11925.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.02024.unr = phi i32 [ %.02024.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.ak = icmp ult i32 %i.ad, 3
  br i1 %i.ak, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.126 = phi ptr [ %i.bc, %vec.epilog.scalar.ph ], [ %.126.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.11925 = phi ptr [ %i.ba, %vec.epilog.scalar.ph ], [ %.11925.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.02024 = phi i32 [ %i.bf, %vec.epilog.scalar.ph ], [ %.02024.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %.11925, i64 1
  %i.am = load i8, ptr %.11925, align 1, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %.126, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.126, align 1, !tbaa !44
  %i.ap = add i8 %i.ao, %i.am
  store i8 %i.ap, ptr %.126, align 1, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %.11925, i64 2
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %.126, i64 2 ; 2 uses
  %i.at = load i8, ptr %i.an, align 1, !tbaa !44
  %i.au = add i8 %i.at, %i.ar
  store i8 %i.au, ptr %i.an, align 1, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %.11925, i64 3
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %.126, i64 3 ; 2 uses
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !44
  %i.az = add i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.as, align 1, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %.11925, i64 4 ; 2 uses
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %.126, i64 4 ; 2 uses
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !44
  %i.be = add i8 %i.bd, %i.bb
  store i8 %i.be, ptr %i.ax, align 1, !tbaa !44
  %i.bf = add nsw i32 %.02024, -4                 ; 2 uses
  %.not22.3 = icmp eq i32 %i.bf, 0
  br i1 %.not22.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa37 = phi ptr [ %i.aa, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %.lcssa58.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ba, %vec.epilog.scalar.ph ]
  %.lcssa = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %.lcssa57.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bc, %vec.epilog.scalar.ph ]
  %i.bg = getelementptr inbounds i8, ptr %.lcssa37, i64 %i.e
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !45
  %i.bi = add nsw i32 %i.bh, %2
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %.lcssa, i64 %i.bk
  %i.bm = add nsw i32 %.02129, -1                 ; 2 uses
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %._crit_edge32.split, label %iter.check, !llvm.loop !69

._crit_edge32.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 648}
!30 = !{!10, !6, i64 136}
!31 = !{!32, !6, i64 16}
!32 = !{!"CamStudioContext", !33, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !16, i64 24}
!33 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!34 = !{!10, !6, i64 112}
!35 = !{!32, !6, i64 8}
!36 = !{!10, !6, i64 116}
!37 = !{!32, !6, i64 12}
!38 = !{!32, !6, i64 20}
!39 = !{!32, !16, i64 24}
!40 = !{!32, !33, i64 0}
!41 = !{!42, !16, i64 24}
!42 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
end_hunk_0
