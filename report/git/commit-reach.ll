inline.NumInlined: 98
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ahead_behind:bb.a
  %.0303.i.i.i.ph = phi i32 [ %i.ak, %.lr.ph.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader221, %.lr.ph.i.i.i
  %.0303.i.i.i = phi i32 [ %i.av, %.lr.ph.i.i.i ], [ %.0303.i.i.i.ph, %.lr.ph.i.i.i.preheader221 ] ; 2 uses
  %i.at = zext i32 %.0303.i.i.i to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.at
  store ptr null, ptr %i.au, align 8, !tbaa !122
  %i.av = add i32 %.0303.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.av, %i.ad
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !127

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %st_mult.exit.i.i.i
  store i32 %i.ag, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i, %bb.b
  %i.aw = phi ptr [ %i.aj, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.b ]
  %i.ax = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not34.i.i.i, label %bb.d, label %bit_arrays_at.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ba = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.bb = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ax
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i

bit_arrays_at.exit.i:                             ; preds = %bb.d, %bb.c
  %i.bd = phi ptr [ %i.az, %bb.c ], [ %i.ba, %bb.d ]
  %i.be = zext nneg i32 %i.ae to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !128 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.e, label %get_bit_array.exit

bb.e:                                             ; preds = %bit_arrays_at.exit.i
  %i.bh = call ptr @bitmap_word_alloc(i64 noundef %i.j) #12 ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !128
  br label %get_bit_array.exit

get_bit_array.exit:                               ; preds = %bit_arrays_at.exit.i, %bb.e
  %i.bi = phi ptr [ %i.bh, %bb.e ], [ %i.bg, %bit_arrays_at.exit.i ]
  call void @bitmap_set(ptr noundef %i.bi, i64 noundef %.060128) #12
  %i.bj = load i64, ptr %i.ab, align 8
  %i.bk = and i64 %i.bj, 562949953421312
  %.not.i70 = icmp eq i64 %i.bk, 0
  br i1 %.not.i70, label %bb.f, label %insert_no_dup.exit

bb.f:                                             ; preds = %get_bit_array.exit
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  call void @prio_queue_put(ptr noundef nonnull %5, ptr noundef nonnull %i.ab) #12
  %i.bm = load i64, ptr %i.ab, align 8
  %i.bn = and i64 %i.bm, 1125899906842624
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %bb.g, label %nonstale_queue_put.exit.i

bb.g:                                             ; preds = %bb.f
  %.not11.i.i = icmp eq ptr %i.bl, null
  br i1 %.not11.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %5, align 8, !tbaa !45
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.bq = call i32 %i.bo(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.ab, ptr noundef %i.bp) #12, !inline_history !130
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.i, label %nonstale_queue_put.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !49
  br label %nonstale_queue_put.exit.i

nonstale_queue_put.exit.i:                        ; preds = %bb.i, %bb.h, %bb.f
  %i.bs = load i64, ptr %i.ab, align 8
  %i.bt = or i64 %i.bs, 562949953421312
  store i64 %i.bt, ptr %i.ab, align 8
  br label %insert_no_dup.exit

insert_no_dup.exit:                               ; preds = %get_bit_array.exit, %nonstale_queue_put.exit.i
  %i.bu = add nuw i64 %.060128, 1                 ; 2 uses
  %exitcond141.not = icmp eq i64 %i.bu, %2
  br i1 %exitcond141.not, label %.preheader, label %bb.b, !llvm.loop !131

.lr.ph134:                                        ; preds = %.preheader, %free_bit_array.exit
  %i.bv = call ptr @prio_queue_get(ptr noundef nonnull %5) #12 ; 3 uses
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.j, label %nonstale_queue_get.exit

bb.j:                                             ; preds = %.lr.ph134
  store ptr null, ptr %i.k, align 8, !tbaa !49
  br label %nonstale_queue_get.exit

nonstale_queue_get.exit:                          ; preds = %.lr.ph134, %bb.j
  %i.by = getelementptr i8, ptr %i.bv, i64 72     ; 2 uses
  %.val66 = load i32, ptr %i.by, align 8, !tbaa !86 ; 2 uses
  %i.bz = udiv i32 %.val66, 65532                 ; 6 uses
  %i.ca = urem i32 %.val66, 65532
  %i.cb = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i71 = icmp ugt i32 %i.cb, %i.bz
  %.pre.i.i.i72 = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i71, label %bb.k, label %st_mult.exit.i.i.i73

st_mult.exit.i.i.i73:                             ; preds = %nonstale_queue_get.exit
  %i.cc = add nuw nsw i32 %i.bz, 1                ; 2 uses
  %i.cd = shl nuw nsw i32 %i.cc, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = call ptr @xrealloc(ptr noundef %.pre.i.i.i72, i64 noundef %i.ce) #12 ; 4 uses
  store ptr %i.cf, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.cg = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i74 = icmp ugt i32 %i.cg, %i.bz
  br i1 %.not332.i.i.i74, label %._crit_edge.i.i.i78, label %.lr.ph.i.i.i75.preheader

.lr.ph.i.i.i75.preheader:                         ; preds = %st_mult.exit.i.i.i73
  %i.ch = add nuw nsw i32 %i.bz, 1
  %i.ci = sub nuw i32 %i.ch, %i.cg                ; 3 uses
  %min.iters.check198 = icmp samesign ult i32 %i.ci, 4
  br i1 %min.iters.check198, label %.lr.ph.i.i.i75.preheader220, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i.i.i75.preheader
  %n.vec200 = and i32 %i.ci, 262140               ; 3 uses
  %i.cj = add i32 %i.cg, %n.vec200
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i32 [ 0, %vector.ph199 ], [ %index.next203, %vector.body201 ] ; 2 uses
  %i.ck = add i32 %i.cg, %index202
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !122
  %index.next203 = add nuw i32 %index202, 4       ; 2 uses
  %i.co = icmp eq i32 %index.next203, %n.vec200
  br i1 %i.co, label %middle.block204, label %vector.body201, !llvm.loop !132

middle.block204:                                  ; preds = %vector.body201
  %cmp.n205 = icmp eq i32 %i.ci, %n.vec200
  br i1 %cmp.n205, label %._crit_edge.i.i.i78, label %.lr.ph.i.i.i75.preheader220

.lr.ph.i.i.i75.preheader220:                      ; preds = %.lr.ph.i.i.i75.preheader, %middle.block204
  %.0303.i.i.i76.ph = phi i32 [ %i.cg, %.lr.ph.i.i.i75.preheader ], [ %i.cj, %middle.block204 ]
  br label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %.lr.ph.i.i.i75.preheader220, %.lr.ph.i.i.i75
  %.0303.i.i.i76 = phi i32 [ %i.cr, %.lr.ph.i.i.i75 ], [ %.0303.i.i.i76.ph, %.lr.ph.i.i.i75.preheader220 ] ; 2 uses
  %i.cp = zext i32 %.0303.i.i.i76 to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cp
  store ptr null, ptr %i.cq, align 8, !tbaa !122
  %i.cr = add i32 %.0303.i.i.i76, 1               ; 2 uses
  %.not33.i.i.i77 = icmp ugt i32 %i.cr, %i.bz
  br i1 %.not33.i.i.i77, label %._crit_edge.i.i.i78, label %.lr.ph.i.i.i75, !llvm.loop !133

._crit_edge.i.i.i78:                              ; preds = %.lr.ph.i.i.i75, %middle.block204, %st_mult.exit.i.i.i73
  store i32 %i.cc, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i78, %nonstale_queue_get.exit
  %i.cs = phi ptr [ %i.cf, %._crit_edge.i.i.i78 ], [ %.pre.i.i.i72, %nonstale_queue_get.exit ]
  %i.ct = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i79 = icmp eq ptr %i.cv, null
  br i1 %.not34.i.i.i79, label %bb.l, label %bit_arrays_at.exit.i80

bb.l:                                             ; preds = %bb.k
  %i.cw = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.cx = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ct
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i80

bit_arrays_at.exit.i80:                           ; preds = %bb.l, %bb.k
  %i.cz = phi ptr [ %i.cv, %bb.k ], [ %i.cw, %bb.l ]
  %i.da = zext nneg i32 %i.ca to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !128 ; 2 uses
  %.not.i81 = icmp eq ptr %i.dc, null
  br i1 %.not.i81, label %bb.m, label %get_bit_array.exit82

bb.m:                                             ; preds = %bit_arrays_at.exit.i80
  %i.dd = call ptr @bitmap_word_alloc(i64 noundef %i.j) #12 ; 2 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !128
  br label %get_bit_array.exit82

get_bit_array.exit82:                             ; preds = %bit_arrays_at.exit.i80, %bb.m
  %i.de = phi ptr [ %i.dd, %bb.m ], [ %i.dc, %bit_arrays_at.exit.i80 ] ; 3 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %.062130 = load ptr, ptr %i.df, align 8, !tbaa !18 ; 2 uses
  %.not65131 = icmp eq ptr %.062130, null
  br i1 %.not65131, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %get_bit_array.exit82, %bb.q
  %.061129 = phi i64 [ 0, %get_bit_array.exit82 ], [ %i.ds, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.061129 ; 4 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !134
  %i.di = call i32 @bitmap_get(ptr noundef %i.de, i64 noundef %i.dh) #12
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !135
  %i.dm = call i32 @bitmap_get(ptr noundef %i.de, i64 noundef %i.dl) #12
  %i.dn = icmp ne i32 %i.dm, 0                    ; 2 uses
  %i.do = xor i1 %i.dj, %i.dn
  br i1 %i.do, label %6, label %bb.q

6:                                                ; preds = %bb.o
  br i1 %i.dn, label %7, label %bb.p

7:                                                ; preds = %6
  %8 = getelementptr inbounds nuw i8, ptr %i.dg, i64 20 ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !114
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !114
  br label %bb.q

bb.p:                                             ; preds = %6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !112
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !112
  br label %bb.q

bb.q:                                             ; preds = %7, %bb.p, %bb.o
  %i.ds = add nuw i64 %.061129, 1                 ; 2 uses
  %exitcond142.not = icmp eq i64 %i.ds, %4
  br i1 %exitcond142.not, label %bb.n, label %bb.o, !llvm.loop !136

.lr.ph:                                           ; preds = %bb.n, %insert_no_dup.exit99
  %.062132 = phi ptr [ %.062, %insert_no_dup.exit99 ], [ %.062130, %bb.n ] ; 5 uses
  %i.dt = load ptr, ptr %.062132, align 8, !tbaa !12
  %i.du = call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef %i.dt, i32 noundef 0) #12 ; 0 uses
  %i.dv = load ptr, ptr %.062132, align 8, !tbaa !12
  %i.dw = getelementptr i8, ptr %i.dv, i64 72
  %.val = load i32, ptr %i.dw, align 8, !tbaa !86 ; 2 uses
  %i.dx = udiv i32 %.val, 65532                   ; 6 uses
  %i.dy = urem i32 %.val, 65532
  %i.dz = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i83 = icmp ugt i32 %i.dz, %i.dx
  %.pre.i.i.i84 = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i83, label %bb.r, label %st_mult.exit.i.i.i85

st_mult.exit.i.i.i85:                             ; preds = %.lr.ph
  %i.ea = add nuw nsw i32 %i.dx, 1                ; 2 uses
  %i.eb = shl nuw nsw i32 %i.ea, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = call ptr @xrealloc(ptr noundef %.pre.i.i.i84, i64 noundef %i.ec) #12 ; 4 uses
  store ptr %i.ed, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.ee = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i86 = icmp ugt i32 %i.ee, %i.dx
  br i1 %.not332.i.i.i86, label %._crit_edge.i.i.i90, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %st_mult.exit.i.i.i85
  %i.ef = add nuw nsw i32 %i.dx, 1
  %i.eg = sub nuw i32 %i.ef, %i.ee                ; 3 uses
  %min.iters.check188 = icmp samesign ult i32 %i.eg, 4
  br i1 %min.iters.check188, label %.lr.ph.i.i.i87.preheader218, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i.i.i87.preheader
  %n.vec190 = and i32 %i.eg, 262140               ; 3 uses
  %i.eh = add i32 %i.ee, %n.vec190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i32 [ 0, %vector.ph189 ], [ %index.next193, %vector.body191 ] ; 2 uses
  %i.ei = add i32 %i.ee, %index192
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ek, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.el, align 8, !tbaa !122
  %index.next193 = add nuw i32 %index192, 4       ; 2 uses
  %i.em = icmp eq i32 %index.next193, %n.vec190
  br i1 %i.em, label %middle.block194, label %vector.body191, !llvm.loop !137

middle.block194:                                  ; preds = %vector.body191
  %cmp.n195 = icmp eq i32 %i.eg, %n.vec190
  br i1 %cmp.n195, label %._crit_edge.i.i.i90, label %.lr.ph.i.i.i87.preheader218

.lr.ph.i.i.i87.preheader218:                      ; preds = %.lr.ph.i.i.i87.preheader, %middle.block194
  %.0303.i.i.i88.ph = phi i32 [ %i.ee, %.lr.ph.i.i.i87.preheader ], [ %i.eh, %middle.block194 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader218, %.lr.ph.i.i.i87
  %.0303.i.i.i88 = phi i32 [ %i.ep, %.lr.ph.i.i.i87 ], [ %.0303.i.i.i88.ph, %.lr.ph.i.i.i87.preheader218 ] ; 2 uses
  %i.en = zext i32 %.0303.i.i.i88 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.en
  store ptr null, ptr %i.eo, align 8, !tbaa !122
  %i.ep = add i32 %.0303.i.i.i88, 1               ; 2 uses
  %.not33.i.i.i89 = icmp ugt i32 %i.ep, %i.dx
  br i1 %.not33.i.i.i89, label %._crit_edge.i.i.i90, label %.lr.ph.i.i.i87, !llvm.loop !138

._crit_edge.i.i.i90:                              ; preds = %.lr.ph.i.i.i87, %middle.block194, %st_mult.exit.i.i.i85
  store i32 %i.ea, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i90, %.lr.ph
  %i.eq = phi ptr [ %i.ed, %._crit_edge.i.i.i90 ], [ %.pre.i.i.i84, %.lr.ph ]
  %i.er = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i91 = icmp eq ptr %i.et, null
  br i1 %.not34.i.i.i91, label %bb.s, label %bit_arrays_at.exit.i92

bb.s:                                             ; preds = %bb.r
  %i.eu = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.ev = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.er
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i92

bit_arrays_at.exit.i92:                           ; preds = %bb.s, %bb.r
  %i.ex = phi ptr [ %i.et, %bb.r ], [ %i.eu, %bb.s ]
  %i.ey = zext nneg i32 %i.dy to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !128 ; 2 uses
  %.not.i93 = icmp eq ptr %i.fa, null
  br i1 %.not.i93, label %bb.t, label %get_bit_array.exit94

bb.t:                                             ; preds = %bit_arrays_at.exit.i92
  %i.fb = call ptr @bitmap_word_alloc(i64 noundef %i.j) #12 ; 2 uses
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !128
  br label %get_bit_array.exit94

get_bit_array.exit94:                             ; preds = %bit_arrays_at.exit.i92, %bb.t
  %i.fc = phi ptr [ %i.fb, %bb.t ], [ %i.fa, %bit_arrays_at.exit.i92 ] ; 2 uses
  call void @bitmap_or(ptr noundef %i.fc, ptr noundef %i.de) #12
  %i.fd = call i64 @bitmap_popcount(ptr noundef %i.fc) #12
  %i.fe = icmp eq i64 %i.fd, %2
  br i1 %i.fe, label %bb.u, label %bb.v

bb.u:                                             ; preds = %get_bit_array.exit94
  %i.ff = load ptr, ptr %.062132, align 8, !tbaa !12 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = or i64 %i.fg, 1125899906842624
  store i64 %i.fh, ptr %i.ff, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %get_bit_array.exit94
  %i.fi = load ptr, ptr %.062132, align 8, !tbaa !12 ; 7 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = and i64 %i.fj, 562949953421312
  %.not.i95 = icmp eq i64 %i.fk, 0
  br i1 %.not.i95, label %bb.w, label %insert_no_dup.exit99

bb.w:                                             ; preds = %bb.v
  %i.fl = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  call void @prio_queue_put(ptr noundef nonnull %5, ptr noundef nonnull %i.fi) #12
  %i.fm = load i64, ptr %i.fi, align 8
  %i.fn = and i64 %i.fm, 1125899906842624
  %.not.i.i96 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i96, label %bb.x, label %nonstale_queue_put.exit.i97

bb.x:                                             ; preds = %bb.w
  %.not11.i.i98 = icmp eq ptr %i.fl, null
  br i1 %.not11.i.i98, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = load ptr, ptr %5, align 8, !tbaa !45
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.fq = call i32 %i.fo(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fi, ptr noundef %i.fp) #12, !inline_history !130
  %i.fr = icmp slt i32 %i.fq, 1
  br i1 %i.fr, label %bb.z, label %nonstale_queue_put.exit.i97

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.fi, ptr %i.k, align 8, !tbaa !49
  br label %nonstale_queue_put.exit.i97

nonstale_queue_put.exit.i97:                      ; preds = %bb.z, %bb.y, %bb.w
  %i.fs = load i64, ptr %i.fi, align 8
  %i.ft = or i64 %i.fs, 562949953421312
  store i64 %i.ft, ptr %i.fi, align 8
  br label %insert_no_dup.exit99

insert_no_dup.exit99:                             ; preds = %bb.v, %nonstale_queue_put.exit.i97
  %i.fu = getelementptr inbounds nuw i8, ptr %.062132, i64 8
  %.062 = load ptr, ptr %i.fu, align 8, !tbaa !18 ; 2 uses
  %.not65 = icmp eq ptr %.062, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %insert_no_dup.exit99, %bb.n
  %.val69 = load i32, ptr %i.by, align 8, !tbaa !86 ; 2 uses
  %i.fv = udiv i32 %.val69, 65532                 ; 6 uses
  %i.fw = urem i32 %.val69, 65532
  %i.fx = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i100 = icmp ugt i32 %i.fx, %i.fv
  %.pre.i.i.i101 = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i100, label %bb.aa, label %st_mult.exit.i.i.i102

st_mult.exit.i.i.i102:                            ; preds = %._crit_edge
  %i.fy = add nuw nsw i32 %i.fv, 1                ; 2 uses
  %i.fz = shl nuw nsw i32 %i.fy, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = call ptr @xrealloc(ptr noundef %.pre.i.i.i101, i64 noundef %i.ga) #12 ; 4 uses
  store ptr %i.gb, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.gc = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i103 = icmp ugt i32 %i.gc, %i.fv
  br i1 %.not332.i.i.i103, label %._crit_edge.i.i.i107, label %.lr.ph.i.i.i104.preheader

.lr.ph.i.i.i104.preheader:                        ; preds = %st_mult.exit.i.i.i102
  %i.gd = add nuw nsw i32 %i.fv, 1
  %i.ge = sub nuw i32 %i.gd, %i.gc                ; 3 uses
  %min.iters.check178 = icmp samesign ult i32 %i.ge, 4
  br i1 %min.iters.check178, label %.lr.ph.i.i.i104.preheader219, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i.i.i104.preheader
  %n.vec180 = and i32 %i.ge, 262140               ; 3 uses
  %i.gf = add i32 %i.gc, %n.vec180
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i32 [ 0, %vector.ph179 ], [ %index.next183, %vector.body181 ] ; 2 uses
  %i.gg = add i32 %i.gc, %index182
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.gi, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.gj, align 8, !tbaa !122
  %index.next183 = add nuw i32 %index182, 4       ; 2 uses
  %i.gk = icmp eq i32 %index.next183, %n.vec180
  br i1 %i.gk, label %middle.block184, label %vector.body181, !llvm.loop !140

middle.block184:                                  ; preds = %vector.body181
  %cmp.n185 = icmp eq i32 %i.ge, %n.vec180
end_hunk_0
