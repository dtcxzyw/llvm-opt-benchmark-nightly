Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_operators?download=true
inline.NumInlined: 54
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@shift_right_function:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.bj, align 8, !tbaa !12
  br label %bb.ai

bb.ai:                                            ; preds = %.thread86, %.thread, %bb.ac, %bb.ae, %bb.ah, %bb.aa
  %.3 = phi i32 [ %.0.ph, %.thread ], [ %.2.ph, %.thread86 ], [ 0, %bb.aa ], [ 0, %bb.ah ], [ -1, %bb.ae ], [ -1, %bb.ac ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @concat_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12    ; 2 uses
  switch i8 %i.b, label %._crit_edge [
    i8 6, label %bb.b
    i8 10, label %bb.c
  ], !prof !109

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !12    ; 2 uses
  %i.h = icmp eq i8 %i.g, 6
  br i1 %i.h, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %bb.n

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.j = phi i8 [ %i.b, %bb.a ], [ %i.g, %bb.c ]
  %.0145 = phi ptr [ %1, %bb.a ], [ %i.e, %bb.c ] ; 7 uses
  %i.k = icmp eq i8 %i.j, 8
  br i1 %i.k, label %bb.e, label %bb.g, !prof !47

bb.e:                                             ; preds = %._crit_edge
  %i.l = load ptr, ptr %.0145, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 %i.p(i8 noundef zeroext 8, ptr noundef %0, ptr noundef nonnull %.0145, ptr noundef %2) #24
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %zend_string_release_ex.exit, label %bb.j, !prof !44

bb.g:                                             ; preds = %bb.e, %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !12
  %i.u = icmp eq i8 %i.t, 8
  br i1 %i.u, label %bb.h, label %bb.j, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %2, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98   ; 2 uses
  %.not178 = icmp eq ptr %i.z, null
  br i1 %.not178, label %bb.j, label %bb.i, !prof !44

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i32 %i.z(i8 noundef zeroext 8, ptr noundef %0, ptr noundef nonnull %.0145, ptr noundef nonnull %2) #24
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %zend_string_release_ex.exit, label %bb.j, !prof !44

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %i.ac = tail call ptr @zval_try_get_string_func(ptr noundef nonnull %.0145) ; 4 uses
  %.not179 = icmp eq ptr %i.ac, null
  br i1 %.not179, label %bb.k, label %bb.m, !prof !47

bb.k:                                             ; preds = %bb.j
  %.not180 = icmp eq ptr %1, %0
  br i1 %.not180, label %zend_string_release_ex.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !12
  br label %zend_string_release_ex.exit

bb.m:                                             ; preds = %bb.j
  %i.ae = icmp eq ptr %0, %.0145
  %i.af = icmp eq ptr %.0145, %2
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.ab, label %bb.n, !prof !120

bb.n:                                             ; preds = %bb.d, %bb.b, %bb.m
  %.0161 = phi i8 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.m ] ; 3 uses
  %.0150 = phi ptr [ %i.c, %bb.b ], [ %i.i, %bb.d ], [ %i.ac, %bb.m ] ; 10 uses
  %.1146 = phi ptr [ %1, %bb.b ], [ %i.e, %bb.d ], [ %.0145, %bb.m ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !12
  switch i8 %i.ah, label %bb.r [
    i8 6, label %bb.o
    i8 10, label %bb.p
  ], !prof !109

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %2, align 8, !tbaa !12
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !12
  %i.an = icmp eq i8 %i.am, 6
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !12
  br label %bb.ab

bb.r:                                             ; preds = %bb.n, %bb.p
  %.0148 = phi ptr [ %i.ak, %bb.p ], [ %2, %bb.n ] ; 5 uses
  %i.ap = trunc nuw i8 %.0161 to i1
  br i1 %i.ap, label %zend_string_copy.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %.0150, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = and i32 %i.ar, 64
  %.not.i204 = icmp eq i32 %i.as, 0
  br i1 %.not.i204, label %bb.t, label %zend_string_copy.exit

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %.0150, align 4, !tbaa !13
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %.0150, align 4, !tbaa !13
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.t, %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.0148, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !12
  %i.ax = icmp eq i8 %i.aw, 8
  br i1 %i.ax, label %bb.u, label %bb.w, !prof !47

bb.u:                                             ; preds = %zend_string_copy.exit
  %i.ay = load ptr, ptr %.0148, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !98 ; 2 uses
  %.not181 = icmp eq ptr %i.bc, null
  br i1 %.not181, label %bb.w, label %bb.v, !prof !44

bb.v:                                             ; preds = %bb.u
  %i.bd = tail call i32 %i.bc(i8 noundef zeroext 8, ptr noundef %0, ptr noundef nonnull %.1146, ptr noundef nonnull %.0148) #24
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %zend_string_release_ex.exit, label %bb.w, !prof !44

bb.w:                                             ; preds = %bb.v, %bb.u, %zend_string_copy.exit
  %i.bf = tail call ptr @zval_try_get_string_func(ptr noundef nonnull %.0148) ; 2 uses
  %.not182 = icmp eq ptr %i.bf, null
  br i1 %.not182, label %bb.x, label %bb.ab, !prof !47

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %.0150, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = and i32 %i.bh, 64
  %.not.i202 = icmp eq i32 %i.bi, 0
  br i1 %.not.i202, label %bb.y, label %zend_string_release_ex.exit203

bb.y:                                             ; preds = %bb.x
  %i.bj = load i32, ptr %.0150, align 4, !tbaa !13 ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bl, ptr %.0150, align 4, !tbaa !13
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.z, label %zend_string_release_ex.exit203

bb.z:                                             ; preds = %bb.y
  tail call void @_efree(ptr noundef nonnull %.0150) #24
  br label %zend_string_release_ex.exit203

zend_string_release_ex.exit203:                   ; preds = %bb.x, %bb.y, %bb.z
  %.not183 = icmp eq ptr %1, %0
  br i1 %.not183, label %zend_string_release_ex.exit, label %bb.aa

bb.aa:                                            ; preds = %zend_string_release_ex.exit203
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bn, align 8, !tbaa !12
  br label %zend_string_release_ex.exit

bb.ab:                                            ; preds = %bb.w, %bb.m, %bb.q, %bb.o
  %.2163 = phi i8 [ %.0161, %bb.o ], [ %.0161, %bb.q ], [ 1, %bb.m ], [ 1, %bb.w ] ; 14 uses
  %.0157 = phi i8 [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.m ], [ 1, %bb.w ] ; 15 uses
  %.0153 = phi ptr [ %i.ai, %bb.o ], [ %i.ao, %bb.q ], [ %i.ac, %bb.m ], [ %i.bf, %bb.w ] ; 28 uses
  %.2152 = phi ptr [ %.0150, %bb.o ], [ %.0150, %bb.q ], [ %i.ac, %bb.m ], [ %.0150, %bb.w ] ; 20 uses
  %.1149 = phi ptr [ %2, %bb.o ], [ %i.ak, %bb.q ], [ %2, %bb.m ], [ %.0148, %bb.w ]
  %.2 = phi ptr [ %.1146, %bb.o ], [ %.1146, %bb.q ], [ %0, %bb.m ], [ %.1146, %bb.w ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.2152, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !15 ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.ac, label %bb.ap, !prof !47

bb.ac:                                            ; preds = %bb.ab
  %.not189 = icmp eq ptr %0, %.1149
  br i1 %.not189, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !12
  %.not249 = icmp eq i8 %i.bs, 6
  br i1 %.not249, label %bb.ck, label %.critedge, !prof !47

.critedge:                                        ; preds = %bb.ac, %bb.ad
  %i.bt = icmp eq ptr %0, %1
  br i1 %i.bt, label %bb.ae, label %i_zval_ptr_dtor.exit214

bb.ae:                                            ; preds = %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !12
  %.not.i212 = icmp eq i8 %i.bv, 0
  br i1 %.not.i212, label %i_zval_ptr_dtor.exit214, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = load ptr, ptr %0, align 8, !tbaa !12    ; 7 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !13 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !13
  %.not5.i213 = icmp eq i32 %i.bz, 0
  br i1 %.not5.i213, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @rc_dtor_func(ptr noundef nonnull %i.bw) #24
  br label %i_zval_ptr_dtor.exit214

bb.ah:                                            ; preds = %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 26
  br i1 %i.cc, label %bb.ai, label %bb.aj, !prof !44

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 17
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %i.cf = and i8 %i.ce, 2
  %.not.i216 = icmp eq i8 %i.cf, 0
  br i1 %.not.i216, label %i_zval_ptr_dtor.exit214, label %.thread

.thread:                                          ; preds = %bb.ai
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert258 = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.pre259 = load i32, ptr %.phi.trans.insert258, align 4, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ah
  %i.ci = phi i32 [ %.pre259, %.thread ], [ %i.cb, %bb.ah ]
  %.1.i = phi ptr [ %i.ch, %.thread ], [ %i.bw, %bb.ah ]
  %i.cj = and i32 %i.ci, -1008
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ak, label %i_zval_ptr_dtor.exit214, !prof !47

bb.ak:                                            ; preds = %bb.aj
  tail call void @gc_possible_root(ptr noundef nonnull %.1.i) #24
  br label %i_zval_ptr_dtor.exit214

i_zval_ptr_dtor.exit214:                          ; preds = %bb.ag, %bb.ae, %bb.ai, %bb.aj, %bb.ak, %.critedge
  %i.cl = trunc nuw i8 %.0157 to i1
  store ptr %.0153, ptr %0, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12
  %i.co = and i32 %i.cn, 64
  %.not191 = icmp eq i32 %i.co, 0                 ; 2 uses
  br i1 %i.cl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %i_zval_ptr_dtor.exit214
  %i.cp = select i1 %.not191, i32 262, i32 6
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !12
  br label %bb.ck

bb.am:                                            ; preds = %i_zval_ptr_dtor.exit214
  br i1 %.not191, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.cr, align 8, !tbaa !12
  br label %bb.ck

bb.ao:                                            ; preds = %bb.am
  %i.cs = load i32, ptr %.0153, align 4, !tbaa !13
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %.0153, align 4, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.cu, align 8, !tbaa !12
  br label %bb.ck

bb.ap:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %.0153, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !15 ; 4 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.aq, label %bb.bd, !prof !47

bb.aq:                                            ; preds = %bb.ap
  %.not186 = icmp eq ptr %0, %.2
  br i1 %.not186, label %bb.ar, label %.critedge193

bb.ar:                                            ; preds = %bb.aq
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !12
  %.not248 = icmp eq i8 %i.cz, 6
  br i1 %.not248, label %bb.ck, label %.critedge193, !prof !47

.critedge193:                                     ; preds = %bb.aq, %bb.ar
  %i.da = icmp eq ptr %0, %1
  br i1 %i.da, label %bb.as, label %i_zval_ptr_dtor.exit211

bb.as:                                            ; preds = %.critedge193
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !12
  %.not.i209 = icmp eq i8 %i.dc, 0
  br i1 %.not.i209, label %i_zval_ptr_dtor.exit211, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dd = load ptr, ptr %0, align 8, !tbaa !12    ; 7 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !13 ; 2 uses
  %i.df = icmp ne i32 %i.de, 0
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = add i32 %i.de, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !13
  %.not5.i210 = icmp eq i32 %i.dg, 0
  br i1 %.not5.i210, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @rc_dtor_func(ptr noundef nonnull %i.dd) #24
  br label %i_zval_ptr_dtor.exit211

bb.av:                                            ; preds = %bb.at
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 26
  br i1 %i.dj, label %bb.aw, label %bb.ax, !prof !44

bb.aw:                                            ; preds = %bb.av
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 17
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !12
  %i.dm = and i8 %i.dl, 2
  %.not.i218 = icmp eq i8 %i.dm, 0
  br i1 %.not.i218, label %i_zval_ptr_dtor.exit211, label %.thread230

.thread230:                                       ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert256 = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.pre257 = load i32, ptr %.phi.trans.insert256, align 4, !tbaa !12
  br label %bb.ax

bb.ax:                                            ; preds = %.thread230, %bb.av
  %i.dp = phi i32 [ %.pre257, %.thread230 ], [ %i.di, %bb.av ]
  %.1.i217 = phi ptr [ %i.do, %.thread230 ], [ %i.dd, %bb.av ]
  %i.dq = and i32 %i.dp, -1008
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ay, label %i_zval_ptr_dtor.exit211, !prof !47

bb.ay:                                            ; preds = %bb.ax
  tail call void @gc_possible_root(ptr noundef nonnull %.1.i217) #24
  br label %i_zval_ptr_dtor.exit211

i_zval_ptr_dtor.exit211:                          ; preds = %bb.au, %bb.as, %bb.aw, %bb.ax, %bb.ay, %.critedge193
  %i.ds = trunc nuw i8 %.2163 to i1
  store ptr %.2152, ptr %0, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %.2152, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12
  %i.dv = and i32 %i.du, 64
  %.not188 = icmp eq i32 %i.dv, 0                 ; 2 uses
  br i1 %i.ds, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %i_zval_ptr_dtor.exit211
  %i.dw = select i1 %.not188, i32 262, i32 6
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !12
  br label %zend_string_release_ex.exit195

bb.ba:                                            ; preds = %i_zval_ptr_dtor.exit211
  br i1 %.not188, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.dy, align 8, !tbaa !12
  br label %zend_string_release_ex.exit195

bb.bc:                                            ; preds = %bb.ba
  %i.dz = load i32, ptr %.2152, align 8, !tbaa !13
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %.2152, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
