Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_tab?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lj_tab_newkey:bb.a
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
  br i1 %min.iters.check, label %.lr.ph.i128.preheader219, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i128.preheader
  %i.bd = add i32 %.02547.i, 1
  %i.be = add i32 %.0.i127, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %i.be)
  %i.bf = add i32 %umax, -1
  %i.bg = icmp ult i32 %i.bf, %.02547.i
  br i1 %i.bg, label %.lr.ph.i128.preheader219, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.bc, -4                      ; 3 uses
  %i.bh = add i32 %.02547.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi217 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bi = add i32 %.02547.i, %index
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <2 x i64>, ptr %i.bk, align 8, !tbaa !21
  %wide.load218 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !21
  %i.bm = icmp ne <2 x i64> %wide.load, splat (i64 -1)
  %i.bn = icmp ne <2 x i64> %wide.load218, splat (i64 -1)
  %i.bo = zext <2 x i1> %i.bm to <2 x i32>
  %i.bp = zext <2 x i1> %i.bn to <2 x i32>
  %i.bq = add <2 x i32> %vec.phi, %i.bo           ; 2 uses
  %i.br = add <2 x i32> %vec.phi217, %i.bp        ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.bs = icmp eq i32 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i128.preheader219

.lr.ph.i128.preheader219:                         ; preds = %vector.scevcheck, %.lr.ph.i128.preheader, %middle.block
  %.02343.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i128.preheader ], [ %i.bt, %middle.block ]
  %.12642.i.ph = phi i32 [ %.02547.i, %vector.scevcheck ], [ %.02547.i, %.lr.ph.i128.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader219, %.lr.ph.i128
  %.02343.i = phi i32 [ %spec.select.i, %.lr.ph.i128 ], [ %.02343.i.ph, %.lr.ph.i128.preheader219 ]
  %.12642.i = phi i32 [ %i.bz, %.lr.ph.i128 ], [ %.12642.i.ph, %.lr.ph.i128.preheader219 ] ; 2 uses
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
  %i.cs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
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
  %i.dk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dj, i1 true)
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
  %.026.i.a = phi i32 [ %i.dz, %bb.w ], [ 1, %countint.exit ]
  %.01625.i.a = phi i32 [ %.1.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %.01824.i.a = phi i32 [ %.117.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %.02023.i = phi i32 [ %.119.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !81 ; 2 uses
  %.not.i122 = icmp eq i32 %i.dt, 0
  br i1 %.not.i122, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.du = add i32 %i.dt, %.02023.i                ; 4 uses
  %i.dv = shl i32 %i.du, 1
  %i.dw = icmp ugt i32 %i.dv, %.026.i.a
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %3 = trunc nuw i64 %indvars.iv to i32
  %i.dx = shl i32 2, %3
  %i.dy = or disjoint i32 %i.dx, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i
  %.119.i = phi i32 [ %i.du, %bb.v ], [ %i.du, %bb.u ], [ %.02023.i, %.lr.ph.i ] ; 2 uses
  %.117.i = phi i32 [ %i.du, %bb.v ], [ %.01824.i.a, %bb.u ], [ %.01824.i.a, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ %i.dy, %bb.v ], [ %.01625.i.a, %bb.u ], [ %.01625.i.a, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %4 = trunc nuw i64 %indvars.iv to i32
  %i.dz = shl nuw i32 2, %4                       ; 2 uses
  %i.ea = icmp ugt i32 %i.dr, %i.dz
  %i.eb = icmp ne i32 %.119.i, %i.dq
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %.lr.ph.i, label %bestasize.exit, !llvm.loop !76

bestasize.exit:                                   ; preds = %bb.w, %countint.exit
  %.016.lcssa.i = phi i32 [ 0, %countint.exit ], [ %.117.i, %bb.w ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %countint.exit ], [ %.1.i, %bb.w ]
  %i.ed = sub i32 %i.dc, %.016.lcssa.i            ; 2 uses
  %.not.i = icmp eq i32 %i.dc, %.016.lcssa.i
  br i1 %.not.i, label %rehashtab.exit, label %bb.x

bb.x:                                             ; preds = %bestasize.exit
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %rehashtab.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = add i32 %i.ed, -1
  %i.eg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ef, i1 true)
  %i.eh = sub nuw nsw i32 32, %i.eg
  br label %rehashtab.exit

rehashtab.exit:                                   ; preds = %bestasize.exit, %bb.x, %bb.y
  %i.ei = phi i32 [ 1, %bb.x ], [ %i.eh, %bb.y ], [ 0, %bestasize.exit ]
  tail call void @lj_tab_resize(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %i.ei), !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ej = tail call ptr @lj_tab_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %.thread

bb.z:                                             ; preds = %bb.i
  %i.ek = getelementptr inbounds i8, ptr %.078, i64 -24 ; 5 uses
  %i.el = getelementptr inbounds i8, ptr %.078, i64 -16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !21
  %.not = icmp eq i64 %i.em, -1
  br i1 %.not, label %bb.aa, label %bb.i, !llvm.loop !78

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds i8, ptr %.078, i64 -16
  %i.eo = ptrtoint ptr %i.ek to i64               ; 3 uses
  store i64 %i.eo, ptr %i.am, align 8, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 5 uses
  %i.er = ashr i64 %i.eq, 47                      ; 4 uses
  %i.es = icmp eq i64 %i.er, -5
  %i.et = trunc i64 %i.eq to i32
  %i.eu = lshr i64 %i.eq, 32                      ; 2 uses
  %i.ev = trunc nuw i64 %i.eu to i32              ; 5 uses
  br i1 %i.es, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = and i64 %i.eq, 140737488355327
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !21
  br label %hashkey.exit107

bb.ac:                                            ; preds = %bb.aa
  %i.fa = icmp ult i64 %i.er, -14
  br i1 %i.fa, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fb = shl i32 %i.ev, 1                        ; 5 uses
  %i.fc = xor i32 %i.fb, %i.et
  %i.fd = tail call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 14)
  %i.fe = sub i32 %i.fc, %i.fd                    ; 3 uses
  %i.ff = tail call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 19)
  %i.fg = xor i32 %i.fe, %i.ff
  %i.fh = tail call i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 13)
  %i.fi = sub i32 %i.fg, %i.fh
  br label %hashkey.exit107

bb.ae:                                            ; preds = %bb.ac
  %.off.i101 = add nsw i64 %i.er, 3
  %switch.i102 = icmp ult i64 %.off.i101, 2
  br i1 %switch.i102, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fj = trunc nsw i64 %i.er to i32
  %i.fk = sub nuw nsw i32 -2, %i.fj
  br label %hashkey.exit107

bb.ag:                                            ; preds = %bb.ae
  %i.fl = xor i64 %i.eu, %i.eq
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 14)
  %i.fo = sub i32 %i.fm, %i.fn                    ; 3 uses
  %i.fp = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 19)
  %i.fq = xor i32 %i.fo, %i.fp
  %i.fr = tail call i32 @llvm.fshl.i32(i32 %i.fo, i32 %i.fo, i32 13)
  %i.fs = sub i32 %i.fq, %i.fr
  br label %hashkey.exit107

hashkey.exit107:                                  ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.pn = phi i32 [ %i.fs, %bb.ag ], [ %i.fk, %bb.af ], [ %i.fi, %bb.ad ], [ %i.ez, %bb.ab ]
  %.sink18.i103 = and i32 %i.af, %.pn             ; 2 uses
  %.not93 = icmp eq i32 %.sink18.i103, %i.ag
  br i1 %.not93, label %.thread136, label %.preheader.preheader

.preheader.preheader:                             ; preds = %hashkey.exit107
  %i.ft = zext i32 %.sink18.i103 to i64
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %i.ft
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.080 = phi ptr [ %i.fx, %.preheader ], [ %i.fu, %.preheader.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.080, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !25
  %i.fx = inttoptr i64 %i.fw to ptr               ; 2 uses
  %.not94 = icmp eq ptr %i.ai, %i.fx
  br i1 %.not94, label %bb.ah, label %.preheader, !llvm.loop !79

bb.ah:                                            ; preds = %.preheader
  %i.fy = getelementptr inbounds nuw i8, ptr %.080, i64 16
  store i64 %i.eo, ptr %i.fy, align 8, !tbaa !25
  %i.fz = load i64, ptr %i.ai, align 8, !tbaa !21
  store i64 %i.fz, ptr %i.ek, align 8, !tbaa !21
  %i.ga = load i64, ptr %i.ep, align 8, !tbaa !21
  store i64 %i.ga, ptr %i.en, align 8, !tbaa !21
  %i.gb = getelementptr inbounds i8, ptr %.078, i64 -8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !82
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !82
  store i64 0, ptr %i.gc, align 8, !tbaa !25
  store i64 -1, ptr %i.ai, align 8, !tbaa !21
  %i.ge = load i64, ptr %i.gb, align 8, !tbaa !25 ; 2 uses
  %.not95151 = icmp eq i64 %i.ge, 0
  br i1 %.not95151, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 52
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ba
  %i.gg = phi i64 [ %i.ge, %.lr.ph ], [ %i.jq, %bb.ba ] ; 2 uses
  %.179152 = phi ptr [ %i.ek, %.lr.ph ], [ %i.gh, %bb.ba ] ; 2 uses
  %i.gh = inttoptr i64 %i.gg to ptr               ; 5 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !21
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load i64, ptr %i.gk, align 8            ; 5 uses
  %i.gm = ashr i64 %i.gl, 47                      ; 4 uses
  %i.gn = icmp eq i64 %i.gm, -5
  %i.go = trunc i64 %i.gl to i32
  %i.gp = lshr i64 %i.gl, 32                      ; 2 uses
  %i.gq = trunc nuw i64 %i.gp to i32              ; 5 uses
  br i1 %i.gn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gr = and i64 %i.gl, 140737488355327
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !21
  br label %hashkey.exit114

bb.al:                                            ; preds = %bb.aj
  %i.gv = icmp ult i64 %i.gm, -14
  br i1 %i.gv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gw = shl i32 %i.gq, 1                        ; 5 uses
  %i.gx = xor i32 %i.gw, %i.go
  %i.gy = tail call i32 @llvm.fshl.i32(i32 %i.gw, i32 %i.gw, i32 14)
  %i.gz = sub i32 %i.gx, %i.gy                    ; 3 uses
  %i.ha = tail call i32 @llvm.fshl.i32(i32 %i.gw, i32 %i.gw, i32 19)
  %i.hb = xor i32 %i.gz, %i.ha
  %i.hc = tail call i32 @llvm.fshl.i32(i32 %i.gz, i32 %i.gz, i32 13)
  %i.hd = sub i32 %i.hb, %i.hc
  br label %hashkey.exit114

bb.an:                                            ; preds = %bb.al
  %.off.i108 = add nsw i64 %i.gm, 3
  %switch.i109 = icmp ult i64 %.off.i108, 2
  br i1 %switch.i109, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.he = trunc nsw i64 %i.gm to i32
  %i.hf = sub nuw nsw i32 -2, %i.he
  br label %hashkey.exit114

bb.ap:                                            ; preds = %bb.an
  %i.hg = xor i64 %i.gp, %i.gl
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = tail call i32 @llvm.fshl.i32(i32 %i.gq, i32 %i.gq, i32 14)
  %i.hj = sub i32 %i.hh, %i.hi                    ; 3 uses
  %i.hk = tail call i32 @llvm.fshl.i32(i32 %i.gq, i32 %i.gq, i32 19)
  %i.hl = xor i32 %i.hj, %i.hk
  %i.hm = tail call i32 @llvm.fshl.i32(i32 %i.hj, i32 %i.hj, i32 13)
  %i.hn = sub i32 %i.hl, %i.hm
  br label %hashkey.exit114

hashkey.exit114:                                  ; preds = %bb.ak, %bb.am, %bb.ao, %bb.ap
  %.sink206 = phi i32 [ %i.gu, %bb.ak ], [ %i.hd, %bb.am ], [ %i.hf, %bb.ao ], [ %i.hn, %bb.ap ]
  %i.ho = load i32, ptr %i.gf, align 4, !tbaa !22 ; 2 uses
  %i.hp = and i32 %i.ho, %.sink206
  %.sink.in.i112 = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %.sink.i113 = inttoptr i64 %.sink.in.i112 to ptr
  %i.hq = zext i32 %i.hp to i64
end_hunk_0
