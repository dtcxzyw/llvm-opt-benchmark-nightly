Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lgc?download=true
inline.NumInlined: 113
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@freeobj:bb.a
  %i.ah = icmp eq i8 %i.ag, -3
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.aq = add i64 %i.ap, 1
  %i.ar = tail call ptr %i.aj(ptr noundef %i.al, ptr noundef %i.an, i64 noundef %i.aq, i64 noundef 0) #8 ; 0 uses
  %.pre = load i8, ptr %i.af, align 1, !tbaa !83
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi i8 [ %.pre, %bb.l ], [ %i.ag, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !37
  %i.av = sext i8 %i.as to i32
  %i.aw = tail call i64 @luaS_sizelngstr(i64 noundef %i.au, i32 noundef %i.av) #8
  tail call void @luaM_free_(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.aw) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %freeupval.exit, %bb.b
  ret void
}

declare hidden void @luaF_freeproto(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @luaM_free_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden void @luaH_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @luaE_freethread(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @luaS_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @luaF_unlinkupval(ptr noundef) local_unnamed_addr #3

declare hidden i64 @luaO_applyparam(i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @atomic(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 107
  store i8 2, ptr %i.e, align 1, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !101
  %i.h = and i8 %i.g, 24
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %i.b, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i8, ptr %i.i, align 8, !tbaa !63
  %i.k = and i8 %i.j, 64
  %.not42 = icmp eq i8 %i.k, 0
  br i1 %.not42, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %i.p = and i8 %i.o, 24
  %.not43 = icmp eq i8 %i.p, 0
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %i.b, ptr noundef nonnull %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call fastcc void @markmt(ptr noundef nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 12 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not2.i = icmp eq ptr %i.r, null
  br i1 %.not2.i, label %propagateall.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.s = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.b) ; 0 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %propagateall.exit, label %.lr.ph.i

propagateall.exit:                                ; preds = %.lr.ph.i, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !102  ; 2 uses
  %.not28.i = icmp eq ptr %i.v, null
  br i1 %.not28.i, label %propagateall.exit49, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %propagateall.exit, %.loopexit.i
  %i.w = phi ptr [ %i.at, %.loopexit.i ], [ %i.v, %propagateall.exit ] ; 6 uses
  %.01729.i = phi ptr [ %.1.i, %.loopexit.i ], [ %i.u, %propagateall.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !101
  %i.z = and i8 %i.y, 24
  %.not19.i = icmp eq i8 %i.z, 0
  br i1 %.not19.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph30.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85
  %.not20.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.g, %.lr.ph30.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86
  store ptr %i.ae, ptr %.01729.i, align 8, !tbaa !102
  store ptr %i.w, ptr %i.ad, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.025.i = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %.not2126.i = icmp eq ptr %.025.i, null
  br i1 %.not2126.i, label %.loopexit.i, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.i, %bb.m
  %.027.i = phi ptr [ %.0.i, %bb.m ], [ %.025.i, %bb.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.027.i, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !39
  %i.ai = and i8 %i.ah, 24
  %.not22.i = icmp eq i8 %i.ai, 0
  br i1 %.not22.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i44
  %i.aj = getelementptr inbounds nuw i8, ptr %.027.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 8, !tbaa !40
  %i.an = and i8 %i.am, 64
  %.not23.i = icmp eq i8 %i.an, 0
  br i1 %.not23.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !32
  %i.ar = and i8 %i.aq, 24
  %.not24.i = icmp eq i8 %i.ar, 0
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @reallymarkobject(ptr noundef %i.b, ptr noundef nonnull %i.ao)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i44
  %i.as = getelementptr inbounds nuw i8, ptr %.027.i, i64 24
  %.0.i = load ptr, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %.not21.i = icmp eq ptr %.0.i, null
  br i1 %.not21.i, label %.loopexit.i, label %.lr.ph.i44

.loopexit.i:                                      ; preds = %bb.m, %bb.i, %bb.h
  %.1.i = phi ptr [ %i.ac, %bb.h ], [ %.01729.i, %bb.i ], [ %.01729.i, %bb.m ] ; 2 uses
  %i.at = load ptr, ptr %.1.i, align 8, !tbaa !102 ; 2 uses
  %.not.i45 = icmp eq ptr %i.at, null
  br i1 %.not.i45, label %remarkupvals.exit, label %.lr.ph30.i

remarkupvals.exit:                                ; preds = %.loopexit.i
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.au = icmp eq ptr %.pre, null
  br i1 %i.au, label %propagateall.exit49, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %remarkupvals.exit, %.lr.ph.i47
  %i.av = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.b) ; 0 uses
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not.i48 = icmp eq ptr %i.aw, null
  br i1 %.not.i48, label %propagateall.exit49, label %.lr.ph.i47

propagateall.exit49:                              ; preds = %.lr.ph.i47, %propagateall.exit, %remarkupvals.exit
  store ptr %i.d, ptr %i.q, align 8, !tbaa !64
  %.not2.i50 = icmp eq ptr %i.d, null
  br i1 %.not2.i50, label %propagateall.exit53, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %propagateall.exit49, %.lr.ph.i51
  %i.ax = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.b) ; 0 uses
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not.i52 = icmp eq ptr %i.ay, null
  br i1 %.not.i52, label %propagateall.exit53, label %.lr.ph.i51

propagateall.exit53:                              ; preds = %.lr.ph.i51, %propagateall.exit49
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 5 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %propagateall.exit53
  %.011.i = phi i1 [ true, %propagateall.exit53 ], [ %2, %._crit_edge.i ] ; 2 uses
  %.011.i.a = phi i32 [ 0, %propagateall.exit53 ], [ %1, %._crit_edge.i ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  store ptr null, ptr %i.az, align 8, !tbaa !87
  %.not16.i = icmp eq ptr %i.ba, null
  br i1 %.not16.i, label %convergeephemerons.exit, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.n, %propagateall.exit.i
  %.018.i = phi ptr [ %i.bc, %propagateall.exit.i ], [ %i.ba, %bb.n ] ; 3 uses
  %.01217.i = phi i32 [ %.1.i55, %propagateall.exit.i ], [ 0, %bb.n ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.018.i, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !88 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i, i64 9 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !49
  %i.bf = or i8 %i.be, 32
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !49
  %i.bg = tail call fastcc i32 @traverseephemeron(ptr noundef %i.b, ptr noundef nonnull %.018.i, i32 noundef %.011.i.a)
  %.not15.i = icmp eq i32 %i.bg, 0
  br i1 %.not15.i, label %propagateall.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i54
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not2.i.i = icmp eq ptr %i.bh, null
  br i1 %.not2.i.i, label %propagateall.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %i.bi = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.b) ; 0 uses
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %propagateall.exit.i, label %.lr.ph.i.i

propagateall.exit.i:                              ; preds = %.lr.ph.i.i, %bb.o, %.lr.ph.i54
  %.1.i55 = phi i32 [ %.01217.i, %.lr.ph.i54 ], [ 1, %bb.o ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.not.i56 = icmp eq ptr %i.bc, null
  br i1 %.not.i56, label %._crit_edge.i, label %.lr.ph.i54

._crit_edge.i:                                    ; preds = %propagateall.exit.i
  %i.bk = icmp eq i32 %.1.i55, 0
  %1 = zext i1 %.011.i to i32
  %2 = xor i1 %.011.i, true
  br i1 %i.bk, label %convergeephemerons.exit, label %bb.n

convergeephemerons.exit:                          ; preds = %bb.n, %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89
  tail call fastcc void @clearbyvalues(ptr noundef %i.b, ptr noundef %i.bm, ptr noundef null)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !90
  tail call fastcc void @clearbyvalues(ptr noundef %i.b, ptr noundef %i.bo, ptr noundef null)
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !89
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !90
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %convergeephemerons.exit
  %.0.i.i = phi ptr [ %i.br, %convergeephemerons.exit ], [ %i.bs, %bb.p ] ; 2 uses
  %i.bs = load ptr, ptr %.0.i.i, align 8, !tbaa !50 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i57, label %findlast.exit.preheader.i, label %bb.p

findlast.exit.preheader.i:                        ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !50 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !60 ; 2 uses
  %.not21.i58 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not21.i58, label %separatetobefnz.exit, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %findlast.exit.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %findlast.exit.i, %.lr.ph.i59
  %i.by = phi ptr [ %i.cg, %findlast.exit.i ], [ %i.bw, %.lr.ph.i59 ]
  %i.bz = phi ptr [ %i.ch, %findlast.exit.i ], [ %i.bv, %.lr.ph.i59 ] ; 7 uses
  %.023.i = phi ptr [ %.1.i60, %findlast.exit.i ], [ %.0.i.i, %.lr.ph.i59 ] ; 3 uses
  %.01822.i = phi ptr [ %.119.i, %findlast.exit.i ], [ %i.bt, %.lr.ph.i59 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = and i8 %i.cb, 24
  %.not25.i = icmp eq i8 %i.cc, 0
  br i1 %.not25.i, label %findlast.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !61
  %i.ce = icmp eq ptr %i.bz, %i.cd
  %.pre27.i = load ptr, ptr %i.bz, align 8, !tbaa !51 ; 2 uses
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %.pre27.i, ptr %i.bx, align 8, !tbaa !61
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %.pre27.i, ptr %.01822.i, align 8, !tbaa !50
  %i.cf = load ptr, ptr %.023.i, align 8, !tbaa !50
  store ptr %i.cf, ptr %i.bz, align 8, !tbaa !51
  store ptr %i.bz, ptr %.023.i, align 8, !tbaa !50
  %.pre28.i = load ptr, ptr %i.bu, align 8, !tbaa !60
  br label %findlast.exit.i

findlast.exit.i:                                  ; preds = %bb.s, %.lr.ph.split.i
  %i.cg = phi ptr [ %.pre28.i, %bb.s ], [ %i.by, %.lr.ph.split.i ] ; 2 uses
  %.119.i = phi ptr [ %.01822.i, %bb.s ], [ %i.bz, %.lr.ph.split.i ] ; 2 uses
  %.1.i60 = phi ptr [ %i.bz, %bb.s ], [ %.023.i, %.lr.ph.split.i ]
  %i.ch = load ptr, ptr %.119.i, align 8, !tbaa !50 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i61, label %separatetobefnz.exit, label %.lr.ph.split.i

separatetobefnz.exit:                             ; preds = %findlast.exit.i, %findlast.exit.preheader.i
  %.07.i = load ptr, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.not8.i = icmp eq ptr %.07.i, null
  br i1 %.not8.i, label %markbeingfnz.exit, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %separatetobefnz.exit, %bb.u
  %.09.i = phi ptr [ %.0.i63, %bb.u ], [ %.07.i, %separatetobefnz.exit ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !32
  %i.ck = and i8 %i.cj, 24
  %.not6.i = icmp eq i8 %i.ck, 0
  br i1 %.not6.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i62
  tail call fastcc void @reallymarkobject(ptr noundef %i.b, ptr noundef nonnull %.09.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i62
  %.0.i63 = load ptr, ptr %.09.i, align 8, !tbaa !50 ; 2 uses
  %.not.i64 = icmp eq ptr %.0.i63, null
  br i1 %.not.i64, label %markbeingfnz.exit, label %.lr.ph.i62

markbeingfnz.exit:                                ; preds = %bb.u, %separatetobefnz.exit
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not2.i66 = icmp eq ptr %i.cl, null
  br i1 %.not2.i66, label %propagateall.exit70.preheader, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %markbeingfnz.exit, %.lr.ph.i67
  %i.cm = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.b) ; 0 uses
  %i.cn = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not.i68 = icmp eq ptr %i.cn, null
  br i1 %.not.i68, label %propagateall.exit70.preheader, label %.lr.ph.i67

propagateall.exit70.preheader:                    ; preds = %.lr.ph.i67, %markbeingfnz.exit
  br label %propagateall.exit70

propagateall.exit70:                              ; preds = %propagateall.exit70.preheader, %._crit_edge.i83
  %.011.i71 = phi i1 [ %4, %._crit_edge.i83 ], [ true, %propagateall.exit70.preheader ] ; 2 uses
  %.011.i71.a = phi i32 [ %3, %._crit_edge.i83 ], [ 0, %propagateall.exit70.preheader ]
  %i.co = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  store ptr null, ptr %i.az, align 8, !tbaa !87
  %.not16.i72 = icmp eq ptr %i.co, null
  br i1 %.not16.i72, label %clearbykeys.exit, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %propagateall.exit70, %propagateall.exit.i80
  %.018.i74 = phi ptr [ %i.cq, %propagateall.exit.i80 ], [ %i.co, %propagateall.exit70 ] ; 3 uses
  %.01217.i75 = phi i32 [ %.1.i81, %propagateall.exit.i80 ], [ 0, %propagateall.exit70 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.018.i74, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !88 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.018.i74, i64 9 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !49
  %i.ct = or i8 %i.cs, 32
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !49
  %i.cu = tail call fastcc i32 @traverseephemeron(ptr noundef %i.b, ptr noundef nonnull %.018.i74, i32 noundef %.011.i71.a)
  %.not15.i76 = icmp eq i32 %i.cu, 0
  br i1 %.not15.i76, label %propagateall.exit.i80, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i73
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not2.i.i77 = icmp eq ptr %i.cv, null
  br i1 %.not2.i.i77, label %propagateall.exit.i80, label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %bb.v, %.lr.ph.i.i78
  %i.cw = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.b) ; 0 uses
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not.i.i79 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i79, label %propagateall.exit.i80, label %.lr.ph.i.i78

propagateall.exit.i80:                            ; preds = %.lr.ph.i.i78, %bb.v, %.lr.ph.i73
  %.1.i81 = phi i32 [ %.01217.i75, %.lr.ph.i73 ], [ 1, %bb.v ], [ 1, %.lr.ph.i.i78 ] ; 2 uses
  %.not.i82 = icmp eq ptr %i.cq, null
  br i1 %.not.i82, label %._crit_edge.i83, label %.lr.ph.i73

._crit_edge.i83:                                  ; preds = %propagateall.exit.i80
  %i.cy = icmp eq i32 %.1.i81, 0
  %3 = zext i1 %.011.i71 to i32
  %4 = xor i1 %.011.i71, true
  br i1 %i.cy, label %convergeephemerons.exit84, label %propagateall.exit70

convergeephemerons.exit84:                        ; preds = %._crit_edge.i83
  %.pr = load ptr, ptr %i.az, align 8, !tbaa !87  ; 2 uses
  %.not22.i85 = icmp eq ptr %.pr, null
  br i1 %.not22.i85, label %clearbykeys.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %convergeephemerons.exit84, %._crit_edge.i89
  %.01523.i = phi ptr [ %i.ec, %._crit_edge.i89 ], [ %.pr, %convergeephemerons.exit84 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01523.i, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !91 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.01523.i, i64 11
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !92
  %i.dd = zext nneg i8 %i.dc to i64
  %.idx.i = shl nuw i64 24, %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i
  br label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %clearkey.exit.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.dz, %clearkey.exit.i ], [ %i.da, %.lr.ph.preheader.i ] ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.021.i, i64 9 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !37
  %i.dh = and i8 %i.dg, 64
  %.not16.i87 = icmp eq i8 %i.dh, 0
  br i1 %.not16.i87, label %iscleared.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i86
  %i.di = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !37 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %iscleared.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load <2 x i8>, ptr %i.dl, align 8, !tbaa !37
  %i.dn = and <2 x i8> %i.dm, <i8 15, i8 24>
  %i.do = icmp eq <2 x i8> %i.dn, <i8 4, i8 0>    ; 3 uses
  %i.dp = extractelement <2 x i1> %i.do, i64 0
  br i1 %i.dp, label %bb.y, label %iscleared.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dq = extractelement <2 x i1> %i.do, i64 1
  br i1 %i.dq, label %iscleared.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @reallymarkobject(ptr noundef %i.b, ptr noundef nonnull %i.dj)
  br label %iscleared.exit.thread.i

iscleared.exit.i:                                 ; preds = %bb.x
  %i.dr = extractelement <2 x i1> %i.do, i64 1
  br i1 %i.dr, label %iscleared.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %iscleared.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store i8 16, ptr %i.ds, align 8, !tbaa !37
  br label %iscleared.exit.thread.i

iscleared.exit.thread.i:                          ; preds = %bb.aa, %iscleared.exit.i, %bb.z, %bb.y, %bb.w, %.lr.ph.i86
  %i.dt = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !37
  %i.dv = and i8 %i.du, 15
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.ab, label %clearkey.exit.i

bb.ab:                                            ; preds = %iscleared.exit.thread.i
  %i.dx = load i8, ptr %i.df, align 1, !tbaa !37
  %i.dy = and i8 %i.dx, 64
  %.not.i18.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i18.i, label %clearkey.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 11, ptr %i.df, align 1, !tbaa !37
  br label %clearkey.exit.i

clearkey.exit.i:                                  ; preds = %bb.ac, %bb.ab, %iscleared.exit.thread.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.021.i, i64 24 ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.de
  br i1 %i.ea, label %.lr.ph.i86, label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %clearkey.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.01523.i, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !88 ; 2 uses
  %.not.i90 = icmp eq ptr %i.ec, null
  br i1 %.not.i90, label %clearbykeys.exit, label %.lr.ph.preheader.i

clearbykeys.exit:                                 ; preds = %propagateall.exit70, %._crit_edge.i89, %convergeephemerons.exit84
  %i.ed = load ptr, ptr %i.bn, align 8, !tbaa !90 ; 2 uses
  %.not22.i91 = icmp eq ptr %i.ed, null
  br i1 %.not22.i91, label %clearbykeys.exit105, label %.lr.ph.preheader.i92

.lr.ph.preheader.i92:                             ; preds = %clearbykeys.exit, %._crit_edge.i102
  %.01523.i93 = phi ptr [ %i.fh, %._crit_edge.i102 ], [ %i.ed, %clearbykeys.exit ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01523.i93, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !91 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01523.i93, i64 11
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !92
  %i.ei = zext nneg i8 %i.eh to i64
  %.idx.i94 = shl nuw i64 24, %i.ei
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i94
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %clearkey.exit.i101, %.lr.ph.preheader.i92
  %.021.i96 = phi ptr [ %i.fe, %clearkey.exit.i101 ], [ %i.ef, %.lr.ph.preheader.i92 ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.021.i96, i64 9 ; 3 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !37
  %i.em = and i8 %i.el, 64
  %.not16.i97 = icmp eq i8 %i.em, 0
  br i1 %.not16.i97, label %iscleared.exit.thread.i100, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i95
  %i.en = getelementptr inbounds nuw i8, ptr %.021.i96, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !37 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %iscleared.exit.thread.i100, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load <2 x i8>, ptr %i.eq, align 8, !tbaa !37
  %i.es = and <2 x i8> %i.er, <i8 15, i8 24>
  %i.et = icmp eq <2 x i8> %i.es, <i8 4, i8 0>    ; 3 uses
  %i.eu = extractelement <2 x i1> %i.et, i64 0
  br i1 %i.eu, label %bb.af, label %iscleared.exit.i99

bb.af:                                            ; preds = %bb.ae
  %i.ev = extractelement <2 x i1> %i.et, i64 1
  br i1 %i.ev, label %iscleared.exit.thread.i100, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @reallymarkobject(ptr noundef %i.b, ptr noundef nonnull %i.eo)
  br label %iscleared.exit.thread.i100

iscleared.exit.i99:                               ; preds = %bb.ae
  %i.ew = extractelement <2 x i1> %i.et, i64 1
  br i1 %i.ew, label %iscleared.exit.thread.i100, label %bb.ah

bb.ah:                                            ; preds = %iscleared.exit.i99
  %i.ex = getelementptr inbounds nuw i8, ptr %.021.i96, i64 8
  store i8 16, ptr %i.ex, align 8, !tbaa !37
  br label %iscleared.exit.thread.i100

iscleared.exit.thread.i100:                       ; preds = %bb.ah, %iscleared.exit.i99, %bb.ag, %bb.af, %bb.ad, %.lr.ph.i95
  %i.ey = getelementptr inbounds nuw i8, ptr %.021.i96, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !37
  %i.fa = and i8 %i.ez, 15
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.ai, label %clearkey.exit.i101

bb.ai:                                            ; preds = %iscleared.exit.thread.i100
  %i.fc = load i8, ptr %i.ek, align 1, !tbaa !37
  %i.fd = and i8 %i.fc, 64
  %.not.i18.i104 = icmp eq i8 %i.fd, 0
  br i1 %.not.i18.i104, label %clearkey.exit.i101, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 11, ptr %i.ek, align 1, !tbaa !37
  br label %clearkey.exit.i101

clearkey.exit.i101:                               ; preds = %bb.aj, %bb.ai, %iscleared.exit.thread.i100
  %i.fe = getelementptr inbounds nuw i8, ptr %.021.i96, i64 24 ; 2 uses
  %i.ff = icmp ult ptr %i.fe, %i.ej
  br i1 %i.ff, label %.lr.ph.i95, label %._crit_edge.i102

._crit_edge.i102:                                 ; preds = %clearkey.exit.i101
  %i.fg = getelementptr inbounds nuw i8, ptr %.01523.i93, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !88 ; 2 uses
  %.not.i103 = icmp eq ptr %i.fh, null
  br i1 %.not.i103, label %clearbykeys.exit105, label %.lr.ph.preheader.i92

clearbykeys.exit105:                              ; preds = %._crit_edge.i102, %clearbykeys.exit
  %i.fi = load ptr, ptr %i.bl, align 8, !tbaa !89
  tail call fastcc void @clearbyvalues(ptr noundef %i.b, ptr noundef %i.fi, ptr noundef %i.bp)
  %i.fj = load ptr, ptr %i.bn, align 8, !tbaa !90
  tail call fastcc void @clearbyvalues(ptr noundef %i.b, ptr noundef %i.fj, ptr noundef %i.bq)
  tail call void @luaS_clearcache(ptr noundef %i.b) #8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 106 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !34
  %i.fm = xor i8 %i.fl, 24
  store i8 %i.fm, ptr %i.fk, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @atomic2gen(ptr noundef %0, ptr nofree noundef captures(none) initializes((107, 108), (136, 176)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 107
  store i8 3, ptr %i.b, align 1, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %sweep2old.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
end_hunk_0
