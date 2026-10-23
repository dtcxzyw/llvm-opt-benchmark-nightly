Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/louds_trie?download=true
inline.NumInlined: 2107
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK7rocksdb10trie_index16LoudsTrieBuilder18ComputeCutoffLevelEv:bb.a
  %i.bc = add i32 %.1, 2
  %i.bd = zext i32 %i.bc to i64
  %i.be = tail call i64 @llvm.usub.sat.i64(i64 %i.bb, i64 %i.bd)
  %i.bf = zext i32 %i.an to i64
  %i.bg = add nuw nsw i64 %i.bf, 1
  %i.bh = zext i32 %.053112 to i64
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 %i.bg, i64 %i.bh)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bi) ; 2 uses
  %i.bj = trunc i64 %umin to i32                  ; 2 uses
  %i.bk = sub i32 -2, %.1
  %i.bl = icmp ult i32 %i.bk, %i.bj
  %i.bm = sub i32 -3, %.1
  %i.bn = icmp ult i32 %i.bm, %i.bj
  %i.bo = icmp samesign ugt i64 %umin, 4294967295
  %i.bp = or i1 %i.bn, %i.bo
  %i.bq = or i1 %i.bl, %i.bp
  br i1 %i.bq, label %scalar.ph167.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %vector.scevcheck
  %i.br = and i32 %i.az, 15                       ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bs, i32 16, i32 %i.br
  %n.vec170 = sub i32 %i.az, %i.bt                ; 2 uses
  %i.bu = add i32 %.053112, %n.vec170
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i32 [ 0, %vector.ph169 ], [ %index.next177, %vector.body171 ] ; 2 uses
  %i.bv = add i32 %.053112, %index172
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 96 ; 2 uses
  %wide.load173 = load <4 x i64>, ptr %i.bx, align 8, !tbaa !65
  %wide.load174 = load <4 x i64>, ptr %i.by, align 8, !tbaa !65
  %wide.load175 = load <4 x i64>, ptr %i.bz, align 8, !tbaa !65
  %wide.load176 = load <4 x i64>, ptr %i.ca, align 8, !tbaa !65
  %i.cb = add <4 x i64> %wide.load173, splat (i64 1)
  %i.cc = add <4 x i64> %wide.load174, splat (i64 1)
  %i.cd = add <4 x i64> %wide.load175, splat (i64 1)
  %i.ce = add <4 x i64> %wide.load176, splat (i64 1)
  store <4 x i64> %i.cb, ptr %i.bx, align 8, !tbaa !65
  store <4 x i64> %i.cc, ptr %i.by, align 8, !tbaa !65
  store <4 x i64> %i.cd, ptr %i.bz, align 8, !tbaa !65
  store <4 x i64> %i.ce, ptr %i.ca, align 8, !tbaa !65
  %index.next177 = add nuw i32 %index172, 16      ; 2 uses
  %i.cf = icmp eq i32 %index.next177, %n.vec170
  br i1 %i.cf, label %scalar.ph167.preheader, label %vector.body171, !llvm.loop !209

scalar.ph167.preheader:                           ; preds = %vector.body171, %vector.scevcheck, %.lr.ph115
  %.053114.ph = phi i32 [ %.053112, %vector.scevcheck ], [ %.053112, %.lr.ph115 ], [ %i.bu, %vector.body171 ]
  br label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %bb.f
  %.053114 = phi i32 [ %.053, %bb.f ], [ %.053114.ph, %scalar.ph167.preheader ] ; 3 uses
  %.not67 = icmp ugt i32 %.053114, %i.an
  br i1 %.not67, label %.critedge3, label %bb.f

.critedge3:                                       ; preds = %scalar.ph167, %bb.f, %.critedge
  %i.cg = icmp ult i32 %.1, %i.am
  br i1 %i.cg, label %.lr.ph118, label %.critedge5

.lr.ph118:                                        ; preds = %.critedge3
  %i.ch = load i32, ptr %i.e, align 4, !tbaa !127
  %i.ci = zext i32 %.1 to i64                     ; 5 uses
  %i.cj = zext i32 %i.ch to i64                   ; 2 uses
  %wide.trip.count131 = and i64 %i.al, 4294967295 ; 2 uses
  %i.ck = xor i64 %i.ci, -1
  %i.cl = add nsw i64 %wide.trip.count131, %i.ck
  %i.cm = add nuw nsw i64 %i.cj, 1
  %i.cn = tail call i64 @llvm.usub.sat.i64(i64 %i.cm, i64 %i.ci)
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cn) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.co, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph118
  %indvars.iv128.ph = phi i64 [ %i.ci, %.lr.ph118 ], [ %i.ct, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph118
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %i.cq = and i64 %i.cp, 15                       ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 16, i64 %i.cq
  %n.vec = sub nsw i64 %i.cp, %i.cs               ; 2 uses
  %i.ct = add nsw i64 %n.vec, %i.ci
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.085.0, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %gep, align 8, !tbaa !65
  %wide.load163 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !65
  %wide.load164 = load <4 x i64>, ptr %i.cv, align 8, !tbaa !65
  %wide.load165 = load <4 x i64>, ptr %i.cw, align 8, !tbaa !65
  %i.cx = add <4 x i64> %wide.load, splat (i64 1)
  %i.cy = add <4 x i64> %wide.load163, splat (i64 1)
  %i.cz = add <4 x i64> %wide.load164, splat (i64 1)
  %i.da = add <4 x i64> %wide.load165, splat (i64 1)
  store <4 x i64> %i.cx, ptr %gep, align 8, !tbaa !65
  store <4 x i64> %i.cy, ptr %i.cu, align 8, !tbaa !65
  store <4 x i64> %i.cz, ptr %i.cv, align 8, !tbaa !65
  store <4 x i64> %i.da, ptr %i.cw, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %scalar.ph.preheader, label %vector.body, !llvm.loop !210

bb.f:                                             ; preds = %scalar.ph167
  %i.dc = zext i32 %.053114 to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dc ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !65
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !65
  %.053 = add i32 %.053114, 1                     ; 2 uses
  %.not66 = icmp ugt i32 %.053, %i.am
  br i1 %.not66, label %.critedge3, label %scalar.ph167, !llvm.loop !211

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.g ], [ %indvars.iv128.ph, %scalar.ph.preheader ] ; 3 uses
  %.not68 = icmp samesign ugt i64 %indvars.iv128, %i.cj
  br i1 %.not68, label %.critedge5, label %bb.g

.critedge5:                                       ; preds = %scalar.ph, %bb.g, %.critedge3
  %i.dg = add nuw i64 %.057120, 1                 ; 2 uses
  %exitcond133.not = icmp eq i64 %i.dg, %i.u
  br i1 %exitcond133.not, label %.preheader, label %.lr.ph121, !llvm.loop !212

bb.g:                                             ; preds = %scalar.ph
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.085.0, i64 %indvars.iv128 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !65
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !65
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.critedge5, label %scalar.ph, !llvm.loop !213

bb.h:                                             ; preds = %.preheader, %bb.j
  %.0122 = phi i32 [ 0, %.preheader ], [ %i.du, %bb.j ] ; 5 uses
  %i.dk = zext i32 %.0122 to i64                  ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !65 ; 3 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.thread98, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.085.0, i64 %i.dk
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !65 ; 2 uses
  %i.dq = mul i64 %i.dm, 257
  %i.dr = add i64 %i.dp, %i.dq
  %i.ds = mul i64 %i.dp, 10
  %i.dt = add i64 %i.ds, %i.dm
  %.not104 = icmp ult i64 %i.dt, %i.dr
  br i1 %.not104, label %.thread98.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.du = add i32 %.0122, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.du, %i.v
  br i1 %.not, label %.thread98.thread152, label %bb.h, !llvm.loop !214

.thread98.thread152:                              ; preds = %bb.j
  %i.dv = add nuw i32 %i.v, 1
  br label %.thread98.thread

.thread98:                                        ; preds = %bb.h
  %.not.i.i.i77 = icmp eq ptr %.sroa.085.0, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorImSaImEED2Ev.exit80, label %.thread98.thread

.thread98.thread:                                 ; preds = %bb.i, %.thread98.thread152, %.thread98
  %.4102 = phi i32 [ %.0122, %.thread98 ], [ %i.dv, %.thread98.thread152 ], [ %.0122, %bb.i ]
  %i.dw = ptrtoint ptr %.sroa.085.0 to i64
  %i.dx = sub i64 %.sroa.10.0, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.085.0, i64 noundef %i.dx) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit80

_ZNSt6vectorImSaImEED2Ev.exit80:                  ; preds = %.thread98, %.thread98.thread
  %.4103 = phi i32 [ %.0122, %.thread98 ], [ %.4102, %.thread98.thread ]
  %.idx159 = shl nuw nsw i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx159) #28
  br label %bb.k

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.b
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx) #28
  resume { ptr, i32 } %i.dy

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorImSaImEED2Ev.exit80
  %.5 = phi i32 [ %.4103, %_ZNSt6vectorImSaImEED2Ev.exit80 ], [ 0, %bb.a ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(432) initializes((148, 152)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.35", align 8    ; 8 uses
  %2 = alloca %"class.std::vector.20", align 16   ; 14 uses
  %3 = alloca %"class.std::vector.25", align 16   ; 16 uses
  %4 = alloca %"class.std::vector.5", align 16    ; 17 uses
  %5 = alloca %"class.std::vector.5", align 8     ; 13 uses
  %6 = alloca %"class.std::vector.20", align 16   ; 17 uses
  %7 = alloca %"class.std::vector.25", align 16   ; 17 uses
  %8 = alloca %class.anon, align 8                ; 14 uses
  %i.a = alloca [4 x i64], align 16               ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !105    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 6 uses
  br i1 %i.e, label %bb.b, label %iter.check

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.g, align 8, !tbaa !131
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  tail call void @_ZN7rocksdb10trie_index16LoudsTrieBuilder12SerializeAllEv(ptr noundef nonnull align 8 dereferenceable(432) %0)
  br label %bb.fo

iter.check:                                       ; preds = %bb.a
  %i.i = ptrtoaddr ptr %i.d to i64
  %i.j = ptrtoaddr ptr %i.b to i64
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.k = add i64 %i.i, -32
  %i.l = sub i64 %i.k, %i.j                       ; 3 uses
  %i.m = lshr i64 %i.l, 5
  %i.n = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.l, 128
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check710 = icmp ult i64 %i.l, 512
  br i1 %min.iters.check710, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.n, 15                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 16, i64 %i.o         ; 2 uses
  %n.vec = sub nsw i64 %i.n, %i.q                 ; 3 uses
  %i.r = shl i64 %n.vec, 5
  %i.s = getelementptr i8, ptr %i.b, i64 %i.r     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.b, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi711.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi712.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi713 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 8
  %wide.gep714.a = getelementptr i8, <4 x ptr> %vector.gep, i64 136
  %wide.gep715.a = getelementptr i8, <4 x ptr> %vector.gep, i64 264
  %wide.gep716 = getelementptr i8, <4 x ptr> %vector.gep, i64 392
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !92
  %wide.masked.gather717.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep714.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !92
  %wide.masked.gather718.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep715.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !92
  %wide.masked.gather719 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep716, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !92
  %i.t = trunc <4 x i64> %wide.masked.gather to <4 x i32>
  %i.u = trunc <4 x i64> %wide.masked.gather717.a to <4 x i32>
  %i.v = trunc <4 x i64> %wide.masked.gather718.a to <4 x i32>
  %i.w = trunc <4 x i64> %wide.masked.gather719 to <4 x i32>
  %i.x = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.t) ; 2 uses
  %i.y = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi711.a, <4 x i32> %i.u) ; 2 uses
  %i.z = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi712.a, <4 x i32> %i.v) ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi713, <4 x i32> %i.w) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !215

vec.epilog.iter.check:                            ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.x, <4 x i32> %i.y)
  %rdx.minmax720.a = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %rdx.minmax, <4 x i32> %i.z)
  %rdx.minmax721 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %rdx.minmax720.a, <4 x i32> %i.aa)
  %i.ac = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax721) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.q, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.s, %vec.epilog.iter.check ], [ %i.b, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ac, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ad = and i64 %i.n, 3                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 4, i64 %i.ad
  %n.vec722 = sub nsw i64 %i.n, %i.af             ; 2 uses
  %i.ag = shl i64 %n.vec722, 5
  %i.ah = getelementptr i8, ptr %i.b, i64 %i.ag
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index723 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next729, %vec.epilog.vector.body ]
  %pointer.phi724 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind730, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi725 = phi <4 x i32> [ %broadcast.splat, %vec.epilog.ph ], [ %i.aj, %vec.epilog.vector.body ]
  %vector.gep726 = getelementptr i8, ptr %pointer.phi724, <4 x i64> <i64 0, i64 32, i64 64, i64 96>
  %wide.gep727 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep726, i64 8
  %wide.masked.gather728 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep727, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !92
  %i.ai = trunc <4 x i64> %wide.masked.gather728 to <4 x i32>
  %i.aj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi725, <4 x i32> %i.ai) ; 2 uses
  %index.next729 = add nuw i64 %index723, 4       ; 2 uses
  %ptr.ind730 = getelementptr i8, ptr %pointer.phi724, i64 128
  %i.ak = icmp eq i64 %index.next729, %n.vec722
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.al = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %i.aj)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0387.0418.ph = phi ptr [ %i.b, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %vec.epilog.scalar.ph
  store i32 %.sroa.speculated383, ptr %i.f, align 4, !tbaa !127
  %i.am = tail call noundef i32 @_ZNK7rocksdb10trie_index16LoudsTrieBuilder18ComputeCutoffLevelEv(ptr noundef nonnull align 8 dereferenceable(432) %0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !127
  %i.ap = add i32 %i.ao, 1                        ; 3 uses
  %.sroa.speculated379 = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.am)
  store i32 %.sroa.speculated379, ptr %i.an, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %9 = zext i32 %i.ap to i64                      ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = mul nuw nsw i64 %9, 144                 ; 3 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #27 ; 12 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !135
  %i.as = getelementptr inbounds nuw [144 x i8], ptr %i.ar, i64 %9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %i.aq, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ar, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.as, ptr %i.au, align 8, !tbaa !136
  store ptr %scevgep.i.i.i.i.i, ptr %i.at, align 8, !tbaa !137
  invoke fastcc void @_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData9StartNodeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ar)
          to label %.preheader415 unwind label %.loopexit.split-lp411.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader415:                                    ; preds = %.lr.ph.preheader.i.i.i.i.i
  %10 = load ptr, ptr %i.c, align 8, !tbaa !101
  %11 = load ptr, ptr %0, align 8, !tbaa !128     ; 2 uses
  %.not457 = icmp eq ptr %10, %11
  br i1 %.not457, label %._crit_edge426, label %.lr.ph425

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.0387.0418 = phi ptr [ %i.az, %vec.epilog.scalar.ph ], [ %.sroa.0387.0418.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.av = phi i32 [ %.sroa.speculated383, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0387.0418, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !92
  %i.ay = trunc i64 %i.ax to i32
  %.sroa.speculated383 = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.ay) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0387.0418, i64 32 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.d
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !217

._crit_edge426:                                   ; preds = %._crit_edge, %.preheader415
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 10 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge426
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bi) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit: ; preds = %bb.c, %._crit_edge426
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 9 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !138
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !109 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !108
  %.not.i.i.i.i.i.i185 = icmp eq ptr %i.bl, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i185, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.br) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188: ; preds = %bb.d, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !138
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !109 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !108
  %.not.i.i.i.i.i.i189 = icmp eq ptr %i.bu, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i189, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.ca) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192: ; preds = %bb.e, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !138
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.ch, %i.cf
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !108
  %.not.i.i.i.i.i.i193 = icmp eq ptr %i.cj, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i193, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cj to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cp) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !138
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !109 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108
  %.not.i.i.i.i.i.i197 = icmp eq ptr %i.cs, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i197, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cs to i64
  %i.cy = sub i64 %i.cw, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cy) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200: ; preds = %bb.g, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  store i64 0, ptr %i.cz, align 8, !tbaa !138
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !109 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !108
  %.not.i.i.i.i.i.i201 = icmp eq ptr %i.db, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i201, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204, label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dh) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204: ; preds = %bb.h, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !101 ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = ashr exact i64 %i.do, 5                 ; 2 uses
  %i.dq = icmp ugt i64 %i.dp, 576460752303423487
  br i1 %i.dq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #26
          to label %.noexc206 unwind label %bb.bl

.noexc206:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not668.a = icmp eq ptr %i.dk, %i.dl
  br i1 %.not668.a, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dt = ashr exact i64 %i.do, 1
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #27
          to label %.noexc207 unwind label %bb.bl ; 4 uses

.noexc207:                                        ; preds = %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i
  %i.dv = load ptr, ptr %2, align 16, !tbaa !98   ; 5 uses
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !95 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc207, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %i.du, %.noexc207 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %i.dv, %.noexc207 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !97, !alias.scope !235
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i205 = icmp eq ptr %i.dx, %i.dw
  br i1 %.not.i.i.i.i205, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc207
  %.not.i8.i = icmp eq ptr %i.dv, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.dz = load ptr, ptr %i.dr, align 16, !tbaa !96
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ec) #28
  br label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.du, ptr %2, align 16, !tbaa !98
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !95
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dp
  store ptr %i.ed, ptr %i.dr, align 16, !tbaa !96
  br label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit

.lr.ph425:                                        ; preds = %.preheader415, %._crit_edge
  %i.ee = phi ptr [ %i.iw, %._crit_edge ], [ %11, %.preheader415 ]
  %.0138424 = phi i64 [ %i.iu, %._crit_edge ], [ 0, %.preheader415 ] ; 5 uses
  %i.ef = getelementptr [32 x i8], ptr %i.ee, i64 %.0138424 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !92 ; 3 uses
  %i.ei = trunc i64 %i.eh to i32                  ; 3 uses
  %.not161 = icmp eq i64 %.0138424, 0
  br i1 %.not161, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph425
  %i.ej = getelementptr i8, ptr %i.ef, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !92
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 %i.ek) ; 2 uses
  %i.el = trunc i64 %.sroa.speculated to i32      ; 2 uses
  %.not457.a = icmp eq i32 %i.el, 0
  br i1 %.not457.a, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.em = getelementptr i8, ptr %i.ef, i64 -32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !104
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !104
  %wide.trip.count = and i64 %.sroa.speculated, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv
  %i.es = load i8, ptr %i.er, align 1, !tbaa !62
  %i.et = icmp eq i8 %i.eq, %i.es
  br i1 %i.et, label %bb.n, label %.critedge.split.loop.exit683

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.m, !llvm.loop !221

.critedge.split.loop.exit683:                     ; preds = %bb.m
  %i.eu = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.split.loop.exit683
  %.0137.lcssa = phi i32 [ %i.eu, %.critedge.split.loop.exit683 ], [ %i.el, %bb.n ] ; 8 uses
  %.not162 = icmp eq i32 %.0137.lcssa, 0
  br i1 %.not162, label %.critedge.thread, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.ev = add i32 %.0137.lcssa, -1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [144 x i8], ptr %i.ar, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !68
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !68 ; 2 uses
  %i.fc = icmp eq ptr %i.ez, %i.fb
  br i1 %i.fc, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -1 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !62
  %.not163 = icmp eq i8 %i.fe, 0
  br i1 %.not163, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.fd, align 1, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !141
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !65
  store i64 -1, ptr %i.fh, align 8, !tbaa !65
  %i.fj = load i32, ptr %i.f, align 4, !tbaa !127
  %.not164 = icmp ugt i32 %.0137.lcssa, %i.fj
  br i1 %.not164, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = zext i32 %.0137.lcssa to i64
  %i.fl = getelementptr inbounds nuw [144 x i8], ptr %i.ar, i64 %i.fk ; 3 uses
  invoke fastcc void @_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData9StartNodeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.fl)
          to label %bb.s unwind label %.loopexit.split-lp411.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !68
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -1
  store i8 1, ptr %i.fo, align 1, !tbaa !62
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !141
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -8
  store i64 %i.fi, ptr %i.fr, align 8, !tbaa !65
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.l, %.lr.ph425, %bb.o, %bb.p, %bb.s, %bb.q, %.critedge
  %.1392 = phi i32 [ 0, %.critedge ], [ %.0137.lcssa, %bb.o ], [ %.0137.lcssa, %bb.p ], [ %.0137.lcssa, %bb.s ], [ %.0137.lcssa, %bb.q ], [ 0, %.lr.ph425 ], [ 0, %bb.l ] ; 2 uses
  %i.fs = icmp ult i32 %.1392, %i.ei
  br i1 %i.fs, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %.critedge.thread
  %i.ft = zext i32 %.1392 to i64                  ; 4 uses
  %i.fu = and i64 %i.eh, 4294967295               ; 2 uses
  %i.fv = load ptr, ptr %i.ef, align 8, !tbaa !104
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ft
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !62  ; 2 uses
  %indvars.iv.next480.peel = add nuw nsw i64 %i.ft, 1 ; 3 uses
  %i.fy = icmp samesign ult i64 %indvars.iv.next480.peel, %i.fu ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [144 x i8], ptr %i.ar, i64 %i.ft ; 2 uses
  %.phi.trans.insert502 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert502, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert504 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.pre505 = load ptr, ptr %.phi.trans.insert504, align 8, !tbaa !142 ; 2 uses
  %i.fz = getelementptr inbounds nuw [144 x i8], ptr %i.ar, i64 %i.ft ; 10 uses
  %i.ga = zext i1 %i.fy to i8                     ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %.not.i.i209.peel = icmp eq ptr %.pre, %.pre505
  br i1 %.not.i.i209.peel, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 %i.fx, ptr %.pre, align 1, !tbaa !62
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !140
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store ptr %i.ge, ptr %i.gb, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel

bb.v:                                             ; preds = %bb.t
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !139 ; 4 uses
  %i.gg = ptrtoint ptr %.pre505 to i64
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 7 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775807
  br i1 %i.gj, label %.loopexit488.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.peel

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.peel: ; preds = %bb.v
  %.sroa.speculated.i.i.i.i.peel = tail call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gk = add i64 %.sroa.speculated.i.i.i.i.peel, %i.gi ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gi
  %i.gm = tail call i64 @llvm.umin.i64(i64 %i.gk, i64 9223372036854775807)
  %i.gn = select i1 %i.gl, i64 9223372036854775807, i64 %i.gm ; 3 uses
  %.not.i.i.i.i210.peel = icmp ne i64 %i.gn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i210.peel)
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #27
          to label %.noexc212.peel unwind label %.loopexit.split-lp411.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc212.peel:                                   ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.peel
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gi ; 2 uses
  store i8 %i.fx, ptr %i.gp, align 1, !tbaa !62
  %i.gq = icmp sgt i64 %i.gi, 0
  br i1 %i.gq, label %bb.w, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel

bb.w:                                             ; preds = %.noexc212.peel
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.go, ptr align 1 %i.gf, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel: ; preds = %bb.w, %.noexc212.peel
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %.not.i17.i.i.i.peel = icmp eq ptr %i.gf, null
  br i1 %.not.i17.i.i.i.peel, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel
  %i.gs = load ptr, ptr %i.gc, align 8, !tbaa !142
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.gh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gu) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel
  store ptr %i.go, ptr %i.fz, align 8, !tbaa !139
  store ptr %i.gr, ptr %i.gb, align 8, !tbaa !140
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  store ptr %i.gv, ptr %i.gc, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel:   ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel, %bb.u
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fz, i64 32 ; 4 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !140 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 40 ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !142
  %.not.i.i.i.peel = icmp eq ptr %i.gy, %i.ha
  br i1 %.not.i.i.i.peel, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel
  store i8 %i.ga, ptr %i.gy, align 1, !tbaa !62
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !140
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store ptr %i.hc, ptr %i.gx, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.peel

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel
  %i.hd = load ptr, ptr %i.gw, align 8, !tbaa !139 ; 4 uses
  %i.he = ptrtoint ptr %i.gy to i64
  %i.hf = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hg = sub i64 %i.he, %i.hf                    ; 7 uses
  %i.hh = icmp eq i64 %i.hg, 9223372036854775807
  br i1 %i.hh, label %.loopexit488.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.peel

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.peel: ; preds = %bb.z
  %.sroa.speculated.i.i.i.i.i.peel = tail call i64 @llvm.umax.i64(i64 %i.hg, i64 1)
  %i.hi = add i64 %.sroa.speculated.i.i.i.i.i.peel, %i.hg ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hg
  %i.hk = tail call i64 @llvm.umin.i64(i64 %i.hi, i64 9223372036854775807)
  %i.hl = select i1 %i.hj, i64 9223372036854775807, i64 %i.hk ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEv:bb.a
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64               ; 2 uses
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = icmp ult i64 %i.qx, %i.qq
  br i1 %i.qy, label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i225, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit236

_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i225: ; preds = %bb.bj
  %i.qz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !95
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = sub i64 %i.rb, %i.qw
  %i.rd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qq) #27
          to label %.noexc235 unwind label %bb.bq ; 4 uses

.noexc235:                                        ; preds = %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i225
  %i.re = load ptr, ptr %6, align 16, !tbaa !98   ; 5 uses
  %i.rf = load ptr, ptr %i.qz, align 8, !tbaa !95 ; 2 uses
  %.not10.i.i.i.i226 = icmp eq ptr %i.re, %i.rf
  br i1 %.not10.i.i.i.i226, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i231, label %.lr.ph.i.i.i.i227

.lr.ph.i.i.i.i227:                                ; preds = %.noexc235, %.lr.ph.i.i.i.i227
  %.012.i.i.i.i228 = phi ptr [ %i.rh, %.lr.ph.i.i.i.i227 ], [ %i.rd, %.noexc235 ] ; 2 uses
  %.0911.i.i.i.i229 = phi ptr [ %i.rg, %.lr.ph.i.i.i.i227 ], [ %i.re, %.noexc235 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i228, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i229, i64 16, i1 false), !tbaa.struct !97, !alias.scope !238
  %i.rg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i229, i64 16 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i228, i64 16
  %.not.i.i.i.i230 = icmp eq ptr %i.rg, %i.rf
  br i1 %.not.i.i.i.i230, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i231, label %.lr.ph.i.i.i.i227, !llvm.loop !5

_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i231: ; preds = %.lr.ph.i.i.i.i227, %.noexc235
  %.not.i8.i232 = icmp eq ptr %i.re, null
  br i1 %.not.i8.i232, label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i233, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i231
  %i.ri = load ptr, ptr %i.qs, align 16, !tbaa !96
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = ptrtoint ptr %i.re to i64
  %i.rl = sub i64 %i.rj, %i.rk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.re, i64 noundef %i.rl) #28
  br label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i233

_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i233: ; preds = %bb.bk, %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i231
  store ptr %i.rd, ptr %6, align 16, !tbaa !98
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rc
  store ptr %i.rm, ptr %i.qz, align 8, !tbaa !95
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.qq
  store ptr %i.rn, ptr %i.qs, align 16, !tbaa !96
  br label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit236

bb.bl:                                            ; preds = %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i, %bb.i
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.bm:                                            ; preds = %bb.bm, %.lr.ph429.new
  %.0134428 = phi i64 [ 0, %.lr.ph429.new ], [ %i.tk, %bb.bm ] ; 10 uses
  %.0135427 = phi i32 [ 0, %.lr.ph429.new ], [ %i.tj, %bb.bm ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph429.new ], [ %niter.next.7, %bb.bm ]
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %.0134428
  store i32 %.0135427, ptr %i.rp, align 4, !tbaa !70
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.0134428
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !70
  %i.rs = add i32 %.0135427, -1
  %i.rt = add i32 %i.rs, %i.rr                    ; 2 uses
  %i.ru = or disjoint i64 %.0134428, 1            ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.ru
  store i32 %i.rt, ptr %i.rv, align 4, !tbaa !70
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.ru
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !70
  %i.ry = add i32 %i.rt, -1
  %i.rz = add i32 %i.ry, %i.rx                    ; 2 uses
  %i.sa = or disjoint i64 %.0134428, 2            ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.sa
  store i32 %i.rz, ptr %i.sb, align 4, !tbaa !70
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.sa
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !70
  %i.se = add i32 %i.rz, -1
  %i.sf = add i32 %i.se, %i.sd                    ; 2 uses
  %i.sg = or disjoint i64 %.0134428, 3            ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.sg
  store i32 %i.sf, ptr %i.sh, align 4, !tbaa !70
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.sg
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !70
  %i.sk = add i32 %i.sf, -1
  %i.sl = add i32 %i.sk, %i.sj                    ; 2 uses
  %i.sm = or disjoint i64 %.0134428, 4            ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.sm
  store i32 %i.sl, ptr %i.sn, align 4, !tbaa !70
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.sm
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !70
  %i.sq = add i32 %i.sl, -1
  %i.sr = add i32 %i.sq, %i.sp                    ; 2 uses
  %i.ss = or disjoint i64 %.0134428, 5            ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.ss
  store i32 %i.sr, ptr %i.st, align 4, !tbaa !70
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.ss
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !70
  %i.sw = add i32 %i.sr, -1
  %i.sx = add i32 %i.sw, %i.sv                    ; 2 uses
  %i.sy = or disjoint i64 %.0134428, 6            ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.sy
  store i32 %i.sx, ptr %i.sz, align 4, !tbaa !70
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.sy
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !70
  %i.tc = add i32 %i.sx, -1
  %i.td = add i32 %i.tc, %i.tb                    ; 2 uses
  %i.te = or disjoint i64 %.0134428, 7            ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.te
  store i32 %i.td, ptr %i.tf, align 4, !tbaa !70
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.te
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !70
  %i.ti = add i32 %i.td, -1
  %i.tj = add i32 %i.ti, %i.th                    ; 2 uses
  %i.tk = add nuw i64 %.0134428, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge430.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !228

_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit236: ; preds = %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i233, %bb.bj
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !107
  %i.to = load ptr, ptr %i.tl, align 8, !tbaa !109
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq                    ; 4 uses
  %i.ts = icmp ugt i64 %i.tr, 9223372036854775800
  br i1 %i.ts, label %.invoke, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit236
  %i.tt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.tu = load ptr, ptr %i.tt, align 16, !tbaa !108
  %i.tv = load ptr, ptr %7, align 16, !tbaa !109
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tv to i64               ; 2 uses
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = icmp ult i64 %i.ty, %i.tr
  br i1 %i.tz, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i237, label %_ZNSt6vectorImSaImEE7reserveEm.exit243

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i237: ; preds = %bb.bn
  %i.ua = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !107
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = sub i64 %i.uc, %i.tx
  %i.ue = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tr) #27
          to label %.noexc242 unwind label %bb.bq ; 4 uses

.noexc242:                                        ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i237
  %i.uf = load ptr, ptr %7, align 16, !tbaa !109  ; 4 uses
  %i.ug = load ptr, ptr %i.ua, align 8, !tbaa !107
  %i.uh = ptrtoint ptr %i.ug to i64
  %i.ui = ptrtoint ptr %i.uf to i64               ; 2 uses
  %i.uj = sub i64 %i.uh, %i.ui                    ; 2 uses
  %i.uk = icmp sgt i64 %i.uj, 0
  br i1 %i.uk, label %bb.bo, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i238

bb.bo:                                            ; preds = %.noexc242
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ue, ptr align 8 %i.uf, i64 %i.uj, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i238

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i238: ; preds = %bb.bo, %.noexc242
  %.not.i8.i239 = icmp eq ptr %i.uf, null
  br i1 %.not.i8.i239, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i240, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i238
  %i.ul = load ptr, ptr %i.tt, align 16, !tbaa !108
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = sub i64 %i.um, %i.ui
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.un) #28
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i240

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i240: ; preds = %bb.bp, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i238
  store ptr %i.ue, ptr %7, align 16, !tbaa !109
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.ud
  store ptr %i.uo, ptr %i.ua, align 8, !tbaa !107
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.tr
  store ptr %i.up, ptr %i.tt, align 16, !tbaa !108
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit243

bb.bq:                                            ; preds = %.invoke, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i237, %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i225, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

_ZNSt6vectorImSaImEE7reserveEm.exit243:           ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i240, %bb.bn, %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %2, ptr %8, align 8, !tbaa !239
  %i.ur = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.ur, align 8, !tbaa !156
  %i.us = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.us, align 8, !tbaa !240
  %i.ut = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %4, ptr %i.ut, align 8, !tbaa !241
  %i.uu = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %5, ptr %i.uu, align 8, !tbaa !241
  %i.uv = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %6, ptr %i.uv, align 8, !tbaa !239
  %i.uw = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %7, ptr %i.uw, align 8, !tbaa !240
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.uz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.va = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.bs

bb.br:                                            ; preds = %.loopexit406
  %i.vb = load i32, ptr %i.an, align 8, !tbaa !131
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %bb.ey, label %bb.ez

bb.bs:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit243, %.loopexit406
  %.0133453 = phi i32 [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit243 ], [ %i.amx, %.loopexit406 ] ; 4 uses
  %i.vd = zext i32 %.0133453 to i64
  %i.ve = getelementptr inbounds nuw [144 x i8], ptr %i.ar, i64 %i.vd ; 11 uses
  %i.vf = getelementptr i8, ptr %i.ve, i64 72     ; 6 uses
  %.val181 = load ptr, ptr %i.vf, align 8, !tbaa !139 ; 4 uses
  %i.vg = getelementptr i8, ptr %i.ve, i64 80     ; 3 uses
  %.val182 = load ptr, ptr %i.vg, align 8, !tbaa !140 ; 2 uses
  %i.vh = icmp eq ptr %.val182, %.val181
  br i1 %i.vh, label %.loopexit406, label %.lr.ph446

.lr.ph446:                                        ; preds = %bb.bs
  %i.vi = ptrtoint ptr %.val182 to i64
  %i.vj = ptrtoint ptr %.val181 to i64
  %i.vk = sub i64 %i.vi, %i.vj                    ; 2 uses
  %i.vl = load i32, ptr %i.an, align 8, !tbaa !131
  %i.vm = icmp ult i32 %.0133453, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 120 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 8 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ve, i64 96 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ve, i64 24 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ve, i64 48 ; 2 uses
  %.fr = freeze i1 %i.vm
  br i1 %.fr, label %.lr.ph446.split.us, label %.lr.ph446.split

.lr.ph446.split.us:                               ; preds = %.lr.ph446, %bb.dp
  %i.vs = phi i64 [ %i.afx, %bb.dp ], [ %i.vk, %.lr.ph446 ]
  %.val179444.us = phi ptr [ %.val179.us, %bb.dp ], [ %.val181, %.lr.ph446 ]
  %.0132443.us = phi i64 [ %i.vw, %bb.dp ], [ 0, %.lr.ph446 ] ; 7 uses
  %i.vt = load ptr, ptr %i.vn, align 8, !tbaa !109 ; 2 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %.0132443.us
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !65 ; 7 uses
  %i.vw = add nuw i64 %.0132443.us, 1             ; 4 uses
  %i.vx = icmp ult i64 %i.vw, %i.vs
  br i1 %i.vx, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph446.split.us
  %i.vy = load ptr, ptr %i.vo, align 8, !tbaa !140
  %i.vz = load ptr, ptr %i.ve, align 8, !tbaa !139
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = ptrtoint ptr %i.vz to i64
  %i.wc = sub i64 %i.wa, %i.wb
  br label %bb.bv

bb.bu:                                            ; preds = %.lr.ph446.split.us
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vw
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !65
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.wf = phi i64 [ %i.we, %bb.bu ], [ %i.wc, %bb.bt ] ; 6 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.val179444.us, i64 %.0132443.us
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !62
  %.not154.us = icmp eq i8 %i.wh, 0
  br i1 %.not154.us, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wi = load ptr, ptr %i.vp, align 8, !tbaa !146
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %.0132443.us
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !65 ; 2 uses
  %i.wl = icmp sgt i64 %i.wk, -1
  br i1 %i.wl, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke fastcc void @"_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvENK3$_0clEm"(ptr noundef nonnull align 8 dereferenceable(56) %8, i64 noundef %i.wk)
          to label %bb.by unwind label %.loopexit.split-lp403.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.wm = icmp eq i64 %i.vv, %i.wf
  br i1 %i.wm, label %bb.dn, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.wn = load i64, ptr %i.cc, align 8, !tbaa !157
  %i.wo = add i64 %i.wn, 1
  store i64 %i.wo, ptr %i.cc, align 8, !tbaa !157
  %i.wp = load ptr, ptr %i.vf, align 8, !tbaa !139
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 %.0132443.us
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !62
  %.not395.us = icmp eq i8 %i.wr, 0
  %i.ws = load i64, ptr %i.cb, align 8, !tbaa !138
  %i.wt = and i64 %i.ws, 63
  %i.wu = icmp eq i64 %i.wt, 0
  br i1 %i.wu, label %bb.ca, label %_ZNSt6vectorImSaImEE9push_backEOm.exit.i.us

bb.ca:                                            ; preds = %bb.bz
  %i.wv = load ptr, ptr %i.bv, align 8, !tbaa !107 ; 4 uses
  %i.ww = load ptr, ptr %i.bw, align 8, !tbaa !108
  %.not.i.i.i244.us = icmp eq ptr %i.wv, %i.ww
  br i1 %.not.i.i.i244.us, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i64 0, ptr %i.wv, align 8, !tbaa !65
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store ptr %i.wx, ptr %i.bv, align 8, !tbaa !107
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit.i.us

bb.cc:                                            ; preds = %bb.ca
  %i.wy = load ptr, ptr %i.bt, align 8, !tbaa !109 ; 4 uses
  %i.wz = ptrtoint ptr %i.wv to i64
  %i.xa = ptrtoint ptr %i.wy to i64               ; 2 uses
  %i.xb = sub i64 %i.wz, %i.xa                    ; 5 uses
  %i.xc = icmp eq i64 %i.xb, 9223372036854775800
  br i1 %i.xc, label %.invoke685, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.us

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.us: ; preds = %bb.cc
  %i.xd = ashr exact i64 %i.xb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i245.us = call i64 @llvm.umax.i64(i64 %i.xd, i64 1)
  %i.xe = add nsw i64 %.sroa.speculated.i.i.i.i.i245.us, %i.xd ; 2 uses
  %i.xf = icmp ult i64 %i.xe, %i.xd
  %i.xg = call i64 @llvm.umin.i64(i64 %i.xe, i64 1152921504606846975)
  %i.xh = select i1 %i.xf, i64 1152921504606846975, i64 %i.xg ; 3 uses
  %.not.i.i.i.i.i246.us = icmp ne i64 %i.xh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i246.us)
  %i.xi = shl nuw nsw i64 %i.xh, 3
  %i.xj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xi) #27
          to label %.noexc249.us unwind label %.loopexit.split-lp403.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc249.us:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.us
  %i.xk = getelementptr inbounds i8, ptr %i.xj, i64 %i.xb ; 2 uses
  store i64 0, ptr %i.xk, align 8, !tbaa !65
  %i.xl = icmp sgt i64 %i.xb, 0
  br i1 %i.xl, label %bb.cd, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.us

bb.cd:                                            ; preds = %.noexc249.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xj, ptr align 8 %i.wy, i64 %i.xb, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.us

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.us: ; preds = %bb.cd, %.noexc249.us
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %.not.i17.i.i.i.i247.us = icmp eq ptr %i.wy, null
  br i1 %.not.i17.i.i.i.i247.us, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.us, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.us
  %i.xn = load ptr, ptr %i.bw, align 8, !tbaa !108
  %i.xo = ptrtoint ptr %i.xn to i64
  %i.xp = sub i64 %i.xo, %i.xa
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xp) #28
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.us

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.us: ; preds = %bb.ce, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.us
  store ptr %i.xj, ptr %i.bt, align 8, !tbaa !109
  store ptr %i.xm, ptr %i.bv, align 8, !tbaa !107
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %i.xh
  store ptr %i.xq, ptr %i.bw, align 8, !tbaa !108
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit.i.us

_ZNSt6vectorImSaImEE9push_backEOm.exit.i.us:      ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.us, %bb.cb, %bb.bz
  %.pre2.i.us = load i64, ptr %i.cb, align 8, !tbaa !138 ; 2 uses
  br i1 %.not395.us, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit.i.us
  %i.xr = and i64 %.pre2.i.us, 63
  %i.xs = shl nuw i64 1, %i.xr
  %i.xt = load ptr, ptr %i.bv, align 8, !tbaa !141
  %i.xu = getelementptr inbounds i8, ptr %i.xt, i64 -8 ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !65
  %i.xw = or i64 %i.xv, %i.xs
  store i64 %i.xw, ptr %i.xu, align 8, !tbaa !65
  %.pre.i.us = load i64, ptr %i.cb, align 8, !tbaa !138
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNSt6vectorImSaImEE9push_backEOm.exit.i.us
  %i.xx = phi i64 [ %.pre.i.us, %bb.cf ], [ %.pre2.i.us, %_ZNSt6vectorImSaImEE9push_backEOm.exit.i.us ]
  %i.xy = add i64 %i.xx, 1
  store i64 %i.xy, ptr %i.cb, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.xz = icmp ult i64 %i.vv, %i.wf               ; 2 uses
  br i1 %i.xz, label %.lr.ph436.us, label %.preheader397.us

.lr.ph436.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph436.us.new
  %.0131434.us = phi i64 [ %i.zv, %.lr.ph436.us.new ], [ %.0131434.us.unr, %.prol.loopexit ] ; 5 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.agc, i64 %.0131434.us
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !62
  %i.yc = zext i8 %i.yb to i32                    ; 2 uses
  %i.yd = and i32 %i.yc, 63
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = shl nuw i64 1, %i.ye
  %i.yg = lshr i32 %i.yc, 6
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.yh ; 2 uses
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !65
  %i.yk = or i64 %i.yf, %i.yj
  store i64 %i.yk, ptr %i.yi, align 8, !tbaa !65
  %i.yl = getelementptr inbounds nuw i8, ptr %i.agc, i64 %.0131434.us
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !62
  %i.yo = zext i8 %i.yn to i32                    ; 2 uses
  %i.yp = and i32 %i.yo, 63
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = shl nuw i64 1, %i.yq
  %i.ys = lshr i32 %i.yo, 6
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.yt ; 2 uses
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !65
  %i.yw = or i64 %i.yr, %i.yv
  store i64 %i.yw, ptr %i.yu, align 8, !tbaa !65
  %i.yx = getelementptr inbounds nuw i8, ptr %i.agc, i64 %.0131434.us
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 2
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !62
  %i.za = zext i8 %i.yz to i32                    ; 2 uses
  %i.zb = and i32 %i.za, 63
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = shl nuw i64 1, %i.zc
end_hunk_1
