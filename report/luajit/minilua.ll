Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@str_find_aux:bb.a
  br i1 %i.n, label %luaL_optinteger.exit.thread, label %bb.d

bb.d:                                             ; preds = %lua_type.exit.i
  %i.o = call fastcc i64 @lua_tointeger(ptr noundef nonnull %0, i32 noundef 3)
  %.fr = freeze i64 %i.o                          ; 3 uses
  %i.p = icmp eq i64 %.fr, 0
  br i1 %i.p, label %bb.e, label %luaL_optinteger.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.r = getelementptr i8, ptr %i.q, i64 32       ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !95
  %.not28.i.i67 = icmp ult ptr %i.r, %i.s
  %.luaO_nilobject_.i.i68 = select i1 %.not28.i.i67, ptr %i.r, ptr @luaO_nilobject_ ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.luaO_nilobject_.i.i68, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !99
  switch i32 %i.u, label %luaV_tonumber.exit.i [
    i32 3, label %luaL_optinteger.exit.thread
    i32 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.luaO_nilobject_.i.i68, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.x = call double @strtod(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #33 ; 0 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.w
  br i1 %i.z, label %luaO_str2d.exit.thread.i.i, label %bb.g

luaO_str2d.exit.thread.i.i:                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %luaV_tonumber.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !81   ; 2 uses
  switch i8 %i.aa, label %bb.i [
    i8 120, label %bb.h
    i8 88, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ab = call i64 @strtoul(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a, i32 noundef 16) #33 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %.pre11.i.i.i = load i8, ptr %.pre.i.i.i, align 1, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i8 [ %i.aa, %bb.g ], [ %.pre11.i.i.i, %bb.h ]
  %.promoted.i.i.i = phi ptr [ %i.y, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %luaO_str2d.exit.thread14.i.i, label %.preheader.i.i.i

luaO_str2d.exit.thread14.i.i:                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %luaL_optinteger.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.i
  %i.ae = tail call ptr @__ctype_b_loc() #40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i.i.i
  %i.ag = phi ptr [ %.promoted.i.i.i, %.preheader.i.i.i ], [ %i.am, %bb.j ] ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !81  ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !177
  %i.al = and i16 %i.ak, 8192
  %.not.i.i.i = icmp eq i16 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  br i1 %.not.i.i.i, label %luaO_str2d.exit.i.i, label %bb.j, !llvm.loop !19

luaO_str2d.exit.i.i:                              ; preds = %bb.j
  %.not8.i.not.i.i = icmp eq i8 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %.not8.i.not.i.i, label %luaL_optinteger.exit.thread, label %luaV_tonumber.exit.i

luaV_tonumber.exit.i:                             ; preds = %bb.e, %luaO_str2d.exit.i.i, %luaO_str2d.exit.thread.i.i
  call fastcc void @luaL_typerror(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.25)
  unreachable

luaL_optinteger.exit.thread:                      ; preds = %luaL_checklstring.exit65, %lua_type.exit.i, %bb.e, %luaO_str2d.exit.i.i, %luaO_str2d.exit.thread14.i.i
  %.ph = phi i64 [ 1, %luaL_checklstring.exit65 ], [ 0, %bb.e ], [ 1, %lua_type.exit.i ], [ 0, %luaO_str2d.exit.i.i ], [ 0, %luaO_str2d.exit.thread14.i.i ]
  %i.an = load i64, ptr %i.b, align 8, !tbaa !134
  br label %bb.k

luaL_optinteger.exit:                             ; preds = %bb.d
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %i.ap = icmp slt i64 %.fr, 0
  %i.aq = add nsw i64 %i.ao, 1
  %spec.select82 = select i1 %i.ap, i64 %i.aq, i64 0
  br label %bb.k

bb.k:                                             ; preds = %luaL_optinteger.exit, %luaL_optinteger.exit.thread
  %i.ar = phi i64 [ %i.an, %luaL_optinteger.exit.thread ], [ %i.ao, %luaL_optinteger.exit ] ; 3 uses
  %i.as = phi i64 [ %.ph, %luaL_optinteger.exit.thread ], [ %.fr, %luaL_optinteger.exit ]
  %i.at = phi i64 [ 0, %luaL_optinteger.exit.thread ], [ %spec.select82, %luaL_optinteger.exit ]
  %.0.i = add nsw i64 %i.at, %i.as                ; 2 uses
  %i.au = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.0.i, i64 0)
  %i.av = add nsw i64 %i.au, -1
  %spec.select = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ar)
  %.inv = icmp sgt i64 %.0.i, 0
  %.046 = select i1 %.inv, i64 %spec.select, i64 0 ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.ax = getelementptr i8, ptr %i.aw, i64 48     ; 2 uses
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !95  ; 6 uses
  %.not28.i.i = icmp ult ptr %i.ax, %i.ay
  %.luaO_nilobject_.i.i = select i1 %.not28.i.i, ptr %i.ax, ptr @luaO_nilobject_ ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.luaO_nilobject_.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !99
  switch i32 %i.ba, label %lua_toboolean.exit.thread72 [
    i32 0, label %lua_toboolean.exit.thread
    i32 1, label %lua_toboolean.exit
  ]

lua_toboolean.exit:                               ; preds = %bb.l
  %i.bb = load i32, ptr %.luaO_nilobject_.i.i, align 8, !tbaa !81
  %.not83 = icmp eq i32 %i.bb, 0
  br i1 %.not83, label %lua_toboolean.exit.thread, label %lua_toboolean.exit.thread72

lua_toboolean.exit.thread:                        ; preds = %bb.l, %lua_toboolean.exit
  %i.bc = call ptr @strpbrk(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.239) #35
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %lua_toboolean.exit.thread72, label %bb.q

lua_toboolean.exit.thread72:                      ; preds = %bb.l, %lua_toboolean.exit.thread, %lua_toboolean.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %.046 ; 2 uses
  %i.bf = sub i64 %i.ar, %.046                    ; 2 uses
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !134 ; 4 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %lmemfind.exit.thread76, label %bb.m

bb.m:                                             ; preds = %lua_toboolean.exit.thread72
  %i.bi = icmp ugt i64 %i.bg, %i.bf
  br i1 %i.bi, label %.critedge61, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bj = add i64 %i.bg, -1                       ; 2 uses
  %i.bk = sub nuw i64 %i.bf, %i.bj
  %i.bl = load i8, ptr %i.e, align 1, !tbaa !81
  %i.bm = sext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.02029.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %i.bt, %bb.p ] ; 2 uses
  %.02128.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.bp, %bb.p ] ; 2 uses
  %i.bo = call ptr @memchr(ptr noundef %.02128.i, i32 noundef %i.bm, i64 noundef %.02029.i) #35 ; 3 uses
  %.not25.i = icmp eq ptr %i.bo, null
  br i1 %.not25.i, label %.critedge61, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.bp, ptr nonnull readonly %i.bn, i64 %i.bj)
  %i.bq = icmp eq i32 %bcmp.i, 0
  br i1 %i.bq, label %lmemfind.exit.thread76, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %.02128.i to i64
  %.neg.i = add i64 %.02029.i, %i.bs
  %i.bt = sub i64 %.neg.i, %i.br                  ; 2 uses
  %.not.i66 = icmp eq i64 %i.bt, 0
  br i1 %.not.i66, label %.critedge61, label %bb.n, !llvm.loop !552

lmemfind.exit.thread76:                           ; preds = %bb.o, %lua_toboolean.exit.thread72
  %.1.i79 = phi ptr [ %i.be, %lua_toboolean.exit.thread72 ], [ %i.bo, %bb.o ]
  %i.bu = ptrtoint ptr %.1.i79 to i64
  %i.bv = ptrtoint ptr %i.d to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = add nsw i64 %i.bw, 1
  %i.by = sitofp i64 %i.bx to double
  store double %i.by, ptr %i.ay, align 8, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 3, ptr %i.bz, align 8, !tbaa !99
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !95  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  store ptr %i.cb, ptr %i.i, align 8, !tbaa !95
  %i.cc = add i64 %i.bw, %i.bg
  %i.cd = sitofp i64 %i.cc to double
  store double %i.cd, ptr %i.cb, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 3, ptr %i.ce, align 8, !tbaa !99
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.cg, ptr %i.i, align 8, !tbaa !95
  br label %bb.u

bb.q:                                             ; preds = %lua_toboolean.exit.thread, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ch = load i8, ptr %i.e, align 1, !tbaa !81
  %.fr96 = freeze i8 %i.ch
  %.not58 = icmp eq i8 %.fr96, 94                 ; 2 uses
  %spec.select62.idx = zext i1 %.not58 to i64
  %spec.select62 = getelementptr inbounds nuw i8, ptr %i.e, i64 %spec.select62.idx ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 %.046 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.cj, align 8, !tbaa !279
  store ptr %i.d, ptr %2, align 8, !tbaa !280
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ar
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !281
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 0, ptr %i.cm, align 8, !tbaa !282
  %i.cn = call fastcc ptr @match(ptr noundef %2, ptr noundef nonnull %i.ci, ptr noundef nonnull %spec.select62) ; 3 uses
  %.not56.us = icmp eq ptr %i.cn, null            ; 2 uses
  br i1 %.not58, label %.split.us, label %.split, !llvm.loop !553

.split.us:                                        ; preds = %bb.q
  br i1 %.not56.us, label %.critedge, label %.split91.us

.split:                                           ; preds = %bb.q
  br i1 %.not56.us, label %.lr.ph, label %.split91.us

.split91.us:                                      ; preds = %bb.t, %.split, %.split.us
  %.us-phi = phi ptr [ %i.ci, %.split.us ], [ %i.ci, %.split ], [ %i.dh, %bb.t ] ; 2 uses
  %.us-phi92 = phi ptr [ %i.cn, %.split.us ], [ %i.cn, %.split ], [ %i.di, %bb.t ] ; 2 uses
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.split91.us
  %i.co = ptrtoint ptr %.us-phi to i64
  %i.cp = ptrtoint ptr %i.d to i64                ; 2 uses
  %reass.sub = sub i64 %i.co, %i.cp
  %i.cq = add i64 %reass.sub, 1
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !95  ; 2 uses
  %i.cs = sitofp i64 %i.cq to double
  store double %i.cs, ptr %i.cr, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 3, ptr %i.ct, align 8, !tbaa !99
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !95  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  store ptr %i.cv, ptr %i.i, align 8, !tbaa !95
  %i.cw = ptrtoint ptr %.us-phi92 to i64
  %i.cx = sub i64 %i.cw, %i.cp
  %i.cy = sitofp i64 %i.cx to double
  store double %i.cy, ptr %i.cv, align 8, !tbaa !81
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i32 3, ptr %i.cz, align 8, !tbaa !99
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.db, ptr %i.i, align 8, !tbaa !95
  %i.dc = call fastcc i32 @push_captures(ptr noundef %2, ptr noundef null, ptr noundef null)
  %i.dd = add nsw i32 %i.dc, 2
  br label %.critedge63

bb.s:                                             ; preds = %.split91.us
  %i.de = call fastcc i32 @push_captures(ptr noundef %2, ptr noundef nonnull %.us-phi, ptr noundef nonnull %.us-phi92)
  br label %.critedge63

.lr.ph:                                           ; preds = %.split, %bb.t
  %.094 = phi ptr [ %i.dh, %bb.t ], [ %i.ci, %.split ] ; 2 uses
  %i.df = load ptr, ptr %i.cl, align 8, !tbaa !281
  %i.dg = icmp ult ptr %.094, %i.df
  br i1 %i.dg, label %bb.t, label %.critedge

bb.t:                                             ; preds = %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %.094, i64 1 ; 3 uses
  store i32 0, ptr %i.cm, align 8, !tbaa !282
  %i.di = call fastcc ptr @match(ptr noundef %2, ptr noundef nonnull %i.dh, ptr noundef nonnull %spec.select62) ; 2 uses
  %.not56 = icmp eq ptr %i.di, null
  br i1 %.not56, label %.lr.ph, label %.split91.us

.critedge:                                        ; preds = %.lr.ph, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !95
  br label %.critedge61

.critedge61:                                      ; preds = %bb.p, %bb.n, %bb.m, %.critedge
  %i.dj = phi ptr [ %.pre, %.critedge ], [ %i.ay, %bb.m ], [ %i.ay, %bb.n ], [ %i.ay, %bb.p ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 0, ptr %i.dk, align 8, !tbaa !99
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.dl, ptr %i.i, align 8, !tbaa !95
  br label %bb.u

.critedge63:                                      ; preds = %bb.s, %bb.r
  %.250.ph = phi i32 [ %i.de, %bb.s ], [ %i.dd, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.u

bb.u:                                             ; preds = %lmemfind.exit.thread76, %.critedge63, %.critedge61
  %.3 = phi i32 [ 1, %.critedge61 ], [ 2, %lmemfind.exit.thread76 ], [ %.250.ph, %.critedge63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %bb.a
  %.078.ph.ph = phi ptr [ %1, %bb.a ], [ %.078.ph.ph.be, %.outer.outer.backedge ] ; 30 uses
  %.075.ph.ph = phi ptr [ %2, %bb.a ], [ %.075.ph.ph.be, %.outer.outer.backedge ]
  %i.d = getelementptr inbounds i8, ptr %.078.ph.ph, i64 -1
  %i.e = getelementptr inbounds nuw i8, ptr %.078.ph.ph, i64 1
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.cd
  %.075.ph = phi ptr [ %i.hs, %bb.cd ], [ %.075.ph.ph, %.outer.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %matchbracketclass.exit110
  %.075 = phi ptr [ %i.cq, %matchbracketclass.exit110 ], [ %.075.ph, %.outer ] ; 22 uses
  %i.f = load i8, ptr %.075, align 1, !tbaa !81   ; 3 uses
  switch i8 %i.f, label %bb.bg [
    i8 40, label %bb.c
    i8 41, label %bb.l
    i8 37, label %bb.p
    i8 0, label %start_capture.exit
    i8 36, label %bb.be
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.075, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !81
  %i.i = icmp eq i8 %i.h, 41
  %i.j = load i32, ptr %i.b, align 8, !tbaa !282  ; 5 uses
  %i.k = icmp sgt i32 %i.j, 31                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !279
  tail call void (ptr, ptr, ...) @luaL_error(ptr noundef %i.m, ptr noundef nonnull @.str.241)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.075, i64 2
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.o ; 2 uses
  store ptr %.078.ph.ph, ptr %i.p, align 8, !tbaa !285
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 -2, ptr %i.q, align 8, !tbaa !286
  %i.r = add nsw i32 %i.j, 1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !282
  %i.s = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.078.ph.ph, ptr noundef nonnull %i.n), !inline_history !554 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %start_capture.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.b, align 8, !tbaa !282
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.b, align 8, !tbaa !282
  br label %start_capture.exit

bb.h:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !279
  tail call void (ptr, ptr, ...) @luaL_error(ptr noundef %i.x, ptr noundef nonnull @.str.241)
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = sext i32 %i.j to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.y ; 2 uses
  store ptr %.078.ph.ph, ptr %i.z, align 8, !tbaa !285
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 -1, ptr %i.aa, align 8, !tbaa !286
  %i.ab = add nsw i32 %i.j, 1
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !282
  %i.ac = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.078.ph.ph, ptr noundef nonnull %i.g), !inline_history !554 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %start_capture.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !282
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.b, align 8, !tbaa !282
  br label %start_capture.exit

bb.l:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.075, i64 1
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !282 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph604, label %._crit_edge

.lr.ph604:                                        ; preds = %bb.l
  %i.aj = zext nneg i32 %i.ah to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.ak = trunc nuw i64 %i.am to i32
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %._crit_edge, !llvm.loop !555

bb.n:                                             ; preds = %.lr.ph604, %bb.m
  %indvars.iv.i603 = phi i64 [ %i.aj, %.lr.ph604 ], [ %i.am, %bb.m ]
  %i.am = add nsw i64 %indvars.iv.i603, -1        ; 4 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !286
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %capture_to_close.exit, label %bb.m, !llvm.loop !555

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !279
  tail call void (ptr, ptr, ...) @luaL_error(ptr noundef %i.as, ptr noundef nonnull @.str.242)
  unreachable

capture_to_close.exit:                            ; preds = %bb.n
  %i.at = and i64 %i.am, 4294967295
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !285
  %i.aw = ptrtoint ptr %.078.ph.ph to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !286
  %i.ba = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.078.ph.ph, ptr noundef nonnull %i.ag), !inline_history !556 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.o, label %start_capture.exit

bb.o:                                             ; preds = %capture_to_close.exit
  store i64 -1, ptr %i.az, align 8, !tbaa !286
  br label %start_capture.exit

bb.p:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.075, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !81  ; 5 uses
  switch i8 %i.bd, label %bb.ax [
    i8 98, label %bb.q
    i8 102, label %bb.z
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.075, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !81  ; 3 uses
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.075, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !81  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !279
  tail call void (ptr, ptr, ...) @luaL_error(ptr noundef %i.bl, ptr noundef nonnull @.str.243)
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = load i8, ptr %.078.ph.ph, align 1, !tbaa !81
  %.not.i = icmp eq i8 %i.bm, %i.bf
  br i1 %.not.i, label %bb.u, label %start_capture.exit

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !281 ; 2 uses
end_hunk_0
