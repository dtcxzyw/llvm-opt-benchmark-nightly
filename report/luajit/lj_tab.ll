Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_tab?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lj_tab_newkey:bb.a
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 13)
  %i.t = sub i32 %i.r, %i.s
  br label %hashkey.exit

bb.e:                                             ; preds = %bb.c
  %.off.i = add nsw i64 %i.c, 3
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = trunc nsw i64 %i.c to i32
  %i.v = sub nuw nsw i32 -2, %i.u
  br label %hashkey.exit

bb.g:                                             ; preds = %bb.e
  %i.w = xor i64 %i.f, %i.b
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 14)
  %i.z = sub i32 %i.x, %i.y                       ; 3 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 19)
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 13)
  %i.ad = sub i32 %i.ab, %i.ac
  br label %hashkey.exit

hashkey.exit:                                     ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.sink204 = phi i32 [ %i.k, %bb.b ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22 ; 4 uses
  %i.ag = and i32 %i.af, %.sink204                ; 2 uses
  %.sink.in.in.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sink.in.i = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %.sink.i = inttoptr i64 %.sink.in.i to ptr      ; 4 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %i.ah ; 11 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = icmp ne i64 %i.aj, -1
  %i.al = icmp eq i32 %i.af, 0
  %or.cond206 = or i1 %i.ak, %i.al
  br i1 %or.cond206, label %bb.h, label %.thread.thread

bb.h:                                             ; preds = %hashkey.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ao = inttoptr i64 %i.an to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.z, %bb.h
  %.078 = phi ptr [ %i.ao, %bb.h ], [ %i.en, %bb.z ] ; 6 uses
  %.not99 = icmp eq ptr %.078, %.sink.i           ; 2 uses
  br i1 %.not99, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, i8 0, i64 112, i1 false), !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !19 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %countarray.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = add nsw i32 %i.aq, -1                   ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv.i125 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i130, %._crit_edge.i ] ; 3 uses
  %.02547.i = phi i32 [ 0, %.preheader.i ], [ %.126.lcssa.i, %._crit_edge.i ] ; 12 uses
  %.02845.i = phi i32 [ 0, %.preheader.i ], [ %i.ce, %._crit_edge.i ] ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.i125 to i32
  %i.av = shl nuw nsw i32 2, %i.au                ; 2 uses
  %.not.i126 = icmp ult i32 %i.av, %i.aq
  br i1 %.not.i126, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp ugt i32 %.02547.i, %i.at
  br i1 %i.aw, label %countarray.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i127 = phi i32 [ %i.at, %bb.l ], [ %i.av, %bb.k ] ; 5 uses
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !20
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %.not3541.i = icmp ugt i32 %.02547.i, %.0.i127
  br i1 %.not3541.i, label %._crit_edge.i, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %bb.m
  %i.az = add i32 %.02547.i, 1
  %i.ba = add i32 %.0.i127, 1
  %i.bb = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %i.ba)
  %i.bc = sub i32 %i.bb, %.02547.i                ; 3 uses
  %min.iters.check = icmp ult i32 %i.bc, 12
  br i1 %min.iters.check, label %.lr.ph.i128.preheader220, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i128.preheader
  %i.bd = add i32 %.02547.i, 1
  %i.be = add i32 %.0.i127, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %i.be)
  %i.bf = add i32 %umax, -1
  %i.bg = icmp ult i32 %i.bf, %.02547.i
  br i1 %i.bg, label %.lr.ph.i128.preheader220, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.bc, -4                      ; 3 uses
  %i.bh = add i32 %.02547.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi218 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bi = add i32 %.02547.i, %index
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <2 x i64>, ptr %i.bk, align 8, !tbaa !21
  %wide.load219 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !21
  %i.bm = icmp ne <2 x i64> %wide.load, splat (i64 -1)
  %i.bn = icmp ne <2 x i64> %wide.load219, splat (i64 -1)
  %i.bo = zext <2 x i1> %i.bm to <2 x i32>
  %i.bp = zext <2 x i1> %i.bn to <2 x i32>
  %i.bq = add <2 x i32> %vec.phi, %i.bo           ; 2 uses
  %i.br = add <2 x i32> %vec.phi218, %i.bp        ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.bs = icmp eq i32 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i128.preheader220

.lr.ph.i128.preheader220:                         ; preds = %vector.scevcheck, %.lr.ph.i128.preheader, %middle.block
  %.02343.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i128.preheader ], [ %i.bt, %middle.block ]
  %.12642.i.ph = phi i32 [ %.02547.i, %vector.scevcheck ], [ %.02547.i, %.lr.ph.i128.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader220, %.lr.ph.i128
  %.02343.i = phi i32 [ %spec.select.i, %.lr.ph.i128 ], [ %.02343.i.ph, %.lr.ph.i128.preheader220 ]
  %.12642.i = phi i32 [ %i.bz, %.lr.ph.i128 ], [ %.12642.i.ph, %.lr.ph.i128.preheader220 ] ; 2 uses
  %i.bu = zext i32 %.12642.i to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !21
  %i.bx = icmp ne i64 %i.bw, -1
  %i.by = zext i1 %i.bx to i32
  %spec.select.i = add i32 %.02343.i, %i.by       ; 2 uses
  %i.bz = add i32 %.12642.i, 1                    ; 2 uses
  %.not35.i = icmp ugt i32 %i.bz, %.0.i127
  br i1 %.not35.i, label %._crit_edge.loopexit.i, label %.lr.ph.i128, !llvm.loop !73

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i128, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bt, %middle.block ], [ %spec.select.i, %.lr.ph.i128 ]
  %i.ca = tail call i32 @llvm.umax.i32(i32 %.02547.i, i32 %.0.i127)
  %umax.i129 = add nuw i32 %i.ca, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %.126.lcssa.i = phi i32 [ %.02547.i, %bb.m ], [ %umax.i129, %._crit_edge.loopexit.i ]
  %.023.lcssa.i = phi i32 [ 0, %bb.m ], [ %spec.select.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i125 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !81
  %i.cd = add i32 %i.cc, %.023.lcssa.i
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !81
  %i.ce = add i32 %.023.lcssa.i, %.02845.i        ; 2 uses
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i125, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i130, 28
  br i1 %exitcond.not.i, label %countarray.exit, label %bb.k, !llvm.loop !74

countarray.exit:                                  ; preds = %bb.l, %._crit_edge.i, %bb.j
  %.031.i = phi i32 [ 0, %bb.j ], [ %.02845.i, %bb.l ], [ %i.ce, %._crit_edge.i ] ; 2 uses
  %i.cf = add i32 %i.af, 1
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.cf, i32 1)
  %wide.trip.count.i = zext i32 %umax.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %countarray.exit
  %indvars.iv.i = phi i64 [ 0, %countarray.exit ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %.0142.i = phi i32 [ 0, %countarray.exit ], [ %.1.i124, %bb.r ] ; 2 uses
  %.0151.i = phi i32 [ 0, %countarray.exit ], [ %.116.i, %bb.r ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %indvars.iv.i ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !21
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = icmp ult i64 %i.ck, -1970324836974592
  br i1 %i.cl, label %bb.p, label %countint.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cm = bitcast i64 %i.ck to double
  %i.cn = tail call i64 @lj_vm_num2int_check(double noundef %i.cm) #14
  %i.co = trunc i64 %i.cn to i32                  ; 3 uses
  %i.cp = icmp ult i32 %i.co, 134217729
  br i1 %i.cp, label %bb.q, label %countint.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cq = icmp samesign ugt i32 %i.co, 2
  %i.cr = add nsw i32 %i.co, -1
  %i.cs = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.ct = xor i32 %i.cs, 31
  %narrow.i.i = select i1 %i.cq, i32 %i.ct, i32 0
  %i.cu = zext nneg i32 %narrow.i.i to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !81
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !81
  br label %countint.exit.i

countint.exit.i:                                  ; preds = %bb.q, %bb.p, %bb.o
  %.1.i.i = phi i32 [ 1, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ]
  %i.cy = add i32 %.1.i.i, %.0142.i
  %i.cz = add i32 %.0151.i, 1
  br label %bb.r

bb.r:                                             ; preds = %countint.exit.i, %bb.n
  %.116.i = phi i32 [ %.0151.i, %bb.n ], [ %i.cz, %countint.exit.i ] ; 2 uses
  %.1.i124 = phi i32 [ %.0142.i, %bb.n ], [ %i.cy, %countint.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %counthash.exit, label %bb.n, !llvm.loop !75

counthash.exit:                                   ; preds = %bb.r
  %i.da = add i32 %.031.i, 1
  %i.db = add i32 %.1.i124, %.031.i
  %i.dc = add i32 %i.da, %.116.i                  ; 2 uses
  %i.dd = icmp ult i64 %i.b, -1970324836974592
  br i1 %i.dd, label %bb.s, label %countint.exit

bb.s:                                             ; preds = %counthash.exit
  %i.de = bitcast i64 %i.b to double
  %i.df = tail call i64 @lj_vm_num2int_check(double noundef %i.de) #14
  %i.dg = trunc i64 %i.df to i32                  ; 3 uses
  %i.dh = icmp ult i32 %i.dg, 134217729
  br i1 %i.dh, label %bb.t, label %countint.exit

bb.t:                                             ; preds = %bb.s
  %i.di = icmp samesign ugt i32 %i.dg, 2
  %i.dj = add nsw i32 %i.dg, -1
  %i.dk = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.dj, i1 true)
  %i.dl = xor i32 %i.dk, 31
  %narrow.i = select i1 %i.di, i32 %i.dl, i32 0
  %i.dm = zext nneg i32 %narrow.i to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !81
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !81
  br label %countint.exit

countint.exit:                                    ; preds = %counthash.exit, %bb.s, %bb.t
  %.1.i123 = phi i32 [ 1, %bb.t ], [ 0, %counthash.exit ], [ 0, %bb.s ]
  %i.dq = add i32 %i.db, %.1.i123                 ; 2 uses
  %i.dr = shl i32 %i.dq, 1                        ; 2 uses
  %.not28.i = icmp eq i32 %i.dr, 0
  br i1 %.not28.i, label %bestasize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %countint.exit, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %countint.exit ] ; 4 uses
  %i.ds = phi i32 [ %i.ec, %bb.w ], [ 1, %countint.exit ]
  %.026.i = phi i32 [ %.1.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %.01625.i = phi i32 [ %.117.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %.01824.i = phi i32 [ %.119.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !81 ; 2 uses
  %.not.i122 = icmp eq i32 %i.du, 0
  br i1 %.not.i122, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.dv = add i32 %i.du, %.01824.i                ; 4 uses
  %i.dw = shl i32 %i.dv, 1
  %i.dx = icmp ugt i32 %i.dw, %i.ds
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = trunc nuw i64 %indvars.iv to i32
  %i.dz = shl i32 2, %i.dy
  %i.ea = or disjoint i32 %i.dz, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i
  %.119.i = phi i32 [ %i.dv, %bb.v ], [ %i.dv, %bb.u ], [ %.01824.i, %.lr.ph.i ] ; 2 uses
  %.117.i = phi i32 [ %i.dv, %bb.v ], [ %.01625.i, %bb.u ], [ %.01625.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ %i.ea, %bb.v ], [ %.026.i, %bb.u ], [ %.026.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %i.eb = trunc nuw i64 %indvars.iv to i32
  %i.ec = shl nuw i32 2, %i.eb                    ; 2 uses
  %i.ed = icmp ugt i32 %i.dr, %i.ec
  %i.ee = icmp ne i32 %.119.i, %i.dq
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %i.ef, label %.lr.ph.i, label %bestasize.exit, !llvm.loop !76

bestasize.exit:                                   ; preds = %bb.w, %countint.exit
  %.016.lcssa.i = phi i32 [ 0, %countint.exit ], [ %.117.i, %bb.w ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %countint.exit ], [ %.1.i, %bb.w ]
  %i.eg = sub i32 %i.dc, %.016.lcssa.i            ; 2 uses
  %.not.i = icmp eq i32 %i.dc, %.016.lcssa.i
  br i1 %.not.i, label %rehashtab.exit, label %bb.x

bb.x:                                             ; preds = %bestasize.exit
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %rehashtab.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = add i32 %i.eg, -1
  %i.ej = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ei, i1 true)
  %i.ek = sub nuw nsw i32 32, %i.ej
  br label %rehashtab.exit

rehashtab.exit:                                   ; preds = %bestasize.exit, %bb.x, %bb.y
  %i.el = phi i32 [ 1, %bb.x ], [ %i.ek, %bb.y ], [ 0, %bestasize.exit ]
  tail call void @lj_tab_resize(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %i.el), !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.em = tail call ptr @lj_tab_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %.thread

bb.z:                                             ; preds = %bb.i
  %i.en = getelementptr inbounds i8, ptr %.078, i64 -24 ; 5 uses
  %i.eo = getelementptr inbounds i8, ptr %.078, i64 -16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !21
  %.not = icmp eq i64 %i.ep, -1
  br i1 %.not, label %bb.aa, label %bb.i, !llvm.loop !78

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds i8, ptr %.078, i64 -16
  %i.er = ptrtoint ptr %i.en to i64               ; 3 uses
  store i64 %i.er, ptr %i.am, align 8, !tbaa !34
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8            ; 5 uses
  %i.eu = ashr i64 %i.et, 47                      ; 4 uses
  %i.ev = icmp eq i64 %i.eu, -5
  %i.ew = trunc i64 %i.et to i32
  %i.ex = lshr i64 %i.et, 32                      ; 2 uses
  %i.ey = trunc nuw i64 %i.ex to i32              ; 5 uses
  br i1 %i.ev, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ez = and i64 %i.et, 140737488355327
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !21
  br label %hashkey.exit107

bb.ac:                                            ; preds = %bb.aa
  %i.fd = icmp ult i64 %i.eu, -14
  br i1 %i.fd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fe = shl i32 %i.ey, 1                        ; 5 uses
  %i.ff = xor i32 %i.fe, %i.ew
  %i.fg = tail call i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 14)
  %i.fh = sub i32 %i.ff, %i.fg                    ; 3 uses
  %i.fi = tail call i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 19)
  %i.fj = xor i32 %i.fh, %i.fi
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.fh, i32 %i.fh, i32 13)
  %i.fl = sub i32 %i.fj, %i.fk
  br label %hashkey.exit107

bb.ae:                                            ; preds = %bb.ac
  %.off.i101 = add nsw i64 %i.eu, 3
  %switch.i102 = icmp ult i64 %.off.i101, 2
  br i1 %switch.i102, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fm = trunc nsw i64 %i.eu to i32
  %i.fn = sub nuw nsw i32 -2, %i.fm
  br label %hashkey.exit107

bb.ag:                                            ; preds = %bb.ae
  %i.fo = xor i64 %i.ex, %i.et
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 14)
  %i.fr = sub i32 %i.fp, %i.fq                    ; 3 uses
  %i.fs = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 19)
  %i.ft = xor i32 %i.fr, %i.fs
  %i.fu = tail call i32 @llvm.fshl.i32(i32 %i.fr, i32 %i.fr, i32 13)
  %i.fv = sub i32 %i.ft, %i.fu
  br label %hashkey.exit107

hashkey.exit107:                                  ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.pn = phi i32 [ %i.fv, %bb.ag ], [ %i.fn, %bb.af ], [ %i.fl, %bb.ad ], [ %i.fc, %bb.ab ]
  %.sink18.i103 = and i32 %i.af, %.pn             ; 2 uses
  %.not93 = icmp eq i32 %.sink18.i103, %i.ag
  br i1 %.not93, label %.thread136, label %.preheader.preheader

.preheader.preheader:                             ; preds = %hashkey.exit107
  %i.fw = zext i32 %.sink18.i103 to i64
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %i.fw
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.080 = phi ptr [ %i.ga, %.preheader ], [ %i.fx, %.preheader.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.080, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !25
  %i.ga = inttoptr i64 %i.fz to ptr               ; 2 uses
  %.not94 = icmp eq ptr %i.ai, %i.ga
  br i1 %.not94, label %bb.ah, label %.preheader, !llvm.loop !79

bb.ah:                                            ; preds = %.preheader
  %i.gb = getelementptr inbounds nuw i8, ptr %.080, i64 16
  store i64 %i.er, ptr %i.gb, align 8, !tbaa !25
  %i.gc = load i64, ptr %i.ai, align 8, !tbaa !21
  store i64 %i.gc, ptr %i.en, align 8, !tbaa !21
  %i.gd = load i64, ptr %i.es, align 8, !tbaa !21
  store i64 %i.gd, ptr %i.eq, align 8, !tbaa !21
  %i.ge = getelementptr inbounds i8, ptr %.078, i64 -8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !82
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !82
  store i64 0, ptr %i.gf, align 8, !tbaa !25
  store i64 -1, ptr %i.ai, align 8, !tbaa !21
  %i.gh = load i64, ptr %i.ge, align 8, !tbaa !25 ; 2 uses
  %.not95151 = icmp eq i64 %i.gh, 0
  br i1 %.not95151, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 52
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ba
  %i.gj = phi i64 [ %i.gh, %.lr.ph ], [ %i.jt, %bb.ba ] ; 2 uses
  %.179152 = phi ptr [ %i.en, %.lr.ph ], [ %i.gk, %bb.ba ] ; 2 uses
  %i.gk = inttoptr i64 %i.gj to ptr               ; 5 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !21
  %i.gm = icmp eq i64 %i.gl, -1
  br i1 %i.gm, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load i64, ptr %i.gn, align 8            ; 5 uses
  %i.gp = ashr i64 %i.go, 47                      ; 4 uses
  %i.gq = icmp eq i64 %i.gp, -5
  %i.gr = trunc i64 %i.go to i32
  %i.gs = lshr i64 %i.go, 32                      ; 2 uses
  %i.gt = trunc nuw i64 %i.gs to i32              ; 5 uses
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gu = and i64 %i.go, 140737488355327
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
end_hunk_0
