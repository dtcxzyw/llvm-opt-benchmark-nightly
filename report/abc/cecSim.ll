inline.NumInlined: 148
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@Cec_ManSRunImply:bb.a
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph210
  %index214 = phi i64 [ 0, %vector.ph210 ], [ %index.next219, %vector.body213 ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index214 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %wide.load215 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !49, !alias.scope !108, !noalias !111
  %wide.load216 = load <2 x i64>, ptr %i.iv, align 8, !tbaa !49, !alias.scope !108, !noalias !111
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %index214 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load217 = load <2 x i64>, ptr %i.iw, align 8, !tbaa !49, !alias.scope !111
  %wide.load218 = load <2 x i64>, ptr %i.ix, align 8, !tbaa !49, !alias.scope !111
  %i.iy = xor <2 x i64> %wide.load217, splat (i64 -1)
  %i.iz = xor <2 x i64> %wide.load218, splat (i64 -1)
  %i.ja = and <2 x i64> %wide.load215, %i.iy
  %i.jb = and <2 x i64> %wide.load216, %i.iz
  store <2 x i64> %i.ja, ptr %i.iu, align 8, !tbaa !49, !alias.scope !108, !noalias !111
  store <2 x i64> %i.jb, ptr %i.iv, align 8, !tbaa !49, !alias.scope !108, !noalias !111
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.jc = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.jc, label %middle.block220, label %vector.body213, !llvm.loop !113

middle.block220:                                  ; preds = %vector.body213
  %cmp.n221 = icmp eq i64 %n.vec212, %wide.trip.count.i
  br i1 %cmp.n221, label %.lr.ph.i112.preheader, label %.lr.ph.i106.preheader246

.lr.ph.i106.preheader246:                         ; preds = %vector.memcheck202, %.lr.ph.i106.preheader, %middle.block220
  %indvars.iv.i107.ph = phi i64 [ 0, %vector.memcheck202 ], [ 0, %.lr.ph.i106.preheader ], [ %n.vec212, %middle.block220 ] ; 5 uses
  %xtraiter259 = and i64 %wide.trip.count.i, 1
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph.i106.prol.loopexit, label %.lr.ph.i106.prol

.lr.ph.i106.prol:                                 ; preds = %.lr.ph.i106.preheader246
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i107.ph ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !49
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %indvars.iv.i107.ph
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !49
  %i.jh = xor i64 %i.jg, -1
  %i.ji = and i64 %i.je, %i.jh
  store i64 %i.ji, ptr %i.jd, align 8, !tbaa !49
  %indvars.iv.next.i108.prol = or disjoint i64 %indvars.iv.i107.ph, 1
  br label %.lr.ph.i106.prol.loopexit

.lr.ph.i106.prol.loopexit:                        ; preds = %.lr.ph.i106.prol, %.lr.ph.i106.preheader246
  %indvars.iv.i107.unr = phi i64 [ %indvars.iv.i107.ph, %.lr.ph.i106.preheader246 ], [ %indvars.iv.next.i108.prol, %.lr.ph.i106.prol ]
  %i.jj = add nsw i64 %wide.trip.count.i, -1
  %i.jk = icmp eq i64 %indvars.iv.i107.ph, %i.jj
  br i1 %i.jk, label %.lr.ph.i112.preheader, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108.1, %.lr.ph.i106 ], [ %indvars.iv.i107.unr, %.lr.ph.i106.prol.loopexit ] ; 4 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i107 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !49
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %indvars.iv.i107
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !49
  %i.jp = xor i64 %i.jo, -1
  %i.jq = and i64 %i.jm, %i.jp
  store i64 %i.jq, ptr %i.jl, align 8, !tbaa !49
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i108 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !49
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %indvars.iv.next.i108
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !49
  %i.jv = xor i64 %i.ju, -1
  %i.jw = and i64 %i.js, %i.jv
  store i64 %i.jw, ptr %i.jr, align 8, !tbaa !49
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i107, 2 ; 2 uses
  %exitcond.not.i109.1 = icmp eq i64 %indvars.iv.next.i108.1, %wide.trip.count.i
  br i1 %exitcond.not.i109.1, label %.lr.ph.i112.preheader, label %.lr.ph.i106, !llvm.loop !114

.lr.ph.i112.preheader:                            ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106, %middle.block220
  %min.iters.check231 = icmp ult i32 %.val80, 14
  br i1 %min.iters.check231, label %.lr.ph.i112.preheader245, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph.i112.preheader
  %i.jx = or disjoint i32 %i.r, 1
  %i.jy = mul i32 %.val80, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = shl nsw i64 %i.jz, 3                    ; 2 uses
  %scevgep224 = getelementptr i8, ptr %.val83.val, i64 %i.ka
  %i.kb = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.kc = getelementptr i8, ptr %.val83.val, i64 %i.ka
  %scevgep225 = getelementptr i8, ptr %i.kc, i64 %i.kb
  %scevgep226 = getelementptr i8, ptr %.val83.val, i64 %i.kb
  %bound0227 = icmp ult ptr %scevgep224, %scevgep226
  %bound1228 = icmp ult ptr %.val83.val, %scevgep225
  %found.conflict229 = and i1 %bound0227, %bound1228
  br i1 %found.conflict229, label %.lr.ph.i112.preheader245, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck223
  %n.vec234 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph232
  %index236 = phi i64 [ 0, %vector.ph232 ], [ %index.next241, %vector.body235 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index236 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %wide.load237 = load <2 x i64>, ptr %i.kd, align 8, !tbaa !49, !alias.scope !115, !noalias !118
  %wide.load238 = load <2 x i64>, ptr %i.ke, align 8, !tbaa !49, !alias.scope !115, !noalias !118
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %index236 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load239 = load <2 x i64>, ptr %i.kf, align 8, !tbaa !49, !alias.scope !118
  %wide.load240 = load <2 x i64>, ptr %i.kg, align 8, !tbaa !49, !alias.scope !118
  %i.kh = xor <2 x i64> %wide.load239, splat (i64 -1)
  %i.ki = xor <2 x i64> %wide.load240, splat (i64 -1)
  %i.kj = and <2 x i64> %wide.load237, %i.kh
  %i.kk = and <2 x i64> %wide.load238, %i.ki
  store <2 x i64> %i.kj, ptr %i.kd, align 8, !tbaa !49, !alias.scope !115, !noalias !118
  store <2 x i64> %i.kk, ptr %i.ke, align 8, !tbaa !49, !alias.scope !115, !noalias !118
  %index.next241 = add nuw i64 %index236, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.kl, label %middle.block242, label %vector.body235, !llvm.loop !120

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %n.vec234, %wide.trip.count.i
  br i1 %cmp.n243, label %Abc_TtAndSharp.exit116, label %.lr.ph.i112.preheader245

.lr.ph.i112.preheader245:                         ; preds = %vector.memcheck223, %.lr.ph.i112.preheader, %middle.block242
  %indvars.iv.i113.ph = phi i64 [ 0, %vector.memcheck223 ], [ 0, %.lr.ph.i112.preheader ], [ %n.vec234, %middle.block242 ] ; 5 uses
  %xtraiter262 = and i64 %wide.trip.count.i, 1
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph.i112.prol.loopexit, label %.lr.ph.i112.prol

.lr.ph.i112.prol:                                 ; preds = %.lr.ph.i112.preheader245
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i113.ph ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !49
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %indvars.iv.i113.ph
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !49
  %i.kq = xor i64 %i.kp, -1
  %i.kr = and i64 %i.kn, %i.kq
  store i64 %i.kr, ptr %i.km, align 8, !tbaa !49
  %indvars.iv.next.i114.prol = or disjoint i64 %indvars.iv.i113.ph, 1
  br label %.lr.ph.i112.prol.loopexit

.lr.ph.i112.prol.loopexit:                        ; preds = %.lr.ph.i112.prol, %.lr.ph.i112.preheader245
  %indvars.iv.i113.unr = phi i64 [ %indvars.iv.i113.ph, %.lr.ph.i112.preheader245 ], [ %indvars.iv.next.i114.prol, %.lr.ph.i112.prol ]
  %i.ks = add nsw i64 %wide.trip.count.i, -1
  %i.kt = icmp eq i64 %indvars.iv.i113.ph, %i.ks
  br i1 %i.kt, label %Abc_TtAndSharp.exit116, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i114.1, %.lr.ph.i112 ], [ %indvars.iv.i113.unr, %.lr.ph.i112.prol.loopexit ] ; 4 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i113 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !49
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %indvars.iv.i113
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !49
  %i.ky = xor i64 %i.kx, -1
  %i.kz = and i64 %i.kv, %i.ky
  store i64 %i.kz, ptr %i.ku, align 8, !tbaa !49
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i114 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !49
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.val83.val, i64 %indvars.iv.next.i114
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !49
  %i.le = xor i64 %i.ld, -1
  %i.lf = and i64 %i.lb, %i.le
  store i64 %i.lf, ptr %i.la, align 8, !tbaa !49
  %indvars.iv.next.i114.1 = add nuw nsw i64 %indvars.iv.i113, 2 ; 2 uses
  %exitcond.not.i115.1 = icmp eq i64 %indvars.iv.next.i114.1, %wide.trip.count.i
  br i1 %exitcond.not.i115.1, label %Abc_TtAndSharp.exit116, label %.lr.ph.i112, !llvm.loop !121

Abc_TtAndSharp.exit116:                           ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112, %middle.block242, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Cec_ManSRunPropagate(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.d ; 2 uses
  %.val125 = load i64, ptr %i.e, align 4          ; 2 uses
  %i.f = trunc i64 %.val125 to i32
  %i.g = and i32 %i.f, 536870911                  ; 4 uses
  %i.h = sub nsw i32 %1, %i.g
  %i.i = lshr i64 %.val125, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = and i32 %i.j, 536870911                  ; 4 uses
  %i.l = sub nsw i32 %1, %i.k
  %.val143 = load i32, ptr %0, align 8, !tbaa !8  ; 31 uses
  %i.m = getelementptr i8, ptr %0, i64 40
  %.val144 = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.n = getelementptr i8, ptr %.val144, i64 8
  %.val144.val = load ptr, ptr %i.n, align 8, !tbaa !45 ; 75 uses
  %.val144.val279 = ptrtoaddr ptr %.val144.val to i64 ; 2 uses
  %i.o = shl i32 %1, 1                            ; 10 uses
  %i.p = mul i32 %.val143, %i.o
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %.val144.val, i64 %i.q ; 13 uses
  %i.s = or disjoint i32 %i.o, 1
  %i.t = mul nsw i32 %.val143, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val144.val, i64 %i.u ; 15 uses
  %i.w = icmp sgt i32 %.val143, 0
  br i1 %i.w, label %.lr.ph.preheader.i, label %.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %.val143 to i64 ; 83 uses
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i148, label %.lr.ph.i, !llvm.loop !122

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.b, label %Abc_TtIsConst0.exit

bb.c:                                             ; preds = %.lr.ph.i148
  %indvars.iv.next.i151 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %exitcond.not.i152 = icmp eq i64 %indvars.iv.next.i151, %wide.trip.count.i
  br i1 %exitcond.not.i152, label %.thread, label %.lr.ph.i148, !llvm.loop !122

.lr.ph.i148:                                      ; preds = %bb.b, %bb.c
  %indvars.iv.i149 = phi i64 [ %indvars.iv.next.i151, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i149
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %.not.i150 = icmp eq i64 %i.aa, 0
  br i1 %.not.i150, label %bb.c, label %Abc_TtIsConst0.exit

.thread:                                          ; preds = %bb.c, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !123
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !123
  br label %Abc_TtAndSharp.exit240

Abc_TtIsConst0.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i148
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 988 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !124
  %.val127 = load i64, ptr %i.e, align 4          ; 2 uses
  %i.ah = trunc i64 %.val127 to i32
  %i.ai = lshr i32 %i.ah, 29
  %i.aj = and i32 %i.ai, 1                        ; 4 uses
  %i.ak = shl nsw i32 %i.h, 1
  %i.al = or disjoint i32 %i.aj, %i.ak            ; 2 uses
  %i.am = mul nsw i32 %i.al, %.val143
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val144.val, i64 %i.an ; 17 uses
  %i.ap = xor i32 %i.al, 1
  %i.aq = mul i32 %i.ap, %.val143
  %i.ar = sext i32 %i.aq to i64                   ; 5 uses
  %i.as = getelementptr [8 x i8], ptr %.val144.val, i64 %i.ar ; 29 uses
  %i.at = lshr i64 %.val127, 61
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 1                        ; 4 uses
  %i.aw = shl nsw i32 %i.l, 1
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %.val143
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %.val144.val, i64 %i.az ; 17 uses
  %i.bb = xor i32 %i.ax, 1
  %i.bc = mul i32 %i.bb, %.val143
  %i.bd = sext i32 %i.bc to i64                   ; 5 uses
  %i.be = getelementptr [8 x i8], ptr %.val144.val, i64 %i.bd ; 28 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !125 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 112
  %i.bi = add nsw i32 %i.bg, 1
  %spec.select = select i1 %i.bh, i32 0, i32 %i.bi ; 3 uses
  store i32 %spec.select, ptr %i.bf, align 4, !tbaa !125
  %i.bj = icmp eq i32 %.val143, 1
  br i1 %i.bj, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtIsConst0.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48
  %wide.trip.count = zext nneg i32 %.val143 to i64
  br label %bb.e

bb.d:                                             ; preds = %Abc_TtIsConst0.exit
  %i.bn = load i64, ptr %i.v, align 8, !tbaa !49
  %i.bo = load i64, ptr %i.as, align 8, !tbaa !49
  %i.bp = or i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.as, align 8, !tbaa !49
  %i.bq = load i64, ptr %i.v, align 8, !tbaa !49
  %i.br = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bs = or i64 %i.br, %i.bq                     ; 2 uses
  store i64 %i.bs, ptr %i.be, align 8, !tbaa !49
  %i.bt = load i64, ptr %i.r, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bv = sext i32 %spec.select to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !49
  %i.by = xor i64 %i.bx, -1
  %i.bz = or i64 %i.bs, %i.by
  %i.ca = and i64 %i.bz, %i.bt
  %i.cb = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.cc = or i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.ao, align 8, !tbaa !49
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !49
  %i.ce = load i64, ptr %i.as, align 8, !tbaa !49
  %i.cf = load i64, ptr %i.bw, align 8, !tbaa !49
  %i.cg = or i64 %i.cf, %i.ce
  %i.ch = and i64 %i.cg, %i.cd
  %i.ci = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.cj = or i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.ba, align 8, !tbaa !49
  %i.ck = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.cl = load i64, ptr %i.as, align 8, !tbaa !49
  %i.cm = and i64 %i.cl, %i.ck
  %i.cn = load i64, ptr %.val144.val, align 8, !tbaa !49
  %i.co = or i64 %i.cn, %i.cm                     ; 2 uses
  store i64 %i.co, ptr %.val144.val, align 8, !tbaa !49
  %i.cp = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.cq = load i64, ptr %i.be, align 8, !tbaa !49
  %i.cr = and i64 %i.cq, %i.cp
  %i.cs = or i64 %i.cr, %i.co                     ; 2 uses
  store i64 %i.cs, ptr %.val144.val, align 8, !tbaa !49
  %i.ct = xor i64 %i.cs, -1
  %i.cu = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.cv = and i64 %i.cu, %i.ct
  store i64 %i.cv, ptr %i.ao, align 8, !tbaa !49
  %i.cw = load i64, ptr %.val144.val, align 8, !tbaa !49
  %i.cx = xor i64 %i.cw, -1
  %i.cy = load i64, ptr %i.as, align 8, !tbaa !49
  %i.cz = and i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %i.as, align 8, !tbaa !49
  %i.da = load i64, ptr %.val144.val, align 8, !tbaa !49
  %i.db = xor i64 %i.da, -1
  %i.dc = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.dd = and i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.ba, align 8, !tbaa !49
  %i.de = load i64, ptr %.val144.val, align 8, !tbaa !49
  %i.df = xor i64 %i.de, -1
  %i.dg = load i64, ptr %i.be, align 8, !tbaa !49
  %i.dh = and i64 %i.dg, %i.df
  store i64 %i.dh, ptr %i.be, align 8, !tbaa !49
  br label %Abc_TtAndSharp.exit240

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %niter = phi i64 [ 0, %.lr.ph ], [ %niter.next.1, %bb.e ] ; 3 uses
  %i.di = trunc i64 %niter to i32
  %i.dj = add i32 %spec.select, %i.di
  %i.dk = srem i32 %i.dj, 113
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49
  %i.do = xor i64 %i.dn, -1
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %niter
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !49
  %niter.next.1 = add nuw nsw i64 %niter, 1       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count
  br i1 %niter.ncmp.1, label %.lr.ph.i156.preheader, label %bb.e, !llvm.loop !126

.lr.ph.i156.preheader:                            ; preds = %bb.e
  %min.iters.check = icmp ult i32 %.val143, 20
  br i1 %min.iters.check, label %.lr.ph.i156.preheader541, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i156.preheader
  %i.dq = add nsw i64 %i.ar, %wide.trip.count.i
  %i.dr = shl nsw i64 %i.dq, 3
  %scevgep = getelementptr i8, ptr %.val144.val, i64 %i.dr
  %i.ds = or disjoint i32 %i.o, 1
  %i.dt = mul i32 %.val143, %i.ds
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = shl nsw i64 %i.du, 3
  %scevgep251 = getelementptr i8, ptr %.val144.val, i64 %i.dv
  %i.dw = add nsw i64 %i.du, %wide.trip.count.i
  %i.dx = shl nsw i64 %i.dw, 3
  %scevgep252 = getelementptr i8, ptr %.val144.val, i64 %i.dx
  %bound0 = icmp ult ptr %i.as, %scevgep252
  %bound1 = icmp ult ptr %scevgep251, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i156.preheader541, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dy, align 8, !tbaa !49, !alias.scope !127, !noalias !130
  %wide.load253 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !49, !alias.scope !127, !noalias !130
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load254 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !49, !alias.scope !130
  %wide.load255 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !49, !alias.scope !130
  %i.ec = or <2 x i64> %wide.load254, %wide.load
  %i.ed = or <2 x i64> %wide.load255, %wide.load253
  store <2 x i64> %i.ec, ptr %i.dy, align 8, !tbaa !49, !alias.scope !127, !noalias !130
  store <2 x i64> %i.ed, ptr %i.dz, align 8, !tbaa !49, !alias.scope !127, !noalias !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.i162.preheader, label %.lr.ph.i156.preheader541

.lr.ph.i156.preheader541:                         ; preds = %vector.memcheck, %.lr.ph.i156.preheader, %middle.block
  %indvars.iv.i157.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i156.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter544 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod545.not, label %.lr.ph.i156.prol.loopexit, label %.lr.ph.i156.prol

.lr.ph.i156.prol:                                 ; preds = %.lr.ph.i156.preheader541, %.lr.ph.i156.prol
  %indvars.iv.i157.prol = phi i64 [ %indvars.iv.next.i158.prol, %.lr.ph.i156.prol ], [ %indvars.iv.i157.ph, %.lr.ph.i156.preheader541 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i156.prol ], [ 0, %.lr.ph.i156.preheader541 ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i157.prol ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !49
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i157.prol
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !49
  %i.ej = or i64 %i.ei, %i.eg
  store i64 %i.ej, ptr %i.ef, align 8, !tbaa !49
  %indvars.iv.next.i158.prol = add nuw nsw i64 %indvars.iv.i157.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter544
  br i1 %prol.iter.cmp.not, label %.lr.ph.i156.prol.loopexit, label %.lr.ph.i156.prol, !llvm.loop !133

.lr.ph.i156.prol.loopexit:                        ; preds = %.lr.ph.i156.prol, %.lr.ph.i156.preheader541
  %indvars.iv.i157.unr = phi i64 [ %indvars.iv.i157.ph, %.lr.ph.i156.preheader541 ], [ %indvars.iv.next.i158.prol, %.lr.ph.i156.prol ]
  %i.ek = sub nsw i64 %indvars.iv.i157.ph, %wide.trip.count.i
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %.lr.ph.i162.preheader, label %.lr.ph.i156

.lr.ph.i156:                                      ; preds = %.lr.ph.i156.prol.loopexit, %.lr.ph.i156
  %indvars.iv.i157 = phi i64 [ %indvars.iv.next.i158.3, %.lr.ph.i156 ], [ %indvars.iv.i157.unr, %.lr.ph.i156.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i157 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !49
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i157
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !49
  %i.eq = or i64 %i.ep, %i.en
  store i64 %i.eq, ptr %i.em, align 8, !tbaa !49
  %indvars.iv.next.i158 = add nuw nsw i64 %indvars.iv.i157, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i158 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !49
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i158
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !49
  %i.ev = or i64 %i.eu, %i.es
  store i64 %i.ev, ptr %i.er, align 8, !tbaa !49
  %indvars.iv.next.i158.1 = add nuw nsw i64 %indvars.iv.i157, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i158.1 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !49
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i158.1
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !49
  %i.fa = or i64 %i.ez, %i.ex
  store i64 %i.fa, ptr %i.ew, align 8, !tbaa !49
  %indvars.iv.next.i158.2 = add nuw nsw i64 %indvars.iv.i157, 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i158.2 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !49
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i158.2
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !49
  %i.ff = or i64 %i.fe, %i.fc
  store i64 %i.ff, ptr %i.fb, align 8, !tbaa !49
  %indvars.iv.next.i158.3 = add nuw nsw i64 %indvars.iv.i157, 4 ; 2 uses
  %exitcond.not.i159.3 = icmp eq i64 %indvars.iv.next.i158.3, %wide.trip.count.i
  br i1 %exitcond.not.i159.3, label %.lr.ph.i162.preheader, label %.lr.ph.i156, !llvm.loop !134

.lr.ph.i162.preheader:                            ; preds = %.lr.ph.i156.prol.loopexit, %.lr.ph.i156, %middle.block
  %min.iters.check264 = icmp ult i32 %.val143, 20
  br i1 %min.iters.check264, label %.lr.ph.i162.preheader540, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph.i162.preheader
  %i.fg = add nsw i64 %i.bd, %wide.trip.count.i
  %i.fh = shl nsw i64 %i.fg, 3
  %scevgep257 = getelementptr i8, ptr %.val144.val, i64 %i.fh
  %i.fi = or disjoint i32 %i.o, 1
  %i.fj = mul i32 %.val143, %i.fi
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = shl nsw i64 %i.fk, 3
  %scevgep258 = getelementptr i8, ptr %.val144.val, i64 %i.fl
  %i.fm = add nsw i64 %i.fk, %wide.trip.count.i
  %i.fn = shl nsw i64 %i.fm, 3
  %scevgep259 = getelementptr i8, ptr %.val144.val, i64 %i.fn
  %bound0260 = icmp ult ptr %i.be, %scevgep259
  %bound1261 = icmp ult ptr %scevgep258, %scevgep257
  %found.conflict262 = and i1 %bound0260, %bound1261
  br i1 %found.conflict262, label %.lr.ph.i162.preheader540, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck256
  %n.vec267 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph265
  %index269 = phi i64 [ 0, %vector.ph265 ], [ %index.next274, %vector.body268 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index269 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load270 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !49, !alias.scope !135, !noalias !138
  %wide.load271 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !49, !alias.scope !135, !noalias !138
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index269 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load272 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !49, !alias.scope !138
  %wide.load273 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !49, !alias.scope !138
  %i.fs = or <2 x i64> %wide.load272, %wide.load270
  %i.ft = or <2 x i64> %wide.load273, %wide.load271
  store <2 x i64> %i.fs, ptr %i.fo, align 8, !tbaa !49, !alias.scope !135, !noalias !138
  store <2 x i64> %i.ft, ptr %i.fp, align 8, !tbaa !49, !alias.scope !135, !noalias !138
  %index.next274 = add nuw i64 %index269, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.fu, label %middle.block275, label %vector.body268, !llvm.loop !140

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %n.vec267, %wide.trip.count.i
  br i1 %cmp.n276, label %.lr.ph.preheader.i167, label %.lr.ph.i162.preheader540

.lr.ph.i162.preheader540:                         ; preds = %vector.memcheck256, %.lr.ph.i162.preheader, %middle.block275
  %indvars.iv.i163.ph = phi i64 [ 0, %vector.memcheck256 ], [ 0, %.lr.ph.i162.preheader ], [ %n.vec267, %middle.block275 ] ; 3 uses
  %xtraiter546.a = and i64 %wide.trip.count.i, 3  ; 2 uses
  %lcmp.mod547.not.a = icmp eq i64 %xtraiter546.a, 0
  br i1 %lcmp.mod547.not.a, label %.lr.ph.i162.prol.loopexit, label %.lr.ph.i162.prol

.lr.ph.i162.prol:                                 ; preds = %.lr.ph.i162.preheader540, %.lr.ph.i162.prol
  %indvars.iv.i163.prol = phi i64 [ %indvars.iv.next.i164.prol, %.lr.ph.i162.prol ], [ %indvars.iv.i163.ph, %.lr.ph.i162.preheader540 ] ; 3 uses
  %prol.iter548.a = phi i64 [ %prol.iter548.next.a, %.lr.ph.i162.prol ], [ 0, %.lr.ph.i162.preheader540 ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i163.prol ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !49
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i163.prol
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !49
  %i.fz = or i64 %i.fy, %i.fw
  store i64 %i.fz, ptr %i.fv, align 8, !tbaa !49
  %indvars.iv.next.i164.prol = add nuw nsw i64 %indvars.iv.i163.prol, 1 ; 2 uses
  %prol.iter548.next.a = add i64 %prol.iter548.a, 1 ; 2 uses
  %prol.iter548.cmp.not.a = icmp eq i64 %prol.iter548.next.a, %xtraiter546.a
  br i1 %prol.iter548.cmp.not.a, label %.lr.ph.i162.prol.loopexit, label %.lr.ph.i162.prol, !llvm.loop !141

.lr.ph.i162.prol.loopexit:                        ; preds = %.lr.ph.i162.prol, %.lr.ph.i162.preheader540
  %indvars.iv.i163.unr = phi i64 [ %indvars.iv.i163.ph, %.lr.ph.i162.preheader540 ], [ %indvars.iv.next.i164.prol, %.lr.ph.i162.prol ]
  %i.ga = sub nsw i64 %indvars.iv.i163.ph, %wide.trip.count.i
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %.lr.ph.preheader.i167, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162.prol.loopexit, %.lr.ph.i162
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164.3, %.lr.ph.i162 ], [ %indvars.iv.i163.unr, %.lr.ph.i162.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i163 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !49
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i163
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !49
  %i.gg = or i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.gc, align 8, !tbaa !49
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i164 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !49
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i164
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !49
  %i.gl = or i64 %i.gk, %i.gi
  store i64 %i.gl, ptr %i.gh, align 8, !tbaa !49
  %indvars.iv.next.i164.1 = add nuw nsw i64 %indvars.iv.i163, 2 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i164.1 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i164.1
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !49
  %i.gq = or i64 %i.gp, %i.gn
  store i64 %i.gq, ptr %i.gm, align 8, !tbaa !49
end_hunk_0
