inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bc
  %i.be = icmp slt i32 %i.bb, 1
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %doargs.exit
  tail call fastcc void @usage(ptr noundef nonnull @.str)
  unreachable

bb.t:                                             ; preds = %doargs.exit
  %i.bf = tail call ptr @luaL_newstate() #12      ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @fatal(ptr noundef nonnull @.str.1)
  unreachable

bb.v:                                             ; preds = %bb.t
  store i32 %i.bb, ptr %2, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !18
  %i.bi = call i32 @lua_cpcall(ptr noundef nonnull %i.bf, ptr noundef nonnull @pmain, ptr noundef nonnull %2) #12
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = call ptr @lua_tolstring(ptr noundef nonnull %i.bf, i32 noundef -1, ptr noundef null) #12
  call fastcc void @fatal(ptr noundef %i.bj)
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @lua_close(ptr noundef nonnull %i.bf) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = icmp eq i8 %i.a, 45
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.d = load ptr, ptr @progname, align 8, !tbaa !8
  %.str.14..str.15 = select i1 %i.b, ptr @.str.14, ptr @.str.15
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull %.str.14..str.15, ptr noundef %i.d, ptr noundef nonnull %0) #14 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.g = load ptr, ptr @progname, align 8, !tbaa !8
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.16, ptr noundef %i.g, ptr noundef nonnull @Output) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

declare ptr @luaL_newstate() local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @fatal(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.b = load ptr, ptr @progname, align 8, !tbaa !8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.15, ptr noundef %i.b, ptr noundef %0) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

declare i32 @lua_cpcall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @pmain(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef 1) #12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = tail call i32 @lua_checkstack(ptr noundef %0, i32 noundef %i.b) #12
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.f, label %sub_0.preheader, label %._crit_edge.thread

sub_0.preheader:                                  ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %sub_0

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @fatal(ptr noundef nonnull @.str.17)
  unreachable

bb.c:                                             ; preds = %.tail
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %sub_0, !llvm.loop !21

sub_0:                                            ; preds = %sub_0.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %sub_0.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 4 uses
  %i.i = load i8, ptr %i.h, align 1
  %.not32 = icmp eq i8 %i.i, 45
  br i1 %.not32, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  %i.m = select i1 %i.l, ptr null, ptr %i.h
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %spec.select = phi ptr [ %i.h, %sub_0 ], [ %i.m, %sub_1 ]
  %i.n = tail call i32 @luaL_loadfile(ptr noundef %0, ptr noundef %spec.select) #12
  %.not30 = icmp eq i32 %i.n, 0
  br i1 %.not30, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.tail
  %i.o = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #12
  tail call fastcc void @fatal(ptr noundef %i.o)
  unreachable

._crit_edge:                                      ; preds = %bb.c
  %i.p = icmp eq i32 %i.b, 1
  br i1 %i.p, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11
  br label %combine.exit

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.w = tail call ptr @luaF_newproto(ptr noundef %0) #12 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 9, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !22  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp slt i64 %i.af, 17
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1) #12
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  %i.ah = phi ptr [ %i.ac, %._crit_edge.thread ], [ %.pre.i, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !22
  %i.aj = tail call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, i64 noundef 7) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 115
  store i8 1, ptr %i.al, align 1, !tbaa !41
  %i.am = shl nsw i32 %i.b, 1
  %i.an = or disjoint i32 %i.am, 1                ; 3 uses
  %i.ao = icmp sgt i32 %i.b, -2
  br i1 %i.ao, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.ap = tail call ptr @luaM_toobig(ptr noundef nonnull %0) #12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store i32 %i.an, ptr %i.ar, align 8, !tbaa !43
  %i.as = tail call ptr @luaM_toobig(ptr noundef nonnull %0) #12
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.as, ptr %i.at, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i32 %i.b, ptr %i.au, align 8, !tbaa !45
  %.pre5557.i = load ptr, ptr %i.aq, align 8, !tbaa !42
  br label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.av = sext i32 %i.an to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = tail call ptr @luaM_realloc_(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i64 noundef %i.aw) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store i32 %i.an, ptr %i.az, align 8, !tbaa !43
  %i.ba = sext i32 %i.b to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = tail call ptr @luaM_realloc_(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i64 noundef %i.bb) #12 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i32 %i.b, ptr %i.be, align 8, !tbaa !45
  %.pre55.i = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 6 uses
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.bg = xor i32 %i.b, -1
  %i.bh = sext i32 %i.bg to i64
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %invariant.gep.i = getelementptr [16 x i8], ptr %i.bf, i64 %i.bh ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bi = icmp eq i32 %i.b, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv50.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next51.i.1, %bb.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.i ]
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.bj = load ptr, ptr %gep.i, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !46
  %i.bn = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bo = shl i32 %i.bn, 14
  %i.bp = or disjoint i32 %i.bo, 36
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.pre55.i, i64 %indvars.iv50.i ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 8405020, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.bs = load ptr, ptr %gep.i.1, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !46
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.bx = shl i32 %i.bw, 14
  %i.by = or disjoint i32 %i.bx, 36
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre55.i, i64 %indvars.iv50.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !4
  %indvars.iv.next51.i.1 = add nuw nsw i64 %indvars.iv50.i, 4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 8405020, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.i, !llvm.loop !48

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv50.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next51.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod38 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %gep.i.epil = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.cc = load ptr, ptr %gep.i.epil, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.epil.init
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !46
  %i.cg = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.ch = shl i32 %i.cg, 14
  %i.ci = or disjoint i32 %i.ch, 36
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.pre55.i, i64 %indvars.iv50.i.epil.init ; 2 uses
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !4
  %indvars.iv.next51.i.epil = add nuw nsw i64 %indvars.iv50.i.epil.init, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 8405020, ptr %i.ck, align 4, !tbaa !4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.loopexit.i.unr-lcssa, %bb.h, %.thread.i
  %.pre5558.i = phi ptr [ %.pre55.i, %bb.h ], [ %.pre5557.i, %.thread.i ], [ %.pre55.i, %._crit_edge.loopexit.i.unr-lcssa ], [ %.pre55.i, %.epil.preheader ]
  %.046.lcssa.i = phi i64 [ 0, %bb.h ], [ 0, %.thread.i ], [ %indvars.iv.next51.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next51.i.epil, %.epil.preheader ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.pre5558.i, i64 %.046.lcssa.i
  store i32 8388638, ptr %i.cl, align 4, !tbaa !4
  br label %combine.exit

combine.exit:                                     ; preds = %bb.e, %._crit_edge.i
  %.0.i = phi ptr [ %i.v, %bb.e ], [ %i.w, %._crit_edge.i ] ; 2 uses
  %i.cm = load i32, ptr @listing, align 4, !tbaa !4 ; 2 uses
  %.not27 = icmp eq i32 %i.cm, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %combine.exit
  %i.cn = icmp sgt i32 %i.cm, 1
  %i.co = zext i1 %i.cn to i32
  tail call void @luaU_print(ptr noundef %.0.i, i32 noundef %i.co) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %combine.exit
  %.b = load i1, ptr @dumping, align 4
  br i1 %.b, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr @output, align 8, !tbaa !8 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !19
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cs = tail call noalias ptr @fopen(ptr noundef nonnull %i.cp, ptr noundef nonnull @.str.18)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %bb.n ] ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @cannot(ptr noundef nonnull @.str.19)
  unreachable

bb.q:                                             ; preds = %bb.o
  %.b26 = load i1, ptr @stripping, align 4
  %i.cv = zext i1 %.b26 to i32
  %i.cw = tail call i32 @luaU_dump(ptr noundef nonnull %0, ptr noundef %.0.i, ptr noundef nonnull @writer, ptr noundef nonnull %i.ct, i32 noundef %i.cv) #12 ; 0 uses
  %i.cx = tail call i32 @ferror(ptr noundef nonnull %i.ct) #12
  %.not28 = icmp eq i32 %i.cx, 0
  br i1 %.not28, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @cannot(ptr noundef nonnull @.str.20)
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cy = tail call i32 @fclose(ptr noundef nonnull %i.ct)
  %.not29 = icmp eq i32 %i.cy, 0
  br i1 %.not29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @cannot(ptr noundef nonnull @.str.21)
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.k
  ret i32 0
}

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @lua_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @lua_checkstack(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @luaL_loadfile(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @luaU_print(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind uwtable
define internal fastcc void @cannot(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.b = load ptr, ptr @progname, align 8, !tbaa !8
  %i.c = load ptr, ptr @output, align 8, !tbaa !8
  %i.d = tail call ptr @__errno_location() #16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #12
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.23, ptr noundef %i.b, ptr noundef %0, ptr noundef %i.c, ptr noundef %i.f) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

declare hidden i32 @luaU_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @writer(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #7 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr noundef %1, i64 noundef %2, i64 noundef 1, ptr noundef %3)
  %i.b = icmp ne i64 %i.a, 1
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare hidden ptr @luaF_newproto(ptr noundef) local_unnamed_addr #3

declare hidden void @luaD_growstack(ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden ptr @luaS_newlstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden ptr @luaM_realloc_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare hidden ptr @luaM_toobig(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !5, i64 0}
!15 = !{!"Smain", !5, i64 0, !16, i64 8}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !10, i64 0}
!18 = !{!15, !16, i64 8}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!21 = distinct !{!21, !13}
!22 = !{!23, !25, i64 16}
!23 = !{!"lua_State", !24, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !25, i64 16, !25, i64 24, !26, i64 32, !27, i64 40, !28, i64 48, !25, i64 56, !25, i64 64, !27, i64 72, !27, i64 80, !5, i64 88, !5, i64 92, !29, i64 96, !29, i64 98, !6, i64 100, !6, i64 101, !5, i64 104, !5, i64 108, !10, i64 112, !30, i64 120, !30, i64 136, !24, i64 152, !24, i64 160, !31, i64 168, !32, i64 176}
!24 = !{!"p1 _ZTS8GCObject", !10, i64 0}
!25 = !{!"p1 _ZTS10lua_TValue", !10, i64 0}
!26 = !{!"p1 _ZTS12global_State", !10, i64 0}
!27 = !{!"p1 _ZTS8CallInfo", !10, i64 0}
!28 = !{!"p1 int", !10, i64 0}
end_hunk_0
