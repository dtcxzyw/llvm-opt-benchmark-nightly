Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/vm?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@VM__vectorcall:bb.a
  %i.k = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.g ; 5 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -48 ; 20 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !99
  %i.n = icmp eq i16 %i.m, 18
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = tail call ptr @PyObject__slots(ptr noundef %i.p) #15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !49
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %tailrecurse
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 -24 ; 6 uses
  %i.u = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.t, i16 noundef signext 0) #15 ; 5 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !100
  %i.v = load i16, ptr %i.l, align 8, !tbaa !99
  switch i16 %i.v, label %bb.ai [
    i16 16, label %bb.d
    i16 17, label %bb.w
    i16 2, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = zext i1 %i.u to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w ; 12 uses
  %i.y = tail call ptr @py_touserdata(ptr noundef nonnull %i.l) #15 ; 9 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103  ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !104
  switch i32 %i.ac, label %bb.v [
    i32 1, label %bb.e
    i32 2, label %bb.k
    i32 3, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 131784 ; 2 uses
  %i.ae = tail call fastcc zeroext i1 @prepare_py_call(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.x, ptr noundef nonnull %i.j, i32 noundef %i.b, ptr noundef nonnull %i.z)
  br i1 %i.ae, label %bb.f, label %bb.ak

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 152 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !68
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.ah
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !51
  %i.aj = mul nsw i64 %i.ah, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.ad, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !105 ; 2 uses
  %.not165 = icmp eq ptr %i.al, null
  br i1 %.not165, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ap = tail call ptr @Frame__new(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.l, ptr noundef %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.x, i1 noundef zeroext false) #15 ; 3 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !44
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !60
  store ptr %i.ap, ptr %0, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !50
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 131712
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %VM__push_frame.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.av(ptr noundef nonnull %i.ap, i32 noundef 1) #15, !inline_history !107
  br label %VM__push_frame.exit

VM__push_frame.exit:                              ; preds = %bb.g, %bb.h
  br i1 %3, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %VM__push_frame.exit
  %i.aw = tail call i32 @VM__run_top_frame(ptr noundef nonnull %0) #15
  br label %bb.ak

bb.j:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.af, align 8, !tbaa !68
  %i.ay = tail call zeroext i1 %i.al(i32 noundef %i.ax, ptr noundef nonnull %i.x) #15
  store ptr %i.l, ptr %i.a, align 8, !tbaa !51
  %i.az = zext i1 %i.ay to i32
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.ba = ptrtoint ptr %i.j to i64
  %not.161 = xor i1 %i.u, true
  %i.bb = zext i1 %not.161 to i64
  %i.bc = add nuw nsw i64 %i.bb, %i.f             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 272
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %.not162 = icmp eq i64 %i.bc, %i.bf
  br i1 %.not162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = trunc nuw nsw i64 %i.bc to i32
  %i.bk = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.bi, i32 noundef %i.be, i32 noundef %i.bj) #15 ; 0 uses
  br label %bb.ak

bb.m:                                             ; preds = %bb.k
  %.not163 = icmp eq i16 %2, 0
  br i1 %.not163, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.bn) #15 ; 0 uses
  br label %bb.ak

bb.o:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 152 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !68
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.br ; 2 uses
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !51
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.ba
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.bu, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !105 ; 2 uses
  %.not164 = icmp eq ptr %i.bw, null
  br i1 %.not164, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !106
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ca = tail call ptr @Frame__new(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.l, ptr noundef %i.by, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.x, i1 noundef zeroext false) #15 ; 3 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !44
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !60
  store ptr %i.ca, ptr %0, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !50
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 131712
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !56 ; 2 uses
  %.not.i167 = icmp eq ptr %i.cg, null
  br i1 %.not.i167, label %VM__push_frame.exit168, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void %i.cg(ptr noundef nonnull %i.ca, i32 noundef 1) #15, !inline_history !107
  br label %VM__push_frame.exit168

VM__push_frame.exit168:                           ; preds = %bb.p, %bb.q
  br i1 %3, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %VM__push_frame.exit168
  %i.ch = tail call i32 @VM__run_top_frame(ptr noundef nonnull %0) #15
  br label %bb.ak

bb.s:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.bp, align 8, !tbaa !68
  %i.cj = tail call zeroext i1 %i.bw(i32 noundef %i.ci, ptr noundef nonnull %i.x) #15
  store ptr %i.l, ptr %i.a, align 8, !tbaa !51
  %i.ck = zext i1 %i.cj to i32
  br label %bb.ak

bb.t:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 131784 ; 2 uses
  %i.cm = tail call fastcc zeroext i1 @prepare_py_call(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.j, i32 noundef %i.b, ptr noundef nonnull %i.z)
  br i1 %i.cm, label %bb.u, label %bb.ak

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !68
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.cp
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !51
  %i.cr = mul nsw i64 %i.cp, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.cl, i64 %i.cr, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cv = tail call ptr @Frame__new(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.l, ptr noundef %i.ct, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.x, i1 noundef zeroext false) #15
  %i.cw = tail call ptr (...) @py_retval() #15
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !51
  tail call void @pk_newgenerator(ptr noundef %i.cw, ptr noundef %i.cv, ptr noundef nonnull %i.l, ptr noundef %i.cx) #15
  store ptr %i.l, ptr %i.a, align 8, !tbaa !51
  br label %bb.ak

bb.v:                                             ; preds = %bb.d
  unreachable

bb.w:                                             ; preds = %bb.c
  %4 = zext i1 %i.u to i64
  %5 = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %4
  %.not157 = icmp eq i16 %2, 0
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.k, i64 -40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  br i1 %.not157, label %._crit_edge, label %6

6:                                                ; preds = %bb.w
  %.not158 = icmp eq ptr %.pre, @pk__object_new
  br i1 %.not158, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %6
  %i.cy = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.42) #15 ; 0 uses
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.w, %6
  %7 = phi ptr [ @pk__object_new, %6 ], [ %.pre, %bb.w ]
  %not. = xor i1 %i.u, true
  %i.cz = zext i1 %not. to i64
  %i.da = add nuw nsw i64 %i.cz, %i.f
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = tail call zeroext i1 %7(i32 noundef %i.db, ptr noundef nonnull %5) #15
  store ptr %i.l, ptr %i.a, align 8, !tbaa !51
  %i.dd = zext i1 %i.dc to i32
  br label %bb.ak

bb.y:                                             ; preds = %bb.c
  %i.de = zext i1 %i.u to i64
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.de ; 2 uses
  %i.dg = tail call signext i16 @py_totype(ptr noundef nonnull %i.l) #15 ; 3 uses
  %i.dh = load ptr, ptr @__new__, align 8, !tbaa !108
  %i.di = tail call ptr @py_tpfindmagic(i16 noundef signext %i.dg, ptr noundef %i.dh) #15 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 8, !tbaa !99
  %i.dk = icmp eq i16 %i.dj, 17
  br i1 %i.dk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  %i.dn = icmp ne ptr %i.dm, @pk__object_new
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not166 = phi i1 [ true, %bb.y ], [ %i.dn, %bb.z ]
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.df to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !tbaa.struct !49
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !49
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !51
  %sext = shl i64 %i.ds, 32
  %i.dx = ashr exact i64 %sext, 32                ; 2 uses
  %i.dy = mul nsw i64 %i.dx, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dw, ptr nonnull align 8 %i.df, i64 %i.dy, i1 false)
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.ea = getelementptr inbounds [24 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !51
  %i.eb = tail call i32 @VM__vectorcall(ptr noundef nonnull %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i1 noundef zeroext false)
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr @__init__, align 8, !tbaa !108
  %i.ee = tail call ptr @py_tpfindmagic(i16 noundef signext %i.dg, ptr noundef %i.ed) #15 ; 2 uses
  %.not = icmp eq ptr %i.ee, null
  br i1 %.not, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = tail call ptr (...) @py_retval() #15
  %i.eg = tail call zeroext i1 @py_isinstance(ptr noundef %i.ef, i16 noundef signext %i.dg) #15
  br i1 %i.eg, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false), !tbaa.struct !49
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !49
  %i.ei = tail call i32 @VM__vectorcall(ptr noundef nonnull %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i1 noundef zeroext false)
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = tail call ptr (...) @py_retval() #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !49
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.el = or i16 %2, %1
  %or.cond.not = icmp eq i16 %i.el, 0
  %or.cond = or i1 %or.cond.not, %.not166
  br i1 %or.cond, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = tail call signext i16 @py_totype(ptr noundef nonnull %i.l) #15
  %i.en = sext i16 %i.em to i32
  %i.eo = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.43, i32 noundef %i.en) #15 ; 0 uses
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af, %bb.ac, %bb.ae
  store ptr %i.l, ptr %i.a, align 8, !tbaa !51
  br label %bb.ak

bb.ai:                                            ; preds = %bb.c
  %i.ep = load ptr, ptr @__call__, align 8, !tbaa !108
  %i.eq = tail call zeroext i1 @pk_loadmethod(ptr noundef nonnull %i.l, ptr noundef %i.ep) #15
  br i1 %i.eq, label %tailrecurse, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = load i16, ptr %i.l, align 8, !tbaa !99
  %i.es = sext i16 %i.er to i32
  %i.et = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.44, i32 noundef %i.es) #15 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aa, %bb.ad, %bb.ah, %bb.ag, %bb.l, %bb.n, %bb.s, %bb.i, %VM__push_frame.exit, %bb.e, %bb.j, %VM__push_frame.exit168, %bb.r, %bb.t, %bb.u, %bb.aj, %._crit_edge, %bb.x
  %.5 = phi i32 [ 0, %bb.aj ], [ 0, %bb.x ], [ %i.dd, %._crit_edge ], [ 0, %bb.t ], [ 0, %bb.ad ], [ 2, %VM__push_frame.exit168 ], [ 0, %bb.l ], [ 0, %bb.n ], [ %i.ck, %bb.s ], [ 2, %VM__push_frame.exit ], [ %i.az, %bb.j ], [ 0, %bb.e ], [ %i.aw, %bb.i ], [ %i.ch, %bb.r ], [ 1, %bb.u ], [ 0, %bb.aa ], [ 0, %bb.ag ], [ 1, %bb.ah ]
  ret i32 %.5
}

declare ptr @PyObject__slots(ptr noundef) local_unnamed_addr #2

declare ptr @py_touserdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @prepare_py_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 65536) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = sext i32 %i.c to i64
  %i.i = icmp slt i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = trunc i64 %i.g to i32
  %i.n = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.l, i32 noundef %i.c, i32 noundef %i.m) #15
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %.not123 = icmp eq ptr %i.s, null
  br i1 %.not123, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.u = load i32, ptr %i.b, align 8, !tbaa !69
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %.not106166 = icmp eq ptr %i.s, %i.w
  br i1 %.not106166, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.c
  %.094.lcssa = phi ptr [ %1, %bb.c ], [ %1, %.lr.ph.preheader ], [ %i.ah, %.lr.ph ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71   ; 3 uses
  %.not107128 = icmp eq ptr %i.y, null
  br i1 %.not107128, label %.critedge4, label %.lr.ph130

.lr.ph130:                                        ; preds = %.critedge
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 296 ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !72
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [40 x i8], ptr %i.aa, i64 %i.ac
  %.not108170 = icmp eq ptr %i.y, %i.ad
  br i1 %.not108170, label %.critedge4, label %.lr.ph172

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.094124168 = phi ptr [ %i.ah, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.093125167 = phi ptr [ %i.ai, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.ae = load i32, ptr %.093125167, align 4, !tbaa !47
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.094124168, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.094124168, i64 24, i1 false), !tbaa.struct !49
  %i.ai = getelementptr inbounds nuw i8, ptr %.093125167, i64 4 ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !69
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %.not106 = icmp eq ptr %i.ai, %i.am
  br i1 %.not106, label %.critedge, label %.lr.ph

.critedge4:                                       ; preds = %.lr.ph172, %.lr.ph130, %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !113 ; 2 uses
  %.not109 = icmp eq i32 %i.ao, -1
  br i1 %.not109, label %bb.e, label %bb.d

.lr.ph172:                                        ; preds = %.lr.ph130, %.lr.ph172
  %.092129171 = phi ptr [ %i.at, %.lr.ph172 ], [ %i.y, %.lr.ph130 ] ; 3 uses
  %i.ap = load i32, ptr %.092129171, align 8, !tbaa !114
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.092129171, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !49
  %i.at = getelementptr inbounds nuw i8, ptr %.092129171, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.av = load i32, ptr %i.z, align 8, !tbaa !72
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [40 x i8], ptr %i.au, i64 %i.aw
  %.not108 = icmp eq ptr %i.at, %i.ax
  br i1 %.not108, label %.critedge4, label %.lr.ph172

bb.d:                                             ; preds = %.critedge4
end_hunk_0
