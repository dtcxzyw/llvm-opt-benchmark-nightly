inline.NumInlined: 451
inline.NumDeleted: 108
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@solver_clause_create:bb.a
  br i1 %niter.ncmp.1, label %clause_clac_lbd.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !41

clause_clac_lbd.exit.loopexit.unr-lcssa:          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clause_clac_lbd.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clause_clac_lbd.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ]
  %.019.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i32 %.val35 to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv.i.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !37
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !37
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !37
  %i.cz = load i32, ptr %i.bk, align 4, !tbaa !38 ; 2 uses
  %.not.i.epil = icmp eq i32 %i.cy, %i.cz
  br i1 %.not.i.epil, label %clause_clac_lbd.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !37
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
  %i.df = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.dg ; 3 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !42
  %.val34 = load i32, ptr %i.b, align 4, !tbaa !8
  %i.di = zext i32 %.val34 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !43
  %i.dl = add nsw i64 %i.dk, %i.di
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !44
  %i.do = load i32, ptr %i.dh, align 4, !tbaa !42
  %i.dp = add i32 %i.do, %i.dn                    ; 2 uses
  store i32 %i.dp, ptr %i.dh, align 4, !tbaa !42
  %.not.i43 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i43, label %clause_act_bump.exit, label %bb.n

bb.n:                                             ; preds = %clause_clac_lbd.exit
  %i.dq = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %.val12.i.i = load i32, ptr %i.dr, align 4, !tbaa !8
  %.not.i.i44 = icmp eq i32 %.val12.i.i, 0
  br i1 %.not.i.i44, label %clause_act_rescale.exit.i, label %clause_fetch.exit.i.i

clause_fetch.exit.i.i:                            ; preds = %bb.n, %clause_fetch.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %clause_fetch.exit.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.ds = phi ptr [ %i.eh, %clause_fetch.exit.i.i ], [ %i.dq, %bb.n ]
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %.val11.i.i = load ptr, ptr %i.dt, align 8, !tbaa !34
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i, i64 %indvars.iv.i.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !37 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %.not.i.i.i.i = icmp ne i32 %i.dv, -1
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31
  %i.dy = zext i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !32
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !42
  %i.eg = lshr i32 %i.ef, 10
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.eh = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %.val.i.i = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ej = zext i32 %.val.i.i to i64
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ej
  br i1 %i.ek, label %clause_fetch.exit.i.i, label %clause_act_rescale.exit.i, !llvm.loop !45

clause_act_rescale.exit.i:                        ; preds = %clause_fetch.exit.i.i, %bb.n
  %i.el = load i32, ptr %i.dm, align 8, !tbaa !44
  %i.em = lshr i32 %i.el, 10
  %i.en = tail call range(i32 2048, 4194304) i32 @llvm.umax.i32(i32 range(i32 0, 4194304) %i.em, i32 2048)
  store i32 %i.en, ptr %i.dm, align 8, !tbaa !44
  br label %clause_act_bump.exit

bb.o:                                             ; preds = %clause_fetch.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8  ; 6 uses
  %i.es = load i32, ptr %i.ep, align 8, !tbaa !36
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %bb.p, label %vec_uint_push_back.exit49

bb.p:                                             ; preds = %bb.o
  %i.eu = icmp ult i32 %i.er, 16
  br i1 %i.eu, label %vec_uint_reserve.exit.i48, label %bb.q

vec_uint_reserve.exit.i48:                        ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !34
  %i.ex = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.ew, i64 noundef 64) #18
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i46

bb.q:                                             ; preds = %bb.p
  %.not.i9.i45 = icmp sgt i32 %i.er, 0
  br i1 %.not.i9.i45, label %bb.r, label %vec_uint_push_back.exit49

bb.r:                                             ; preds = %bb.q
  %i.ey = shl nuw i32 %i.er, 1                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !34
  %i.fb = zext i32 %i.ey to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2
  %i.fd = tail call ptr @realloc(ptr noundef %i.fa, i64 noundef %i.fc) #18
  store ptr %i.fd, ptr %i.ez, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i46

vec_uint_reserve.exit10.sink.split.i46:           ; preds = %bb.r, %vec_uint_reserve.exit.i48
  %.sink.i47 = phi i32 [ %i.ey, %bb.r ], [ 16, %vec_uint_reserve.exit.i48 ]
  store i32 %.sink.i47, ptr %i.ep, align 8, !tbaa !36
  %.pre50 = load i32, ptr %i.eq, align 4, !tbaa !8
  br label %vec_uint_push_back.exit49

vec_uint_push_back.exit49:                        ; preds = %bb.o, %bb.q, %vec_uint_reserve.exit10.sink.split.i46
  %i.fe = phi i32 [ %i.er, %bb.o ], [ %i.er, %bb.q ], [ %.pre50, %vec_uint_reserve.exit10.sink.split.i46 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !34
  %i.fh = zext i32 %i.fe to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fh
  store i32 %i.w, ptr %i.fi, align 4, !tbaa !37
  %i.fj = load i32, ptr %i.eq, align 4, !tbaa !8
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.eq, align 4, !tbaa !8
  %.val = load i32, ptr %i.b, align 4, !tbaa !8
  %i.fl = zext i32 %.val to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !47
  %i.fo = add nsw i64 %i.fn, %i.fl
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !47
  br label %clause_act_bump.exit

clause_act_bump.exit:                             ; preds = %clause_act_rescale.exit.i, %clause_clac_lbd.exit, %vec_uint_push_back.exit49
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
  %.val30 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 3 uses
  %i.b = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp ugt i32 %.val30.val, %1
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr i8, ptr %.val30, i64 8
  %.val2839 = load ptr, ptr %i.g, align 8, !tbaa !34 ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val2839, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
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
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val27 = load ptr, ptr %i.o, align 8, !tbaa !34
  %3 = zext i32 %2 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %3
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37
  %i.r = lshr i32 %i.q, 1                         ; 5 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val31 = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.u = zext nneg i32 %i.r to i64                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val31, i64 %i.u
  store i8 3, ptr %i.v, align 1, !tbaa !42
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val29 = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %i.u
  store i32 -1, ptr %i.y, align 4, !tbaa !37
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !55   ; 5 uses
  %.val32 = load ptr, ptr %i.z, align 8, !tbaa !56 ; 6 uses
  %i.aa = getelementptr i8, ptr %.val32, i64 4    ; 2 uses
  %.val.i = load i32, ptr %i.aa, align 4, !tbaa !59 ; 3 uses
  %i.ab = icmp ult i32 %i.r, %.val.i
  br i1 %i.ab, label %heap_in_heap.exit, label %bb.d

heap_in_heap.exit:                                ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %.val32, i64 8
  %.val3.i = load ptr, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %i.u
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.critedge.i, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ag = add nuw i32 %i.r, 1                     ; 4 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !59
  %i.ah = load i32, ptr %.val32, align 8, !tbaa !62
  %.not.i.not.i = icmp ugt i32 %i.ah, %i.r
  br i1 %.not.i.not.i, label %vec_int_resize.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.val32, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.ak = zext i32 %i.ag to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call ptr @realloc(ptr noundef %i.aj, i64 noundef %i.al) #18
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !61
  store i32 %i.ag, ptr %.val32, align 8, !tbaa !62
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !56 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 4
  %.val2130.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !59
  br label %vec_int_resize.exit.i

vec_int_resize.exit.i:                            ; preds = %bb.e, %bb.d
  %.val2130.i = phi i32 [ %i.ag, %bb.d ], [ %.val2130.pre.i, %bb.e ]
  %i.an = phi ptr [ %.val32, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = icmp ult i32 %.val.i, %.val2130.i
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val25.i = load ptr, ptr %i.aq, align 8, !tbaa !61 ; 3 uses
  br i1 %i.ap, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %vec_int_resize.exit.i
  %i.ar = zext nneg i32 %.val.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val25.i, i64 %indvars.iv.i
  store i32 -1, ptr %i.as, align 4, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val21.i = load i32, ptr %i.ao, align 4, !tbaa !59
  %i.at = zext i32 %.val21.i to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %bb.f, label %.critedge.i, !llvm.loop !63

.critedge.i:                                      ; preds = %bb.f, %vec_int_resize.exit.i, %heap_in_heap.exit
  %.val26.i = phi ptr [ %.val3.i, %heap_in_heap.exit ], [ %.val25.i, %vec_int_resize.exit.i ], [ %.val25.i, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64 ; 8 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 4 uses
  %.val.i33 = load i32, ptr %i.ax, align 4, !tbaa !8 ; 7 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val26.i, i64 %i.u
  store i32 %.val.i33, ptr %i.ay, align 4, !tbaa !37
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !36
  %i.ba = icmp eq i32 %.val.i33, %i.az
  br i1 %i.ba, label %bb.g, label %vec_uint_push_back.exit.i

bb.g:                                             ; preds = %.critedge.i
  %i.bb = icmp ult i32 %.val.i33, 16
  br i1 %i.bb, label %vec_uint_reserve.exit.i.i, label %bb.h

vec_uint_reserve.exit.i.i:                        ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bd, i64 noundef 64) #18
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %.not.i9.i.i = icmp sgt i32 %.val.i33, 0
  br i1 %.not.i9.i.i, label %bb.i, label %vec_uint_push_back.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bf = shl nuw i32 %.val.i33, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34
  %i.bi = zext i32 %i.bf to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call ptr @realloc(ptr noundef %i.bh, i64 noundef %i.bj) #18
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.i, %vec_uint_reserve.exit.i.i
  %.sink.i.i = phi i32 [ %i.bf, %bb.i ], [ 16, %vec_uint_reserve.exit.i.i ]
  store i32 %.sink.i.i, ptr %i.aw, align 8, !tbaa !36
  %.pre35.i = load i32, ptr %i.ax, align 4, !tbaa !8
  %.pre36.i = load ptr, ptr %i.z, align 8, !tbaa !56
  %.phi.trans.insert37.i = getelementptr i8, ptr %.pre36.i, i64 8
  %.val24.pre.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !61
  %.pre39.i = load ptr, ptr %i.av, align 8, !tbaa !64
  br label %vec_uint_push_back.exit.i

vec_uint_push_back.exit.i:                        ; preds = %vec_uint_reserve.exit10.sink.split.i.i, %bb.h, %.critedge.i
  %i.bl = phi ptr [ %i.aw, %.critedge.i ], [ %i.aw, %bb.h ], [ %.pre39.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %.val24.i = phi ptr [ %.val26.i, %.critedge.i ], [ %.val26.i, %bb.h ], [ %.val24.pre.i, %vec_uint_reserve.exit10.sink.split.i.i ] ; 3 uses
  %i.bm = phi i32 [ %.val.i33, %.critedge.i ], [ %.val.i33, %bb.h ], [ %.pre35.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  store i32 %i.r, ptr %i.bq, align 4, !tbaa !37
  %i.br = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.ax, align 4, !tbaa !8
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %i.u
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !37 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 8
  %.val28.i.i = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 4 uses
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val28.i.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !37 ; 4 uses
  %.not40.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not40.i.i, label %..split24_crit_edge.i.i, label %.lr.ph.i.i

..split24_crit_edge.i.i:                          ; preds = %vec_uint_push_back.exit.i
  %.pre45.i.i = zext i32 %i.by to i64
  br label %.split24.i.i

.lr.ph.i.i:                                       ; preds = %vec_uint_push_back.exit.i
  %i.bz = getelementptr i8, ptr %i.z, i64 16
  %.val35.i.i = load ptr, ptr %i.bz, align 8, !tbaa !65
  %i.ca = getelementptr i8, ptr %.val35.i.i, i64 8
  %.val35.val.i.i = load ptr, ptr %i.ca, align 8, !tbaa !66 ; 2 uses
  %i.cb = zext i32 %i.by to i64                   ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val35.val.i.i, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !69
  br label %bb.j

.split24.i.i:                                     ; preds = %bb.k, %..split24_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre45.i.i, %..split24_crit_edge.i.i ], [ %i.cb, %bb.k ]
  store i32 %i.by, ptr %.val28.i.i, align 4, !tbaa !37
  br label %heap_insert.exit

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.02341.i.i = phi i32 [ %i.bu, %.lr.ph.i.i ], [ %.042.i.i, %bb.k ] ; 4 uses
  %.042.in.i.i = add i32 %.02341.i.i, -1
  %.042.i.i = lshr i32 %.042.in.i.i, 1            ; 3 uses
  %i.ce = zext nneg i32 %.042.i.i to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val28.i.i, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !37 ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val35.val.i.i, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !69
  %.not36.i.i = icmp ugt i64 %i.cd, %i.cj
  %i.ck = zext i32 %.02341.i.i to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val28.i.i, i64 %i.ck ; 2 uses
  br i1 %.not36.i.i, label %bb.k, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !37
  br label %heap_insert.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.cg, ptr %i.cl, align 4, !tbaa !37
  %i.cm = load i32, ptr %i.cf, align 4, !tbaa !37
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %i.cn
  store i32 %.02341.i.i, ptr %i.co, align 4, !tbaa !37
  %.not.i28.i = icmp eq i32 %.042.i.i, 0
  br i1 %.not.i28.i, label %.split24.i.i, label %bb.j, !llvm.loop !70

heap_insert.exit:                                 ; preds = %.split24.i.i, %.split.i.i
  %.pre-phi.i.sink.i = phi i64 [ %.pre-phi.i.i, %.split24.i.i ], [ %i.cb, %.split.i.i ]
  %.sink.i = phi i32 [ 0, %.split24.i.i ], [ %.02341.i.i, %.split.i.i ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %.pre-phi.i.sink.i
  store i32 %.sink.i, ptr %i.cp, align 4, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %heap_insert.exit, %heap_in_heap.exit
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %.val28 = load ptr, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.f
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !37 ; 2 uses
  %i.cu = icmp ugt i32 %2, %i.ct
  br i1 %i.cu, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.cv = phi ptr [ %i.d, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.val28.lcssa = phi ptr [ %.val2839, %bb.b ], [ %.val28, %._crit_edge.loopexit ]
  %.lcssa37 = phi ptr [ %.val30, %bb.b ], [ %i.cq, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.i, %bb.b ], [ %i.ct, %._crit_edge.loopexit ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val28.lcssa, i64 %i.f
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lcssa, ptr %i.cx, align 8, !tbaa !72
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.lcssa37, i64 4
  store i32 %1, ptr %i.da, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @solver_propagate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val136215 = load i32, ptr %i.e, align 4, !tbaa !8
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
  %i.p = phi ptr [ %i.d, %.lr.ph219 ], [ %i.iw, %._crit_edge212 ]
  %i.q = phi i32 [ %i.c, %.lr.ph219 ], [ %i.iv, %._crit_edge212 ] ; 2 uses
  %.0119217 = phi i32 [ 0, %.lr.ph219 ], [ %i.w, %._crit_edge212 ]
  %.0120216 = phi i32 [ -1, %.lr.ph219 ], [ %.1121.lcssa, %._crit_edge212 ] ; 2 uses
  %i.r = add nuw i32 %i.q, 1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !72
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val138 = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val138, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 2 uses
  %i.w = add i32 %.0119217, 1                     ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !73   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val143 = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.z = zext i32 %i.v to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.val143, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %.val148 = load ptr, ptr %i.ab, align 8, !tbaa !77 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %.val148, i64 %.idx
  %.not135190.not = icmp eq i32 %i.ad, 0
  br i1 %.not135190.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %i.ag = phi ptr [ %i.cd, %bb.j ], [ %i.x, %bb.b ] ; 2 uses
  %.0113191 = phi ptr [ %i.ce, %bb.j ], [ %.val148, %bb.b ] ; 4 uses
  %.val150 = load ptr, ptr %i.h, align 8, !tbaa !81 ; 2 uses
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
  %.val152.val = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ai = zext nneg i32 %.pre242 to i64           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val152.val, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !42
  %.not134 = icmp eq i8 %i.ak, 0
  br i1 %.not134, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph._crit_edge, %bb.c
  %.pre-phi244 = phi i64 [ %.pre243, %.lr.ph._crit_edge ], [ %i.ai, %bb.c ] ; 4 uses
  %.val153 = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %.val153.val, i64 %.pre-phi244 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !42  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 3
  br i1 %i.ao, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %.0113191, align 4, !tbaa !84
  %i.aq = trunc i32 %.pre to i8
  %i.ar = and i8 %i.aq, 1                         ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !42
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val16.i = load ptr, ptr %i.at, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %.pre-phi244
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !42
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !39
  %.val15.i = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.aw = getelementptr i8, ptr %.val15.i, i64 4
  %.val15.val.i = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %.val14.i = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.pre-phi244
  store i32 %.val15.val.i, ptr %i.ay, align 4, !tbaa !37
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.pre-phi244
  store i32 %i.ap, ptr %i.bb, align 4, !tbaa !37
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !49  ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8  ; 6 uses
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !36
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %solver_enqueue.exit

bb.f:                                             ; preds = %bb.e
  %i.bh = icmp ult i32 %i.be, 16
  br i1 %i.bh, label %vec_uint_reserve.exit.i.i, label %bb.g

vec_uint_reserve.exit.i.i:                        ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bj, i64 noundef 64) #18
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.g:                                             ; preds = %bb.f
  %.not.i9.i.i = icmp sgt i32 %i.be, 0
  br i1 %.not.i9.i.i, label %bb.h, label %solver_enqueue.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = shl nuw i32 %i.be, 1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  %i.bo = zext i32 %i.bl to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = tail call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bp) #18
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.h, %vec_uint_reserve.exit.i.i
  %.sink.i.i = phi i32 [ %i.bl, %bb.h ], [ 16, %vec_uint_reserve.exit.i.i ]
  store i32 %.sink.i.i, ptr %i.bc, align 8, !tbaa !36
  %.pre.i = load i32, ptr %i.bd, align 4, !tbaa !8
  br label %solver_enqueue.exit

solver_enqueue.exit:                              ; preds = %bb.e, %bb.g, %vec_uint_reserve.exit10.sink.split.i.i
  %i.br = phi i32 [ %i.be, %bb.e ], [ %i.be, %bb.g ], [ %.pre.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  store i32 %.pre, ptr %i.bv, align 4, !tbaa !37
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bd, align 4, !tbaa !8
  %.pre235 = load ptr, ptr %i.g, align 8, !tbaa !73
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.by = trunc i32 %.pre to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = xor i8 %i.an, %i.bz
  %i.cb = icmp eq i8 %i.ca, 1
  br i1 %i.cb, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.cc = load i32, ptr %.0113191, align 4, !tbaa !84
  br label %bb.ae

bb.j:                                             ; preds = %solver_enqueue.exit, %bb.i, %bb.c
  %i.cd = phi ptr [ %.pre235, %solver_enqueue.exit ], [ %i.ag, %bb.i ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0113191, i64 8 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  %.val142 = load ptr, ptr %i.cf, align 8, !tbaa !74
end_hunk_0
begin_hunk_1_@solver_search:bb.a
  %i.bmb = call ptr @realloc(ptr noundef %i.bkx, i64 noundef %i.bma) #18 ; 3 uses
  store ptr %i.bmb, ptr %i.bcl, align 8, !tbaa !31
  %.pre.i.i99.i.i = load i32, ptr %i.bca, align 8, !tbaa !26 ; 2 uses
  %.pre6.i.i100.i.i = add i32 %.pre.i.i99.i.i, %i.blp
  %.pre149.i = load i32, ptr %i.blg, align 4
  %.pre150.i = load i32, ptr %i.bln, align 4, !tbaa !32
  %.pre151.i = and i32 %.pre149.i, 1
  %.pre152.i = add nuw nsw i32 %.pre151.i, 3
  %.pre154.i = add i32 %.pre152.i, %.pre150.i
  br label %cdb_append.exit.i94.i.i

cdb_append.exit.i94.i.i:                          ; preds = %bb.fn, %bb.fm
  %.pre-phi155.i = phi i32 [ %.pre154.i, %bb.fn ], [ %i.blp, %bb.fm ]
  %i.bmc = phi ptr [ %i.bmb, %bb.fn ], [ %i.bkw, %bb.fm ] ; 3 uses
  %i.bmd = phi ptr [ %i.bmb, %bb.fn ], [ %i.bkx, %bb.fm ]
  %i.bme = phi i32 [ %i.blx, %bb.fn ], [ %i.bky, %bb.fm ]
  %.pre-phi.i.i95.i.i = phi i32 [ %.pre6.i.i100.i.i, %bb.fn ], [ %i.blq, %bb.fm ] ; 2 uses
  %i.bmf = phi i32 [ %.pre.i.i99.i.i, %bb.fn ], [ %i.bkz, %bb.fm ] ; 4 uses
  store i32 %.pre-phi.i.i95.i.i, ptr %i.bca, align 8, !tbaa !26
  %.not.i18.i96.i.i = icmp eq i32 %i.bmf, -1      ; 2 uses
  %i.bmg = zext i32 %i.bmf to i64
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.bmc, i64 %i.bmg
  %i.bmi = select i1 %.not.i18.i96.i.i, ptr %i.bmd, ptr %i.bmc
  %i.bmj = select i1 %.not.i18.i96.i.i, ptr null, ptr %i.bmh
  %i.bmk = shl i32 %.pre-phi155.i, 2
  %i.bml = zext i32 %i.bmk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bmj, ptr nonnull align 4 %i.blg, i64 %i.bml, i1 false)
  %i.bmm = load i32, ptr %i.blg, align 4
  %i.bmn = or i32 %i.bmm, 4
  store i32 %i.bmn, ptr %i.blg, align 4
  store i32 %i.bmf, ptr %i.bln, align 4, !tbaa !32
  %.pre150.i.i = load ptr, ptr %i.ba, align 8, !tbaa !46
  br label %clause_realloc.exit101.i.i

clause_realloc.exit101.i.i:                       ; preds = %cdb_append.exit.i94.i.i, %bb.fl
  %i.bmo = phi ptr [ %.pre150.i.i, %cdb_append.exit.i94.i.i ], [ %i.bkv, %bb.fl ] ; 2 uses
  %i.bmp = phi ptr [ %i.bmc, %cdb_append.exit.i94.i.i ], [ %i.bkw, %bb.fl ]
  %i.bmq = phi ptr [ %i.bmi, %cdb_append.exit.i94.i.i ], [ %i.bkx, %bb.fl ]
  %i.bmr = phi i32 [ %i.bme, %cdb_append.exit.i94.i.i ], [ %i.bky, %bb.fl ]
  %i.bms = phi i32 [ %.pre-phi.i.i95.i.i, %cdb_append.exit.i94.i.i ], [ %i.bkz, %bb.fl ]
  %storemerge.i92.i.i = phi i32 [ %i.bmf, %cdb_append.exit.i94.i.i ], [ %i.blk, %bb.fl ]
  store i32 %storemerge.i92.i.i, ptr %i.blb, align 4, !tbaa !37
  %indvars.iv.next144.i.i = add nuw nsw i64 %indvars.iv143.i.i, 1 ; 2 uses
  %i.bmt = getelementptr i8, ptr %i.bmo, i64 4
  %.val.i82.i = load i32, ptr %i.bmt, align 4, !tbaa !8
  %i.bmu = zext i32 %.val.i82.i to i64
  %i.bmv = icmp samesign ult i64 %indvars.iv.next144.i.i, %i.bmu
  br i1 %i.bmv, label %.lr.ph126.i.i, label %solver_garbage_collect.exit.i, !llvm.loop !177

solver_garbage_collect.exit.i:                    ; preds = %clause_realloc.exit101.i.i, %._crit_edge122.i.i
  %i.bmw = load ptr, ptr %i.m, align 8, !tbaa !12 ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 16
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !31
  call void @free(ptr noundef %i.bmy) #19
  call void @free(ptr noundef %i.bmw) #19
  store ptr %i.bca, ptr %i.m, align 8, !tbaa !12
  br label %solver_reduce_cdb.exit

solver_reduce_cdb.exit:                           ; preds = %bb.ev, %solver_garbage_collect.exit.i
  %i.bmz = load i32, ptr %i.bb, align 8, !tbaa !178
  %i.bna = zext i32 %i.bmz to i64
  %i.bnb = load i64, ptr %i.as, align 8, !tbaa !158
  %i.bnc = add nsw i64 %i.bnb, %i.bna             ; 2 uses
  store i64 %i.bnc, ptr %i.as, align 8, !tbaa !158
  %i.bnd = load i64, ptr %i.at, align 8, !tbaa !159
  %i.bne = mul nsw i64 %i.bnd, %i.bnc
  store i64 %i.bne, ptr %i.ar, align 8, !tbaa !157
  br label %bb.fo

bb.fo:                                            ; preds = %solver_reduce_cdb.exit, %bb.dv, %bb.du, %bb.dt
  %.val79210 = load ptr, ptr %i.e, align 8, !tbaa !48 ; 2 uses
  %i.bnf = getelementptr i8, ptr %.val79210, i64 4 ; 2 uses
  %.val79.val211 = load i32, ptr %i.bnf, align 4, !tbaa !8 ; 2 uses
  %i.bng = load ptr, ptr %i.bc, align 8, !tbaa !179 ; 2 uses
  %i.bnh = getelementptr i8, ptr %i.bng, i64 4
  %.val74212 = load i32, ptr %i.bnh, align 4, !tbaa !8
  %i.bni = icmp ult i32 %.val79.val211, %.val74212
  br i1 %i.bni, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.fo, %solver_analyze_final.exit
  %i.bnj = phi ptr [ %i.bsg, %solver_analyze_final.exit ], [ %i.bng, %bb.fo ] ; 3 uses
  %.val79254 = phi ptr [ %.val79, %solver_analyze_final.exit ], [ %.val79210, %bb.fo ] ; 8 uses
  %.val79.val214 = phi i32 [ %.val79.val, %solver_analyze_final.exit ], [ %.val79.val211, %bb.fo ] ; 5 uses
  %i.bnk = phi ptr [ %i.bsm, %solver_analyze_final.exit ], [ %i.bnf, %bb.fo ] ; 3 uses
  %i.bnl = getelementptr i8, ptr %i.bnj, i64 8
  %.val77 = load ptr, ptr %i.bnl, align 8, !tbaa !34
  %i.bnm = zext i32 %.val79.val214 to i64         ; 3 uses
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %i.bnm
  %i.bno = load i32, ptr %i.bnn, align 4, !tbaa !37 ; 5 uses
  %.val83 = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.bnp = getelementptr i8, ptr %.val83, i64 8
  %.val83.val = load ptr, ptr %i.bnp, align 8, !tbaa !51
  %i.bnq = trunc i32 %i.bno to i8
  %i.bnr = and i8 %i.bnq, 1
  %i.bns = lshr i32 %i.bno, 1
  %i.bnt = zext nneg i32 %i.bns to i64            ; 3 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %.val83.val, i64 %i.bnt
  %i.bnv = load i8, ptr %i.bnu, align 1, !tbaa !42
  %i.bnw = xor i8 %i.bnv, %i.bnr
  switch i8 %i.bnw, label %bb.ge [
    i8 0, label %bb.fp
    i8 1, label %bb.ft
  ]

bb.fp:                                            ; preds = %.lr.ph
  %i.bnx = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.bny = getelementptr i8, ptr %i.bnx, i64 4
  %.val = load i32, ptr %i.bny, align 4, !tbaa !8
  %i.bnz = load i32, ptr %.val79254, align 8, !tbaa !36
  %i.boa = icmp eq i32 %.val79.val214, %i.bnz
  br i1 %i.boa, label %bb.fq, label %solver_analyze_final.exit

bb.fq:                                            ; preds = %bb.fp
  %i.bob = icmp ult i32 %.val79.val214, 16
  br i1 %i.bob, label %vec_uint_reserve.exit.i, label %bb.fr

vec_uint_reserve.exit.i:                          ; preds = %bb.fq
  %i.boc = getelementptr inbounds nuw i8, ptr %.val79254, i64 8 ; 2 uses
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !34
  %i.boe = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bod, i64 noundef 64) #18
  store ptr %i.boe, ptr %i.boc, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i

bb.fr:                                            ; preds = %bb.fq
  %.not.i9.i = icmp sgt i32 %.val79.val214, 0
  br i1 %.not.i9.i, label %bb.fs, label %solver_analyze_final.exit

bb.fs:                                            ; preds = %bb.fr
  %i.bof = shl nuw i32 %.val79.val214, 1          ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %.val79254, i64 8 ; 2 uses
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !34
  %i.boi = zext i32 %i.bof to i64
  %i.boj = shl nuw nsw i64 %i.boi, 2
  %i.bok = call ptr @realloc(ptr noundef %i.boh, i64 noundef %i.boj) #18
  store ptr %i.bok, ptr %i.bog, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i

vec_uint_reserve.exit10.sink.split.i:             ; preds = %bb.fs, %vec_uint_reserve.exit.i
  %.sink.i = phi i32 [ %i.bof, %bb.fs ], [ 16, %vec_uint_reserve.exit.i ]
  store i32 %.sink.i, ptr %.val79254, align 8, !tbaa !36
  %.pre253 = load i32, ptr %i.bnk, align 4, !tbaa !8
  %.val79.pre = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre256.a = load ptr, ptr %i.bc, align 8, !tbaa !179
  %.pre257 = zext i32 %.pre253 to i64
  br label %solver_analyze_final.exit

bb.ft:                                            ; preds = %.lr.ph
  %i.bol = xor i32 %i.bno, 1
  %i.bom = load ptr, ptr %i.bd, align 8, !tbaa !180 ; 4 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 4 ; 4 uses
  store i32 0, ptr %i.bon, align 4, !tbaa !8
  %i.boo = load i32, ptr %i.bom, align 8, !tbaa !36
  %i.bop = icmp eq i32 %i.boo, 0
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bom, i64 8 ; 2 uses
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !34 ; 2 uses
  br i1 %i.bop, label %vec_uint_reserve.exit10.sink.split.i.i120, label %vec_uint_push_back.exit.i112

vec_uint_reserve.exit10.sink.split.i.i120:        ; preds = %bb.ft
  %i.bos = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bor, i64 noundef 64) #18 ; 2 uses
  store ptr %i.bos, ptr %i.boq, align 8, !tbaa !34
  store i32 16, ptr %i.bom, align 8, !tbaa !36
  %.pre58.i = load i32, ptr %i.bon, align 4, !tbaa !8
  %i.bot = zext i32 %.pre58.i to i64
  %.val42.i.pre = load ptr, ptr %i.e, align 8, !tbaa !48
  br label %vec_uint_push_back.exit.i112

vec_uint_push_back.exit.i112:                     ; preds = %vec_uint_reserve.exit10.sink.split.i.i120, %bb.ft
  %.val42.i = phi ptr [ %.val42.i.pre, %vec_uint_reserve.exit10.sink.split.i.i120 ], [ %.val79254, %bb.ft ]
  %i.bou = phi i64 [ %i.bot, %vec_uint_reserve.exit10.sink.split.i.i120 ], [ 0, %bb.ft ]
  %i.bov = phi ptr [ %i.bos, %vec_uint_reserve.exit10.sink.split.i.i120 ], [ %i.bor, %bb.ft ]
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.bov, i64 %i.bou
  store i32 %i.bol, ptr %i.bow, align 4, !tbaa !37
  %i.box = load i32, ptr %i.bon, align 4, !tbaa !8
  %i.boy = add i32 %i.box, 1
  store i32 %i.boy, ptr %i.bon, align 4, !tbaa !8
  %i.boz = getelementptr i8, ptr %.val42.i, i64 4
  %.val42.val.i = load i32, ptr %i.boz, align 4, !tbaa !8
  %i.bpa = icmp eq i32 %.val42.val.i, 0
  br i1 %i.bpa, label %.thread161, label %bb.fu

bb.fu:                                            ; preds = %vec_uint_push_back.exit.i112
  %i.bpb = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.bpc = getelementptr i8, ptr %i.bpb, i64 8
  %.val46.i = load ptr, ptr %i.bpc, align 8, !tbaa !51
  %i.bpd = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %i.bnt
  store i8 1, ptr %i.bpd, align 1, !tbaa !42
  %i.bpe = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.bpf = getelementptr i8, ptr %i.bpe, i64 4
  %.val.i113 = load i32, ptr %i.bpf, align 4, !tbaa !8 ; 2 uses
  %i.bpg = load ptr, ptr %i.e, align 8, !tbaa !48 ; 2 uses
  %i.bph = getelementptr i8, ptr %i.bpg, i64 8
  %.val4055.i = load ptr, ptr %i.bph, align 8, !tbaa !34
  %i.bpi = load i32, ptr %.val4055.i, align 4, !tbaa !37
  %i.bpj = icmp ugt i32 %.val.i113, %i.bpi
  br i1 %i.bpj, label %.lr.ph56.i.preheader, label %._crit_edge.i114

.lr.ph56.i.preheader:                             ; preds = %bb.fu
  %i.bpk = zext i32 %.val.i113 to i64
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %bb.gd
  %indvars.iv = phi i64 [ %i.bpk, %.lr.ph56.i.preheader ], [ %i.bpl, %bb.gd ]
  %2 = phi ptr [ %i.bpg, %.lr.ph56.i.preheader ], [ %i.brz, %bb.gd ]
  %i.bpl = add i64 %indvars.iv, -1                ; 3 uses
  %i.bpm = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.bpn = getelementptr i8, ptr %i.bpm, i64 8
  %.val39.i = load ptr, ptr %i.bpn, align 8, !tbaa !34
  %i.bpo = getelementptr inbounds nuw [4 x i8], ptr %.val39.i, i64 %i.bpl
  %i.bpp = load i32, ptr %i.bpo, align 4, !tbaa !37 ; 2 uses
  %i.bpq = lshr i32 %i.bpp, 1
  %i.bpr = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.bps = getelementptr i8, ptr %i.bpr, i64 8
  %.val47.i = load ptr, ptr %i.bps, align 8, !tbaa !51
  %i.bpt = zext nneg i32 %i.bpq to i64            ; 3 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %.val47.i, i64 %i.bpt
  %i.bpv = load i8, ptr %i.bpu, align 1, !tbaa !42
  %.not.i115 = icmp eq i8 %i.bpv, 0
  br i1 %.not.i115, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph56.i
  %.val48.i = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.bpw = getelementptr i8, ptr %.val48.i, i64 8
  %.val48.val.i = load ptr, ptr %i.bpw, align 8, !tbaa !34
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %.val48.val.i, i64 %i.bpt
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !37 ; 2 uses
  %i.bpz = icmp eq i32 %i.bpy, -1
  br i1 %i.bpz, label %bb.fw, label %clause_fetch.exit.i116

bb.fw:                                            ; preds = %bb.fv
  %i.bqa = load ptr, ptr %i.bd, align 8, !tbaa !180 ; 6 uses
  %i.bqb = xor i32 %i.bpp, 1
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqa, i64 4 ; 4 uses
  %i.bqd = load i32, ptr %i.bqc, align 4, !tbaa !8 ; 6 uses
  %i.bqe = load i32, ptr %i.bqa, align 8, !tbaa !36
  %i.bqf = icmp eq i32 %i.bqd, %i.bqe
  br i1 %i.bqf, label %bb.fx, label %vec_uint_push_back.exit53.i

bb.fx:                                            ; preds = %bb.fw
  %i.bqg = icmp ult i32 %i.bqd, 16
  br i1 %i.bqg, label %vec_uint_reserve.exit.i52.i, label %bb.fy

vec_uint_reserve.exit.i52.i:                      ; preds = %bb.fx
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8 ; 2 uses
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !34
  %i.bqj = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bqi, i64 noundef 64) #18
  store ptr %i.bqj, ptr %i.bqh, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i50.i

bb.fy:                                            ; preds = %bb.fx
  %.not.i9.i49.i = icmp sgt i32 %i.bqd, 0
  br i1 %.not.i9.i49.i, label %bb.fz, label %vec_uint_push_back.exit53.i

bb.fz:                                            ; preds = %bb.fy
  %i.bqk = shl nuw i32 %i.bqd, 1                  ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8 ; 2 uses
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !34
  %i.bqn = zext i32 %i.bqk to i64
  %i.bqo = shl nuw nsw i64 %i.bqn, 2
  %i.bqp = call ptr @realloc(ptr noundef %i.bqm, i64 noundef %i.bqo) #18
  store ptr %i.bqp, ptr %i.bql, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i50.i

vec_uint_reserve.exit10.sink.split.i50.i:         ; preds = %bb.fz, %vec_uint_reserve.exit.i52.i
  %.sink.i51.i = phi i32 [ %i.bqk, %bb.fz ], [ 16, %vec_uint_reserve.exit.i52.i ]
  store i32 %.sink.i51.i, ptr %i.bqa, align 8, !tbaa !36
  %.pre60.i = load i32, ptr %i.bqc, align 4, !tbaa !8
  br label %vec_uint_push_back.exit53.i

vec_uint_push_back.exit53.i:                      ; preds = %vec_uint_reserve.exit10.sink.split.i50.i, %bb.fy, %bb.fw
  %i.bqq = phi i32 [ %i.bqd, %bb.fw ], [ %i.bqd, %bb.fy ], [ %.pre60.i, %vec_uint_reserve.exit10.sink.split.i50.i ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !34
  %i.bqt = zext i32 %i.bqq to i64
  %i.bqu = getelementptr inbounds nuw [4 x i8], ptr %i.bqs, i64 %i.bqt
  store i32 %i.bqb, ptr %i.bqu, align 4, !tbaa !37
  %i.bqv = load i32, ptr %i.bqc, align 4, !tbaa !8
  %i.bqw = add i32 %i.bqv, 1
  store i32 %i.bqw, ptr %i.bqc, align 4, !tbaa !8
  br label %.loopexit.i

clause_fetch.exit.i116:                           ; preds = %bb.fv
  %.val37.i = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.bqx = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !31
  %i.bqz = zext i32 %i.bpy to i64
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.bqy, i64 %i.bqz ; 2 uses
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 4 ; 2 uses
  %i.brc = load i32, ptr %i.brb, align 4, !tbaa !32 ; 3 uses
  %i.brd = icmp ne i32 %i.brc, 2                  ; 2 uses
  %i.bre = zext i1 %i.brd to i32
  %i.brf = icmp ugt i32 %i.brc, %i.bre
  br i1 %i.brf, label %.lr.ph.i117, label %.loopexit.i

.lr.ph.i117:                                      ; preds = %clause_fetch.exit.i116
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bra, i64 8
  %i.brh = zext i1 %i.brd to i64
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gc, %.lr.ph.i117
  %i.bri = phi i32 [ %i.brc, %.lr.ph.i117 ], [ %i.brt, %bb.gc ]
  %indvars.iv.i118 = phi i64 [ %i.brh, %.lr.ph.i117 ], [ %indvars.iv.next.i119, %bb.gc ] ; 2 uses
  %i.brj = getelementptr inbounds nuw [4 x i8], ptr %i.brg, i64 %indvars.iv.i118
  %i.brk = load i32, ptr %i.brj, align 4, !tbaa !42
  %.val41.i = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.brl = getelementptr i8, ptr %.val41.i, i64 8
  %.val41.val.i = load ptr, ptr %i.brl, align 8, !tbaa !34
  %i.brm = lshr i32 %i.brk, 1
  %i.brn = zext nneg i32 %i.brm to i64            ; 2 uses
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %.val41.val.i, i64 %i.brn
  %i.brp = load i32, ptr %i.bro, align 4, !tbaa !37
  %.not36.i = icmp eq i32 %i.brp, 0
  br i1 %.not36.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.brq = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.brr = getelementptr i8, ptr %i.brq, i64 8
  %.val45.i = load ptr, ptr %i.brr, align 8, !tbaa !51
  %i.brs = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %i.brn
  store i8 1, ptr %i.brs, align 1, !tbaa !42
  %.pre59.i = load i32, ptr %i.brb, align 4, !tbaa !32
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.brt = phi i32 [ %i.bri, %bb.ga ], [ %.pre59.i, %bb.gb ] ; 2 uses
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %i.bru = zext i32 %i.brt to i64
  %i.brv = icmp samesign ult i64 %indvars.iv.next.i119, %i.bru
  br i1 %i.brv, label %bb.ga, label %.loopexit.i, !llvm.loop !181

.loopexit.i:                                      ; preds = %bb.gc, %clause_fetch.exit.i116, %vec_uint_push_back.exit53.i
  %i.brw = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.brx = getelementptr i8, ptr %i.brw, i64 8
  %.val44.i = load ptr, ptr %i.brx, align 8, !tbaa !51
  %i.bry = getelementptr inbounds nuw i8, ptr %.val44.i, i64 %i.bpt
  store i8 0, ptr %i.bry, align 1, !tbaa !42
  %.pre61.i = load ptr, ptr %i.e, align 8, !tbaa !48
  br label %bb.gd

bb.gd:                                            ; preds = %.loopexit.i, %.lr.ph56.i
  %i.brz = phi ptr [ %.pre61.i, %.loopexit.i ], [ %2, %.lr.ph56.i ] ; 2 uses
  %i.bsa = getelementptr i8, ptr %i.brz, i64 8
  %.val40.i = load ptr, ptr %i.bsa, align 8, !tbaa !34
  %i.bsb = load i32, ptr %.val40.i, align 4, !tbaa !37
  %i.bsc = zext i32 %i.bsb to i64
  %.wide = icmp ugt i64 %i.bpl, %i.bsc
  br i1 %.wide, label %.lr.ph56.i, label %._crit_edge.i114, !llvm.loop !182

._crit_edge.i114:                                 ; preds = %bb.gd, %bb.fu
  %i.bsd = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.bse = getelementptr i8, ptr %i.bsd, i64 8
  %.val43.i = load ptr, ptr %i.bse, align 8, !tbaa !51
  %i.bsf = getelementptr inbounds nuw i8, ptr %.val43.i, i64 %i.bnt
  store i8 0, ptr %i.bsf, align 1, !tbaa !42
  br label %.thread161

solver_analyze_final.exit:                        ; preds = %vec_uint_reserve.exit10.sink.split.i, %bb.fr, %bb.fp
  %.pre-phi = phi i64 [ %.pre257, %vec_uint_reserve.exit10.sink.split.i ], [ %i.bnm, %bb.fr ], [ %i.bnm, %bb.fp ]
  %i.bsg = phi ptr [ %.pre256.a, %vec_uint_reserve.exit10.sink.split.i ], [ %i.bnj, %bb.fr ], [ %i.bnj, %bb.fp ] ; 2 uses
  %.val79 = phi ptr [ %.val79.pre, %vec_uint_reserve.exit10.sink.split.i ], [ %.val79254, %bb.fr ], [ %.val79254, %bb.fp ] ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %.val79254, i64 8
  %i.bsi = load ptr, ptr %i.bsh, align 8, !tbaa !34
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %i.bsi, i64 %.pre-phi
  store i32 %.val, ptr %i.bsj, align 4, !tbaa !37
  %i.bsk = load i32, ptr %i.bnk, align 4, !tbaa !8
  %i.bsl = add i32 %i.bsk, 1
  store i32 %i.bsl, ptr %i.bnk, align 4, !tbaa !8
  %i.bsm = getelementptr i8, ptr %.val79, i64 4   ; 2 uses
  %.val79.val = load i32, ptr %i.bsm, align 4, !tbaa !8 ; 2 uses
  %i.bsn = getelementptr i8, ptr %i.bsg, i64 4
  %.val74 = load i32, ptr %i.bsn, align 4, !tbaa !8
  %i.bso = icmp ult i32 %.val79.val, %.val74
  br i1 %i.bso, label %.lr.ph, label %.thread

bb.ge:                                            ; preds = %.lr.ph
  %i.bsp = icmp eq i32 %i.bno, -1
  br i1 %i.bsp, label %.thread, label %bb.go

.thread:                                          ; preds = %solver_analyze_final.exit, %bb.fo, %bb.ge
  %i.bsq = load i64, ptr %i.be, align 8, !tbaa !183
  %i.bsr = add nsw i64 %i.bsq, 1
  store i64 %i.bsr, ptr %i.be, align 8, !tbaa !183
  br label %bb.gf

bb.gf:                                            ; preds = %.backedge, %.thread
  %.0.i121 = phi i32 [ -1, %.thread ], [ %.0.i121.be, %.backedge ] ; 4 uses
  %i.bss = icmp eq i32 %.0.i121, -1
  br i1 %i.bss, label %.critedge.i123, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %.val15.i = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.bst = getelementptr i8, ptr %.val15.i, i64 8
  %.val15.val.i = load ptr, ptr %i.bst, align 8, !tbaa !51
  %i.bsu = zext i32 %.0.i121 to i64
  %i.bsv = getelementptr inbounds nuw i8, ptr %.val15.val.i, i64 %i.bsu
  %i.bsw = load i8, ptr %i.bsv, align 1, !tbaa !42
  %.not.i122 = icmp eq i8 %i.bsw, 3
  br i1 %.not.i122, label %solver_decide.exit, label %.critedge.i123

.critedge.i123:                                   ; preds = %bb.gg, %bb.gf
  %i.bsx = load ptr, ptr %i.y, align 8, !tbaa !55 ; 3 uses
  %i.bsy = getelementptr i8, ptr %i.bsx, i64 8
  %.val16.i124 = load ptr, ptr %i.bsy, align 8, !tbaa !64 ; 2 uses
  %i.bsz = getelementptr i8, ptr %.val16.i124, i64 4 ; 4 uses
  %.val16.val.i = load i32, ptr %i.bsz, align 4, !tbaa !8 ; 2 uses
end_hunk_1
