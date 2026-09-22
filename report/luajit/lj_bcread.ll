Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_bcread?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@lj_err_allmsg = external hidden local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden ptr @lj_bcread_proto(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.TValue, align 8              ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 47 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = load i8, ptr %i.b, align 1, !tbaa !21    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !20
  %i.f = load i8, ptr %i.c, align 1, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !20
  %i.h = load i8, ptr %i.e, align 1, !tbaa !21    ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.j, ptr %i.a, align 8, !tbaa !20
  %i.k = load i8, ptr %i.g, align 1, !tbaa !21    ; 6 uses
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 6 uses
  %i.n = tail call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 4 uses
  %i.o = tail call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.p = add i32 %i.o, 1                          ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22
  %i.s = and i32 %i.r, 2
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not94 = icmp eq i32 %i.t, 0
  br i1 %.not94, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10
  %i.v = tail call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.092 = phi i32 [ 0, %bb.a ], [ %i.t, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.091 = phi i32 [ 0, %bb.a ], [ %i.u, %bb.c ], [ 0, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ %i.v, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.w = shl i32 %i.p, 2                          ; 2 uses
  %i.x = shl i32 %i.m, 3
  %i.y = add i32 %i.x, 108
  %i.z = add i32 %i.y, %i.w
  %i.aa = and i32 %i.z, -8                        ; 2 uses
  %i.ab = shl i32 %i.n, 3
  %i.ac = add i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = shl nuw nsw i32 %i.l, 1                 ; 2 uses
  %i.ae = add nuw nsw i32 %i.ad, 2
  %i.af = and i32 %i.ae, 1020
  %i.ag = add i32 %i.ac, %i.af                    ; 2 uses
  %i.ah = add i32 %.092, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ak = zext i32 %i.ah to i64
  %i.al = tail call ptr @lj_mem_newgco(ptr noundef %i.aj, i64 noundef %i.ak) #10 ; 25 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  store i8 7, ptr %i.am, align 1, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  store i8 %i.f, ptr %i.an, align 2, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 11
  store i8 %i.h, ptr %i.ao, align 1, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  store i32 %i.p, ptr %i.ap, align 4, !tbaa !59
  %i.aq = zext i32 %i.aa to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !60
  %i.au = zext i32 %i.ac to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  store i32 %i.n, ptr %i.az, align 4, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i32 %i.ah, ptr %i.ba, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 60 ; 2 uses
  store i8 %i.k, ptr %i.bb, align 4, !tbaa !65
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 61
  store i8 %i.d, ptr %i.bc, align 1, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 62
  store i16 0, ptr %i.bd, align 2, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !68
  %i.bi = add i32 %i.m, 1
  %i.bj = zext i32 %i.bi to i64
  %.neg = mul nsw i64 %i.bj, -8
  %i.bk = getelementptr inbounds i8, ptr %i.ar, i64 %.neg
  store i32 0, ptr %i.bk, align 4, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !26
  %.not.i = icmp eq i32 %i.bn, 1
  %i.bo = and i8 %i.d, 2
  %.not17.i = icmp eq i8 %i.bo, 0
  %..i = select i1 %.not17.i, i32 96, i32 99
  %.016.i = select i1 %.not.i, i32 %..i, i32 19
  %i.bp = shl nuw nsw i32 %i.i, 8
  %i.bq = or disjoint i32 %.016.i, %i.bp
  store i32 %i.bq, ptr %i.bl, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 108
  %i.bs = add i32 %i.w, -4
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.bu = zext i32 %i.bs to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 1 %i.bt, i64 %i.bu, i1 false)
  %i.bw = load i32, ptr %i.q, align 4, !tbaa !22
  %.not18.i = trunc i32 %i.bw to i1
  %i.bx = icmp ugt i32 %i.p, 1
  %or.cond.i = and i1 %i.bx, %.not18.i
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %bcread_bytecode.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i32 %i.p to i64       ; 2 uses
  %i.by = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.p, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.bz = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !69
  %wide.load162 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !69
  %i.cd = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ce = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load162)
  store <4 x i32> %i.cd, ptr %i.cb, align 4, !tbaa !69
  store <4 x i32> %i.ce, ptr %i.cc, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %bcread_bytecode.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !69
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.ch)
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !69
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bcread_bytecode.exit, label %.lr.ph.i, !llvm.loop !38

bcread_bytecode.exit:                             ; preds = %.lr.ph.i, %middle.block, %bb.d
  %.not.i99 = icmp eq i8 %i.k, 0
  br i1 %.not.i99, label %bcread_uv.exit, label %bb.e

bb.e:                                             ; preds = %bcread_bytecode.exit
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ck = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.cj, i64 %i.ck, i1 false)
  %i.cm = load i32, ptr %i.q, align 4, !tbaa !22
  %i.cn = and i32 %i.cm, 1
  %.not15.i = icmp eq i32 %i.cn, 0
  br i1 %.not15.i, label %bcread_uv.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %wide.trip.count.i100 = zext i8 %i.k to i64     ; 6 uses
  %min.iters.check164 = icmp ult i8 %i.k, 4
  br i1 %min.iters.check164, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check165 = icmp ult i8 %i.k, 16
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph166

vector.ph166:                                     ; preds = %vector.main.loop.iter.check
  %i.co = and i64 %wide.trip.count.i100, 12
  %n.vec167 = and i64 %wide.trip.count.i100, 240  ; 4 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body168 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index169 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load170 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !72
  %wide.load171 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !72
  %i.cr = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load170)
  %i.cs = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load171)
  store <8 x i16> %i.cr, ptr %i.cp, align 2, !tbaa !72
  store <8 x i16> %i.cs, ptr %i.cq, align 2, !tbaa !72
  %index.next172 = add nuw i64 %index169, 16      ; 2 uses
  %i.ct = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.ct, label %middle.block173, label %vector.body168, !llvm.loop !39

middle.block173:                                  ; preds = %vector.body168
  %cmp.n174 = icmp eq i64 %n.vec167, %wide.trip.count.i100
  br i1 %cmp.n174, label %bcread_uv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block173
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec167, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec175 = and i64 %wide.trip.count.i100, 252  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index176 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next178, %vec.epilog.vector.body ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %index176 ; 2 uses
  %wide.load177 = load <4 x i16>, ptr %i.cu, align 2, !tbaa !72
  %i.cv = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load177)
  store <4 x i16> %i.cv, ptr %i.cu, align 2, !tbaa !72
  %index.next178 = add nuw i64 %index176, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next178, %n.vec175
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n179 = icmp eq i64 %n.vec175, %wide.trip.count.i100
  br i1 %cmp.n179, label %bcread_uv.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i101.ph = phi i64 [ 0, %iter.check ], [ %n.vec167, %vec.epilog.iter.check ], [ %n.vec175, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i101 = phi i64 [ %indvars.iv.next.i102, %.preheader.i ], [ %indvars.iv.i101.ph, %.preheader.i.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.i101 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !72
  %i.cz = tail call i16 @llvm.bswap.i16(i16 %i.cy)
  store i16 %i.cz, ptr %i.cx, align 2, !tbaa !72
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i103 = icmp eq i64 %indvars.iv.next.i102, %wide.trip.count.i100
  br i1 %exitcond.not.i103, label %bcread_uv.exit, label %.preheader.i, !llvm.loop !41

bcread_uv.exit:                                   ; preds = %.preheader.i, %middle.block173, %vec.epilog.middle.block, %bcread_bytecode.exit, %bb.e
  %.not.i104 = icmp eq i32 %i.m, 0
  br i1 %.not.i104, label %bcread_kgc.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %bcread_uv.exit
  %.val = load i64, ptr %i.at, align 8, !tbaa !60
  %i.da = inttoptr i64 %.val to ptr
  %i.db = zext i32 %i.m to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.al, %.lr.ph.i105
  %.03.i = phi i32 [ 0, %.lr.ph.i105 ], [ %i.hp, %bb.al ]
  %.0442.i = phi ptr [ %i.dd, %.lr.ph.i105 ], [ %i.hq, %bb.al ] ; 5 uses
  %i.dg = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 5 uses
  %i.dh = icmp ugt i32 %i.dg, 4
  br i1 %i.dh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.di = add i32 %i.dg, -5
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.dk = zext i32 %i.di to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !20
  %i.dm = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.dn = call ptr @lj_str_new(ptr noundef %i.dm, ptr noundef %i.dj, i64 noundef %i.dk) #10
  %i.do = ptrtoint ptr %i.dn to i64
  store i64 %i.do, ptr %.0442.i, align 8, !tbaa !74
  br label %bb.al

bb.h:                                             ; preds = %bb.f
  switch i32 %i.dg, label %bb.ag [
    i32 1, label %bb.i
    i32 0, label %bb.ai
  ]

bb.i:                                             ; preds = %bb.h
  %i.dp = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 3 uses
  %i.dq = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 4 uses
  %i.dr = load ptr, ptr %i.ai, align 8, !tbaa !23
  %.not.i.i = icmp eq i32 %i.dq, 0                ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ds = icmp eq i32 %i.dq, 1
  br i1 %i.ds, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = add i32 %i.dq, -1
  %i.du = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dt, i1 true)
  %i.dv = sub nuw nsw i32 32, %i.du
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.dw = phi i32 [ 1, %bb.j ], [ %i.dv, %bb.k ], [ 0, %bb.i ]
  %i.dx = call ptr @lj_tab_new(ptr noundef %i.dr, i32 noundef %i.dp, i32 noundef %i.dw) #10 ; 5 uses
  %.not28.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not28.i.i, label %.loopexit31.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !76
  %i.ea = inttoptr i64 %i.dz to ptr
  br label %bb.n

bb.n:                                             ; preds = %bcread_ktabk.exit.i.i, %bb.m
  %.02433.i.i = phi ptr [ %i.ea, %bb.m ], [ %i.eu, %bcread_ktabk.exit.i.i ] ; 6 uses
  %.02532.i.i = phi i32 [ 0, %bb.m ], [ %i.et, %bcread_ktabk.exit.i.i ]
  %i.eb = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 4 uses
  %i.ec = icmp ugt i32 %i.eb, 4
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ed = add i32 %i.eb, -5
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ef = zext i32 %i.ed to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  store ptr %i.eg, ptr %i.a, align 8, !tbaa !20
  %i.eh = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ei = call ptr @lj_str_new(ptr noundef %i.eh, ptr noundef %i.ee, i64 noundef %i.ef) #10
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = or i64 %i.ej, -703687441776640
  store i64 %i.ek, ptr %.02433.i.i, align 8, !tbaa !21
  br label %bcread_ktabk.exit.i.i

bb.p:                                             ; preds = %bb.n
  switch i32 %i.eb, label %bb.s [
    i32 3, label %bb.q
    i32 4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.el = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10
  %i.em = sitofp i32 %i.el to double
  store double %i.em, ptr %.02433.i.i, align 8, !tbaa !21
  br label %bcread_ktabk.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.en = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10
  store i32 %i.en, ptr %.02433.i.i, align 8, !tbaa !21
  %i.eo = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10
  %i.ep = getelementptr inbounds nuw i8, ptr %.02433.i.i, i64 4
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !21
  br label %bcread_ktabk.exit.i.i

bb.s:                                             ; preds = %bb.p
  %i.eq = zext nneg i32 %i.eb to i64
  %i.er = shl nuw nsw i64 %i.eq, 47
  %i.es = xor i64 %i.er, -1
  store i64 %i.es, ptr %.02433.i.i, align 8, !tbaa !21
  br label %bcread_ktabk.exit.i.i

bcread_ktabk.exit.i.i:                            ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %i.et = add nuw i32 %.02532.i.i, 1              ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02433.i.i, i64 8
  %exitcond.not.i.i = icmp eq i32 %i.et, %i.dp
  br i1 %exitcond.not.i.i, label %.loopexit31.i.i, label %bb.n, !llvm.loop !42

.loopexit31.i.i:                                  ; preds = %bcread_ktabk.exit.i.i, %bb.l
  br i1 %.not.i.i, label %.loopexit31.i.bcread_ktab.exit_crit_edge.i, label %.preheader.i.i

.loopexit31.i.bcread_ktab.exit_crit_edge.i:       ; preds = %.loopexit31.i.i
  %.pre.i = ptrtoint ptr %i.dx to i64
  br label %bcread_ktab.exit.i

.preheader.i.i:                                   ; preds = %.loopexit31.i.i
  %i.ev = icmp ne ptr %i.dx, null
  %i.ew = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ex = or i64 %i.ew, -1688849860263936
  br label %bb.t

bb.t:                                             ; preds = %bcread_ktabk.exit30.i.i, %.preheader.i.i
  %.034.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.gk, %bcread_ktabk.exit30.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.ey = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10 ; 4 uses
  %i.ez = icmp ugt i32 %i.ey, 4
  br i1 %i.ez, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fa = add i32 %i.ey, -5
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.fc = zext i32 %i.fa to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
end_hunk_0
begin_hunk_1_@lj_bcread_proto:bb.a
  %i.ha = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !21
  br label %bb.al

bb.ai:                                            ; preds = %bb.h
  %i.hc = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !30 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !31
  %i.hh = inttoptr i64 %i.hg to ptr
  %i.hi = load i32, ptr %i.de, align 4, !tbaa !32
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.hh, i64 %i.hj
  %.not46.i = icmp ugt ptr %i.he, %i.hk
  br i1 %.not46.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hl = getelementptr i8, ptr %0, i64 128
  %.val47.i = load ptr, ptr %i.hl, align 8, !tbaa !33
  call fastcc void @bcread_error(ptr nonnull %i.hc, ptr %.val47.i, i32 noundef 3134)
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.hm = getelementptr inbounds i8, ptr %i.he, i64 -8 ; 2 uses
  store ptr %i.hm, ptr %i.hd, align 8, !tbaa !30
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !21
  %i.ho = and i64 %i.hn, 140737488355327
  store i64 %i.ho, ptr %.0442.i, align 8, !tbaa !74
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.ag, %bcread_ktab.exit.i, %bb.g
  %i.hp = add nuw i32 %.03.i, 1                   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0442.i, i64 8
  %exitcond.not.i106 = icmp eq i32 %i.hp, %i.m
  br i1 %exitcond.not.i106, label %bcread_kgc.exit, label %bb.f, !llvm.loop !44

bcread_kgc.exit:                                  ; preds = %bb.al, %bcread_uv.exit
  store i32 %i.m, ptr %i.ay, align 8, !tbaa !62
  %.not4.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i, label %bcread_knum.exit, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bcread_kgc.exit
  %.val96 = load i64, ptr %i.at, align 8, !tbaa !60
  %i.hr = inttoptr i64 %.val96 to ptr
  br label %bb.am

bb.am:                                            ; preds = %bb.ar, %.lr.ph.i107
  %.03.i108 = phi ptr [ %i.hr, %.lr.ph.i107 ], [ %i.im, %bb.ar ] ; 4 uses
  %.0132.i = phi i32 [ 0, %.lr.ph.i107 ], [ %i.il, %bb.ar ]
  %i.hs = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !21  ; 3 uses
  %i.hu = and i8 %i.ht, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 1 ; 2 uses
  %i.hw = lshr i8 %i.ht, 1
  %i.hx = zext nneg i8 %i.hw to i32               ; 2 uses
  %i.hy = icmp slt i8 %i.ht, 0
  br i1 %i.hy, label %bb.an, label %bcread_uleb128_33.exit.i, !prof !34

bb.an:                                            ; preds = %bb.am
  %i.hz = and i32 %i.hx, 63
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.011.i.i = phi ptr [ %i.hv, %bb.an ], [ %i.ig, %bb.ao ] ; 2 uses
  %.010.i.i = phi i32 [ %i.hz, %bb.an ], [ %i.if, %bb.ao ]
  %.0.i.i = phi i32 [ -1, %bb.an ], [ %i.id, %bb.ao ]
  %i.ia = load i8, ptr %.011.i.i, align 1, !tbaa !21 ; 2 uses
  %i.ib = and i8 %i.ia, 127
  %i.ic = zext nneg i8 %i.ib to i32
  %i.id = add nsw i32 %.0.i.i, 7                  ; 2 uses
  %i.ie = shl i32 %i.ic, %i.id
  %i.if = or i32 %i.ie, %.010.i.i                 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1 ; 2 uses
  %i.ih = icmp slt i8 %i.ia, 0
  br i1 %i.ih, label %bb.ao, label %bcread_uleb128_33.exit.i, !llvm.loop !45

bcread_uleb128_33.exit.i:                         ; preds = %bb.ao, %bb.am
  %.112.i.i = phi ptr [ %i.hv, %bb.am ], [ %i.ig, %bb.ao ]
  %.1.i.i = phi i32 [ %i.hx, %bb.am ], [ %i.if, %bb.ao ] ; 2 uses
  store ptr %.112.i.i, ptr %i.a, align 8, !tbaa !20
  %.not.i109 = icmp eq i8 %i.hu, 0
  br i1 %.not.i109, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bcread_uleb128_33.exit.i
  store i32 %.1.i.i, ptr %.03.i108, align 8, !tbaa !21
  %i.ii = call i32 @lj_buf_ruleb128(ptr noundef nonnull %i.a) #10
  %i.ij = getelementptr inbounds nuw i8, ptr %.03.i108, i64 4
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !21
  br label %bb.ar

bb.aq:                                            ; preds = %bcread_uleb128_33.exit.i
  %i.ik = sitofp i32 %.1.i.i to double
  store double %i.ik, ptr %.03.i108, align 8, !tbaa !21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.il = add nuw i32 %.0132.i, 1                 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.03.i108, i64 8
  %exitcond.not.i110 = icmp eq i32 %i.il, %i.n
  br i1 %exitcond.not.i110, label %bcread_knum.exit, label %bb.am, !llvm.loop !46

bcread_knum.exit:                                 ; preds = %bb.ar, %bcread_kgc.exit
  %i.in = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i32 %.091, ptr %i.in, align 8, !tbaa !80
  %i.io = getelementptr inbounds nuw i8, ptr %i.al, i64 76 ; 2 uses
  store i32 %.0, ptr %i.io, align 4, !tbaa !81
  %.not95 = icmp eq i32 %.092, 0
  br i1 %.not95, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bcread_knum.exit
  %i.ip = icmp slt i32 %.0, 256
  %i.iq = icmp slt i32 %.0, 65536
  %i.ir = select i1 %i.iq, i32 1, i32 2
  %i.is = select i1 %i.ip, i32 0, i32 %i.ir
  %i.it = shl i32 %i.o, %i.is
  %i.iu = zext i32 %i.ag to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.iu ; 8 uses
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !82
  %i.iy = zext i32 %i.it to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iy
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.al, i64 88 ; 2 uses
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !83
  %i.jc = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.jd = zext i32 %.092 to i64                   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd
  store ptr %i.je, ptr %i.a, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iv, ptr noundef nonnull align 1 dereferenceable(1) %i.jc, i64 %i.jd, i1 false)
  %i.jf = load i32, ptr %i.q, align 4, !tbaa !22
  %i.jg = and i32 %i.jf, 1
  %.not.i111 = icmp eq i32 %i.jg, 0
  br i1 %.not.i111, label %bcread_dbg.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jh = load i32, ptr %i.io, align 4, !tbaa !81 ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, 255
  br i1 %i.ji, label %bb.au, label %bcread_dbg.exit

bb.au:                                            ; preds = %bb.at
  %i.jj = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.jk = add i32 %i.jj, -1                       ; 6 uses
  %i.jl = icmp samesign ult i32 %i.jh, 65536
  %.not32.i = icmp eq i32 %i.jk, 0                ; 2 uses
  br i1 %i.jl, label %.preheader.i118, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.au
  br i1 %.not32.i, label %bcread_dbg.exit, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %.preheader26.i
  %wide.trip.count.i113 = zext i32 %i.jk to i64   ; 3 uses
  %min.iters.check182 = icmp ult i32 %i.jk, 8
  br i1 %min.iters.check182, label %.lr.ph.i114.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.preheader.i112
  %n.vec184 = and i64 %wide.trip.count.i113, 4294967288 ; 3 uses
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next189, %vector.body185 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index186 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  %wide.load187 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !69
  %wide.load188 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !69
  %i.jo = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load187)
  %i.jp = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load188)
  store <4 x i32> %i.jo, ptr %i.jm, align 4, !tbaa !69
  store <4 x i32> %i.jp, ptr %i.jn, align 4, !tbaa !69
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.jq, label %middle.block190, label %vector.body185, !llvm.loop !47

middle.block190:                                  ; preds = %vector.body185
  %cmp.n191 = icmp eq i64 %n.vec184, %wide.trip.count.i113
  br i1 %cmp.n191, label %bcread_dbg.exit, label %.lr.ph.i114.preheader

.lr.ph.i114.preheader:                            ; preds = %.lr.ph.preheader.i112, %middle.block190
  %indvars.iv.i115.ph = phi i64 [ 0, %.lr.ph.preheader.i112 ], [ %n.vec184, %middle.block190 ]
  br label %.lr.ph.i114

.preheader.i118:                                  ; preds = %bb.au
  br i1 %.not32.i, label %bcread_dbg.exit, label %iter.check207

iter.check207:                                    ; preds = %.preheader.i118
  %wide.trip.count38.i = zext i32 %i.jk to i64    ; 6 uses
  %min.iters.check194 = icmp ult i32 %i.jk, 4
  br i1 %min.iters.check194, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check195

vector.main.loop.iter.check195:                   ; preds = %iter.check207
  %min.iters.check196 = icmp ult i32 %i.jk, 16
  br i1 %min.iters.check196, label %vec.epilog.ph211, label %vector.ph197

vector.ph197:                                     ; preds = %vector.main.loop.iter.check195
  %i.jr = and i64 %wide.trip.count38.i, 12
  %n.vec198 = and i64 %wide.trip.count38.i, 4294967280 ; 4 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph197
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next203, %vector.body199 ] ; 2 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %index200 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %wide.load201 = load <8 x i16>, ptr %i.js, align 2, !tbaa !72
  %wide.load202 = load <8 x i16>, ptr %i.jt, align 2, !tbaa !72
  %i.ju = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load201)
  %i.jv = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load202)
  store <8 x i16> %i.ju, ptr %i.js, align 2, !tbaa !72
  store <8 x i16> %i.jv, ptr %i.jt, align 2, !tbaa !72
  %index.next203 = add nuw i64 %index200, 16      ; 2 uses
  %i.jw = icmp eq i64 %index.next203, %n.vec198
  br i1 %i.jw, label %middle.block204, label %vector.body199, !llvm.loop !48

middle.block204:                                  ; preds = %vector.body199
  %cmp.n205 = icmp eq i64 %n.vec198, %wide.trip.count38.i
  br i1 %cmp.n205, label %bcread_dbg.exit, label %vec.epilog.iter.check209

vec.epilog.iter.check209:                         ; preds = %middle.block204
  %min.epilog.iters.check210 = icmp eq i64 %i.jr, 0
  br i1 %min.epilog.iters.check210, label %.lr.ph30.i.preheader, label %vec.epilog.ph211, !prof !73

vec.epilog.ph211:                                 ; preds = %vector.main.loop.iter.check195, %vec.epilog.iter.check209
  %vec.epilog.resume.val206 = phi i64 [ %n.vec198, %vec.epilog.iter.check209 ], [ 0, %vector.main.loop.iter.check195 ]
  %n.vec212 = and i64 %wide.trip.count38.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body213

vec.epilog.vector.body213:                        ; preds = %vec.epilog.vector.body213, %vec.epilog.ph211
  %index214 = phi i64 [ %vec.epilog.resume.val206, %vec.epilog.ph211 ], [ %index.next216, %vec.epilog.vector.body213 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %index214 ; 2 uses
  %wide.load215 = load <4 x i16>, ptr %i.jx, align 2, !tbaa !72
  %i.jy = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load215)
  store <4 x i16> %i.jy, ptr %i.jx, align 2, !tbaa !72
  %index.next216 = add nuw i64 %index214, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next216, %n.vec212
  br i1 %i.jz, label %vec.epilog.middle.block217, label %vec.epilog.vector.body213, !llvm.loop !49

vec.epilog.middle.block217:                       ; preds = %vec.epilog.vector.body213
  %cmp.n218 = icmp eq i64 %n.vec212, %wide.trip.count38.i
  br i1 %cmp.n218, label %bcread_dbg.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check207, %vec.epilog.iter.check209, %vec.epilog.middle.block217
  %indvars.iv35.i.ph = phi i64 [ 0, %iter.check207 ], [ %n.vec198, %vec.epilog.iter.check209 ], [ %n.vec212, %vec.epilog.middle.block217 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %.lr.ph30.i ], [ %indvars.iv35.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %indvars.iv35.i ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !72
  %i.kc = call i16 @llvm.bswap.i16(i16 %i.kb)
  store i16 %i.kc, ptr %i.ka, align 2, !tbaa !72
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %bcread_dbg.exit, label %.lr.ph30.i, !llvm.loop !50

.lr.ph.i114:                                      ; preds = %.lr.ph.i114.preheader, %.lr.ph.i114
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i116, %.lr.ph.i114 ], [ %indvars.iv.i115.ph, %.lr.ph.i114.preheader ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i115 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !69
  %i.kf = call i32 @llvm.bswap.i32(i32 %i.ke)
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !69
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i113
  br i1 %exitcond.not.i117, label %bcread_dbg.exit, label %.lr.ph.i114, !llvm.loop !51

bcread_dbg.exit:                                  ; preds = %.lr.ph.i114, %.lr.ph30.i, %middle.block190, %middle.block204, %vec.epilog.middle.block217, %bb.as, %bb.at, %.preheader26.i, %.preheader.i118
  %.val97 = load i8, ptr %i.bb, align 4, !tbaa !65 ; 3 uses
  %.val98 = load i64, ptr %i.jb, align 8, !tbaa !83 ; 2 uses
  %.not.i119 = icmp eq i8 %.val97, 0
  br i1 %.not.i119, label %bcread_varinfo.exit, label %.preheader.preheader.i120

.preheader.preheader.i120:                        ; preds = %bcread_dbg.exit
  %i.kg = inttoptr i64 %.val98 to ptr             ; 2 uses
  %i.kh = zext i8 %.val97 to i32                  ; 3 uses
  %xtraiter = and i32 %i.kh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i121.outer.prol.loopexit, label %.preheader.i121.outer.prol

.preheader.i121.outer.prol:                       ; preds = %.preheader.preheader.i120, %bb.av
  %.05.i.ph.prol = phi ptr [ %i.ki, %bb.av ], [ %i.kg, %.preheader.preheader.i120 ]
  %.0.i.ph.prol = phi i32 [ %i.kk, %bb.av ], [ %i.kh, %.preheader.preheader.i120 ]
  %prol.iter = phi i32 [ %prol.iter.next, %bb.av ], [ 0, %.preheader.preheader.i120 ]
  br label %.preheader.i121.prol

.preheader.i121.prol:                             ; preds = %.preheader.i121.prol, %.preheader.i121.outer.prol
  %.05.i.prol = phi ptr [ %i.ki, %.preheader.i121.prol ], [ %.05.i.ph.prol, %.preheader.i121.outer.prol ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.prol, i64 1 ; 4 uses
  %i.kj = load i8, ptr %.05.i.prol, align 1, !tbaa !21
  %.not9.i.prol = icmp eq i8 %i.kj, 0
  br i1 %.not9.i.prol, label %bb.av, label %.preheader.i121.prol, !llvm.loop !52

bb.av:                                            ; preds = %.preheader.i121.prol
  %i.kk = add nsw i32 %.0.i.ph.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i121.outer.prol.loopexit, label %.preheader.i121.outer.prol, !llvm.loop !53

.preheader.i121.outer.prol.loopexit:              ; preds = %bb.av, %.preheader.preheader.i120
  %.lcssa.lcssa.unr = phi ptr [ poison, %.preheader.preheader.i120 ], [ %i.ki, %bb.av ]
  %.05.i.ph.unr = phi ptr [ %i.kg, %.preheader.preheader.i120 ], [ %i.ki, %bb.av ]
  %.0.i.ph.unr = phi i32 [ %i.kh, %.preheader.preheader.i120 ], [ %i.kk, %bb.av ]
  %i.kl = icmp ult i8 %.val97, 4
  br i1 %i.kl, label %bcread_varinfo.exit.loopexit, label %.preheader.i121.outer

.preheader.i121.outer:                            ; preds = %.preheader.i121.outer.prol.loopexit, %bb.aw
  %.05.i.ph = phi ptr [ %i.ks, %bb.aw ], [ %.05.i.ph.unr, %.preheader.i121.outer.prol.loopexit ]
  %.0.i.ph = phi i32 [ %i.ku, %bb.aw ], [ %.0.i.ph.unr, %.preheader.i121.outer.prol.loopexit ]
  br label %.preheader.i121

.preheader.i121:                                  ; preds = %.preheader.i121.outer, %.preheader.i121
  %.05.i = phi ptr [ %i.km, %.preheader.i121 ], [ %.05.i.ph, %.preheader.i121.outer ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %i.kn = load i8, ptr %.05.i, align 1, !tbaa !21
  %.not9.i = icmp eq i8 %i.kn, 0
  br i1 %.not9.i, label %.preheader.i121.1, label %.preheader.i121, !llvm.loop !52

.preheader.i121.1:                                ; preds = %.preheader.i121, %.preheader.i121.1
  %.05.i.1 = phi ptr [ %i.ko, %.preheader.i121.1 ], [ %i.km, %.preheader.i121 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.1, i64 1 ; 2 uses
  %i.kp = load i8, ptr %.05.i.1, align 1, !tbaa !21
  %.not9.i.1 = icmp eq i8 %i.kp, 0
  br i1 %.not9.i.1, label %.preheader.i121.2, label %.preheader.i121.1, !llvm.loop !52

.preheader.i121.2:                                ; preds = %.preheader.i121.1, %.preheader.i121.2
  %.05.i.2 = phi ptr [ %i.kq, %.preheader.i121.2 ], [ %i.ko, %.preheader.i121.1 ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.05.i.2, i64 1 ; 2 uses
  %i.kr = load i8, ptr %.05.i.2, align 1, !tbaa !21
  %.not9.i.2 = icmp eq i8 %i.kr, 0
  br i1 %.not9.i.2, label %.preheader.i121.3, label %.preheader.i121.2, !llvm.loop !52

.preheader.i121.3:                                ; preds = %.preheader.i121.2, %.preheader.i121.3
  %.05.i.3 = phi ptr [ %i.ks, %.preheader.i121.3 ], [ %i.kq, %.preheader.i121.2 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.3, i64 1 ; 3 uses
  %i.kt = load i8, ptr %.05.i.3, align 1, !tbaa !21
  %.not9.i.3 = icmp eq i8 %i.kt, 0
  br i1 %.not9.i.3, label %bb.aw, label %.preheader.i121.3, !llvm.loop !52

bb.aw:                                            ; preds = %.preheader.i121.3
  %i.ku = add nsw i32 %.0.i.ph, -4                ; 2 uses
  %.not10.i.3 = icmp eq i32 %i.ku, 0
  br i1 %.not10.i.3, label %bcread_varinfo.exit.loopexit, label %.preheader.i121.outer, !llvm.loop !52

bcread_varinfo.exit.loopexit:                     ; preds = %bb.aw, %.preheader.i121.outer.prol.loopexit
  %.lcssa.lcssa = phi ptr [ %.lcssa.lcssa.unr, %.preheader.i121.outer.prol.loopexit ], [ %i.ks, %bb.aw ]
  %i.kv = ptrtoint ptr %.lcssa.lcssa to i64
  br label %bcread_varinfo.exit

bcread_varinfo.exit:                              ; preds = %bcread_varinfo.exit.loopexit, %bcread_dbg.exit
  %.16.i = phi i64 [ %.val98, %bcread_dbg.exit ], [ %i.kv, %bcread_varinfo.exit.loopexit ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store i64 %.16.i, ptr %i.kw, align 8, !tbaa !85
  br label %bb.ay

bb.ax:                                            ; preds = %bcread_knum.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, i8 0, i64 24, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bcread_varinfo.exit
  ret ptr %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden ptr @lj_mem_newgco(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden ptr @lj_bcread(ptr noundef initializes((64, 72), (116, 120)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  store ptr %i.m, ptr %i.k, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp ult i32 %i.u, 13
  br i1 %i.v, label %bb.b, label %bcread_want.exit.i, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @bcread_fill(ptr noundef nonnull %0, i32 noundef 13, i32 noundef 0)
end_hunk_1
