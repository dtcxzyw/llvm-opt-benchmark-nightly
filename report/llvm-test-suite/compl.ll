Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/compl?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@complement:bb.a
  %.074.i = phi ptr [ %i.u, %bb.k ], [ %i.f, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr %.074.i, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.074.i, i64 8
  %i.v = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.t, ptr noundef %i.e) #8, !inline_history !15
  %.not94.i = icmp eq i32 %i.v, 0
  br i1 %.not94.i, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load i32, ptr @cube, align 8, !tbaa !11
  %i.x = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.w) #8, !inline_history !15
  %i.y = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not95.i = icmp eq ptr %i.y, null
  br i1 %.not95.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.y) #8, !inline_history !15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

bb.o:                                             ; preds = %.preheader
  %i.z = load i32, ptr %i.e, align 4, !tbaa !4
  %i.aa = shl i32 %i.z, 5
  %i.ab = and i32 %i.aa, 32736                    ; 2 uses
  %i.ac = icmp samesign ult i32 %i.ab, 33
  %i.ad = add nsw i32 %i.ab, -32
  %i.ae = lshr exact i32 %i.ad, 3
  %i.af = add nuw nsw i32 %i.ae, 8
  %narrow = select i1 %i.ac, i32 8, i32 %i.af
  %i.ag = zext nneg i32 %narrow to i64
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #9, !inline_history !15
  %i.ai = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.ah, ptr noundef nonnull %i.e) #8, !inline_history !15 ; 13 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %.not88.i47 = icmp eq ptr %i.aj, null
  br i1 %.not88.i47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %scevgep63 = getelementptr i8, ptr %i.ai, i64 4
  br label %.lr.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.al = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %.not88.i = icmp eq ptr %i.al, null
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.am = phi ptr [ %i.al, %.loopexit ], [ %i.aj, %.lr.ph.preheader ] ; 4 uses
  %i.an = phi ptr [ %i.ak, %.loopexit ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ap = and i32 %i.ao, 1023                     ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 6 uses
  %i.ar = icmp ne i32 %i.ap, 0
  %.neg = sext i1 %i.ar to i64
  %i.as = add nuw nsw i64 %i.aq, 1
  %i.at = add nsw i64 %i.as, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.at, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.not71 = icmp eq i32 %i.ap, 0
  %i.au = select i1 %.not71, i64 0, i64 4         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.au
  %i.av = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.av
  %scevgep65 = getelementptr i8, ptr %i.am, i64 %i.au
  %scevgep66 = getelementptr i8, ptr %i.am, i64 4
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.av
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %scevgep65, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, -8                      ; 3 uses
  %i.aw = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = sub i64 %i.aq, %index                   ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  %wide.load68 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ax ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -12
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -28
  %wide.load69 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4, !alias.scope !20
  %wide.load70 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4, !alias.scope !20
  %i.be = or <4 x i32> %wide.load69, %wide.load
  %i.bf = or <4 x i32> %wide.load70, %wide.load68
  store <4 x i32> %i.be, ptr %i.az, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  store <4 x i32> %i.bf, ptr %i.ba, align 4, !tbaa !4, !alias.scope !17, !noalias !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph ], [ %i.aw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = or i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bm = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bm, label %scalar.ph, label %.loopexit, !llvm.loop !25

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.bo = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef %i.ai, ptr noundef %i.bn) #8, !inline_history !15
  %.not89.i = icmp eq i32 %i.bo, 0
  br i1 %.not89.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge
  %i.bp = tail call fastcc ptr @compl_cube(ptr noundef %i.ai), !inline_history !15
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.br = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.ai, ptr noundef %i.bq, ptr noundef %i.ai) #8, !inline_history !15
  %i.bs = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.br) #8, !inline_history !15 ; 0 uses
  %.not90.i = icmp eq ptr %i.ai, null
  br i1 %.not90.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ai) #8, !inline_history !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = tail call ptr @complement(ptr noundef nonnull %0), !inline_history !15
  %i.bu = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.bt, ptr noundef %i.bp) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

bb.s:                                             ; preds = %._crit_edge
  %.not91.i = icmp eq ptr %i.ai, null
  br i1 %.not91.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.ai) #8, !inline_history !15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #8, !inline_history !15
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !26 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bx = load i32, ptr @cube, align 8, !tbaa !11
  %i.by = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.bx) #8, !inline_history !15
  %i.bz = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not93.i = icmp eq ptr %i.bz, null
  br i1 %.not93.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.bz) #8, !inline_history !15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

bb.y:                                             ; preds = %bb.u
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !28
  %i.cb = icmp eq i32 %i.ca, %i.bv
  br i1 %i.cb, label %bb.z, label %compl_special_cases.exit

bb.z:                                             ; preds = %bb.y
  %i.cc = tail call ptr (ptr, ...) @map_cover_to_unate(ptr noundef nonnull %0) #8, !inline_history !15
  %i.cd = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not92.i = icmp eq ptr %i.cd, null
  br i1 %.not92.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.cd) #8, !inline_history !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void @free(ptr noundef nonnull %0) #8, !inline_history !15
  %i.ce = tail call ptr (ptr, ...) @unate_compl(ptr noundef %i.cc) #8, !inline_history !15 ; 2 uses
  %i.cf = tail call ptr (ptr, ...) @map_unate_to_cover(ptr noundef %i.ce) #8, !inline_history !15
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ce) #8, !inline_history !15
  br label %compl_special_cases.exit.thread

compl_special_cases.exit:                         ; preds = %bb.y
  %i.cg = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 33
  %i.ci = add nsw i32 %i.cg, -1
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = and i32 %i.cj, 536870908
  %i.cl = add nuw nsw i32 %i.ck, 8
  %narrow45 = select i1 %i.ch, i32 8, i32 %i.cl
  %i.cm = zext nneg i32 %narrow45 to i64
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cm) #9
  %1 = load i32, ptr @cube, align 8, !tbaa !11
  %i.co = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.cn, i32 noundef %1) #8 ; 5 uses
  %i.cp = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 33
  %i.cr = add nsw i32 %i.cp, -1
  %i.cs = lshr i32 %i.cr, 3
  %i.ct = and i32 %i.cs, 536870908
  %i.cu = add nuw nsw i32 %i.ct, 8
  %narrow46 = select i1 %i.cq, i32 8, i32 %i.cu
  %i.cv = zext nneg i32 %narrow46 to i64
  %i.cw = tail call noalias ptr @malloc(i64 noundef %i.cv) #9
  %2 = load i32, ptr @cube, align 8, !tbaa !11
  %i.cx = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.cw, i32 noundef %2) #8 ; 5 uses
  %i.cy = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef nonnull %0, ptr noundef %i.co, ptr noundef %i.cx, i32 noundef 1) #8 ; 3 uses
  %i.cz = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.co, i32 noundef %i.cy) #8
  %i.da = tail call ptr @complement(ptr noundef %i.cz) ; 2 uses
  %i.db = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.cx, i32 noundef %i.cy) #8
  %i.dc = tail call ptr @complement(ptr noundef %i.db) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29 ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %i.de
  %i.di = sext i32 %i.dh to i64
  %i.dj = add nsw i32 %i.dg, %i.de
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %0 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = add nsw i64 %i.dq, -3
  %i.ds = mul nsw i64 %i.dr, %i.dk
  %i.dt = icmp slt i64 %i.ds, %i.di
  %. = zext i1 %i.dt to i32
  %i.du = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef nonnull %i.da, ptr noundef nonnull %i.dc, ptr noundef %i.co, ptr noundef %i.cx, i32 noundef %i.cy, i32 noundef %.)
  %.not38 = icmp eq ptr %i.co, null
  br i1 %.not38, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %compl_special_cases.exit
  tail call void @free(ptr noundef nonnull %i.co) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %compl_special_cases.exit
  %.not39 = icmp eq ptr %i.cx, null
  br i1 %.not39, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.cx) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dv = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not40 = icmp eq ptr %i.dv, null
  br i1 %.not40, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.dv) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  tail call void @free(ptr noundef nonnull %0) #8
  br label %compl_special_cases.exit.thread

compl_special_cases.exit.thread:                  ; preds = %bb.r, %bb.ab, %bb.x, %bb.n, %bb.j, %bb.f, %bb.ah
  %.0 = phi ptr [ %i.du, %bb.ah ], [ %i.x, %bb.n ], [ %i.cf, %bb.ab ], [ %i.by, %bb.x ], [ %i.bu, %bb.r ], [ %i.r, %bb.j ], [ %i.l, %bb.f ] ; 2 uses
  %i.dw = load i32, ptr @debug, align 4, !tbaa !4
  %i.dx = and i32 %i.dw, 1
  %.not41 = icmp eq i32 %i.dx, 0
  br i1 %.not41, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %compl_special_cases.exit.thread
  %i.dy = load i32, ptr @complement.compl_level, align 4, !tbaa !4
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr @complement.compl_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %.0, ptr noundef nonnull @.str.1, i32 noundef %i.dz) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %compl_special_cases.exit.thread
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @debug_print(...) local_unnamed_addr #2

declare ptr @set_clear(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @binate_split_select(...) local_unnamed_addr #2

declare ptr @scofactor(...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @debug1_print(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @simp_comp(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = load i32, ptr @debug, align 4, !tbaa !4
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4 ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.g) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @cube, align 8, !tbaa !11
  %i.n = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.m) #8, !inline_history !32
  store ptr %i.n, ptr %1, align 8, !tbaa !33
  %i.o = load i32, ptr @cube, align 8, !tbaa !11
  %i.p = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.o) #8, !inline_history !32
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.r = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.p, ptr noundef %i.q) #8, !inline_history !32
  store ptr %i.r, ptr %2, align 8, !tbaa !33
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not136.i = icmp eq ptr %i.s, null
  br i1 %.not136.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.i, ptr noundef %i.i, ptr noundef nonnull %i.k) #8, !inline_history !32 ; 0 uses
  %i.x = load i32, ptr @cube, align 8, !tbaa !11
  %i.y = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.x) #8, !inline_history !32
  %i.z = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.y, ptr noundef %i.i) #8, !inline_history !32
  store ptr %i.z, ptr %1, align 8, !tbaa !33
  %i.aa = tail call fastcc ptr @compl_cube(ptr noundef %i.i), !inline_history !32
  store ptr %i.aa, ptr %2, align 8, !tbaa !33
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not135.i = icmp eq ptr %i.ab, null
  br i1 %.not135.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

.preheader:                                       ; preds = %bb.e, %bb.g
  %.0110.i = phi ptr [ %i.ad, %bb.g ], [ %i.j, %bb.e ] ; 2 uses
  %i.ac = load ptr, ptr %.0110.i, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.0110.i, i64 8
  %i.ae = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.ac, ptr noundef %i.i) #8, !inline_history !32
  %.not133.i = icmp eq i32 %i.ae, 0
  br i1 %.not133.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr @cube, align 8, !tbaa !11
  %i.ag = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.af) #8, !inline_history !32
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.ai = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.ag, ptr noundef %i.ah) #8, !inline_history !32
  store ptr %i.ai, ptr %1, align 8, !tbaa !33
  %i.aj = load i32, ptr @cube, align 8, !tbaa !11
  %i.ak = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.aj) #8, !inline_history !32
  store ptr %i.ak, ptr %2, align 8, !tbaa !33
  %i.al = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not134.i = icmp eq ptr %i.al, null
  br i1 %.not134.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

bb.i:                                             ; preds = %.preheader
  %i.am = load i32, ptr %i.i, align 4, !tbaa !4
  %i.an = shl i32 %i.am, 5
  %i.ao = and i32 %i.an, 32736                    ; 2 uses
  %i.ap = icmp samesign ult i32 %i.ao, 33
  %i.aq = add nsw i32 %i.ao, -32
  %i.ar = lshr exact i32 %i.aq, 3
  %i.as = add nuw nsw i32 %i.ar, 8
  %narrow = select i1 %i.ap, i32 8, i32 %i.as
  %i.at = zext nneg i32 %narrow to i64
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #9, !inline_history !32
  %i.av = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.au, ptr noundef nonnull %i.i) #8, !inline_history !32 ; 16 uses
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !8   ; 2 uses
  %.not126.i53 = icmp eq ptr %i.aw, null
  br i1 %.not126.i53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %scevgep78 = getelementptr i8, ptr %i.av, i64 4
  br label %.lr.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ay = load ptr, ptr %i.ba, align 8, !tbaa !8  ; 2 uses
  %.not126.i = icmp eq ptr %i.ay, null
  br i1 %.not126.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.az = phi ptr [ %i.ay, %.loopexit ], [ %i.aw, %.lr.ph.preheader ] ; 4 uses
  %i.ba = phi ptr [ %i.ax, %.loopexit ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bc = and i32 %i.bb, 1023                     ; 3 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 6 uses
  %i.be = icmp ne i32 %i.bc, 0
  %.neg = sext i1 %i.be to i64
  %i.bf = add nuw nsw i64 %i.bd, 1
  %i.bg = add nsw i64 %i.bf, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.not112 = icmp eq i32 %i.bc, 0
  %i.bh = select i1 %.not112, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bh
  %i.bi = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.bi
  %scevgep80 = getelementptr i8, ptr %i.az, i64 %i.bh
  %scevgep81 = getelementptr i8, ptr %i.az, i64 4
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.bi
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  %i.bj = sub nsw i64 %i.bd, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = sub i64 %i.bd, %index                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -12 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  %wide.load83 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bk ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -12
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -28
  %wide.load84 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !4, !alias.scope !37
  %wide.load85 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !4, !alias.scope !37
  %i.br = or <4 x i32> %wide.load84, %wide.load
  %i.bs = or <4 x i32> %wide.load85, %wide.load83
  store <4 x i32> %i.br, ptr %i.bm, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  store <4 x i32> %i.bs, ptr %i.bn, align 4, !tbaa !4, !alias.scope !34, !noalias !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph ], [ %i.bj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = or i32 %i.bx, %i.bv
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bz = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bz, label %scalar.ph, label %.loopexit, !llvm.loop !40

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.cb = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef %i.av, ptr noundef %i.ca) #8, !inline_history !32
  %.not127.i = icmp eq i32 %i.cb, 0
  br i1 %.not127.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.cc = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 33
  %i.ce = add nsw i32 %i.cc, -1
  %i.cf = lshr i32 %i.ce, 3
  %i.cg = and i32 %i.cf, 536870908
  %i.ch = add nuw nsw i32 %i.cg, 8
  %narrow52 = select i1 %i.cd, i32 8, i32 %i.ch
  %i.ci = zext nneg i32 %narrow52 to i64
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #9, !inline_history !32
  %3 = load i32, ptr @cube, align 8, !tbaa !11
  %i.ck = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.cj, i32 noundef %3) #8, !inline_history !32 ; 4 uses
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.cm = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.av) #8, !inline_history !32 ; 0 uses
  %i.cn = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef %i.ck) #8, !inline_history !32 ; 0 uses
  %.not128.i = icmp eq ptr %i.ck, null
  br i1 %.not128.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ck) #8, !inline_history !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @simp_comp(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2), !inline_history !32
  %i.co = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !29
  %i.ct = load i32, ptr %i.co, align 8, !tbaa !42
  %i.cu = mul nsw i32 %i.ct, %i.cs                ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %.idx = shl nsw i64 %i.cv, 2
  %i.cw = getelementptr inbounds i8, ptr %i.cq, i64 %.idx
  %i.cx = icmp sgt i32 %i.cu, 0
  br i1 %i.cx, label %.lr.ph56.preheader, label %._crit_edge57

.lr.ph56.preheader:                               ; preds = %bb.l
  %scevgep92 = getelementptr i8, ptr %i.av, i64 4
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.loopexit111
  %.0109.i54 = phi ptr [ %i.dz, %.loopexit111 ], [ %i.cq, %.lr.ph56.preheader ] ; 6 uses
  %i.cy = load i32, ptr %.0109.i54, align 4, !tbaa !4
  %i.cz = and i32 %i.cy, 1023                     ; 3 uses
  %i.da = zext nneg i32 %i.cz to i64              ; 6 uses
  %i.db = icmp ne i32 %i.cz, 0
  %.neg113 = sext i1 %i.db to i64
  %i.dc = add nuw nsw i64 %i.da, 1
  %i.dd = add nsw i64 %i.dc, %.neg113             ; 3 uses
  %min.iters.check98 = icmp ult i64 %i.dd, 8
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.lr.ph56
  %.not114 = icmp eq i32 %i.cz, 0
  %i.de = select i1 %.not114, i64 0, i64 4        ; 2 uses
  %scevgep88 = getelementptr i8, ptr %.0109.i54, i64 %i.de
  %scevgep89 = getelementptr i8, ptr %.0109.i54, i64 4
  %i.df = shl nuw nsw i64 %i.da, 2                ; 2 uses
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.df
  %scevgep91 = getelementptr i8, ptr %i.av, i64 %i.de
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %i.df
  %bound094 = icmp ult ptr %scevgep88, %scevgep93
  %bound195 = icmp ult ptr %scevgep91, %scevgep90
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %scalar.ph97.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck86
  %n.vec100 = and i64 %i.dd, -8                   ; 3 uses
  %i.dg = sub nsw i64 %i.da, %n.vec100
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %i.dh = sub i64 %i.da, %index102                ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.0109.i54, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -12 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -28 ; 2 uses
  %wide.load103 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  %wide.load104 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.dh ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -12
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -28
  %wide.load105 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !4, !alias.scope !46
  %wide.load106 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !4, !alias.scope !46
  %i.do = and <4 x i32> %wide.load105, %wide.load103
  %i.dp = and <4 x i32> %wide.load106, %wide.load104
  store <4 x i32> %i.do, ptr %i.dj, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  store <4 x i32> %i.dp, ptr %i.dk, align 4, !tbaa !4, !alias.scope !43, !noalias !46
  %index.next107 = add nuw i64 %index102, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.dq, label %middle.block108, label %vector.body101, !llvm.loop !48

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %i.dd, %n.vec100
  br i1 %cmp.n109, label %.loopexit111, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %vector.memcheck86, %.lr.ph56, %middle.block108
  %indvars.iv59.ph = phi i64 [ %i.da, %vector.memcheck86 ], [ %i.da, %.lr.ph56 ], [ %i.dg, %middle.block108 ]
  br label %scalar.ph97

scalar.ph97:                                      ; preds = %scalar.ph97.preheader, %scalar.ph97
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %scalar.ph97 ], [ %indvars.iv59.ph, %scalar.ph97.preheader ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0109.i54, i64 %indvars.iv59 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv59
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = and i32 %i.du, %i.ds
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !4
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  %i.dw = icmp samesign ugt i64 %indvars.iv59, 1
  br i1 %i.dw, label %scalar.ph97, label %.loopexit111, !llvm.loop !49

.loopexit111:                                     ; preds = %scalar.ph97, %middle.block108
  %i.dx = load i32, ptr %i.co, align 8, !tbaa !42
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %.0109.i54, i64 %i.dy ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.cw
  br i1 %i.ea, label %.lr.ph56, label %._crit_edge57

._crit_edge57:                                    ; preds = %.loopexit111, %bb.l
  %i.eb = load ptr, ptr %2, align 8, !tbaa !33
  %i.ec = tail call fastcc ptr @compl_cube(ptr noundef %i.av), !inline_history !32
  %i.ed = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.eb, ptr noundef %i.ec) #8, !inline_history !32
  store ptr %i.ed, ptr %2, align 8, !tbaa !33
  %.not129.i = icmp eq ptr %i.av, null
  br i1 %.not129.i, label %simp_comp_special_cases.exit.thread, label %simp_comp_special_cases.exit.thread.sink.split

bb.m:                                             ; preds = %._crit_edge
  %.not130.i = icmp eq ptr %i.av, null
  br i1 %.not130.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.av) #8, !inline_history !32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #8, !inline_history !32
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !26 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = load i32, ptr @cube, align 8, !tbaa !11
  %i.eh = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.eg) #8, !inline_history !32
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.ej = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.eh, ptr noundef %i.ei) #8, !inline_history !32
  store ptr %i.ej, ptr %1, align 8, !tbaa !33
  %i.ek = load i32, ptr @cube, align 8, !tbaa !11
  %i.el = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.ek) #8, !inline_history !32
  store ptr %i.el, ptr %2, align 8, !tbaa !33
  %i.em = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not132.i = icmp eq ptr %i.em, null
  br i1 %.not132.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

bb.q:                                             ; preds = %bb.o
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !28
  %i.eo = icmp eq i32 %i.en, %i.ee
  br i1 %i.eo, label %bb.r, label %simp_comp_special_cases.exit

bb.r:                                             ; preds = %bb.q
  %i.ep = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8, !inline_history !32
  %i.eq = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.ep) #8, !inline_history !32
  store ptr %i.eq, ptr %1, align 8, !tbaa !33
  %i.er = tail call ptr (ptr, ...) @map_cover_to_unate(ptr noundef nonnull %0) #8, !inline_history !32
  %i.es = tail call ptr (ptr, ...) @unate_compl(ptr noundef %i.er) #8, !inline_history !32 ; 2 uses
  %i.et = tail call ptr (ptr, ...) @map_unate_to_cover(ptr noundef %i.es) #8, !inline_history !32
  store ptr %i.et, ptr %2, align 8, !tbaa !33
  tail call void (ptr, ...) @sf_free(ptr noundef %i.es) #8, !inline_history !32
  %i.eu = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not131.i = icmp eq ptr %i.eu, null
  br i1 %.not131.i, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

simp_comp_special_cases.exit:                     ; preds = %bb.q
  %i.ev = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 33
  %i.ex = add nsw i32 %i.ev, -1
  %i.ey = lshr i32 %i.ex, 3
  %i.ez = and i32 %i.ey, 536870908
  %i.fa = add nuw nsw i32 %i.ez, 8
  %narrow50 = select i1 %i.ew, i32 8, i32 %i.fa
  %i.fb = zext nneg i32 %narrow50 to i64
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fb) #9
  %4 = load i32, ptr @cube, align 8, !tbaa !11
  %i.fd = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fc, i32 noundef %4) #8 ; 6 uses
  %i.fe = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 33
  %i.fg = add nsw i32 %i.fe, -1
  %i.fh = lshr i32 %i.fg, 3
  %i.fi = and i32 %i.fh, 536870908
  %i.fj = add nuw nsw i32 %i.fi, 8
  %narrow51 = select i1 %i.ff, i32 8, i32 %i.fj
  %i.fk = zext nneg i32 %narrow51 to i64
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fk) #9
  %5 = load i32, ptr @cube, align 8, !tbaa !11
  %i.fm = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fl, i32 noundef %5) #8 ; 6 uses
  %i.fn = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef nonnull %0, ptr noundef %i.fd, ptr noundef %i.fm, i32 noundef 1) #8 ; 4 uses
  %i.fo = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.fd, i32 noundef %i.fn) #8
  call void @simp_comp(ptr noundef %i.fo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  %i.fp = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.fm, i32 noundef %i.fn) #8
  call void @simp_comp(ptr noundef %i.fp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.fs = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef %i.fq, ptr noundef %i.fr, ptr noundef %i.fd, ptr noundef %i.fm, i32 noundef %i.fn, i32 noundef 0)
  store ptr %i.fs, ptr %1, align 8, !tbaa !33
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.fv = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef %i.ft, ptr noundef %i.fu, ptr noundef %i.fd, ptr noundef %i.fm, i32 noundef %i.fn, i32 noundef 0)
  store ptr %i.fv, ptr %2, align 8, !tbaa !33
  %i.fw = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !29
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !8
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %0 to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 3
  %i.gg = add nsw i64 %i.gf, -3
  %i.gh = icmp slt i64 %i.gg, %i.fz
  br i1 %i.gh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %simp_comp_special_cases.exit
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.fw) #8
  %i.gi = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8
  store ptr %i.gi, ptr %1, align 8, !tbaa !33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %simp_comp_special_cases.exit
  %.not45 = icmp eq ptr %i.fd, null
  br i1 %.not45, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.fd) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not46 = icmp eq ptr %i.fm, null
  br i1 %.not46, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.fm) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gj = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not47 = icmp eq ptr %i.gj, null
  br i1 %.not47, label %simp_comp_special_cases.exit.thread.sink.split, label %simp_comp_special_cases.exit.thread.sink.split.sink.split

simp_comp_special_cases.exit.thread.sink.split.sink.split: ; preds = %bb.x, %bb.r, %bb.p, %bb.h, %bb.f, %bb.d
  %.sink77 = phi ptr [ %i.eu, %bb.r ], [ %i.em, %bb.p ], [ %i.al, %bb.h ], [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %i.gj, %bb.x ]
  tail call void @free(ptr noundef nonnull %.sink77) #8
  br label %simp_comp_special_cases.exit.thread.sink.split

simp_comp_special_cases.exit.thread.sink.split:   ; preds = %simp_comp_special_cases.exit.thread.sink.split.sink.split, %bb.x, %bb.r, %bb.p, %._crit_edge57, %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %0, %bb.h ], [ %0, %bb.p ], [ %i.av, %._crit_edge57 ], [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.r ], [ %0, %bb.x ], [ %0, %simp_comp_special_cases.exit.thread.sink.split.sink.split ]
  tail call void @free(ptr noundef nonnull %.sink) #8
  br label %simp_comp_special_cases.exit.thread

simp_comp_special_cases.exit.thread:              ; preds = %simp_comp_special_cases.exit.thread.sink.split, %._crit_edge57
  %i.gk = load i32, ptr @debug, align 4, !tbaa !4
  %i.gl = and i32 %i.gk, 1
  %.not48 = icmp eq i32 %i.gl, 0
  br i1 %.not48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %simp_comp_special_cases.exit.thread
  %i.gm = load ptr, ptr %1, align 8, !tbaa !33
  %i.gn = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %i.gm, ptr noundef nonnull @.str.3, i32 noundef %i.gn) #8
  %i.go = load ptr, ptr %2, align 8, !tbaa !33
  %i.gp = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %i.go, ptr noundef nonnull @.str.4, i32 noundef %i.gp) #8
  %i.gq = load i32, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  %i.gr = add nsw i32 %i.gq, -1
  store i32 %i.gr, ptr @simp_comp.simplify_level, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %simp_comp_special_cases.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @sf_free(...) local_unnamed_addr #2

declare ptr @cubeunlist(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @debug, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @simplify.simplify_level, align 4, !tbaa !4 ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @simplify.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug_print(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.c) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @cube, align 8, !tbaa !11
  %i.j = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.i) #8, !inline_history !50 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not120.i = icmp eq ptr %i.k, null
  br i1 %.not120.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr @cube, align 8, !tbaa !11
  %i.p = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.o) #8, !inline_history !50
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.r = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.e, ptr noundef %i.e, ptr noundef %i.q) #8, !inline_history !50
  %i.s = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.p, ptr noundef %i.r) #8, !inline_history !50 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not119.i = icmp eq ptr %i.t, null
  br i1 %.not119.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

.preheader:                                       ; preds = %bb.e, %bb.g
  %.095.i = phi ptr [ %i.v, %bb.g ], [ %i.f, %bb.e ] ; 2 uses
  %i.u = load ptr, ptr %.095.i, align 8, !tbaa !8 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %.095.i, i64 8
  %i.w = tail call i32 (ptr, ptr, ...) @full_row(ptr noundef nonnull %i.u, ptr noundef %i.e) #8, !inline_history !50
  %.not117.i = icmp eq i32 %i.w, 0
  br i1 %.not117.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr @cube, align 8, !tbaa !11
  %i.y = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.x) #8, !inline_history !50
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.aa = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.y, ptr noundef %i.z) #8, !inline_history !50 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not118.i = icmp eq ptr %i.ab, null
  br i1 %.not118.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

bb.i:                                             ; preds = %.preheader
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !4
  %i.ad = shl i32 %i.ac, 5
  %i.ae = and i32 %i.ad, 32736                    ; 2 uses
  %i.af = icmp samesign ult i32 %i.ae, 33
  %i.ag = add nsw i32 %i.ae, -32
  %i.ah = lshr exact i32 %i.ag, 3
  %i.ai = add nuw nsw i32 %i.ah, 8
  %narrow = select i1 %i.af, i32 8, i32 %i.ai
  %i.aj = zext nneg i32 %narrow to i64
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #9, !inline_history !50
  %i.al = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.ak, ptr noundef nonnull %i.e) #8, !inline_history !50 ; 16 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %.not110.i43 = icmp eq ptr %i.am, null
  br i1 %.not110.i43, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %scevgep70 = getelementptr i8, ptr %i.al, i64 4
  br label %.lr.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.an = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ao = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 2 uses
  %.not110.i = icmp eq ptr %i.ao, null
  br i1 %.not110.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.ap = phi ptr [ %i.ao, %.loopexit ], [ %i.am, %.lr.ph.preheader ] ; 4 uses
  %i.aq = phi ptr [ %i.an, %.loopexit ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !4
  %i.as = and i32 %i.ar, 1023                     ; 3 uses
  %i.at = zext nneg i32 %i.as to i64              ; 6 uses
  %i.au = icmp ne i32 %i.as, 0
  %.neg = sext i1 %i.au to i64
  %i.av = add nuw nsw i64 %i.at, 1
  %i.aw = add nsw i64 %i.av, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %.not104 = icmp eq i32 %i.as, 0
  %i.ax = select i1 %.not104, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.ax
  %i.ay = shl nuw nsw i64 %i.at, 2                ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.ay
  %scevgep72 = getelementptr i8, ptr %i.ap, i64 %i.ax
  %scevgep73 = getelementptr i8, ptr %i.ap, i64 4
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.ay
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep72, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, -8                      ; 3 uses
  %i.az = sub nsw i64 %i.at, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = sub i64 %i.at, %index                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -12 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  %wide.load75 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ba ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -12
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -28
  %wide.load76 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4, !alias.scope !54
  %wide.load77 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !4, !alias.scope !54
  %i.bh = or <4 x i32> %wide.load76, %wide.load
  %i.bi = or <4 x i32> %wide.load77, %wide.load75
  store <4 x i32> %i.bh, ptr %i.bc, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  store <4 x i32> %i.bi, ptr %i.bd, align 4, !tbaa !4, !alias.scope !51, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph ], [ %i.az, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = or i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bp = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bp, label %scalar.ph, label %.loopexit, !llvm.loop !57

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.br = tail call i32 (ptr, ptr, ...) @setp_equal(ptr noundef %i.al, ptr noundef %i.bq) #8, !inline_history !50
  %.not111.i = icmp eq i32 %i.br, 0
  br i1 %.not111.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.bs = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 33
  %i.bu = add nsw i32 %i.bs, -1
  %i.bv = lshr i32 %i.bu, 3
  %i.bw = and i32 %i.bv, 536870908
  %i.bx = add nuw nsw i32 %i.bw, 8
  %narrow42 = select i1 %i.bt, i32 8, i32 %i.bx
  %i.by = zext nneg i32 %narrow42 to i64
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #9, !inline_history !50
  %1 = load i32, ptr @cube, align 8, !tbaa !11
  %i.ca = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.bz, i32 noundef %1) #8, !inline_history !50 ; 4 uses
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.cc = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.ca, ptr noundef %i.cb, ptr noundef %i.al) #8, !inline_history !50 ; 0 uses
  %i.cd = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.ca) #8, !inline_history !50 ; 0 uses
  %.not112.i = icmp eq ptr %i.ca, null
  br i1 %.not112.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ca) #8, !inline_history !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ce = tail call ptr @simplify(ptr noundef nonnull %0), !inline_history !50 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !41 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !29
  %i.cj = load i32, ptr %i.ce, align 8, !tbaa !42
  %i.ck = mul nsw i32 %i.cj, %i.ci                ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %.idx = shl nsw i64 %i.cl, 2
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %.idx
  %i.cn = icmp sgt i32 %i.ck, 0
  br i1 %i.cn, label %.lr.ph46.preheader, label %._crit_edge47

.lr.ph46.preheader:                               ; preds = %bb.l
  %scevgep84 = getelementptr i8, ptr %i.al, i64 4
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.loopexit103
  %.094.i44 = phi ptr [ %i.dp, %.loopexit103 ], [ %i.cg, %.lr.ph46.preheader ] ; 6 uses
  %i.co = load i32, ptr %.094.i44, align 4, !tbaa !4
  %i.cp = and i32 %i.co, 1023                     ; 3 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 6 uses
  %i.cr = icmp ne i32 %i.cp, 0
  %.neg105 = sext i1 %i.cr to i64
  %i.cs = add nuw nsw i64 %i.cq, 1
  %i.ct = add nsw i64 %i.cs, %.neg105             ; 3 uses
  %min.iters.check90 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph46
  %.not106 = icmp eq i32 %i.cp, 0
  %i.cu = select i1 %.not106, i64 0, i64 4        ; 2 uses
  %scevgep80 = getelementptr i8, ptr %.094.i44, i64 %i.cu
  %scevgep81 = getelementptr i8, ptr %.094.i44, i64 4
  %i.cv = shl nuw nsw i64 %i.cq, 2                ; 2 uses
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.cv
  %scevgep83 = getelementptr i8, ptr %i.al, i64 %i.cu
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.cv
  %bound086 = icmp ult ptr %scevgep80, %scevgep85
  %bound187 = icmp ult ptr %scevgep83, %scevgep82
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck78
  %n.vec92 = and i64 %i.ct, -8                    ; 3 uses
  %i.cw = sub nsw i64 %i.cq, %n.vec92
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body93 ] ; 2 uses
  %i.cx = sub i64 %i.cq, %index94                 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.094.i44, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -12 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -28 ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  %wide.load96 = load <4 x i32>, ptr %i.da, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cx ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -12
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -28
  %wide.load97 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !4, !alias.scope !61
  %wide.load98 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !4, !alias.scope !61
  %i.de = and <4 x i32> %wide.load97, %wide.load95
  %i.df = and <4 x i32> %wide.load98, %wide.load96
  store <4 x i32> %i.de, ptr %i.cz, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  store <4 x i32> %i.df, ptr %i.da, align 4, !tbaa !4, !alias.scope !58, !noalias !61
  %index.next99 = add nuw i64 %index94, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.dg, label %middle.block100, label %vector.body93, !llvm.loop !63

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %i.ct, %n.vec92
  br i1 %cmp.n101, label %.loopexit103, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck78, %.lr.ph46, %middle.block100
  %indvars.iv49.ph = phi i64 [ %i.cq, %vector.memcheck78 ], [ %i.cq, %.lr.ph46 ], [ %i.cw, %middle.block100 ]
  br label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph89 ], [ %indvars.iv49.ph, %scalar.ph89.preheader ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.094.i44, i64 %indvars.iv49 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv49
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = and i32 %i.dk, %i.di
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, -1
  %i.dm = icmp samesign ugt i64 %indvars.iv49, 1
  br i1 %i.dm, label %scalar.ph89, label %.loopexit103, !llvm.loop !64

.loopexit103:                                     ; preds = %scalar.ph89, %middle.block100
  %i.dn = load i32, ptr %i.ce, align 8, !tbaa !42
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %.094.i44, i64 %i.do ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.cm
  br i1 %i.dq, label %.lr.ph46, label %simplify_special_cases.exit.thread.sink.split

._crit_edge47:                                    ; preds = %bb.l
  %.not113.i = icmp eq ptr %i.al, null
  br i1 %.not113.i, label %simplify_special_cases.exit.thread, label %simplify_special_cases.exit.thread.sink.split

bb.m:                                             ; preds = %._crit_edge
  %.not114.i = icmp eq ptr %i.al, null
  br i1 %.not114.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.al) #8, !inline_history !50
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, ...) @massive_count(ptr noundef nonnull %0) #8, !inline_history !50
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 32), align 8, !tbaa !26 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dt = load i32, ptr @cube, align 8, !tbaa !11
  %i.du = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.dt) #8, !inline_history !50
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16
  %i.dw = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.du, ptr noundef %i.dv) #8, !inline_history !50 ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not116.i = icmp eq ptr %i.dx, null
  br i1 %.not116.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

bb.q:                                             ; preds = %bb.o
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 36), align 4, !tbaa !28
  %i.dz = icmp eq i32 %i.dy, %i.dr
  br i1 %i.dz, label %bb.r, label %simplify_special_cases.exit

bb.r:                                             ; preds = %bb.q
  %i.ea = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8, !inline_history !50
  %i.eb = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.ea) #8, !inline_history !50 ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not115.i = icmp eq ptr %i.ec, null
  br i1 %.not115.i, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

simplify_special_cases.exit:                      ; preds = %bb.q
  %i.ed = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 33
  %i.ef = add nsw i32 %i.ed, -1
  %i.eg = lshr i32 %i.ef, 3
  %i.eh = and i32 %i.eg, 536870908
  %i.ei = add nuw nsw i32 %i.eh, 8
  %narrow40 = select i1 %i.ee, i32 8, i32 %i.ei
  %i.ej = zext nneg i32 %narrow40 to i64
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ej) #9
  %2 = load i32, ptr @cube, align 8, !tbaa !11
  %i.el = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ek, i32 noundef %2) #8 ; 5 uses
  %i.em = load i32, ptr @cube, align 8, !tbaa !11 ; 2 uses
  %i.en = icmp slt i32 %i.em, 33
  %i.eo = add nsw i32 %i.em, -1
  %i.ep = lshr i32 %i.eo, 3
  %i.eq = and i32 %i.ep, 536870908
  %i.er = add nuw nsw i32 %i.eq, 8
  %narrow41 = select i1 %i.en, i32 8, i32 %i.er
  %i.es = zext nneg i32 %narrow41 to i64
  %i.et = tail call noalias ptr @malloc(i64 noundef %i.es) #9
  %3 = load i32, ptr @cube, align 8, !tbaa !11
  %i.eu = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.et, i32 noundef %3) #8 ; 5 uses
  %i.ev = tail call i32 (ptr, ptr, ptr, i32, ...) @binate_split_select(ptr noundef nonnull %0, ptr noundef %i.el, ptr noundef %i.eu, i32 noundef 1) #8 ; 3 uses
  %i.ew = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.el, i32 noundef %i.ev) #8
  %i.ex = tail call ptr @simplify(ptr noundef %i.ew)
  %i.ey = tail call ptr (ptr, ptr, i32, ...) @scofactor(ptr noundef nonnull %0, ptr noundef %i.eu, i32 noundef %i.ev) #8
  %i.ez = tail call ptr @simplify(ptr noundef %i.ey)
  %i.fa = tail call fastcc ptr @compl_merge(ptr noundef nonnull %0, ptr noundef %i.ex, ptr noundef %i.ez, ptr noundef %i.el, ptr noundef %i.eu, i32 noundef %i.ev, i32 noundef 0) ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !29
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !8
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %0 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = ashr exact i64 %i.fi, 3
  %i.fk = add nsw i64 %i.fj, -3
  %i.fl = icmp slt i64 %i.fk, %i.fd
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %simplify_special_cases.exit
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.fa) #8
  %i.fm = tail call ptr (ptr, ...) @cubeunlist(ptr noundef nonnull %0) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %simplify_special_cases.exit
  %.0 = phi ptr [ %i.fm, %bb.s ], [ %i.fa, %simplify_special_cases.exit ] ; 2 uses
  %.not33 = icmp eq ptr %i.el, null
  br i1 %.not33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.el) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not34 = icmp eq ptr %i.eu, null
  br i1 %.not34, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.eu) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fn = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not35 = icmp eq ptr %i.fn, null
  br i1 %.not35, label %simplify_special_cases.exit.thread.sink.split, label %simplify_special_cases.exit.thread.sink.split.sink.split

simplify_special_cases.exit.thread.sink.split.sink.split: ; preds = %bb.x, %bb.r, %bb.p, %bb.h, %bb.f, %bb.d
  %.sink69 = phi ptr [ %i.ec, %bb.r ], [ %i.dx, %bb.p ], [ %i.ab, %bb.h ], [ %i.t, %bb.f ], [ %i.k, %bb.d ], [ %i.fn, %bb.x ]
  %.1.ph.ph = phi ptr [ %i.eb, %bb.r ], [ %i.dw, %bb.p ], [ %i.aa, %bb.h ], [ %i.s, %bb.f ], [ %i.j, %bb.d ], [ %.0, %bb.x ]
  tail call void @free(ptr noundef nonnull %.sink69) #8
  br label %simplify_special_cases.exit.thread.sink.split

simplify_special_cases.exit.thread.sink.split:    ; preds = %.loopexit103, %simplify_special_cases.exit.thread.sink.split.sink.split, %bb.x, %bb.r, %bb.p, %._crit_edge47, %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %0, %bb.h ], [ %0, %bb.p ], [ %i.al, %._crit_edge47 ], [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.r ], [ %0, %bb.x ], [ %0, %simplify_special_cases.exit.thread.sink.split.sink.split ], [ %i.al, %.loopexit103 ]
  %.1.ph = phi ptr [ %i.aa, %bb.h ], [ %i.dw, %bb.p ], [ %i.ce, %._crit_edge47 ], [ %i.s, %bb.f ], [ %i.j, %bb.d ], [ %i.eb, %bb.r ], [ %.0, %bb.x ], [ %.1.ph.ph, %simplify_special_cases.exit.thread.sink.split.sink.split ], [ %i.ce, %.loopexit103 ]
  tail call void @free(ptr noundef nonnull %.sink) #8
  br label %simplify_special_cases.exit.thread

simplify_special_cases.exit.thread:               ; preds = %simplify_special_cases.exit.thread.sink.split, %._crit_edge47
  %.1 = phi ptr [ %i.ce, %._crit_edge47 ], [ %.1.ph, %simplify_special_cases.exit.thread.sink.split ] ; 2 uses
  %i.fo = load i32, ptr @debug, align 4, !tbaa !4
  %i.fp = and i32 %i.fo, 1
  %.not36 = icmp eq i32 %i.fp, 0
  br i1 %.not36, label %bb.z, label %bb.y

bb.y:                                             ; preds = %simplify_special_cases.exit.thread
  %i.fq = load i32, ptr @simplify.simplify_level, align 4, !tbaa !4
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr @simplify.simplify_level, align 4, !tbaa !4
  tail call void (ptr, ptr, i32, ...) @debug1_print(ptr noundef %.1, ptr noundef nonnull @.str.6, i32 noundef %i.fr) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %simplify_special_cases.exit.thread
  ret ptr %.1
}

declare ptr @sf_addset(...) local_unnamed_addr #2

declare ptr @sf_new(...) local_unnamed_addr #2

declare ptr @set_or(...) local_unnamed_addr #2

declare i32 @full_row(...) local_unnamed_addr #2

declare ptr @set_copy(...) local_unnamed_addr #2

declare i32 @setp_equal(...) local_unnamed_addr #2

declare ptr @set_diff(...) local_unnamed_addr #2

declare ptr @sf_append(...) local_unnamed_addr #2

declare void @massive_count(...) local_unnamed_addr #2

declare ptr @map_cover_to_unate(...) local_unnamed_addr #2

declare ptr @unate_compl(...) local_unnamed_addr #2

declare ptr @map_unate_to_cover(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compl_cube(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 9 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !16 ; 6 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !66
  %i.h = load i32, ptr @cube, align 8, !tbaa !11
  %i.i = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.g, i32 noundef %i.h) #8 ; 4 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.k = and i32 %i.j, 1023
  %i.l = load i32, ptr %i.c, align 4, !tbaa !4
  %i.m = and i32 %i.l, -1024
  %i.n = or disjoint i32 %i.m, %i.k
  store i32 %i.n, ptr %i.c, align 4, !tbaa !4
  %i.o = and i32 %i.j, 1023                       ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 5 uses
  %i.q = icmp ne i32 %i.o, 0
  %.neg = sext i1 %i.q to i64
  %i.r = add nuw nsw i64 %i.p, 1
  %i.s = add nsw i64 %i.r, %.neg                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.t = ptrtoaddr ptr %0 to i64
  %i.u = sub i64 %i.d, %i.f
  %diff.check = icmp ugt i64 %i.u, -32
  %i.v = sub i64 %i.d, %i.t
  %diff.check44 = icmp ugt i64 %i.v, -32
  %conflict.rdx = or i1 %diff.check, %diff.check44
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, -8                       ; 3 uses
  %i.w = sub nsw i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = sub i64 %i.p, %index                     ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -28
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !4
  %wide.load45 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -28
  %wide.load46 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !4
  %wide.load47 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !4
  %i.ae = xor <4 x i32> %wide.load46, splat (i32 -1)
  %i.af = xor <4 x i32> %wide.load47, splat (i32 -1)
  %i.ag = and <4 x i32> %wide.load, %i.ae
  %i.ah = and <4 x i32> %wide.load45, %i.af
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -12
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -28
  store <4 x i32> %i.ag, ptr %i.aj, align 4, !tbaa !4
  store <4 x i32> %i.ah, ptr %i.ak, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %bb.a ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.at = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.at, label %scalar.ph, label %.preheader, !llvm.loop !68

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !66
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
end_hunk_0
