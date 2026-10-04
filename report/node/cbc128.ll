Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cbc128?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@CRYPTO_cbc128_encrypt:bb.a
  %i.bo = add nuw nsw i64 %.14971, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bo, %.055.lcssa86
  br i1 %exitcond.not.3, label %iter.check124, label %.preheader60, !llvm.loop !21

iter.check124:                                    ; preds = %.preheader60.prol.loopexit, %.preheader60, %vec.epilog.middle.block
  %i.bp = sub nuw nsw i64 16, %.055.lcssa86       ; 2 uses
  %min.iters.check110 = icmp ugt i64 %.055.lcssa86, 8
  %i.bq = sub i64 %.0.lcssa8996, %.053.lcssa8794
  %diff.check109 = icmp ugt i64 %i.bq, -32
  %or.cond = select i1 %min.iters.check110, i1 true, i1 %diff.check109
  br i1 %or.cond, label %.lr.ph.preheader, label %vec.epilog.ph128

vec.epilog.ph128:                                 ; preds = %iter.check124
  %n.vec129 = and i64 %i.bp, 24                   ; 3 uses
  %i.br = add nuw nsw i64 %.055.lcssa86, %n.vec129
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.055.lcssa86
  %wide.load132 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.055.lcssa86
  store <8 x i8> %wide.load132, ptr %i.bt, align 1, !tbaa !13
  %i.bu = icmp eq i64 %n.vec129, 8
  br i1 %i.bu, label %vec.epilog.middle.block134, label %vec.epilog.vector.body130.1

vec.epilog.vector.body130.1:                      ; preds = %vec.epilog.ph128
  %i.bv = add nuw nsw i64 %.055.lcssa86, 8        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.bv
  %wide.load132.1 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.bv
  store <8 x i8> %wide.load132.1, ptr %i.bx, align 1, !tbaa !13
  br label %vec.epilog.middle.block134

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body130.1, %vec.epilog.ph128
  %cmp.n135 = icmp eq i64 %i.bp, %n.vec129
  br i1 %cmp.n135, label %._crit_edge73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check124, %vec.epilog.middle.block134
  %.25072.ph = phi i64 [ %.055.lcssa86, %iter.check124 ], [ %i.br, %vec.epilog.middle.block134 ] ; 4 uses
  %i.by = sub i64 0, %.25072.ph
  %xtraiter139 = and i64 %i.by, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.25072.prol = phi i64 [ %i.cc, %.lr.ph.prol ], [ %.25072.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.25072.prol
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.25072.prol
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !13
  %i.cc = add i64 %.25072.prol, 1                 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !22

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.25072.unr = phi i64 [ %.25072.ph, %.lr.ph.preheader ], [ %i.cc, %.lr.ph.prol ]
  %i.cd = add i64 %.25072.ph, -13
  %i.ce = icmp ult i64 %i.cd, 3
  br i1 %i.ce, label %._crit_edge73, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.25072 = phi i64 [ %i.cu, %.lr.ph ], [ %.25072.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %.25072
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %.25072
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !13
  %i.ci = add i64 %.25072, 1                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !13
  %i.cm = add i64 %.25072, 2                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !13
  %i.cq = add i64 %.25072, 3                      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.053.lcssa87, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !13
  %i.cu = add i64 %.25072, 4                      ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %i.cu, 16
  br i1 %exitcond78.not.3, label %._crit_edge73, label %.lr.ph, !llvm.loop !23

._crit_edge73:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block134
  tail call void %5(ptr noundef nonnull %.053.lcssa87, ptr noundef nonnull %.053.lcssa87, ptr noundef %3) #2
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge73, %._crit_edge
  %.2 = phi ptr [ %.053.lcssa87, %._crit_edge73 ], [ %.05365, %._crit_edge ] ; 2 uses
  %.not59 = icmp eq ptr %4, %.2
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.2, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %6 = alloca %union.anon, align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  %i.c = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %.not, label %.preheader99, label %.preheader101

.preheader101:                                    ; preds = %bb.b
  br i1 %i.c, label %.lr.ph, label %iter.check

.preheader99:                                     ; preds = %bb.b
  br i1 %i.c, label %.lr.ph114.preheader, label %iter.check

.lr.ph114.preheader:                              ; preds = %.preheader99
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph114

.lr.ph:                                           ; preds = %.preheader101, %.lr.ph
  %.0106 = phi ptr [ %.077105, %.lr.ph ], [ %4, %.preheader101 ] ; 2 uses
  %.077105 = phi ptr [ %i.o, %.lr.ph ], [ %0, %.preheader101 ] ; 5 uses
  %.081104 = phi ptr [ %i.p, %.lr.ph ], [ %1, %.preheader101 ] ; 5 uses
  %.086103 = phi i64 [ %i.n, %.lr.ph ], [ %2, %.preheader101 ]
  tail call void %5(ptr noundef %.077105, ptr noundef %.081104, ptr noundef %3) #2
  %i.f = load i64, ptr %.0106, align 1, !tbaa !11
  %i.g = load i64, ptr %.081104, align 1, !tbaa !11
  %i.h = xor i64 %i.g, %i.f
  store i64 %i.h, ptr %.081104, align 1, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  %i.j = load i64, ptr %i.i, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %.081104, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 1, !tbaa !11
  %i.m = xor i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 1, !tbaa !11
  %i.n = add i64 %.086103, -16                    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.077105, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.081104, i64 16 ; 3 uses
  %i.q = icmp ugt i64 %i.n, 15
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph
  %.not97 = icmp eq ptr %4, %.077105
  br i1 %.not97, label %.loopexit100, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.077105, i64 16, i1 false)
  br label %.loopexit100

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %.178113 = phi ptr [ %i.ac, %.lr.ph114 ], [ %0, %.lr.ph114.preheader ] ; 4 uses
  %.182112 = phi ptr [ %i.ad, %.lr.ph114 ], [ %1, %.lr.ph114.preheader ] ; 3 uses
  %.187111 = phi i64 [ %i.ab, %.lr.ph114 ], [ %2, %.lr.ph114.preheader ]
  call void %5(ptr noundef %.178113, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.r = load i64, ptr %.178113, align 1, !tbaa !11
  %i.s = load i64, ptr %6, align 8, !tbaa !13
  %i.t = load i64, ptr %4, align 1, !tbaa !11
  %i.u = xor i64 %i.t, %i.s
  store i64 %i.u, ptr %.182112, align 1, !tbaa !11
  store i64 %i.r, ptr %4, align 1, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %.178113, i64 8
  %i.w = load i64, ptr %i.v, align 1, !tbaa !11
  %i.x = load i64, ptr %i.d, align 8, !tbaa !13
  %i.y = load i64, ptr %i.e, align 1, !tbaa !11
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.182112, i64 8
  store i64 %i.z, ptr %i.aa, align 1, !tbaa !11
  store i64 %i.w, ptr %i.e, align 1, !tbaa !11
  %i.ab = add i64 %.187111, -16                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.178113, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.182112, i64 16 ; 2 uses
  %i.ae = icmp ugt i64 %i.ab, 15
  br i1 %i.ae, label %.lr.ph114, label %.loopexit100, !llvm.loop !25

.loopexit100:                                     ; preds = %.lr.ph114, %bb.c, %._crit_edge
  %.288 = phi i64 [ %i.n, %._crit_edge ], [ %i.n, %bb.c ], [ %i.ab, %.lr.ph114 ] ; 2 uses
  %.283 = phi ptr [ %i.p, %._crit_edge ], [ %i.p, %bb.c ], [ %i.ad, %.lr.ph114 ]
  %.279 = phi ptr [ %i.o, %._crit_edge ], [ %i.o, %bb.c ], [ %i.ac, %.lr.ph114 ]
  %.not98 = icmp eq i64 %.288, 0
  br i1 %.not98, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader101, %.preheader99, %.loopexit100
  %.279146 = phi ptr [ %.279, %.loopexit100 ], [ %0, %.preheader99 ], [ %0, %.preheader101 ] ; 17 uses
  %.283145 = phi ptr [ %.283, %.loopexit100 ], [ %1, %.preheader99 ], [ %1, %.preheader101 ] ; 9 uses
  %.288144 = phi i64 [ %.288, %.loopexit100 ], [ %2, %.preheader99 ], [ %2, %.preheader101 ] ; 21 uses
  %.279146207 = ptrtoaddr ptr %.279146 to i64
  call void %5(ptr noundef %.279146, ptr noundef nonnull %6, ptr noundef %3) #2
  %i.af = sub nuw nsw i64 17, %.288144            ; 4 uses
  %min.iters.check = icmp ult i64 %.288144, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = getelementptr i8, ptr %.283145, i64 %.288144 ; 3 uses
  %i.ah = getelementptr i8, ptr %4, i64 %.288144  ; 3 uses
  %i.ai = getelementptr i8, ptr %.279146, i64 %.288144 ; 2 uses
  %i.aj = getelementptr i8, ptr %6, i64 %.288144  ; 2 uses
  %bound0 = icmp ult ptr %.283145, %i.ah
  %bound1 = icmp ult ptr %4, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  %bound0175 = icmp ult ptr %.283145, %i.ai
  %bound1176 = icmp ult ptr %.279146, %i.ag
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx = or i1 %found.conflict, %found.conflict177
  %bound0178 = icmp ult ptr %.283145, %i.aj
  %bound1179 = icmp ult ptr %6, %i.ag
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx, %found.conflict180
  %bound0182 = icmp ult ptr %4, %i.ai
  %bound1183 = icmp ult ptr %.279146, %i.ah
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %4, %i.aj
  %bound1187 = icmp ult ptr %6, %i.ah
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  br i1 %conflict.rdx189, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check190 = icmp ult i64 %.288144, 32
  br i1 %min.iters.check190, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %.288144, 28
  %n.vec = and i64 %.288144, -32                  ; 5 uses
  %i.al = or disjoint i64 %i.af, %n.vec           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.279146, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !13, !alias.scope !38
  %wide.load191 = load <16 x i8>, ptr %i.an, align 1, !tbaa !13, !alias.scope !38
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load192 = load <16 x i8>, ptr %i.ao, align 8, !tbaa !13, !alias.scope !39
  %wide.load193 = load <16 x i8>, ptr %i.ap, align 8, !tbaa !13, !alias.scope !39
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load194 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !13, !alias.scope !40, !noalias !41
  %wide.load195 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !13, !alias.scope !40, !noalias !41
  %i.as = xor <16 x i8> %wide.load194, %wide.load192
  %i.at = xor <16 x i8> %wide.load195, %wide.load193
  %i.au = getelementptr inbounds nuw i8, ptr %.283145, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %i.as, ptr %i.au, align 1, !tbaa !13, !alias.scope !42, !noalias !43
  store <16 x i8> %i.at, ptr %i.av, align 1, !tbaa !13, !alias.scope !42, !noalias !43
  store <16 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !13, !alias.scope !40, !noalias !41
  store <16 x i8> %wide.load191, ptr %i.ar, align 1, !tbaa !13, !alias.scope !40, !noalias !41
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.al, -1
  %cmp.n = icmp eq i64 %.288144, %n.vec
  br i1 %cmp.n, label %iter.check221, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec196 = and i64 %.288144, -4                ; 4 uses
  %i.ax = add i64 %i.af, %n.vec196                ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.279146, i64 %index197
  %wide.load198 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !13, !alias.scope !38
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 %index197
  %wide.load199 = load <4 x i8>, ptr %i.az, align 4, !tbaa !13, !alias.scope !39
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %index197 ; 2 uses
  %wide.load200 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !13, !alias.scope !40, !noalias !41
  %i.bb = xor <4 x i8> %wide.load200, %wide.load199
  %i.bc = getelementptr inbounds nuw i8, ptr %.283145, i64 %index197
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !13, !alias.scope !42, !noalias !43
  store <4 x i8> %wide.load198, ptr %i.ba, align 1, !tbaa !13, !alias.scope !40, !noalias !41
  %index.next201 = add nuw i64 %index197, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape202 = add i64 %i.ax, -1
  %cmp.n203 = icmp eq i64 %.288144, %n.vec196
  br i1 %cmp.n203, label %iter.check221, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 3 uses
  %.2118.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec196, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.2118.ph, 1
  %xtraiter = and i64 %.288144, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %.279146, i64 %.2118.ph
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 %.2118.ph
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 %.2118.ph ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = xor i8 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %.283145, i64 %.2118.ph
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !13
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !13
  %i.bm = or disjoint i64 %.2118.ph, 1
  %indvars.iv.next.prol = add i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.2118.unr = phi i64 [ %.2118.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bm, %vec.epilog.scalar.ph.prol ]
  %i.bn = icmp eq i64 %.288144, %.neg
  br i1 %i.bn, label %iter.check221, label %vec.epilog.scalar.ph

iter.check221.loopexit.unr-lcssa:                 ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %iter.check221

iter.check221:                                    ; preds = %iter.check221.loopexit.unr-lcssa, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.middle.block, %middle.block
  %indvars.iv.lcssa = phi i64 [ %ind.escape202, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next, %iter.check221.loopexit.unr-lcssa ] ; 3 uses
  %i.bo = sub i64 16, %.288144                    ; 7 uses
  %min.iters.check208 = icmp ult i64 %i.bo, 8
  %i.bp = sub i64 %.279146207, %i.a
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = or i1 %min.iters.check208, %diff.check
  br i1 %or.cond, label %.lr.ph120.preheader, label %vector.main.loop.iter.check209

vector.main.loop.iter.check209:                   ; preds = %iter.check221
  %min.iters.check210 = icmp ult i64 %i.bo, 32
  br i1 %min.iters.check210, label %vec.epilog.ph225, label %vector.ph211

vector.ph211:                                     ; preds = %vector.main.loop.iter.check209
  %i.bq = and i64 %i.bo, 24
  %n.vec212 = and i64 %i.bo, -32                  ; 4 uses
  %i.br = add i64 %.288144, %n.vec212
  br label %vector.body213

vector.body213:                                   ; preds = %vector.ph211, %vector.body213
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next217, %vector.body213 ] ; 2 uses
  %i.bs = add nuw i64 %.288144, %index214         ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load215 = load <16 x i8>, ptr %7, align 1, !tbaa !13
  %wide.load216 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !13
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <16 x i8> %wide.load215, ptr %8, align 1, !tbaa !13
  store <16 x i8> %wide.load216, ptr %i.bu, align 1, !tbaa !13
  %index.next217 = add nuw i64 %index214, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next217, %n.vec212
  br i1 %i.bv, label %middle.block218, label %vector.body213, !llvm.loop !33

middle.block218:                                  ; preds = %vector.body213
  %cmp.n219 = icmp eq i64 %i.bo, %n.vec212
  br i1 %cmp.n219, label %.loopexit, label %vec.epilog.iter.check223

vec.epilog.iter.check223:                         ; preds = %middle.block218
  %min.epilog.iters.check224 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check224, label %.lr.ph120.preheader, label %vec.epilog.ph225, !prof !45

vec.epilog.ph225:                                 ; preds = %vector.main.loop.iter.check209, %vec.epilog.iter.check223
  %vec.epilog.resume.val220 = phi i64 [ %n.vec212, %vec.epilog.iter.check223 ], [ 0, %vector.main.loop.iter.check209 ]
  %n.vec226 = and i64 %i.bo, -8                   ; 3 uses
  %i.bw = add i64 %.288144, %n.vec226
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph225
  %index228 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph225 ], [ %index.next230, %vec.epilog.vector.body227 ] ; 2 uses
  %i.bx = add nuw i64 %.288144, %index228         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.bx
  %wide.load229 = load <8 x i8>, ptr %i.by, align 1, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 %i.bx
  store <8 x i8> %wide.load229, ptr %i.bz, align 1, !tbaa !13
  %index.next230 = add nuw i64 %index228, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next230, %n.vec226
  br i1 %i.ca, label %vec.epilog.middle.block231, label %vec.epilog.vector.body227, !llvm.loop !34

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body227
  %cmp.n232 = icmp eq i64 %i.bo, %n.vec226
  br i1 %cmp.n232, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check221, %vec.epilog.iter.check223, %vec.epilog.middle.block231
  %.3119.ph = phi i64 [ %.288144, %iter.check221 ], [ %i.br, %vec.epilog.iter.check223 ], [ %i.bw, %vec.epilog.middle.block231 ] ; 4 uses
  %i.cb = sub i64 %indvars.iv.lcssa, %.3119.ph
  %xtraiter240 = and i64 %i.cb, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader, %.lr.ph120.prol
  %.3119.prol = phi i64 [ %i.cf, %.lr.ph120.prol ], [ %.3119.ph, %.lr.ph120.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.279146, i64 %.3119.prol
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %.3119.prol
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !13
  %i.cf = add nuw nsw i64 %.3119.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter240
  br i1 %prol.iter.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !35

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %.3119.unr = phi i64 [ %.3119.ph, %.lr.ph120.preheader ], [ %i.cf, %.lr.ph120.prol ]
  %i.cg = sub i64 %.3119.ph, %indvars.iv.lcssa
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit, label %.lr.ph120

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.2118 = phi i64 [ %i.cz, %vec.epilog.scalar.ph ], [ %.2118.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.279146, i64 %.2118
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 %.2118
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 %.2118 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = xor i8 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %.283145, i64 %.2118
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !13
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !13
  %i.cq = add nuw nsw i64 %.2118, 1               ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 %i.cq
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 %i.cq ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = xor i8 %i.cw, %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %.283145, i64 %i.cq
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !13
  store i8 %i.cs, ptr %i.cv, align 1, !tbaa !13
  %i.cz = add nuw nsw i64 %.2118, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cz, %.288144
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check221.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !36

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %.3119 = phi i64 [ %i.dp, %.lr.ph120 ], [ %.3119.unr, %.lr.ph120.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.279146, i64 %.3119
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 %.3119
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !13
  %i.dd = add nuw nsw i64 %.3119, 1               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.dd
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !13
  %i.dh = add nuw nsw i64 %.3119, 2               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %i.dh
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !13
  %i.dl = add nuw nsw i64 %.3119, 3               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.279146, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 %i.dl
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !13
  %i.dp = add nuw nsw i64 %.3119, 4               ; 2 uses
  %exitcond128.not.3 = icmp eq i64 %i.dp, %indvars.iv.lcssa
  br i1 %exitcond128.not.3, label %.loopexit, label %.lr.ph120, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %middle.block218, %vec.epilog.middle.block231, %.loopexit100, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!6, !6, i64 0}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !14, !15}
!19 = distinct !{!19, !12, !14, !15}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !12, !14}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !12, !14}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, i1 false, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !12, !14, !15}
!32 = distinct !{!32, !12, !14, !15}
!33 = distinct !{!33, !12, !14, !15}
!34 = distinct !{!34, !12, !14, !15}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !12, !14}
!37 = distinct !{!37, !12, !14}
!38 = !{!27}
!39 = !{!28}
!40 = !{!29}
!41 = !{!27, !28}
!42 = !{!30}
!43 = !{!29, !27, !28}
!44 = !{!"branch_weights", i32 4, i32 28}
!45 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
