Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2int8?download=true
inline.NumInlined: 1198
inline.NumDeleted: 368
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN11NetQuantize13quantize_gemmEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 39
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph512, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.av = phi ptr [ %i.e, %.lr.ph512 ], [ %i.sq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.aw = phi ptr [ %i.b, %.lr.ph512 ], [ %i.sr, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.0101510 = phi i64 [ 0, %.lr.ph512 ], [ %i.ss, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0101510
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 56 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !60
  %i.bb = icmp eq i64 %i.ba, 4
  br i1 %i.bb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = icmp ne i32 %i.be, 1835885895
  %i.bg = zext i1 %i.bf to i32
  %.not282 = icmp eq i32 %i.bg, 0
  br i1 %.not282, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !59
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.179, ptr noundef %i.bj) #28 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !147
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.cb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 216 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !145
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 244 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !151
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 236 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !149
  %i.bu = mul nsw i32 %i.bt, %i.br
  store i64 0, ptr %i.l, align 16, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bu, i64 noundef 4, ptr noundef null)
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !149 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph484, label %._crit_edge485.split

.lr.ph484:                                        ; preds = %bb.e
  %i.bx = load ptr, ptr %1, align 16, !tbaa !81   ; 3 uses
  %i.by = load i32, ptr %i.bq, align 4, !tbaa !151 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph484.split, label %._crit_edge485.split

.lr.ph484.split:                                  ; preds = %.lr.ph484
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !81 ; 3 uses
  %i.cc = zext nneg i32 %i.bv to i64              ; 8 uses
  %i.cd = zext nneg i32 %i.by to i64              ; 8 uses
  %scevgep648 = getelementptr i8, ptr %i.cb, i64 -4
  %i.ce = add nuw nsw i64 %i.cc, %i.cd
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %scevgep649 = getelementptr i8, ptr %scevgep648, i64 %i.cf
  %i.cg = shl nuw nsw i64 %i.cc, 2
  %i.ch = mul nuw i64 %i.cg, %i.cd
  %scevgep650 = getelementptr i8, ptr %i.bx, i64 %i.ch
  %min.iters.check652 = icmp ugt i32 %i.by, 7
  %ident.check640.not = icmp eq i32 %i.bv, 1
  %or.cond = and i1 %min.iters.check652, %ident.check640.not
  %bound0654 = icmp ult ptr %i.bx, %scevgep649
  %bound1655 = icmp ult ptr %i.cb, %scevgep650
  %found.conflict656 = and i1 %bound0654, %bound1655
  %n.vec658 = and i64 %i.cd, 2147483640           ; 3 uses
  %cmp.n665.a = icmp eq i64 %n.vec658, %i.cd
  %xtraiter = and i64 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

._crit_edge485.split:                             ; preds = %._crit_edge, %.lr.ph484, %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 288 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, %1
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !79  ; 3 uses
  br i1 %i.cj, label %_ZN4ncnn3MataSERKS0_.exit140, label %bb.f

bb.f:                                             ; preds = %._crit_edge485.split
  %.not.i138 = icmp eq ptr %.pre, null
  br i1 %.not.i138, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 296
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !79 ; 2 uses
  %.not.i141 = icmp eq ptr %i.cm, null
  br i1 %.not.i141, label %.noexc139, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = atomicrmw add ptr %i.cm, i32 -1 acq_rel, align 4
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.j, label %.noexc139

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !80 ; 3 uses
  %.not3.i = icmp eq ptr %i.cq, null
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !30
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef %i.cr)
          to label %.noexc139 unwind label %bb.t, !inline_history !1

bb.l:                                             ; preds = %bb.j
  %.not.i268 = icmp eq ptr %i.cr, null
  br i1 %.not.i268, label %.noexc139, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.cr) #26
  br label %.noexc139

.noexc139:                                        ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ay, i64 304
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ay, i64 328
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ay, i64 352
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.db = load <2 x ptr>, ptr %1, align 16, !tbaa !94
  store <2 x ptr> %i.db, ptr %i.ci, align 8, !tbaa !94
  %i.dc = load i64, ptr %i.g, align 16, !tbaa !95
  store i64 %i.dc, ptr %i.cv, align 8, !tbaa !95
  %i.dd = load i32, ptr %i.h, align 8, !tbaa !96
  store i32 %i.dd, ptr %i.cw, align 8, !tbaa !96
  %i.de = load ptr, ptr %i.i, align 16, !tbaa !80
  %i.df = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  store ptr %i.de, ptr %i.df, align 8, !tbaa !80
  %i.dg = load <4 x i32>, ptr %i.j, align 8, !tbaa !83
  store <4 x i32> %i.dg, ptr %i.cx, align 8, !tbaa !83
  %i.dh = load i32, ptr %i.k, align 8, !tbaa !90
  store i32 %i.dh, ptr %i.cy, align 8, !tbaa !90
  %i.di = load i64, ptr %i.l, align 16, !tbaa !78
  store i64 %i.di, ptr %i.cz, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit140

.lr.ph:                                           ; preds = %.lr.ph484.split, %._crit_edge
  %indvars.iv515 = phi i64 [ 0, %.lr.ph484.split ], [ %indvars.iv.next516, %._crit_edge ] ; 3 uses
  %i.dj = mul nuw nsw i64 %indvars.iv515, %i.cd
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dj ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv515 ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict656
  br i1 %brmerge, label %scalar.ph651.preheader, label %vector.body659

vector.body659:                                   ; preds = %.lr.ph, %vector.body659
  %index660 = phi i64 [ %index.next663, %vector.body659 ], [ 0, %.lr.ph ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index660 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load661.a = load <4 x float>, ptr %i.dl, align 4, !tbaa !92, !alias.scope !858
  %wide.load662 = load <4 x float>, ptr %i.dm, align 4, !tbaa !92, !alias.scope !858
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index660 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x float> %wide.load661.a, ptr %i.dn, align 4, !tbaa !92, !alias.scope !859, !noalias !858
  store <4 x float> %wide.load662, ptr %i.do, align 4, !tbaa !92, !alias.scope !859, !noalias !858
  %index.next663 = add nuw i64 %index660, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next663, %n.vec658
  br i1 %i.dp, label %middle.block664, label %vector.body659, !llvm.loop !841

middle.block664:                                  ; preds = %vector.body659
  br i1 %cmp.n665.a, label %._crit_edge, label %scalar.ph651.preheader

scalar.ph651.preheader:                           ; preds = %.lr.ph, %middle.block664
  %indvars.iv.ph = phi i64 [ %n.vec658, %middle.block664 ], [ 0, %.lr.ph ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph651.prol.loopexit, label %scalar.ph651.prol

scalar.ph651.prol:                                ; preds = %scalar.ph651.preheader, %scalar.ph651.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph651.prol ], [ %indvars.iv.ph, %scalar.ph651.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph651.prol ], [ 0, %scalar.ph651.preheader ]
  %i.dq = mul nuw nsw i64 %indvars.iv.prol, %i.cc
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.dq
  %i.dr = load float, ptr %gep.prol, align 4, !tbaa !92
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.prol
  store float %i.dr, ptr %i.ds, align 4, !tbaa !92
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph651.prol.loopexit, label %scalar.ph651.prol, !llvm.loop !842

scalar.ph651.prol.loopexit:                       ; preds = %scalar.ph651.prol, %scalar.ph651.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph651.preheader ], [ %indvars.iv.next.prol, %scalar.ph651.prol ]
  %i.dt = sub nsw i64 %indvars.iv.ph, %i.cd
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge, label %scalar.ph651

._crit_edge:                                      ; preds = %scalar.ph651.prol.loopexit, %scalar.ph651, %middle.block664
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %exitcond519.not = icmp eq i64 %indvars.iv.next516, %i.cc
  br i1 %exitcond519.not, label %._crit_edge485.split, label %.lr.ph, !llvm.loop !843

scalar.ph651:                                     ; preds = %scalar.ph651.prol.loopexit, %scalar.ph651
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph651 ], [ %indvars.iv.unr, %scalar.ph651.prol.loopexit ] ; 6 uses
  %i.dv = mul nuw nsw i64 %indvars.iv, %i.cc
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.dv
  %i.dw = load float, ptr %gep, align 4, !tbaa !92
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv
  store float %i.dw, ptr %i.dx, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = mul nuw nsw i64 %indvars.iv.next, %i.cc
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.dy
  %i.dz = load float, ptr %gep.1, align 4, !tbaa !92
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next
  store float %i.dz, ptr %i.ea, align 4, !tbaa !92
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eb = mul nuw nsw i64 %indvars.iv.next.1, %i.cc
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.eb
  %i.ec = load float, ptr %gep.2, align 4, !tbaa !92
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next.1
  store float %i.ec, ptr %i.ed, align 4, !tbaa !92
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ee = mul nuw nsw i64 %indvars.iv.next.2, %i.cc
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ee
  %i.ef = load float, ptr %gep.3, align 4, !tbaa !92
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next.2
  store float %i.ef, ptr %i.eg, align 4, !tbaa !92
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.cd
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph651, !llvm.loop !844

_ZN4ncnn3MataSERKS0_.exit140:                     ; preds = %.noexc139, %._crit_edge485.split
  %i.eh = phi ptr [ %i.da, %.noexc139 ], [ %.pre, %._crit_edge485.split ] ; 2 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !145
  %.not.i155 = icmp eq ptr %i.eh, null
  br i1 %.not.i155, label %_ZN4ncnn3MatD2Ev.exit131, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit140
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit131

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %i.i, align 16, !tbaa !80 ; 3 uses
  %.not3.i156 = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %1, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i156, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit131 unwind label %bb.s, !inline_history !1

bb.q:                                             ; preds = %bb.o
  %.not.i260 = icmp eq ptr %i.el, null
  br i1 %.not.i260, label %_ZN4ncnn3MatD2Ev.exit131, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.el) #26
  br label %_ZN4ncnn3MatD2Ev.exit131

bb.s:                                             ; preds = %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit131:                         ; preds = %bb.n, %_ZN4ncnn3MataSERKS0_.exit140, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.aa

bb.t:                                             ; preds = %bb.k
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %i.f, align 8, !tbaa !79  ; 2 uses
  %.not.i159 = icmp eq ptr %i.es, null
  br i1 %.not.i159, label %_ZN4ncnn3MatD2Ev.exit130, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = atomicrmw add ptr %i.es, i32 -1 acq_rel, align 4
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit130

bb.v:                                             ; preds = %bb.u
  %i.ev = load ptr, ptr %i.i, align 16, !tbaa !80 ; 3 uses
  %.not3.i160 = icmp eq ptr %i.ev, null
  %i.ew = load ptr, ptr %1, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i160, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !30
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef %i.ew)
          to label %_ZN4ncnn3MatD2Ev.exit130 unwind label %bb.z, !inline_history !1

bb.x:                                             ; preds = %bb.v
  %.not.i258 = icmp eq ptr %i.ew, null
  br i1 %.not.i258, label %_ZN4ncnn3MatD2Ev.exit130, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.ew) #26
  br label %_ZN4ncnn3MatD2Ev.exit130

bb.z:                                             ; preds = %bb.w
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit130:                         ; preds = %bb.u, %bb.t, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.fh

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit131, %bb.d
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ay, i64 504 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ay, i64 236 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !149
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, i32 noundef %i.fe, i64 noundef 4, ptr noundef null)
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !149 ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph493, label %._crit_edge494

.lr.ph493:                                        ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !81
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ay, i64 244
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !151 ; 4 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  %i.fm = load ptr, ptr %i.fc, align 8, !tbaa !81
  %i.fn = zext nneg i32 %i.fk to i64
  %wide.trip.count528 = zext nneg i32 %i.ff to i64
  %wide.trip.count523 = zext i32 %i.fk to i64     ; 3 uses
  %min.iters.check653 = icmp ult i32 %i.fk, 8
  %unroll_iter = and i64 %wide.trip.count523, 2147483640 ; 3 uses
  %cmp.n665 = icmp ne i64 %unroll_iter, %wide.trip.count523
  br label %bb.ab

._crit_edge494:                                   ; preds = %._crit_edge490, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ay, i64 288 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ay, i64 244 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !151
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.fo, i32 noundef %i.fq, i32 noundef %i.ff, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %i.p, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false), !tbaa.struct !187
  %i.fr = load ptr, ptr %i.r, align 8, !tbaa !80
  store ptr %i.fr, ptr %i.s, align 8, !tbaa !188
  store i8 0, ptr %i.t, align 1, !tbaa !189
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ac unwind label %bb.ad

bb.ab:                                            ; preds = %.lr.ph493, %._crit_edge490
  %indvars.iv525 = phi i64 [ 0, %.lr.ph493 ], [ %indvars.iv.next526, %._crit_edge490 ] ; 3 uses
  %i.fs = mul nuw nsw i64 %indvars.iv525, %i.fn
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs ; 2 uses
  br i1 %i.fl, label %._crit_edge490.loopexit.unr-lcssa, label %._crit_edge490

._crit_edge490.loopexit.unr-lcssa:                ; preds = %bb.ab
  br i1 %min.iters.check653, label %.lr.ph489.preheader699, label %.lr.ph489.epil.preheader

.lr.ph489.epil.preheader:                         ; preds = %._crit_edge490.loopexit.unr-lcssa, %.lr.ph489.epil.preheader
  %indvars.iv520.epil.init = phi i64 [ %index.next662, %.lr.ph489.epil.preheader ], [ 0, %._crit_edge490.loopexit.unr-lcssa ] ; 3 uses
  %vec.phi658 = phi <4 x float> [ %15, %.lr.ph489.epil.preheader ], [ zeroinitializer, %._crit_edge490.loopexit.unr-lcssa ] ; 3 uses
  %vec.phi659 = phi <4 x float> [ %16, %.lr.ph489.epil.preheader ], [ zeroinitializer, %._crit_edge490.loopexit.unr-lcssa ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv520.epil.init ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load660 = load <4 x float>, ptr %i.fu, align 4, !tbaa !92
  %wide.load661 = load <4 x float>, ptr %10, align 4, !tbaa !92
  %wide.load660.fr = freeze <4 x float> %wide.load660 ; 2 uses
  %11 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load660.fr) ; 2 uses
  %wide.load661.fr = freeze <4 x float> %wide.load661 ; 2 uses
  %12 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load661.fr) ; 2 uses
  %13 = fcmp olt <4 x float> %vec.phi658, %11
  %14 = fcmp olt <4 x float> %vec.phi659, %12
  %15 = select <4 x i1> %13, <4 x float> %11, <4 x float> %vec.phi658 ; 2 uses
  %16 = select <4 x i1> %14, <4 x float> %12, <4 x float> %vec.phi659 ; 2 uses
  %index.next662 = add nuw i64 %indvars.iv520.epil.init, 8 ; 2 uses
  %17 = fcmp uno <4 x float> %wide.load660.fr, %wide.load661.fr
  %18 = bitcast <4 x i1> %17 to i4
  %19 = icmp ne i4 %18, 0                         ; 5 uses
  %20 = icmp eq i64 %index.next662, %unroll_iter
  %21 = or i1 %19, %20
  br i1 %21, label %middle.block663, label %.lr.ph489.epil.preheader, !llvm.loop !845

middle.block663:                                  ; preds = %.lr.ph489.epil.preheader
  %22 = select i1 %19, <4 x float> %vec.phi658, <4 x float> %15
  %23 = select i1 %19, <4 x float> %vec.phi659, <4 x float> %16
  %24 = select i1 %19, i64 %indvars.iv520.epil.init, i64 %unroll_iter
  %rdx.minmax664 = call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %22, <4 x float> %23)
  %25 = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax664) ; 2 uses
  %.not696 = or i1 %cmp.n665, %19
  br i1 %.not696, label %.lr.ph489.preheader699, label %._crit_edge490

.lr.ph489.preheader699:                           ; preds = %._crit_edge490.loopexit.unr-lcssa, %middle.block663
  %indvars.iv520.ph = phi i64 [ 0, %._crit_edge490.loopexit.unr-lcssa ], [ %24, %middle.block663 ]
  %.0279486.ph = phi float [ 0.000000e+00, %._crit_edge490.loopexit.unr-lcssa ], [ %25, %middle.block663 ]
  br label %.lr.ph489

._crit_edge490:                                   ; preds = %.lr.ph489, %middle.block663, %bb.ab
  %.0279.lcssa = phi float [ 0.000000e+00, %bb.ab ], [ %25, %middle.block663 ], [ %.sroa.speculated274.1, %.lr.ph489 ] ; 2 uses
  %i.fv = fcmp oeq float %.0279.lcssa, 0.000000e+00
  %i.fw = fdiv float 1.270000e+02, %.0279.lcssa
  %i.fx = select i1 %i.fv, float 1.000000e+00, float %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv525
  store float %i.fx, ptr %i.fy, align 4, !tbaa !92
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count528
  br i1 %exitcond529.not, label %._crit_edge494, label %bb.ab, !llvm.loop !846

.lr.ph489:                                        ; preds = %.lr.ph489.preheader699, %.lr.ph489
  %indvars.iv520 = phi i64 [ %niter.next.1, %.lr.ph489 ], [ %indvars.iv520.ph, %.lr.ph489.preheader699 ] ; 2 uses
  %.0279486 = phi float [ %.sroa.speculated274.1, %.lr.ph489 ], [ %.0279486.ph, %.lr.ph489.preheader699 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv520
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !92
  %i.gb = call noundef float @llvm.fabs.f32(float %i.ga) ; 2 uses
  %i.gc = fcmp olt float %.0279486, %i.gb
  %.sroa.speculated274.1 = select i1 %i.gc, float %i.gb, float %.0279486 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count523
  br i1 %niter.ncmp.1, label %._crit_edge490, label %.lr.ph489, !llvm.loop !847

bb.ac:                                            ; preds = %._crit_edge494
  %i.gd = load ptr, ptr %3, align 8, !tbaa !81
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit270

_ZNK4ncnn3Mat5emptyEv.exit270:                    ; preds = %bb.ac
  %i.gf = load i64, ptr %i.p, align 8, !tbaa !78
  %i.gg = load i32, ptr %i.o, align 8, !tbaa !90
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul i64 %i.gf, %i.gh
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %.critedge, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge494
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ae:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit270
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.gl = load i32, ptr %i.fp, align 4, !tbaa !151
  %i.gm = load i32, ptr %i.fd, align 4, !tbaa !149
  %i.gn = mul nsw i32 %i.gm, %i.gl
  invoke void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.gn, ptr noundef null)
          to label %bb.af unwind label %bb.bg

bb.af:                                            ; preds = %bb.ae
  %i.go = icmp eq ptr %i.fo, %5
  %.pre545 = load ptr, ptr %i.u, align 8, !tbaa !79 ; 3 uses
  br i1 %i.go, label %_ZN4ncnn3MataSERKS0_.exit137, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i135 = icmp eq ptr %.pre545, null
  br i1 %.not.i135, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gp = atomicrmw add ptr %.pre545, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ay, i64 296
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !79 ; 2 uses
  %.not.i143 = icmp eq ptr %i.gr, null
  br i1 %.not.i143, label %.noexc136, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = atomicrmw add ptr %i.gr, i32 -1 acq_rel, align 4
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.ak, label %.noexc136

bb.ak:                                            ; preds = %bb.aj
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !80 ; 3 uses
  %.not3.i144 = icmp eq ptr %i.gv, null
  %i.gw = load ptr, ptr %i.fo, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i144, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !30
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gw)
          to label %.noexc136 unwind label %bb.bh, !inline_history !1

bb.am:                                            ; preds = %bb.ak
  %.not.i266 = icmp eq ptr %i.gw, null
  br i1 %.not.i266, label %.noexc136, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.gw) #26
  br label %.noexc136

.noexc136:                                        ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %bb.an
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ay, i64 304
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ay, i64 328
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %i.he = getelementptr inbounds nuw i8, ptr %i.ay, i64 352
  %i.hf = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.hg = load <2 x ptr>, ptr %5, align 16, !tbaa !94
  store <2 x ptr> %i.hg, ptr %i.fo, align 8, !tbaa !94
  %i.hh = load i64, ptr %i.v, align 16, !tbaa !95
  store i64 %i.hh, ptr %i.ha, align 8, !tbaa !95
  %i.hi = load i32, ptr %i.w, align 8, !tbaa !96
  store i32 %i.hi, ptr %i.hb, align 8, !tbaa !96
  %i.hj = load ptr, ptr %i.x, align 16, !tbaa !80
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !80
  %i.hl = load <4 x i32>, ptr %i.y, align 8, !tbaa !83
  store <4 x i32> %i.hl, ptr %i.hc, align 8, !tbaa !83
  %i.hm = load i32, ptr %i.z, align 8, !tbaa !90
  store i32 %i.hm, ptr %i.hd, align 8, !tbaa !90
  %i.hn = load i64, ptr %i.aa, align 16, !tbaa !78
  store i64 %i.hn, ptr %i.he, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit137

_ZN4ncnn3MataSERKS0_.exit137:                     ; preds = %.noexc136, %bb.af
  %i.ho = phi ptr [ %i.hf, %.noexc136 ], [ %.pre545, %bb.af ] ; 2 uses
  %.not.i163 = icmp eq ptr %i.ho, null
  br i1 %.not.i163, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.ao

bb.ao:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit137
  %i.hp = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit129

bb.ap:                                            ; preds = %bb.ao
  %i.hr = load ptr, ptr %i.x, align 16, !tbaa !80 ; 3 uses
  %.not3.i164 = icmp eq ptr %i.hr, null
  %i.hs = load ptr, ptr %5, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i164, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !30
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef %i.hs)
          to label %_ZN4ncnn3MatD2Ev.exit129 unwind label %bb.at, !inline_history !1

bb.ar:                                            ; preds = %bb.ap
  %.not.i256 = icmp eq ptr %i.hs, null
  br i1 %.not.i256, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.hs) #26
  br label %_ZN4ncnn3MatD2Ev.exit129

bb.at:                                            ; preds = %bb.aq
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit129:                         ; preds = %bb.ao, %_ZN4ncnn3MataSERKS0_.exit137, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.hy = load ptr, ptr %i.m, align 8, !tbaa !79  ; 2 uses
  %.not.i167 = icmp eq ptr %i.hy, null
  br i1 %.not.i167, label %_ZN4ncnn3MatD2Ev.exit128, label %bb.au

bb.au:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit129
  %i.hz = atomicrmw add ptr %i.hy, i32 -1 acq_rel, align 4
  %i.ia = icmp eq i32 %i.hz, 1
  br i1 %i.ia, label %bb.av, label %_ZN4ncnn3MatD2Ev.exit128

bb.av:                                            ; preds = %bb.au
  %i.ib = load ptr, ptr %i.n, align 8, !tbaa !80  ; 3 uses
  %.not3.i168 = icmp eq ptr %i.ib, null
  %i.ic = load ptr, ptr %3, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i168, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !30
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef %i.ic)
          to label %_ZN4ncnn3MatD2Ev.exit128 unwind label %bb.az, !inline_history !1

bb.ax:                                            ; preds = %bb.av
  %.not.i254 = icmp eq ptr %i.ic, null
  br i1 %.not.i254, label %_ZN4ncnn3MatD2Ev.exit128, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef nonnull %i.ic) #26
  br label %_ZN4ncnn3MatD2Ev.exit128

bb.az:                                            ; preds = %bb.aw
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit128:                         ; preds = %bb.au, %_ZN4ncnn3MatD2Ev.exit129, %bb.aw, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ii = load ptr, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %.not.i171 = icmp eq ptr %i.ii, null
  br i1 %.not.i171, label %_ZN4ncnn3MatD2Ev.exit127, label %bb.ba

bb.ba:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit128
  %i.ij = atomicrmw add ptr %i.ii, i32 -1 acq_rel, align 4
  %i.ik = icmp eq i32 %i.ij, 1
  br i1 %i.ik, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit127

bb.bb:                                            ; preds = %bb.ba
  %i.il = load ptr, ptr %i.r, align 8, !tbaa !80  ; 3 uses
  %.not3.i172 = icmp eq ptr %i.il, null
  %i.im = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i172, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !30
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im)
          to label %_ZN4ncnn3MatD2Ev.exit127 unwind label %bb.bf, !inline_history !1

bb.bd:                                            ; preds = %bb.bb
end_hunk_0
begin_hunk_1_@_ZN11NetQuantize13quantize_gemmEv:bb.a

bb.bs:                                            ; preds = %bb.bq
  %.not.i248 = icmp eq ptr %i.ji, null
  br i1 %.not.i248, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef nonnull %i.ji) #26
  br label %_ZN4ncnn3MatD2Ev.exit125

bb.bu:                                            ; preds = %bb.br
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit125:                         ; preds = %bb.bp, %bb.bo, %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.jo = load ptr, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %.not.i183 = icmp eq ptr %i.jo, null
  br i1 %.not.i183, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.bv

bb.bv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit125
  %i.jp = atomicrmw add ptr %i.jo, i32 -1 acq_rel, align 4
  %i.jq = icmp eq i32 %i.jp, 1
  br i1 %i.jq, label %bb.bw, label %_ZN4ncnn3MatD2Ev.exit124

bb.bw:                                            ; preds = %bb.bv
  %i.jr = load ptr, ptr %i.r, align 8, !tbaa !80  ; 3 uses
  %.not3.i184 = icmp eq ptr %i.jr, null
  %i.js = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i184, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !30
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef %i.js)
          to label %_ZN4ncnn3MatD2Ev.exit124 unwind label %bb.ca, !inline_history !1

bb.by:                                            ; preds = %bb.bw
  %.not.i246 = icmp eq ptr %i.js, null
  br i1 %.not.i246, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %i.js) #26
  br label %_ZN4ncnn3MatD2Ev.exit124

bb.ca:                                            ; preds = %bb.bx
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit124:                         ; preds = %bb.bv, %_ZN4ncnn3MatD2Ev.exit125, %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.fh

bb.cb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit127, %bb.c
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ay, i64 228
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !148
  %.not108 = icmp eq i32 %i.jz, 0
  br i1 %.not108, label %.critedge114, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ay, i64 220 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !146
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.cd, label %bb.cz

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ay, i64 244 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !151
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ay, i64 240 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !150
  %i.kh = mul nsw i32 %i.kg, %i.ke
  store i64 0, ptr %i.ai, align 16, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.kh, i64 noundef 4, ptr noundef null)
  %i.ki = load i32, ptr %i.kf, align 8, !tbaa !150 ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  br i1 %i.kj, label %.lr.ph502, label %._crit_edge503.split

.lr.ph502:                                        ; preds = %bb.cd
  %i.kk = load ptr, ptr %6, align 16, !tbaa !81   ; 3 uses
  %i.kl = load i32, ptr %i.kd, align 4, !tbaa !151 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %.lr.ph502.split, label %._crit_edge503.split

.lr.ph502.split:                                  ; preds = %.lr.ph502
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ay, i64 360
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !81 ; 3 uses
  %i.kp = zext nneg i32 %i.ki to i64              ; 8 uses
  %i.kq = zext nneg i32 %i.kl to i64              ; 8 uses
  %scevgep = getelementptr i8, ptr %i.ko, i64 -4
  %i.kr = add nuw nsw i64 %i.kp, %i.kq
  %i.ks = shl nuw nsw i64 %i.kr, 2
  %scevgep636 = getelementptr i8, ptr %scevgep, i64 %i.ks
  %i.kt = shl nuw nsw i64 %i.kp, 2
  %i.ku = mul nuw i64 %i.kt, %i.kq
  %scevgep637 = getelementptr i8, ptr %i.kk, i64 %i.ku
  %min.iters.check.a = icmp ugt i32 %i.kl, 7
  %ident.check.not = icmp eq i32 %i.ki, 1
  %or.cond667 = and i1 %min.iters.check.a, %ident.check.not
  %bound0 = icmp ult ptr %i.kk, %scevgep636
  %bound1 = icmp ult ptr %i.ko, %scevgep637
  %found.conflict = and i1 %bound0, %bound1
  %n.vec.a = and i64 %i.kq, 2147483640            ; 3 uses
  %cmp.n.a = icmp eq i64 %n.vec.a, %i.kq
  %xtraiter672 = and i64 %i.kq, 3                 ; 2 uses
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br label %.lr.ph498

._crit_edge503.split:                             ; preds = %._crit_edge499, %.lr.ph502, %bb.cd
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ay, i64 360 ; 3 uses
  %i.kw = icmp eq ptr %i.kv, %6
  %.pre546 = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 3 uses
  br i1 %i.kw, label %_ZN4ncnn3MataSERKS0_.exit134, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge503.split
  %.not.i132 = icmp eq ptr %.pre546, null
  br i1 %.not.i132, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kx = atomicrmw add ptr %.pre546, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ay, i64 368
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !79 ; 2 uses
  %.not.i147 = icmp eq ptr %i.kz, null
  br i1 %.not.i147, label %.noexc133, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.la = atomicrmw add ptr %i.kz, i32 -1 acq_rel, align 4
  %i.lb = icmp eq i32 %i.la, 1
  br i1 %i.lb, label %bb.ci, label %.noexc133

bb.ci:                                            ; preds = %bb.ch
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ay, i64 392
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !80 ; 3 uses
  %.not3.i148 = icmp eq ptr %i.ld, null
  %i.le = load ptr, ptr %i.kv, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i148, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !30
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8
  invoke void %i.lh(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef %i.le)
          to label %.noexc133 unwind label %bb.cs, !inline_history !1

bb.ck:                                            ; preds = %bb.ci
  %.not.i264 = icmp eq ptr %i.le, null
  br i1 %.not.i264, label %.noexc133, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @free(ptr noundef nonnull %i.le) #26
  br label %.noexc133

.noexc133:                                        ; preds = %bb.ch, %bb.cg, %bb.cj, %bb.ck, %bb.cl
  %i.li = getelementptr inbounds nuw i8, ptr %i.ay, i64 376
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ay, i64 400
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ay, i64 416
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ay, i64 424
  %i.ln = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.lo = load <2 x ptr>, ptr %6, align 16, !tbaa !94
  store <2 x ptr> %i.lo, ptr %i.kv, align 8, !tbaa !94
  %i.lp = load i64, ptr %i.ad, align 16, !tbaa !95
  store i64 %i.lp, ptr %i.li, align 8, !tbaa !95
  %i.lq = load i32, ptr %i.ae, align 8, !tbaa !96
  store i32 %i.lq, ptr %i.lj, align 8, !tbaa !96
  %i.lr = load ptr, ptr %i.af, align 16, !tbaa !80
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ay, i64 392
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !80
  %i.lt = load <4 x i32>, ptr %i.ag, align 8, !tbaa !83
  store <4 x i32> %i.lt, ptr %i.lk, align 8, !tbaa !83
  %i.lu = load i32, ptr %i.ah, align 8, !tbaa !90
  store i32 %i.lu, ptr %i.ll, align 8, !tbaa !90
  %i.lv = load i64, ptr %i.ai, align 16, !tbaa !78
  store i64 %i.lv, ptr %i.lm, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit134

.lr.ph498:                                        ; preds = %.lr.ph502.split, %._crit_edge499
  %indvars.iv535 = phi i64 [ 0, %.lr.ph502.split ], [ %indvars.iv.next536, %._crit_edge499 ] ; 3 uses
  %i.lw = mul nuw nsw i64 %indvars.iv535, %i.kq
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.lw ; 6 uses
  %invariant.gep632 = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv535 ; 6 uses
  %or.cond667.not = xor i1 %or.cond667, true
  %brmerge681 = select i1 %or.cond667.not, i1 true, i1 %found.conflict
  br i1 %brmerge681, label %scalar.ph.preheader, label %vector.body.a

vector.body.a:                                    ; preds = %.lr.ph498, %vector.body.a
  %index.a = phi i64 [ %index.next.a, %vector.body.a ], [ 0, %.lr.ph498 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep632, i64 %index.a ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %wide.load.a = load <4 x float>, ptr %i.ly, align 4, !tbaa !92, !alias.scope !860
  %wide.load638 = load <4 x float>, ptr %i.lz, align 4, !tbaa !92, !alias.scope !860
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index.a ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store <4 x float> %wide.load.a, ptr %i.ma, align 4, !tbaa !92, !alias.scope !861, !noalias !860
  store <4 x float> %wide.load638, ptr %i.mb, align 4, !tbaa !92, !alias.scope !861, !noalias !860
  %index.next.a = add nuw i64 %index.a, 8         ; 2 uses
  %i.mc = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.mc, label %middle.block.a, label %vector.body.a, !llvm.loop !851

middle.block.a:                                   ; preds = %vector.body.a
  br i1 %cmp.n.a, label %._crit_edge499, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph498, %middle.block.a
  %indvars.iv530.ph = phi i64 [ %n.vec.a, %middle.block.a ], [ 0, %.lr.ph498 ] ; 3 uses
  br i1 %lcmp.mod673.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv530.prol = phi i64 [ %indvars.iv.next531.prol, %scalar.ph.prol ], [ %indvars.iv530.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter674 = phi i64 [ %prol.iter674.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.md = mul nuw nsw i64 %indvars.iv530.prol, %i.kp
  %gep633.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep632, i64 %i.md
  %i.me = load float, ptr %gep633.prol, align 4, !tbaa !92
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv530.prol
  store float %i.me, ptr %i.mf, align 4, !tbaa !92
  %indvars.iv.next531.prol = add nuw nsw i64 %indvars.iv530.prol, 1 ; 2 uses
  %prol.iter674.next = add i64 %prol.iter674, 1   ; 2 uses
  %prol.iter674.cmp.not = icmp eq i64 %prol.iter674.next, %xtraiter672
  br i1 %prol.iter674.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !852

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv530.unr = phi i64 [ %indvars.iv530.ph, %scalar.ph.preheader ], [ %indvars.iv.next531.prol, %scalar.ph.prol ]
  %i.mg = sub nsw i64 %indvars.iv530.ph, %i.kq
  %i.mh = icmp ugt i64 %i.mg, -4
  br i1 %i.mh, label %._crit_edge499, label %scalar.ph

._crit_edge499:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block.a
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %exitcond539.not = icmp eq i64 %indvars.iv.next536, %i.kp
  br i1 %exitcond539.not, label %._crit_edge503.split, label %.lr.ph498, !llvm.loop !853

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv530 = phi i64 [ %indvars.iv.next531.3, %scalar.ph ], [ %indvars.iv530.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mi = mul nuw nsw i64 %indvars.iv530, %i.kp
  %gep633 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep632, i64 %i.mi
  %i.mj = load float, ptr %gep633, align 4, !tbaa !92
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv530
  store float %i.mj, ptr %i.mk, align 4, !tbaa !92
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %i.ml = mul nuw nsw i64 %indvars.iv.next531, %i.kp
  %gep633.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep632, i64 %i.ml
  %i.mm = load float, ptr %gep633.1, align 4, !tbaa !92
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv.next531
  store float %i.mm, ptr %i.mn, align 4, !tbaa !92
  %indvars.iv.next531.1 = add nuw nsw i64 %indvars.iv530, 2 ; 2 uses
  %i.mo = mul nuw nsw i64 %indvars.iv.next531.1, %i.kp
  %gep633.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep632, i64 %i.mo
  %i.mp = load float, ptr %gep633.2, align 4, !tbaa !92
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv.next531.1
  store float %i.mp, ptr %i.mq, align 4, !tbaa !92
  %indvars.iv.next531.2 = add nuw nsw i64 %indvars.iv530, 3 ; 2 uses
  %i.mr = mul nuw nsw i64 %indvars.iv.next531.2, %i.kp
  %gep633.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep632, i64 %i.mr
  %i.ms = load float, ptr %gep633.3, align 4, !tbaa !92
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv.next531.2
  store float %i.ms, ptr %i.mt, align 4, !tbaa !92
  %indvars.iv.next531.3 = add nuw nsw i64 %indvars.iv530, 4 ; 2 uses
  %exitcond534.not.3 = icmp eq i64 %indvars.iv.next531.3, %i.kq
  br i1 %exitcond534.not.3, label %._crit_edge499, label %scalar.ph, !llvm.loop !854

_ZN4ncnn3MataSERKS0_.exit134:                     ; preds = %.noexc133, %._crit_edge503.split
  %i.mu = phi ptr [ %i.ln, %.noexc133 ], [ %.pre546, %._crit_edge503.split ] ; 2 uses
  store i32 1, ptr %i.ka, align 4, !tbaa !146
  %.not.i187 = icmp eq ptr %i.mu, null
  br i1 %.not.i187, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.cm

bb.cm:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit134
  %i.mv = atomicrmw add ptr %i.mu, i32 -1 acq_rel, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.cn, label %_ZN4ncnn3MatD2Ev.exit123

bb.cn:                                            ; preds = %bb.cm
  %i.mx = load ptr, ptr %i.af, align 16, !tbaa !80 ; 3 uses
  %.not3.i188 = icmp eq ptr %i.mx, null
  %i.my = load ptr, ptr %6, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i188, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !30
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.mx, ptr noundef %i.my)
          to label %_ZN4ncnn3MatD2Ev.exit123 unwind label %bb.cr, !inline_history !1

bb.cp:                                            ; preds = %bb.cn
  %.not.i244 = icmp eq ptr %i.my, null
  br i1 %.not.i244, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @free(ptr noundef nonnull %i.my) #26
  br label %_ZN4ncnn3MatD2Ev.exit123

bb.cr:                                            ; preds = %bb.co
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit123:                         ; preds = %bb.cm, %_ZN4ncnn3MataSERKS0_.exit134, %bb.co, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cz

bb.cs:                                            ; preds = %bb.cj
  %i.ne = landingpad { ptr, i32 }
          cleanup
  %i.nf = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  %.not.i191 = icmp eq ptr %i.nf, null
  br i1 %.not.i191, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ng = atomicrmw add ptr %i.nf, i32 -1 acq_rel, align 4
  %i.nh = icmp eq i32 %i.ng, 1
  br i1 %i.nh, label %bb.cu, label %_ZN4ncnn3MatD2Ev.exit122

bb.cu:                                            ; preds = %bb.ct
  %i.ni = load ptr, ptr %i.af, align 16, !tbaa !80 ; 3 uses
  %.not3.i192 = icmp eq ptr %i.ni, null
  %i.nj = load ptr, ptr %6, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i192, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nk = load ptr, ptr %i.ni, align 8, !tbaa !30
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8
  invoke void %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %i.ni, ptr noundef %i.nj)
          to label %_ZN4ncnn3MatD2Ev.exit122 unwind label %bb.cy, !inline_history !1

bb.cw:                                            ; preds = %bb.cu
  %.not.i242 = icmp eq ptr %i.nj, null
  br i1 %.not.i242, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @free(ptr noundef nonnull %i.nj) #26
  br label %_ZN4ncnn3MatD2Ev.exit122

bb.cy:                                            ; preds = %bb.cv
  %i.nn = landingpad { ptr, i32 }
          catch ptr null
  %i.no = extractvalue { ptr, i32 } %i.nn, 0
  call void @__clang_call_terminate(ptr %i.no) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %bb.ct, %bb.cs, %bb.cv, %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.fh

bb.cz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit123, %bb.cc
  %i.np = getelementptr inbounds nuw i8, ptr %i.ay, i64 360 ; 5 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !81 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ay, i64 404
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !862 ; 3 uses
  %i.nt = icmp sgt i32 %i.ns, 0
  br i1 %i.nt, label %.lr.ph507.preheader, label %._crit_edge508

.lr.ph507.preheader:                              ; preds = %bb.cz
  %wide.trip.count543 = zext nneg i32 %i.ns to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ns, 8
  br i1 %min.iters.check, label %.lr.ph507.preheader700, label %.lr.ph507.preheader.new

.lr.ph507.preheader.new:                          ; preds = %.lr.ph507.preheader
  %unroll_iter679 = and i64 %wide.trip.count543, 2147483640 ; 3 uses
  br label %._crit_edge508.loopexit.unr-lcssa

._crit_edge508.loopexit.unr-lcssa:                ; preds = %._crit_edge508.loopexit.unr-lcssa, %.lr.ph507.preheader.new
  %index = phi i64 [ 0, %.lr.ph507.preheader.new ], [ %index.next, %._crit_edge508.loopexit.unr-lcssa ] ; 3 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %.lr.ph507.preheader.new ], [ %32, %._crit_edge508.loopexit.unr-lcssa ] ; 3 uses
  %vec.phi634 = phi <4 x float> [ zeroinitializer, %.lr.ph507.preheader.new ], [ %33, %._crit_edge508.loopexit.unr-lcssa ] ; 3 uses
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %wide.load = load <4 x float>, ptr %26, align 4, !tbaa !92
  %wide.load635 = load <4 x float>, ptr %27, align 4, !tbaa !92
  %wide.load.fr = freeze <4 x float> %wide.load   ; 2 uses
  %28 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.fr) ; 2 uses
  %wide.load635.fr = freeze <4 x float> %wide.load635 ; 2 uses
  %29 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load635.fr) ; 2 uses
  %30 = fcmp olt <4 x float> %vec.phi, %28
  %31 = fcmp olt <4 x float> %vec.phi634, %29
  %32 = select <4 x i1> %30, <4 x float> %28, <4 x float> %vec.phi ; 2 uses
  %33 = select <4 x i1> %31, <4 x float> %29, <4 x float> %vec.phi634 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %34 = fcmp uno <4 x float> %wide.load.fr, %wide.load635.fr
  %35 = bitcast <4 x i1> %34 to i4
  %36 = icmp ne i4 %35, 0                         ; 5 uses
  %lcmp.mod676.not = icmp eq i64 %index.next, %unroll_iter679
  %37 = or i1 %36, %lcmp.mod676.not
  br i1 %37, label %.lr.ph507.epil.preheader, label %._crit_edge508.loopexit.unr-lcssa, !llvm.loop !855

.lr.ph507.epil.preheader:                         ; preds = %._crit_edge508.loopexit.unr-lcssa
  %38 = select i1 %36, <4 x float> %vec.phi, <4 x float> %32
  %39 = select i1 %36, <4 x float> %vec.phi634, <4 x float> %33
  %40 = select i1 %36, i64 %index, i64 %unroll_iter679
  %rdx.minmax = call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %38, <4 x float> %39)
  %i.nu = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %unroll_iter679, %wide.trip.count543
  %.not697 = or i1 %cmp.n, %36
  br i1 %.not697, label %.lr.ph507.preheader700, label %._crit_edge508

.lr.ph507.preheader700:                           ; preds = %.lr.ph507.preheader, %.lr.ph507.epil.preheader
  %indvars.iv540.ph = phi i64 [ 0, %.lr.ph507.preheader ], [ %40, %.lr.ph507.epil.preheader ]
  %.0280504.ph = phi float [ 0.000000e+00, %.lr.ph507.preheader ], [ %i.nu, %.lr.ph507.epil.preheader ]
  br label %.lr.ph507

._crit_edge508:                                   ; preds = %.lr.ph507, %.lr.ph507.epil.preheader, %bb.cz
  %.0280.lcssa = phi float [ 0.000000e+00, %bb.cz ], [ %i.nu, %.lr.ph507.epil.preheader ], [ %.sroa.speculated.1, %.lr.ph507 ] ; 2 uses
  %i.nv = fcmp oeq float %.0280.lcssa, 0.000000e+00
  %i.nw = fdiv float 1.270000e+02, %.0280.lcssa
  %i.nx = select i1 %i.nv, float 1.000000e+00, float %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ay, i64 576 ; 2 uses
  store float %i.nx, ptr %i.ny, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 0, ptr %i.al, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef 1, i64 noundef 4, ptr noundef null)
  %i.nz = load float, ptr %i.ny, align 8, !tbaa !153
  %i.oa = load ptr, ptr %7, align 8, !tbaa !81
  store float %i.nz, ptr %i.oa, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i64 0, ptr %i.as, align 16, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ap, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false), !tbaa.struct !187
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ay, i64 392 ; 3 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !863
  store ptr %i.oc, ptr %i.at, align 8, !tbaa !188
  store i8 0, ptr %i.au, align 1, !tbaa !189
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.np, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.da unwind label %bb.db

.lr.ph507:                                        ; preds = %.lr.ph507.preheader700, %.lr.ph507
  %indvars.iv540 = phi i64 [ %niter680.next.1, %.lr.ph507 ], [ %indvars.iv540.ph, %.lr.ph507.preheader700 ] ; 2 uses
  %.0280504 = phi float [ %.sroa.speculated.1, %.lr.ph507 ], [ %.0280504.ph, %.lr.ph507.preheader700 ] ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv540
  %i.oe = load float, ptr %i.od, align 4, !tbaa !92
  %i.of = call noundef float @llvm.fabs.f32(float %i.oe) ; 2 uses
  %i.og = fcmp olt float %.0280504, %i.of
  %.sroa.speculated.1 = select i1 %i.og, float %i.of, float %.0280504 ; 2 uses
  %niter680.next.1 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %niter680.ncmp.1 = icmp eq i64 %niter680.next.1, %wide.trip.count543
  br i1 %niter680.ncmp.1, label %._crit_edge508, label %.lr.ph507, !llvm.loop !856

bb.da:                                            ; preds = %._crit_edge508
  %i.oh = load ptr, ptr %8, align 16, !tbaa !81
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %.critedge112, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.da
  %i.oj = load i64, ptr %i.as, align 16, !tbaa !78
  %i.ok = load i32, ptr %i.ar, align 8, !tbaa !90
  %i.ol = sext i32 %i.ok to i64
  %i.om = mul i64 %i.oj, %i.ol
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %.critedge112, label %bb.do

bb.db:                                            ; preds = %bb.du, %._crit_edge508
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.op = load ptr, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %.not.i195 = icmp eq ptr %i.op, null
  br i1 %.not.i195, label %_ZN4ncnn3MatD2Ev.exit121, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.oq = atomicrmw add ptr %i.op, i32 -1 acq_rel, align 4
  %i.or = icmp eq i32 %i.oq, 1
  br i1 %i.or, label %bb.dd, label %_ZN4ncnn3MatD2Ev.exit121

bb.dd:                                            ; preds = %bb.dc
  %i.os = load ptr, ptr %i.ap, align 16, !tbaa !80 ; 3 uses
  %.not3.i196 = icmp eq ptr %i.os, null
  %i.ot = load ptr, ptr %8, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i196, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ou = load ptr, ptr %i.os, align 8, !tbaa !30
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8
  invoke void %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %i.os, ptr noundef %i.ot)
          to label %_ZN4ncnn3MatD2Ev.exit121 unwind label %bb.dh, !inline_history !1

bb.df:                                            ; preds = %bb.dd
  %.not.i240 = icmp eq ptr %i.ot, null
  br i1 %.not.i240, label %_ZN4ncnn3MatD2Ev.exit121, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @free(ptr noundef nonnull %i.ot) #26
  br label %_ZN4ncnn3MatD2Ev.exit121

bb.dh:                                            ; preds = %bb.de
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  %i.oy = extractvalue { ptr, i32 } %i.ox, 0
  call void @__clang_call_terminate(ptr %i.oy) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %bb.dc, %bb.db, %bb.de, %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.oz = load ptr, ptr %i.aj, align 8, !tbaa !79 ; 2 uses
  %.not.i207 = icmp eq ptr %i.oz, null
  br i1 %.not.i207, label %_ZN4ncnn3MatD2Ev.exit118, label %bb.di

bb.di:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.pa = atomicrmw add ptr %i.oz, i32 -1 acq_rel, align 4
  %i.pb = icmp eq i32 %i.pa, 1
  br i1 %i.pb, label %bb.dj, label %_ZN4ncnn3MatD2Ev.exit118

bb.dj:                                            ; preds = %bb.di
  %i.pc = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  %.not3.i208 = icmp eq ptr %i.pc, null
  %i.pd = load ptr, ptr %7, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i208, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pe = load ptr, ptr %i.pc, align 8, !tbaa !30
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8
  invoke void %i.pg(ptr noundef nonnull align 8 dereferenceable(8) %i.pc, ptr noundef %i.pd)
          to label %_ZN4ncnn3MatD2Ev.exit118 unwind label %bb.dn, !inline_history !1

bb.dl:                                            ; preds = %bb.dj
  %.not.i234 = icmp eq ptr %i.pd, null
  br i1 %.not.i234, label %_ZN4ncnn3MatD2Ev.exit118, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @free(ptr noundef nonnull %i.pd) #26
  br label %_ZN4ncnn3MatD2Ev.exit118

bb.dn:                                            ; preds = %bb.dk
  %i.ph = landingpad { ptr, i32 }
          catch ptr null
  %i.pi = extractvalue { ptr, i32 } %i.ph, 0
  call void @__clang_call_terminate(ptr %i.pi) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit118:                         ; preds = %bb.di, %_ZN4ncnn3MatD2Ev.exit121, %bb.dk, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.fh

bb.do:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.pj = icmp eq ptr %i.np, %8
  %.pre547 = load ptr, ptr %i.am, align 8, !tbaa !79 ; 3 uses
  br i1 %i.pj, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not.i = icmp eq ptr %.pre547, null
  br i1 %.not.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pk = atomicrmw add ptr %.pre547, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ay, i64 368
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !79 ; 2 uses
  %.not.i151 = icmp eq ptr %i.pm, null
  br i1 %.not.i151, label %.noexc, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pn = atomicrmw add ptr %i.pm, i32 -1 acq_rel, align 4
  %i.po = icmp eq i32 %i.pn, 1
  br i1 %i.po, label %bb.dt, label %.noexc

bb.dt:                                            ; preds = %bb.ds
  %i.pp = load ptr, ptr %i.ob, align 8, !tbaa !80 ; 3 uses
  %.not3.i152 = icmp eq ptr %i.pp, null
  %i.pq = load ptr, ptr %i.np, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i152, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pr = load ptr, ptr %i.pp, align 8, !tbaa !30
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8
  invoke void %i.pt(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, ptr noundef %i.pq)
          to label %.noexc unwind label %bb.db, !inline_history !1

bb.dv:                                            ; preds = %bb.dt
  %.not.i262 = icmp eq ptr %i.pq, null
  br i1 %.not.i262, label %.noexc, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @free(ptr noundef nonnull %i.pq) #26
  br label %.noexc

.noexc:                                           ; preds = %bb.ds, %bb.dr, %bb.du, %bb.dv, %bb.dw
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ay, i64 376
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ay, i64 400
  %i.px = getelementptr inbounds nuw i8, ptr %i.ay, i64 416
  %i.py = getelementptr inbounds nuw i8, ptr %i.ay, i64 424
  %i.pz = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.qa = load <2 x ptr>, ptr %8, align 16, !tbaa !94
  store <2 x ptr> %i.qa, ptr %i.np, align 8, !tbaa !94
  %i.qb = load i64, ptr %i.an, align 16, !tbaa !95
  store i64 %i.qb, ptr %i.pu, align 8, !tbaa !95
  %i.qc = load i32, ptr %i.ao, align 8, !tbaa !96
  store i32 %i.qc, ptr %i.pv, align 8, !tbaa !96
  %i.qd = load ptr, ptr %i.ap, align 16, !tbaa !80
  store ptr %i.qd, ptr %i.ob, align 8, !tbaa !80
  %i.qe = load <4 x i32>, ptr %i.aq, align 8, !tbaa !83
  store <4 x i32> %i.qe, ptr %i.pw, align 8, !tbaa !83
  %i.qf = load i32, ptr %i.ar, align 8, !tbaa !90
  store i32 %i.qf, ptr %i.px, align 8, !tbaa !90
  %i.qg = load i64, ptr %i.as, align 16, !tbaa !78
  store i64 %i.qg, ptr %i.py, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %bb.do
  %i.qh = phi ptr [ %i.pz, %.noexc ], [ %.pre547, %bb.do ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %.not.i199 = icmp eq ptr %i.qh, null
  br i1 %.not.i199, label %_ZN4ncnn3MatD2Ev.exit120, label %bb.dx

bb.dx:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.qi = atomicrmw add ptr %i.qh, i32 -1 acq_rel, align 4
  %i.qj = icmp eq i32 %i.qi, 1
  br i1 %i.qj, label %bb.dy, label %_ZN4ncnn3MatD2Ev.exit120

bb.dy:                                            ; preds = %bb.dx
  %i.qk = load ptr, ptr %i.ap, align 16, !tbaa !80 ; 3 uses
  %.not3.i200 = icmp eq ptr %i.qk, null
  %i.ql = load ptr, ptr %8, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i200, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.qm = load ptr, ptr %i.qk, align 8, !tbaa !30
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8
  invoke void %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, ptr noundef %i.ql)
          to label %_ZN4ncnn3MatD2Ev.exit120 unwind label %bb.ec, !inline_history !1

bb.ea:                                            ; preds = %bb.dy
  %.not.i238 = icmp eq ptr %i.ql, null
  br i1 %.not.i238, label %_ZN4ncnn3MatD2Ev.exit120, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef nonnull %i.ql) #26
  br label %_ZN4ncnn3MatD2Ev.exit120

bb.ec:                                            ; preds = %bb.dz
  %i.qp = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN11NetQuantize13quantize_gemmEv:bb.a
  %.not.i236 = icmp eq ptr %i.qv, null
  br i1 %.not.i236, label %_ZN4ncnn3MatD2Ev.exit119, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef nonnull %i.qv) #26
  br label %_ZN4ncnn3MatD2Ev.exit119

bb.ei:                                            ; preds = %bb.ef
  %i.qz = landingpad { ptr, i32 }
          catch ptr null
  %i.ra = extractvalue { ptr, i32 } %i.qz, 0
  call void @__clang_call_terminate(ptr %i.ra) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit119:                         ; preds = %bb.ed, %_ZN4ncnn3MatD2Ev.exit120, %bb.ef, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge114

.critedge114:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit119, %bb.cb
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ay, i64 268
  store i32 2, ptr %i.rb, align 4, !tbaa !152
  %.pre548 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %.pre549 = load ptr, ptr %.pre548, align 8, !tbaa !48
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.critedge:                                        ; preds = %bb.ac, %_ZNK4ncnn3Mat5emptyEv.exit270
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.rc = load ptr, ptr %i.m, align 8, !tbaa !79  ; 2 uses
  %.not.i211 = icmp eq ptr %i.rc, null
  br i1 %.not.i211, label %_ZN4ncnn3MatD2Ev.exit117, label %bb.ej

bb.ej:                                            ; preds = %.critedge
  %i.rd = atomicrmw add ptr %i.rc, i32 -1 acq_rel, align 4
  %i.re = icmp eq i32 %i.rd, 1
  br i1 %i.re, label %bb.ek, label %_ZN4ncnn3MatD2Ev.exit117

bb.ek:                                            ; preds = %bb.ej
  %i.rf = load ptr, ptr %i.n, align 8, !tbaa !80  ; 3 uses
  %.not3.i212 = icmp eq ptr %i.rf, null
  %i.rg = load ptr, ptr %3, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i212, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.rh = load ptr, ptr %i.rf, align 8, !tbaa !30
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8
  invoke void %i.rj(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef %i.rg)
          to label %_ZN4ncnn3MatD2Ev.exit117 unwind label %bb.eo, !inline_history !1

bb.em:                                            ; preds = %bb.ek
  %.not.i232 = icmp eq ptr %i.rg, null
  br i1 %.not.i232, label %_ZN4ncnn3MatD2Ev.exit117, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @free(ptr noundef nonnull %i.rg) #26
  br label %_ZN4ncnn3MatD2Ev.exit117

bb.eo:                                            ; preds = %bb.el
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  %i.rl = extractvalue { ptr, i32 } %i.rk, 0
  call void @__clang_call_terminate(ptr %i.rl) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit117:                         ; preds = %bb.ej, %.critedge, %bb.el, %bb.em, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.rm = load ptr, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %.not.i215 = icmp eq ptr %i.rm, null
  br i1 %.not.i215, label %_ZN4ncnn3MatD2Ev.exit116, label %bb.ep

bb.ep:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit117
  %i.rn = atomicrmw add ptr %i.rm, i32 -1 acq_rel, align 4
  %i.ro = icmp eq i32 %i.rn, 1
  br i1 %i.ro, label %bb.eq, label %_ZN4ncnn3MatD2Ev.exit116

bb.eq:                                            ; preds = %bb.ep
  %i.rp = load ptr, ptr %i.r, align 8, !tbaa !80  ; 3 uses
  %.not3.i216 = icmp eq ptr %i.rp, null
  %i.rq = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i216, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rr = load ptr, ptr %i.rp, align 8, !tbaa !30
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8
  invoke void %i.rt(ptr noundef nonnull align 8 dereferenceable(8) %i.rp, ptr noundef %i.rq)
          to label %_ZN4ncnn3MatD2Ev.exit116 unwind label %bb.eu, !inline_history !1

bb.es:                                            ; preds = %bb.eq
  %.not.i230 = icmp eq ptr %i.rq, null
  br i1 %.not.i230, label %_ZN4ncnn3MatD2Ev.exit116, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @free(ptr noundef nonnull %i.rq) #26
  br label %_ZN4ncnn3MatD2Ev.exit116

bb.eu:                                            ; preds = %bb.er
  %i.ru = landingpad { ptr, i32 }
          catch ptr null
  %i.rv = extractvalue { ptr, i32 } %i.ru, 0
  call void @__clang_call_terminate(ptr %i.rv) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit116:                         ; preds = %bb.ep, %_ZN4ncnn3MatD2Ev.exit117, %bb.er, %bb.es, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.thread

.critedge112:                                     ; preds = %bb.da, %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.rw = load ptr, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %.not.i219 = icmp eq ptr %i.rw, null
  br i1 %.not.i219, label %_ZN4ncnn3MatD2Ev.exit115, label %bb.ev

bb.ev:                                            ; preds = %.critedge112
  %i.rx = atomicrmw add ptr %i.rw, i32 -1 acq_rel, align 4
  %i.ry = icmp eq i32 %i.rx, 1
  br i1 %i.ry, label %bb.ew, label %_ZN4ncnn3MatD2Ev.exit115

bb.ew:                                            ; preds = %bb.ev
  %i.rz = load ptr, ptr %i.ap, align 16, !tbaa !80 ; 3 uses
  %.not3.i220 = icmp eq ptr %i.rz, null
  %i.sa = load ptr, ptr %8, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i220, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.sb = load ptr, ptr %i.rz, align 8, !tbaa !30
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8
  invoke void %i.sd(ptr noundef nonnull align 8 dereferenceable(8) %i.rz, ptr noundef %i.sa)
          to label %_ZN4ncnn3MatD2Ev.exit115 unwind label %bb.fa, !inline_history !1

bb.ey:                                            ; preds = %bb.ew
  %.not.i228 = icmp eq ptr %i.sa, null
  br i1 %.not.i228, label %_ZN4ncnn3MatD2Ev.exit115, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @free(ptr noundef nonnull %i.sa) #26
  br label %_ZN4ncnn3MatD2Ev.exit115

bb.fa:                                            ; preds = %bb.ex
  %i.se = landingpad { ptr, i32 }
          catch ptr null
  %i.sf = extractvalue { ptr, i32 } %i.se, 0
  call void @__clang_call_terminate(ptr %i.sf) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit115:                         ; preds = %bb.ev, %.critedge112, %bb.ex, %bb.ey, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.sg = load ptr, ptr %i.aj, align 8, !tbaa !79 ; 2 uses
  %.not.i223 = icmp eq ptr %i.sg, null
  br i1 %.not.i223, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit115
  %i.sh = atomicrmw add ptr %i.sg, i32 -1 acq_rel, align 4
  %i.si = icmp eq i32 %i.sh, 1
  br i1 %i.si, label %bb.fc, label %_ZN4ncnn3MatD2Ev.exit

bb.fc:                                            ; preds = %bb.fb
  %i.sj = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  %.not3.i224 = icmp eq ptr %i.sj, null
  %i.sk = load ptr, ptr %7, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i224, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.sl = load ptr, ptr %i.sj, align 8, !tbaa !30
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8
  invoke void %i.sn(ptr noundef nonnull align 8 dereferenceable(8) %i.sj, ptr noundef %i.sk)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.fg, !inline_history !1

bb.fe:                                            ; preds = %bb.fc
  %.not.i227 = icmp eq ptr %i.sk, null
  br i1 %.not.i227, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef nonnull %i.sk) #26
  br label %_ZN4ncnn3MatD2Ev.exit

bb.fg:                                            ; preds = %bb.fd
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  call void @__clang_call_terminate(ptr %i.sp) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.fb, %_ZN4ncnn3MatD2Ev.exit115, %bb.fd, %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %.critedge114, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.sq = phi ptr [ %i.av, %bb.b ], [ %.pre549, %.critedge114 ], [ %i.av, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.sr = phi ptr [ %i.aw, %bb.b ], [ %.pre548, %.critedge114 ], [ %i.aw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.ss = add nuw i64 %.0101510, 1                ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !47
  %i.sv = ptrtoint ptr %i.su to i64
  %i.sw = ptrtoint ptr %i.sq to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = ashr exact i64 %i.sx, 3
  %i.sz = icmp ult i64 %i.ss, %i.sy
  br i1 %i.sz, label %bb.b, label %.thread, !llvm.loop !857

bb.fh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit118, %_ZN4ncnn3MatD2Ev.exit122, %_ZN4ncnn3MatD2Ev.exit124, %_ZN4ncnn3MatD2Ev.exit130
  %.pn109 = phi { ptr, i32 } [ %i.oo, %_ZN4ncnn3MatD2Ev.exit118 ], [ %i.ne, %_ZN4ncnn3MatD2Ev.exit122 ], [ %.pn.pn, %_ZN4ncnn3MatD2Ev.exit124 ], [ %i.er, %_ZN4ncnn3MatD2Ev.exit130 ]
  resume { ptr, i32 } %.pn109

.thread:                                          ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a, %_ZN4ncnn3MatD2Ev.exit116, %_ZN4ncnn3MatD2Ev.exit
  %i.ta = phi i32 [ -100, %_ZN4ncnn3MatD2Ev.exit116 ], [ -100, %_ZN4ncnn3MatD2Ev.exit ], [ 0, %bb.a ], [ 0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  ret i32 %i.ta
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -100, 1) i32 @_ZN11NetQuantize27quantize_multiheadattentionEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(216) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [256 x i8], align 16              ; 8 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca [256 x i8], align 16              ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca [256 x i8], align 16              ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca [256 x i8], align 16              ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 9 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 9 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %11 = alloca %"class.ncnn::Option", align 8     ; 7 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 9 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %15 = alloca %"class.ncnn::Option", align 8     ; 7 uses
  %16 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %18 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %19 = alloca %"class.ncnn::Option", align 8     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %.not1052 = icmp eq ptr %i.l, %i.m
  br i1 %.not1052, label %.thread479, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 24 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 39
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 39
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 39
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 39
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ch = phi ptr [ %i.m, %.lr.ph ], [ %i.adb, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.0781051 = phi i64 [ 0, %.lr.ph ], [ %i.acx, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.0781051
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !55 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !60
  %i.cm = icmp eq i64 %i.cl, 18
  br i1 %i.cm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !59 ; 2 uses
  %i.cp = load i128, ptr %i.co, align 1
  %i.cq = xor i128 %i.cp, 140173485096147827624119224115529545037
  %i.cr = getelementptr i8, ptr %i.co, i64 16
  %i.cs = load i16, ptr %i.cr, align 1
  %i.ct = zext i16 %i.cs to i128
  %i.cu = xor i128 %i.ct, 28271
  %i.cv = or i128 %i.cq, %i.cu
  %i.cw = icmp ne i128 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %.not = icmp eq i32 %i.cx, 0
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !59
  %i.da = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.168, ptr noundef %i.cz) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.n, ptr %1, align 8, !tbaa !183
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.db, ptr %i.d, align 8, !tbaa !38
  %i.dc = icmp ugt i64 %i.db, 15
  br i1 %i.dc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.dd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.dd, ptr %1, align 8, !tbaa !59
  %i.de = load i64, ptr %i.d, align 8, !tbaa !38
  store i64 %i.de, ptr %i.n, align 8, !tbaa !130
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.df = phi ptr [ %i.dd, %.noexc.i ], [ %i.n, %bb.c ] ; 2 uses
  switch i64 %i.db, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.dg = load i8, ptr %i.e, align 16, !tbaa !130
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !130
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 16 %i.e, i64 %i.db, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !38  ; 2 uses
  store i64 %i.dh, ptr %i.o, align 8, !tbaa !60
  %i.di = load ptr, ptr %1, align 8, !tbaa !59
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.dk = load ptr, ptr %i.p, align 8, !tbaa !106 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.dk, null
  %.pre = load ptr, ptr %1, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.dl = load i64, ptr %i.o, align 8, !tbaa !60  ; 4 uses
  br label %bb.g

end_hunk_2
begin_hunk_3_@_ZN11NetQuantize27quantize_multiheadattentionEv:bb.a
bb.fl:                                            ; preds = %bb.fk
  call void @free(ptr noundef nonnull %i.wb) #26
  br label %.noexc139

.noexc139:                                        ; preds = %bb.fh, %bb.fg, %bb.fj, %bb.fk, %bb.fl
  %i.wf = getelementptr inbounds nuw i8, ptr %i.it, i64 552
  %i.wg = getelementptr inbounds nuw i8, ptr %i.it, i64 560
  %i.wh = getelementptr inbounds nuw i8, ptr %i.it, i64 576
  %i.wi = getelementptr inbounds nuw i8, ptr %i.it, i64 592
  %i.wj = getelementptr inbounds nuw i8, ptr %i.it, i64 600
  %i.wk = load ptr, ptr %i.bj, align 8, !tbaa !79
  %i.wl = load <2 x ptr>, ptr %16, align 16, !tbaa !94
  store <2 x ptr> %i.wl, ptr %i.tx, align 8, !tbaa !94
  %i.wm = load i64, ptr %i.bk, align 16, !tbaa !95
  store i64 %i.wm, ptr %i.wf, align 8, !tbaa !95
  %i.wn = load i32, ptr %i.bl, align 8, !tbaa !96
  store i32 %i.wn, ptr %i.wg, align 8, !tbaa !96
  %i.wo = load ptr, ptr %i.bm, align 16, !tbaa !80
  %i.wp = getelementptr inbounds nuw i8, ptr %i.it, i64 568
  store ptr %i.wo, ptr %i.wp, align 8, !tbaa !80
  %i.wq = load <4 x i32>, ptr %i.bn, align 8, !tbaa !83
  store <4 x i32> %i.wq, ptr %i.wh, align 8, !tbaa !83
  %i.wr = load i32, ptr %i.bo, align 8, !tbaa !90
  store i32 %i.wr, ptr %i.wi, align 8, !tbaa !90
  %i.ws = load i64, ptr %i.bp, align 16, !tbaa !78
  store i64 %i.ws, ptr %i.wj, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit140

_ZN4ncnn3MataSERKS0_.exit140:                     ; preds = %.noexc139, %bb.fd
  %i.wt = phi ptr [ %i.wk, %.noexc139 ], [ %.pre1058, %bb.fd ] ; 2 uses
  %.not.i224 = icmp eq ptr %i.wt, null
  br i1 %.not.i224, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.fm

bb.fm:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit140
  %i.wu = atomicrmw add ptr %i.wt, i32 -1 acq_rel, align 4
  %i.wv = icmp eq i32 %i.wu, 1
  br i1 %i.wv, label %bb.fn, label %_ZN4ncnn3MatD2Ev.exit125

bb.fn:                                            ; preds = %bb.fm
  %i.ww = load ptr, ptr %i.bm, align 16, !tbaa !80 ; 3 uses
  %.not3.i225 = icmp eq ptr %i.ww, null
  %i.wx = load ptr, ptr %16, align 16, !tbaa !81  ; 3 uses
  br i1 %.not3.i225, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !30
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8
  invoke void %i.xa(ptr noundef nonnull align 8 dereferenceable(8) %i.ww, ptr noundef %i.wx)
          to label %_ZN4ncnn3MatD2Ev.exit125 unwind label %bb.fr, !inline_history !1

bb.fp:                                            ; preds = %bb.fn
  %.not.i281 = icmp eq ptr %i.wx, null
  br i1 %.not.i281, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @free(ptr noundef nonnull %i.wx) #26
  br label %_ZN4ncnn3MatD2Ev.exit125

bb.fr:                                            ; preds = %bb.fo
  %i.xb = landingpad { ptr, i32 }
          catch ptr null
  %i.xc = extractvalue { ptr, i32 } %i.xb, 0
  call void @__clang_call_terminate(ptr %i.xc) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit125:                         ; preds = %bb.fm, %_ZN4ncnn3MataSERKS0_.exit140, %bb.fo, %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZNK4ncnn3Mat5emptyEv.exit322.thread

_ZNK4ncnn3Mat5emptyEv.exit322.thread:             ; preds = %bb.ef, %_ZNK4ncnn3Mat5emptyEv.exit322, %_ZN4ncnn3MatD2Ev.exit125
  %i.xd = phi i1 [ false, %_ZN4ncnn3MatD2Ev.exit125 ], [ true, %_ZNK4ncnn3Mat5emptyEv.exit322 ], [ true, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.xe = load ptr, ptr %i.bc, align 8, !tbaa !79 ; 2 uses
  %.not.i228 = icmp eq ptr %i.xe, null
  br i1 %.not.i228, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.fs

bb.fs:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit322.thread
  %i.xf = atomicrmw add ptr %i.xe, i32 -1 acq_rel, align 4
  %i.xg = icmp eq i32 %i.xf, 1
  br i1 %i.xg, label %bb.ft, label %_ZN4ncnn3MatD2Ev.exit124

bb.ft:                                            ; preds = %bb.fs
  %i.xh = load ptr, ptr %i.bd, align 8, !tbaa !80 ; 3 uses
  %.not3.i229 = icmp eq ptr %i.xh, null
  %i.xi = load ptr, ptr %14, align 8, !tbaa !81   ; 3 uses
  br i1 %.not3.i229, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xj = load ptr, ptr %i.xh, align 8, !tbaa !30
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  %i.xl = load ptr, ptr %i.xk, align 8
  invoke void %i.xl(ptr noundef nonnull align 8 dereferenceable(8) %i.xh, ptr noundef %i.xi)
          to label %_ZN4ncnn3MatD2Ev.exit124 unwind label %bb.fx, !inline_history !1

bb.fv:                                            ; preds = %bb.ft
  %.not.i279 = icmp eq ptr %i.xi, null
  br i1 %.not.i279, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @free(ptr noundef nonnull %i.xi) #26
  br label %_ZN4ncnn3MatD2Ev.exit124

bb.fx:                                            ; preds = %bb.fu
  %i.xm = landingpad { ptr, i32 }
          catch ptr null
  %i.xn = extractvalue { ptr, i32 } %i.xm, 0
  call void @__clang_call_terminate(ptr %i.xn) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit124:                         ; preds = %bb.fs, %_ZNK4ncnn3Mat5emptyEv.exit322.thread, %bb.fu, %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.xo = load ptr, ptr %i.bq, align 8, !tbaa !79 ; 2 uses
  %.not.i232 = icmp eq ptr %i.xo, null
  br i1 %.not.i232, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.fy

bb.fy:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit124
  %i.xp = atomicrmw add ptr %i.xo, i32 -1 acq_rel, align 4
  %i.xq = icmp eq i32 %i.xp, 1
  br i1 %i.xq, label %bb.fz, label %_ZN4ncnn3MatD2Ev.exit123

bb.fz:                                            ; preds = %bb.fy
  %i.xr = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 3 uses
  %.not3.i233 = icmp eq ptr %i.xr, null
  %i.xs = load ptr, ptr %13, align 8, !tbaa !81   ; 3 uses
  br i1 %.not3.i233, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.xt = load ptr, ptr %i.xr, align 8, !tbaa !30
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8
  invoke void %i.xv(ptr noundef nonnull align 8 dereferenceable(8) %i.xr, ptr noundef %i.xs)
          to label %_ZN4ncnn3MatD2Ev.exit123 unwind label %bb.gd, !inline_history !1

bb.gb:                                            ; preds = %bb.fz
  %.not.i277 = icmp eq ptr %i.xs, null
  br i1 %.not.i277, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @free(ptr noundef nonnull %i.xs) #26
  br label %_ZN4ncnn3MatD2Ev.exit123

bb.gd:                                            ; preds = %bb.ga
  %i.xw = landingpad { ptr, i32 }
          catch ptr null
  %i.xx = extractvalue { ptr, i32 } %i.xw, 0
  call void @__clang_call_terminate(ptr %i.xx) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit123:                         ; preds = %bb.fy, %_ZN4ncnn3MatD2Ev.exit124, %bb.ga, %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br i1 %i.xd, label %.thread475, label %bb.ge

bb.ge:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 64
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !81 ; 2 uses
  store ptr %i.xz, ptr %17, align 8, !tbaa !81
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 72
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !79 ; 3 uses
  store ptr %i.yb, ptr %i.br, align 8, !tbaa !79
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 80
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !95
  store i64 %i.yd, ptr %i.bs, align 8, !tbaa !95
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 88
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !96
  store i32 %i.yf, ptr %i.bt, align 8, !tbaa !96
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 96
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !80
  store ptr %i.yh, ptr %i.bu, align 8, !tbaa !80
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 104
  %i.yj = load <4 x i32>, ptr %i.yi, align 8, !tbaa !83
  store <4 x i32> %i.yj, ptr %i.bv, align 8, !tbaa !83
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 120
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !90
  store i32 %i.yl, ptr %i.bw, align 8, !tbaa !90
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i436, i64 128
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !78
  store i64 %i.yn, ptr %i.bx, align 8, !tbaa !78
  %.not.i321 = icmp eq ptr %i.yb, null
  br i1 %.not.i321, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.yo = atomicrmw add ptr %i.yb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre1059 = load ptr, ptr %17, align 8, !tbaa !81
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.ge, %bb.gf
  %i.yp = phi ptr [ %i.xz, %bb.ge ], [ %.pre1059, %bb.gf ]
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !92
  %i.yr = getelementptr inbounds nuw i8, ptr %i.it, i64 1040
  store float %i.yq, ptr %i.yr, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store i64 0, ptr %i.ce, align 16, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %18, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cb, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !tbaa.struct !187
  %i.ys = getelementptr inbounds nuw i8, ptr %i.it, i64 680 ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.it, i64 712 ; 3 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !865
  store ptr %i.yu, ptr %i.cf, align 8, !tbaa !188
  store i8 0, ptr %i.cg, align 1, !tbaa !189
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ys, ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %bb.gg unwind label %bb.hc

bb.gg:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.yv = load ptr, ptr %18, align 16, !tbaa !81
  %i.yw = icmp eq ptr %i.yv, null
  br i1 %i.yw, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.gg
  %i.yx = load i64, ptr %i.ce, align 16, !tbaa !78
  %i.yy = load i32, ptr %i.cd, align 8, !tbaa !90
  %i.yz = sext i32 %i.yy to i64
  %i.za = mul i64 %i.yx, %i.yz
  %i.zb = icmp eq i64 %i.za, 0
  br i1 %i.zb, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.hp

bb.gh:                                            ; preds = %bb.fc
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit122

bb.gi:                                            ; preds = %bb.fj
  %i.zd = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.ze = load ptr, ptr %i.bj, align 8, !tbaa !79 ; 2 uses
  %.not.i236 = icmp eq ptr %i.ze, null
  br i1 %.not.i236, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.zf = atomicrmw add ptr %i.ze, i32 -1 acq_rel, align 4
  %i.zg = icmp eq i32 %i.zf, 1
  br i1 %i.zg, label %bb.gk, label %_ZN4ncnn3MatD2Ev.exit122

bb.gk:                                            ; preds = %bb.gj
  %i.zh = load ptr, ptr %i.bm, align 16, !tbaa !80 ; 3 uses
  %.not3.i237 = icmp eq ptr %i.zh, null
  %i.zi = load ptr, ptr %16, align 16, !tbaa !81  ; 3 uses
  br i1 %.not3.i237, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.zj = load ptr, ptr %i.zh, align 8, !tbaa !30
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 24
  %i.zl = load ptr, ptr %i.zk, align 8
  invoke void %i.zl(ptr noundef nonnull align 8 dereferenceable(8) %i.zh, ptr noundef %i.zi)
          to label %_ZN4ncnn3MatD2Ev.exit122 unwind label %bb.go, !inline_history !1

bb.gm:                                            ; preds = %bb.gk
  %.not.i275 = icmp eq ptr %i.zi, null
  br i1 %.not.i275, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @free(ptr noundef nonnull %i.zi) #26
  br label %_ZN4ncnn3MatD2Ev.exit122

bb.go:                                            ; preds = %bb.gl
  %i.zm = landingpad { ptr, i32 }
          catch ptr null
  %i.zn = extractvalue { ptr, i32 } %i.zm, 0
  call void @__clang_call_terminate(ptr %i.zn) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gi, %bb.gj, %bb.gh
  %.pn105 = phi { ptr, i32 } [ %i.zc, %bb.gh ], [ %i.zd, %bb.gj ], [ %i.zd, %bb.gi ], [ %i.zd, %bb.gl ], [ %i.zd, %bb.gm ], [ %i.zd, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.gp

bb.gp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit122, %bb.fb
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.vp, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.zo = load ptr, ptr %i.bc, align 8, !tbaa !79 ; 2 uses
  %.not.i240 = icmp eq ptr %i.zo, null
  br i1 %.not.i240, label %_ZN4ncnn3MatD2Ev.exit121, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.zp = atomicrmw add ptr %i.zo, i32 -1 acq_rel, align 4
  %i.zq = icmp eq i32 %i.zp, 1
  br i1 %i.zq, label %bb.gr, label %_ZN4ncnn3MatD2Ev.exit121

bb.gr:                                            ; preds = %bb.gq
  %i.zr = load ptr, ptr %i.bd, align 8, !tbaa !80 ; 3 uses
  %.not3.i241 = icmp eq ptr %i.zr, null
  %i.zs = load ptr, ptr %14, align 8, !tbaa !81   ; 3 uses
  br i1 %.not3.i241, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.zt = load ptr, ptr %i.zr, align 8, !tbaa !30
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  %i.zv = load ptr, ptr %i.zu, align 8
  invoke void %i.zv(ptr noundef nonnull align 8 dereferenceable(8) %i.zr, ptr noundef %i.zs)
          to label %_ZN4ncnn3MatD2Ev.exit121 unwind label %bb.gv, !inline_history !1

bb.gt:                                            ; preds = %bb.gr
  %.not.i273 = icmp eq ptr %i.zs, null
  br i1 %.not.i273, label %_ZN4ncnn3MatD2Ev.exit121, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @free(ptr noundef nonnull %i.zs) #26
  br label %_ZN4ncnn3MatD2Ev.exit121

bb.gv:                                            ; preds = %bb.gs
  %i.zw = landingpad { ptr, i32 }
          catch ptr null
  %i.zx = extractvalue { ptr, i32 } %i.zw, 0
  call void @__clang_call_terminate(ptr %i.zx) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %bb.gq, %bb.gp, %bb.gs, %bb.gt, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.zy = load ptr, ptr %i.bq, align 8, !tbaa !79 ; 2 uses
  %.not.i244 = icmp eq ptr %i.zy, null
  br i1 %.not.i244, label %_ZN4ncnn3MatD2Ev.exit120, label %bb.gw

bb.gw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.zz = atomicrmw add ptr %i.zy, i32 -1 acq_rel, align 4
  %i.aaa = icmp eq i32 %i.zz, 1
  br i1 %i.aaa, label %bb.gx, label %_ZN4ncnn3MatD2Ev.exit120

bb.gx:                                            ; preds = %bb.gw
  %i.aab = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 3 uses
  %.not3.i245 = icmp eq ptr %i.aab, null
  %i.aac = load ptr, ptr %13, align 8, !tbaa !81  ; 3 uses
  br i1 %.not3.i245, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aad = load ptr, ptr %i.aab, align 8, !tbaa !30
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24
  %i.aaf = load ptr, ptr %i.aae, align 8
  invoke void %i.aaf(ptr noundef nonnull align 8 dereferenceable(8) %i.aab, ptr noundef %i.aac)
          to label %_ZN4ncnn3MatD2Ev.exit120 unwind label %bb.hb, !inline_history !1

bb.gz:                                            ; preds = %bb.gx
  %.not.i271 = icmp eq ptr %i.aac, null
  br i1 %.not.i271, label %_ZN4ncnn3MatD2Ev.exit120, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @free(ptr noundef nonnull %i.aac) #26
  br label %_ZN4ncnn3MatD2Ev.exit120

bb.hb:                                            ; preds = %bb.gy
  %i.aag = landingpad { ptr, i32 }
          catch ptr null
  %i.aah = extractvalue { ptr, i32 } %i.aag, 0
  call void @__clang_call_terminate(ptr %i.aah) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit120:                         ; preds = %bb.gw, %_ZN4ncnn3MatD2Ev.exit121, %bb.gy, %bb.gz, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.il

bb.hc:                                            ; preds = %bb.hv, %_ZN4ncnn3Mat6addrefEv.exit
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.aaj = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %.not.i248 = icmp eq ptr %i.aaj, null
  br i1 %.not.i248, label %_ZN4ncnn3MatD2Ev.exit119, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aak = atomicrmw add ptr %i.aaj, i32 -1 acq_rel, align 4
  %i.aal = icmp eq i32 %i.aak, 1
  br i1 %i.aal, label %bb.he, label %_ZN4ncnn3MatD2Ev.exit119

bb.he:                                            ; preds = %bb.hd
  %i.aam = load ptr, ptr %i.cb, align 16, !tbaa !80 ; 3 uses
  %.not3.i249 = icmp eq ptr %i.aam, null
  %i.aan = load ptr, ptr %18, align 16, !tbaa !81 ; 3 uses
  br i1 %.not3.i249, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aao = load ptr, ptr %i.aam, align 8, !tbaa !30
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8
  invoke void %i.aaq(ptr noundef nonnull align 8 dereferenceable(8) %i.aam, ptr noundef %i.aan)
          to label %_ZN4ncnn3MatD2Ev.exit119 unwind label %bb.hi, !inline_history !1

bb.hg:                                            ; preds = %bb.he
  %.not.i269 = icmp eq ptr %i.aan, null
  br i1 %.not.i269, label %_ZN4ncnn3MatD2Ev.exit119, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @free(ptr noundef nonnull %i.aan) #26
  br label %_ZN4ncnn3MatD2Ev.exit119

bb.hi:                                            ; preds = %bb.hf
  %i.aar = landingpad { ptr, i32 }
          catch ptr null
  %i.aas = extractvalue { ptr, i32 } %i.aar, 0
  call void @__clang_call_terminate(ptr %i.aas) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit119:                         ; preds = %bb.hd, %bb.hc, %bb.hf, %bb.hg, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.aat = load ptr, ptr %i.br, align 8, !tbaa !79 ; 2 uses
  %.not.i260 = icmp eq ptr %i.aat, null
  br i1 %.not.i260, label %_ZN4ncnn3MatD2Ev.exit, label %bb.hj

bb.hj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit119
  %i.aau = atomicrmw add ptr %i.aat, i32 -1 acq_rel, align 4
end_hunk_3
begin_hunk_4_@_ZN11NetQuantize27quantize_multiheadattentionEv:bb.a
  %i.aba = load ptr, ptr %i.aaz, align 8
  invoke void %i.aba(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, ptr noundef %i.aax)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ho, !inline_history !1

bb.hm:                                            ; preds = %bb.hk
  %.not.i264 = icmp eq ptr %i.aax, null
  br i1 %.not.i264, label %_ZN4ncnn3MatD2Ev.exit, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @free(ptr noundef nonnull %i.aax) #26
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ho:                                            ; preds = %bb.hl
  %i.abb = landingpad { ptr, i32 }
          catch ptr null
  %i.abc = extractvalue { ptr, i32 } %i.abb, 0
  call void @__clang_call_terminate(ptr %i.abc) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.hj, %_ZN4ncnn3MatD2Ev.exit119, %bb.hl, %bb.hm, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.il

bb.hp:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.abd = icmp eq ptr %i.ys, %18
  br i1 %i.abd, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.abe = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp eq ptr %i.abe, null
  br i1 %.not.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.abf = atomicrmw add ptr %i.abe, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.abg = getelementptr inbounds nuw i8, ptr %i.it, i64 688
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !79 ; 2 uses
  %.not.i172 = icmp eq ptr %i.abh, null
  br i1 %.not.i172, label %.noexc, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.abi = atomicrmw add ptr %i.abh, i32 -1 acq_rel, align 4
  %i.abj = icmp eq i32 %i.abi, 1
  br i1 %i.abj, label %bb.hu, label %.noexc

bb.hu:                                            ; preds = %bb.ht
  %i.abk = load ptr, ptr %i.yt, align 8, !tbaa !80 ; 3 uses
  %.not3.i173 = icmp eq ptr %i.abk, null
  %i.abl = load ptr, ptr %i.ys, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i173, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.abm = load ptr, ptr %i.abk, align 8, !tbaa !30
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  %i.abo = load ptr, ptr %i.abn, align 8
  invoke void %i.abo(ptr noundef nonnull align 8 dereferenceable(8) %i.abk, ptr noundef %i.abl)
          to label %.noexc unwind label %bb.hc, !inline_history !1

bb.hw:                                            ; preds = %bb.hu
  %.not.i307 = icmp eq ptr %i.abl, null
  br i1 %.not.i307, label %.noexc, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @free(ptr noundef nonnull %i.abl) #26
  br label %.noexc

.noexc:                                           ; preds = %bb.ht, %bb.hs, %bb.hv, %bb.hw, %bb.hx
  %i.abp = getelementptr inbounds nuw i8, ptr %i.it, i64 696
  %i.abq = getelementptr inbounds nuw i8, ptr %i.it, i64 704
  %i.abr = getelementptr inbounds nuw i8, ptr %i.it, i64 720
  %i.abs = getelementptr inbounds nuw i8, ptr %i.it, i64 736
  %i.abt = getelementptr inbounds nuw i8, ptr %i.it, i64 744
  %i.abu = load <2 x ptr>, ptr %18, align 16, !tbaa !94
  store <2 x ptr> %i.abu, ptr %i.ys, align 8, !tbaa !94
  %i.abv = load i64, ptr %i.bz, align 16, !tbaa !95
  store i64 %i.abv, ptr %i.abp, align 8, !tbaa !95
  %i.abw = load i32, ptr %i.ca, align 8, !tbaa !96
  store i32 %i.abw, ptr %i.abq, align 8, !tbaa !96
  %i.abx = load ptr, ptr %i.cb, align 16, !tbaa !80
  store ptr %i.abx, ptr %i.yt, align 8, !tbaa !80
  %i.aby = load <4 x i32>, ptr %i.cc, align 8, !tbaa !83
  store <4 x i32> %i.aby, ptr %i.abr, align 8, !tbaa !83
  %i.abz = load i32, ptr %i.cd, align 8, !tbaa !90
  store i32 %i.abz, ptr %i.abs, align 8, !tbaa !90
  %i.aca = load i64, ptr %i.ce, align 16, !tbaa !78
  store i64 %i.aca, ptr %i.abt, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.gg, %.noexc, %bb.hp, %_ZNK4ncnn3Mat5emptyEv.exit
  %i.acb = phi i1 [ true, %_ZNK4ncnn3Mat5emptyEv.exit ], [ false, %.noexc ], [ false, %bb.hp ], [ true, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.acc = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %.not.i252 = icmp eq ptr %i.acc, null
  br i1 %.not.i252, label %_ZN4ncnn3MatD2Ev.exit118, label %bb.hy

bb.hy:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.acd = atomicrmw add ptr %i.acc, i32 -1 acq_rel, align 4
  %i.ace = icmp eq i32 %i.acd, 1
  br i1 %i.ace, label %bb.hz, label %_ZN4ncnn3MatD2Ev.exit118

bb.hz:                                            ; preds = %bb.hy
  %i.acf = load ptr, ptr %i.cb, align 16, !tbaa !80 ; 3 uses
  %.not3.i253 = icmp eq ptr %i.acf, null
  %i.acg = load ptr, ptr %18, align 16, !tbaa !81 ; 3 uses
  br i1 %.not3.i253, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ach = load ptr, ptr %i.acf, align 8, !tbaa !30
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  %i.acj = load ptr, ptr %i.aci, align 8
  invoke void %i.acj(ptr noundef nonnull align 8 dereferenceable(8) %i.acf, ptr noundef %i.acg)
          to label %_ZN4ncnn3MatD2Ev.exit118 unwind label %bb.id, !inline_history !1

bb.ib:                                            ; preds = %bb.hz
  %.not.i267 = icmp eq ptr %i.acg, null
  br i1 %.not.i267, label %_ZN4ncnn3MatD2Ev.exit118, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @free(ptr noundef nonnull %i.acg) #26
  br label %_ZN4ncnn3MatD2Ev.exit118

bb.id:                                            ; preds = %bb.ia
  %i.ack = landingpad { ptr, i32 }
          catch ptr null
  %i.acl = extractvalue { ptr, i32 } %i.ack, 0
  call void @__clang_call_terminate(ptr %i.acl) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit118:                         ; preds = %bb.hy, %_ZN4ncnn3MataSERKS0_.exit, %bb.ia, %bb.ib, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.acm = load ptr, ptr %i.br, align 8, !tbaa !79 ; 2 uses
  %.not.i256 = icmp eq ptr %i.acm, null
  br i1 %.not.i256, label %_ZN4ncnn3MatD2Ev.exit117, label %bb.ie

bb.ie:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit118
  %i.acn = atomicrmw add ptr %i.acm, i32 -1 acq_rel, align 4
  %i.aco = icmp eq i32 %i.acn, 1
  br i1 %i.aco, label %bb.if, label %_ZN4ncnn3MatD2Ev.exit117

bb.if:                                            ; preds = %bb.ie
  %i.acp = load ptr, ptr %i.bu, align 8, !tbaa !80 ; 3 uses
  %.not3.i257 = icmp eq ptr %i.acp, null
  %i.acq = load ptr, ptr %17, align 8, !tbaa !81  ; 3 uses
  br i1 %.not3.i257, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.acr = load ptr, ptr %i.acp, align 8, !tbaa !30
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 24
  %i.act = load ptr, ptr %i.acs, align 8
  invoke void %i.act(ptr noundef nonnull align 8 dereferenceable(8) %i.acp, ptr noundef %i.acq)
          to label %_ZN4ncnn3MatD2Ev.exit117 unwind label %bb.ij, !inline_history !1

bb.ih:                                            ; preds = %bb.if
  %.not.i265 = icmp eq ptr %i.acq, null
  br i1 %.not.i265, label %_ZN4ncnn3MatD2Ev.exit117, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @free(ptr noundef nonnull %i.acq) #26
  br label %_ZN4ncnn3MatD2Ev.exit117

bb.ij:                                            ; preds = %bb.ig
  %i.acu = landingpad { ptr, i32 }
          catch ptr null
  %i.acv = extractvalue { ptr, i32 } %i.acu, 0
  call void @__clang_call_terminate(ptr %i.acv) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit117:                         ; preds = %bb.ie, %_ZN4ncnn3MatD2Ev.exit118, %bb.ig, %bb.ih, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br i1 %i.acb, label %.thread475, label %bb.ik

.thread475:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit117, %_ZN4ncnn3MatD2Ev.exit123, %_ZN4ncnn3MatD2Ev.exit129, %_ZN4ncnn3MatD2Ev.exit135, %bb.aa
  %.685.ph = phi i32 [ -1, %bb.aa ], [ -100, %_ZN4ncnn3MatD2Ev.exit135 ], [ -100, %_ZN4ncnn3MatD2Ev.exit129 ], [ -100, %_ZN4ncnn3MatD2Ev.exit123 ], [ -100, %_ZN4ncnn3MatD2Ev.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %.thread479.sink.split

bb.ik:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit117
  %i.acw = getelementptr inbounds nuw i8, ptr %i.it, i64 240
  store i32 2, ptr %i.acw, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %bb.ik, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.acx = add nuw i64 %.0781051, 1               ; 2 uses
  %i.acy = load ptr, ptr %i.i, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !47
  %i.adb = load ptr, ptr %i.acy, align 8, !tbaa !48 ; 2 uses
  %i.adc = ptrtoint ptr %i.ada to i64
  %i.add = ptrtoint ptr %i.adb to i64
  %i.ade = sub i64 %i.adc, %i.add
  %i.adf = ashr exact i64 %i.ade, 3
  %i.adg = icmp ult i64 %i.acx, %i.adf
  br i1 %i.adg, label %bb.b, label %.thread479, !llvm.loop !864

bb.il:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit132, %_ZN4ncnn3MatD2Ev.exit126, %_ZN4ncnn3MatD2Ev.exit120, %_ZN4ncnn3MatD2Ev.exit
  %.pn108.pn = phi { ptr, i32 } [ %.pn99.pn, %_ZN4ncnn3MatD2Ev.exit132 ], [ %i.aai, %_ZN4ncnn3MatD2Ev.exit ], [ %.pn105.pn, %_ZN4ncnn3MatD2Ev.exit120 ], [ %.pn102.pn, %_ZN4ncnn3MatD2Ev.exit126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  resume { ptr, i32 } %.pn108.pn

.thread479.sink.split:                            ; preds = %.thread475, %.thread, %.thread469, %.thread472
  %.ph = phi i32 [ -1, %.thread ], [ -1, %.thread469 ], [ -1, %.thread472 ], [ %.685.ph, %.thread475 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.thread479

.thread479:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %.thread479.sink.split, %bb.a
  %i.adh = phi i32 [ 0, %bb.a ], [ %.ph, %.thread479.sink.split ], [ 0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  ret i32 %i.adh
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_ZN11NetQuantize13quantize_sdpaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not7 = icmp eq ptr %i.d, %i.e
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.f = phi ptr [ %i.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.e, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.x, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %.06 = phi i64 [ %i.y, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.06
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = load i32, ptr %i.n, align 1
  %i.p = icmp ne i32 %i.o, 1095779411
  %i.q = zext i1 %i.p to i32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.183, ptr noundef %i.t) #28 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  store i32 2, ptr %i.v, align 4, !tbaa !182
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %.pre8 = load ptr, ptr %.pre, align 8, !tbaa !48
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.b
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre8, %bb.b ] ; 2 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre, %bb.b ] ; 2 uses
  %i.y = add nuw i64 %.06, 1                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetQuantize15fuse_requantizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 11 uses
  %.not373 = icmp eq ptr %i.d, %i.e
  br i1 %.not373, label %._crit_edge372, label %.lr.ph345

.lr.ph371:                                        ; preds = %_ZN4ncnn3MataSERKS0_.exit212
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.ax

.lr.ph345:                                        ; preds = %bb.a, %_ZN4ncnn3MataSERKS0_.exit212
  %.0167343 = phi i64 [ %i.np, %_ZN4ncnn3MataSERKS0_.exit212 ], [ 0, %bb.a ] ; 7 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0167343
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  switch i64 %i.q, label %_ZN4ncnn3MataSERKS0_.exit212 [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph345
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !59   ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 8391732706658905923
  %i.u = getelementptr i8, ptr %i.r, i64 3
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 7957695015494119286
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not333 = icmp eq i32 %i.z, 0
  br i1 %.not333, label %bb.b, label %_ZN4ncnn3MataSERKS0_.exit212

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257: ; preds = %.lr.ph345
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 138844297650319802350679583742711721795
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = zext i32 %i.ae to i128
  %i.ag = xor i128 %i.af, 1702062423
  %i.ah = or i128 %i.ac, %i.ag
  %i.ai = icmp ne i128 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not332 = icmp eq i32 %i.aj, 0
  br i1 %.not332, label %bb.b, label %_ZN4ncnn3MataSERKS0_.exit212

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82
  %i.am = load i32, ptr %i.al, align 4, !tbaa !83
  %.0159339 = add nuw i64 %.0167343, 1            ; 3 uses
  %i.an = icmp ult i64 %.0159339, %i.i
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread
  %.0159340 = phi i64 [ %.0159, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread ], [ %.0159339, %bb.b ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0159340
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60
  switch i64 %i.as, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259: ; preds = %.lr.ph
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 2 uses
  %i.au = load i64, ptr %i.at, align 1
  %i.av = xor i64 %i.au, 8391732706658905923
  %i.aw = getelementptr i8, ptr %i.at, i64 3
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = xor i64 %i.ax, 7957695015494119286
  %i.az = or i64 %i.av, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not335 = icmp eq i32 %i.bb, 0
  br i1 %.not335, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261: ; preds = %.lr.ph
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 2 uses
  %i.bd = load i128, ptr %i.bc, align 1
  %i.be = xor i128 %i.bd, 138844297650319802350679583742711721795
  %i.bf = getelementptr i8, ptr %i.bc, i64 16
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = zext i32 %i.bg to i128
  %i.bi = xor i128 %i.bh, 1702062423
  %i.bj = or i128 %i.be, %i.bi
  %i.bk = icmp ne i128 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not334 = icmp eq i32 %i.bl, 0
  br i1 %.not334, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !93
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !82 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.not181 = icmp eq i64 %i.bs, 4
  br i1 %.not181, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

bb.d:                                             ; preds = %bb.c
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !83
  %i.bu = icmp eq i32 %i.bt, %i.am
  br i1 %i.bu, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread: ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259, %bb.d, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261
  %.0159 = add i64 %.0159340, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %.0159, %i.i
  br i1 %exitcond.not, label %_ZN4ncnn3MataSERKS0_.exit212, label %.lr.ph, !llvm.loop !866

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.0159.lcssa = phi i64 [ %.0159339, %bb.b ], [ %.0159340, %bb.d ] ; 6 uses
  %i.bv = icmp eq i64 %.0159.lcssa, %i.i
  br i1 %i.bv, label %_ZN4ncnn3MataSERKS0_.exit212, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0159.lcssa
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.184, ptr noundef %i.by, ptr noundef %i.cc) #28 ; 0 uses
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48 ; 7 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0167343
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !55 ; 18 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !60 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 11
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZN4ncnn3MataSERKS0_.exit216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !59 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 1
  %i.co = xor i64 %i.cn, 8391732706658905923
  %i.cp = getelementptr i8, ptr %i.cm, i64 3
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = xor i64 %i.cq, 7957695015494119286
  %i.cs = or i64 %i.co, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0159.lcssa
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !55 ; 11 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !60
  %i.da = icmp eq i64 %i.cz, 11
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263: ; preds = %bb.f
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !59 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = xor i64 %i.dd, 8391732706658905923
  %i.df = getelementptr i8, ptr %i.dc, i64 3
  %i.dg = load i64, ptr %i.df, align 1
  %i.dh = xor i64 %i.dg, 7957695015494119286
  %i.di = or i64 %i.de, %i.dh
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 368
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !872
  %.not182 = icmp eq i64 %i.dn, 1
  br i1 %.not182, label %bb.h, label %_ZN4ncnn3MataSERKS0_.exit212

bb.h:                                             ; preds = %bb.g
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !872
  %.not183 = icmp eq i64 %i.dp, 1
  br i1 %.not183, label %.critedge, label %_ZN4ncnn3MataSERKS0_.exit212

.critedge:                                        ; preds = %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 264 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !136
  %i.ds = add nsw i32 %i.dr, 100
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !136
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 568 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ch, i64 640 ; 4 uses
  %i.dv = icmp eq ptr %i.du, %i.dt
  br i1 %i.dv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 576
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !79 ; 2 uses
  %.not.i217 = icmp eq ptr %i.dx, null
  br i1 %.not.i217, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dy = atomicrmw add ptr %i.dx, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ch, i64 648
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !79 ; 2 uses
  %.not.i219 = icmp eq ptr %i.ea, null
  br i1 %.not.i219, label %_ZN4ncnn3MataSERKS0_.exit218, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.m, label %_ZN4ncnn3MataSERKS0_.exit218

bb.m:                                             ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ch, i64 672
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !80 ; 3 uses
  %.not3.i = icmp eq ptr %i.ee, null
  %i.ef = load ptr, ptr %i.du, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !30
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ef), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit218

bb.o:                                             ; preds = %bb.m
  %.not.i254 = icmp eq ptr %i.ef, null
  br i1 %.not.i254, label %_ZN4ncnn3MataSERKS0_.exit218, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ef) #26
  br label %_ZN4ncnn3MataSERKS0_.exit218

_ZN4ncnn3MataSERKS0_.exit218:                     ; preds = %bb.n, %bb.l, %bb.k, %bb.o, %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ch, i64 656
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ch, i64 664
  %i.el = getelementptr inbounds nuw i8, ptr %i.ch, i64 680 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ch, i64 696
  %i.en = getelementptr inbounds nuw i8, ptr %i.ch, i64 704 ; 2 uses
  store i64 0, ptr %i.en, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.du, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.el, i8 0, i64 20, i1 false)
  %i.eo = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !94
  store <2 x ptr> %i.eo, ptr %i.du, align 8, !tbaa !94
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cx, i64 584
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !95
  store i64 %i.eq, ptr %i.ej, align 8, !tbaa !95
  %i.er = getelementptr inbounds nuw i8, ptr %i.cx, i64 592
  %i.es = load i32, ptr %i.er, align 8, !tbaa !96
  store i32 %i.es, ptr %i.ek, align 8, !tbaa !96
  %i.et = getelementptr inbounds nuw i8, ptr %i.cx, i64 600
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !80
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ch, i64 672
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !80
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cx, i64 608
  %i.ex = load <4 x i32>, ptr %i.ew, align 8, !tbaa !83
  store <4 x i32> %i.ex, ptr %i.el, align 8, !tbaa !83
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cx, i64 624
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !90
  store i32 %i.ez, ptr %i.em, align 8, !tbaa !90
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cx, i64 632
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !78
  store i64 %i.fb, ptr %i.en, align 8, !tbaa !78
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre382 = load ptr, ptr %.pre, align 8, !tbaa !48 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre382, i64 %.0167343
  %.pre383 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55 ; 3 uses
  %.phi.trans.insert384 = getelementptr inbounds nuw i8, ptr %.pre383, i64 56
  %.pre385 = load i64, ptr %.phi.trans.insert384, align 8, !tbaa !60 ; 2 uses
  %i.fc = icmp eq i64 %.pre385, 11
  br i1 %i.fc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265, label %_ZN4ncnn3MataSERKS0_.exit216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263, %.critedge, %bb.f, %_ZN4ncnn3MataSERKS0_.exit218
  %i.fd = phi ptr [ %.pre382, %_ZN4ncnn3MataSERKS0_.exit218 ], [ %i.cf, %bb.f ], [ %i.cf, %.critedge ], [ %i.cf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263 ], [ %i.cf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.fe = phi ptr [ %.pre383, %_ZN4ncnn3MataSERKS0_.exit218 ], [ %i.ch, %bb.f ], [ %i.ch, %.critedge ], [ %i.ch, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263 ], [ %i.ch, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 12 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !59 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 1
  %i.fi = xor i64 %i.fh, 8391732706658905923
  %i.fj = getelementptr i8, ptr %i.fg, i64 3
  %i.fk = load i64, ptr %i.fj, align 1
  %i.fl = xor i64 %i.fk, 7957695015494119286
  %i.fm = or i64 %i.fi, %i.fl
  %i.fn = icmp ne i64 %i.fm, 0
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.q, label %_ZN4ncnn3MataSERKS0_.exit212

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.0159.lcssa
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !55 ; 11 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !60
  %i.fu = icmp eq i64 %i.ft, 20
  br i1 %i.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267: ; preds = %bb.q
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !59 ; 2 uses
  %i.fx = load i128, ptr %i.fw, align 1
  %i.fy = xor i128 %i.fx, 138844297650319802350679583742711721795
  %i.fz = getelementptr i8, ptr %i.fw, i64 16
  %i.ga = load i32, ptr %i.fz, align 1
  %i.gb = zext i32 %i.ga to i128
  %i.gc = xor i128 %i.gb, 1702062423
  %i.gd = or i128 %i.fy, %i.gc
  %i.ge = icmp ne i128 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.r, label %_ZN4ncnn3MataSERKS0_.exit212

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 368
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !872
  %.not184 = icmp eq i64 %i.gi, 1
  br i1 %.not184, label %bb.s, label %_ZN4ncnn3MataSERKS0_.exit212

bb.s:                                             ; preds = %bb.r
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 376
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !873
  %.not185 = icmp eq i64 %i.gk, 1
  br i1 %.not185, label %.critedge191, label %_ZN4ncnn3MataSERKS0_.exit212

.critedge191:                                     ; preds = %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fe, i64 264 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !136
  %i.gn = add nsw i32 %i.gm, 100
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !136
  %i.go = getelementptr inbounds nuw i8, ptr %i.fr, i64 576 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fe, i64 640 ; 4 uses
  %i.gq = icmp eq ptr %i.gp, %i.go
  br i1 %i.gq, label %_ZN4ncnn3MataSERKS0_.exit212, label %bb.t

bb.t:                                             ; preds = %.critedge191
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fr, i64 584
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !79 ; 2 uses
  %.not.i215 = icmp eq ptr %i.gs, null
  br i1 %.not.i215, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gt = atomicrmw add ptr %i.gs, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fe, i64 648
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !79 ; 2 uses
  %.not.i220 = icmp eq ptr %i.gv, null
  br i1 %.not.i220, label %_ZN4ncnn3Mat7releaseEv.exit222, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gw = atomicrmw add ptr %i.gv, i32 -1 acq_rel, align 4
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %bb.x, label %_ZN4ncnn3Mat7releaseEv.exit222

bb.x:                                             ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fe, i64 672
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !80 ; 3 uses
  %.not3.i221 = icmp eq ptr %i.gz, null
  %i.ha = load ptr, ptr %i.gp, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i221, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !30
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8
  tail call void %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef %i.ha), !inline_history !1
  br label %_ZN4ncnn3Mat7releaseEv.exit222

bb.z:                                             ; preds = %bb.x
  %.not.i252 = icmp eq ptr %i.ha, null
  br i1 %.not.i252, label %_ZN4ncnn3Mat7releaseEv.exit222, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.ha) #26
  br label %_ZN4ncnn3Mat7releaseEv.exit222

_ZN4ncnn3Mat7releaseEv.exit222:                   ; preds = %bb.aa, %bb.z, %bb.v, %bb.w, %bb.y
  %i.he = getelementptr inbounds nuw i8, ptr %i.fe, i64 656
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fe, i64 664
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fe, i64 680 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fe, i64 696
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fe, i64 704 ; 2 uses
  store i64 0, ptr %i.hi, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gp, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hg, i8 0, i64 20, i1 false)
  %i.hj = load <2 x ptr>, ptr %i.go, align 8, !tbaa !94
  store <2 x ptr> %i.hj, ptr %i.gp, align 8, !tbaa !94
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fr, i64 592
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !95
  store i64 %i.hl, ptr %i.he, align 8, !tbaa !95
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fr, i64 600
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !96
  store i32 %i.hn, ptr %i.hf, align 8, !tbaa !96
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fr, i64 608
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !80
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fe, i64 672
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !80
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fr, i64 616
  %i.hs = load <4 x i32>, ptr %i.hr, align 8, !tbaa !83
  store <4 x i32> %i.hs, ptr %i.hg, align 8, !tbaa !83
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fr, i64 632
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !90
  store i32 %i.hu, ptr %i.hh, align 8, !tbaa !90
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fr, i64 640
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !78
  store i64 %i.hw, ptr %i.hi, align 8, !tbaa !78
  %.pre386 = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre387 = load ptr, ptr %.pre386, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert388 = getelementptr inbounds nuw [8 x i8], ptr %.pre387, i64 %.0167343
  %.pre389 = load ptr, ptr %.phi.trans.insert388, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert390 = getelementptr inbounds nuw i8, ptr %.pre389, i64 56
  %.pre391 = load i64, ptr %.phi.trans.insert390, align 8, !tbaa !60
  br label %_ZN4ncnn3MataSERKS0_.exit216

_ZN4ncnn3MataSERKS0_.exit216:                     ; preds = %bb.e, %_ZN4ncnn3MataSERKS0_.exit218, %_ZN4ncnn3Mat7releaseEv.exit222
  %i.hx = phi i64 [ %.pre391, %_ZN4ncnn3Mat7releaseEv.exit222 ], [ %.pre385, %_ZN4ncnn3MataSERKS0_.exit218 ], [ %i.cj, %bb.e ]
  %i.hy = phi ptr [ %.pre389, %_ZN4ncnn3Mat7releaseEv.exit222 ], [ %.pre383, %_ZN4ncnn3MataSERKS0_.exit218 ], [ %i.ch, %bb.e ] ; 16 uses
  %i.hz = phi ptr [ %.pre387, %_ZN4ncnn3Mat7releaseEv.exit222 ], [ %.pre382, %_ZN4ncnn3MataSERKS0_.exit218 ], [ %i.cf, %bb.e ] ; 5 uses
  %i.ia = icmp eq i64 %i.hx, 20
  br i1 %i.ia, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269: ; preds = %_ZN4ncnn3MataSERKS0_.exit216
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !59 ; 2 uses
  %i.id = load i128, ptr %i.ic, align 1
  %i.ie = xor i128 %i.id, 138844297650319802350679583742711721795
  %i.if = getelementptr i8, ptr %i.ic, i64 16
  %i.ig = load i32, ptr %i.if, align 1
  %i.ih = zext i32 %i.ig to i128
  %i.ii = xor i128 %i.ih, 1702062423
  %i.ij = or i128 %i.ie, %i.ii
  %i.ik = icmp ne i128 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273

bb.ab:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.0159.lcssa
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !55 ; 11 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !60
  %i.ir = icmp eq i64 %i.iq, 11
  br i1 %i.ir, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271: ; preds = %bb.ab
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !59 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 1
  %i.iv = xor i64 %i.iu, 8391732706658905923
  %i.iw = getelementptr i8, ptr %i.it, i64 3
  %i.ix = load i64, ptr %i.iw, align 1
  %i.iy = xor i64 %i.ix, 7957695015494119286
  %i.iz = or i64 %i.iv, %i.iy
  %i.ja = icmp ne i64 %i.iz, 0
  %i.jb = zext i1 %i.ja to i32
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hy, i64 376
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !873
  %.not186 = icmp eq i64 %i.je, 1
  br i1 %.not186, label %bb.ad, label %_ZN4ncnn3MataSERKS0_.exit212

bb.ad:                                            ; preds = %bb.ac
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 368
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !872
  %.not187 = icmp eq i64 %i.jg, 1
  br i1 %.not187, label %.critedge193, label %_ZN4ncnn3MataSERKS0_.exit212

.critedge193:                                     ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hy, i64 268 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !140
  %i.jj = add nsw i32 %i.ji, 100
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !140
  %i.jk = getelementptr inbounds nuw i8, ptr %i.io, i64 568 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hy, i64 648 ; 4 uses
  %i.jm = icmp eq ptr %i.jl, %i.jk
  br i1 %i.jm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273, label %bb.ae

bb.ae:                                            ; preds = %.critedge193
  %i.jn = getelementptr inbounds nuw i8, ptr %i.io, i64 576
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !79 ; 2 uses
  %.not.i213 = icmp eq ptr %i.jo, null
  br i1 %.not.i213, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jp = atomicrmw add ptr %i.jo, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hy, i64 656
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !79 ; 2 uses
  %.not.i223 = icmp eq ptr %i.jr, null
  br i1 %.not.i223, label %_ZN4ncnn3MataSERKS0_.exit214, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.js = atomicrmw add ptr %i.jr, i32 -1 acq_rel, align 4
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %bb.ai, label %_ZN4ncnn3MataSERKS0_.exit214

bb.ai:                                            ; preds = %bb.ah
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hy, i64 680
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !80 ; 3 uses
  %.not3.i224 = icmp eq ptr %i.jv, null
  %i.jw = load ptr, ptr %i.jl, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i224, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !30
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  tail call void %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef %i.jw), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit214

bb.ak:                                            ; preds = %bb.ai
  %.not.i250 = icmp eq ptr %i.jw, null
  br i1 %.not.i250, label %_ZN4ncnn3MataSERKS0_.exit214, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @free(ptr noundef nonnull %i.jw) #26
  br label %_ZN4ncnn3MataSERKS0_.exit214

_ZN4ncnn3MataSERKS0_.exit214:                     ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.ak, %bb.al
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hy, i64 664
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hy, i64 672
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hy, i64 688 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hy, i64 704
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hy, i64 712 ; 2 uses
  store i64 0, ptr %i.ke, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.jl, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.kc, i8 0, i64 20, i1 false)
  %i.kf = load <2 x ptr>, ptr %i.jk, align 8, !tbaa !94
  store <2 x ptr> %i.kf, ptr %i.jl, align 8, !tbaa !94
  %i.kg = getelementptr inbounds nuw i8, ptr %i.io, i64 584
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !95
  store i64 %i.kh, ptr %i.ka, align 8, !tbaa !95
  %i.ki = getelementptr inbounds nuw i8, ptr %i.io, i64 592
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !96
  store i32 %i.kj, ptr %i.kb, align 8, !tbaa !96
  %i.kk = getelementptr inbounds nuw i8, ptr %i.io, i64 600
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !80
  %i.km = getelementptr inbounds nuw i8, ptr %i.hy, i64 680
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !80
  %i.kn = getelementptr inbounds nuw i8, ptr %i.io, i64 608
  %i.ko = load <4 x i32>, ptr %i.kn, align 8, !tbaa !83
  store <4 x i32> %i.ko, ptr %i.kc, align 8, !tbaa !83
  %i.kp = getelementptr inbounds nuw i8, ptr %i.io, i64 624
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !90
  store i32 %i.kq, ptr %i.kd, align 8, !tbaa !90
  %i.kr = getelementptr inbounds nuw i8, ptr %i.io, i64 632
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !78
  store i64 %i.ks, ptr %i.ke, align 8, !tbaa !78
  %.pre392 = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre393 = load ptr, ptr %.pre392, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert394 = getelementptr inbounds nuw [8 x i8], ptr %.pre393, i64 %.0167343
  %.pre395 = load ptr, ptr %.phi.trans.insert394, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert396 = getelementptr inbounds nuw i8, ptr %.pre395, i64 56
  %.pre397 = load i64, ptr %.phi.trans.insert396, align 8, !tbaa !60
  %i.kt = icmp eq i64 %.pre397, 20
  br i1 %i.kt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271, %.critedge193, %bb.ab, %_ZN4ncnn3MataSERKS0_.exit214
  %i.ku = phi ptr [ %.pre393, %_ZN4ncnn3MataSERKS0_.exit214 ], [ %i.hz, %bb.ab ], [ %i.hz, %.critedge193 ], [ %i.hz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271 ], [ %i.hz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269 ]
  %i.kv = phi ptr [ %.pre395, %_ZN4ncnn3MataSERKS0_.exit214 ], [ %i.hy, %bb.ab ], [ %i.hy, %.critedge193 ], [ %i.hy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271 ], [ %i.hy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269 ] ; 12 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !59 ; 2 uses
  %i.ky = load i128, ptr %i.kx, align 1
  %i.kz = xor i128 %i.ky, 138844297650319802350679583742711721795
  %i.la = getelementptr i8, ptr %i.kx, i64 16
  %i.lb = load i32, ptr %i.la, align 1
  %i.lc = zext i32 %i.lb to i128
  %i.ld = xor i128 %i.lc, 1702062423
  %i.le = or i128 %i.kz, %i.ld
  %i.lf = icmp ne i128 %i.le, 0
  %i.lg = zext i1 %i.lf to i32
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.am, label %_ZN4ncnn3MataSERKS0_.exit212

bb.am:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.0159.lcssa
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !55 ; 11 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 56
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !60
  %i.lm = icmp eq i64 %i.ll, 20
  br i1 %i.lm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275: ; preds = %bb.am
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !59 ; 2 uses
  %i.lp = load i128, ptr %i.lo, align 1
  %i.lq = xor i128 %i.lp, 138844297650319802350679583742711721795
  %i.lr = getelementptr i8, ptr %i.lo, i64 16
  %i.ls = load i32, ptr %i.lr, align 1
  %i.lt = zext i32 %i.ls to i128
  %i.lu = xor i128 %i.lt, 1702062423
  %i.lv = or i128 %i.lq, %i.lu
  %i.lw = icmp ne i128 %i.lv, 0
  %i.lx = zext i1 %i.lw to i32
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.an, label %_ZN4ncnn3MataSERKS0_.exit212

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kv, i64 376
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !873
  %.not188 = icmp eq i64 %i.ma, 1
  br i1 %.not188, label %bb.ao, label %_ZN4ncnn3MataSERKS0_.exit212

bb.ao:                                            ; preds = %bb.an
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 376
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !873
  %.not189 = icmp eq i64 %i.mc, 1
  br i1 %.not189, label %.critedge195, label %_ZN4ncnn3MataSERKS0_.exit212

.critedge195:                                     ; preds = %bb.ao
  %i.md = getelementptr inbounds nuw i8, ptr %i.kv, i64 268 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !140
  %i.mf = add nsw i32 %i.me, 100
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !140
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lj, i64 576 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kv, i64 648 ; 4 uses
  %i.mi = icmp eq ptr %i.mh, %i.mg
  br i1 %i.mi, label %_ZN4ncnn3MataSERKS0_.exit212, label %bb.ap

bb.ap:                                            ; preds = %.critedge195
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lj, i64 584
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !79 ; 2 uses
  %.not.i211 = icmp eq ptr %i.mk, null
  br i1 %.not.i211, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ml = atomicrmw add ptr %i.mk, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kv, i64 656
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !79 ; 2 uses
  %.not.i226 = icmp eq ptr %i.mn, null
  br i1 %.not.i226, label %_ZN4ncnn3Mat7releaseEv.exit228, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mo = atomicrmw add ptr %i.mn, i32 -1 acq_rel, align 4
  %i.mp = icmp eq i32 %i.mo, 1
  br i1 %i.mp, label %bb.at, label %_ZN4ncnn3Mat7releaseEv.exit228

bb.at:                                            ; preds = %bb.as
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kv, i64 680
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !80 ; 3 uses
  %.not3.i227 = icmp eq ptr %i.mr, null
  %i.ms = load ptr, ptr %i.mh, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i227, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !30
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  tail call void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef %i.ms), !inline_history !1
  br label %_ZN4ncnn3Mat7releaseEv.exit228

bb.av:                                            ; preds = %bb.at
  %.not.i248 = icmp eq ptr %i.ms, null
  br i1 %.not.i248, label %_ZN4ncnn3Mat7releaseEv.exit228, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @free(ptr noundef nonnull %i.ms) #26
  br label %_ZN4ncnn3Mat7releaseEv.exit228

_ZN4ncnn3Mat7releaseEv.exit228:                   ; preds = %bb.aw, %bb.av, %bb.ar, %bb.as, %bb.au
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 664
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kv, i64 672
  %i.my = getelementptr inbounds nuw i8, ptr %i.kv, i64 688 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kv, i64 704
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 712 ; 2 uses
  store i64 0, ptr %i.na, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.mh, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.my, i8 0, i64 20, i1 false)
  %i.nb = load <2 x ptr>, ptr %i.mg, align 8, !tbaa !94
  store <2 x ptr> %i.nb, ptr %i.mh, align 8, !tbaa !94
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lj, i64 592
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !95
  store i64 %i.nd, ptr %i.mw, align 8, !tbaa !95
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lj, i64 600
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !96
  store i32 %i.nf, ptr %i.mx, align 8, !tbaa !96
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lj, i64 608
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !80
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 680
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !80
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lj, i64 616
  %i.nk = load <4 x i32>, ptr %i.nj, align 8, !tbaa !83
  store <4 x i32> %i.nk, ptr %i.my, align 8, !tbaa !83
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lj, i64 632
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !90
  store i32 %i.nm, ptr %i.mz, align 8, !tbaa !90
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lj, i64 640
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !78
  store i64 %i.no, ptr %i.na, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit212

_ZN4ncnn3MataSERKS0_.exit212:                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267, %.critedge191, %bb.q, %_ZN4ncnn3MataSERKS0_.exit216, %.lr.ph345, %bb.am, %_ZN4ncnn3MataSERKS0_.exit214, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN4ncnn3Mat7releaseEv.exit228, %.critedge195, %._crit_edge, %bb.g, %bb.h, %bb.r, %bb.s, %bb.ac, %bb.ad, %bb.an, %bb.ao, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
  %i.np = add nuw i64 %.0167343, 1                ; 2 uses
  %exitcond375.not = icmp eq i64 %i.np, %i.i
  br i1 %exitcond375.not, label %.lr.ph371, label %.lr.ph345, !llvm.loop !867

._crit_edge372:                                   ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.a
  ret i32 0

bb.ax:                                            ; preds = %.lr.ph371, %_ZN4ncnn3MataSERKS0_.exit
  %.0158369 = phi i64 [ 0, %.lr.ph371 ], [ %i.aev, %_ZN4ncnn3MataSERKS0_.exit ] ; 9 uses
  %i.nq = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !48 ; 5 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0158369
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !55 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 48 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 56
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !60
  switch i64 %i.nw, label %_ZN4ncnn3MataSERKS0_.exit [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277: ; preds = %bb.ax
  %i.nx = load ptr, ptr %i.nu, align 8, !tbaa !59 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 1
  %i.nz = xor i64 %i.ny, 8391732706658905923
  %i.oa = getelementptr i8, ptr %i.nx, i64 3
  %i.ob = load i64, ptr %i.oa, align 1
  %i.oc = xor i64 %i.ob, 7957695015494119286
  %i.od = or i64 %i.nz, %i.oc
  %i.oe = icmp ne i64 %i.od, 0
  %i.of = zext i1 %i.oe to i32
  %.not327 = icmp eq i32 %i.of, 0
  br i1 %.not327, label %bb.ay, label %_ZN4ncnn3MataSERKS0_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279: ; preds = %bb.ax
  %i.og = load ptr, ptr %i.nu, align 8, !tbaa !59 ; 2 uses
  %i.oh = load i128, ptr %i.og, align 1
  %i.oi = xor i128 %i.oh, 138844297650319802350679583742711721795
  %i.oj = getelementptr i8, ptr %i.og, i64 16
  %i.ok = load i32, ptr %i.oj, align 1
  %i.ol = zext i32 %i.ok to i128
  %i.om = xor i128 %i.ol, 1702062423
  %i.on = or i128 %i.oi, %i.om
  %i.oo = icmp ne i128 %i.on, 0
  %i.op = zext i1 %i.oo to i32
  %.not326 = icmp eq i32 %i.op, 0
  br i1 %.not326, label %bb.ay, label %_ZN4ncnn3MataSERKS0_.exit

bb.ay:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nt, i64 136
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !82
  %i.os = load i32, ptr %i.or, align 4, !tbaa !83
  %.0157346 = add nuw i64 %.0158369, 1            ; 3 uses
  %i.ot = icmp ult i64 %.0157346, %i.i
  br i1 %i.ot, label %.lr.ph350, label %._crit_edge351

.lr.ph350:                                        ; preds = %bb.ay, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread
  %.0157348 = phi i64 [ %.0157, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread ], [ %.0157346, %bb.ay ] ; 4 uses
  %.0157.in347 = phi i64 [ %.0157348, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread ], [ %.0158369, %bb.ay ]
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0157348
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !55 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !60
  %i.oy = icmp eq i64 %i.ox, 5
  br i1 %i.oy, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281: ; preds = %.lr.ph350
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !59 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 1
  %i.pc = xor i32 %i.pb, 1768714323
  %i.pd = getelementptr i8, ptr %i.pa, i64 4
  %i.pe = load i8, ptr %i.pd, align 1
  %i.pf = zext i8 %i.pe to i32
  %i.pg = xor i32 %i.pf, 116
  %i.ph = or i32 %i.pc, %i.pg
  %i.pi = icmp ne i32 %i.ph, 0
  %i.pj = zext i1 %i.pi to i32
  %.not328 = icmp eq i32 %i.pj, 0
  br i1 %.not328, label %bb.az, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

bb.az:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ov, i64 112
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ov, i64 120
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !93
  %i.pn = load ptr, ptr %i.pk, align 8, !tbaa !82 ; 2 uses
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp
  %.not = icmp eq i64 %i.pq, 4
  br i1 %.not, label %bb.ba, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

bb.ba:                                            ; preds = %bb.az
  %i.pr = load i32, ptr %i.pn, align 4, !tbaa !83
  %i.ps = icmp eq i32 %i.pr, %i.os
  br i1 %i.ps, label %._crit_edge351, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread: ; preds = %.lr.ph350, %bb.ba, %bb.az, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281
  %.0157 = add i64 %.0157348, 1                   ; 2 uses
  %exitcond376.not = icmp eq i64 %.0157, %i.i
  br i1 %exitcond376.not, label %_ZN4ncnn3MataSERKS0_.exit, label %.lr.ph350, !llvm.loop !868

._crit_edge351:                                   ; preds = %bb.ba, %bb.ay
  %.0157.in.lcssa = phi i64 [ %.0158369, %bb.ay ], [ %.0157.in347, %bb.ba ]
  %.0157.lcssa = phi i64 [ %.0157346, %bb.ay ], [ %.0157348, %bb.ba ] ; 2 uses
  %i.pt = icmp eq i64 %.0157.lcssa, %i.i
  br i1 %i.pt, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge351
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0157.lcssa
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !55 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 136
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 144
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !93 ; 2 uses
  %i.pz = load ptr, ptr %i.pw, align 8, !tbaa !82 ; 4 uses
  %.not331364.not = icmp eq ptr %i.py, %i.pz
  br i1 %.not331364.not, label %.critedge336.loopexit, label %.lr.ph367

.lr.ph367:                                        ; preds = %bb.bb
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 2
  %i.qe = add nuw i64 %.0157.in.lcssa, 2          ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %i.i
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph367, %.thread314
  %.0155365 = phi i64 [ 0, %.lr.ph367 ], [ %i.sv, %.thread314 ] ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %.0155365
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !83
  br i1 %i.qf, label %.lr.ph359, label %._crit_edge360

.lr.ph359:                                        ; preds = %bb.bc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread
  %.0357 = phi i64 [ %i.rp, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread ], [ %i.qe, %bb.bc ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0357
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !55 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 48 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !60
  switch i64 %i.qm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283: ; preds = %.lr.ph359
  %i.qn = load ptr, ptr %i.qk, align 8, !tbaa !59 ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 1
  %i.qp = xor i64 %i.qo, 8391732706658905923
  %i.qq = getelementptr i8, ptr %i.qn, i64 3
  %i.qr = load i64, ptr %i.qq, align 1
  %i.qs = xor i64 %i.qr, 7957695015494119286
  %i.qt = or i64 %i.qp, %i.qs
  %i.qu = icmp ne i64 %i.qt, 0
  %i.qv = zext i1 %i.qu to i32
  %.not330 = icmp eq i32 %i.qv, 0
  br i1 %.not330, label %bb.bd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285: ; preds = %.lr.ph359
  %i.qw = load ptr, ptr %i.qk, align 8, !tbaa !59 ; 2 uses
  %i.qx = load i128, ptr %i.qw, align 1
  %i.qy = xor i128 %i.qx, 138844297650319802350679583742711721795
  %i.qz = getelementptr i8, ptr %i.qw, i64 16
  %i.ra = load i32, ptr %i.qz, align 1
  %i.rb = zext i32 %i.ra to i128
  %i.rc = xor i128 %i.rb, 1702062423
  %i.rd = or i128 %i.qy, %i.rc
  %i.re = icmp ne i128 %i.rd, 0
  %i.rf = zext i1 %i.re to i32
  %.not329 = icmp eq i32 %i.rf, 0
  br i1 %.not329, label %bb.bd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

bb.bd:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qj, i64 112
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qj, i64 120
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !93
  %i.rj = load ptr, ptr %i.rg, align 8, !tbaa !82 ; 2 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %.not170 = icmp eq i64 %i.rm, 4
  br i1 %.not170, label %bb.be, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

bb.be:                                            ; preds = %bb.bd
  %i.rn = load i32, ptr %i.rj, align 4, !tbaa !83
  %i.ro = icmp eq i32 %i.rn, %i.qh
  br i1 %i.ro, label %._crit_edge360, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread: ; preds = %.lr.ph359, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283, %bb.be, %bb.bd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285
  %i.rp = add i64 %.0357, 1                       ; 2 uses
  %exitcond377.not = icmp eq i64 %i.rp, %i.i
  br i1 %exitcond377.not, label %_ZN4ncnn3MataSERKS0_.exit, label %.lr.ph359, !llvm.loop !869

._crit_edge360:                                   ; preds = %bb.be, %bb.bc
  %.0.lcssa = phi i64 [ %i.qe, %bb.bc ], [ %.0357, %bb.be ] ; 2 uses
  %i.rq = icmp eq i64 %.0.lcssa, %i.i
  br i1 %i.rq, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge360
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0.lcssa
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !55 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 48 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 56
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !60
  switch i64 %i.rv, label %.thread314 [
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287: ; preds = %bb.bf
  %i.rw = load ptr, ptr %i.rt, align 8, !tbaa !59 ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 1
  %i.ry = xor i64 %i.rx, 8391732706658905923
  %i.rz = getelementptr i8, ptr %i.rw, i64 3
  %i.sa = load i64, ptr %i.rz, align 1
  %i.sb = xor i64 %i.sa, 7957695015494119286
  %i.sc = or i64 %i.ry, %i.sb
  %i.sd = icmp ne i64 %i.sc, 0
  %i.se = zext i1 %i.sd to i32
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %bb.bg, label %.thread314

bb.bg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rs, i64 368
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !872
  %.not171 = icmp eq i64 %i.sh, 1
  br i1 %.not171, label %.thread314, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289: ; preds = %bb.bf
  %i.si = load ptr, ptr %i.rt, align 8, !tbaa !59 ; 2 uses
  %i.sj = load i128, ptr %i.si, align 1
  %i.sk = xor i128 %i.sj, 138844297650319802350679583742711721795
  %i.sl = getelementptr i8, ptr %i.si, i64 16
  %i.sm = load i32, ptr %i.sl, align 1
  %i.sn = zext i32 %i.sm to i128
  %i.so = xor i128 %i.sn, 1702062423
  %i.sp = or i128 %i.sk, %i.so
  %i.sq = icmp ne i128 %i.sp, 0
  %i.sr = zext i1 %i.sq to i32
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %bb.bh, label %.thread314

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  %i.st = getelementptr inbounds nuw i8, ptr %i.rs, i64 376
  %i.su = load i64, ptr %i.st, align 8, !tbaa !873
  %.not172 = icmp eq i64 %i.su, 1
  br i1 %.not172, label %.thread314, label %_ZN4ncnn3MataSERKS0_.exit

.thread314:                                       ; preds = %bb.bf, %bb.bh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287, %bb.bg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  %i.sv = add nuw i64 %.0155365, 1                ; 2 uses
  %exitcond379.not = icmp eq i64 %i.sv, %i.qd
  br i1 %exitcond379.not, label %.critedge336.loopexit, label %bb.bc, !llvm.loop !870

.critedge336.loopexit:                            ; preds = %.thread314, %bb.bb
  %i.sw = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.sx = load i32, ptr %i.pz, align 4, !tbaa !83
  %i.sy = sext i32 %i.sx to i64
  %i.sz = load ptr, ptr %i.sw, align 8, !tbaa !53
  %i.ta = getelementptr inbounds nuw [112 x i8], ptr %i.sz, i64 %i.sy
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 36
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !874
  %i.td = sext i32 %i.tc to i64                   ; 4 uses
  %i.te = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.tf = getelementptr inbounds nuw i8, ptr %i.nt, i64 80
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !59
  %i.th = getelementptr inbounds nuw i8, ptr %i.pv, i64 80
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !59
  %i.tj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.te, ptr noundef nonnull @.str.184, ptr noundef %i.tg, ptr noundef %i.ti) #28 ; 0 uses
  %i.tk = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !48 ; 7 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %.0158369
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !55 ; 18 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 56
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !60 ; 2 uses
  %i.tq = icmp eq i64 %i.tp, 11
  br i1 %i.tq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291, label %_ZN4ncnn3MataSERKS0_.exit208

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291: ; preds = %.critedge336.loopexit
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 48
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !59 ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 1
  %i.tu = xor i64 %i.tt, 8391732706658905923
  %i.tv = getelementptr i8, ptr %i.ts, i64 3
  %i.tw = load i64, ptr %i.tv, align 1
  %i.tx = xor i64 %i.tw, 7957695015494119286
  %i.ty = or i64 %i.tu, %i.tx
  %i.tz = icmp ne i64 %i.ty, 0
  %i.ua = zext i1 %i.tz to i32
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295

bb.bi:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.td
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !55 ; 11 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 56
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !60
  %i.ug = icmp eq i64 %i.uf, 11
  br i1 %i.ug, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293: ; preds = %bb.bi
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !59 ; 2 uses
  %i.uj = load i64, ptr %i.ui, align 1
  %i.uk = xor i64 %i.uj, 8391732706658905923
  %i.ul = getelementptr i8, ptr %i.ui, i64 3
  %i.um = load i64, ptr %i.ul, align 1
  %i.un = xor i64 %i.um, 7957695015494119286
  %i.uo = or i64 %i.uk, %i.un
  %i.up = icmp ne i64 %i.uo, 0
  %i.uq = zext i1 %i.up to i32
  %i.ur = icmp eq i32 %i.uq, 0
  br i1 %i.ur, label %bb.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295

bb.bj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293
  %i.us = getelementptr inbounds nuw i8, ptr %i.tn, i64 368
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !872
  %.not173 = icmp eq i64 %i.ut, 1
  br i1 %.not173, label %bb.bk, label %_ZN4ncnn3MataSERKS0_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ud, i64 368
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !872
  %.not174 = icmp eq i64 %i.uv, 1
  br i1 %.not174, label %.critedge198, label %_ZN4ncnn3MataSERKS0_.exit

.critedge198:                                     ; preds = %bb.bk
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tn, i64 264 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !136
  %i.uy = add nsw i32 %i.ux, 100
  store i32 %i.uy, ptr %i.uw, align 8, !tbaa !136
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ud, i64 568 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.tn, i64 640 ; 4 uses
  %i.vb = icmp eq ptr %i.va, %i.uz
  br i1 %i.vb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295, label %bb.bl

bb.bl:                                            ; preds = %.critedge198
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ud, i64 576
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !79 ; 2 uses
  %.not.i209 = icmp eq ptr %i.vd, null
  br i1 %.not.i209, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ve = atomicrmw add ptr %i.vd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.vf = getelementptr inbounds nuw i8, ptr %i.tn, i64 648
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !79 ; 2 uses
  %.not.i229 = icmp eq ptr %i.vg, null
  br i1 %.not.i229, label %_ZN4ncnn3MataSERKS0_.exit210, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.vh = atomicrmw add ptr %i.vg, i32 -1 acq_rel, align 4
  %i.vi = icmp eq i32 %i.vh, 1
  br i1 %i.vi, label %bb.bp, label %_ZN4ncnn3MataSERKS0_.exit210

bb.bp:                                            ; preds = %bb.bo
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tn, i64 672
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !80 ; 3 uses
  %.not3.i230 = icmp eq ptr %i.vk, null
  %i.vl = load ptr, ptr %i.va, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i230, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.vm = load ptr, ptr %i.vk, align 8, !tbaa !30
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8
  tail call void %i.vo(ptr noundef nonnull align 8 dereferenceable(8) %i.vk, ptr noundef %i.vl), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit210

bb.br:                                            ; preds = %bb.bp
  %.not.i246 = icmp eq ptr %i.vl, null
  br i1 %.not.i246, label %_ZN4ncnn3MataSERKS0_.exit210, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @free(ptr noundef nonnull %i.vl) #26
  br label %_ZN4ncnn3MataSERKS0_.exit210

_ZN4ncnn3MataSERKS0_.exit210:                     ; preds = %bb.bq, %bb.bo, %bb.bn, %bb.br, %bb.bs
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tn, i64 656
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tn, i64 664
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tn, i64 680 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tn, i64 696
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tn, i64 704 ; 2 uses
  store i64 0, ptr %i.vt, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.va, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.vr, i8 0, i64 20, i1 false)
  %i.vu = load <2 x ptr>, ptr %i.uz, align 8, !tbaa !94
  store <2 x ptr> %i.vu, ptr %i.va, align 8, !tbaa !94
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ud, i64 584
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !95
  store i64 %i.vw, ptr %i.vp, align 8, !tbaa !95
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ud, i64 592
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !96
  store i32 %i.vy, ptr %i.vq, align 8, !tbaa !96
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ud, i64 600
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !80
  %i.wb = getelementptr inbounds nuw i8, ptr %i.tn, i64 672
  store ptr %i.wa, ptr %i.wb, align 8, !tbaa !80
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ud, i64 608
  %i.wd = load <4 x i32>, ptr %i.wc, align 8, !tbaa !83
  store <4 x i32> %i.wd, ptr %i.vr, align 8, !tbaa !83
  %i.we = getelementptr inbounds nuw i8, ptr %i.ud, i64 624
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !90
  store i32 %i.wf, ptr %i.vs, align 8, !tbaa !90
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ud, i64 632
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !78
  store i64 %i.wh, ptr %i.vt, align 8, !tbaa !78
  %.pre398 = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre399 = load ptr, ptr %.pre398, align 8, !tbaa !48 ; 3 uses
  %.phi.trans.insert400 = getelementptr inbounds nuw [8 x i8], ptr %.pre399, i64 %.0158369
  %.pre401 = load ptr, ptr %.phi.trans.insert400, align 8, !tbaa !55 ; 3 uses
  %.phi.trans.insert402 = getelementptr inbounds nuw i8, ptr %.pre401, i64 56
  %.pre403 = load i64, ptr %.phi.trans.insert402, align 8, !tbaa !60 ; 2 uses
  %i.wi = icmp eq i64 %.pre403, 11
  br i1 %i.wi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295, label %_ZN4ncnn3MataSERKS0_.exit208

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293, %.critedge198, %bb.bi, %_ZN4ncnn3MataSERKS0_.exit210
  %i.wj = phi ptr [ %.pre399, %_ZN4ncnn3MataSERKS0_.exit210 ], [ %i.tl, %bb.bi ], [ %i.tl, %.critedge198 ], [ %i.tl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293 ], [ %i.tl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291 ]
  %i.wk = phi ptr [ %.pre401, %_ZN4ncnn3MataSERKS0_.exit210 ], [ %i.tn, %bb.bi ], [ %i.tn, %.critedge198 ], [ %i.tn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293 ], [ %i.tn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291 ] ; 12 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 48
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !59 ; 2 uses
  %i.wn = load i64, ptr %i.wm, align 1
  %i.wo = xor i64 %i.wn, 8391732706658905923
  %i.wp = getelementptr i8, ptr %i.wm, i64 3
  %i.wq = load i64, ptr %i.wp, align 1
  %i.wr = xor i64 %i.wq, 7957695015494119286
  %i.ws = or i64 %i.wo, %i.wr
  %i.wt = icmp ne i64 %i.ws, 0
  %i.wu = zext i1 %i.wt to i32
  %i.wv = icmp eq i32 %i.wu, 0
  br i1 %i.wv, label %bb.bt, label %_ZN4ncnn3MataSERKS0_.exit

bb.bt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %i.td
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !55 ; 11 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 56
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !60
  %i.xa = icmp eq i64 %i.wz, 20
  br i1 %i.xa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit297, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit297: ; preds = %bb.bt
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wx, i64 48
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !59 ; 2 uses
  %i.xd = load i128, ptr %i.xc, align 1
  %i.xe = xor i128 %i.xd, 138844297650319802350679583742711721795
  %i.xf = getelementptr i8, ptr %i.xc, i64 16
  %i.xg = load i32, ptr %i.xf, align 1
  %i.xh = zext i32 %i.xg to i128
  %i.xi = xor i128 %i.xh, 1702062423
  %i.xj = or i128 %i.xe, %i.xi
  %i.xk = icmp ne i128 %i.xj, 0
  %i.xl = zext i1 %i.xk to i32
  %i.xm = icmp eq i32 %i.xl, 0
  br i1 %i.xm, label %bb.bu, label %_ZN4ncnn3MataSERKS0_.exit

bb.bu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit297
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wk, i64 368
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !872
  %.not175 = icmp eq i64 %i.xo, 1
  br i1 %.not175, label %bb.bv, label %_ZN4ncnn3MataSERKS0_.exit

bb.bv:                                            ; preds = %bb.bu
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wx, i64 376
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !873
  %.not176 = icmp eq i64 %i.xq, 1
  br i1 %.not176, label %.critedge200, label %_ZN4ncnn3MataSERKS0_.exit

.critedge200:                                     ; preds = %bb.bv
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wk, i64 264 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !136
  %i.xt = add nsw i32 %i.xs, 100
  store i32 %i.xt, ptr %i.xr, align 8, !tbaa !136
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wx, i64 576 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wk, i64 640 ; 4 uses
  %i.xw = icmp eq ptr %i.xv, %i.xu
  br i1 %i.xw, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bw

bb.bw:                                            ; preds = %.critedge200
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wx, i64 584
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !79 ; 2 uses
  %.not.i207 = icmp eq ptr %i.xy, null
  br i1 %.not.i207, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.xz = atomicrmw add ptr %i.xy, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wk, i64 648
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !79 ; 2 uses
  %.not.i232 = icmp eq ptr %i.yb, null
  br i1 %.not.i232, label %_ZN4ncnn3Mat7releaseEv.exit234, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.yc = atomicrmw add ptr %i.yb, i32 -1 acq_rel, align 4
  %i.yd = icmp eq i32 %i.yc, 1
  br i1 %i.yd, label %bb.ca, label %_ZN4ncnn3Mat7releaseEv.exit234

bb.ca:                                            ; preds = %bb.bz
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wk, i64 672
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !80 ; 3 uses
  %.not3.i233 = icmp eq ptr %i.yf, null
  %i.yg = load ptr, ptr %i.xv, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i233, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.yh = load ptr, ptr %i.yf, align 8, !tbaa !30
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8
  tail call void %i.yj(ptr noundef nonnull align 8 dereferenceable(8) %i.yf, ptr noundef %i.yg), !inline_history !1
  br label %_ZN4ncnn3Mat7releaseEv.exit234

bb.cc:                                            ; preds = %bb.ca
  %.not.i244 = icmp eq ptr %i.yg, null
  br i1 %.not.i244, label %_ZN4ncnn3Mat7releaseEv.exit234, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @free(ptr noundef nonnull %i.yg) #26
  br label %_ZN4ncnn3Mat7releaseEv.exit234

_ZN4ncnn3Mat7releaseEv.exit234:                   ; preds = %bb.cd, %bb.cc, %bb.by, %bb.bz, %bb.cb
  %i.yk = getelementptr inbounds nuw i8, ptr %i.wk, i64 656
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wk, i64 664
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wk, i64 680 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wk, i64 696
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wk, i64 704 ; 2 uses
  store i64 0, ptr %i.yo, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.xv, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ym, i8 0, i64 20, i1 false)
  %i.yp = load <2 x ptr>, ptr %i.xu, align 8, !tbaa !94
  store <2 x ptr> %i.yp, ptr %i.xv, align 8, !tbaa !94
  %i.yq = getelementptr inbounds nuw i8, ptr %i.wx, i64 592
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !95
  store i64 %i.yr, ptr %i.yk, align 8, !tbaa !95
  %i.ys = getelementptr inbounds nuw i8, ptr %i.wx, i64 600
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !96
  store i32 %i.yt, ptr %i.yl, align 8, !tbaa !96
  %i.yu = getelementptr inbounds nuw i8, ptr %i.wx, i64 608
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !80
  %i.yw = getelementptr inbounds nuw i8, ptr %i.wk, i64 672
  store ptr %i.yv, ptr %i.yw, align 8, !tbaa !80
  %i.yx = getelementptr inbounds nuw i8, ptr %i.wx, i64 616
  %i.yy = load <4 x i32>, ptr %i.yx, align 8, !tbaa !83
  store <4 x i32> %i.yy, ptr %i.ym, align 8, !tbaa !83
  %i.yz = getelementptr inbounds nuw i8, ptr %i.wx, i64 632
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !90
  store i32 %i.za, ptr %i.yn, align 8, !tbaa !90
  %i.zb = getelementptr inbounds nuw i8, ptr %i.wx, i64 640
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !78
  store i64 %i.zc, ptr %i.yo, align 8, !tbaa !78
  %.pre404 = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre405 = load ptr, ptr %.pre404, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert406 = getelementptr inbounds nuw [8 x i8], ptr %.pre405, i64 %.0158369
  %.pre407 = load ptr, ptr %.phi.trans.insert406, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert408 = getelementptr inbounds nuw i8, ptr %.pre407, i64 56
  %.pre409 = load i64, ptr %.phi.trans.insert408, align 8, !tbaa !60
  br label %_ZN4ncnn3MataSERKS0_.exit208

_ZN4ncnn3MataSERKS0_.exit208:                     ; preds = %.critedge336.loopexit, %_ZN4ncnn3MataSERKS0_.exit210, %_ZN4ncnn3Mat7releaseEv.exit234
  %i.zd = phi i64 [ %.pre409, %_ZN4ncnn3Mat7releaseEv.exit234 ], [ %.pre403, %_ZN4ncnn3MataSERKS0_.exit210 ], [ %i.tp, %.critedge336.loopexit ]
  %i.ze = phi ptr [ %.pre407, %_ZN4ncnn3Mat7releaseEv.exit234 ], [ %.pre401, %_ZN4ncnn3MataSERKS0_.exit210 ], [ %i.tn, %.critedge336.loopexit ] ; 16 uses
  %i.zf = phi ptr [ %.pre405, %_ZN4ncnn3Mat7releaseEv.exit234 ], [ %.pre399, %_ZN4ncnn3MataSERKS0_.exit210 ], [ %i.tl, %.critedge336.loopexit ] ; 5 uses
  %i.zg = icmp eq i64 %i.zd, 20
  br i1 %i.zg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299: ; preds = %_ZN4ncnn3MataSERKS0_.exit208
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 48
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !59 ; 2 uses
  %i.zj = load i128, ptr %i.zi, align 1
  %i.zk = xor i128 %i.zj, 138844297650319802350679583742711721795
  %i.zl = getelementptr i8, ptr %i.zi, i64 16
  %i.zm = load i32, ptr %i.zl, align 1
  %i.zn = zext i32 %i.zm to i128
  %i.zo = xor i128 %i.zn, 1702062423
  %i.zp = or i128 %i.zk, %i.zo
  %i.zq = icmp ne i128 %i.zp, 0
  %i.zr = zext i1 %i.zq to i32
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %bb.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303

bb.ce:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.td
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !55 ; 11 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 56
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !60
  %i.zx = icmp eq i64 %i.zw, 11
  br i1 %i.zx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301: ; preds = %bb.ce
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 48
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !59 ; 2 uses
  %i.aaa = load i64, ptr %i.zz, align 1
  %i.aab = xor i64 %i.aaa, 8391732706658905923
  %i.aac = getelementptr i8, ptr %i.zz, i64 3
  %i.aad = load i64, ptr %i.aac, align 1
  %i.aae = xor i64 %i.aad, 7957695015494119286
  %i.aaf = or i64 %i.aab, %i.aae
  %i.aag = icmp ne i64 %i.aaf, 0
  %i.aah = zext i1 %i.aag to i32
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %bb.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303

bb.cf:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.ze, i64 376
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !873
  %.not177 = icmp eq i64 %i.aak, 1
  br i1 %.not177, label %bb.cg, label %_ZN4ncnn3MataSERKS0_.exit

bb.cg:                                            ; preds = %bb.cf
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zu, i64 368
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !872
  %.not178 = icmp eq i64 %i.aam, 1
  br i1 %.not178, label %.critedge202, label %_ZN4ncnn3MataSERKS0_.exit

.critedge202:                                     ; preds = %bb.cg
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ze, i64 268 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !140
  %i.aap = add nsw i32 %i.aao, 100
  store i32 %i.aap, ptr %i.aan, align 4, !tbaa !140
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zu, i64 568 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ze, i64 648 ; 4 uses
  %i.aas = icmp eq ptr %i.aar, %i.aaq
  br i1 %i.aas, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303, label %bb.ch

bb.ch:                                            ; preds = %.critedge202
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zu, i64 576
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !79 ; 2 uses
  %.not.i205 = icmp eq ptr %i.aau, null
  br i1 %.not.i205, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aav = atomicrmw add ptr %i.aau, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.ze, i64 656
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !79 ; 2 uses
  %.not.i235 = icmp eq ptr %i.aax, null
  br i1 %.not.i235, label %_ZN4ncnn3MataSERKS0_.exit206, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aay = atomicrmw add ptr %i.aax, i32 -1 acq_rel, align 4
  %i.aaz = icmp eq i32 %i.aay, 1
  br i1 %i.aaz, label %bb.cl, label %_ZN4ncnn3MataSERKS0_.exit206

bb.cl:                                            ; preds = %bb.ck
  %i.aba = getelementptr inbounds nuw i8, ptr %i.ze, i64 680
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !80 ; 3 uses
  %.not3.i236 = icmp eq ptr %i.abb, null
  %i.abc = load ptr, ptr %i.aar, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i236, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.abd = load ptr, ptr %i.abb, align 8, !tbaa !30
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 24
  %i.abf = load ptr, ptr %i.abe, align 8
  tail call void %i.abf(ptr noundef nonnull align 8 dereferenceable(8) %i.abb, ptr noundef %i.abc), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit206

bb.cn:                                            ; preds = %bb.cl
  %.not.i242 = icmp eq ptr %i.abc, null
  br i1 %.not.i242, label %_ZN4ncnn3MataSERKS0_.exit206, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @free(ptr noundef nonnull %i.abc) #26
  br label %_ZN4ncnn3MataSERKS0_.exit206

_ZN4ncnn3MataSERKS0_.exit206:                     ; preds = %bb.cm, %bb.ck, %bb.cj, %bb.cn, %bb.co
  %i.abg = getelementptr inbounds nuw i8, ptr %i.ze, i64 664
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ze, i64 672
  %i.abi = getelementptr inbounds nuw i8, ptr %i.ze, i64 688 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.ze, i64 704
  %i.abk = getelementptr inbounds nuw i8, ptr %i.ze, i64 712 ; 2 uses
  store i64 0, ptr %i.abk, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aar, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.abi, i8 0, i64 20, i1 false)
  %i.abl = load <2 x ptr>, ptr %i.aaq, align 8, !tbaa !94
  store <2 x ptr> %i.abl, ptr %i.aar, align 8, !tbaa !94
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zu, i64 584
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !95
  store i64 %i.abn, ptr %i.abg, align 8, !tbaa !95
  %i.abo = getelementptr inbounds nuw i8, ptr %i.zu, i64 592
  %i.abp = load i32, ptr %i.abo, align 8, !tbaa !96
  store i32 %i.abp, ptr %i.abh, align 8, !tbaa !96
  %i.abq = getelementptr inbounds nuw i8, ptr %i.zu, i64 600
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !80
  %i.abs = getelementptr inbounds nuw i8, ptr %i.ze, i64 680
  store ptr %i.abr, ptr %i.abs, align 8, !tbaa !80
  %i.abt = getelementptr inbounds nuw i8, ptr %i.zu, i64 608
  %i.abu = load <4 x i32>, ptr %i.abt, align 8, !tbaa !83
  store <4 x i32> %i.abu, ptr %i.abi, align 8, !tbaa !83
  %i.abv = getelementptr inbounds nuw i8, ptr %i.zu, i64 624
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !90
  store i32 %i.abw, ptr %i.abj, align 8, !tbaa !90
  %i.abx = getelementptr inbounds nuw i8, ptr %i.zu, i64 632
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !78
  store i64 %i.aby, ptr %i.abk, align 8, !tbaa !78
  %.pre410 = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre411 = load ptr, ptr %.pre410, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert412 = getelementptr inbounds nuw [8 x i8], ptr %.pre411, i64 %.0158369
  %.pre413 = load ptr, ptr %.phi.trans.insert412, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert414 = getelementptr inbounds nuw i8, ptr %.pre413, i64 56
  %.pre415 = load i64, ptr %.phi.trans.insert414, align 8, !tbaa !60
  %i.abz = icmp eq i64 %.pre415, 20
  br i1 %i.abz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301, %.critedge202, %bb.ce, %_ZN4ncnn3MataSERKS0_.exit206
  %i.aca = phi ptr [ %.pre411, %_ZN4ncnn3MataSERKS0_.exit206 ], [ %i.zf, %bb.ce ], [ %i.zf, %.critedge202 ], [ %i.zf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301 ], [ %i.zf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299 ]
  %i.acb = phi ptr [ %.pre413, %_ZN4ncnn3MataSERKS0_.exit206 ], [ %i.ze, %bb.ce ], [ %i.ze, %.critedge202 ], [ %i.ze, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301 ], [ %i.ze, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299 ] ; 12 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 48
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !59 ; 2 uses
  %i.ace = load i128, ptr %i.acd, align 1
  %i.acf = xor i128 %i.ace, 138844297650319802350679583742711721795
  %i.acg = getelementptr i8, ptr %i.acd, i64 16
  %i.ach = load i32, ptr %i.acg, align 1
  %i.aci = zext i32 %i.ach to i128
  %i.acj = xor i128 %i.aci, 1702062423
  %i.ack = or i128 %i.acf, %i.acj
  %i.acl = icmp ne i128 %i.ack, 0
  %i.acm = zext i1 %i.acl to i32
  %i.acn = icmp eq i32 %i.acm, 0
  br i1 %i.acn, label %bb.cp, label %_ZN4ncnn3MataSERKS0_.exit

bb.cp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.td
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !55 ; 11 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 56
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !60
  %i.acs = icmp eq i64 %i.acr, 20
  br i1 %i.acs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305: ; preds = %bb.cp
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 48
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !59 ; 2 uses
  %i.acv = load i128, ptr %i.acu, align 1
  %i.acw = xor i128 %i.acv, 138844297650319802350679583742711721795
  %i.acx = getelementptr i8, ptr %i.acu, i64 16
  %i.acy = load i32, ptr %i.acx, align 1
  %i.acz = zext i32 %i.acy to i128
  %i.ada = xor i128 %i.acz, 1702062423
  %i.adb = or i128 %i.acw, %i.ada
  %i.adc = icmp ne i128 %i.adb, 0
  %i.add = zext i1 %i.adc to i32
  %i.ade = icmp eq i32 %i.add, 0
  br i1 %i.ade, label %bb.cq, label %_ZN4ncnn3MataSERKS0_.exit

bb.cq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acb, i64 376
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !873
  %.not179 = icmp eq i64 %i.adg, 1
  br i1 %.not179, label %bb.cr, label %_ZN4ncnn3MataSERKS0_.exit

bb.cr:                                            ; preds = %bb.cq
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acp, i64 376
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !873
  %.not180 = icmp eq i64 %i.adi, 1
  br i1 %.not180, label %.critedge204, label %_ZN4ncnn3MataSERKS0_.exit

.critedge204:                                     ; preds = %bb.cr
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acb, i64 268 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !140
  %i.adl = add nsw i32 %i.adk, 100
  store i32 %i.adl, ptr %i.adj, align 4, !tbaa !140
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acp, i64 576 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acb, i64 648 ; 4 uses
  %i.ado = icmp eq ptr %i.adn, %i.adm
  br i1 %i.ado, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.cs

bb.cs:                                            ; preds = %.critedge204
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acp, i64 584
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp eq ptr %i.adq, null
  br i1 %.not.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.adr = atomicrmw add ptr %i.adq, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acb, i64 656
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !79 ; 2 uses
  %.not.i238 = icmp eq ptr %i.adt, null
  br i1 %.not.i238, label %_ZN4ncnn3Mat7releaseEv.exit240, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.adu = atomicrmw add ptr %i.adt, i32 -1 acq_rel, align 4
  %i.adv = icmp eq i32 %i.adu, 1
  br i1 %i.adv, label %bb.cw, label %_ZN4ncnn3Mat7releaseEv.exit240

bb.cw:                                            ; preds = %bb.cv
  %i.adw = getelementptr inbounds nuw i8, ptr %i.acb, i64 680
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !80 ; 3 uses
  %.not3.i239 = icmp eq ptr %i.adx, null
  %i.ady = load ptr, ptr %i.adn, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i239, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.adz = load ptr, ptr %i.adx, align 8, !tbaa !30
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aeb = load ptr, ptr %i.aea, align 8
  tail call void %i.aeb(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, ptr noundef %i.ady), !inline_history !1
  br label %_ZN4ncnn3Mat7releaseEv.exit240

bb.cy:                                            ; preds = %bb.cw
  %.not.i241 = icmp eq ptr %i.ady, null
  br i1 %.not.i241, label %_ZN4ncnn3Mat7releaseEv.exit240, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @free(ptr noundef nonnull %i.ady) #26
  br label %_ZN4ncnn3Mat7releaseEv.exit240

_ZN4ncnn3Mat7releaseEv.exit240:                   ; preds = %bb.cz, %bb.cy, %bb.cu, %bb.cv, %bb.cx
  %i.aec = getelementptr inbounds nuw i8, ptr %i.acb, i64 664
  %i.aed = getelementptr inbounds nuw i8, ptr %i.acb, i64 672
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acb, i64 688 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.acb, i64 704
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.acb, i64 712 ; 2 uses
  store i64 0, ptr %i.aeg, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.adn, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aee, i8 0, i64 20, i1 false)
  %i.aeh = load <2 x ptr>, ptr %i.adm, align 8, !tbaa !94
  store <2 x ptr> %i.aeh, ptr %i.adn, align 8, !tbaa !94
  %i.aei = getelementptr inbounds nuw i8, ptr %i.acp, i64 592
  %i.aej = load i64, ptr %i.aei, align 8, !tbaa !95
  store i64 %i.aej, ptr %i.aec, align 8, !tbaa !95
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acp, i64 600
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !96
  store i32 %i.ael, ptr %i.aed, align 8, !tbaa !96
  %i.aem = getelementptr inbounds nuw i8, ptr %i.acp, i64 608
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !80
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.acb, i64 680
  store ptr %i.aen, ptr %i.aeo, align 8, !tbaa !80
  %i.aep = getelementptr inbounds nuw i8, ptr %i.acp, i64 616
  %i.aeq = load <4 x i32>, ptr %i.aep, align 8, !tbaa !83
  store <4 x i32> %i.aeq, ptr %i.aee, align 8, !tbaa !83
  %i.aer = getelementptr inbounds nuw i8, ptr %i.acp, i64 632
  %i.aes = load i32, ptr %i.aer, align 8, !tbaa !90
  store i32 %i.aes, ptr %i.aef, align 8, !tbaa !90
  %i.aet = getelementptr inbounds nuw i8, ptr %i.acp, i64 640
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !78
  store i64 %i.aeu, ptr %i.aeg, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread, %._crit_edge360, %bb.bh, %bb.bg, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit297, %.critedge200, %bb.bt, %_ZN4ncnn3MataSERKS0_.exit208, %bb.ax, %bb.cp, %_ZN4ncnn3MataSERKS0_.exit206, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277, %_ZN4ncnn3Mat7releaseEv.exit240, %.critedge204, %._crit_edge351, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305, %bb.cr, %bb.cq, %bb.cg, %bb.cf, %bb.bv, %bb.bu, %bb.bk, %bb.bj, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279
  %i.aev = add nuw i64 %.0158369, 1               ; 2 uses
  %exitcond381.not = icmp eq i64 %i.aev, %i.i
  br i1 %exitcond381.not, label %._crit_edge372, label %bb.ax, !llvm.loop !871
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %7 = alloca %class.NetQuantize, align 8         ; 40 uses
  %8 = alloca %class.DataReaderFromEmpty, align 8 ; 8 uses
  %i.c = add i32 %0, -7
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.e = load ptr, ptr %1, align 8, !tbaa !876
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.186, ptr noundef %i.e) #28 ; 0 uses
  br label %bb.dr

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !876
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !876  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !876
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !876
  %i.o = icmp eq i32 %0, 6
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !876
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ null, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN11ModelWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %7)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11NetQuantize, i64 16), ptr %7, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !105
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  store ptr null, ptr %i.t, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 2 uses
  store ptr %i.s, ptr %i.v, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 5 uses
  store i32 0, ptr %i.x, align 8, !tbaa !105
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 4 uses
  store ptr null, ptr %i.y, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 1, ptr %i.ac, align 4, !tbaa !127
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.cr, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i: ; preds = %bb.f
  store ptr null, ptr %i.t, align 8, !tbaa !106
  store ptr %i.s, ptr %i.u, align 8, !tbaa !107
  store ptr %i.s, ptr %i.v, align 8, !tbaa !108
  store i64 0, ptr %i.w, align 8, !tbaa !109
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %i.ah)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit108.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit108.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i
  store ptr null, ptr %i.y, align 8, !tbaa !106
  store ptr %i.x, ptr %i.z, align 8, !tbaa !107
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !108
  store i64 0, ptr %i.ab, align 8, !tbaa !109
  %i.ak = call noalias ptr @fopen(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.189) ; 5 uses
  %.not.i.not = icmp eq ptr %i.ak, null
  br i1 %.not.i.not, label %bb.cq, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit108.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.am, align 8, !tbaa !60
  store i8 0, ptr %i.al, align 8, !tbaa !130
  %i.an = invoke noalias noundef nonnull dereferenceable(10240000) ptr @_Znwm(i64 noundef 10240000) #29
          to label %bb.j unwind label %.thread150.i ; 7 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10240000) %i.an, i8 0, i64 10240000, i1 false)
  %i.ao = call i32 @feof(ptr noundef nonnull %i.ak) #26
  %.not31269.i = icmp eq i32 %i.ao, 0
  br i1 %.not31269.i, label %.lr.ph.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit116.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %.lr.ph.i
  %.sroa.0130.0272.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0130.2.lcssa.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ] ; 5 uses
  %.sroa.20.0271.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.20.2.lcssa.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %.sroa.13.0270.i = phi ptr [ null, %.lr.ph.i ], [ %spec.select.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.bx = call ptr @fgets(ptr noundef nonnull %i.an, i32 noundef 10240000, ptr noundef nonnull %i.ak)
  %.not32.i = icmp eq ptr %i.bx, null
  br i1 %.not32.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit116.i, label %bb.l

.thread150.i:                                     ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit119.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bz = call i64 @strcspn(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.191) #33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bz
  store i8 0, ptr %i.ca, align 1, !tbaa !130
  %i.cb = call ptr @strtok(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.192) #26 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.thread145.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cd = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.cb, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.ce = load i64, ptr %i.am, align 8, !tbaa !60
  %i.cf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.ce, ptr noundef nonnull %i.b, i64 noundef %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i unwind label %.loopexit.loopexit.split-lp.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i: ; preds = %.preheader.preheader.i
  %i.ch = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.192) #26 ; 2 uses
  %.not33.peel.i = icmp eq ptr %i.ch, null
  br i1 %.not33.peel.i, label %.loopexit302.i, label %.preheader.peel.next.i

.thread145.i:                                     ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit116.i

.loopexit.loopexit.split-lp.i:                    ; preds = %.preheader.preheader.i
  %lpad.loopexit.split-lp301.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %.loopexit298.i
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.preheader.peel.next.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %.019267.i = phi ptr [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i ]
  %.sroa.0130.1266.i = phi ptr [ %.sroa.0130.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ], [ %.sroa.0130.0272.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i ] ; 6 uses
  %.sroa.20.1265.i = phi ptr [ %.sroa.20.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ], [ %.sroa.20.0271.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i ] ; 3 uses
  %.sroa.13.1264.i = phi ptr [ %.sroa.13.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ], [ %.sroa.13.0270.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i ] ; 3 uses
  %i.ci = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.019267.i, ptr noundef nonnull @.str.194, ptr noundef nonnull %i.a) #26 ; 0 uses
  %.not.i111.i = icmp eq ptr %.sroa.13.1264.i, %.sroa.20.1265.i
  br i1 %.not.i111.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.peel.next.i
  %i.cj = load float, ptr %i.a, align 4, !tbaa !92
  store float %i.cj, ptr %.sroa.13.1264.i, align 4, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

bb.n:                                             ; preds = %.preheader.peel.next.i
  %i.ck = ptrtoint ptr %.sroa.20.1265.i to i64
  %i.cl = ptrtoint ptr %.sroa.0130.1266.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 5 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775804
  br i1 %i.cn, label %.loopexit298.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

.loopexit298.i:                                   ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
          to label %.noexc112.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc112.i:                                      ; preds = %.loopexit298.i
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.co = ashr exact i64 %i.cm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 2305843009213693951)
  %i.cs = select i1 %i.cq, i64 2305843009213693951, i64 %i.cr ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #29
          to label %.noexc113.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc113.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.cm ; 2 uses
  %i.cw = load float, ptr %i.a, align 4, !tbaa !92
  store float %i.cw, ptr %i.cv, align 4, !tbaa !92
  %i.cx = icmp sgt i64 %i.cm, 0
  br i1 %i.cx, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc113.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %.sroa.0130.1266.i, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc113.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0130.1266.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0130.1266.i) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cs
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.m
  %.sroa.13.1264.pn.i = phi ptr [ %.sroa.13.1264.i, %bb.m ], [ %i.cv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ]
  %.sroa.20.2.i = phi ptr [ %.sroa.20.1265.i, %bb.m ], [ %i.cy, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.0130.2.i = phi ptr [ %.sroa.0130.1266.i, %bb.m ], [ %i.cu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.13.2.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1264.pn.i, i64 4 ; 2 uses
  %i.cz = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.192) #26 ; 2 uses
  %.not33.i = icmp eq ptr %i.cz, null
  br i1 %.not33.i, label %.loopexit302.i, label %.preheader.peel.next.i, !llvm.loop !875

.loopexit302.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i
  %.sroa.13.2.lcssa.i = phi ptr [ %.sroa.13.0270.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i ], [ %.sroa.13.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ] ; 3 uses
  %.sroa.20.2.lcssa.i = phi ptr [ %.sroa.20.0271.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i ], [ %.sroa.20.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ]
  %.sroa.0130.2.lcssa.i = phi ptr [ %.sroa.0130.0272.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i ], [ %.sroa.0130.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ] ; 9 uses
  %i.da = load ptr, ptr %2, align 8, !tbaa !59
  %i.db = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.da, ptr noundef nonnull dereferenceable(1) @.str.195) #33
  %.not34.i = icmp eq ptr %i.db, null
  %i.dc = ptrtoint ptr %.sroa.13.2.lcssa.i to i64
  %i.dd = ptrtoint ptr %.sroa.0130.2.lcssa.i to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = lshr exact i64 %i.de, 2
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %sext155.i = shl i64 %i.de, 30
  %i.dh = ashr exact i64 %sext155.i, 30
  %i.di = add nsw i64 %i.dh, 12
  %i.dj = lshr i64 %i.di, 2
  %i.dk = and i64 %i.dj, 4611686018427387900      ; 2 uses
  br i1 %.not34.i, label %bb.bc, label %bb.q

bb.q:                                             ; preds = %.loopexit302.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %.sroa.0130.2.lcssa.i, ptr %4, align 8, !tbaa !81
  store ptr null, ptr %i.ap, align 8, !tbaa !79
  store i64 4, ptr %i.aq, align 8, !tbaa !95
  store i32 1, ptr %i.ar, align 8, !tbaa !96
  store ptr null, ptr %i.as, align 8, !tbaa !80
  store i32 1, ptr %i.at, align 8, !tbaa !190
  store i32 %i.dg, ptr %i.au, align 4, !tbaa !124
  store i32 1, ptr %i.av, align 8, !tbaa !125
  store i32 1, ptr %i.aw, align 4, !tbaa !126
  store i32 1, ptr %i.ax, align 8, !tbaa !90
  store i64 %i.dk, ptr %i.ay, align 8, !tbaa !78
  invoke void @_ZNK4ncnn3Mat5cloneEPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef null)
          to label %bb.r unwind label %bb.an

bb.r:                                             ; preds = %bb.q
  %i.dl = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.ao      ; 12 uses

bb.s:                                             ; preds = %bb.r
  %i.dm = icmp eq ptr %i.dl, %3
  %.pre.i = load ptr, ptr %i.az, align 8, !tbaa !79 ; 3 uses
  br i1 %i.dm, label %_ZN4ncnn3MataSERKS0_.exit50.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i48.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i48.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = atomicrmw add ptr %.pre.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !79 ; 2 uses
  %.not.i51.i = icmp eq ptr %i.dp, null
  br i1 %.not.i51.i, label %.noexc49.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.x, label %.noexc49.i

bb.x:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !80 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du)
          to label %.noexc49.i unwind label %bb.ao, !inline_history !1

bb.z:                                             ; preds = %bb.x
  %.not.i106.i = icmp eq ptr %i.du, null
  br i1 %.not.i106.i, label %.noexc49.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.du) #26
  br label %.noexc49.i

.noexc49.i:                                       ; preds = %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  store i64 0, ptr %i.ec, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dl, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ea, i8 0, i64 20, i1 false)
  %i.ed = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.ee = load <2 x ptr>, ptr %3, align 16, !tbaa !94
  store <2 x ptr> %i.ee, ptr %i.dl, align 8, !tbaa !94
  %i.ef = load i64, ptr %i.ba, align 16, !tbaa !95
  store i64 %i.ef, ptr %i.dy, align 8, !tbaa !95
  %i.eg = load i32, ptr %i.bb, align 8, !tbaa !96
  store i32 %i.eg, ptr %i.dz, align 8, !tbaa !96
  %i.eh = load ptr, ptr %i.bc, align 16, !tbaa !80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !80
  %i.ej = load <4 x i32>, ptr %i.bd, align 8, !tbaa !83
  store <4 x i32> %i.ej, ptr %i.ea, align 8, !tbaa !83
  %i.ek = load i32, ptr %i.be, align 8, !tbaa !90
  store i32 %i.ek, ptr %i.eb, align 8, !tbaa !90
  %i.el = load i64, ptr %i.bf, align 16, !tbaa !78
  store i64 %i.el, ptr %i.ec, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit50.i

_ZN4ncnn3MataSERKS0_.exit50.i:                    ; preds = %.noexc49.i, %bb.s
  %i.em = phi ptr [ %i.ed, %.noexc49.i ], [ %.pre.i, %bb.s ] ; 2 uses
  %.not.i57.i = icmp eq ptr %i.em, null
  br i1 %.not.i57.i, label %_ZN4ncnn3MatD2Ev.exit47.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit50.i
  %i.en = atomicrmw add ptr %i.em, i32 -1 acq_rel, align 4
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.ac, label %_ZN4ncnn3MatD2Ev.exit47.i

bb.ac:                                            ; preds = %bb.ab
  %i.ep = load ptr, ptr %i.bc, align 16, !tbaa !80 ; 3 uses
  %.not3.i58.i = icmp eq ptr %i.ep, null
  %i.eq = load ptr, ptr %3, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i58.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !30
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef %i.eq)
          to label %_ZN4ncnn3MatD2Ev.exit47.i unwind label %bb.ag, !inline_history !1

bb.ae:                                            ; preds = %bb.ac
  %.not.i102.i = icmp eq ptr %i.eq, null
  br i1 %.not.i102.i, label %_ZN4ncnn3MatD2Ev.exit47.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.eq) #26
  br label %_ZN4ncnn3MatD2Ev.exit47.i

bb.ag:                                            ; preds = %bb.ad
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit47.i:                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %_ZN4ncnn3MataSERKS0_.exit50.i
  store i64 0, ptr %i.bf, align 16, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, i8 0, i64 20, i1 false)
  %i.ew = load ptr, ptr %i.ap, align 8, !tbaa !79 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ew, null
  br i1 %.not.i61.i, label %_ZN4ncnn3MatD2Ev.exit46.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit47.i
  %i.ex = atomicrmw add ptr %i.ew, i32 -1 acq_rel, align 4
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %bb.ai, label %_ZN4ncnn3MatD2Ev.exit46.i

bb.ai:                                            ; preds = %bb.ah
  %i.ez = load ptr, ptr %i.as, align 8, !tbaa !80 ; 3 uses
  %.not3.i62.i = icmp eq ptr %i.ez, null
  %i.fa = load ptr, ptr %4, align 8, !tbaa !81    ; 3 uses
  br i1 %.not3.i62.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  invoke void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef %i.fa)
          to label %_ZN4ncnn3MatD2Ev.exit46.i unwind label %bb.am, !inline_history !1

bb.ak:                                            ; preds = %bb.ai
  %.not.i100.i = icmp eq ptr %i.fa, null
  br i1 %.not.i100.i, label %_ZN4ncnn3MatD2Ev.exit46.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef nonnull %i.fa) #26
  br label %_ZN4ncnn3MatD2Ev.exit46.i

bb.am:                                            ; preds = %bb.aj
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit46.i:                        ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah, %_ZN4ncnn3MatD2Ev.exit47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

bb.an:                                            ; preds = %bb.q
  %i.fg = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@main:bb.a
  %i.ku = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !47
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ks to i64
  %i.kz = sub i64 %i.kx, %i.ky
  %i.la = ashr exact i64 %i.kz, 3
  %i.lb = icmp ult i64 %i.ku, %i.la
  br i1 %i.lb, label %.lr.ph.i32, label %_ZN11NetQuantize13quantize_sdpaEv.exit, !llvm.loop !6

_ZN11NetQuantize13quantize_sdpaEv.exit:           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %bb.dl
  %i.lc = invoke noundef i32 @_ZN11NetQuantize15fuse_requantizeEv(ptr noundef nonnull align 8 dereferenceable(216) %7)
          to label %bb.dn unwind label %bb.cw     ; 0 uses

bb.dn:                                            ; preds = %_ZN11NetQuantize13quantize_sdpaEv.exit
  %i.ld = invoke noundef i32 @_ZN11ModelWriter4saveEPKcS1_(ptr noundef nonnull align 8 dereferenceable(116) %7, ptr noundef %i.l, ptr noundef %i.n)
          to label %bb.do unwind label %bb.cw     ; 0 uses

bb.do:                                            ; preds = %bb.cq, %bb.dn, %bb.db
  %.126 = phi i32 [ -1, %bb.cq ], [ -1, %bb.db ], [ 0, %bb.dn ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11NetQuantize, i64 16), ptr %7, align 8, !tbaa !30
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.lf = load ptr, ptr %i.y, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.le, ptr noundef %i.lf)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i unwind label %bb.dp, !inline_history !184

bb.dp:                                            ; preds = %bb.do
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #31, !inline_history !184
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i: ; preds = %bb.do
  %i.li = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.lj = load ptr, ptr %i.t, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.li, ptr noundef %i.lj)
          to label %_ZN11NetQuantizeD2Ev.exit unwind label %bb.dq, !inline_history !184

bb.dq:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #31, !inline_history !184
  unreachable

_ZN11NetQuantizeD2Ev.exit:                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
  call void @_ZN4ncnn3NetD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(216) %7) #26, !inline_history !184
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.dr

.body:                                            ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i, %bb.cz
  %.pn30 = phi { ptr, i32 } [ %.pn, %bb.cz ], [ %i.ji, %bb.cw ], [ %.pn38.pn154.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i ]
  call void @_ZN11NetQuantizeD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn30

bb.dr:                                            ; preds = %_ZN11NetQuantizeD2Ev.exit, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ %.126, %_ZN11NetQuantizeD2Ev.exit ]
  ret i32 %.2
}

declare noundef i32 @_ZN4ncnn3Net10load_paramEPKc(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare noundef i32 @_ZN4ncnn3Net10load_modelERKNS_10DataReaderE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4ncnn10DataReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

declare noundef i32 @_ZN4ncnn3Net10load_modelEPKc(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZNK4ncnn3Mat5cloneEPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.64", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.21", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !5

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ncnn::Mat>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ncnn::Mat>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !878
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #29 ; 13 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !109
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79  ; 2 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i8, label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.ae, null
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !81  ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.af)
          to label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i unwind label %bb.l, !inline_history !1

bb.j:                                             ; preds = %bb.h
  %.not.i1.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i1.i.i.i.i, label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.af) #26
  br label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit.i.i.i.i:                    ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 0, ptr %i.am, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.an) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.b, %.thread ], [ %i.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %.sroa.0.011
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.p = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.y, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59  ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i10) #26 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i12, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18: ; preds = %bb.e
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev:bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN4ncnn3MatD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !81   ; 3 uses
  br i1 %.not3.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.k)
          to label %_ZN4ncnn3MatD2Ev.exit.i.i.i unwind label %bb.h, !inline_history !1

bb.f:                                             ; preds = %bb.d
  %.not.i1.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i.i.i, label %_ZN4ncnn3MatD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #26
  br label %_ZN4ncnn3MatD2Ev.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit.i.i.i:                      ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 0, ptr %i.r, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.s) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #27
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !192
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !183
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.h, ptr %i.a, align 8, !tbaa !38
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !59
  %i.k = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.k, ptr %i.e, align 8, !tbaa !130
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !130
  store i8 %i.m, ptr %i.l, align 1, !tbaa !130
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #26 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %1) #27
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !60
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %i.x, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #31
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !121 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !879

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !59
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #26 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZN4ncnn10DataReaderC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19DataReaderFromEmptyD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn10DataReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK19DataReaderFromEmpty4scanEPKcPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK19DataReaderFromEmpty4readEPvm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false)
  ret i64 %2
}

declare noundef i64 @_ZNK4ncnn10DataReader9referenceEmPPKv(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #19

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { cold }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !39}
!1 = distinct !{null}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = !{i32 7, !"openmp", i32 51}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"bool", !13, i64 0}
!21 = !{!"p1 _ZTSN4ncnn9AllocatorE", !17, i64 0}
!22 = !{!"_ZTSN4ncnn6OptionE", !20, i64 0, !20, i64 1, !20, i64 2, !20, i64 3, !14, i64 4, !21, i64 8, !21, i64 16, !14, i64 24, !20, i64 28, !20, i64 29, !20, i64 30, !20, i64 31, !20, i64 32, !20, i64 33, !20, i64 34, !20, i64 35, !20, i64 36, !20, i64 37, !20, i64 38, !20, i64 39, !14, i64 40, !20, i64 44, !20, i64 45, !20, i64 46, !20, i64 47, !13, i64 48, !20, i64 49, !20, i64 50, !20, i64 51, !20, i64 52, !20, i64 53, !20, i64 54, !20, i64 55, !20, i64 56, !20, i64 57, !20, i64 58, !20, i64 59, !20, i64 60, !20, i64 61, !20, i64 62, !20, i64 63}
!23 = !{!"p1 _ZTSN4ncnn10NetPrivateE", !17, i64 0}
!24 = !{!"_ZTSN4ncnn3NetE", !22, i64 8, !23, i64 72}
!25 = !{!"p1 _ZTSSt6vectorIN4ncnn4BlobESaIS1_EE", !17, i64 0}
!26 = !{!"p1 _ZTSSt6vectorIPN4ncnn5LayerESaIS2_EE", !17, i64 0}
!27 = !{!"_ZTS11ModelWriter", !24, i64 0, !25, i64 80, !26, i64 88, !20, i64 96, !14, i64 100, !14, i64 104, !14, i64 108, !14, i64 112}
!28 = !{!27, !20, i64 96}
!29 = !{!"vtable pointer", !12, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!27, !14, i64 104}
!32 = !{!27, !14, i64 108}
!33 = !{!27, !14, i64 112}
!34 = !{!"long", !13, i64 0}
!35 = !{!"_ZTS11prng_rand_t", !13, i64 0, !34, i64 512, !34, i64 520}
!36 = !{!35, !34, i64 520}
!37 = !{!35, !34, i64 512}
!38 = !{!34, !34, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!27, !26, i64 88}
!43 = !{i64 8}
!44 = !{!"any p2 pointer", !17, i64 0}
!45 = !{!"p2 _ZTSN4ncnn5LayerE", !44, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 8}
!48 = !{!46, !45, i64 0}
!49 = !{!27, !25, i64 80}
!50 = !{!"p1 _ZTSN4ncnn4BlobE", !17, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN4ncnn4BlobESaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!51, !50, i64 8}
!53 = !{!51, !50, i64 0}
!54 = !{!"p1 _ZTSN4ncnn5LayerE", !17, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 omnipotent char", !17, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0, !34, i64 8, !13, i64 16}
!59 = !{!58, !56, i64 0}
!60 = !{!58, !34, i64 8}
!61 = !{!"p1 int", !17, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIiSaIiEE", !64, i64 0}
!66 = !{!"p1 _ZTSN4ncnn3MatE", !17, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !69, i64 0}
!71 = !{!"_ZTSN4ncnn5LayerE", !20, i64 8, !20, i64 9, !20, i64 10, !20, i64 11, !20, i64 12, !20, i64 13, !20, i64 14, !20, i64 15, !20, i64 16, !20, i64 17, !20, i64 18, !20, i64 19, !20, i64 20, !20, i64 21, !20, i64 22, !20, i64 23, !20, i64 24, !20, i64 25, !20, i64 26, !20, i64 27, !14, i64 28, !17, i64 32, !14, i64 40, !58, i64 48, !58, i64 80, !65, i64 112, !65, i64 136, !70, i64 160, !70, i64 184}
!72 = !{!"_ZTSN4ncnn5InputE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220}
!73 = !{!72, !14, i64 208}
!74 = !{!72, !14, i64 212}
!75 = !{!72, !14, i64 216}
!76 = !{!72, !14, i64 220}
!77 = !{!"_ZTSN4ncnn3MatE", !17, i64 0, !61, i64 8, !34, i64 16, !14, i64 24, !21, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !34, i64 64}
!78 = !{!77, !34, i64 64}
!79 = !{!77, !61, i64 8}
!80 = !{!77, !21, i64 32}
!81 = !{!77, !17, i64 0}
!82 = !{!62, !61, i64 0}
!83 = !{!14, !14, i64 0}
!84 = !{!"_ZTSN4ncnn4BlobE", !58, i64 0, !14, i64 32, !14, i64 36, !77, i64 40}
!85 = !{!84, !14, i64 80}
!86 = !{!84, !14, i64 84}
!87 = !{!84, !14, i64 88}
!88 = !{!84, !14, i64 92}
!89 = !{!84, !14, i64 96}
!90 = !{!77, !14, i64 56}
!91 = !{!"float", !13, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!62, !61, i64 8}
!94 = !{!17, !17, i64 0}
!95 = !{!77, !34, i64 16}
!96 = !{!77, !14, i64 24}
!97 = !{!67, !66, i64 0}
!98 = !{!67, !66, i64 8}
!99 = !{!67, !66, i64 16}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!"_ZTSSt14_Rb_tree_color", !13, i64 0}
!102 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !17, i64 0}
!103 = !{!"_ZTSSt18_Rb_tree_node_base", !101, i64 0, !102, i64 8, !102, i64 16, !102, i64 24}
!104 = !{!"_ZTSSt15_Rb_tree_header", !103, i64 0, !34, i64 32}
!105 = !{!104, !101, i64 0}
!106 = !{!104, !102, i64 8}
!107 = !{!104, !102, i64 16}
!108 = !{!104, !102, i64 24}
!109 = !{!104, !34, i64 32}
!110 = !{!"_ZTSN4ncnn9AllocatorE"}
!111 = !{!"_ZTSN4ncnn5MutexE", !13, i64 0}
!112 = !{!"_ZTSSt4lessIPvE"}
!113 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPvEE", !112, i64 0}
!114 = !{!"_ZTSNSt8_Rb_treeIPvSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !113, i64 0, !104, i64 8}
!115 = !{!"_ZTSSt8_Rb_treeIPvSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE", !114, i64 0}
!116 = !{!"_ZTSSt3mapIPvmSt4lessIS0_ESaISt4pairIKS0_mEEE", !115, i64 0}
!117 = !{!"_ZTS24MemoryFootprintAllocator", !110, i64 0, !14, i64 8, !14, i64 12, !111, i64 16, !116, i64 56}
!118 = !{!117, !14, i64 8}
!119 = !{!117, !14, i64 12}
!120 = !{ptr @_ZN24MemoryFootprintAllocatorD2Ev}
!121 = !{!102, !102, i64 0}
!122 = !{!103, !102, i64 24}
!123 = !{!103, !102, i64 16}
!124 = !{!77, !14, i64 44}
!125 = !{!77, !14, i64 48}
!126 = !{!77, !14, i64 52}
!127 = !{!27, !14, i64 100}
!128 = !{!"llvm.loop.isvectorized", i32 1}
!129 = !{!"llvm.loop.unroll.runtime.disable"}
!130 = !{!13, !13, i64 0}
!131 = !{!"_ZTSN4ncnn11ConvolutionE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !14, i64 248, !91, i64 252, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !77, i64 272, !14, i64 344, !77, i64 352, !77, i64 424, !77, i64 496, !77, i64 568, !77, i64 640}
!132 = !{!131, !14, i64 208}
!133 = !{!131, !14, i64 212}
!134 = !{!131, !14, i64 216}
!135 = !{!131, !14, i64 260}
!136 = !{!131, !14, i64 264}
!137 = !{!"_ZTSN4ncnn20ConvolutionDepthWiseE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !14, i64 248, !91, i64 252, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !77, i64 280, !14, i64 352, !77, i64 360, !77, i64 432, !77, i64 504, !77, i64 576, !77, i64 648}
!138 = !{!137, !14, i64 260}
!139 = !{!137, !14, i64 264}
!140 = !{!137, !14, i64 268}
!141 = !{!"_ZTSN4ncnn5EmbedE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !77, i64 232, !77, i64 304, !91, i64 376}
!142 = !{!141, !14, i64 224}
!143 = !{!141, !91, i64 376}
!144 = !{!"_ZTSN4ncnn4GemmE", !71, i64 0, !91, i64 208, !91, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !14, i64 248, !14, i64 252, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !77, i64 288, !77, i64 360, !77, i64 432, !77, i64 504, !91, i64 576}
!145 = !{!144, !14, i64 216}
!146 = !{!144, !14, i64 220}
!147 = !{!144, !14, i64 224}
!148 = !{!144, !14, i64 228}
!149 = !{!144, !14, i64 236}
!150 = !{!144, !14, i64 240}
!151 = !{!144, !14, i64 244}
!152 = !{!144, !14, i64 268}
!153 = !{!144, !91, i64 576}
!154 = !{!"_ZTSN4ncnn3GRUE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !77, i64 224, !77, i64 296, !77, i64 368, !77, i64 440, !77, i64 512}
!155 = !{!154, !14, i64 208}
!156 = !{!154, !14, i64 212}
!157 = !{!154, !14, i64 216}
!158 = !{!154, !14, i64 220}
!159 = !{!"_ZTSN4ncnn12InnerProductE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !77, i64 232, !77, i64 304, !77, i64 376, !77, i64 448, !77, i64 520}
!160 = !{!159, !14, i64 208}
end_hunk_6
begin_hunk_7_@llvm.fabs.v4f32/@llvm.vector.reduce.fmax.v4f32
!645 = !{!644, !14, i64 208}
!646 = !{!644, !14, i64 212}
!647 = !{!"_ZTSN4ncnn7PoolingE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !14, i64 248, !14, i64 252, !14, i64 256, !14, i64 260, !14, i64 264}
!648 = !{!647, !14, i64 208}
!649 = !{!647, !14, i64 212}
!650 = !{!647, !14, i64 216}
!651 = !{!647, !14, i64 220}
!652 = !{!647, !14, i64 224}
!653 = !{!647, !14, i64 228}
!654 = !{!647, !14, i64 236}
!655 = !{!647, !14, i64 232}
!656 = !{!647, !14, i64 240}
!657 = !{!647, !14, i64 244}
!658 = !{!647, !14, i64 248}
!659 = !{!647, !14, i64 252}
!660 = !{!647, !14, i64 256}
!661 = !{!647, !14, i64 260}
!662 = !{!647, !14, i64 264}
!663 = !{!"_ZTSN4ncnn9Pooling1DE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244}
!664 = !{!663, !14, i64 208}
!665 = !{!663, !14, i64 212}
!666 = !{!663, !14, i64 216}
!667 = !{!663, !14, i64 220}
!668 = !{!663, !14, i64 224}
!669 = !{!663, !14, i64 228}
!670 = !{!663, !14, i64 232}
!671 = !{!663, !14, i64 236}
!672 = !{!663, !14, i64 240}
!673 = !{!663, !14, i64 244}
!674 = !{!"_ZTSN4ncnn9Pooling3DE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !14, i64 248, !14, i64 252, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !14, i64 284}
!675 = !{!674, !14, i64 208}
!676 = !{!674, !14, i64 212}
!677 = !{!674, !14, i64 216}
!678 = !{!674, !14, i64 220}
!679 = !{!674, !14, i64 224}
!680 = !{!674, !14, i64 228}
!681 = !{!674, !14, i64 232}
!682 = !{!674, !14, i64 236}
!683 = !{!674, !14, i64 244}
!684 = !{!674, !14, i64 252}
!685 = !{!674, !14, i64 240}
!686 = !{!674, !14, i64 248}
!687 = !{!674, !14, i64 256}
!688 = !{!674, !14, i64 260}
!689 = !{!674, !14, i64 264}
!690 = !{!674, !14, i64 268}
!691 = !{!674, !14, i64 272}
!692 = !{!674, !14, i64 276}
!693 = !{!674, !14, i64 280}
!694 = !{!674, !14, i64 284}
!695 = !{!"_ZTSN4ncnn5PowerE", !71, i64 0, !91, i64 208, !91, i64 212, !91, i64 216}
!696 = !{!695, !91, i64 208}
!697 = !{!695, !91, i64 212}
!698 = !{!695, !91, i64 216}
!699 = !{!"_ZTSN4ncnn5PReLUE", !71, i64 0, !14, i64 208, !77, i64 216}
!700 = !{!699, !14, i64 208}
!701 = !{!"_ZTSN4ncnn8PriorBoxE", !71, i64 0, !77, i64 208, !77, i64 280, !77, i64 352, !13, i64 424, !14, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !91, i64 456, !91, i64 460, !91, i64 464, !20, i64 468, !20, i64 469}
!702 = !{!701, !14, i64 440}
!703 = !{!701, !14, i64 444}
!704 = !{!701, !14, i64 448}
!705 = !{!701, !14, i64 452}
!706 = !{!701, !91, i64 456}
!707 = !{!701, !91, i64 460}
!708 = !{!701, !91, i64 464}
!709 = !{!"_ZTSN4ncnn8ProposalE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !91, i64 224, !14, i64 228, !77, i64 232, !77, i64 304, !77, i64 376}
!710 = !{!709, !14, i64 208}
!711 = !{!709, !14, i64 212}
!712 = !{!709, !14, i64 216}
!713 = !{!709, !14, i64 220}
!714 = !{!709, !91, i64 224}
!715 = !{!709, !14, i64 228}
!716 = !{!"_ZTSN4ncnn12PSROIPoolingE", !71, i64 0, !14, i64 208, !14, i64 212, !91, i64 216, !14, i64 220}
!717 = !{!716, !14, i64 208}
!718 = !{!716, !14, i64 212}
!719 = !{!716, !91, i64 216}
!720 = !{!716, !14, i64 220}
!721 = !{!"_ZTSN4ncnn8QuantizeE", !71, i64 0, !14, i64 208, !77, i64 216}
!722 = !{!721, !14, i64 208}
!723 = !{!"_ZTSN4ncnn9ReductionE", !71, i64 0, !14, i64 208, !14, i64 212, !91, i64 216, !77, i64 224, !14, i64 296}
!724 = !{!723, !14, i64 208}
!725 = !{!723, !14, i64 212}
!726 = !{!723, !91, i64 216}
!727 = !{!723, !14, i64 296}
!728 = !{!"_ZTSN4ncnn4ReLUE", !71, i64 0, !91, i64 208}
!729 = !{!728, !91, i64 208}
!730 = !{!"_ZTSN4ncnn5ReorgE", !71, i64 0, !14, i64 208, !14, i64 212}
!731 = !{!730, !14, i64 208}
!732 = !{!730, !14, i64 212}
!733 = !{!"_ZTSN4ncnn10RequantizeE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !77, i64 224, !77, i64 296, !77, i64 368, !77, i64 440}
!734 = !{!733, !14, i64 208}
!735 = !{!733, !14, i64 212}
!736 = !{!733, !14, i64 216}
!737 = !{!733, !14, i64 220}
!738 = !{!"_ZTSN4ncnn7ReshapeE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !58, i64 232}
!739 = !{!738, !14, i64 208}
!740 = !{!738, !14, i64 212}
!741 = !{!738, !14, i64 216}
!742 = !{!738, !14, i64 220}
!743 = !{!"_ZTSN4ncnn7RMSNormE", !71, i64 0, !14, i64 208, !91, i64 212, !14, i64 216, !77, i64 224}
!744 = !{!743, !14, i64 208}
!745 = !{!743, !91, i64 212}
!746 = !{!743, !14, i64 216}
!747 = !{!"_ZTSN4ncnn8ROIAlignE", !71, i64 0, !14, i64 208, !14, i64 212, !91, i64 216, !14, i64 220, !20, i64 224, !14, i64 228}
!748 = !{!747, !14, i64 208}
!749 = !{!747, !14, i64 212}
!750 = !{!747, !91, i64 216}
!751 = !{!747, !14, i64 220}
!752 = !{!747, !20, i64 224}
!753 = !{!747, !14, i64 228}
!754 = !{!"_ZTSN4ncnn10ROIPoolingE", !71, i64 0, !14, i64 208, !14, i64 212, !91, i64 216}
!755 = !{!754, !14, i64 208}
!756 = !{!754, !14, i64 212}
!757 = !{!754, !91, i64 216}
!758 = !{!"_ZTSN4ncnn11RotaryEmbedE", !71, i64 0, !14, i64 208}
!759 = !{!758, !14, i64 208}
!760 = !{!"_ZTSN4ncnn5ScaleE", !71, i64 0, !14, i64 208, !14, i64 212, !77, i64 216, !77, i64 288}
!761 = !{!760, !14, i64 208}
!762 = !{!760, !14, i64 212}
!763 = !{!181, !14, i64 208}
!764 = !{!181, !91, i64 212}
!765 = !{!181, !14, i64 216}
!766 = !{!"_ZTSN4ncnn14ShuffleChannelE", !71, i64 0, !14, i64 208, !14, i64 212}
!767 = !{!766, !14, i64 208}
!768 = !{!766, !14, i64 212}
!769 = !{!"_ZTSN4ncnn5SliceE", !71, i64 0, !77, i64 208, !77, i64 280, !14, i64 352}
!770 = !{!769, !14, i64 352}
!771 = !{!"_ZTSN4ncnn7SoftmaxE", !71, i64 0, !14, i64 208}
!772 = !{!771, !14, i64 208}
!773 = !{!"_ZTSN4ncnn7SqueezeE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !77, i64 224}
!774 = !{!773, !14, i64 208}
!775 = !{!773, !14, i64 212}
!776 = !{!773, !14, i64 216}
!777 = !{!773, !14, i64 220}
!778 = !{!"_ZTSN4ncnn9ThresholdE", !71, i64 0, !91, i64 208}
!779 = !{!778, !91, i64 208}
!780 = !{!"_ZTSN4ncnn4TileE", !71, i64 0, !14, i64 208, !14, i64 212, !77, i64 216}
!781 = !{!780, !14, i64 208}
!782 = !{!780, !14, i64 212}
!783 = !{!"_ZTSN4ncnn7UnaryOpE", !71, i64 0, !14, i64 208}
!784 = !{!783, !14, i64 208}
!785 = !{!"_ZTSN4ncnn6UnfoldE", !71, i64 0, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !91, i64 248}
!786 = !{!785, !14, i64 208}
!787 = !{!785, !14, i64 212}
!788 = !{!785, !14, i64 216}
!789 = !{!785, !14, i64 220}
!790 = !{!785, !14, i64 224}
!791 = !{!785, !14, i64 228}
!792 = !{!785, !14, i64 232}
!793 = !{!785, !14, i64 240}
!794 = !{!785, !14, i64 236}
!795 = !{!785, !14, i64 244}
!796 = !{!785, !91, i64 248}
!797 = !{!"_ZTSN4ncnn19YoloDetectionOutputE", !71, i64 0, !14, i64 208, !14, i64 212, !91, i64 216, !91, i64 220, !77, i64 224, !54, i64 296}
!798 = !{!797, !14, i64 208}
!799 = !{!797, !14, i64 212}
!800 = !{!797, !91, i64 216}
!801 = !{!797, !91, i64 220}
!802 = !{!"_ZTSN4ncnn21Yolov3DetectionOutputE", !71, i64 0, !14, i64 208, !14, i64 212, !91, i64 216, !91, i64 220, !77, i64 224, !77, i64 296, !77, i64 368, !14, i64 440, !54, i64 448}
!803 = !{!802, !14, i64 208}
!804 = !{!802, !14, i64 212}
!805 = !{!802, !91, i64 216}
!806 = !{!802, !91, i64 220}
!807 = distinct !{!807, !39}
!808 = distinct !{!808, !39}
!809 = distinct !{!809, !39}
!810 = distinct !{!810, !39}
!811 = distinct !{!811, !39}
!812 = distinct !{!812, !39}
!813 = distinct !{!813, !39}
!814 = !{!131, !21, i64 384}
!815 = distinct !{!815, i1 true, !"_ZN4ncnn3Mat5rangeEii"}
!816 = distinct !{!816, !815, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!817 = distinct !{!817, i1 true, !"_ZN4ncnn3Mat5rangeEii"}
!818 = distinct !{!818, !817, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!819 = distinct !{!819, i1 true, !"_ZN4ncnn3Mat5rangeEii"}
!820 = distinct !{!820, !819, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!821 = distinct !{!821, !39}
!822 = distinct !{!822, !39}
!823 = !{!816}
!824 = !{!818}
!825 = !{!820}
!826 = distinct !{!826, !39}
!827 = distinct !{!827, !39}
!828 = !{!176, !21, i64 328}
!829 = !{!176, !21, i64 256}
!830 = distinct !{!830, !39}
!831 = !{!163, !21, i64 336}
!832 = !{!163, !21, i64 264}
!833 = distinct !{!833, !39}
!834 = !{!154, !21, i64 328}
!835 = !{!154, !21, i64 256}
!836 = distinct !{!836, !39}
!837 = !{!141, !21, i64 264}
!838 = distinct !{!838, i1 false, !"LVerDomain"}
!839 = distinct !{!839, !838}
!840 = distinct !{!840, !838}
!841 = distinct !{!841, !39, !128, !129}
!842 = distinct !{!842, !100}
!843 = distinct !{!843, !39}
!844 = distinct !{!844, !39, !128}
!845 = distinct !{!845, !39, !128, !129}
!846 = distinct !{!846, !39}
!847 = distinct !{!847, !39, !129, !128}
!848 = distinct !{!848, i1 false, !"LVerDomain"}
!849 = distinct !{!849, !848}
!850 = distinct !{!850, !848}
!851 = distinct !{!851, !39, !128, !129}
!852 = distinct !{!852, !100}
!853 = distinct !{!853, !39}
!854 = distinct !{!854, !39, !128}
!855 = distinct !{!855, !39, !128, !129}
!856 = distinct !{!856, !39, !129, !128}
!857 = distinct !{!857, !39}
!858 = !{!839}
!859 = !{!840}
!860 = !{!849}
!861 = !{!850}
!862 = !{!144, !14, i64 404}
!863 = !{!144, !21, i64 392}
!864 = distinct !{!864, !39}
!865 = !{!169, !21, i64 712}
!866 = distinct !{!866, !39}
!867 = distinct !{!867, !39}
!868 = distinct !{!868, !39}
!869 = distinct !{!869, !39}
!870 = distinct !{!870, !39}
!871 = distinct !{!871, !39}
!872 = !{!131, !34, i64 368}
!873 = !{!137, !34, i64 376}
!874 = !{!84, !14, i64 36}
!875 = distinct !{!875, !39, !877}
!876 = !{!56, !56, i64 0}
!877 = !{!"llvm.loop.peeled.count", i32 1}
!878 = !{!193, !193, i64 0}
!879 = distinct !{!879, !39}
end_hunk_7
