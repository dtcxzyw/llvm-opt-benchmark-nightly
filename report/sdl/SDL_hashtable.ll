Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hashtable?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_DestroyHashTable:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not18.i = icmp eq i32 %i.i, 0
  br i1 %.not18.i, label %destroy_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.017.i = phi ptr [ %i.r, %bb.e ], [ %i.f, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.017.i, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not16.i = icmp sgt i32 %i.m, -1
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = and i32 %i.m, 2147483647
  store i32 %i.n, ptr %i.l, align 4
  %i.o = load ptr, ptr %.017.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.b(ptr noundef %i.d, ptr noundef %i.o, ptr noundef %i.q) #10, !inline_history !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.017.i, i64 24 ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.k
  br i1 %i.s, label %.lr.ph.i, label %destroy_all.exit, !llvm.loop !4

destroy_all.exit:                                 ; preds = %bb.e, %bb.b, %bb.c
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not7 = icmp eq ptr %i.t, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %destroy_all.exit
  tail call void @SDL_DestroyRWLock_REAL(ptr noundef nonnull %i.t) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %destroy_all.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.v) #10
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_InsertIntoHashTable(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.SDL_HashItem, align 8       ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.b) #10
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val28 = load ptr, ptr %i.d, align 8
  %i.e = tail call i32 %.val(ptr noundef %.val28, ptr noundef %1) #10, !inline_history !7
  %i.f = mul i32 %i.e, -1640531535                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.h, %i.f                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = zext i32 %i.i to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not30.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not30.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.06.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ %i.ah, %bb.g ]
  %.0.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.af, %bb.g ] ; 3 uses
  %i.s = phi i32 [ %i.q, %.lr.ph.i.i ], [ %i.al, %bb.g ]
  %i.t = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.ak, %bb.g ]
  %i.u = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.aj, %bb.g ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, %i.f
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = tail call zeroext i1 %i.y(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %1) #10, !inline_history !8
  br i1 %i.ab, label %find_first_item.exit, label %._crit_edge37.i.i

._crit_edge37.i.i:                                ; preds = %bb.e
  %.pre.i.i = load i32, ptr %i.t, align 4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge37.i.i, %bb.d
  %i.ac = phi i32 [ %.pre.i.i, %._crit_edge37.i.i ], [ %i.s, %bb.d ]
  %i.ad = and i32 %i.ac, 2147483647
  %i.ae = icmp ule i32 %.0.i, %i.ad
  %.not26.i.i = icmp ult i32 %.0.i, %i.k
  %or.cond.i = select i1 %i.ae, i1 %.not26.i.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.af = add nuw i32 %.0.i, 1
  %i.ag = add i32 %.06.i, 1
  %i.ah = and i32 %i.ag, %i.h                     ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not.i.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i.i, label %.critedge, label %bb.d

find_first_item.exit:                             ; preds = %bb.e
  br i1 %3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %find_first_item.exit
  %i.am = load i32, ptr %i.g, align 8             ; 2 uses
  %i.an = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.d, align 8
  %i.ar = load ptr, ptr %i.u, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.at) #10, !inline_history !9
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi ptr [ %i.an, %bb.h ], [ %.pre.i, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 8
  %i.ay = ptrtoint ptr %i.u to i64
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 24
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %i.bc, 1
  %i.be = and i32 %i.bd, %i.am                    ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 2147483647
  %.not2325.i = icmp eq i32 %i.bj, 0
  br i1 %.not2325.i, label %delete_item.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.bk = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bg, %bb.j ] ; 3 uses
  %i.bl = phi i32 [ %i.bt, %.lr.ph.i ], [ %i.be, %bb.j ]
  %.02126.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.u, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.02126.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.02126.i, i64 20 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = add i32 %i.bn, 2147483647
  %i.bp = and i32 %i.bo, 2147483647
  %i.bq = and i32 %i.bn, -2147483648
  %i.br = or disjoint i32 %i.bp, %i.bq
  store i32 %i.br, ptr %i.bm, align 4
  %i.bs = add i32 %i.bl, 1
  %i.bt = and i32 %i.bs, %i.am                    ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 2147483647
  %.not23.i = icmp eq i32 %i.by, 0
  br i1 %.not23.i, label %delete_item.exit, label %.lr.ph.i

delete_item.exit:                                 ; preds = %.lr.ph.i, %bb.j
  %.021.lcssa.i = phi ptr [ %i.u, %bb.j ], [ %i.bk, %.lr.ph.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.021.lcssa.i, i8 0, i64 24, i1 false)
  br label %.critedge

bb.k:                                             ; preds = %find_first_item.exit
  %i.bz = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %insert_item.exit

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.c, %delete_item.exit
  %5 = ptrtoint ptr %1 to i64                     ; 2 uses
  %6 = ptrtoint ptr %2 to i64                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 8
  %i.cd = load i32, ptr %i.g, align 8             ; 2 uses
  %i.ce = add i32 %i.cd, 1                        ; 4 uses
  %i.cf = icmp ugt i32 %i.ce, 67108863
  br i1 %i.cf, label %maybe_resize.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = mul nuw nsw i64 %i.cg, 217
  %i.ci = lshr i64 %i.ch, 8
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = icmp ugt i32 %i.cc, %i.cj
  br i1 %i.ck, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.cl = shl nuw nsw i32 %i.ce, 1                ; 4 uses
  %i.cm = add nsw i32 %i.cl, -1                   ; 5 uses
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.cn, i64 noundef 24) #9 ; 4 uses
  %.not.i.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i.not.i, label %.maybe_resize.exit_crit_edge, label %bb.n

.maybe_resize.exit_crit_edge:                     ; preds = %bb.m
  %.pre66.a = load i32, ptr %i.ca, align 8
  %i.cp = add i32 %.pre66.a, -1
  br label %maybe_resize.exit

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.cr = load i32, ptr %i.g, align 8
  %i.cs = add i32 %i.cr, 1                        ; 2 uses
  store i32 0, ptr %i.j, align 4
  store i32 %i.cm, ptr %i.g, align 8
  store ptr %i.co, ptr %i.l, align 8
  %.not26.i.i29 = icmp eq i32 %i.cs, 0
  br i1 %.not26.i.i29, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %wide.trip.count.i.i = zext i32 %i.cs to i64
  br label %.lr.ph.i.i30

._crit_edge.i.i:                                  ; preds = %bb.t, %bb.n
  tail call void @SDL_free_REAL(ptr noundef %i.cq) #10
  %.pre = load i32, ptr %i.g, align 8             ; 2 uses
  %.pre67.a = add i32 %.pre, 1
  br label %bb.u

.lr.ph.i.i30:                                     ; preds = %bb.t, %.lr.ph.preheader.i.i
  %i.ct = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ej, %bb.t ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %indvars.iv.i.i ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.cw = load i32, ptr %i.cv, align 4
  %.not23.i.i = icmp sgt i32 %i.cw, -1
  br i1 %.not23.i.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.04356.i.i.i = and i32 %i.cy, %i.cm            ; 3 uses
  %i.cz = zext i32 %.04356.i.i.i to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 20 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %.not57.i.i.i = icmp sgt i32 %i.dc, -1
  br i1 %.not57.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.s, %bb.o
  %i.dd = phi i32 [ %i.ct, %bb.o ], [ %i.ec, %bb.s ] ; 2 uses
  %.043.lcssa.i.i.i = phi i32 [ %.04356.i.i.i, %bb.o ], [ %.043.i.i.i, %bb.s ] ; 2 uses
  %.lcssa55.i.i.i = phi ptr [ %i.da, %bb.o ], [ %i.ef, %bb.s ] ; 2 uses
  %.lcssa.i.i.i = phi ptr [ %i.db, %bb.o ], [ %i.eg, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.lcssa55.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.lcssa55.i.i.i, i64 16
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = and i32 %i.df, %i.cm                    ; 2 uses
  %i.dh = icmp ult i32 %.043.lcssa.i.i.i, %i.dg
  %.0.p.v.i.i.i.i = select i1 %i.dh, i32 %i.cl, i32 0
  %.0.p.i.i.i.i = sub i32 %.043.lcssa.i.i.i, %i.dg
  %.0.i.i.i.i = add i32 %.0.p.v.i.i.i.i, %.0.p.i.i.i.i ; 4 uses
  %i.di = load i32, ptr %.lcssa.i.i.i, align 4
  %i.dj = and i32 %.0.i.i.i.i, 2147483647
  %i.dk = and i32 %i.di, -2147483648
  %i.dl = or disjoint i32 %i.dj, %i.dk
  store i32 %i.dl, ptr %.lcssa.i.i.i, align 4
  %i.dm = icmp ult i32 %i.dd, %.0.i.i.i.i
  br i1 %i.dm, label %bb.p, label %insert_item.exit.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  store i32 %.0.i.i.i.i, ptr %i.j, align 4
  br label %insert_item.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.s
  %i.dn = phi i32 [ %i.ec, %bb.s ], [ %i.ct, %bb.o ]
  %i.do = phi i32 [ %i.eh, %bb.s ], [ %i.dc, %bb.o ]
  %i.dp = phi ptr [ %i.eg, %bb.s ], [ %i.db, %bb.o ] ; 2 uses
  %i.dq = phi ptr [ %i.ef, %bb.s ], [ %i.da, %bb.o ] ; 2 uses
  %.04359.i.i.i = phi i32 [ %.043.i.i.i, %bb.s ], [ %.04356.i.i.i, %bb.o ] ; 3 uses
  %i.dr = and i32 %i.do, 2147483647
  %i.ds = load i32, ptr %i.cx, align 8
  %i.dt = and i32 %i.ds, %i.cm                    ; 2 uses
  %i.du = icmp ult i32 %.04359.i.i.i, %i.dt
  %.0.p.v.i48.i.i.i = select i1 %i.du, i32 %i.cl, i32 0
  %.0.p.i49.i.i.i = sub i32 %.04359.i.i.i, %i.dt
  %.0.i50.i.i.i = add i32 %.0.p.v.i48.i.i.i, %.0.p.i49.i.i.i ; 5 uses
  %i.dv = icmp ult i32 %i.dr, %.0.i50.i.i.i
  br i1 %i.dv, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dw = load i32, ptr %i.dp, align 4
  %i.dx = and i32 %.0.i50.i.i.i, 2147483647
  %i.dy = and i32 %i.dw, -2147483648
  %i.dz = or disjoint i32 %i.dy, %i.dx
  store i32 %i.dz, ptr %i.dp, align 4
  %i.ea = load i32, ptr %i.j, align 4             ; 2 uses
  %i.eb = icmp ult i32 %i.ea, %.0.i50.i.i.i
  br i1 %i.eb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %.0.i50.i.i.i, ptr %i.j, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph.i.i.i
  %i.ec = phi i32 [ %.0.i50.i.i.i, %bb.r ], [ %i.ea, %bb.q ], [ %i.dn, %.lr.ph.i.i.i ] ; 2 uses
  %i.ed = add i32 %.04359.i.i.i, 1
  %.043.i.i.i = and i32 %i.ed, %i.cm              ; 3 uses
  %i.ee = zext i32 %.043.i.i.i to i64
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.eh, -1
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

insert_item.exit.i.i:                             ; preds = %bb.p, %._crit_edge.i.i.i
  %i.ei = phi i32 [ %i.dd, %._crit_edge.i.i.i ], [ %.0.i.i.i.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.t

bb.t:                                             ; preds = %insert_item.exit.i.i, %.lr.ph.i.i30
  %i.ej = phi i32 [ %i.ei, %insert_item.exit.i.i ], [ %i.ct, %.lr.ph.i.i30 ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i30, !llvm.loop !10

maybe_resize.exit:                                ; preds = %.maybe_resize.exit_crit_edge, %.critedge
  %i.ek = phi i32 [ %i.cp, %.maybe_resize.exit_crit_edge ], [ %i.cb, %.critedge ]
  store i32 %i.ek, ptr %i.ca, align 8
  br label %insert_item.exit

bb.u:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.pre-phi = phi i32 [ %i.ce, %bb.l ], [ %.pre67.a, %._crit_edge.i.i ] ; 2 uses
  %i.el = phi i32 [ %i.cd, %bb.l ], [ %.pre, %._crit_edge.i.i ] ; 4 uses
  %i.em = load ptr, ptr %i.l, align 8             ; 2 uses
  %.04356.i = and i32 %i.el, %i.f                 ; 4 uses
  %i.en = zext i32 %.04356.i to i64
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.en ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 4            ; 2 uses
  %.not57.i = icmp sgt i32 %i.eq, -1
  br i1 %.not57.i, label %._crit_edge.i, label %.lr.ph.i31

._crit_edge.i.loopexit:                           ; preds = %bb.y
  %.pre68 = and i32 %.sroa.7.1, %i.el
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.u
  %.pre-phi69 = phi i32 [ %.pre68, %._crit_edge.i.loopexit ], [ %.04356.i, %bb.u ] ; 2 uses
  %.sroa.10.2 = phi i32 [ %.sroa.10.1, %._crit_edge.i.loopexit ], [ -2147483648, %bb.u ]
  %.sroa.7.2 = phi i32 [ %.sroa.7.1, %._crit_edge.i.loopexit ], [ %i.f, %bb.u ]
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %._crit_edge.i.loopexit ], [ %6, %bb.u ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %._crit_edge.i.loopexit ], [ %5, %bb.u ]
  %.043.lcssa.i = phi i32 [ %.043.i, %._crit_edge.i.loopexit ], [ %.04356.i, %bb.u ] ; 2 uses
  %.lcssa55.i = phi ptr [ %i.fm, %._crit_edge.i.loopexit ], [ %i.eo, %bb.u ] ; 4 uses
  %.lcssa.i = phi ptr [ %i.fn, %._crit_edge.i.loopexit ], [ %i.ep, %bb.u ] ; 2 uses
  store i64 %.sroa.0.2, ptr %.lcssa55.i, align 8
  %.sroa.6.0..lcssa55.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa55.i, i64 8
  store i64 %.sroa.6.2, ptr %.sroa.6.0..lcssa55.i.sroa_idx, align 8
  %.sroa.7.0..lcssa55.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa55.i, i64 16
  store i32 %.sroa.7.2, ptr %.sroa.7.0..lcssa55.i.sroa_idx, align 8
  %.sroa.10.0..lcssa55.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa55.i, i64 20
  store i32 %.sroa.10.2, ptr %.sroa.10.0..lcssa55.i.sroa_idx, align 4
  %i.er = icmp ult i32 %.043.lcssa.i, %.pre-phi69
  %.0.p.v.i.i = select i1 %i.er, i32 %.pre-phi, i32 0
  %.0.p.i.i = sub i32 %.043.lcssa.i, %.pre-phi69
  %.0.i.i = add i32 %.0.p.v.i.i, %.0.p.i.i        ; 3 uses
  %i.es = load i32, ptr %.lcssa.i, align 4
  %i.et = and i32 %.0.i.i, 2147483647
  %i.eu = and i32 %i.es, -2147483648
  %i.ev = or disjoint i32 %i.eu, %i.et
  store i32 %i.ev, ptr %.lcssa.i, align 4
  %i.ew = load i32, ptr %i.j, align 4
  %i.ex = icmp ult i32 %i.ew, %.0.i.i
  br i1 %i.ex, label %bb.v, label %insert_item.exit

bb.v:                                             ; preds = %._crit_edge.i
  store i32 %.0.i.i, ptr %i.j, align 4
  br label %insert_item.exit

.lr.ph.i31:                                       ; preds = %bb.u, %bb.y
  %.sroa.10.0 = phi i32 [ %.sroa.10.1, %bb.y ], [ -2147483648, %bb.u ] ; 2 uses
  %.sroa.7.0 = phi i32 [ %.sroa.7.1, %bb.y ], [ %i.f, %bb.u ] ; 3 uses
  %.sroa.6.0 = phi i64 [ %.sroa.6.1, %bb.y ], [ %6, %bb.u ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.y ], [ %5, %bb.u ] ; 2 uses
  %.sroa.646.0.copyload = phi i32 [ %i.fo, %bb.y ], [ %i.eq, %bb.u ] ; 3 uses
  %i.ey = phi ptr [ %i.fn, %bb.y ], [ %i.ep, %bb.u ] ; 2 uses
  %i.ez = phi ptr [ %i.fm, %bb.y ], [ %i.eo, %bb.u ] ; 5 uses
  %.04359.i = phi i32 [ %.043.i, %bb.y ], [ %.04356.i, %bb.u ] ; 3 uses
  %i.fa = and i32 %.sroa.646.0.copyload, 2147483647
  %i.fb = and i32 %.sroa.7.0, %i.el               ; 2 uses
  %i.fc = icmp ult i32 %.04359.i, %i.fb
  %.0.p.v.i48.i = select i1 %i.fc, i32 %.pre-phi, i32 0
  %.0.p.i49.i = sub i32 %.04359.i, %i.fb
  %.0.i50.i = add i32 %.0.p.v.i48.i, %.0.p.i49.i  ; 4 uses
  %i.fd = icmp ult i32 %i.fa, %.0.i50.i
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i31
  %.sroa.044.0.copyload = load i64, ptr %i.ez, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  store i64 %.sroa.0.0, ptr %i.ez, align 8
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i32 %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 8
  store i32 %.sroa.10.0, ptr %.sroa.646.0..sroa_idx, align 4
  %i.fe = load i32, ptr %i.ey, align 4
  %i.ff = and i32 %.0.i50.i, 2147483647
  %i.fg = and i32 %i.fe, -2147483648
  %i.fh = or disjoint i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %i.ey, align 4
  %i.fi = load i32, ptr %i.j, align 4
  %i.fj = icmp ult i32 %i.fi, %.0.i50.i
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %.0.i50.i, ptr %i.j, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph.i31
  %.sroa.10.1 = phi i32 [ %.sroa.646.0.copyload, %bb.x ], [ %.sroa.646.0.copyload, %bb.w ], [ %.sroa.10.0, %.lr.ph.i31 ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.sroa.5.0.copyload, %bb.x ], [ %.sroa.5.0.copyload, %bb.w ], [ %.sroa.7.0, %.lr.ph.i31 ] ; 3 uses
  %.sroa.6.1 = phi i64 [ %.sroa.4.0.copyload, %bb.x ], [ %.sroa.4.0.copyload, %bb.w ], [ %.sroa.6.0, %.lr.ph.i31 ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.044.0.copyload, %bb.x ], [ %.sroa.044.0.copyload, %bb.w ], [ %.sroa.0.0, %.lr.ph.i31 ] ; 2 uses
  %i.fk = add i32 %.04359.i, 1
  %.043.i = and i32 %i.fk, %i.el                  ; 3 uses
  %i.fl = zext i32 %.043.i to i64
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.fl ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %.not.i32 = icmp sgt i32 %i.fo, -1
  br i1 %.not.i32, label %._crit_edge.i.loopexit, label %.lr.ph.i31

insert_item.exit:                                 ; preds = %bb.v, %._crit_edge.i, %maybe_resize.exit, %bb.k
  %.1 = phi i1 [ false, %bb.k ], [ false, %maybe_resize.exit ], [ true, %._crit_edge.i ], [ true, %bb.v ]
  %i.fp = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.fp) #10
  br label %bb.z

bb.z:                                             ; preds = %insert_item.exit, %bb.b
  %.024 = phi i1 [ %.1, %insert_item.exit ], [ %i.a, %bb.b ]
  ret i1 %.024
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

declare void @SDL_LockRWLockForWriting_REAL(ptr noundef) local_unnamed_addr #3

declare void @SDL_UnlockRWLock_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_FindInHashTable(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  tail call void @SDL_LockRWLockForReading_REAL(ptr noundef %i.b) #10
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val22 = load ptr, ptr %i.d, align 8
  %i.e = tail call i32 %.val(ptr noundef %.val22, ptr noundef %1) #10, !inline_history !7
  %i.f = mul i32 %i.e, -1640531535                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.h, %i.f                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = zext i32 %i.i to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not30.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not30.i.i, label %find_first_item.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.06.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ %i.ah, %bb.i ]
  %.0.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.af, %bb.i ] ; 3 uses
  %i.s = phi i32 [ %i.q, %.lr.ph.i.i ], [ %i.al, %bb.i ]
  %i.t = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.ak, %bb.i ]
  %i.u = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.aj, %bb.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, %i.f
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = tail call zeroext i1 %i.y(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %1) #10, !inline_history !8
  br i1 %i.ab, label %find_first_item.exit, label %._crit_edge37.i.i

._crit_edge37.i.i:                                ; preds = %bb.g
  %.pre.i.i = load i32, ptr %i.t, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge37.i.i, %bb.f
  %i.ac = phi i32 [ %.pre.i.i, %._crit_edge37.i.i ], [ %i.s, %bb.f ]
  %i.ad = and i32 %i.ac, 2147483647
  %i.ae = icmp ule i32 %.0.i, %i.ad
  %.not26.i.i = icmp ult i32 %.0.i, %i.k
  %or.cond.i = select i1 %i.ae, i1 %.not26.i.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %find_first_item.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.af = add nuw i32 %.0.i, 1
  %i.ag = add i32 %.06.i, 1
  %i.ah = and i32 %i.ag, %i.h                     ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not.i.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i.i, label %find_first_item.exit.thread, label %bb.f

find_first_item.exit:                             ; preds = %bb.g
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %find_first_item.exit.thread, label %bb.j

bb.j:                                             ; preds = %find_first_item.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %2, align 8
  br label %find_first_item.exit.thread

find_first_item.exit.thread:                      ; preds = %bb.h, %bb.i, %bb.e, %bb.j, %find_first_item.exit
  %.not2028 = phi i1 [ true, %find_first_item.exit ], [ true, %bb.j ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.h ]
  %i.ao = load ptr, ptr %0, align 8
  tail call void @SDL_UnlockRWLock_REAL(ptr noundef %i.ao) #10
  br label %bb.k

bb.k:                                             ; preds = %find_first_item.exit.thread, %bb.d
  %.015 = phi i1 [ %.not2028, %find_first_item.exit.thread ], [ %i.a, %bb.d ]
  ret i1 %.015
}

declare void @SDL_LockRWLockForReading_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RemoveFromHashTable(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  tail call void @SDL_LockRWLockForWriting_REAL(ptr noundef %i.b) #10
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val16 = load ptr, ptr %i.d, align 8
  %i.e = tail call i32 %.val(ptr noundef %.val16, ptr noundef %1) #10, !inline_history !7
  %i.f = mul i32 %i.e, -1640531535                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.h, %i.f                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = zext i32 %i.i to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not30.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not30.i.i, label %find_first_item.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.06.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ %i.ah, %bb.g ]
  %.0.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.af, %bb.g ] ; 3 uses
  %i.s = phi i32 [ %i.q, %.lr.ph.i.i ], [ %i.al, %bb.g ]
  %i.t = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.ak, %bb.g ]
  %i.u = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.aj, %bb.g ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, %i.f
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = tail call zeroext i1 %i.y(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %1) #10, !inline_history !8
  br i1 %i.ab, label %find_first_item.exit, label %._crit_edge37.i.i

._crit_edge37.i.i:                                ; preds = %bb.e
  %.pre.i.i = load i32, ptr %i.t, align 4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge37.i.i, %bb.d
  %i.ac = phi i32 [ %.pre.i.i, %._crit_edge37.i.i ], [ %i.s, %bb.d ]
  %i.ad = and i32 %i.ac, 2147483647
  %i.ae = icmp ule i32 %.0.i, %i.ad
  %.not26.i.i = icmp ult i32 %.0.i, %i.k
  %or.cond.i = select i1 %i.ae, i1 %.not26.i.i, i1 false
end_hunk_0
