Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/solver?download=true
inline.NumInlined: 451
inline.NumDeleted: 108
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@solver_clause_create:bb.a
  br i1 %niter.ncmp.1, label %clause_clac_lbd.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1

clause_clac_lbd.exit.loopexit.unr-lcssa:          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clause_clac_lbd.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clause_clac_lbd.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i32 [ %i.bm, %.lr.ph.i ], [ %i.cq, %clause_clac_lbd.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ]
  %.019.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i32 %.val35 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv.i.epil.init
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !43
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !43
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !43
  %.not.i.epil = icmp eq i32 %i.cz, %.epil.init
  br i1 %.not.i.epil, label %clause_clac_lbd.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  store i32 %.epil.init, ptr %i.cy, align 4, !tbaa !43
  %i.da = add i32 %.019.i.epil.init, 1
  br label %clause_clac_lbd.exit.loopexit

clause_clac_lbd.exit.loopexit:                    ; preds = %.epil.preheader, %bb.m, %clause_clac_lbd.exit.loopexit.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ], [ %i.da, %bb.m ], [ %.019.i.epil.init, %.epil.preheader ]
  %i.db = shl i32 %.1.i.lcssa, 4
  br label %clause_clac_lbd.exit

clause_clac_lbd.exit:                             ; preds = %clause_clac_lbd.exit.loopexit, %vec_uint_push_back.exit
  %.0.lcssa.i = phi i32 [ 0, %vec_uint_push_back.exit ], [ %i.db, %clause_clac_lbd.exit.loopexit ]
  %i.dc = load i32, ptr %i.ab, align 4
  %i.dd = and i32 %i.dc, 15
  %i.de = or disjoint i32 %i.dd, %.0.lcssa.i
  store i32 %i.de, ptr %i.ab, align 4
  %i.df = load i32, ptr %i.ai, align 4, !tbaa !39
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.dg ; 3 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !47
  %.val34 = load i32, ptr %i.b, align 4, !tbaa !18
  %i.di = zext i32 %.val34 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !48
  %i.dl = add nsw i64 %i.dk, %i.di
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !48
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !49
  %i.do = load i32, ptr %i.dh, align 4, !tbaa !47
  %i.dp = add i32 %i.do, %i.dn                    ; 2 uses
  store i32 %i.dp, ptr %i.dh, align 4, !tbaa !47
  %.not.i44 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i44, label %clause_act_bump.exit, label %bb.n

bb.n:                                             ; preds = %clause_clac_lbd.exit
  %i.dq = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %.val12.i.i = load i32, ptr %i.dr, align 4, !tbaa !18
  %.not.i.i45 = icmp eq i32 %.val12.i.i, 0
  br i1 %.not.i.i45, label %clause_act_rescale.exit.i, label %clause_fetch.exit.i.i

clause_fetch.exit.i.i:                            ; preds = %bb.n, %clause_fetch.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %clause_fetch.exit.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.ds = phi ptr [ %i.eh, %clause_fetch.exit.i.i ], [ %i.dq, %bb.n ]
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %.val11.i.i = load ptr, ptr %i.dt, align 8, !tbaa !40
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i, i64 %indvars.iv.i.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !43 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.d, align 8, !tbaa !32
  %.not.i.i.i.i = icmp ne i32 %i.dv, -1
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.dy = zext i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !39
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !47
  %i.eg = lshr i32 %i.ef, 10
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.eh = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %.val.i.i = load i32, ptr %i.ei, align 4, !tbaa !18
  %i.ej = zext i32 %.val.i.i to i64
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ej
  br i1 %i.ek, label %clause_fetch.exit.i.i, label %clause_act_rescale.exit.i, !llvm.loop !2

clause_act_rescale.exit.i:                        ; preds = %clause_fetch.exit.i.i, %bb.n
  %i.el = load i32, ptr %i.dm, align 8, !tbaa !49
  %i.em = lshr i32 %i.el, 10
  %i.en = tail call range(i32 2048, 4194304) i32 @llvm.umax.i32(i32 range(i32 0, 4194304) %i.em, i32 2048)
  store i32 %i.en, ptr %i.dm, align 8, !tbaa !49
  br label %clause_act_bump.exit

bb.o:                                             ; preds = %clause_fetch.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !50 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !18 ; 6 uses
  %i.es = load i32, ptr %i.ep, align 8, !tbaa !42
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %bb.p, label %vec_uint_push_back.exit50

bb.p:                                             ; preds = %bb.o
  %i.eu = icmp ult i32 %i.er, 16
  br i1 %i.eu, label %vec_uint_reserve.exit.i49, label %bb.q

vec_uint_reserve.exit.i49:                        ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !40
  %i.ex = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.ew, i64 noundef 64) #18
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i47

bb.q:                                             ; preds = %bb.p
  %.not.i9.i46 = icmp sgt i32 %i.er, 0
  br i1 %.not.i9.i46, label %bb.r, label %vec_uint_push_back.exit50

bb.r:                                             ; preds = %bb.q
  %i.ey = shl nuw i32 %i.er, 1                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !40
  %i.fb = zext i32 %i.ey to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2
  %i.fd = tail call ptr @realloc(ptr noundef %i.fa, i64 noundef %i.fc) #18
  store ptr %i.fd, ptr %i.ez, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i47

vec_uint_reserve.exit10.sink.split.i47:           ; preds = %bb.r, %vec_uint_reserve.exit.i49
  %.sink.i48 = phi i32 [ %i.ey, %bb.r ], [ 16, %vec_uint_reserve.exit.i49 ]
  store i32 %.sink.i48, ptr %i.ep, align 8, !tbaa !42
  %.pre51 = load i32, ptr %i.eq, align 4, !tbaa !18
  br label %vec_uint_push_back.exit50

vec_uint_push_back.exit50:                        ; preds = %bb.o, %bb.q, %vec_uint_reserve.exit10.sink.split.i47
  %i.fe = phi i32 [ %i.er, %bb.o ], [ %i.er, %bb.q ], [ %.pre51, %vec_uint_reserve.exit10.sink.split.i47 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !40
  %i.fh = zext i32 %i.fe to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fh
  store i32 %i.w, ptr %i.fi, align 4, !tbaa !43
  %i.fj = load i32, ptr %i.eq, align 4, !tbaa !18
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.eq, align 4, !tbaa !18
  %.val = load i32, ptr %i.b, align 4, !tbaa !18
  %i.fl = zext i32 %.val to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !89
  %i.fo = add nsw i64 %i.fn, %i.fl
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !89
  br label %clause_act_bump.exit

clause_act_bump.exit:                             ; preds = %clause_act_rescale.exit.i, %clause_clac_lbd.exit, %vec_uint_push_back.exit50
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @solver_cancel_until(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %.val30 = load ptr, ptr %i.a, align 8, !tbaa !51 ; 3 uses
  %i.b = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.b, align 4, !tbaa !18
  %.not = icmp ugt i32 %.val30.val, %1
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !18  ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr i8, ptr %.val30, i64 8
  %.val2839 = load ptr, ptr %i.g, align 8, !tbaa !40 ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val2839, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = icmp ugt i32 %.val, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.in = phi i32 [ %.val, %.lr.ph ], [ %2, %bb.l ]
  %2 = add i32 %.in, -1                           ; 3 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val27 = load ptr, ptr %i.o, align 8, !tbaa !40
  %3 = zext i32 %2 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %3
  %i.q = load i32, ptr %i.p, align 4, !tbaa !43
  %i.r = lshr i32 %i.q, 1                         ; 5 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val31 = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.u = zext nneg i32 %i.r to i64                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val31, i64 %i.u
  store i8 3, ptr %i.v, align 1, !tbaa !47
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val29 = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %i.u
  store i32 -1, ptr %i.y, align 4, !tbaa !43
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !58   ; 5 uses
  %.val32 = load ptr, ptr %i.z, align 8, !tbaa !61 ; 6 uses
  %i.aa = getelementptr i8, ptr %.val32, i64 4    ; 2 uses
  %.val.i = load i32, ptr %i.aa, align 4, !tbaa !63 ; 3 uses
  %i.ab = icmp ult i32 %i.r, %.val.i
  br i1 %i.ab, label %heap_in_heap.exit, label %bb.d

heap_in_heap.exit:                                ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %.val32, i64 8
  %.val3.i = load ptr, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %i.u
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !43
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.critedge.i, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ag = add nuw i32 %i.r, 1                     ; 4 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !63
  %i.ah = load i32, ptr %.val32, align 8, !tbaa !92
  %.not.i.not.i = icmp ugt i32 %i.ah, %i.r
  br i1 %.not.i.not.i, label %vec_int_resize.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.val32, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = zext i32 %i.ag to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call ptr @realloc(ptr noundef %i.aj, i64 noundef %i.al) #18
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !64
  store i32 %i.ag, ptr %.val32, align 8, !tbaa !92
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !61 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 4
  %.val2130.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !63
  br label %vec_int_resize.exit.i

vec_int_resize.exit.i:                            ; preds = %bb.e, %bb.d
  %.val2130.i = phi i32 [ %i.ag, %bb.d ], [ %.val2130.pre.i, %bb.e ]
  %i.an = phi ptr [ %.val32, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = icmp ult i32 %.val.i, %.val2130.i
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val25.i = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 3 uses
  br i1 %i.ap, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %vec_int_resize.exit.i
  %i.ar = zext nneg i32 %.val.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val25.i, i64 %indvars.iv.i
  store i32 -1, ptr %i.as, align 4, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val21.i = load i32, ptr %i.ao, align 4, !tbaa !63
  %i.at = zext i32 %.val21.i to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %bb.f, label %.critedge.i, !llvm.loop !90

.critedge.i:                                      ; preds = %bb.f, %vec_int_resize.exit.i, %heap_in_heap.exit
  %.val26.i = phi ptr [ %.val3.i, %heap_in_heap.exit ], [ %.val25.i, %vec_int_resize.exit.i ], [ %.val25.i, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65 ; 8 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 4 uses
  %.val.i33 = load i32, ptr %i.ax, align 4, !tbaa !18 ; 7 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val26.i, i64 %i.u
  store i32 %.val.i33, ptr %i.ay, align 4, !tbaa !43
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.ba = icmp eq i32 %.val.i33, %i.az
  br i1 %i.ba, label %bb.g, label %vec_uint_push_back.exit.i

bb.g:                                             ; preds = %.critedge.i
  %i.bb = icmp ult i32 %.val.i33, 16
  br i1 %i.bb, label %vec_uint_reserve.exit.i.i, label %bb.h

vec_uint_reserve.exit.i.i:                        ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bd, i64 noundef 64) #18
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %.not.i9.i.i = icmp sgt i32 %.val.i33, 0
  br i1 %.not.i9.i.i, label %bb.i, label %vec_uint_push_back.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bf = shl nuw i32 %.val.i33, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = zext i32 %i.bf to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call ptr @realloc(ptr noundef %i.bh, i64 noundef %i.bj) #18
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.i, %vec_uint_reserve.exit.i.i
  %.sink.i.i = phi i32 [ %i.bf, %bb.i ], [ 16, %vec_uint_reserve.exit.i.i ]
  store i32 %.sink.i.i, ptr %i.aw, align 8, !tbaa !42
  %.pre35.i = load i32, ptr %i.ax, align 4, !tbaa !18
  %.pre36.i = load ptr, ptr %i.z, align 8, !tbaa !61
  %.phi.trans.insert37.i = getelementptr i8, ptr %.pre36.i, i64 8
  %.val24.pre.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !64
  %.pre39.i = load ptr, ptr %i.av, align 8, !tbaa !65
  br label %vec_uint_push_back.exit.i

vec_uint_push_back.exit.i:                        ; preds = %vec_uint_reserve.exit10.sink.split.i.i, %bb.h, %.critedge.i
  %i.bl = phi ptr [ %i.aw, %.critedge.i ], [ %i.aw, %bb.h ], [ %.pre39.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %.val24.i = phi ptr [ %.val26.i, %.critedge.i ], [ %.val26.i, %bb.h ], [ %.val24.pre.i, %vec_uint_reserve.exit10.sink.split.i.i ] ; 3 uses
  %i.bm = phi i32 [ %.val.i33, %.critedge.i ], [ %.val.i33, %bb.h ], [ %.pre35.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  store i32 %i.r, ptr %i.bq, align 4, !tbaa !43
  %i.br = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.ax, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %i.u
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !43 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 8
  %.val28.i.i = load ptr, ptr %i.bv, align 8, !tbaa !40 ; 4 uses
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val28.i.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !43 ; 4 uses
  %.not40.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not40.i.i, label %..split24_crit_edge.i.i, label %.lr.ph.i.i

..split24_crit_edge.i.i:                          ; preds = %vec_uint_push_back.exit.i
  %.pre45.i.i = zext i32 %i.by to i64
  br label %.split24.i.i

.lr.ph.i.i:                                       ; preds = %vec_uint_push_back.exit.i
  %i.bz = getelementptr i8, ptr %i.z, i64 16
  %.val35.i.i = load ptr, ptr %i.bz, align 8, !tbaa !66
  %i.ca = getelementptr i8, ptr %.val35.i.i, i64 8
  %.val35.val.i.i = load ptr, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %i.cb = zext i32 %i.by to i64                   ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val35.val.i.i, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !70
  br label %bb.j

.split24.i.i:                                     ; preds = %bb.k, %..split24_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre45.i.i, %..split24_crit_edge.i.i ], [ %i.cb, %bb.k ]
  store i32 %i.by, ptr %.val28.i.i, align 4, !tbaa !43
  br label %heap_insert.exit

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.02341.i.i = phi i32 [ %i.bu, %.lr.ph.i.i ], [ %.042.i.i, %bb.k ] ; 4 uses
  %.042.in.i.i = add i32 %.02341.i.i, -1
  %.042.i.i = lshr i32 %.042.in.i.i, 1            ; 3 uses
  %i.ce = zext nneg i32 %.042.i.i to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val28.i.i, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !43 ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val35.val.i.i, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !70
  %.not36.i.i = icmp ugt i64 %i.cd, %i.cj
  %i.ck = zext i32 %.02341.i.i to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val28.i.i, i64 %i.ck ; 2 uses
  br i1 %.not36.i.i, label %bb.k, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !43
  br label %heap_insert.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.cg, ptr %i.cl, align 4, !tbaa !43
  %i.cm = load i32, ptr %i.cf, align 4, !tbaa !43
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %i.cn
  store i32 %.02341.i.i, ptr %i.co, align 4, !tbaa !43
  %.not.i28.i = icmp eq i32 %.042.i.i, 0
  br i1 %.not.i28.i, label %.split24.i.i, label %bb.j, !llvm.loop !3

heap_insert.exit:                                 ; preds = %.split24.i.i, %.split.i.i
  %.pre-phi.i.sink.i = phi i64 [ %.pre-phi.i.i, %.split24.i.i ], [ %i.cb, %.split.i.i ]
  %.sink.i = phi i32 [ 0, %.split24.i.i ], [ %.02341.i.i, %.split.i.i ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %.pre-phi.i.sink.i
  store i32 %.sink.i, ptr %i.cp, align 4, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %heap_insert.exit, %heap_in_heap.exit
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %.val28 = load ptr, ptr %i.cr, align 8, !tbaa !40 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.f
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !43 ; 2 uses
  %i.cu = icmp ugt i32 %2, %i.ct
  br i1 %i.cu, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.cv = phi ptr [ %i.d, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.val28.lcssa = phi ptr [ %.val2839, %bb.b ], [ %.val28, %._crit_edge.loopexit ]
  %.lcssa37 = phi ptr [ %.val30, %bb.b ], [ %i.cq, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.i, %bb.b ], [ %i.ct, %._crit_edge.loopexit ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val28.lcssa, i64 %i.f
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lcssa, ptr %i.cx, align 8, !tbaa !71
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.lcssa37, i64 4
  store i32 %1, ptr %i.da, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @solver_propagate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val136215 = load i32, ptr %i.e, align 4, !tbaa !18
  %i.f = icmp ult i32 %i.c, %.val136215
  br i1 %i.f, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 272        ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph219, %._crit_edge212
  %i.p = phi ptr [ %i.d, %.lr.ph219 ], [ %i.if, %._crit_edge212 ]
  %i.q = phi i32 [ %i.c, %.lr.ph219 ], [ %i.ie, %._crit_edge212 ] ; 2 uses
  %.0119217 = phi i32 [ 0, %.lr.ph219 ], [ %i.w, %._crit_edge212 ]
  %.0120216 = phi i32 [ -1, %.lr.ph219 ], [ %.1121.lcssa, %._crit_edge212 ] ; 2 uses
  %i.r = add nuw i32 %i.q, 1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !71
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val138 = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val138, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43   ; 2 uses
  %i.w = add i32 %.0119217, 1                     ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val143 = load ptr, ptr %i.y, align 8, !tbaa !75
  %i.z = zext i32 %i.v to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.val143, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %.val148 = load ptr, ptr %i.ab, align 8, !tbaa !78 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %.val148, i64 %.idx
  %.not135190.not = icmp eq i32 %i.ad, 0
  br i1 %.not135190.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %i.ag = phi ptr [ %i.cd, %bb.j ], [ %i.x, %bb.b ] ; 2 uses
  %.0113191 = phi ptr [ %i.ce, %bb.j ], [ %.val148, %bb.b ] ; 4 uses
  %.val150 = load ptr, ptr %i.h, align 8, !tbaa !80 ; 2 uses
  %.not = icmp eq ptr %.val150, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0113191, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !82 ; 4 uses
  %.pre242 = lshr i32 %.pre, 1                    ; 2 uses
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre243 = zext nneg i32 %.pre242 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %.val150, i64 8
  %.val152.val = load ptr, ptr %i.ah, align 8, !tbaa !56
  %i.ai = zext nneg i32 %.pre242 to i64           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val152.val, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !47
  %.not134 = icmp eq i8 %i.ak, 0
  br i1 %.not134, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph._crit_edge, %bb.c
  %.pre-phi244 = phi i64 [ %.pre243, %.lr.ph._crit_edge ], [ %i.ai, %bb.c ] ; 4 uses
  %.val153 = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.al = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.al, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %.val153.val, i64 %.pre-phi244 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !47  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 3
  br i1 %i.ao, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %.0113191, align 4, !tbaa !83
  %i.aq = trunc i32 %.pre to i8
  %i.ar = and i8 %i.aq, 1                         ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !47
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val16.i = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %.pre-phi244
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !47
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !45
  %.val15.i = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.aw = getelementptr i8, ptr %.val15.i, i64 4
  %.val15.val.i = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %.val14.i = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.pre-phi244
  store i32 %.val15.val.i, ptr %i.ay, align 4, !tbaa !43
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.pre-phi244
  store i32 %i.ap, ptr %i.bb, align 4, !tbaa !43
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !52  ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18 ; 6 uses
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !42
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %solver_enqueue.exit

bb.f:                                             ; preds = %bb.e
  %i.bh = icmp ult i32 %i.be, 16
  br i1 %i.bh, label %vec_uint_reserve.exit.i.i, label %bb.g

vec_uint_reserve.exit.i.i:                        ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bj, i64 noundef 64) #18
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.g:                                             ; preds = %bb.f
  %.not.i9.i.i = icmp sgt i32 %i.be, 0
  br i1 %.not.i9.i.i, label %bb.h, label %solver_enqueue.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = shl nuw i32 %i.be, 1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bo = zext i32 %i.bl to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = tail call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bp) #18
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.h, %vec_uint_reserve.exit.i.i
  %.sink.i.i = phi i32 [ %i.bl, %bb.h ], [ 16, %vec_uint_reserve.exit.i.i ]
  store i32 %.sink.i.i, ptr %i.bc, align 8, !tbaa !42
  %.pre.i = load i32, ptr %i.bd, align 4, !tbaa !18
  br label %solver_enqueue.exit

solver_enqueue.exit:                              ; preds = %bb.e, %bb.g, %vec_uint_reserve.exit10.sink.split.i.i
  %i.br = phi i32 [ %i.be, %bb.e ], [ %i.be, %bb.g ], [ %.pre.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  store i32 %.pre, ptr %i.bv, align 4, !tbaa !43
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bd, align 4, !tbaa !18
  %.pre235 = load ptr, ptr %i.g, align 8, !tbaa !72
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.by = trunc i32 %.pre to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = xor i8 %i.an, %i.bz
  %i.cb = icmp eq i8 %i.ca, 1
  br i1 %i.cb, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.cc = load i32, ptr %.0113191, align 4, !tbaa !83
  br label %bb.ae

bb.j:                                             ; preds = %solver_enqueue.exit, %bb.i, %bb.c
  %i.cd = phi ptr [ %.pre235, %solver_enqueue.exit ], [ %i.ag, %bb.i ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0113191, i64 8 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  %.val142 = load ptr, ptr %i.cf, align 8, !tbaa !75
end_hunk_0
begin_hunk_1_@solver_search:bb.a
  %i.blu = call ptr @realloc(ptr noundef %i.bkq, i64 noundef %i.blt) #18 ; 3 uses
  store ptr %i.blu, ptr %i.bce, align 8, !tbaa !37
  %.pre.i.i99.i.i = load i32, ptr %i.bbt, align 8, !tbaa !34 ; 2 uses
  %.pre6.i.i100.i.i = add i32 %.pre.i.i99.i.i, %i.bli
  %.pre150.i = load i32, ptr %i.bkz, align 4
  %.pre151.i = load i32, ptr %i.blg, align 4, !tbaa !39
  %.pre152.i = and i32 %.pre150.i, 1
  %.pre153.i = add nuw nsw i32 %.pre152.i, 3
  %.pre155.i = add i32 %.pre153.i, %.pre151.i
  br label %cdb_append.exit.i94.i.i

cdb_append.exit.i94.i.i:                          ; preds = %bb.fn, %bb.fm
  %.pre-phi156.i = phi i32 [ %.pre155.i, %bb.fn ], [ %i.bli, %bb.fm ]
  %i.blv = phi ptr [ %i.blu, %bb.fn ], [ %i.bkp, %bb.fm ] ; 3 uses
  %i.blw = phi ptr [ %i.blu, %bb.fn ], [ %i.bkq, %bb.fm ]
  %i.blx = phi i32 [ %i.blq, %bb.fn ], [ %i.bkr, %bb.fm ]
  %.pre-phi.i.i95.i.i = phi i32 [ %.pre6.i.i100.i.i, %bb.fn ], [ %i.blj, %bb.fm ] ; 2 uses
  %i.bly = phi i32 [ %.pre.i.i99.i.i, %bb.fn ], [ %i.bks, %bb.fm ] ; 4 uses
  store i32 %.pre-phi.i.i95.i.i, ptr %i.bbt, align 8, !tbaa !34
  %.not.i18.i96.i.i = icmp eq i32 %i.bly, -1      ; 2 uses
  %i.blz = zext i32 %i.bly to i64
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %i.blv, i64 %i.blz
  %i.bmb = select i1 %.not.i18.i96.i.i, ptr %i.blw, ptr %i.blv
  %i.bmc = select i1 %.not.i18.i96.i.i, ptr null, ptr %i.bma
  %i.bmd = shl i32 %.pre-phi156.i, 2
  %i.bme = zext i32 %i.bmd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bmc, ptr nonnull align 4 %i.bkz, i64 %i.bme, i1 false)
  %i.bmf = load i32, ptr %i.bkz, align 4
  %i.bmg = or i32 %i.bmf, 4
  store i32 %i.bmg, ptr %i.bkz, align 4
  store i32 %i.bly, ptr %i.blg, align 4, !tbaa !39
  %.pre150.i.i = load ptr, ptr %i.ba, align 8, !tbaa !50
  br label %clause_realloc.exit101.i.i

clause_realloc.exit101.i.i:                       ; preds = %cdb_append.exit.i94.i.i, %bb.fl
  %i.bmh = phi ptr [ %.pre150.i.i, %cdb_append.exit.i94.i.i ], [ %i.bko, %bb.fl ] ; 2 uses
  %i.bmi = phi ptr [ %i.blv, %cdb_append.exit.i94.i.i ], [ %i.bkp, %bb.fl ]
  %i.bmj = phi ptr [ %i.bmb, %cdb_append.exit.i94.i.i ], [ %i.bkq, %bb.fl ]
  %i.bmk = phi i32 [ %i.blx, %cdb_append.exit.i94.i.i ], [ %i.bkr, %bb.fl ]
  %i.bml = phi i32 [ %.pre-phi.i.i95.i.i, %cdb_append.exit.i94.i.i ], [ %i.bks, %bb.fl ]
  %storemerge.i92.i.i = phi i32 [ %i.bly, %cdb_append.exit.i94.i.i ], [ %i.bld, %bb.fl ]
  store i32 %storemerge.i92.i.i, ptr %i.bku, align 4, !tbaa !43
  %indvars.iv.next144.i.i = add nuw nsw i64 %indvars.iv143.i.i, 1 ; 2 uses
  %i.bmm = getelementptr i8, ptr %i.bmh, i64 4
  %.val.i83.i = load i32, ptr %i.bmm, align 4, !tbaa !18
  %i.bmn = zext i32 %.val.i83.i to i64
  %i.bmo = icmp samesign ult i64 %indvars.iv.next144.i.i, %i.bmn
  br i1 %i.bmo, label %.lr.ph126.i.i, label %solver_garbage_collect.exit.i, !llvm.loop !126

solver_garbage_collect.exit.i:                    ; preds = %clause_realloc.exit101.i.i, %._crit_edge122.i.i
  %i.bmp = load ptr, ptr %i.m, align 8, !tbaa !32 ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 16
  %i.bmr = load ptr, ptr %i.bmq, align 8, !tbaa !37
  call void @free(ptr noundef %i.bmr) #19
  call void @free(ptr noundef %i.bmp) #19
  store ptr %i.bbt, ptr %i.m, align 8, !tbaa !32
  br label %solver_reduce_cdb.exit

solver_reduce_cdb.exit:                           ; preds = %bb.ev, %solver_garbage_collect.exit.i
  %i.bms = load i32, ptr %i.bb, align 8, !tbaa !183
  %i.bmt = zext i32 %i.bms to i64
  %i.bmu = load i64, ptr %i.as, align 8, !tbaa !172
  %i.bmv = add nsw i64 %i.bmu, %i.bmt             ; 2 uses
  store i64 %i.bmv, ptr %i.as, align 8, !tbaa !172
  %i.bmw = load i64, ptr %i.at, align 8, !tbaa !173
  %i.bmx = mul nsw i64 %i.bmw, %i.bmv
  store i64 %i.bmx, ptr %i.ar, align 8, !tbaa !171
  br label %bb.fo

bb.fo:                                            ; preds = %solver_reduce_cdb.exit, %bb.dv, %bb.du, %bb.dt
  %.val79212 = load ptr, ptr %i.e, align 8, !tbaa !51 ; 2 uses
  %i.bmy = getelementptr i8, ptr %.val79212, i64 4 ; 2 uses
  %.val79.val213 = load i32, ptr %i.bmy, align 4, !tbaa !18 ; 2 uses
  %i.bmz = load ptr, ptr %i.bc, align 8, !tbaa !184 ; 2 uses
  %i.bna = getelementptr i8, ptr %i.bmz, i64 4
  %.val74214 = load i32, ptr %i.bna, align 4, !tbaa !18
  %i.bnb = icmp ult i32 %.val79.val213, %.val74214
  br i1 %i.bnb, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.fo, %solver_analyze_final.exit
  %i.bnc = phi ptr [ %i.brz, %solver_analyze_final.exit ], [ %i.bmz, %bb.fo ] ; 3 uses
  %.val79257 = phi ptr [ %.val79, %solver_analyze_final.exit ], [ %.val79212, %bb.fo ] ; 8 uses
  %.val79.val216 = phi i32 [ %.val79.val, %solver_analyze_final.exit ], [ %.val79.val213, %bb.fo ] ; 5 uses
  %i.bnd = phi ptr [ %i.bsf, %solver_analyze_final.exit ], [ %i.bmy, %bb.fo ] ; 3 uses
  %i.bne = getelementptr i8, ptr %i.bnc, i64 8
  %.val77 = load ptr, ptr %i.bne, align 8, !tbaa !40
  %i.bnf = zext i32 %.val79.val216 to i64         ; 3 uses
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %i.bnf
  %i.bnh = load i32, ptr %i.bng, align 4, !tbaa !43 ; 5 uses
  %.val83 = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.bni = getelementptr i8, ptr %.val83, i64 8
  %.val83.val = load ptr, ptr %i.bni, align 8, !tbaa !56
  %i.bnj = trunc i32 %i.bnh to i8
  %i.bnk = and i8 %i.bnj, 1
  %i.bnl = lshr i32 %i.bnh, 1
  %i.bnm = zext nneg i32 %i.bnl to i64            ; 3 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %.val83.val, i64 %i.bnm
  %i.bno = load i8, ptr %i.bnn, align 1, !tbaa !47
  %i.bnp = xor i8 %i.bno, %i.bnk
  switch i8 %i.bnp, label %bb.ge [
    i8 0, label %bb.fp
    i8 1, label %bb.ft
  ]

bb.fp:                                            ; preds = %.lr.ph
  %i.bnq = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.bnr = getelementptr i8, ptr %i.bnq, i64 4
  %.val = load i32, ptr %i.bnr, align 4, !tbaa !18
  %i.bns = load i32, ptr %.val79257, align 8, !tbaa !42
  %i.bnt = icmp eq i32 %.val79.val216, %i.bns
  br i1 %i.bnt, label %bb.fq, label %solver_analyze_final.exit

bb.fq:                                            ; preds = %bb.fp
  %i.bnu = icmp ult i32 %.val79.val216, 16
  br i1 %i.bnu, label %vec_uint_reserve.exit.i, label %bb.fr

vec_uint_reserve.exit.i:                          ; preds = %bb.fq
  %i.bnv = getelementptr inbounds nuw i8, ptr %.val79257, i64 8 ; 2 uses
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !40
  %i.bnx = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bnw, i64 noundef 64) #18
  store ptr %i.bnx, ptr %i.bnv, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i

bb.fr:                                            ; preds = %bb.fq
  %.not.i9.i = icmp sgt i32 %.val79.val216, 0
  br i1 %.not.i9.i, label %bb.fs, label %solver_analyze_final.exit

bb.fs:                                            ; preds = %bb.fr
  %i.bny = shl nuw i32 %.val79.val216, 1          ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %.val79257, i64 8 ; 2 uses
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !40
  %i.bob = zext i32 %i.bny to i64
  %i.boc = shl nuw nsw i64 %i.bob, 2
  %i.bod = call ptr @realloc(ptr noundef %i.boa, i64 noundef %i.boc) #18
  store ptr %i.bod, ptr %i.bnz, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i

vec_uint_reserve.exit10.sink.split.i:             ; preds = %bb.fs, %vec_uint_reserve.exit.i
  %.sink.i = phi i32 [ %i.bny, %bb.fs ], [ 16, %vec_uint_reserve.exit.i ]
  store i32 %.sink.i, ptr %.val79257, align 8, !tbaa !42
  %.pre256 = load i32, ptr %i.bnd, align 4, !tbaa !18
  %.val79.pre = load ptr, ptr %i.e, align 8, !tbaa !51
  %.pre259.a = load ptr, ptr %i.bc, align 8, !tbaa !184
  %.pre260 = zext i32 %.pre256 to i64
  br label %solver_analyze_final.exit

bb.ft:                                            ; preds = %.lr.ph
  %i.boe = xor i32 %i.bnh, 1
  %i.bof = load ptr, ptr %i.bd, align 8, !tbaa !185 ; 4 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 4 ; 4 uses
  store i32 0, ptr %i.bog, align 4, !tbaa !18
  %i.boh = load i32, ptr %i.bof, align 8, !tbaa !42
  %i.boi = icmp eq i32 %i.boh, 0
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bof, i64 8 ; 2 uses
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !40 ; 2 uses
  br i1 %i.boi, label %vec_uint_reserve.exit10.sink.split.i.i121, label %vec_uint_push_back.exit.i113

vec_uint_reserve.exit10.sink.split.i.i121:        ; preds = %bb.ft
  %i.bol = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bok, i64 noundef 64) #18 ; 2 uses
  store ptr %i.bol, ptr %i.boj, align 8, !tbaa !40
  store i32 16, ptr %i.bof, align 8, !tbaa !42
  %.pre58.i = load i32, ptr %i.bog, align 4, !tbaa !18
  %i.bom = zext i32 %.pre58.i to i64
  %.val42.i.pre = load ptr, ptr %i.e, align 8, !tbaa !51
  br label %vec_uint_push_back.exit.i113

vec_uint_push_back.exit.i113:                     ; preds = %vec_uint_reserve.exit10.sink.split.i.i121, %bb.ft
  %.val42.i = phi ptr [ %.val42.i.pre, %vec_uint_reserve.exit10.sink.split.i.i121 ], [ %.val79257, %bb.ft ]
  %i.bon = phi i64 [ %i.bom, %vec_uint_reserve.exit10.sink.split.i.i121 ], [ 0, %bb.ft ]
  %i.boo = phi ptr [ %i.bol, %vec_uint_reserve.exit10.sink.split.i.i121 ], [ %i.bok, %bb.ft ]
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %i.boo, i64 %i.bon
  store i32 %i.boe, ptr %i.bop, align 4, !tbaa !43
  %i.boq = load i32, ptr %i.bog, align 4, !tbaa !18
  %i.bor = add i32 %i.boq, 1
  store i32 %i.bor, ptr %i.bog, align 4, !tbaa !18
  %i.bos = getelementptr i8, ptr %.val42.i, i64 4
  %.val42.val.i = load i32, ptr %i.bos, align 4, !tbaa !18
  %i.bot = icmp eq i32 %.val42.val.i, 0
  br i1 %i.bot, label %.thread162, label %bb.fu

bb.fu:                                            ; preds = %vec_uint_push_back.exit.i113
  %i.bou = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.bov = getelementptr i8, ptr %i.bou, i64 8
  %.val46.i = load ptr, ptr %i.bov, align 8, !tbaa !56
  %i.bow = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %i.bnm
  store i8 1, ptr %i.bow, align 1, !tbaa !47
  %i.box = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.boy = getelementptr i8, ptr %i.box, i64 4
  %.val.i114 = load i32, ptr %i.boy, align 4, !tbaa !18 ; 2 uses
  %i.boz = load ptr, ptr %i.e, align 8, !tbaa !51 ; 2 uses
  %i.bpa = getelementptr i8, ptr %i.boz, i64 8
  %.val4055.i = load ptr, ptr %i.bpa, align 8, !tbaa !40
  %i.bpb = load i32, ptr %.val4055.i, align 4, !tbaa !43
  %i.bpc = icmp ugt i32 %.val.i114, %i.bpb
  br i1 %i.bpc, label %.lr.ph56.i.preheader, label %._crit_edge.i115

.lr.ph56.i.preheader:                             ; preds = %bb.fu
  %i.bpd = zext i32 %.val.i114 to i64
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %bb.gd
  %indvars.iv = phi i64 [ %i.bpd, %.lr.ph56.i.preheader ], [ %i.bpe, %bb.gd ]
  %2 = phi ptr [ %i.boz, %.lr.ph56.i.preheader ], [ %i.brs, %bb.gd ]
  %i.bpe = add i64 %indvars.iv, -1                ; 3 uses
  %i.bpf = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.bpg = getelementptr i8, ptr %i.bpf, i64 8
  %.val39.i = load ptr, ptr %i.bpg, align 8, !tbaa !40
  %i.bph = getelementptr inbounds nuw [4 x i8], ptr %.val39.i, i64 %i.bpe
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !43 ; 2 uses
  %i.bpj = lshr i32 %i.bpi, 1
  %i.bpk = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.bpl = getelementptr i8, ptr %i.bpk, i64 8
  %.val47.i = load ptr, ptr %i.bpl, align 8, !tbaa !56
  %i.bpm = zext nneg i32 %i.bpj to i64            ; 3 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %.val47.i, i64 %i.bpm
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !47
  %.not.i116 = icmp eq i8 %i.bpo, 0
  br i1 %.not.i116, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph56.i
  %.val48.i = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.bpp = getelementptr i8, ptr %.val48.i, i64 8
  %.val48.val.i = load ptr, ptr %i.bpp, align 8, !tbaa !40
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %.val48.val.i, i64 %i.bpm
  %i.bpr = load i32, ptr %i.bpq, align 4, !tbaa !43 ; 2 uses
  %i.bps = icmp eq i32 %i.bpr, -1
  br i1 %i.bps, label %bb.fw, label %clause_fetch.exit.i117

bb.fw:                                            ; preds = %bb.fv
  %i.bpt = load ptr, ptr %i.bd, align 8, !tbaa !185 ; 6 uses
  %i.bpu = xor i32 %i.bpi, 1
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpt, i64 4 ; 4 uses
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !18 ; 6 uses
  %i.bpx = load i32, ptr %i.bpt, align 8, !tbaa !42
  %i.bpy = icmp eq i32 %i.bpw, %i.bpx
  br i1 %i.bpy, label %bb.fx, label %vec_uint_push_back.exit53.i

bb.fx:                                            ; preds = %bb.fw
  %i.bpz = icmp ult i32 %i.bpw, 16
  br i1 %i.bpz, label %vec_uint_reserve.exit.i52.i, label %bb.fy

vec_uint_reserve.exit.i52.i:                      ; preds = %bb.fx
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpt, i64 8 ; 2 uses
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !40
  %i.bqc = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bqb, i64 noundef 64) #18
  store ptr %i.bqc, ptr %i.bqa, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i50.i

bb.fy:                                            ; preds = %bb.fx
  %.not.i9.i49.i = icmp sgt i32 %i.bpw, 0
  br i1 %.not.i9.i49.i, label %bb.fz, label %vec_uint_push_back.exit53.i

bb.fz:                                            ; preds = %bb.fy
  %i.bqd = shl nuw i32 %i.bpw, 1                  ; 2 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpt, i64 8 ; 2 uses
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !40
  %i.bqg = zext i32 %i.bqd to i64
  %i.bqh = shl nuw nsw i64 %i.bqg, 2
  %i.bqi = call ptr @realloc(ptr noundef %i.bqf, i64 noundef %i.bqh) #18
  store ptr %i.bqi, ptr %i.bqe, align 8, !tbaa !40
  br label %vec_uint_reserve.exit10.sink.split.i50.i

vec_uint_reserve.exit10.sink.split.i50.i:         ; preds = %bb.fz, %vec_uint_reserve.exit.i52.i
  %.sink.i51.i = phi i32 [ %i.bqd, %bb.fz ], [ 16, %vec_uint_reserve.exit.i52.i ]
  store i32 %.sink.i51.i, ptr %i.bpt, align 8, !tbaa !42
  %.pre63.i = load i32, ptr %i.bpv, align 4, !tbaa !18
  br label %vec_uint_push_back.exit53.i

vec_uint_push_back.exit53.i:                      ; preds = %vec_uint_reserve.exit10.sink.split.i50.i, %bb.fy, %bb.fw
  %i.bqj = phi i32 [ %i.bpw, %bb.fw ], [ %i.bpw, %bb.fy ], [ %.pre63.i, %vec_uint_reserve.exit10.sink.split.i50.i ]
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bpt, i64 8
  %i.bql = load ptr, ptr %i.bqk, align 8, !tbaa !40
  %i.bqm = zext i32 %i.bqj to i64
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bql, i64 %i.bqm
  store i32 %i.bpu, ptr %i.bqn, align 4, !tbaa !43
  %i.bqo = load i32, ptr %i.bpv, align 4, !tbaa !18
  %i.bqp = add i32 %i.bqo, 1
  store i32 %i.bqp, ptr %i.bpv, align 4, !tbaa !18
  br label %.loopexit.i

clause_fetch.exit.i117:                           ; preds = %bb.fv
  %.val37.i = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.bqq = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !37
  %i.bqs = zext i32 %i.bpr to i64
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %i.bqr, i64 %i.bqs ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 4 ; 2 uses
  %i.bqv = load i32, ptr %i.bqu, align 4, !tbaa !39 ; 3 uses
  %i.bqw = icmp ne i32 %i.bqv, 2                  ; 2 uses
  %i.bqx = zext i1 %i.bqw to i32
  %i.bqy = icmp ugt i32 %i.bqv, %i.bqx
  br i1 %i.bqy, label %.lr.ph.i118, label %.loopexit.i

.lr.ph.i118:                                      ; preds = %clause_fetch.exit.i117
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqt, i64 8
  %i.bra = zext i1 %i.bqw to i64
  %.val41.pre59.i = load ptr, ptr %i.s, align 8, !tbaa !45
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gc, %.lr.ph.i118
  %i.brb = phi i32 [ %i.bqv, %.lr.ph.i118 ], [ %i.brm, %bb.gc ]
  %.val41.i = phi ptr [ %.val41.pre59.i, %.lr.ph.i118 ], [ %.val4160.i, %bb.gc ] ; 2 uses
  %indvars.iv.i119 = phi i64 [ %i.bra, %.lr.ph.i118 ], [ %indvars.iv.next.i120, %bb.gc ] ; 2 uses
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %i.bqz, i64 %indvars.iv.i119
  %i.brd = load i32, ptr %i.brc, align 4, !tbaa !47
  %i.bre = getelementptr i8, ptr %.val41.i, i64 8
  %.val41.val.i = load ptr, ptr %i.bre, align 8, !tbaa !40
  %i.brf = lshr i32 %i.brd, 1
  %i.brg = zext nneg i32 %i.brf to i64            ; 2 uses
  %i.brh = getelementptr inbounds nuw [4 x i8], ptr %.val41.val.i, i64 %i.brg
  %i.bri = load i32, ptr %i.brh, align 4, !tbaa !43
  %.not36.i = icmp eq i32 %i.bri, 0
  br i1 %.not36.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.brj = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.brk = getelementptr i8, ptr %i.brj, i64 8
  %.val45.i = load ptr, ptr %i.brk, align 8, !tbaa !56
  %i.brl = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %i.brg
  store i8 1, ptr %i.brl, align 1, !tbaa !47
  %.val41.pre.i = load ptr, ptr %i.s, align 8, !tbaa !45
  %.pre62.i = load i32, ptr %i.bqu, align 4, !tbaa !39
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.brm = phi i32 [ %i.brb, %bb.ga ], [ %.pre62.i, %bb.gb ] ; 2 uses
  %.val4160.i = phi ptr [ %.val41.i, %bb.ga ], [ %.val41.pre.i, %bb.gb ]
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %i.brn = zext i32 %i.brm to i64
  %i.bro = icmp samesign ult i64 %indvars.iv.next.i120, %i.brn
  br i1 %i.bro, label %bb.ga, label %.loopexit.i, !llvm.loop !127

.loopexit.i:                                      ; preds = %bb.gc, %clause_fetch.exit.i117, %vec_uint_push_back.exit53.i
  %i.brp = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.brq = getelementptr i8, ptr %i.brp, i64 8
  %.val44.i = load ptr, ptr %i.brq, align 8, !tbaa !56
  %i.brr = getelementptr inbounds nuw i8, ptr %.val44.i, i64 %i.bpm
  store i8 0, ptr %i.brr, align 1, !tbaa !47
  %.pre64.i = load ptr, ptr %i.e, align 8, !tbaa !51
  br label %bb.gd

bb.gd:                                            ; preds = %.loopexit.i, %.lr.ph56.i
  %i.brs = phi ptr [ %.pre64.i, %.loopexit.i ], [ %2, %.lr.ph56.i ] ; 2 uses
  %i.brt = getelementptr i8, ptr %i.brs, i64 8
  %.val40.i = load ptr, ptr %i.brt, align 8, !tbaa !40
  %i.bru = load i32, ptr %.val40.i, align 4, !tbaa !43
  %i.brv = zext i32 %i.bru to i64
  %.wide = icmp ugt i64 %i.bpe, %i.brv
  br i1 %.wide, label %.lr.ph56.i, label %._crit_edge.i115, !llvm.loop !128

._crit_edge.i115:                                 ; preds = %bb.gd, %bb.fu
  %i.brw = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.brx = getelementptr i8, ptr %i.brw, i64 8
  %.val43.i = load ptr, ptr %i.brx, align 8, !tbaa !56
  %i.bry = getelementptr inbounds nuw i8, ptr %.val43.i, i64 %i.bnm
  store i8 0, ptr %i.bry, align 1, !tbaa !47
  br label %.thread162

solver_analyze_final.exit:                        ; preds = %vec_uint_reserve.exit10.sink.split.i, %bb.fr, %bb.fp
  %.pre-phi = phi i64 [ %.pre260, %vec_uint_reserve.exit10.sink.split.i ], [ %i.bnf, %bb.fr ], [ %i.bnf, %bb.fp ]
  %i.brz = phi ptr [ %.pre259.a, %vec_uint_reserve.exit10.sink.split.i ], [ %i.bnc, %bb.fr ], [ %i.bnc, %bb.fp ] ; 2 uses
  %.val79 = phi ptr [ %.val79.pre, %vec_uint_reserve.exit10.sink.split.i ], [ %.val79257, %bb.fr ], [ %.val79257, %bb.fp ] ; 2 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %.val79257, i64 8
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !40
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %i.bsb, i64 %.pre-phi
  store i32 %.val, ptr %i.bsc, align 4, !tbaa !43
  %i.bsd = load i32, ptr %i.bnd, align 4, !tbaa !18
  %i.bse = add i32 %i.bsd, 1
  store i32 %i.bse, ptr %i.bnd, align 4, !tbaa !18
  %i.bsf = getelementptr i8, ptr %.val79, i64 4   ; 2 uses
  %.val79.val = load i32, ptr %i.bsf, align 4, !tbaa !18 ; 2 uses
  %i.bsg = getelementptr i8, ptr %i.brz, i64 4
  %.val74 = load i32, ptr %i.bsg, align 4, !tbaa !18
  %i.bsh = icmp ult i32 %.val79.val, %.val74
  br i1 %i.bsh, label %.lr.ph, label %.thread

bb.ge:                                            ; preds = %.lr.ph
  %i.bsi = icmp eq i32 %i.bnh, -1
  br i1 %i.bsi, label %.thread, label %bb.go

.thread:                                          ; preds = %solver_analyze_final.exit, %bb.fo, %bb.ge
  %i.bsj = load i64, ptr %i.be, align 8, !tbaa !186
  %i.bsk = add nsw i64 %i.bsj, 1
  store i64 %i.bsk, ptr %i.be, align 8, !tbaa !186
  br label %bb.gf

bb.gf:                                            ; preds = %.backedge, %.thread
  %.0.i122 = phi i32 [ -1, %.thread ], [ %.0.i122.be, %.backedge ] ; 4 uses
  %i.bsl = icmp eq i32 %.0.i122, -1
  br i1 %i.bsl, label %.critedge.i124, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %.val15.i = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.bsm = getelementptr i8, ptr %.val15.i, i64 8
  %.val15.val.i = load ptr, ptr %i.bsm, align 8, !tbaa !56
  %i.bsn = zext i32 %.0.i122 to i64
  %i.bso = getelementptr inbounds nuw i8, ptr %.val15.val.i, i64 %i.bsn
  %i.bsp = load i8, ptr %i.bso, align 1, !tbaa !47
  %.not.i123 = icmp eq i8 %i.bsp, 3
  br i1 %.not.i123, label %solver_decide.exit, label %.critedge.i124

.critedge.i124:                                   ; preds = %bb.gg, %bb.gf
  %i.bsq = load ptr, ptr %i.y, align 8, !tbaa !58 ; 3 uses
  %i.bsr = getelementptr i8, ptr %i.bsq, i64 8
end_hunk_1
