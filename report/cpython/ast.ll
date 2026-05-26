inline.NumInlined: 66
inline.NumDeleted: 10
begin_hunk_0_@validate_keywords:bb.a
.lr.ph19:                                         ; preds = %.lr.ph.split, %bb.b
  %.071118 = phi i64 [ %i.e, %bb.b ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.a, i64 %.071118
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = tail call fastcc i32 @validate_expr(ptr noundef %i.k, i32 noundef 1)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph19, %bb.b, %.lr.ph.split, %bb.a
  %i.m = phi i32 [ 1, %.lr.ph.split ], [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph19 ]
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @validate_pattern(ptr noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97   ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !99   ; 4 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef %i.b, i32 noundef %i.d) #4 ; 0 uses
  br label %bb.bc

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.b, -1
  %.not = icmp eq i32 %i.d, %i.b                  ; 2 uses
  %or.cond = or i1 %i.h, %.not
  %i.i = getelementptr i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100  ; 5 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert169 = getelementptr i8, ptr %0, i64 52
  %.pre170 = load i32, ptr %.phi.trans.insert169, align 4, !tbaa !101
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101  ; 2 uses
  %.not114 = icmp eq i32 %i.j, %i.m
  br i1 %.not114, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.n = phi i32 [ %.pre170, %._crit_edge ], [ %i.m, %bb.e ]
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.3, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.b, i32 noundef %i.d) #4 ; 0 uses
  br label %bb.bc

bb.g:                                             ; preds = %bb.e, %bb.d
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101  ; 2 uses
  %i.s = icmp sgt i32 %i.j, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.u = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef %i.j, i32 noundef %i.r) #4 ; 0 uses
  br label %bb.bc

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.5) #4
  %.not115 = icmp eq i32 %i.v, 0
  br i1 %.not115, label %bb.k, label %bb.bc

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %0, align 8, !tbaa !102
  switch i32 %i.w, label %.thread150 [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.ac
    i32 6, label %bb.ap
    i32 7, label %bb.at
    i32 8, label %bb.az
  ]

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13
  %i.z = tail call fastcc i32 @validate_pattern_match_value(ptr noundef %i.y)
  br label %.thread148

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, @_Py_NoneStruct
  br i1 %i.ac, label %.thread148, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val132 = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.ae = icmp eq ptr %.val132, @PyBool_Type
  br i1 %i.ae, label %.thread148, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull @.str.47) #4
  br label %.thread148

bb.p:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ai = tail call fastcc i32 @validate_patterns(ptr noundef %i.ah, i32 noundef 1)
  br label %.thread148

bb.q:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.an = phi i64 [ %i.am, %bb.r ], [ 0, %bb.q ]
  %i.ao = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.as = phi i64 [ %i.ar, %bb.t ], [ 0, %bb.s ]
  %.not124 = icmp eq i64 %i.an, %i.as
  br i1 %.not124, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.48) #4
  br label %.thread148

bb.w:                                             ; preds = %bb.u
  %i.au = getelementptr i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %.not125 = icmp eq ptr %i.av, null
  br i1 %.not125, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = tail call fastcc i32 @validate_capture(ptr noundef %i.av)
  %.not126 = icmp eq i32 %i.aw, 0
  br i1 %.not126, label %.thread148, label %._crit_edge171

._crit_edge171:                                   ; preds = %bb.x
  %.pre172 = load ptr, ptr %i.aj, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge171, %bb.w
  %i.ax = phi ptr [ %.pre172, %._crit_edge171 ], [ %i.ak, %bb.w ] ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread140.thread, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.y
  %i.az = getelementptr i8, ptr %i.ax, i64 16
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph168, label %.thread140.thread

.lr.ph168:                                        ; preds = %.lr.ph159, %.thread136
  %i.bc = phi i64 [ %i.bm, %.thread136 ], [ %i.ba, %.lr.ph159 ] ; 2 uses
  %.091157167 = phi i64 [ %i.bn, %.thread136 ], [ 0, %.lr.ph159 ] ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.az, i64 %.091157167
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !42
  %i.bg = icmp eq i32 %i.bf, 22
  br i1 %i.bg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph168
  %i.bh = getelementptr i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, @_Py_NoneStruct
  br i1 %i.bj, label %.thread136, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  %.val = load ptr, ptr %i.bk, align 8, !tbaa !74
  %.not152 = icmp eq ptr %.val, @PyBool_Type
  br i1 %.not152, label %.thread136, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph168
  %i.bl = tail call fastcc i32 @validate_pattern_match_value(ptr noundef nonnull %i.be)
  %.not128 = icmp eq i32 %i.bl, 0
  br i1 %.not128, label %.thread148, label %..thread136_crit_edge

..thread136_crit_edge:                            ; preds = %bb.ab
  %.pre173 = load i64, ptr %i.ax, align 8, !tbaa !14
  br label %.thread136

.thread136:                                       ; preds = %..thread136_crit_edge, %bb.aa, %bb.z
  %i.bm = phi i64 [ %.pre173, %..thread136_crit_edge ], [ %i.bc, %bb.aa ], [ %i.bc, %bb.z ] ; 2 uses
  %i.bn = add nuw nsw i64 %.091157167, 1          ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph168, label %.thread140.thread

.thread140.thread:                                ; preds = %.thread136, %bb.y, %.lr.ph159
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !13
  %i.bq = tail call fastcc i32 @validate_patterns(ptr noundef %i.bp, i32 noundef 0)
  br label %.thread148

bb.ac:                                            ; preds = %bb.k
  %i.br = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bw = phi i64 [ %i.bv, %bb.ad ], [ 0, %bb.ac ]
  %i.bx = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !13 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cb = phi i64 [ %i.ca, %bb.af ], [ 0, %bb.ae ]
  %.not119 = icmp eq i64 %i.bw, %i.cb
  br i1 %.not119, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.cc, ptr noundef nonnull @.str.49) #4
  br label %.thread148

bb.ai:                                            ; preds = %bb.ag
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !13
  %i.ce = tail call fastcc i32 @validate_expr(ptr noundef %i.cd, i32 noundef 1)
  %.not120 = icmp eq i32 %i.ce, 0
  br i1 %.not120, label %.thread148, label %.preheader

.preheader:                                       ; preds = %bb.ai, %bb.aj
  %.085.in = phi ptr [ %i.ci, %bb.aj ], [ %i.br, %bb.ai ]
  %.085 = load ptr, ptr %.085.in, align 8, !tbaa !13 ; 2 uses
  %i.cf = load i32, ptr %.085, align 8, !tbaa !42
  switch i32 %i.cf, label %bb.ak [
    i32 26, label %.critedge.preheader
    i32 23, label %bb.aj
  ]

.critedge.preheader:                              ; preds = %.preheader
  %i.cg = load ptr, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.critedge155, label %.lr.ph

bb.aj:                                            ; preds = %.preheader
  %i.ci = getelementptr i8, ptr %.085, i64 8
  br label %.preheader

bb.ak:                                            ; preds = %.preheader
  %i.cj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.cj, ptr noundef nonnull @.str.50) #4
  br label %.thread148

.critedge:                                        ; preds = %bb.an
  %i.ck = add nuw nsw i64 %.084156, 1
  %i.cl = load ptr, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.critedge155, label %.lr.ph, !llvm.loop !103

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge
  %i.cn = phi ptr [ %i.cl, %.critedge ], [ %i.cg, %.critedge.preheader ] ; 2 uses
  %.084156 = phi i64 [ %i.ck, %.critedge ], [ 0, %.critedge.preheader ] ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.cp = icmp slt i64 %.084156, %i.co
  br i1 %i.cp, label %bb.al, label %.critedge155

bb.al:                                            ; preds = %.lr.ph
  %i.cq = getelementptr i8, ptr %i.cn, i64 16
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %.084156
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22 ; 3 uses
  %i.ct = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.cs, ptr noundef nonnull @.str.37) #4
  %.not9.i = icmp eq i32 %i.ct, 0
  br i1 %.not9.i, label %bb.am, label %.thread145

bb.am:                                            ; preds = %bb.al
  %i.cu = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.cs, ptr noundef nonnull @.str.38) #4
  %.not9.1.i = icmp eq i32 %i.cu, 0
  br i1 %.not9.1.i, label %bb.an, label %.thread145

bb.an:                                            ; preds = %bb.am
  %i.cv = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.cs, ptr noundef nonnull @.str.39) #4
  %.not9.2.i = icmp eq i32 %i.cv, 0
  br i1 %.not9.2.i, label %.critedge, label %.thread145

.thread145:                                       ; preds = %bb.an, %bb.am, %bb.al
  %.lcssa.i = phi ptr [ @.str.37, %bb.al ], [ @.str.38, %bb.am ], [ @.str.39, %bb.an ]
  %i.cw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.cx = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cw, ptr noundef nonnull @.str.40, ptr noundef nonnull %.lcssa.i) #4 ; 0 uses
  br label %.thread148

.critedge155:                                     ; preds = %.lr.ph, %.critedge, %.critedge.preheader
  %i.cy = getelementptr i8, ptr %0, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !13
  %i.da = tail call fastcc i32 @validate_patterns(ptr noundef %i.cz, i32 noundef 0)
  %.not123 = icmp eq i32 %i.da, 0
  br i1 %.not123, label %.thread148, label %bb.ao

bb.ao:                                            ; preds = %.critedge155
  %i.db = load ptr, ptr %i.bx, align 8, !tbaa !13
  %i.dc = tail call fastcc i32 @validate_patterns(ptr noundef %i.db, i32 noundef 0)
  br label %.thread148

bb.ap:                                            ; preds = %bb.k
  %.not118 = icmp eq i32 %1, 0
  br i1 %.not118, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dd = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dd, ptr noundef nonnull @.str.51) #4
  br label %.thread148

bb.ar:                                            ; preds = %bb.ap
  %i.de = getelementptr i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !13 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.thread148, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = tail call fastcc i32 @validate_capture(ptr noundef %i.df)
  br label %.thread148

bb.at:                                            ; preds = %bb.k
  %i.di = getelementptr i8, ptr %0, i64 8
  %i.dj = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !13 ; 2 uses
  %.not116 = icmp eq ptr %i.dk, null
  br i1 %.not116, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dl = tail call fastcc i32 @validate_capture(ptr noundef %i.dk)
  %.not117 = icmp eq i32 %i.dl, 0
  br i1 %.not117, label %.thread148, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !13 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.thread148, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !13
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dq, ptr noundef nonnull @.str.52) #4
  br label %.thread148

bb.ay:                                            ; preds = %bb.aw
  %i.dr = tail call fastcc i32 @validate_pattern(ptr noundef nonnull %i.dm, i32 noundef 0)
  br label %.thread148

bb.az:                                            ; preds = %bb.k
  %i.ds = getelementptr i8, ptr %0, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !13 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.critedge130, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !14
  %i.dw = icmp slt i64 %i.dv, 2
  br i1 %i.dw, label %.critedge130, label %bb.bb

.critedge130:                                     ; preds = %bb.az, %bb.ba
  %i.dx = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dx, ptr noundef nonnull @.str.53) #4
  br label %.thread148

bb.bb:                                            ; preds = %bb.ba
  %i.dy = tail call fastcc i32 @validate_patterns(ptr noundef nonnull %i.dt, i32 noundef 0)
  br label %.thread148

.thread150:                                       ; preds = %bb.k
  %i.dz = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dz, ptr noundef nonnull @.str.54) #4
  br label %.thread148

.thread148:                                       ; preds = %bb.ab, %bb.p, %.thread140.thread, %bb.ao, %bb.bb, %bb.m, %.thread145, %bb.av, %bb.ar, %.critedge130, %bb.as, %bb.ay, %bb.ax, %bb.au, %bb.aq, %.critedge155, %bb.x, %bb.ai, %bb.ak, %bb.ah, %bb.v, %bb.o, %bb.n, %bb.l, %.thread150
  %.8 = phi i32 [ 0, %.thread150 ], [ %i.bq, %.thread140.thread ], [ 0, %.thread145 ], [ %i.z, %bb.l ], [ 1, %bb.av ], [ 1, %bb.ar ], [ 0, %.critedge130 ], [ %i.dh, %bb.as ], [ %i.dr, %bb.ay ], [ 0, %bb.ax ], [ 0, %bb.au ], [ 0, %bb.aq ], [ 0, %.critedge155 ], [ 0, %bb.x ], [ 0, %bb.ai ], [ 1, %bb.m ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ 1, %bb.n ], [ 0, %bb.v ], [ 0, %bb.o ], [ %i.ai, %bb.p ], [ %i.dy, %bb.bb ], [ %i.dc, %bb.ao ], [ 0, %bb.ab ]
  tail call void @Py_LeaveRecursiveCall() #4
  br label %bb.bc

bb.bc:                                            ; preds = %.thread148, %bb.j, %bb.i, %bb.f, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.i ], [ %.8, %.thread148 ], [ 0, %bb.j ]
  ret i32 %.1
}

declare void @Py_LeaveRecursiveCall() local_unnamed_addr #1
end_hunk_0
