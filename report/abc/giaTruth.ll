Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ObjComputeTruthTable:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dm = phi ptr [ %i.dk, %bb.o ], [ %i.dl, %bb.p ]
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !32
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.q, %bb.k
  %spec.select.sink.i = phi i32 [ %spec.select.i144, %bb.q ], [ %.val125, %bb.k ]
  store i32 %spec.select.sink.i, ptr %i.cq, align 8, !tbaa !39
  %.pre229 = load i32, ptr %i.cs, align 4, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.m, %bb.l, %bb.g
  %i.dn = phi i32 [ %.pre229, %Vec_IntGrow.exit.sink.split.i ], [ %.val120, %bb.m ], [ %.val120, %bb.l ], [ %.val120, %bb.g ] ; 2 uses
  %i.do = icmp slt i32 %i.dn, %.val125
  br i1 %i.do, label %.lr.ph.i, label %Vec_IntFillExtra.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !32
  %i.dr = sext i32 %i.dn to i64                   ; 2 uses
  %wide.trip.count.i = sext i32 %.val125 to i64
  %i.ds = shl nsw i64 %i.dr, 2
  %scevgep = getelementptr i8, ptr %i.dq, i64 %i.ds
  %i.dt = sub nsw i64 %wide.trip.count.i, %i.dr
  %i.du = shl nsw i64 %i.dt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.du, i1 false), !tbaa !33
  br label %Vec_IntFillExtra.exit

Vec_IntFillExtra.exit:                            ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  store i32 %.val125, ptr %i.cs, align 4, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %Vec_IntFillExtra.exit, %bb.e
  %.val128 = load i64, ptr %1, align 4            ; 2 uses
  %i.dv = and i64 %.val128, 2147483648
  %.not.i145 = icmp eq i64 %i.dv, 0
  %i.dw = and i64 %.val128, 536870911             ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 536870911
  %narrow.i.not = or i1 %.not.i145, %i.dx
  %i.dy = sub nsw i64 0, %i.dw
  %.idx = select i1 %narrow.i.not, i64 0, i64 %i.dy
  %i.dz = getelementptr inbounds [12 x i8], ptr %1, i64 %.idx ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !59
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 0, ptr %i.ec, align 4, !tbaa !38
  tail call void @Gia_ObjCollectInternal_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.dz)
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !61  ; 6 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4      ; 3 uses
  %.val121 = load i32, ptr %i.ee, align 4, !tbaa !56 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 5 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !64
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !59 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %.val119 = load i32, ptr %i.ei, align 4, !tbaa !38 ; 2 uses
  %i.ej = add nsw i32 %.val119, 2
  %i.ek = mul nsw i32 %i.ej, %i.eg                ; 8 uses
  %i.el = icmp slt i32 %.val121, %i.ek
  br i1 %i.el, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.em = load i32, ptr %i.ed, align 8, !tbaa !57 ; 4 uses
  %i.en = shl nsw i32 %i.em, 1                    ; 2 uses
  %i.eo = icmp sgt i32 %i.ek, %i.en
  %.not.i.i147 = icmp slt i32 %i.em, %i.ek        ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i147, label %bb.u, label %Vec_WrdGrow.exit.i

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i154 = icmp eq ptr %i.eq, null
  %i.er = sext i32 %i.ek to i64
  %i.es = shl nsw i64 %i.er, 3                    ; 2 uses
  br i1 %.not9.i.i154, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = tail call ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef %i.es) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.es) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ev = phi ptr [ %i.et, %bb.v ], [ %i.eu, %bb.w ]
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

bb.y:                                             ; preds = %bb.s
  br i1 %.not.i.i147, label %bb.z, label %Vec_WrdGrow.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ew = icmp slt i32 %i.em, 1073741823
  %spec.select.i150 = select i1 %i.ew, i32 %i.en, i32 2147483647 ; 3 uses
  %.not.i22.i151 = icmp slt i32 %i.em, %spec.select.i150
  br i1 %.not.i22.i151, label %bb.aa, label %Vec_WrdGrow.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !46 ; 2 uses
  %.not9.i23.i152 = icmp eq ptr %i.ey, null
  %i.ez = sext i32 %spec.select.i150 to i64
  %i.fa = shl nsw i64 %i.ez, 3                    ; 2 uses
  br i1 %.not9.i23.i152, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = tail call ptr @realloc(ptr noundef nonnull %i.ey, i64 noundef %i.fa) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fa) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fd = phi ptr [ %i.fb, %bb.ab ], [ %i.fc, %bb.ac ]
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

Vec_WrdGrow.exit.sink.split.i:                    ; preds = %bb.ad, %bb.x
  %spec.select.sink.i153 = phi i32 [ %spec.select.i150, %bb.ad ], [ %i.ek, %bb.x ]
  store i32 %spec.select.sink.i153, ptr %i.ed, align 8, !tbaa !57
  %.pre230 = load i32, ptr %i.ee, align 4, !tbaa !56
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %Vec_WrdGrow.exit.sink.split.i, %bb.z, %bb.y, %bb.t
  %i.fe = phi i32 [ %.pre230, %Vec_WrdGrow.exit.sink.split.i ], [ %.val121, %bb.z ], [ %.val121, %bb.y ], [ %.val121, %bb.t ] ; 3 uses
  %i.ff = icmp slt i32 %i.fe, %i.ek
  br i1 %i.ff, label %.lr.ph.i149, label %Vec_WrdFillExtra.exit

.lr.ph.i149:                                      ; preds = %Vec_WrdGrow.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !46
  %i.fi = sext i32 %i.fe to i64
  %i.fj = shl nsw i64 %i.fi, 3
  %scevgep.i = getelementptr i8, ptr %i.fh, i64 %i.fj
  %i.fk = xor i32 %i.fe, -1
  %i.fl = add i32 %i.ek, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = add nuw nsw i64 %i.fn, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fo, i1 false), !tbaa !30
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %Vec_WrdGrow.exit.i, %.lr.ph.i149
  store i32 %i.ek, ptr %i.ee, align 4, !tbaa !56
  %.pre231 = load ptr, ptr %i.ea, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert232 = getelementptr i8, ptr %.pre231, i64 4
  %.val117217.pre = load i32, ptr %.phi.trans.insert232, align 4, !tbaa !38
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_WrdFillExtra.exit, %bb.r
  %.val117217 = phi i32 [ %.val117217.pre, %Vec_WrdFillExtra.exit ], [ %.val119, %bb.r ]
  %i.fp = phi ptr [ %.pre231, %Vec_WrdFillExtra.exit ], [ %i.eh, %bb.r ]
  %i.fq = icmp sgt i32 %.val117217, 0
  br i1 %i.fq, label %.lr.ph219, label %.critedge

.lr.ph219:                                        ; preds = %bb.ae
  %i.fr = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.fs = getelementptr i8, ptr %0, i64 968       ; 2 uses
  %.val.pre = load ptr, ptr %i.fr, align 8, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph219, %.loopexit
  %.val = phi ptr [ %.val.pre, %.lr.ph219 ], [ %.val4.i, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.ft = phi ptr [ %i.fp, %.lr.ph219 ], [ %i.nx, %.loopexit ]
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %.val116 = load ptr, ptr %i.fu, align 8, !tbaa !32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !33
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.fx ; 5 uses
  %.not95 = icmp eq ptr %.val, null
  br i1 %.not95, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = load i64, ptr %i.fy, align 4            ; 5 uses
  %i.ga = and i64 %i.fz, -1073741825
  store i64 %i.ga, ptr %i.fy, align 4
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %.val.i = load ptr, ptr %i.gc, align 8, !tbaa !46 ; 4 uses
  %.val.i293 = ptrtoaddr ptr %.val.i to i64       ; 16 uses
  %i.gd = load i32, ptr %i.ef, align 4, !tbaa !64 ; 5 uses
  %.val4.i = load ptr, ptr %i.fr, align 8, !tbaa !8 ; 2 uses
  %.val5.i = load ptr, ptr %i.cr, align 8, !tbaa !60
  %i.ge = getelementptr i8, ptr %.val5.i, i64 8
  %.val5.val.i = load ptr, ptr %i.ge, align 8, !tbaa !32 ; 3 uses
  %i.gf = ptrtoint ptr %i.fy to i64
  %i.gg = ptrtoint ptr %.val4.i to i64            ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = sdiv exact i64 %i.gh, 12
  %sext.i.i = shl i64 %i.gi, 32
  %i.gj = ashr exact i64 %sext.i.i, 30
  %i.gk = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !33
  %i.gm = mul i32 %i.gl, %i.gd
  %i.gn = sext i32 %i.gm to i64                   ; 9 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.gn ; 17 uses
  %i.gp = sext i32 %i.gd to i64
  %.idx221 = shl nsw i64 %i.gp, 3                 ; 5 uses
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 %.idx221 ; 4 uses
  %i.gr = and i64 %i.fz, 536870911
  %i.gs = sub nsw i64 0, %i.gr
  %i.gt = getelementptr inbounds [12 x i8], ptr %i.fy, i64 %i.gs ; 2 uses
  %.val115 = load i64, ptr %i.gt, align 4         ; 3 uses
  %i.gu = and i64 %.val115, 2147483648
  %.not.i155 = icmp ne i64 %i.gu, 0
  %i.gv = and i64 %.val115, 536870911
  %i.gw = icmp eq i64 %i.gv, 536870911
  %narrow.i156.not = or i1 %.not.i155, %i.gw
  br i1 %narrow.i156.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gx, %i.gg
  %i.gz = sdiv exact i64 %i.gy, 12
  %sext.i.i161 = shl i64 %i.gz, 32
  %i.ha = ashr exact i64 %sext.i.i161, 30
  %i.hb = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !33
  %i.hd = mul nsw i32 %i.hc, %i.gd
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.he
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.hg = lshr i64 %.val115, 32
  %i.hh = and i64 %i.hg, 536870911
  %.val131 = load ptr, ptr %i.fs, align 8, !tbaa !82
  %i.hi = getelementptr i8, ptr %.val131, i64 8
  %.val131.val = load ptr, ptr %i.hi, align 8, !tbaa !74
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val131.val, i64 %i.hh
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !66
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hl = phi ptr [ %i.hf, %bb.ah ], [ %i.hk, %bb.ai ] ; 17 uses
  %i.hm = ptrtoaddr ptr %i.hl to i64              ; 4 uses
  %i.hn = lshr i64 %i.fz, 32
  %i.ho = and i64 %i.hn, 536870911
  %i.hp = sub nsw i64 0, %i.ho
  %i.hq = getelementptr inbounds [12 x i8], ptr %i.fy, i64 %i.hp ; 2 uses
  %.val114 = load i64, ptr %i.hq, align 4         ; 3 uses
  %i.hr = and i64 %.val114, 2147483648
  %.not.i162 = icmp ne i64 %i.hr, 0
  %i.hs = and i64 %.val114, 536870911
  %i.ht = icmp eq i64 %i.hs, 536870911
  %narrow.i163.not = or i1 %.not.i162, %i.ht
  br i1 %narrow.i163.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.hu, %i.gg
  %i.hw = sdiv exact i64 %i.hv, 12
  %sext.i.i168 = shl i64 %i.hw, 32
  %i.hx = ashr exact i64 %sext.i.i168, 30
  %i.hy = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !33
  %i.ia = mul nsw i32 %i.hz, %i.gd
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ib
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.id = lshr i64 %.val114, 32
  %i.ie = and i64 %i.id, 536870911
  %.val130 = load ptr, ptr %i.fs, align 8, !tbaa !82
  %i.if = getelementptr i8, ptr %.val130, i64 8
  %.val130.val = load ptr, ptr %i.if, align 8, !tbaa !74
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.val130.val, i64 %i.ie
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !66
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ii = phi ptr [ %i.ic, %bb.ak ], [ %i.ih, %bb.al ] ; 17 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64              ; 4 uses
  %i.ik = and i64 %i.fz, 536870912
  %.not102 = icmp eq i64 %i.ik, 0
  %i.il = and i64 %i.fz, 2305843009213693952
  %.not103 = icmp eq i64 %i.il, 0                 ; 2 uses
  %i.im = icmp sgt i32 %i.gd, 0                   ; 4 uses
  br i1 %.not102, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not103, label %.preheader197, label %.preheader199

.preheader199:                                    ; preds = %bb.an
  br i1 %i.im, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader199
  %i.in = shl nsw i64 %i.gn, 3                    ; 3 uses
  %i.io = add i64 %.idx221, %.val.i293
  %i.ip = add i64 %i.io, %i.in
  %i.iq = add i64 %i.in, %.val.i293
  %i.ir = add i64 %i.iq, 8
  %i.is = tail call i64 @llvm.umax.i64(i64 %i.ip, i64 %i.ir)
  %i.it = xor i64 %.val.i293, -1
  %i.iu = add i64 %i.is, %i.it
  %i.iv = sub i64 %i.iu, %i.in                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 3
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check363 = icmp ult i64 %i.iv, 56
  br i1 %min.iters.check363, label %.lr.ph.preheader419, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph.preheader
  %i.iy = shl nsw i64 %i.gn, 3
  %i.iz = add i64 %i.iy, %.val.i293               ; 2 uses
  %i.ja = sub i64 %i.hm, %i.iz
  %diff.check359 = icmp ugt i64 %i.ja, -32
  %i.jb = sub i64 %i.ij, %i.iz
  %diff.check360 = icmp ugt i64 %i.jb, -32
  %conflict.rdx361 = or i1 %diff.check359, %diff.check360
  br i1 %conflict.rdx361, label %.lr.ph.preheader419, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck358
  %n.vec365 = and i64 %i.ix, 4611686018427387900  ; 3 uses
  %i.jc = shl i64 %n.vec365, 3                    ; 3 uses
  %i.jd = getelementptr i8, ptr %i.ii, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.hl, i64 %i.jc
  %i.jf = getelementptr i8, ptr %i.go, i64 %i.jc
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph364
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next375, %vector.body366 ] ; 2 uses
  %i.jg = shl i64 %index367, 3                    ; 3 uses
  %next.gep368 = getelementptr i8, ptr %i.ii, i64 %i.jg ; 2 uses
  %next.gep369 = getelementptr i8, ptr %i.hl, i64 %i.jg ; 2 uses
  %next.gep370 = getelementptr i8, ptr %i.go, i64 %i.jg ; 2 uses
  %i.jh = getelementptr i8, ptr %next.gep369, i64 16
  %wide.load371 = load <2 x i64>, ptr %next.gep369, align 8, !tbaa !30
  %wide.load372 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !30
  %i.ji = getelementptr i8, ptr %next.gep368, i64 16
  %wide.load373 = load <2 x i64>, ptr %next.gep368, align 8, !tbaa !30
  %wide.load374 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !30
  %i.jj = or <2 x i64> %wide.load373, %wide.load371
  %i.jk = or <2 x i64> %wide.load374, %wide.load372
  %i.jl = xor <2 x i64> %i.jj, splat (i64 -1)
  %i.jm = xor <2 x i64> %i.jk, splat (i64 -1)
  %i.jn = getelementptr i8, ptr %next.gep370, i64 16
  store <2 x i64> %i.jl, ptr %next.gep370, align 8, !tbaa !30
  store <2 x i64> %i.jm, ptr %i.jn, align 8, !tbaa !30
  %index.next375 = add nuw i64 %index367, 4       ; 2 uses
  %i.jo = icmp eq i64 %index.next375, %n.vec365
  br i1 %i.jo, label %middle.block376, label %vector.body366, !llvm.loop !83

middle.block376:                                  ; preds = %vector.body366
  %cmp.n377 = icmp eq i64 %i.ix, %n.vec365
  br i1 %cmp.n377, label %.loopexit, label %.lr.ph.preheader419

.lr.ph.preheader419:                              ; preds = %vector.memcheck358, %.lr.ph.preheader, %middle.block376
  %.085204.ph = phi ptr [ %i.ii, %vector.memcheck358 ], [ %i.ii, %.lr.ph.preheader ], [ %i.jd, %middle.block376 ]
  %.086203.ph = phi ptr [ %i.hl, %vector.memcheck358 ], [ %i.hl, %.lr.ph.preheader ], [ %i.je, %middle.block376 ]
  %.090202.ph = phi ptr [ %i.go, %vector.memcheck358 ], [ %i.go, %.lr.ph.preheader ], [ %i.jf, %middle.block376 ]
  br label %.lr.ph

.preheader197:                                    ; preds = %bb.an
  br i1 %i.im, label %.lr.ph208.preheader, label %.loopexit

.lr.ph208.preheader:                              ; preds = %.preheader197
  %i.jp = shl nsw i64 %i.gn, 3                    ; 3 uses
  %i.jq = add i64 %.idx221, %.val.i293
  %i.jr = add i64 %i.jq, %i.jp
  %i.js = add i64 %i.jp, %.val.i293
  %i.jt = add i64 %i.js, 8
  %i.ju = tail call i64 @llvm.umax.i64(i64 %i.jr, i64 %i.jt)
  %i.jv = xor i64 %.val.i293, -1
  %i.jw = add i64 %i.ju, %i.jv
  %i.jx = sub i64 %i.jw, %i.jp                    ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.jx, 56
  br i1 %min.iters.check340, label %.lr.ph208.preheader417, label %vector.memcheck335

vector.memcheck335:                               ; preds = %.lr.ph208.preheader
  %i.ka = shl nsw i64 %i.gn, 3
  %i.kb = add i64 %i.ka, %.val.i293               ; 2 uses
  %i.kc = sub i64 %i.hm, %i.kb
  %diff.check336 = icmp ugt i64 %i.kc, -32
  %i.kd = sub i64 %i.ij, %i.kb
  %diff.check337 = icmp ugt i64 %i.kd, -32
  %conflict.rdx338 = or i1 %diff.check336, %diff.check337
  br i1 %conflict.rdx338, label %.lr.ph208.preheader417, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck335
  %n.vec342 = and i64 %i.jz, 4611686018427387900  ; 3 uses
  %i.ke = shl i64 %n.vec342, 3                    ; 3 uses
  %i.kf = getelementptr i8, ptr %i.ii, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.hl, i64 %i.ke
  %i.kh = getelementptr i8, ptr %i.go, i64 %i.ke
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next352, %vector.body343 ] ; 2 uses
  %i.ki = shl i64 %index344, 3                    ; 3 uses
  %next.gep345 = getelementptr i8, ptr %i.ii, i64 %i.ki ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.hl, i64 %i.ki ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.go, i64 %i.ki ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep346, i64 16
  %wide.load348 = load <2 x i64>, ptr %next.gep346, align 8, !tbaa !30
  %wide.load349 = load <2 x i64>, ptr %i.kj, align 8, !tbaa !30
  %i.kk = xor <2 x i64> %wide.load348, splat (i64 -1)
  %i.kl = xor <2 x i64> %wide.load349, splat (i64 -1)
  %i.km = getelementptr i8, ptr %next.gep345, i64 16
  %wide.load350 = load <2 x i64>, ptr %next.gep345, align 8, !tbaa !30
  %wide.load351 = load <2 x i64>, ptr %i.km, align 8, !tbaa !30
  %i.kn = and <2 x i64> %wide.load350, %i.kk
  %i.ko = and <2 x i64> %wide.load351, %i.kl
  %i.kp = getelementptr i8, ptr %next.gep347, i64 16
  store <2 x i64> %i.kn, ptr %next.gep347, align 8, !tbaa !30
  store <2 x i64> %i.ko, ptr %i.kp, align 8, !tbaa !30
  %index.next352 = add nuw i64 %index344, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next352, %n.vec342
  br i1 %i.kq, label %middle.block353, label %vector.body343, !llvm.loop !84

middle.block353:                                  ; preds = %vector.body343
  %cmp.n354 = icmp eq i64 %i.jz, %n.vec342
  br i1 %cmp.n354, label %.loopexit, label %.lr.ph208.preheader417

.lr.ph208.preheader417:                           ; preds = %vector.memcheck335, %.lr.ph208.preheader, %middle.block353
  %.1207.ph = phi ptr [ %i.ii, %vector.memcheck335 ], [ %i.ii, %.lr.ph208.preheader ], [ %i.kf, %middle.block353 ]
  %.187206.ph = phi ptr [ %i.hl, %vector.memcheck335 ], [ %i.hl, %.lr.ph208.preheader ], [ %i.kg, %middle.block353 ]
  %.191205.ph = phi ptr [ %i.go, %vector.memcheck335 ], [ %i.go, %.lr.ph208.preheader ], [ %i.kh, %middle.block353 ]
  br label %.lr.ph208

.lr.ph:                                           ; preds = %.lr.ph.preheader419, %.lr.ph
  %.085204 = phi ptr [ %i.kt, %.lr.ph ], [ %.085204.ph, %.lr.ph.preheader419 ] ; 2 uses
  %.086203 = phi ptr [ %i.kr, %.lr.ph ], [ %.086203.ph, %.lr.ph.preheader419 ] ; 2 uses
  %.090202 = phi ptr [ %i.kw, %.lr.ph ], [ %.090202.ph, %.lr.ph.preheader419 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.086203, i64 8
  %i.ks = load i64, ptr %.086203, align 8, !tbaa !30
  %i.kt = getelementptr inbounds nuw i8, ptr %.085204, i64 8
  %i.ku = load i64, ptr %.085204, align 8, !tbaa !30
  %.demorgan = or i64 %i.ku, %i.ks
  %i.kv = xor i64 %.demorgan, -1
  %i.kw = getelementptr inbounds nuw i8, ptr %.090202, i64 8 ; 2 uses
  store i64 %i.kv, ptr %.090202, align 8, !tbaa !30
  %i.kx = icmp ult ptr %i.kw, %i.gq
  br i1 %i.kx, label %.lr.ph, label %.loopexit, !llvm.loop !85

.lr.ph208:                                        ; preds = %.lr.ph208.preheader417, %.lr.ph208
  %.1207 = phi ptr [ %i.lb, %.lr.ph208 ], [ %.1207.ph, %.lr.ph208.preheader417 ] ; 2 uses
  %.187206 = phi ptr [ %i.ky, %.lr.ph208 ], [ %.187206.ph, %.lr.ph208.preheader417 ] ; 2 uses
  %.191205 = phi ptr [ %i.le, %.lr.ph208 ], [ %.191205.ph, %.lr.ph208.preheader417 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.187206, i64 8
  %i.kz = load i64, ptr %.187206, align 8, !tbaa !30
  %i.la = xor i64 %i.kz, -1
  %i.lb = getelementptr inbounds nuw i8, ptr %.1207, i64 8
  %i.lc = load i64, ptr %.1207, align 8, !tbaa !30
  %i.ld = and i64 %i.lc, %i.la
  %i.le = getelementptr inbounds nuw i8, ptr %.191205, i64 8 ; 2 uses
  store i64 %i.ld, ptr %.191205, align 8, !tbaa !30
  %i.lf = icmp ult ptr %i.le, %i.gq
  br i1 %i.lf, label %.lr.ph208, label %.loopexit, !llvm.loop !86

bb.ao:                                            ; preds = %bb.am
  br i1 %.not103, label %.preheader, label %.preheader195

.preheader195:                                    ; preds = %bb.ao
  br i1 %i.im, label %.lr.ph212.preheader, label %.loopexit

.lr.ph212.preheader:                              ; preds = %.preheader195
  %i.lg = shl nsw i64 %i.gn, 3                    ; 3 uses
  %i.lh = add i64 %.idx221, %.val.i293
  %i.li = add i64 %i.lh, %i.lg
  %i.lj = add i64 %i.lg, %.val.i293
  %i.lk = add i64 %i.lj, 8
  %i.ll = tail call i64 @llvm.umax.i64(i64 %i.li, i64 %i.lk)
  %i.lm = xor i64 %.val.i293, -1
  %i.ln = add i64 %i.ll, %i.lm
  %i.lo = sub i64 %i.ln, %i.lg                    ; 2 uses
  %i.lp = lshr i64 %i.lo, 3
  %i.lq = add nuw nsw i64 %i.lp, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.lo, 56
  br i1 %min.iters.check317, label %.lr.ph212.preheader415, label %vector.memcheck312

vector.memcheck312:                               ; preds = %.lr.ph212.preheader
  %i.lr = shl nsw i64 %i.gn, 3
  %i.ls = add i64 %i.lr, %.val.i293               ; 2 uses
  %i.lt = sub i64 %i.hm, %i.ls
  %diff.check313 = icmp ugt i64 %i.lt, -32
  %i.lu = sub i64 %i.ij, %i.ls
  %diff.check314 = icmp ugt i64 %i.lu, -32
  %conflict.rdx315 = or i1 %diff.check313, %diff.check314
  br i1 %conflict.rdx315, label %.lr.ph212.preheader415, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck312
  %n.vec319 = and i64 %i.lq, 4611686018427387900  ; 3 uses
  %i.lv = shl i64 %n.vec319, 3                    ; 3 uses
  %i.lw = getelementptr i8, ptr %i.ii, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.hl, i64 %i.lv
  %i.ly = getelementptr i8, ptr %i.go, i64 %i.lv
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next329, %vector.body320 ] ; 2 uses
  %i.lz = shl i64 %index321, 3                    ; 3 uses
  %next.gep322 = getelementptr i8, ptr %i.ii, i64 %i.lz ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.hl, i64 %i.lz ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.go, i64 %i.lz ; 2 uses
  %i.ma = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load325 = load <2 x i64>, ptr %next.gep323, align 8, !tbaa !30
  %wide.load326 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !30
  %i.mb = getelementptr i8, ptr %next.gep322, i64 16
  %wide.load327 = load <2 x i64>, ptr %next.gep322, align 8, !tbaa !30
  %wide.load328 = load <2 x i64>, ptr %i.mb, align 8, !tbaa !30
  %i.mc = xor <2 x i64> %wide.load327, splat (i64 -1)
  %i.md = xor <2 x i64> %wide.load328, splat (i64 -1)
  %i.me = and <2 x i64> %wide.load325, %i.mc
  %i.mf = and <2 x i64> %wide.load326, %i.md
  %i.mg = getelementptr i8, ptr %next.gep324, i64 16
  store <2 x i64> %i.me, ptr %next.gep324, align 8, !tbaa !30
  store <2 x i64> %i.mf, ptr %i.mg, align 8, !tbaa !30
  %index.next329 = add nuw i64 %index321, 4       ; 2 uses
  %i.mh = icmp eq i64 %index.next329, %n.vec319
  br i1 %i.mh, label %middle.block330, label %vector.body320, !llvm.loop !87

middle.block330:                                  ; preds = %vector.body320
  %cmp.n331 = icmp eq i64 %i.lq, %n.vec319
  br i1 %cmp.n331, label %.loopexit, label %.lr.ph212.preheader415

.lr.ph212.preheader415:                           ; preds = %vector.memcheck312, %.lr.ph212.preheader, %middle.block330
  %.2211.ph = phi ptr [ %i.ii, %vector.memcheck312 ], [ %i.ii, %.lr.ph212.preheader ], [ %i.lw, %middle.block330 ]
  %.288210.ph = phi ptr [ %i.hl, %vector.memcheck312 ], [ %i.hl, %.lr.ph212.preheader ], [ %i.lx, %middle.block330 ]
  %.292209.ph = phi ptr [ %i.go, %vector.memcheck312 ], [ %i.go, %.lr.ph212.preheader ], [ %i.ly, %middle.block330 ]
  br label %.lr.ph212

.preheader:                                       ; preds = %bb.ao
  br i1 %i.im, label %.lr.ph216.preheader, label %.loopexit

.lr.ph216.preheader:                              ; preds = %.preheader
  %i.mi = shl nsw i64 %i.gn, 3                    ; 3 uses
  %i.mj = add i64 %.idx221, %.val.i293
  %i.mk = add i64 %i.mj, %i.mi
  %i.ml = add i64 %i.mi, %.val.i293
  %i.mm = add i64 %i.ml, 8
  %i.mn = tail call i64 @llvm.umax.i64(i64 %i.mk, i64 %i.mm)
  %i.mo = xor i64 %.val.i293, -1
  %i.mp = add i64 %i.mn, %i.mo
  %i.mq = sub i64 %i.mp, %i.mi                    ; 2 uses
  %i.mr = lshr i64 %i.mq, 3
  %i.ms = add nuw nsw i64 %i.mr, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.mq, 56
  br i1 %min.iters.check296, label %.lr.ph216.preheader414, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph216.preheader
  %i.mt = shl nsw i64 %i.gn, 3
  %i.mu = add i64 %i.mt, %.val.i293               ; 2 uses
  %i.mv = sub i64 %i.hm, %i.mu
  %diff.check = icmp ugt i64 %i.mv, -32
  %i.mw = sub i64 %i.ij, %i.mu
  %diff.check294 = icmp ugt i64 %i.mw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check294
  br i1 %conflict.rdx, label %.lr.ph216.preheader414, label %vector.ph297

vector.ph297:                                     ; preds = %vector.memcheck
  %n.vec298 = and i64 %i.ms, 4611686018427387900  ; 3 uses
  %i.mx = shl i64 %n.vec298, 3                    ; 3 uses
  %i.my = getelementptr i8, ptr %i.ii, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.hl, i64 %i.mx
  %i.na = getelementptr i8, ptr %i.go, i64 %i.mx
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next306, %vector.body299 ] ; 2 uses
  %i.nb = shl i64 %index300, 3                    ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ii, i64 %i.nb ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.hl, i64 %i.nb ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.go, i64 %i.nb ; 2 uses
  %i.nc = getelementptr i8, ptr %next.gep301, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep301, align 8, !tbaa !30
  %wide.load303 = load <2 x i64>, ptr %i.nc, align 8, !tbaa !30
  %i.nd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load304 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !30
  %wide.load305 = load <2 x i64>, ptr %i.nd, align 8, !tbaa !30
  %i.ne = and <2 x i64> %wide.load304, %wide.load
  %i.nf = and <2 x i64> %wide.load305, %wide.load303
  %i.ng = getelementptr i8, ptr %next.gep302, i64 16
  store <2 x i64> %i.ne, ptr %next.gep302, align 8, !tbaa !30
  store <2 x i64> %i.nf, ptr %i.ng, align 8, !tbaa !30
  %index.next306 = add nuw i64 %index300, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next306, %n.vec298
  br i1 %i.nh, label %middle.block307, label %vector.body299, !llvm.loop !88

middle.block307:                                  ; preds = %vector.body299
  %cmp.n308 = icmp eq i64 %i.ms, %n.vec298
  br i1 %cmp.n308, label %.loopexit, label %.lr.ph216.preheader414

.lr.ph216.preheader414:                           ; preds = %vector.memcheck, %.lr.ph216.preheader, %middle.block307
  %.3215.ph = phi ptr [ %i.ii, %vector.memcheck ], [ %i.ii, %.lr.ph216.preheader ], [ %i.my, %middle.block307 ]
  %.389214.ph = phi ptr [ %i.hl, %vector.memcheck ], [ %i.hl, %.lr.ph216.preheader ], [ %i.mz, %middle.block307 ]
  %.393213.ph = phi ptr [ %i.go, %vector.memcheck ], [ %i.go, %.lr.ph216.preheader ], [ %i.na, %middle.block307 ]
  br label %.lr.ph216

.lr.ph212:                                        ; preds = %.lr.ph212.preheader415, %.lr.ph212
  %.2211 = phi ptr [ %i.nk, %.lr.ph212 ], [ %.2211.ph, %.lr.ph212.preheader415 ] ; 2 uses
  %.288210 = phi ptr [ %i.ni, %.lr.ph212 ], [ %.288210.ph, %.lr.ph212.preheader415 ] ; 2 uses
  %.292209 = phi ptr [ %i.no, %.lr.ph212 ], [ %.292209.ph, %.lr.ph212.preheader415 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.288210, i64 8
  %i.nj = load i64, ptr %.288210, align 8, !tbaa !30
  %i.nk = getelementptr inbounds nuw i8, ptr %.2211, i64 8
  %i.nl = load i64, ptr %.2211, align 8, !tbaa !30
  %i.nm = xor i64 %i.nl, -1
  %i.nn = and i64 %i.nj, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %.292209, i64 8 ; 2 uses
  store i64 %i.nn, ptr %.292209, align 8, !tbaa !30
  %i.np = icmp ult ptr %i.no, %i.gq
  br i1 %i.np, label %.lr.ph212, label %.loopexit, !llvm.loop !89

.lr.ph216:                                        ; preds = %.lr.ph216.preheader414, %.lr.ph216
  %.3215 = phi ptr [ %i.ns, %.lr.ph216 ], [ %.3215.ph, %.lr.ph216.preheader414 ] ; 2 uses
  %.389214 = phi ptr [ %i.nq, %.lr.ph216 ], [ %.389214.ph, %.lr.ph216.preheader414 ] ; 2 uses
  %.393213 = phi ptr [ %i.nv, %.lr.ph216 ], [ %.393213.ph, %.lr.ph216.preheader414 ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.389214, i64 8
  %i.nr = load i64, ptr %.389214, align 8, !tbaa !30
  %i.ns = getelementptr inbounds nuw i8, ptr %.3215, i64 8
  %i.nt = load i64, ptr %.3215, align 8, !tbaa !30
  %i.nu = and i64 %i.nt, %i.nr
  %i.nv = getelementptr inbounds nuw i8, ptr %.393213, i64 8 ; 2 uses
  store i64 %i.nu, ptr %.393213, align 8, !tbaa !30
  %i.nw = icmp ult ptr %i.nv, %i.gq
  br i1 %i.nw, label %.lr.ph216, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph208, %.lr.ph212, %.lr.ph216, %middle.block376, %middle.block353, %middle.block330, %middle.block307, %.preheader199, %.preheader197, %.preheader195, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nx = load ptr, ptr %i.ea, align 8, !tbaa !59 ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 4
  %.val117 = load i32, ptr %i.ny, align 4, !tbaa !38
  %i.nz = sext i32 %.val117 to i64
  %i.oa = icmp slt i64 %indvars.iv.next, %i.nz
  br i1 %i.oa, label %bb.af, label %.critedge, !llvm.loop !91

.critedge:                                        ; preds = %bb.af, %.loopexit, %bb.ae
  %.val105 = load i64, ptr %i.dz, align 4         ; 5 uses
  %i.ob = and i64 %.val105, 2305843005455597567
  %narrow.i169.not = icmp eq i64 %i.ob, 2305843005455597567
  br i1 %narrow.i169.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge
  %.val132 = load i32, ptr %i.ef, align 4, !tbaa !64 ; 6 uses
  %.val133 = load ptr, ptr %i.a, align 8, !tbaa !61 ; 6 uses
  %i.oc = icmp sgt i32 %.val132, 0
  br i1 %i.oc, label %Gla_ObjTruthConst0.exit.thread, label %Gla_ObjTruthConst0.exit.thread265

Gla_ObjTruthConst0.exit.thread265:                ; preds = %bb.ap
  %i.od = getelementptr i8, ptr %.val133, i64 4
  %.val137.val269 = load i32, ptr %i.od, align 4, !tbaa !56
  %i.oe = getelementptr i8, ptr %.val133, i64 8
  %.val137.val138270 = load ptr, ptr %i.oe, align 8, !tbaa !46
  %i.of = sext i32 %.val137.val269 to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %.val137.val138270, i64 %i.of
  %i.oh = shl nsw i32 %.val132, 1
  %i.oi = sext i32 %i.oh to i64
  %i.oj = sub nsw i64 0, %i.oi
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.og, i64 %i.oj
  br label %Gla_ObjTruthDup.exit

Gla_ObjTruthConst0.exit.thread:                   ; preds = %bb.ap
  %i.ol = getelementptr i8, ptr %.val133, i64 8
  %.val133.val134 = load ptr, ptr %i.ol, align 8, !tbaa !46
  %i.om = getelementptr i8, ptr %.val133, i64 4
  %.val133.val = load i32, ptr %i.om, align 4, !tbaa !56
  %i.on = sext i32 %.val133.val to i64
  %i.oo = getelementptr inbounds [8 x i8], ptr %.val133.val134, i64 %i.on
  %i.op = zext nneg i32 %.val132 to i64
  %i.oq = sub nsw i64 0, %i.op
  %i.or = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %i.oq ; 2 uses
  %i.os = zext nneg i32 %.val132 to i64
  %i.ot = shl nuw nsw i64 %i.os, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.or, i8 0, i64 %i.ot, i1 false), !tbaa !30
  %i.ou = getelementptr i8, ptr %.val133, i64 4
  %.val137.val261 = load i32, ptr %i.ou, align 4, !tbaa !56
  %i.ov = getelementptr i8, ptr %.val133, i64 8
  %.val137.val138262 = load ptr, ptr %i.ov, align 8, !tbaa !46
  %i.ow = sext i32 %.val137.val261 to i64
  %i.ox = getelementptr inbounds [8 x i8], ptr %.val137.val138262, i64 %i.ow
  %i.oy = shl nuw nsw i32 %.val132, 1
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = sub nsw i64 0, %i.oz
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.pa
  br label %.lr.ph.i184

bb.aq:                                            ; preds = %.critedge
  %i.pc = and i64 %.val105, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.pc, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsPi.exit, label %.Gia_ObjIsPi.exit.thread_crit_edge

.Gia_ObjIsPi.exit.thread_crit_edge:               ; preds = %bb.aq
  %.val136.pre235.pre = load i32, ptr %i.ef, align 4, !tbaa !64
  %.val137.pre237.pre = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %Gia_ObjIsPi.exit.thread

Gia_ObjIsPi.exit:                                 ; preds = %bb.aq
  %i.pd = lshr i64 %.val105, 32                   ; 2 uses
  %i.pe = trunc nuw i64 %i.pd to i32
  %i.pf = and i32 %i.pe, 536870911
  %i.pg = getelementptr i8, ptr %0, i64 16
  %.val4.i171 = load i32, ptr %i.pg, align 8, !tbaa !62
  %i.ph = getelementptr i8, ptr %0, i64 64
  %.val5.i172 = load ptr, ptr %i.ph, align 8, !tbaa !37
  %i.pi = getelementptr i8, ptr %.val5.i172, i64 4
  %.val5.val.i173 = load i32, ptr %i.pi, align 4, !tbaa !38
  %i.pj = sub nsw i32 %.val5.val.i173, %.val4.i171
  %.not = icmp slt i32 %i.pf, %i.pj
  %.val136.pre235.pre239 = load i32, ptr %i.ef, align 4, !tbaa !64 ; 2 uses
  %.val137.pre237.pre241 = load ptr, ptr %i.a, align 8, !tbaa !61 ; 2 uses
  br i1 %.not, label %bb.ar, label %Gia_ObjIsPi.exit.thread

bb.ar:                                            ; preds = %Gia_ObjIsPi.exit
  %i.pk = and i64 %i.pd, 536870911
  %i.pl = getelementptr i8, ptr %0, i64 968
  %.val129 = load ptr, ptr %i.pl, align 8, !tbaa !82
  %i.pm = getelementptr i8, ptr %.val129, i64 8
  %.val129.val = load ptr, ptr %i.pm, align 8, !tbaa !74
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.val129.val, i64 %i.pk
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !66
  br label %Gla_ObjTruthConst0.exit

Gia_ObjIsPi.exit.thread:                          ; preds = %.Gia_ObjIsPi.exit.thread_crit_edge, %Gia_ObjIsPi.exit
  %.val137.pre237 = phi ptr [ %.val137.pre237.pre, %.Gia_ObjIsPi.exit.thread_crit_edge ], [ %.val137.pre237.pre241, %Gia_ObjIsPi.exit ] ; 3 uses
  %.val136.pre235 = phi i32 [ %.val136.pre235.pre, %.Gia_ObjIsPi.exit.thread_crit_edge ], [ %.val136.pre235.pre239, %Gia_ObjIsPi.exit ] ; 3 uses
  %i.pp = and i64 %.val105, 2147483648
  %.not.i174 = icmp ne i64 %i.pp, 0
  %i.pq = and i64 %.val105, 536870911
  %i.pr = icmp eq i64 %i.pq, 536870911
  %narrow.i175.not = or i1 %.not.i174, %i.pr
  br i1 %narrow.i175.not, label %Gla_ObjTruthConst0.exit, label %bb.as

bb.as:                                            ; preds = %Gia_ObjIsPi.exit.thread
  %i.ps = getelementptr i8, ptr %.val137.pre237, i64 8
  %.val.i176 = load ptr, ptr %i.ps, align 8, !tbaa !46
  %i.pt = getelementptr i8, ptr %0, i64 32
  %.val4.i177 = load ptr, ptr %i.pt, align 8, !tbaa !8
  %.val5.i178 = load ptr, ptr %i.cr, align 8, !tbaa !60
  %i.pu = getelementptr i8, ptr %.val5.i178, i64 8
  %.val5.val.i179 = load ptr, ptr %i.pu, align 8, !tbaa !32
  %i.pv = ptrtoint ptr %i.dz to i64
  %i.pw = ptrtoint ptr %.val4.i177 to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = sdiv exact i64 %i.px, 12
end_hunk_0
