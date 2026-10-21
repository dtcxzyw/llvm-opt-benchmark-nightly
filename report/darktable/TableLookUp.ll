Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TableLookUp?download=true
inline.NumInlined: 165
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE:bb.a
  %i.go = sub nsw i32 %i.ga, %i.gn
  %.sroa.speculate.load.false.sroa.speculated.i.prol = tail call i32 @llvm.smax.i32(i32 %i.go, i32 0)
  %i.gp = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.prol to i16
  %i.gq = icmp samesign ult i64 %indvars.iv93.ph, 65536
  tail call void @llvm.assume(i1 %i.gq)
  %.idx.prol = shl nuw nsw i64 %indvars.iv93.ph, 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.prol ; 2 uses
  store i16 %i.gp, ptr %i.gr, align 2, !tbaa !22
  %i.gs = trunc nuw i32 %i.gk to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !22
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.ph, 1
  br label %.peel.next.prol.loopexit

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %.peel.next.preheader ], [ %indvars.iv.next94.prol, %.peel.next.prol.loopexit.unr-lcssa ]
  %i.gu = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.gu, label %.preheader, label %.peel.next

scalar.ph:                                        ; preds = %.preheader84, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ 0, %.preheader84 ] ; 11 uses
  %i.gv = icmp slt i64 %indvars.iv, %i.y
  %.in.v = select i1 %i.gv, i64 %indvars.iv, i64 %i.x
  %.in = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v
  %i.gw = load i16, ptr %.in, align 2, !tbaa !22
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.gy = icmp slt i64 %indvars.iv.next, %i.y
  %.in.v.1 = select i1 %i.gy, i64 %indvars.iv.next, i64 %i.x
  %.in.1 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.1
  %i.gz = load i16, ptr %.in.1, align 2, !tbaa !22
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !22
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.hb = icmp slt i64 %indvars.iv.next.1, %i.y
  %.in.v.2 = select i1 %i.hb, i64 %indvars.iv.next.1, i64 %i.x
  %.in.2 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.2
  %i.hc = load i16, ptr %.in.2, align 2, !tbaa !22
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.1
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !22
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.he = icmp slt i64 %indvars.iv.next.2, %i.y
  %.in.v.3 = select i1 %i.he, i64 %indvars.iv.next.2, i64 %i.x
  %.in.3 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.3
  %i.hf = load i16, ptr %.in.3, align 2, !tbaa !22
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.2
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !22
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 3 uses
  %i.hh = icmp slt i64 %indvars.iv.next.3, %i.y
  %.in.v.4 = select i1 %i.hh, i64 %indvars.iv.next.3, i64 %i.x
  %.in.4 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.4
  %i.hi = load i16, ptr %.in.4, align 2, !tbaa !22
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.3
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !22
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 3 uses
  %i.hk = icmp slt i64 %indvars.iv.next.4, %i.y
  %.in.v.5 = select i1 %i.hk, i64 %indvars.iv.next.4, i64 %i.x
  %.in.5 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.5
  %i.hl = load i16, ptr %.in.5, align 2, !tbaa !22
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.4
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !22
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 3 uses
  %i.hn = icmp slt i64 %indvars.iv.next.5, %i.y
  %.in.v.6 = select i1 %i.hn, i64 %indvars.iv.next.5, i64 %i.x
  %.in.6 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.6
  %i.ho = load i16, ptr %.in.6, align 2, !tbaa !22
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.5
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !22
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 3 uses
  %i.hq = icmp slt i64 %indvars.iv.next.6, %i.y
  %.in.v.7 = select i1 %i.hq, i64 %indvars.iv.next.6, i64 %i.x
  %.in.7 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.7
  %i.hr = load i16, ptr %.in.7, align 2, !tbaa !22
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.6
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !22
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 65536
  br i1 %exitcond.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !42

.preheader:                                       ; preds = %.peel.next.prol.loopexit, %bb.l, %middle.block137, %vec.epilog.middle.block, %bb.h
  %.not90 = icmp eq i32 %i.i, 65536
  br i1 %.not90, label %.loopexit, label %iter.check191

iter.check191:                                    ; preds = %.preheader83, %.preheader
  %i.ht = shl i64 %i.g, 31
  %sext82 = add i64 %i.ht, -4294967296
  %i.hu = ashr i64 %sext82, 32                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hu ; 12 uses
  %i.hw = sub i32 65536, %i.i                     ; 7 uses
  %min.iters.check161 = icmp ult i32 %i.hw, 8
  br i1 %min.iters.check161, label %vec.epilog.scalar.ph192.preheader, label %vector.memcheck162

vector.memcheck162:                               ; preds = %iter.check191
  %i.hx = shl i64 %i.g, 1
  %i.hy = and i64 %i.hx, 8589934588               ; 2 uses
  %i.hz = shl nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.ia = getelementptr i8, ptr %i.n, i64 %i.hy
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.hz
  %i.ic = shl i64 %i.g, 1
  %i.id = sub i64 262140, %i.ic
  %i.ie = and i64 %i.id, 17179869180
  %i.if = getelementptr i8, ptr %i.n, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 %i.hy
  %i.ih = getelementptr i8, ptr %i.ig, i64 %i.hz
  %i.ii = getelementptr i8, ptr %i.ih, i64 4
  %i.ij = shl nuw nsw i64 %i.hu, 1
  %i.ik = getelementptr i8, ptr %i.d, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 2
  %bound0163 = icmp ult ptr %i.ib, %i.il
  %bound1164 = icmp ult ptr %i.hv, %i.ii
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %vec.epilog.scalar.ph192.preheader, label %vector.main.loop.iter.check166

vector.main.loop.iter.check166:                   ; preds = %vector.memcheck162
  %min.iters.check167 = icmp ult i32 %i.hw, 64
  br i1 %min.iters.check167, label %vec.epilog.ph195, label %vector.ph168

vector.ph168:                                     ; preds = %vector.main.loop.iter.check166
  %i.im = and i32 %i.hw, 56
  %n.vec169 = and i32 %i.hw, -64                  ; 4 uses
  %i.in = add i32 %n.vec169, %i.i                 ; 2 uses
  %i.io = load i16, ptr %i.hv, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert179 = insertelement <16 x i16> poison, i16 %i.io, i64 0
  %interleaved.vec181 = shufflevector <16 x i16> %broadcast.splatinsert179, <16 x i16> zeroinitializer, <32 x i32> <i32 0, i32 16, i32 0, i32 17, i32 0, i32 18, i32 0, i32 19, i32 0, i32 20, i32 0, i32 21, i32 0, i32 22, i32 0, i32 23, i32 0, i32 24, i32 0, i32 25, i32 0, i32 26, i32 0, i32 27, i32 0, i32 28, i32 0, i32 29, i32 0, i32 30, i32 0, i32 31> ; 4 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.ph168, %vector.body173
  %index174 = phi i32 [ 0, %vector.ph168 ], [ %index.next185, %vector.body173 ]
  %i.ip = phi i32 [ %i.i, %vector.ph168 ], [ %i.jf, %vector.body173 ] ; 5 uses
  %i.iq = shl nsw i32 %i.ip, 1
  %i.ir = shl i32 %i.ip, 1
  %i.is = add i32 %i.ir, 32
  %i.it = shl i32 %i.ip, 1
  %i.iu = add i32 %i.it, 64
  %i.iv = shl i32 %i.ip, 1
  %i.iw = add i32 %i.iv, 96
  %i.ix = zext nneg i32 %i.iq to i64
  %i.iy = zext nneg i32 %i.is to i64
  %i.iz = zext nneg i32 %i.iu to i64
  %i.ja = zext nneg i32 %i.iw to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ix
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.iy
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.iz
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ja
  store <32 x i16> %interleaved.vec181, ptr %i.jb, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %i.jc, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %i.jd, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %i.je, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next185 = add nuw i32 %index174, 64      ; 2 uses
  %i.jf = add i32 %i.ip, 64
  %i.jg = icmp eq i32 %index.next185, %n.vec169
  br i1 %i.jg, label %middle.block187, label %vector.body173, !llvm.loop !46

middle.block187:                                  ; preds = %vector.body173
  %cmp.n188 = icmp eq i32 %i.hw, %n.vec169
  br i1 %cmp.n188, label %.loopexit, label %vec.epilog.iter.check193

vec.epilog.iter.check193:                         ; preds = %middle.block187
  %min.epilog.iters.check194 = icmp eq i32 %i.im, 0
  br i1 %min.epilog.iters.check194, label %vec.epilog.scalar.ph192.preheader, label %vec.epilog.ph195, !prof !29

vec.epilog.ph195:                                 ; preds = %vector.main.loop.iter.check166, %vec.epilog.iter.check193
  %vec.epilog.resume.val189 = phi i32 [ %n.vec169, %vec.epilog.iter.check193 ], [ 0, %vector.main.loop.iter.check166 ]
  %bc.resume.val190 = phi i32 [ %i.in, %vec.epilog.iter.check193 ], [ %i.i, %vector.main.loop.iter.check166 ]
  %n.vec196 = and i32 %i.hw, -8                   ; 3 uses
  %i.jh = add i32 %n.vec196, %i.i
  %i.ji = load i16, ptr %i.hv, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert203 = insertelement <8 x i16> poison, i16 %i.ji, i64 0
  %interleaved.vec205 = shufflevector <8 x i16> %broadcast.splatinsert203, <8 x i16> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph195
  %index201 = phi i32 [ %vec.epilog.resume.val189, %vec.epilog.ph195 ], [ %index.next206, %vec.epilog.vector.body200 ]
  %i.jj = phi i32 [ %bc.resume.val190, %vec.epilog.ph195 ], [ %i.jn, %vec.epilog.vector.body200 ] ; 2 uses
  %i.jk = shl nsw i32 %i.jj, 1
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.jl
  store <16 x i16> %interleaved.vec205, ptr %i.jm, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next206 = add nuw i32 %index201, 8       ; 2 uses
  %i.jn = add i32 %i.jj, 8
  %i.jo = icmp eq i32 %index.next206, %n.vec196
  br i1 %i.jo, label %vec.epilog.middle.block208, label %vec.epilog.vector.body200, !llvm.loop !47

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body200
  %cmp.n209 = icmp eq i32 %i.hw, %n.vec196
  br i1 %cmp.n209, label %.loopexit, label %vec.epilog.scalar.ph192.preheader

vec.epilog.scalar.ph192.preheader:                ; preds = %iter.check191, %vector.memcheck162, %vec.epilog.iter.check193, %vec.epilog.middle.block208
  %.088.ph = phi i32 [ %i.i, %iter.check191 ], [ %i.i, %vector.memcheck162 ], [ %i.in, %vec.epilog.iter.check193 ], [ %i.jh, %vec.epilog.middle.block208 ] ; 4 uses
  %i.jp = sub i32 0, %.088.ph
  %xtraiter217 = and i32 %i.jp, 7                 ; 2 uses
  %lcmp.mod218.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %vec.epilog.scalar.ph192.prol.loopexit, label %vec.epilog.scalar.ph192.prol

vec.epilog.scalar.ph192.prol:                     ; preds = %vec.epilog.scalar.ph192.preheader, %vec.epilog.scalar.ph192.prol
  %.088.prol = phi i32 [ %i.jt, %vec.epilog.scalar.ph192.prol ], [ %.088.ph, %vec.epilog.scalar.ph192.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph192.prol ], [ 0, %vec.epilog.scalar.ph192.preheader ]
  %i.jq = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.jr = shl nsw i32 %.088.prol, 1               ; 2 uses
  %3 = zext nneg i32 %i.jr to i64
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %3 ; 2 uses
  store i16 %i.jq, ptr %4, align 2, !tbaa !22
  %5 = icmp samesign ult i32 %i.jr, 131072
  tail call void @llvm.assume(i1 %5)
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.js, align 2, !tbaa !22
  %i.jt = add i32 %.088.prol, 1                   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter217
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph192.prol.loopexit, label %vec.epilog.scalar.ph192.prol, !llvm.loop !48

vec.epilog.scalar.ph192.prol.loopexit:            ; preds = %vec.epilog.scalar.ph192.prol, %vec.epilog.scalar.ph192.preheader
  %.088.unr = phi i32 [ %.088.ph, %vec.epilog.scalar.ph192.preheader ], [ %i.jt, %vec.epilog.scalar.ph192.prol ]
  %i.ju = add i32 %.088.ph, -65529
  %i.jv = icmp ult i32 %i.ju, 7
  br i1 %i.jv, label %.loopexit, label %vec.epilog.scalar.ph192

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.l
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %bb.l ], [ %indvars.iv93.unr, %.peel.next.prol.loopexit ] ; 7 uses
  %i.jw = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv93 ; 3 uses
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !22 ; 3 uses
  %i.jy = zext i16 %i.jx to i32                   ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jw, i64 -2
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !22
  %i.kb = tail call i16 @llvm.umin.i16(i16 %i.ka, i16 %i.jx)
  %i.kc = zext i16 %i.kb to i32
  %i.kd = icmp samesign ult i64 %indvars.iv93, %i.di
  br i1 %i.kd, label %bb.j, label %.peel.next.1

bb.j:                                             ; preds = %.peel.next
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !22
  %i.kg = tail call i16 @llvm.umax.i16(i16 %i.kf, i16 %i.jx)
  %i.kh = zext i16 %i.kg to i32
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %.peel.next, %bb.j
  %.sroa.speculated = phi i32 [ %i.kh, %bb.j ], [ %i.jy, %.peel.next ]
  %i.ki = sub nsw i32 %.sroa.speculated, %i.kc    ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, -1
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = add nuw nsw i32 %i.ki, 2
  %i.kl = lshr i32 %i.kk, 2
  %i.km = sub nsw i32 %i.jy, %i.kl
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.km, i32 0)
  %i.kn = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i to i16
  %i.ko = icmp samesign ult i64 %indvars.iv93, 65536
  tail call void @llvm.assume(i1 %i.ko)
  %.idx = shl nuw nsw i64 %indvars.iv93, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 2 uses
  store i16 %i.kn, ptr %i.kp, align 2, !tbaa !22
  %i.kq = trunc nuw i32 %i.ki to i16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !22
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 3 uses
  %i.ks = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next94 ; 3 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !22 ; 3 uses
  %i.ku = zext i16 %i.kt to i32                   ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ks, i64 -2
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !22
  %i.kx = tail call i16 @llvm.umin.i16(i16 %i.kw, i16 %i.kt)
  %i.ky = zext i16 %i.kx to i32
  %i.kz = icmp samesign ult i64 %indvars.iv.next94, %i.di
  br i1 %i.kz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next.1
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !22
  %i.lc = tail call i16 @llvm.umax.i16(i16 %i.lb, i16 %i.kt)
  %i.ld = zext i16 %i.lc to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.peel.next.1
  %.sroa.speculated.1 = phi i32 [ %i.ld, %bb.k ], [ %i.ku, %.peel.next.1 ]
  %i.le = sub nsw i32 %.sroa.speculated.1, %i.ky  ; 3 uses
  %i.lf = icmp sgt i32 %i.le, -1
  tail call void @llvm.assume(i1 %i.lf)
  %i.lg = add nuw nsw i32 %i.le, 2
  %i.lh = lshr i32 %i.lg, 2
  %i.li = sub nsw i32 %i.ku, %i.lh
  %.sroa.speculate.load.false.sroa.speculated.i.1 = tail call i32 @llvm.smax.i32(i32 %i.li, i32 0)
  %i.lj = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.1 to i16
  %i.lk = icmp ne i64 %indvars.iv93, 65535
  tail call void @llvm.assume(i1 %i.lk)
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next94, 2
  %i.ll = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.1 ; 2 uses
  store i16 %i.lj, ptr %i.ll, align 2, !tbaa !22
  %i.lm = trunc nuw i32 %i.le to i16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  store i16 %i.lm, ptr %i.ln, align 2, !tbaa !22
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %indvars.iv.next94.1, %wide.trip.count
  br i1 %exitcond96.not.1, label %.preheader, label %.peel.next, !llvm.loop !49

vec.epilog.scalar.ph192:                          ; preds = %vec.epilog.scalar.ph192.prol.loopexit, %vec.epilog.scalar.ph192
  %.088 = phi i32 [ %i.mt, %vec.epilog.scalar.ph192 ], [ %.088.unr, %vec.epilog.scalar.ph192.prol.loopexit ] ; 9 uses
  %i.lo = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.lp = shl nsw i32 %.088, 1                    ; 2 uses
  %6 = zext nneg i32 %i.lp to i64
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %6 ; 2 uses
  store i16 %i.lo, ptr %7, align 2, !tbaa !22
  %8 = icmp samesign ult i32 %i.lp, 131072
  tail call void @llvm.assume(i1 %8)
  %i.lq = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 0, ptr %i.lq, align 2, !tbaa !22
  %i.lr = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.ls = shl i32 %.088, 1
  %i.lt = add i32 %i.ls, 2                        ; 2 uses
  %9 = zext nneg i32 %i.lt to i64
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %9 ; 2 uses
  store i16 %i.lr, ptr %10, align 2, !tbaa !22
  %11 = icmp samesign ult i32 %i.lt, 131072
  tail call void @llvm.assume(i1 %11)
  %i.lu = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 0, ptr %i.lu, align 2, !tbaa !22
  %i.lv = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.lw = shl i32 %.088, 1
  %i.lx = add i32 %i.lw, 4                        ; 2 uses
  %12 = zext nneg i32 %i.lx to i64
  %13 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %12 ; 2 uses
  store i16 %i.lv, ptr %13, align 2, !tbaa !22
  %14 = icmp samesign ult i32 %i.lx, 131072
  tail call void @llvm.assume(i1 %14)
  %i.ly = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i16 0, ptr %i.ly, align 2, !tbaa !22
  %i.lz = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.ma = shl i32 %.088, 1
  %i.mb = add i32 %i.ma, 6                        ; 2 uses
  %15 = zext nneg i32 %i.mb to i64
  %16 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %15 ; 2 uses
  store i16 %i.lz, ptr %16, align 2, !tbaa !22
  %17 = icmp samesign ult i32 %i.mb, 131072
  tail call void @llvm.assume(i1 %17)
  %i.mc = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i16 0, ptr %i.mc, align 2, !tbaa !22
  %i.md = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.me = shl i32 %.088, 1
  %i.mf = add i32 %i.me, 8                        ; 2 uses
  %18 = zext nneg i32 %i.mf to i64
  %19 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %18 ; 2 uses
  store i16 %i.md, ptr %19, align 2, !tbaa !22
  %20 = icmp samesign ult i32 %i.mf, 131072
  tail call void @llvm.assume(i1 %20)
  %i.mg = getelementptr inbounds nuw i8, ptr %19, i64 2
  store i16 0, ptr %i.mg, align 2, !tbaa !22
  %i.mh = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.mi = shl i32 %.088, 1
  %i.mj = add i32 %i.mi, 10                       ; 2 uses
  %21 = zext nneg i32 %i.mj to i64
  %22 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %21 ; 2 uses
  store i16 %i.mh, ptr %22, align 2, !tbaa !22
  %23 = icmp samesign ult i32 %i.mj, 131072
  tail call void @llvm.assume(i1 %23)
  %i.mk = getelementptr inbounds nuw i8, ptr %22, i64 2
  store i16 0, ptr %i.mk, align 2, !tbaa !22
  %i.ml = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.mm = shl i32 %.088, 1
  %i.mn = add i32 %i.mm, 12                       ; 2 uses
  %24 = zext nneg i32 %i.mn to i64
  %25 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %24 ; 2 uses
  store i16 %i.ml, ptr %25, align 2, !tbaa !22
  %26 = icmp samesign ult i32 %i.mn, 131072
  tail call void @llvm.assume(i1 %26)
  %i.mo = getelementptr inbounds nuw i8, ptr %25, i64 2
  store i16 0, ptr %i.mo, align 2, !tbaa !22
  %i.mp = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.mq = shl i32 %.088, 1
  %i.mr = add i32 %i.mq, 14                       ; 2 uses
  %27 = zext nneg i32 %i.mr to i64
  %28 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %27 ; 2 uses
  store i16 %i.mp, ptr %28, align 2, !tbaa !22
  %29 = icmp samesign ult i32 %i.mr, 131072
  tail call void @llvm.assume(i1 %29)
  %i.ms = getelementptr inbounds nuw i8, ptr %28, i64 2
  store i16 0, ptr %i.ms, align 2, !tbaa !22
  %i.mt = add i32 %.088, 8                        ; 2 uses
  %exitcond98.not.7 = icmp eq i32 %i.mt, 65536
  br i1 %exitcond98.not.7, label %.loopexit, label %vec.epilog.scalar.ph192, !llvm.loop !50

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vec.epilog.scalar.ph192.prol.loopexit, %vec.epilog.scalar.ph192, %middle.block187, %vec.epilog.middle.block208, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress uwtable
define hidden { ptr, i32 } @_ZN8rawspeed11TableLookUp8getTableEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8getTableEi) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp sgt i32 %i.a, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %1, %i.a
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i32 %1, 17
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.h
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 131072, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %3, align 2, !tbaa !22     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !75

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr nonnull align 2 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %i.o, align 2, !tbaa !22
  store i16 %i.s, ptr %i.d, align 2, !tbaa !22
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !25
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !75

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %1, i64 %i.v, i1 false)
  br label %iter.check164

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 2
  br i1 %i.aa, label %bb.j, label %iter.check164

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.ac = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !22
  br label %iter.check164

iter.check164:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -2                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.ae, 14
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check164
  %min.iters.check152 = icmp ult i64 %i.ae, 126
  br i1 %min.iters.check152, label %vec.epilog.ph168, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ah = and i64 %i.ag, 56
  %n.vec154 = and i64 %i.ag, -64                  ; 4 uses
  %i.ai = shl i64 %n.vec154, 1
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %broadcast.splatinsert155 = insertelement <16 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat156 = shufflevector <16 x i16> %broadcast.splatinsert155, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.ph153, %vector.body157
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.ak = shl i64 %index158, 1
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep159, i64 32
  %i.am = getelementptr i8, ptr %next.gep159, i64 64
  %i.an = getelementptr i8, ptr %next.gep159, i64 96
  store <16 x i16> %broadcast.splat156, ptr %next.gep159, align 2, !tbaa !22
  store <16 x i16> %broadcast.splat156, ptr %i.al, align 2, !tbaa !22
  store <16 x i16> %broadcast.splat156, ptr %i.am, align 2, !tbaa !22
  store <16 x i16> %broadcast.splat156, ptr %i.an, align 2, !tbaa !22
  %index.next160 = add nuw i64 %index158, 64      ; 2 uses
  %i.ao = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.ao, label %middle.block161, label %vector.body157, !llvm.loop !63

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.ag, %n.vec154
  br i1 %cmp.n162, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph168, !prof !29

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec154, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec169 = and i64 %i.ag, -8                   ; 3 uses
  %i.ap = shl i64 %n.vec169, 1
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %broadcast.splatinsert170 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat171 = shufflevector <8 x i16> %broadcast.splatinsert170, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph168
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 2 uses
  %i.ar = shl i64 %index173, 1
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.ar
  store <8 x i16> %broadcast.splat171, ptr %next.gep174, align 2, !tbaa !22
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.as, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !64

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %i.ag, %n.vec169
  br i1 %cmp.n177, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check164 ], [ %i.aj, %vec.epilog.iter.check166 ], [ %i.aq, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i, align 2, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !65

bb.k:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %2, %i.l
  br i1 %i.au, label %_ZSt24__uninitialized_fill_n_aIPtmttET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.av = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.ax = shl i64 %2, 1
  %i.ay = add i64 %i.ax, -2
  %i.az = sub i64 %i.ay, %i.k                     ; 3 uses
end_hunk_0
