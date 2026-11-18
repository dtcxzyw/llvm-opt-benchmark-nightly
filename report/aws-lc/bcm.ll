Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6926
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@CRYPTO_cbc128_encrypt:bb.a
iter.check109:                                    ; preds = %.preheader43.prol.loopexit, %.preheader43, %vec.epilog.middle.block
  %i.bl = sub nuw nsw i64 16, %.041.lcssa67       ; 2 uses
  %min.iters.check95 = icmp ugt i64 %.041.lcssa67, 8
  %i.bm = sub i64 %.0.lcssa7079, %.040.lcssa6881
  %diff.check97 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check95, i1 true, i1 %diff.check97
  br i1 %or.cond, label %.lr.ph54.preheader, label %vec.epilog.ph113

vec.epilog.ph113:                                 ; preds = %iter.check109
  %n.vec115 = and i64 %i.bl, 24                   ; 3 uses
  %i.bn = add nuw nsw i64 %.041.lcssa67, %n.vec115
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.041.lcssa67
  %wide.load118 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.041.lcssa67
  store <8 x i8> %wide.load118, ptr %i.bp, align 1, !tbaa !78
  %i.bq = icmp eq i64 %n.vec115, 8
  br i1 %i.bq, label %vec.epilog.middle.block120, label %vec.epilog.vector.body116.1

vec.epilog.vector.body116.1:                      ; preds = %vec.epilog.ph113
  %i.br = add nuw nsw i64 %.041.lcssa67, 8        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.br
  %wide.load118.1 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !78
  %i.bt = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.br
  store <8 x i8> %wide.load118.1, ptr %i.bt, align 1, !tbaa !78
  br label %vec.epilog.middle.block120

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body116.1, %vec.epilog.ph113
  %cmp.n121 = icmp eq i64 %i.bl, %n.vec115
  br i1 %cmp.n121, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %iter.check109, %vec.epilog.middle.block120
  %.13853.ph = phi i64 [ %.041.lcssa67, %iter.check109 ], [ %i.bn, %vec.epilog.middle.block120 ] ; 4 uses
  %i.bu = sub i64 0, %.13853.ph
  %xtraiter125 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader, %.lr.ph54.prol
  %.13853.prol = phi i64 [ %i.by, %.lr.ph54.prol ], [ %.13853.ph, %.lr.ph54.preheader ] ; 3 uses
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph54.prol ], [ 0, %.lr.ph54.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.13853.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !78
  %i.bx = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.13853.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !78
  %i.by = add i64 %.13853.prol, 1                 ; 2 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol, !llvm.loop !676

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %.13853.unr = phi i64 [ %.13853.ph, %.lr.ph54.preheader ], [ %i.by, %.lr.ph54.prol ]
  %i.bz = add i64 %.13853.ph, -13
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54
  %.13853 = phi i64 [ %i.cq, %.lr.ph54 ], [ %.13853.unr, %.lr.ph54.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.13853
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !78
  %i.cd = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.13853
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !78
  %i.ce = add i64 %.13853, 1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !78
  %i.ch = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !78
  %i.ci = add i64 %.13853, 2                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !78
  %i.cl = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !78
  %i.cm = add i64 %.13853, 3                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !78
  %i.cp = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !78
  %i.cq = add i64 %.13853, 4                      ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.cq, 16
  br i1 %exitcond60.not.3, label %._crit_edge55, label %.lr.ph54, !llvm.loop !677

._crit_edge55:                                    ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54, %vec.epilog.middle.block120
  tail call void %5(ptr noundef nonnull %.040.lcssa68, ptr noundef nonnull %.040.lcssa68, ptr noundef %3) #46
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge55, %._crit_edge
  %.1 = phi ptr [ %.040.lcssa68, %._crit_edge55 ], [ %.04046, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.1, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.d = icmp ugt ptr %0, inttoptr (i64 31 to ptr)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -32
  %.not = icmp uge i64 %i.g, %i.e
  %or.cond.not94 = and i1 %i.d, %.not
  %i.h = icmp ult ptr %0, %1
  %or.cond90 = or i1 %i.h, %or.cond.not94
  %i.i = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %or.cond90, label %.preheader95, label %.preheader96

.preheader96:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph

.preheader95:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %.preheader95, %.lr.ph108
  %.070107 = phi ptr [ %i.q, %.lr.ph108 ], [ %0, %.preheader95 ] ; 4 uses
  %.071106 = phi ptr [ %.070107, %.lr.ph108 ], [ %4, %.preheader95 ] ; 2 uses
  %.075105 = phi ptr [ %i.r, %.lr.ph108 ], [ %1, %.preheader95 ] ; 5 uses
  %.080104 = phi i64 [ %i.p, %.lr.ph108 ], [ %2, %.preheader95 ]
  tail call void %5(ptr noundef %.070107, ptr noundef %.075105, ptr noundef %3) #46
  %.0.copyload.i.i = load i64, ptr %.075105, align 1
  %.0.copyload.i7.i = load i64, ptr %.071106, align 1
  %i.l = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.l, ptr %.075105, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.075105, i64 8 ; 2 uses
  %.0.copyload.i.1.i = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.071106, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.o, ptr %i.m, align 1
  %i.p = add i64 %.080104, -16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.070107, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.075105, i64 16 ; 2 uses
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %.lr.ph108, label %._crit_edge, !llvm.loop !678

._crit_edge:                                      ; preds = %.lr.ph108, %.preheader95
  %.080.lcssa = phi i64 [ %2, %.preheader95 ], [ %i.p, %.lr.ph108 ]
  %.075.lcssa = phi ptr [ %1, %.preheader95 ], [ %i.r, %.lr.ph108 ]
  %.071.lcssa = phi ptr [ %4, %.preheader95 ], [ %.070107, %.lr.ph108 ]
  %.070.lcssa = phi ptr [ %0, %.preheader95 ], [ %i.q, %.lr.ph108 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.071.lcssa, i64 16, i1 false)
  br label %.loopexit97

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1101 = phi ptr [ %i.y, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.176100 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.18199 = phi i64 [ %i.x, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  call void %5(ptr noundef %.1101, ptr noundef nonnull %i.b, ptr noundef %3) #46
  %.0.copyload.i = load i64, ptr %.1101, align 1
  %.0.copyload.i91 = load i64, ptr %i.b, align 16
  %.0.copyload.i92 = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i92, %.0.copyload.i91
  store i64 %i.t, ptr %.176100, align 1
  store i64 %.0.copyload.i, ptr %4, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.1101, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.176100, i64 8
  %.0.copyload.i91.1 = load i64, ptr %i.j, align 8
  %.0.copyload.i92.1 = load i64, ptr %i.k, align 1
  %i.w = xor i64 %.0.copyload.i92.1, %.0.copyload.i91.1
  store i64 %i.w, ptr %i.v, align 1
  store i64 %.0.copyload.i.1, ptr %i.k, align 1
  %i.x = add i64 %.18199, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1101, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.176100, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %.lr.ph, label %.loopexit97, !llvm.loop !679

.loopexit97:                                      ; preds = %.lr.ph, %._crit_edge
  %.282 = phi i64 [ %.080.lcssa, %._crit_edge ], [ %i.x, %.lr.ph ] ; 2 uses
  %.277 = phi ptr [ %.075.lcssa, %._crit_edge ], [ %i.z, %.lr.ph ]
  %.2 = phi ptr [ %.070.lcssa, %._crit_edge ], [ %i.y, %.lr.ph ]
  %.not87 = icmp eq i64 %.282, 0
  br i1 %.not87, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader96, %.loopexit97
  %.2134 = phi ptr [ %.2, %.loopexit97 ], [ %0, %.preheader96 ] ; 17 uses
  %.277133 = phi ptr [ %.277, %.loopexit97 ], [ %1, %.preheader96 ] ; 9 uses
  %.282132 = phi i64 [ %.282, %.loopexit97 ], [ %2, %.preheader96 ] ; 21 uses
  %.2134195 = ptrtoaddr ptr %.2134 to i64
  call void %5(ptr noundef %.2134, ptr noundef nonnull %i.b, ptr noundef %3) #46
  %i.ab = sub nuw nsw i64 17, %.282132            ; 4 uses
  %min.iters.check = icmp ult i64 %.282132, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = getelementptr i8, ptr %.277133, i64 %.282132 ; 3 uses
  %i.ad = getelementptr i8, ptr %4, i64 %.282132  ; 3 uses
  %6 = getelementptr i8, ptr %.2134, i64 %.282132 ; 2 uses
  %7 = getelementptr i8, ptr %i.b, i64 %.282132   ; 2 uses
  %bound0.a = icmp ult ptr %.277133, %i.ad
  %bound1 = icmp ult ptr %4, %i.ac
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0163 = icmp ult ptr %.277133, %6
  %bound1164 = icmp ult ptr %.2134, %i.ac
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %.277133, %7
  %bound1167 = icmp ult ptr %i.b, %i.ac
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %4, %6
  %bound1171 = icmp ult ptr %.2134, %i.ad
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %4, %7
  %bound1175 = icmp ult ptr %i.b, %i.ad
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  br i1 %conflict.rdx177, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check178 = icmp ult i64 %.282132, 32
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %.282132, 28
  %n.vec = and i64 %.282132, -32                  ; 5 uses
  %i.af = or disjoint i64 %i.ab, %n.vec           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.2134, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !78, !alias.scope !692
  %wide.load179 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !78, !alias.scope !692
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load180 = load <16 x i8>, ptr %i.ai, align 16, !tbaa !78, !alias.scope !693
  %wide.load181 = load <16 x i8>, ptr %i.aj, align 16, !tbaa !78, !alias.scope !693
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load182 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !78, !alias.scope !694, !noalias !695
  %wide.load183 = load <16 x i8>, ptr %i.al, align 1, !tbaa !78, !alias.scope !694, !noalias !695
  %i.am = xor <16 x i8> %wide.load182, %wide.load180
  %i.an = xor <16 x i8> %wide.load183, %wide.load181
  %i.ao = getelementptr inbounds nuw i8, ptr %.277133, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !78, !alias.scope !696, !noalias !697
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !78, !alias.scope !696, !noalias !697
  store <16 x i8> %wide.load, ptr %i.ak, align 1, !tbaa !78, !alias.scope !694, !noalias !695
  store <16 x i8> %wide.load179, ptr %i.al, align 1, !tbaa !78, !alias.scope !694, !noalias !695
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.af, -1
  %cmp.n = icmp eq i64 %.282132, %n.vec
  br i1 %cmp.n, label %iter.check209, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec184 = and i64 %.282132, -4                ; 4 uses
  %i.ar = add i64 %i.ab, %n.vec184                ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2134, i64 %index185
  %wide.load186 = load <4 x i8>, ptr %i.as, align 1, !tbaa !78, !alias.scope !692
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %index185
  %wide.load187 = load <4 x i8>, ptr %i.at, align 4, !tbaa !78, !alias.scope !693
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %index185 ; 2 uses
  %wide.load188 = load <4 x i8>, ptr %i.au, align 1, !tbaa !78, !alias.scope !694, !noalias !695
  %i.av = xor <4 x i8> %wide.load188, %wide.load187
  %i.aw = getelementptr inbounds nuw i8, ptr %.277133, i64 %index185
  store <4 x i8> %i.av, ptr %i.aw, align 1, !tbaa !78, !alias.scope !696, !noalias !697
  store <4 x i8> %wide.load186, ptr %i.au, align 1, !tbaa !78, !alias.scope !694, !noalias !695
  %index.next189 = add nuw i64 %index185, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !686

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape190 = add i64 %i.ar, -1
  %cmp.n191 = icmp eq i64 %.282132, %n.vec184
  br i1 %cmp.n191, label %iter.check209, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 3 uses
  %.173113.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec184, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.173113.ph, 1
  %xtraiter = and i64 %.282132, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.2134, i64 %.173113.ph
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %.173113.ph
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.173113.ph ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !78
  %i.be = xor i8 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %.277133, i64 %.173113.ph
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !78
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !78
  %i.bg = or disjoint i64 %.173113.ph, 1
  %indvars.iv.next.prol = add i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.173113.unr = phi i64 [ %.173113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bg, %vec.epilog.scalar.ph.prol ]
  %i.bh = icmp eq i64 %.282132, %.neg
  br i1 %i.bh, label %iter.check209, label %vec.epilog.scalar.ph

iter.check209.loopexit.unr-lcssa:                 ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %iter.check209

iter.check209:                                    ; preds = %iter.check209.loopexit.unr-lcssa, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.middle.block, %middle.block
  %indvars.iv.lcssa = phi i64 [ %ind.escape190, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next, %iter.check209.loopexit.unr-lcssa ] ; 3 uses
  %i.bi = sub i64 16, %.282132                    ; 7 uses
  %min.iters.check196 = icmp ult i64 %i.bi, 8
  %i.bj = sub i64 %.2134195, %i.a
  %diff.check = icmp ugt i64 %i.bj, -32
  %or.cond = or i1 %min.iters.check196, %diff.check
  br i1 %or.cond, label %.lr.ph115.preheader, label %vector.main.loop.iter.check198

vector.main.loop.iter.check198:                   ; preds = %iter.check209
  %min.iters.check199 = icmp ult i64 %i.bi, 32
  br i1 %min.iters.check199, label %vec.epilog.ph213, label %vector.ph200

vector.ph200:                                     ; preds = %vector.main.loop.iter.check198
  %i.bk = and i64 %i.bi, 24
  %n.vec201 = and i64 %i.bi, -32                  ; 4 uses
  %i.bl = add i64 %.282132, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.ph200, %vector.body202
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body202 ] ; 2 uses
  %i.bm = add nuw i64 %.282132, %index203         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load204 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !78
  %wide.load205 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load204, ptr %i.bp, align 1, !tbaa !78
  store <16 x i8> %wide.load205, ptr %i.bq, align 1, !tbaa !78
  %index.next206 = add nuw i64 %index203, 32      ; 2 uses
  %i.br = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.br, label %middle.block207, label %vector.body202, !llvm.loop !687

middle.block207:                                  ; preds = %vector.body202
  %cmp.n208 = icmp eq i64 %i.bi, %n.vec201
  br i1 %cmp.n208, label %.loopexit, label %vec.epilog.iter.check210

vec.epilog.iter.check210:                         ; preds = %middle.block207
  %min.epilog.iters.check212 = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check212, label %.lr.ph115.preheader, label %vec.epilog.ph213, !prof !88

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check210
  %vec.epilog.resume.val214 = phi i64 [ %n.vec201, %vec.epilog.iter.check210 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec215 = and i64 %i.bi, -8                   ; 3 uses
  %i.bs = add i64 %.282132, %n.vec215
  br label %vec.epilog.vector.body216

vec.epilog.vector.body216:                        ; preds = %vec.epilog.vector.body216, %vec.epilog.ph213
  %index217 = phi i64 [ %vec.epilog.resume.val214, %vec.epilog.ph213 ], [ %index.next219, %vec.epilog.vector.body216 ] ; 2 uses
  %i.bt = add nuw i64 %.282132, %index217         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.bt
  %wide.load218 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  store <8 x i8> %wide.load218, ptr %i.bv, align 1, !tbaa !78
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.bw, label %vec.epilog.middle.block220, label %vec.epilog.vector.body216, !llvm.loop !688

vec.epilog.middle.block220:                       ; preds = %vec.epilog.vector.body216
  %cmp.n221 = icmp eq i64 %i.bi, %n.vec215
  br i1 %cmp.n221, label %.loopexit, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %iter.check209, %vec.epilog.iter.check210, %vec.epilog.middle.block220
  %.274114.ph = phi i64 [ %.282132, %iter.check209 ], [ %i.bl, %vec.epilog.iter.check210 ], [ %i.bs, %vec.epilog.middle.block220 ] ; 4 uses
  %i.bx = sub i64 %indvars.iv.lcssa, %.274114.ph
  %xtraiter229 = and i64 %i.bx, 3                 ; 2 uses
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader, %.lr.ph115.prol
  %.274114.prol = phi i64 [ %i.cb, %.lr.ph115.prol ], [ %.274114.ph, %.lr.ph115.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph115.prol ], [ 0, %.lr.ph115.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114.prol
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !78
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %.274114.prol
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !78
  %i.cb = add nuw nsw i64 %.274114.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter229
  br i1 %prol.iter.cmp.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol, !llvm.loop !689
end_hunk_0
begin_hunk_1_@CRYPTO_cfb128_8_encrypt:bb.a

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.010.us = phi i64 [ %i.f, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.010.us
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #46, !inline_history !10
  %i.c = load i8, ptr %i.a, align 1, !tbaa !78    ; 2 uses
  %i.d = load i8, ptr %4, align 1, !tbaa !78
  %i.e = xor i8 %i.d, %i.c
  store i8 %i.e, ptr %i.b, align 1, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.c, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = add nuw i64 %.010.us, 1                  ; 2 uses
  %exitcond12.not = icmp eq i64 %i.f, %2
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !11

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.010 = phi i64 [ %i.l, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #46, !inline_history !10
  %i.i = load i8, ptr %i.g, align 1, !tbaa !78
  %i.j = load i8, ptr %4, align 1, !tbaa !78
  %i.k = xor i8 %i.j, %i.i                        ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.k, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.l = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = load i32, ptr %5, align 4, !tbaa !75
  store i32 %i.b, ptr %i.a, align 4, !tbaa !75
  call void @CRYPTO_cfb128_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef %6, ptr noundef nonnull @AES_encrypt)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !75
  store i32 %i.c, ptr %5, align 4, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !75     ; 5 uses
  %.not = icmp eq i32 %6, 0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c                        ; 2 uses
  br i1 %.not, label %.preheader114, label %.preheader117

.preheader117:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.preheader116

.preheader114:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph143, label %.preheader

.preheader116:                                    ; preds = %.lr.ph, %.preheader117
  %.0101.lcssa = phi i32 [ %i.a, %.preheader117 ], [ %i.ae, %.lr.ph ] ; 4 uses
  %.097.lcssa = phi i64 [ %2, %.preheader117 ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.093.lcssa = phi ptr [ %1, %.preheader117 ], [ %i.ab, %.lr.ph ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %.preheader117 ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.e = icmp ugt i64 %.097.lcssa, 15
  br i1 %i.e, label %.lr.ph131.peel, label %._crit_edge132

.lr.ph131.peel:                                   ; preds = %.preheader116
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %i.f = icmp ult i32 %.0101.lcssa, 16
  br i1 %i.f, label %.lr.ph126.peel, label %._crit_edge.peel

.lr.ph126.peel:                                   ; preds = %.lr.ph131.peel
  %i.g = zext nneg i32 %.0101.lcssa to i64        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.g
  %.0.copyload.i111.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.peel, %.0.copyload.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa, 8
  br i1 %i.l, label %.lr.ph126.1.peel, label %._crit_edge.peel

.lr.ph126.1.peel:                                 ; preds = %.lr.ph126.peel
  %indvars.iv.next.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.peel ; 2 uses
  %.0.copyload.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %indvars.iv.next.peel
  %.0.copyload.i111.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.1.peel, %.0.copyload.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv.next.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %.lr.ph126.peel, %.lr.ph126.1.peel, %.lr.ph131.peel
  %i.q = add i64 %.097.lcssa, -16                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.preheader.peel.newph, label %._crit_edge132

.lr.ph131.preheader.peel.newph:                   ; preds = %._crit_edge.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.preheader117, %.lr.ph
  %.0121 = phi ptr [ %i.v, %.lr.ph ], [ %0, %.preheader117 ] ; 2 uses
  %.093120 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %.preheader117 ] ; 2 uses
  %.097119 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %.preheader117 ]
  %.0101118 = phi i32 [ %i.ae, %.lr.ph ], [ %i.a, %.preheader117 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121, align 1, !tbaa !78
  %i.x = zext i32 %.0101118 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !78
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120, align 1, !tbaa !78
  %i.ac = add i64 %.097119, -1                    ; 3 uses
  %i.ad = add i32 %.0101118, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.preheader116, !llvm.loop !701

.lr.ph131:                                        ; preds = %.lr.ph131.preheader.peel.newph, %.lr.ph131
  %.1130 = phi ptr [ %i.ao, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.194129 = phi ptr [ %i.an, %.lr.ph131 ], [ %i.r, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.198128 = phi i64 [ %i.am, %.lr.ph131 ], [ %i.q, %.lr.ph131.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %.0.copyload.i = load i64, ptr %4, align 1
  %.0.copyload.i111 = load i64, ptr %.1130, align 1
  %i.ai = xor i64 %.0.copyload.i111, %.0.copyload.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129, align 1
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130, i64 8
  %.0.copyload.i111.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.1, %.0.copyload.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128, -16                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131, label %._crit_edge132, !llvm.loop !702

._crit_edge132:                                   ; preds = %._crit_edge.peel, %.lr.ph131, %.preheader116
  %.1102.lcssa = phi i32 [ %.0101.lcssa, %.preheader116 ], [ 0, %.lr.ph131 ], [ 0, %._crit_edge.peel ] ; 8 uses
  %.198.lcssa = phi i64 [ %.097.lcssa, %.preheader116 ], [ %i.q, %._crit_edge.peel ], [ %i.am, %.lr.ph131 ] ; 10 uses
  %.194.lcssa = phi ptr [ %.093.lcssa, %.preheader116 ], [ %i.r, %._crit_edge.peel ], [ %i.an, %.lr.ph131 ] ; 6 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader116 ], [ %i.s, %._crit_edge.peel ], [ %i.ao, %.lr.ph131 ] ; 6 uses
  %.not109 = icmp eq i64 %.198.lcssa, 0
  br i1 %.not109, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %min.iters.check = icmp samesign ult i64 %.198.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa, -1             ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa to i64            ; 4 uses
  %i.ax = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %i.ay = add nuw nsw i64 %.198.lcssa, %i.aw      ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 %i.ay     ; 2 uses
  %i.ba = getelementptr i8, ptr %.194.lcssa, i64 %i.aw ; 2 uses
  %i.bb = getelementptr i8, ptr %.194.lcssa, i64 %i.ay ; 2 uses
  %8 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw ; 2 uses
  %9 = getelementptr i8, ptr %.1.lcssa, i64 %i.ay ; 2 uses
  %bound0 = icmp ult ptr %i.ax, %i.bb
  %bound1 = icmp ult ptr %i.ba, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %bound0234 = icmp ult ptr %i.ax, %9
  %bound1235 = icmp ult ptr %8, %i.az
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx = or i1 %found.conflict, %found.conflict236
  %bound0237 = icmp ult ptr %i.ba, %9
  %bound1238 = icmp ult ptr %8, %i.bb
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx, %found.conflict239
  br i1 %conflict.rdx240, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec245 = and i64 %.198.lcssa, 12             ; 3 uses
  %i.bc = and i64 %.198.lcssa, 3
  %i.bd = trunc nuw nsw i64 %n.vec245 to i32
  %i.be = add i32 %.1102.lcssa, %i.bd             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index246 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next249, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = trunc i64 %index246 to i32
  %i.bg = add i32 %.1102.lcssa, %i.bf
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bh
  %wide.load247 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !78, !alias.scope !717
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %i.bh ; 2 uses
  %wide.load248 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !78, !alias.scope !718, !noalias !719
  %i.bk = xor <4 x i8> %wide.load248, %wide.load247 ; 2 uses
  store <4 x i8> %i.bk, ptr %i.bj, align 1, !tbaa !78, !alias.scope !718, !noalias !719
  %i.bl = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bh
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !78, !alias.scope !720, !noalias !717
  %index.next249 = add nuw i64 %index246, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next249, %n.vec245
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !707

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n250 = icmp eq i64 %.198.lcssa, %n.vec245
  br i1 %cmp.n250, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.299138.ph = phi i64 [ %.198.lcssa, %vector.scevcheck ], [ %.198.lcssa, %vector.memcheck ], [ %.198.lcssa, %iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.ph = phi i32 [ %.1102.lcssa, %vector.scevcheck ], [ %.1102.lcssa, %vector.memcheck ], [ %.1102.lcssa, %iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bn = add nsw i64 %.299138.ph, -1
  %i.bo = zext i32 %.3104137.ph to i64            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 %i.bo ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !78
  %i.bt = xor i8 %i.bs, %i.bq                     ; 2 uses
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !78
  %i.bu = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bo
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !78
  %i.bv = add i32 %.3104137.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa320.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %.299138.unr = phi i64 [ %.299138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bn, %vec.epilog.scalar.ph.prol ]
  %.3104137.unr = phi i32 [ %.3104137.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %i.bw = icmp eq i64 %.299138.ph, 1
  br i1 %i.bw, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138 = phi i64 [ %i.cf, %vec.epilog.scalar.ph ], [ %.299138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137 = phi i32 [ %i.cn, %vec.epilog.scalar.ph ], [ %.3104137.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bx = zext i32 %.3104137 to i64               ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !78
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %i.bx ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !78
  %i.cc = xor i8 %i.cb, %i.bz                     ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !78
  %i.cd = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !78
  %i.ce = add i32 %.3104137, 1
  %i.cf = add nsw i64 %.299138, -2                ; 2 uses
  %i.cg = zext i32 %i.ce to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !78
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %i.cg ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !78
  %i.cl = xor i8 %i.ck, %i.ci                     ; 2 uses
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !78
  %i.cm = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.cg
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !78
  %i.cn = add i32 %.3104137, 2                    ; 2 uses
  %.not110.1 = icmp eq i64 %i.cf, 0
  br i1 %.not110.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !708

.preheader:                                       ; preds = %.lr.ph143, %.preheader114
  %.5106.lcssa = phi i32 [ %i.a, %.preheader114 ], [ %i.do, %.lr.ph143 ] ; 4 uses
  %.3100.lcssa = phi i64 [ %2, %.preheader114 ], [ %i.dm, %.lr.ph143 ] ; 3 uses
  %.295.lcssa = phi ptr [ %1, %.preheader114 ], [ %i.dl, %.lr.ph143 ] ; 4 uses
  %.2.lcssa = phi ptr [ %0, %.preheader114 ], [ %i.di, %.lr.ph143 ] ; 4 uses
  %i.co = icmp ugt i64 %.3100.lcssa, 15
  br i1 %i.co, label %.lr.ph156.peel, label %._crit_edge157

.lr.ph156.peel:                                   ; preds = %.preheader
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %i.cp = icmp ult i32 %.5106.lcssa, 16
  br i1 %i.cp, label %.lr.ph150.peel, label %._crit_edge151.peel

.lr.ph150.peel:                                   ; preds = %.lr.ph156.peel
  %i.cq = zext nneg i32 %.5106.lcssa to i64       ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cq
  %.0.copyload.i112.peel = load i64, ptr %i.cr, align 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %i.cq ; 2 uses
  %.0.copyload.i113.peel = load i64, ptr %i.ct, align 1
  %i.cu = xor i64 %.0.copyload.i113.peel, %.0.copyload.i112.peel
  store i64 %i.cu, ptr %i.cs, align 1
  store i64 %.0.copyload.i112.peel, ptr %i.ct, align 1
  %i.cv = icmp ult i32 %.5106.lcssa, 8
  br i1 %i.cv, label %.lr.ph150.1.peel, label %._crit_edge151.peel

.lr.ph150.1.peel:                                 ; preds = %.lr.ph150.peel
  %indvars.iv.next182.peel = add nuw nsw i64 %i.cq, 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next182.peel
  %.0.copyload.i112.1.peel = load i64, ptr %i.cw, align 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %indvars.iv.next182.peel
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.peel ; 2 uses
  %.0.copyload.i113.1.peel = load i64, ptr %i.cy, align 1
  %i.cz = xor i64 %.0.copyload.i113.1.peel, %.0.copyload.i112.1.peel
  store i64 %i.cz, ptr %i.cx, align 1
  store i64 %.0.copyload.i112.1.peel, ptr %i.cy, align 1
  br label %._crit_edge151.peel

._crit_edge151.peel:                              ; preds = %.lr.ph150.peel, %.lr.ph150.1.peel, %.lr.ph156.peel
  %i.da = add i64 %.3100.lcssa, -16               ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16 ; 2 uses
  %i.dd = icmp ugt i64 %i.da, 15
  br i1 %i.dd, label %.lr.ph156.preheader.peel.newph, label %._crit_edge157

.lr.ph156.preheader.peel.newph:                   ; preds = %._crit_edge151.peel
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156

.lr.ph143:                                        ; preds = %.preheader114, %.lr.ph143
  %.2142 = phi ptr [ %i.di, %.lr.ph143 ], [ %0, %.preheader114 ] ; 2 uses
  %.295141 = phi ptr [ %i.dl, %.lr.ph143 ], [ %1, %.preheader114 ] ; 2 uses
  %.3100140 = phi i64 [ %i.dm, %.lr.ph143 ], [ %2, %.preheader114 ]
  %.5106139 = phi i32 [ %i.do, %.lr.ph143 ], [ %i.a, %.preheader114 ] ; 2 uses
  %i.df = zext i32 %.5106139 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !78
  %i.di = getelementptr inbounds nuw i8, ptr %.2142, i64 1 ; 2 uses
  %i.dj = load i8, ptr %.2142, align 1, !tbaa !78 ; 2 uses
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %.295141, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.295141, align 1, !tbaa !78
  store i8 %i.dj, ptr %i.dg, align 1, !tbaa !78
  %i.dm = add i64 %.3100140, -1                   ; 3 uses
  %i.dn = add i32 %.5106139, 1
  %i.do = and i32 %i.dn, 15                       ; 3 uses
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = icmp ne i64 %i.dm, 0
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph143, label %.preheader, !llvm.loop !709

.lr.ph156:                                        ; preds = %.lr.ph156.preheader.peel.newph, %.lr.ph156
  %.3155 = phi ptr [ %i.dy, %.lr.ph156 ], [ %i.dc, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.396154 = phi ptr [ %i.dx, %.lr.ph156 ], [ %i.db, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.4153 = phi i64 [ %i.dw, %.lr.ph156 ], [ %i.da, %.lr.ph156.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %.0.copyload.i112 = load i64, ptr %.3155, align 1 ; 2 uses
  %.0.copyload.i113 = load i64, ptr %4, align 1
  %i.ds = xor i64 %.0.copyload.i113, %.0.copyload.i112
  store i64 %i.ds, ptr %.396154, align 1
  store i64 %.0.copyload.i112, ptr %4, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.3155, i64 8
  %.0.copyload.i112.1 = load i64, ptr %i.dt, align 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.396154, i64 8
  %.0.copyload.i113.1 = load i64, ptr %i.de, align 1
  %i.dv = xor i64 %.0.copyload.i113.1, %.0.copyload.i112.1
  store i64 %i.dv, ptr %i.du, align 1
  store i64 %.0.copyload.i112.1, ptr %i.de, align 1
  %i.dw = add i64 %.4153, -16                     ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.396154, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.3155, i64 16 ; 2 uses
  %i.dz = icmp ugt i64 %i.dw, 15
  br i1 %i.dz, label %.lr.ph156, label %._crit_edge157, !llvm.loop !710

._crit_edge157:                                   ; preds = %._crit_edge151.peel, %.lr.ph156, %.preheader
  %.6.lcssa = phi i32 [ %.5106.lcssa, %.preheader ], [ 0, %.lr.ph156 ], [ 0, %._crit_edge151.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.3100.lcssa, %.preheader ], [ %i.da, %._crit_edge151.peel ], [ %i.dw, %.lr.ph156 ] ; 10 uses
  %.396.lcssa = phi ptr [ %.295.lcssa, %.preheader ], [ %i.db, %._crit_edge151.peel ], [ %i.dx, %.lr.ph156 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.dc, %._crit_edge151.peel ], [ %i.dy, %.lr.ph156 ] ; 6 uses
  %.not107 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not107, label %.loopexit, label %iter.check296

iter.check296:                                    ; preds = %._crit_edge157
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #46
  %min.iters.check270 = icmp samesign ult i64 %.4.lcssa, 4
  br i1 %min.iters.check270, label %vec.epilog.scalar.ph298.preheader, label %vector.scevcheck252

vector.scevcheck252:                              ; preds = %iter.check296
  %i.ea = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = xor i32 %.6.lcssa, -1
  %i.ed = icmp ult i32 %i.ec, %i.eb
  %i.ee = icmp ugt i64 %i.ea, 4294967295
  %i.ef = or i1 %i.ed, %i.ee
  br i1 %i.ef, label %vec.epilog.scalar.ph298.preheader, label %vector.memcheck271

vector.memcheck271:                               ; preds = %vector.scevcheck252
  %i.eg = zext i32 %.6.lcssa to i64               ; 4 uses
  %i.eh = getelementptr i8, ptr %.396.lcssa, i64 %i.eg ; 2 uses
  %i.ei = add nuw nsw i64 %.4.lcssa, %i.eg        ; 3 uses
  %i.ej = getelementptr i8, ptr %.396.lcssa, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %4, i64 %i.eg     ; 2 uses
  %i.el = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  %10 = getelementptr i8, ptr %.3.lcssa, i64 %i.eg ; 2 uses
  %11 = getelementptr i8, ptr %.3.lcssa, i64 %i.ei ; 2 uses
  %bound0272 = icmp ult ptr %i.eh, %i.el
  %bound1273 = icmp ult ptr %i.ek, %i.ej
  %found.conflict274 = and i1 %bound0272, %bound1273
  %bound0275 = icmp ult ptr %i.eh, %11
  %bound1276 = icmp ult ptr %10, %i.ej
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %found.conflict274, %found.conflict277
  %bound0279 = icmp ult ptr %i.ek, %11
  %bound1280 = icmp ult ptr %10, %i.el
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %vec.epilog.scalar.ph298.preheader, label %vec.epilog.ph300

vec.epilog.ph300:                                 ; preds = %vector.memcheck271
  %n.vec302 = and i64 %.4.lcssa, 12               ; 3 uses
  %i.em = and i64 %.4.lcssa, 3
  %i.en = trunc nuw nsw i64 %n.vec302 to i32
  %i.eo = add i32 %.6.lcssa, %i.en                ; 2 uses
  br label %vec.epilog.vector.body303

vec.epilog.vector.body303:                        ; preds = %vec.epilog.vector.body303, %vec.epilog.ph300
  %index304 = phi i64 [ 0, %vec.epilog.ph300 ], [ %index.next307, %vec.epilog.vector.body303 ] ; 2 uses
  %i.ep = trunc i64 %index304 to i32
  %i.eq = add i32 %.6.lcssa, %i.ep
  %i.er = zext i32 %i.eq to i64                   ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er ; 2 uses
  %wide.load305 = load <4 x i8>, ptr %i.es, align 1, !tbaa !78, !alias.scope !721, !noalias !722
  %i.et = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.er
  %wide.load306 = load <4 x i8>, ptr %i.et, align 1, !tbaa !78, !alias.scope !722 ; 2 uses
  %i.eu = xor <4 x i8> %wide.load306, %wide.load305
  %i.ev = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.er
  store <4 x i8> %i.eu, ptr %i.ev, align 1, !tbaa !78, !alias.scope !723, !noalias !724
  store <4 x i8> %wide.load306, ptr %i.es, align 1, !tbaa !78, !alias.scope !721, !noalias !722
  %index.next307 = add nuw i64 %index304, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.ew, label %vec.epilog.middle.block308, label %vec.epilog.vector.body303, !llvm.loop !715

vec.epilog.middle.block308:                       ; preds = %vec.epilog.vector.body303
  %cmp.n309 = icmp eq i64 %.4.lcssa, %n.vec302
  br i1 %cmp.n309, label %.loopexit, label %vec.epilog.scalar.ph298.preheader

vec.epilog.scalar.ph298.preheader:                ; preds = %iter.check296, %vector.scevcheck252, %vector.memcheck271, %vec.epilog.middle.block308
  %.5163.ph = phi i64 [ %.4.lcssa, %vector.scevcheck252 ], [ %.4.lcssa, %vector.memcheck271 ], [ %.4.lcssa, %iter.check296 ], [ %i.em, %vec.epilog.middle.block308 ] ; 4 uses
  %.8162.ph = phi i32 [ %.6.lcssa, %vector.scevcheck252 ], [ %.6.lcssa, %vector.memcheck271 ], [ %.6.lcssa, %iter.check296 ], [ %i.eo, %vec.epilog.middle.block308 ] ; 3 uses
  %xtraiter330 = and i64 %.5163.ph, 1
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %vec.epilog.scalar.ph298.prol.loopexit, label %vec.epilog.scalar.ph298.prol

vec.epilog.scalar.ph298.prol:                     ; preds = %vec.epilog.scalar.ph298.preheader
  %i.ex = add nsw i64 %.5163.ph, -1
  %i.ey = zext i32 %.8162.ph to i64               ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !78
  %i.fb = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !78  ; 2 uses
  %i.fd = xor i8 %i.fc, %i.fa
  %i.fe = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ey
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !78
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !78
  %i.ff = add i32 %.8162.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph298.prol.loopexit

vec.epilog.scalar.ph298.prol.loopexit:            ; preds = %vec.epilog.scalar.ph298.prol, %vec.epilog.scalar.ph298.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph298.preheader ], [ %i.ff, %vec.epilog.scalar.ph298.prol ]
  %.5163.unr = phi i64 [ %.5163.ph, %vec.epilog.scalar.ph298.preheader ], [ %i.ex, %vec.epilog.scalar.ph298.prol ]
  %.8162.unr = phi i32 [ %.8162.ph, %vec.epilog.scalar.ph298.preheader ], [ %i.ff, %vec.epilog.scalar.ph298.prol ]
  %i.fg = icmp eq i64 %.5163.ph, 1
  br i1 %i.fg, label %.loopexit, label %vec.epilog.scalar.ph298

vec.epilog.scalar.ph298:                          ; preds = %vec.epilog.scalar.ph298.prol.loopexit, %vec.epilog.scalar.ph298
  %.5163 = phi i64 [ %i.fp, %vec.epilog.scalar.ph298 ], [ %.5163.unr, %vec.epilog.scalar.ph298.prol.loopexit ]
  %.8162 = phi i32 [ %i.fx, %vec.epilog.scalar.ph298 ], [ %.8162.unr, %vec.epilog.scalar.ph298.prol.loopexit ] ; 3 uses
  %i.fh = zext i32 %.8162 to i64                  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !78
  %i.fk = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !78  ; 2 uses
  %i.fm = xor i8 %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fh
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !78
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !78
  %i.fo = add i32 %.8162, 1
  %i.fp = add nsw i64 %.5163, -2                  ; 2 uses
  %i.fq = zext i32 %i.fo to i64                   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !78
  %i.ft = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !78  ; 2 uses
  %i.fv = xor i8 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fq
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !78
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !78
  %i.fx = add i32 %.8162, 2                       ; 2 uses
  %.not108.1 = icmp eq i64 %i.fp, 0
  br i1 %.not108.1, label %.loopexit, label %vec.epilog.scalar.ph298, !llvm.loop !716

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph298.prol.loopexit, %vec.epilog.scalar.ph298, %vec.epilog.middle.block, %vec.epilog.middle.block308, %._crit_edge157, %._crit_edge132
  %storemerge = phi i32 [ %.1102.lcssa, %._crit_edge132 ], [ %i.fx, %vec.epilog.scalar.ph298 ], [ %.6.lcssa, %._crit_edge157 ], [ %i.eo, %vec.epilog.middle.block308 ], [ %i.be, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph298.prol.loopexit ], [ %.lcssa320.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cn, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %5, align 4, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @aes_hw_xts_cipher(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 12), align 4, !tbaa !75 ; 3 uses
  %i.c = and i32 %i.b, 576
  %or.cond.not.i29 = icmp eq i32 %i.c, 576        ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond.not.i29, label %bb.d, label %avx512_xts_available.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.e = and i32 %i.d, -1073545216
  %.not5.i = icmp ne i32 %i.e, -1073545216
  %i.f = and i32 %i.b, 1024
  %.not28 = icmp eq i32 %i.f, 0
  %or.cond = or i1 %.not28, %.not5.i
  br i1 %or.cond, label %avx512_xts_available.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @aes_hw_xts_encrypt_avx512(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

avx512_xts_available.exit.thread:                 ; preds = %bb.c, %bb.d
  tail call void @aes_hw_xts_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %or.cond.not.i29, label %bb.g, label %avx512_xts_available.exit32.thread

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.h = and i32 %i.g, -1073545216
  %.not5.i30 = icmp ne i32 %i.h, -1073545216
  %i.i = and i32 %i.b, 1024
  %.not27 = icmp eq i32 %i.i, 0
  %or.cond35 = or i1 %.not27, %.not5.i30
  br i1 %or.cond35, label %avx512_xts_available.exit32.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @aes_hw_xts_decrypt_avx512(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

avx512_xts_available.exit32.thread:               ; preds = %bb.f, %bb.g
  tail call void @aes_hw_xts_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #46
  br label %bb.i

bb.i:                                             ; preds = %avx512_xts_available.exit.thread, %avx512_xts_available.exit32.thread, %bb.a, %bb.h, %bb.e
  %.0 = phi i32 [ 1, %bb.h ], [ 1, %bb.e ], [ 0, %bb.a ], [ 1, %avx512_xts_available.exit32.thread ], [ 1, %avx512_xts_available.exit.thread ]
  ret i32 %.0
}

declare void @aes_hw_xts_encrypt_avx512(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aes_hw_xts_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aes_hw_xts_decrypt_avx512(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aes_hw_xts_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !93   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq i32 %i.b, 0                   ; 2 uses
  %spec.select = select i1 %.not25, ptr %1, ptr %2 ; 4 uses
  %spec.select28 = select i1 %.not25, ptr %2, ptr %1 ; 4 uses
  %i.e = load ptr, ptr %spec.select, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !95
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %spec.select28, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select28, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !95
  %i.l = sext i32 %i.k to i64
  %i.m = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.e, i64 noundef %i.h, ptr noundef %i.i, i64 noundef %i.l)
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @bn_usub_consttime(ptr noundef %0, ptr noundef nonnull readonly %spec.select28, ptr noundef nonnull readonly %spec.select)
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %BN_usub.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !95   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
end_hunk_1
begin_hunk_2_@CRYPTO_gcm128_encrypt:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !469 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !466 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !470  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !471
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %i.k = icmp ugt i64 %i.j, 68719476704
  %i.l = icmp ult i64 %i.j, %4
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.j, ptr %i.h, align 8, !tbaa !471
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !467
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.m, align 4, !tbaa !467
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !468 ; 3 uses
  %.not123 = icmp eq i32 %i.q, 0
  br i1 %.not123, label %bb.g, label %.preheader133

.preheader133:                                    ; preds = %bb.d
  %.not166 = icmp eq i64 %4, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader133
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.097137 = phi i32 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 2 uses
  %.0101136 = phi i64 [ %4, %.lr.ph ], [ %i.ad, %bb.e ]
  %.0105135 = phi ptr [ %3, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.0111134 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0111134, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0111134, align 1, !tbaa !78
  %i.v = zext i32 %.097137 to i64                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !78
  %i.y = xor i8 %i.x, %i.u                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0105135, i64 1 ; 2 uses
  store i8 %i.y, ptr %.0105135, align 1, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ac = xor i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !78
  %i.ad = add nsw i64 %.0101136, -1               ; 3 uses
  %i.ae = add i32 %.097137, 1
  %i.af = and i32 %i.ae, 15                       ; 4 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i64 %i.ad, 0
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %._crit_edge, !llvm.loop !2225

._crit_edge:                                      ; preds = %bb.e
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1112 = phi ptr [ %i.t, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %.1106 = phi ptr [ %i.z, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.1102 = phi i64 [ %i.ad, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.an = icmp ugt i64 %.1102, 3071
  br i1 %i.an, label %.preheader132.lr.ph, label %._crit_edge149

.preheader132.lr.ph:                              ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader132

.preheader132:                                    ; preds = %.preheader132.lr.ph, %bb.i
  %.096148 = phi i32 [ %i.am, %.preheader132.lr.ph ], [ %i.ar, %bb.i ]
  %.2103147 = phi i64 [ %.1102, %.preheader132.lr.ph ], [ %i.bb, %bb.i ]
  %.2107146 = phi ptr [ %.1106, %.preheader132.lr.ph ], [ %i.ax, %bb.i ]
  %.2113145 = phi ptr [ %.1112, %.preheader132.lr.ph ], [ %i.ay, %bb.i ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader132, %bb.h
  %.0144 = phi i64 [ 3072, %.preheader132 ], [ %i.az, %bb.h ]
  %.1143 = phi i32 [ %.096148, %.preheader132 ], [ %i.ar, %bb.h ]
  %.3108142 = phi ptr [ %.2107146, %.preheader132 ], [ %i.ax, %bb.h ] ; 4 uses
  %.3114141 = phi ptr [ %.2113145, %.preheader132 ], [ %i.ay, %bb.h ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef %1) #46
  %i.ar = add i32 %.1143, 1                       ; 4 uses
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.al, align 4
  %.0.copyload.i.i = load i64, ptr %.3114141, align 1
  %.0.copyload.i7.i = load i64, ptr %i.ao, align 16
  %i.at = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.at, ptr %.3108142, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.3108142, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.3114141, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.av, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.ap, align 8
  %i.aw = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.3108142, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3114141, i64 16 ; 3 uses
  %i.az = add nsw i64 %.0144, -16                 ; 2 uses
  %.not127 = icmp eq i64 %i.az, 0
  br i1 %.not127, label %bb.i, label %bb.h, !llvm.loop !2226

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds i8, ptr %.3108142, i64 -3056
  tail call void %i.g(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ba, i64 noundef 3072) #46
  %i.bb = add nsw i64 %.2103147, -3072            ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 3071
  br i1 %i.bc, label %.preheader132, label %._crit_edge149, !llvm.loop !2227

._crit_edge149:                                   ; preds = %bb.i, %bb.g
  %.2113.lcssa = phi ptr [ %.1112, %bb.g ], [ %i.ay, %bb.i ] ; 2 uses
  %.2107.lcssa = phi ptr [ %.1106, %bb.g ], [ %i.ax, %bb.i ] ; 2 uses
  %.2103.lcssa = phi i64 [ %.1102, %bb.g ], [ %i.bb, %bb.i ] ; 3 uses
  %.096.lcssa = phi i32 [ %i.am, %bb.g ], [ %i.ar, %bb.i ] ; 2 uses
  %i.bd = and i64 %.2103.lcssa, 4080              ; 3 uses
  %.not124 = icmp eq i64 %i.bd, 0
  br i1 %.not124, label %bb.k, label %.lr.ph158

.lr.ph158:                                        ; preds = %._crit_edge149
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph158, %bb.j
  %.2157 = phi i32 [ %.096.lcssa, %.lr.ph158 ], [ %i.bg, %bb.j ]
  %.3104156 = phi i64 [ %.2103.lcssa, %.lr.ph158 ], [ %i.bo, %bb.j ]
  %.4109155 = phi ptr [ %.2107.lcssa, %.lr.ph158 ], [ %i.bm, %bb.j ] ; 3 uses
  %.4115154 = phi ptr [ %.2113.lcssa, %.lr.ph158 ], [ %i.bn, %bb.j ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.be, ptr noundef %1) #46
  %i.bg = add i32 %.2157, 1                       ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.al, align 4
  %.0.copyload.i.i128 = load i64, ptr %.4115154, align 1
  %.0.copyload.i7.i129 = load i64, ptr %i.be, align 16
  %i.bi = xor i64 %.0.copyload.i7.i129, %.0.copyload.i.i128
  store i64 %i.bi, ptr %.4109155, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.4109155, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.4115154, i64 8
  %.0.copyload.i.1.i130 = load i64, ptr %i.bk, align 1
  %.0.copyload.i7.1.i131 = load i64, ptr %i.bf, align 8
  %i.bl = xor i64 %.0.copyload.i7.1.i131, %.0.copyload.i.1.i130
  store i64 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.4109155, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4115154, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.3104156, -16              ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %bb.j, label %._crit_edge159, !llvm.loop !2228

._crit_edge159:                                   ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = sub nsw i64 0, %i.bd
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 %i.br
  tail call void %i.g(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, i64 noundef %i.bd) #46
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge159, %._crit_edge149
  %.5116 = phi ptr [ %i.bn, %._crit_edge159 ], [ %.2113.lcssa, %._crit_edge149 ] ; 8 uses
  %.5110 = phi ptr [ %i.bm, %._crit_edge159 ], [ %.2107.lcssa, %._crit_edge149 ] ; 8 uses
  %.4 = phi i64 [ %i.bo, %._crit_edge159 ], [ %.2103.lcssa, %._crit_edge149 ] ; 15 uses
  %.3 = phi i32 [ %i.bg, %._crit_edge159 ], [ %.096.lcssa, %._crit_edge149 ]
  %.not125 = icmp eq i64 %.4, 0
  br i1 %.not125, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, ptr noundef %1) #46
  %i.bu = add i32 %.3, 1
  %i.bv = tail call noundef i32 @llvm.bswap.i32(i32 %i.bu)
  store i32 %i.bv, ptr %i.al, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.bx = add i64 %.4, -4294967297
  %or.cond240 = icmp ult i64 %i.bx, -4294967293
  br i1 %or.cond240, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.by = getelementptr i8, ptr %.5110, i64 %.4   ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 %.4
  %i.ca = getelementptr i8, ptr %i.bz, i64 64     ; 2 uses
  %5 = getelementptr i8, ptr %.5116, i64 %.4      ; 2 uses
  %bound0.a = icmp ult ptr %.5110, %i.ca
  %bound1 = icmp ult ptr %i.bt, %i.by
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0221 = icmp ult ptr %.5110, %5
  %bound1222 = icmp ult ptr %.5116, %i.by
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx = or i1 %found.conflict, %found.conflict223
  %bound0224 = icmp ult ptr %i.bt, %5
  %bound1225 = icmp ult ptr %.5116, %i.ca
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx, %found.conflict226
  br i1 %conflict.rdx227, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check228 = icmp ult i64 %.4, 16
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %.4, 12
  %n.vec = and i64 %.4, 8589934576                ; 4 uses
  %i.cc = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cd = and i64 %.4, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = and i64 %index, 4294967280              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.ce
  %wide.load = load <16 x i8>, ptr %i.cf, align 1, !tbaa !78, !alias.scope !2236
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ce
  %wide.load229 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !78, !alias.scope !2237, !noalias !2236
  %i.ch = xor <16 x i8> %wide.load229, %wide.load ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.ce
  store <16 x i8> %i.ch, ptr %i.ci, align 1, !tbaa !78, !alias.scope !2238, !noalias !2239
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %wide.load230 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !78, !alias.scope !2237, !noalias !2236
  %i.ck = xor <16 x i8> %wide.load230, %i.ch
  store <16 x i8> %i.ck, ptr %i.cj, align 1, !tbaa !78, !alias.scope !2237, !noalias !2236
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !2233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !473

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec231 = and i64 %.4, 8589934588             ; 3 uses
  %i.cm = trunc i64 %n.vec231 to i32              ; 2 uses
  %i.cn = and i64 %.4, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 2 uses
  %i.co = and i64 %index232, 4294967292           ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.co
  %wide.load233 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !78, !alias.scope !2236
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.co
  %wide.load234 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !78, !alias.scope !2237, !noalias !2236
  %i.cr = xor <4 x i8> %wide.load234, %wide.load233 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.co
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !78, !alias.scope !2238, !noalias !2239
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.co ; 2 uses
  %wide.load235 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !78, !alias.scope !2237, !noalias !2236
  %i.cu = xor <4 x i8> %wide.load235, %i.cr
  store <4 x i8> %i.cu, ptr %i.ct, align 1, !tbaa !78, !alias.scope !2237, !noalias !2236
  %index.next236 = add nuw i64 %index232, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %.4, %n.vec231
  br i1 %cmp.n237, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.299165.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ] ; 3 uses
  %.5164.ph = phi i64 [ %.4, %iter.check ], [ %.4, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5164.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cw = add nsw i64 %.5164.ph, -1
  %i.cx = zext i32 %.299165.ph to i64             ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !78
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cx
  %i.db = load i8, ptr %i.da, align 1, !tbaa !78
  %i.dc = xor i8 %i.db, %i.cz                     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.cx
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !78
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cx ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !78
  %i.dg = xor i8 %i.df, %i.dc
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !78
  %i.dh = add i32 %.299165.ph, 1                  ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %.299165.unr = phi i32 [ %.299165.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %.5164.unr = phi i64 [ %.5164.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cw, %vec.epilog.scalar.ph.prol ]
  %i.di = icmp eq i64 %.5164.ph, 1
  br i1 %i.di, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299165 = phi i32 [ %i.ef, %vec.epilog.scalar.ph ], [ %.299165.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.5164 = phi i64 [ %i.du, %vec.epilog.scalar.ph ], [ %.5164.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dj = zext i32 %.299165 to i64                ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dj
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !78
  %i.do = xor i8 %i.dn, %i.dl                     ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.dj
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !78
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dj ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !78
  %i.ds = xor i8 %i.dr, %i.do
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !78
  %i.dt = add i32 %.299165, 1
  %i.du = add i64 %.5164, -2                      ; 2 uses
  %i.dv = zext i32 %i.dt to i64                   ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dv
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !78
  %i.ea = xor i8 %i.dz, %i.dx                     ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.dv
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !78
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dv ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !78
  %i.ee = xor i8 %i.ed, %i.ea
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !78
  %i.ef = add i32 %.299165, 2                     ; 2 uses
  %.not126.1 = icmp eq i64 %i.du, 0
  br i1 %.not126.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2235

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader133, %bb.k, %._crit_edge
  %storemerge = phi i32 [ %i.af, %._crit_edge ], [ 0, %bb.k ], [ %i.q, %.preheader133 ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cc, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ef, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.p, align 16, !tbaa !468
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.loopexit
  %.1118 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1118
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !469 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !466 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !470  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !471
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %i.k = icmp ugt i64 %i.j, 68719476704
  %i.l = icmp ult i64 %i.j, %4
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.j, ptr %i.h, align 8, !tbaa !471
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !467
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.m, align 4, !tbaa !467
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !468 ; 3 uses
  %.not126 = icmp eq i32 %i.q, 0
  br i1 %.not126, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not170 = icmp eq i64 %4, 0
  br i1 %.not170, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0102139 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %.0106138 = phi i32 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 2 uses
  %.0110137 = phi i64 [ %4, %.lr.ph ], [ %i.ad, %bb.e ]
  %.0116136 = phi ptr [ %3, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0102139, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0102139, align 1, !tbaa !78 ; 2 uses
  %i.v = zext i32 %.0106138 to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !78
  %i.y = xor i8 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %.0116136, i64 1 ; 2 uses
  store i8 %i.y, ptr %.0116136, align 1, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ac = xor i8 %i.ab, %i.u
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !78
  %i.ad = add nsw i64 %.0110137, -1               ; 3 uses
  %i.ae = add i32 %.0106138, 1
  %i.af = and i32 %i.ae, 15                       ; 4 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i64 %i.ad, 0
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %._crit_edge, !llvm.loop !2240

._crit_edge:                                      ; preds = %bb.e
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1117 = phi ptr [ %i.z, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.1111 = phi i64 [ %i.ad, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %.1103 = phi ptr [ %i.t, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.an = icmp ugt i64 %.1111, 3071
  br i1 %i.an, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph152, %bb.j
  %.0100150 = phi i32 [ %i.am, %.lr.ph152 ], [ %i.ar, %bb.j ]
  %.2104149 = phi ptr [ %.1103, %.lr.ph152 ], [ %i.ay, %bb.j ] ; 2 uses
  %.2112148 = phi i64 [ %.1111, %.lr.ph152 ], [ %i.ba, %bb.j ]
  %.2118147 = phi ptr [ %.1117, %.lr.ph152 ], [ %i.ax, %bb.j ]
  tail call void %i.g(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef %.2104149, i64 noundef 3072) #46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.099146 = phi i64 [ 3072, %bb.h ], [ %i.az, %bb.i ]
  %.1101145 = phi i32 [ %.0100150, %bb.h ], [ %i.ar, %bb.i ]
  %.3105144 = phi ptr [ %.2104149, %bb.h ], [ %i.ay, %bb.i ] ; 3 uses
  %.3119143 = phi ptr [ %.2118147, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, ptr noundef %1) #46
  %i.ar = add i32 %.1101145, 1                    ; 4 uses
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.al, align 4
  %.0.copyload.i.i = load i64, ptr %.3105144, align 1
  %.0.copyload.i7.i = load i64, ptr %i.ap, align 16
  %i.at = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.at, ptr %.3119143, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.3119143, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.3105144, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.av, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.aq, align 8
  %i.aw = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.3119143, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3105144, i64 16 ; 3 uses
  %i.az = add nsw i64 %.099146, -16               ; 2 uses
  %.not130 = icmp eq i64 %i.az, 0
  br i1 %.not130, label %bb.j, label %bb.i, !llvm.loop !2241

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i64 %.2112148, -3072            ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, 3071
  br i1 %i.bb, label %bb.h, label %._crit_edge153, !llvm.loop !2242

._crit_edge153:                                   ; preds = %bb.j, %bb.g
  %.2118.lcssa = phi ptr [ %.1117, %bb.g ], [ %i.ax, %bb.j ] ; 2 uses
  %.2112.lcssa = phi i64 [ %.1111, %bb.g ], [ %i.ba, %bb.j ] ; 3 uses
  %.2104.lcssa = phi ptr [ %.1103, %bb.g ], [ %i.ay, %bb.j ] ; 3 uses
  %.0100.lcssa = phi i32 [ %i.am, %bb.g ], [ %i.ar, %bb.j ] ; 2 uses
  %i.bc = and i64 %.2112.lcssa, 4080              ; 2 uses
  %.not127 = icmp eq i64 %i.bc, 0
  br i1 %.not127, label %.loopexit135, label %.lr.ph163

.lr.ph163:                                        ; preds = %._crit_edge153
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.g(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, ptr noundef %.2104.lcssa, i64 noundef %i.bc) #46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph163, %bb.k
  %.2161 = phi i32 [ %.0100.lcssa, %.lr.ph163 ], [ %i.bg, %bb.k ]
  %.4160 = phi ptr [ %.2104.lcssa, %.lr.ph163 ], [ %i.bn, %bb.k ] ; 3 uses
  %.3113159 = phi i64 [ %.2112.lcssa, %.lr.ph163 ], [ %i.bo, %bb.k ]
  %.4120158 = phi ptr [ %.2118.lcssa, %.lr.ph163 ], [ %i.bm, %bb.k ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.be, ptr noundef %1) #46
  %i.bg = add i32 %.2161, 1                       ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.al, align 4
  %.0.copyload.i.i131 = load i64, ptr %.4160, align 1
  %.0.copyload.i7.i132 = load i64, ptr %i.be, align 16
  %i.bi = xor i64 %.0.copyload.i7.i132, %.0.copyload.i.i131
  store i64 %i.bi, ptr %.4120158, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.4120158, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.4160, i64 8
  %.0.copyload.i.1.i133 = load i64, ptr %i.bk, align 1
  %.0.copyload.i7.1.i134 = load i64, ptr %i.bf, align 8
  %i.bl = xor i64 %.0.copyload.i7.1.i134, %.0.copyload.i.1.i133
  store i64 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.4120158, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4160, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.3113159, -16              ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %bb.k, label %.loopexit135, !llvm.loop !2243

.loopexit135:                                     ; preds = %bb.k, %._crit_edge153
  %.5121 = phi ptr [ %.2118.lcssa, %._crit_edge153 ], [ %i.bm, %bb.k ] ; 8 uses
  %.4114 = phi i64 [ %.2112.lcssa, %._crit_edge153 ], [ %i.bo, %bb.k ] ; 15 uses
  %.5 = phi ptr [ %.2104.lcssa, %._crit_edge153 ], [ %i.bn, %bb.k ] ; 8 uses
  %.3 = phi i32 [ %.0100.lcssa, %._crit_edge153 ], [ %i.bg, %bb.k ]
  %.not128 = icmp eq i64 %.4114, 0
  br i1 %.not128, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.loopexit135
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.bq, ptr noundef %1) #46
  %i.br = add i32 %.3, 1
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  store i32 %i.bs, ptr %i.al, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.bu = add i64 %.4114, -4294967297
  %or.cond248 = icmp ult i64 %i.bu, -4294967293
  br i1 %or.cond248, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bv = getelementptr i8, ptr %0, i64 %.4114
  %i.bw = getelementptr i8, ptr %i.bv, i64 64     ; 2 uses
  %i.bx = getelementptr i8, ptr %.5121, i64 %.4114 ; 2 uses
  %5 = getelementptr i8, ptr %.5, i64 %.4114      ; 2 uses
  %bound0.a = icmp ult ptr %i.bq, %i.bx
  %bound1 = icmp ult ptr %.5121, %i.bw
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0226 = icmp ult ptr %i.bq, %5
  %bound1227 = icmp ult ptr %.5, %i.bw
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx = or i1 %found.conflict, %found.conflict228
  %bound0229 = icmp ult ptr %.5121, %5
  %bound1230 = icmp ult ptr %.5, %i.bx
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx, %found.conflict231
  br i1 %conflict.rdx232, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check233 = icmp ult i64 %.4114, 32
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %.4114, 28
  %n.vec = and i64 %.4114, 8589934560             ; 4 uses
  %i.bz = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ca = and i64 %.4114, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = and i64 %index, 4294967264              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.5, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <16 x i8>, ptr %i.cc, align 1, !tbaa !78, !alias.scope !2251 ; 2 uses
  %wide.load234 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !78, !alias.scope !2251 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cb ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load235 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %wide.load236 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %i.cg = xor <16 x i8> %wide.load235, %wide.load
  %i.ch = xor <16 x i8> %wide.load236, %wide.load234
  store <16 x i8> %i.cg, ptr %i.ce, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  store <16 x i8> %i.ch, ptr %i.cf, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load237 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %wide.load238 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %i.ck = xor <16 x i8> %wide.load237, %wide.load
  %i.cl = xor <16 x i8> %wide.load238, %wide.load234
  %i.cm = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.cb ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <16 x i8> %i.ck, ptr %i.cm, align 1, !tbaa !78, !alias.scope !2254, !noalias !2251
  store <16 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !78, !alias.scope !2254, !noalias !2251
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !2248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4114, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec239 = and i64 %.4114, 8589934588          ; 3 uses
  %i.cp = trunc i64 %n.vec239 to i32              ; 2 uses
  %i.cq = and i64 %.4114, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next244, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = and i64 %index240, 4294967292           ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.5, i64 %i.cr
  %wide.load241 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !78, !alias.scope !2251 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cr ; 2 uses
  %wide.load242 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %i.cu = xor <4 x i8> %wide.load242, %wide.load241
  store <4 x i8> %i.cu, ptr %i.ct, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cr
  %wide.load243 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !78, !alias.scope !2252, !noalias !2253
  %i.cw = xor <4 x i8> %wide.load243, %wide.load241
  %i.cx = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.cr
  store <4 x i8> %i.cw, ptr %i.cx, align 1, !tbaa !78, !alias.scope !2254, !noalias !2251
  %index.next244 = add nuw i64 %index240, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next244, %n.vec239
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n245 = icmp eq i64 %.4114, %n.vec239
  br i1 %cmp.n245, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2108169.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ] ; 3 uses
  %.5115168.ph = phi i64 [ %.4114, %iter.check ], [ %.4114, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5115168.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cz = add nsw i64 %.5115168.ph, -1
  %i.da = zext i32 %.2108169.ph to i64            ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.5, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !78  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.da ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !78
  %i.df = xor i8 %i.de, %i.dc
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !78
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.da
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !78
  %i.di = xor i8 %i.dh, %i.dc
  %i.dj = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.da
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !78
  %i.dk = add i32 %.2108169.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dk, %vec.epilog.scalar.ph.prol ]
  %.2108169.unr = phi i32 [ %.2108169.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dk, %vec.epilog.scalar.ph.prol ]
  %.5115168.unr = phi i64 [ %.5115168.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cz, %vec.epilog.scalar.ph.prol ]
  %i.dl = icmp eq i64 %.5115168.ph, 1
  br i1 %i.dl, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2108169 = phi i32 [ %i.ei, %vec.epilog.scalar.ph ], [ %.2108169.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.5115168 = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.5115168.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dm = zext i32 %.2108169 to i64               ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !78  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dm ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !78
  %i.dr = xor i8 %i.dq, %i.do
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dm
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !78
  %i.du = xor i8 %i.dt, %i.do
  %i.dv = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.dm
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !78
  %i.dw = add i32 %.2108169, 1
  %i.dx = add i64 %.5115168, -2                   ; 2 uses
  %i.dy = zext i32 %i.dw to i64                   ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !78  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dy ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !78
  %i.ed = xor i8 %i.ec, %i.ea
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !78
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dy
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !78
  %i.eg = xor i8 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.dy
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !78
  %i.ei = add i32 %.2108169, 2                    ; 2 uses
  %.not129.1 = icmp eq i64 %i.dx, 0
  br i1 %.not129.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2250

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %.loopexit135, %._crit_edge
  %storemerge = phi i32 [ %i.af, %._crit_edge ], [ 0, %.loopexit135 ], [ %i.q, %.preheader ], [ %i.cp, %vec.epilog.middle.block ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ei, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.p, align 16, !tbaa !468
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !466 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !470  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !471
  %i.h = add i64 %i.g, %4                         ; 3 uses
  %i.i = icmp ugt i64 %i.h, 68719476704
  %i.j = icmp ult i64 %i.h, %4
  %or.cond148 = or i1 %i.i, %i.j
  br i1 %or.cond148, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.f, align 8, !tbaa !471
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !467
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.k, align 4, !tbaa !467
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %i.p = and i8 %i.o, 1
  %.not143 = icmp eq i8 %i.p, 0
  br i1 %.not143, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 12), align 4, !tbaa !75 ; 2 uses
  %i.r = and i32 %i.q, 512
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.t = and i32 %i.s, -1073545216
  %.not3.i = icmp eq i32 %i.t, -1073545216
  br i1 %.not3.i, label %crypto_gcm_avx512_enabled.exit, label %crypto_gcm_avx512_enabled.exit.thread

crypto_gcm_avx512_enabled.exit:                   ; preds = %bb.f
  %i.u = and i32 %i.q, 1024
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.g, label %crypto_gcm_avx512_enabled.exit.thread

bb.g:                                             ; preds = %crypto_gcm_avx512_enabled.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @aes_gcm_encrypt_avx512(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef %2, i64 noundef %4, ptr noundef %3) #46
  br label %bb.r

crypto_gcm_avx512_enabled.exit.thread:            ; preds = %bb.e, %bb.f, %crypto_gcm_avx512_enabled.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !468 ; 3 uses
  %.not144 = icmp eq i32 %i.z, 0
  br i1 %.not144, label %bb.j, label %.preheader150

.preheader150:                                    ; preds = %crypto_gcm_avx512_enabled.exit.thread
  %.not171 = icmp eq i64 %4, 0
  br i1 %.not171, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader150
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.0123154 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.h ] ; 2 uses
  %.0125153 = phi i32 [ %i.z, %.lr.ph ], [ %i.ao, %bb.h ] ; 2 uses
  %.0129152 = phi ptr [ %3, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %.0134151 = phi i64 [ %4, %.lr.ph ], [ %i.am, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0123154, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.0123154, align 1, !tbaa !78
  %i.ae = zext i32 %.0125153 to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !78
  %i.ah = xor i8 %i.ag, %i.ad                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0129152, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.0129152, align 1, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !78
  %i.al = xor i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !78
  %i.am = add nsw i64 %.0134151, -1               ; 3 uses
  %i.an = add i32 %.0125153, 1
  %i.ao = and i32 %i.an, 15                       ; 4 uses
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp ne i64 %i.am, 0
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.h, label %._crit_edge, !llvm.loop !2255

._crit_edge:                                      ; preds = %bb.h
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.at, ptr noundef nonnull %i.a) #46
  %.pre = load i8, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %crypto_gcm_avx512_enabled.exit.thread
  %i.au = phi i8 [ %.pre, %bb.i ], [ %i.o, %crypto_gcm_avx512_enabled.exit.thread ]
  %.1135 = phi i64 [ %i.am, %bb.i ], [ %4, %crypto_gcm_avx512_enabled.exit.thread ] ; 4 uses
  %.1130 = phi ptr [ %i.ai, %bb.i ], [ %3, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %.1124 = phi ptr [ %i.ac, %bb.i ], [ %2, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %i.av = trunc i8 %i.au to i1
  %i.aw = icmp ne i64 %.1135, 0
  %or.cond3 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = tail call i64 @aesni_gcm_encrypt(ptr noundef %.1124, ptr noundef %.1130, i64 noundef range(i64 1, 68719476705) %.1135, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ax) #46 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.1130, i64 %i.ay
  %i.bb = sub i64 %.1135, %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2136 = phi i64 [ %i.bb, %bb.k ], [ %.1135, %bb.j ] ; 3 uses
  %.2131 = phi ptr [ %i.ba, %bb.k ], [ %.1130, %bb.j ] ; 2 uses
  %.2 = phi ptr [ %i.az, %bb.k ], [ %.1124, %bb.j ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.be = icmp ugt i64 %.2136, 3071
  br i1 %i.be, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph163, %bb.m
  %.0121161 = phi i32 [ %i.bd, %.lr.ph163 ], [ %i.bg, %bb.m ]
  %.3160 = phi ptr [ %.2, %.lr.ph163 ], [ %i.bj, %bb.m ] ; 2 uses
  %.3132159 = phi ptr [ %.2131, %.lr.ph163 ], [ %i.bi, %bb.m ] ; 3 uses
  %.3137158 = phi i64 [ %.2136, %.lr.ph163 ], [ %i.bk, %bb.m ]
  tail call void %5(ptr noundef %.3160, ptr noundef %.3132159, i64 noundef 192, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bg = add i32 %.0121161, 192                  ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.bc, align 4
  tail call void %i.e(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, ptr noundef %.3132159, i64 noundef 3072) #46
  %i.bi = getelementptr inbounds nuw i8, ptr %.3132159, i64 3072 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.3160, i64 3072 ; 2 uses
  %i.bk = add i64 %.3137158, -3072                ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 3071
  br i1 %i.bl, label %bb.m, label %._crit_edge164, !llvm.loop !2256

._crit_edge164:                                   ; preds = %bb.m, %bb.l
  %.3137.lcssa = phi i64 [ %.2136, %bb.l ], [ %i.bk, %bb.m ] ; 4 uses
  %.3132.lcssa = phi ptr [ %.2131, %bb.l ], [ %i.bi, %bb.m ] ; 5 uses
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.bj, %bb.m ] ; 4 uses
  %.0121.lcssa = phi i32 [ %i.bd, %bb.l ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bm = and i64 %.3137.lcssa, 4080              ; 5 uses
  %.not145 = icmp eq i64 %i.bm, 0
  br i1 %.not145, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge164
  %i.bn = lshr i64 %.3137.lcssa, 4                ; 2 uses
  tail call void %5(ptr noundef %.3.lcssa, ptr noundef %.3132.lcssa, i64 noundef %i.bn, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add i32 %.0121.lcssa, %i.bo             ; 2 uses
  %i.bq = tail call noundef i32 @llvm.bswap.i32(i32 %i.bp)
  store i32 %i.bq, ptr %i.bc, align 4
  %i.br = getelementptr i8, ptr %.3.lcssa, i64 %i.bm
  %i.bs = and i64 %.3137.lcssa, 15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a, ptr noundef %.3132.lcssa, i64 noundef %i.bm) #46
  %i.bu = getelementptr i8, ptr %.3132.lcssa, i64 %i.bm
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge164
  %.4138 = phi i64 [ %i.bs, %bb.n ], [ %.3137.lcssa, %._crit_edge164 ] ; 12 uses
  %.4133 = phi ptr [ %i.bu, %bb.n ], [ %.3132.lcssa, %._crit_edge164 ] ; 10 uses
  %.4 = phi ptr [ %i.br, %bb.n ], [ %.3.lcssa, %._crit_edge164 ] ; 10 uses
  %.1122 = phi i32 [ %i.bp, %bb.n ], [ %.0121.lcssa, %._crit_edge164 ]
  %.not146 = icmp eq i64 %.4138, 0
  br i1 %.not146, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !469
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.bw(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, ptr noundef %1) #46
  %i.by = add i32 %.1122, 1
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %i.by)
  store i32 %i.bz, ptr %i.bc, align 4
  %i.ca = icmp samesign ugt i64 %.4138, 16
  br i1 %i.ca, label %bb.q, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %min.iters.check = icmp ult i64 %.4138, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cc = add nuw nsw i64 %.4138, %i.bm           ; 2 uses
  %i.cd = getelementptr i8, ptr %.3132.lcssa, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %0, i64 %.4138
  %i.cf = getelementptr i8, ptr %i.ce, i64 64     ; 2 uses
  %6 = getelementptr i8, ptr %.3.lcssa, i64 %i.cc ; 2 uses
  %bound0.a = icmp ult ptr %.4133, %i.cf
  %bound1 = icmp ult ptr %i.bx, %i.cd
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0212 = icmp ult ptr %.4133, %6
  %bound1213 = icmp ult ptr %.4, %i.cd
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx = or i1 %found.conflict, %found.conflict214
  %bound0215 = icmp ult ptr %i.bx, %6
  %bound1216 = icmp ult ptr %.4, %i.cf
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx, %found.conflict217
  br i1 %conflict.rdx218, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219.not = icmp eq i64 %.4138, 16
  br i1 %min.iters.check219.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %.4, align 1, !tbaa !78, !alias.scope !2262
  %wide.load220 = load <16 x i8>, ptr %i.bx, align 16, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cg = xor <16 x i8> %wide.load220, %wide.load ; 2 uses
  store <16 x i8> %i.cg, ptr %.4133, align 1, !tbaa !78, !alias.scope !2264, !noalias !2265
  %wide.load221 = load <16 x i8>, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.ch = xor <16 x i8> %wide.load221, %i.cg
  store <16 x i8> %i.ch, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2263, !noalias !2262
  br label %.loopexit.loopexit

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec222 = and i64 %.4138, 28                  ; 5 uses
  %i.ci = and i64 %.4138, 3
  %wide.load224 = load <4 x i8>, ptr %.4, align 1, !tbaa !78, !alias.scope !2262
  %wide.load225 = load <4 x i8>, ptr %i.bx, align 16, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cj = xor <4 x i8> %wide.load225, %wide.load224 ; 2 uses
  store <4 x i8> %i.cj, ptr %.4133, align 1, !tbaa !78, !alias.scope !2264, !noalias !2265
  %wide.load226 = load <4 x i8>, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.ck = xor <4 x i8> %wide.load226, %i.cj
  store <4 x i8> %i.ck, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cl = icmp eq i64 %n.vec222, 4
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %wide.load224.1 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !78, !alias.scope !2262
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load225.1 = load <4 x i8>, ptr %i.cn, align 4, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.co = xor <4 x i8> %wide.load225.1, %wide.load224.1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.4133, i64 4
  store <4 x i8> %i.co, ptr %i.cp, align 1, !tbaa !78, !alias.scope !2264, !noalias !2265
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %wide.load226.1 = load <4 x i8>, ptr %i.cq, align 4, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cr = xor <4 x i8> %wide.load226.1, %i.co
  store <4 x i8> %i.cr, ptr %i.cq, align 4, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cs = icmp eq i64 %n.vec222, 8
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.ct = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %wide.load224.2 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !78, !alias.scope !2262
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.load225.2 = load <4 x i8>, ptr %i.cu, align 8, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cv = xor <4 x i8> %wide.load225.2, %wide.load224.2 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.4133, i64 8
  store <4 x i8> %i.cv, ptr %i.cw, align 1, !tbaa !78, !alias.scope !2264, !noalias !2265
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.load226.2 = load <4 x i8>, ptr %i.cx, align 8, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cy = xor <4 x i8> %wide.load226.2, %i.cv
  store <4 x i8> %i.cy, ptr %i.cx, align 8, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.cz = icmp eq i64 %n.vec222, 12
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body.3

vec.epilog.vector.body.3:                         ; preds = %vec.epilog.vector.body.2
  %i.da = getelementptr inbounds nuw i8, ptr %.4, i64 12
  %wide.load224.3 = load <4 x i8>, ptr %i.da, align 1, !tbaa !78, !alias.scope !2262
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.load225.3 = load <4 x i8>, ptr %i.db, align 4, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.dc = xor <4 x i8> %wide.load225.3, %wide.load224.3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.4133, i64 12
  store <4 x i8> %i.dc, ptr %i.dd, align 1, !tbaa !78, !alias.scope !2264, !noalias !2265
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %wide.load226.3 = load <4 x i8>, ptr %i.de, align 4, !tbaa !78, !alias.scope !2263, !noalias !2262
  %i.df = xor <4 x i8> %wide.load226.3, %i.dc
  store <4 x i8> %i.df, ptr %i.de, align 4, !tbaa !78, !alias.scope !2263, !noalias !2262
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.3, %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n228 = icmp eq i64 %.4138, %n.vec222
  br i1 %cmp.n228, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec222, %vec.epilog.middle.block ] ; 6 uses
  %.5169.ph = phi i64 [ %.4138, %vector.memcheck ], [ %.4138, %iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5169.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dg = add nsw i64 %.5169.ph, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.ph
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !78
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.ph
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !78
  %i.dl = xor i8 %i.dk, %i.di                     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.ph
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.ph ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !78
  %i.dp = xor i8 %i.do, %i.dl
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !78
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.5169.unr = phi i64 [ %.5169.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dg, %vec.epilog.scalar.ph.prol ]
  %i.dq = icmp eq i64 %.5169.ph, 1
  br i1 %i.dq, label %.loopexit.loopexit, label %vec.epilog.scalar.ph

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #49
  unreachable

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.5169 = phi i64 [ %i.ea, %vec.epilog.scalar.ph ], [ %.5169.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !78
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !78
  %i.dv = xor i8 %i.du, %i.ds                     ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !78
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !78
  %i.dz = xor i8 %i.dy, %i.dv
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ea = add nsw i64 %.5169, -2                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.next
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !78
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !78
  %i.ef = xor i8 %i.ee, %i.ec                     ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.next
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !78
  %i.ej = xor i8 %i.ei, %i.ef
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !78
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %.not147.1 = icmp eq i64 %i.ea, 0
  br i1 %.not147.1, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2261

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vector.body, %vec.epilog.middle.block
  %i.ek = trunc nuw nsw i64 %.4138 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader150, %.loopexit.loopexit, %bb.o, %._crit_edge
  %storemerge = phi i32 [ %i.ao, %._crit_edge ], [ 0, %bb.o ], [ %i.ek, %.loopexit.loopexit ], [ %i.z, %.preheader150 ]
  store i32 %storemerge, ptr %i.y, align 16, !tbaa !468
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %.loopexit, %bb.g
  %.1 = phi i32 [ 1, %.loopexit ], [ 1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @aes_gcm_encrypt_avx512(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !466 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !470  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !471
  %i.h = add i64 %i.g, %4                         ; 3 uses
  %i.i = icmp ugt i64 %i.h, 68719476704
  %i.j = icmp ult i64 %i.h, %4
  %or.cond152 = or i1 %i.i, %i.j
  br i1 %or.cond152, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.f, align 8, !tbaa !471
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !467
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.k, align 4, !tbaa !467
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %i.p = and i8 %i.o, 1
  %.not147 = icmp eq i8 %i.p, 0
  br i1 %.not147, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 12), align 4, !tbaa !75 ; 2 uses
  %i.r = and i32 %i.q, 512
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.t = and i32 %i.s, -1073545216
  %.not3.i = icmp eq i32 %i.t, -1073545216
  br i1 %.not3.i, label %crypto_gcm_avx512_enabled.exit, label %crypto_gcm_avx512_enabled.exit.thread

crypto_gcm_avx512_enabled.exit:                   ; preds = %bb.f
  %i.u = and i32 %i.q, 1024
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.g, label %crypto_gcm_avx512_enabled.exit.thread

bb.g:                                             ; preds = %crypto_gcm_avx512_enabled.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @aes_gcm_decrypt_avx512(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef %2, i64 noundef %4, ptr noundef %3) #46
  br label %bb.r

crypto_gcm_avx512_enabled.exit.thread:            ; preds = %bb.e, %bb.f, %crypto_gcm_avx512_enabled.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !468 ; 3 uses
  %.not148 = icmp eq i32 %i.z, 0
  br i1 %.not148, label %bb.j, label %.preheader154

.preheader154:                                    ; preds = %crypto_gcm_avx512_enabled.exit.thread
  %.not175 = icmp eq i64 %4, 0
  br i1 %.not175, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader154
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.0125158 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.h ] ; 2 uses
  %.0129157 = phi ptr [ %3, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %.0134156 = phi i64 [ %4, %.lr.ph ], [ %i.am, %bb.h ]
  %.0139155 = phi i32 [ %i.z, %.lr.ph ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0125158, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.0125158, align 1, !tbaa !78 ; 2 uses
  %i.ae = zext i32 %.0139155 to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !78
  %i.ah = xor i8 %i.ag, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %.0129157, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.0129157, align 1, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !78
  %i.al = xor i8 %i.ak, %i.ad
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !78
  %i.am = add nsw i64 %.0134156, -1               ; 3 uses
  %i.an = add i32 %.0139155, 1
  %i.ao = and i32 %i.an, 15                       ; 4 uses
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp ne i64 %i.am, 0
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.h, label %._crit_edge, !llvm.loop !2266

._crit_edge:                                      ; preds = %bb.h
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.at, ptr noundef nonnull %i.a) #46
  %.pre = load i8, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %crypto_gcm_avx512_enabled.exit.thread
  %i.au = phi i8 [ %.pre, %bb.i ], [ %i.o, %crypto_gcm_avx512_enabled.exit.thread ]
  %.1135 = phi i64 [ %i.am, %bb.i ], [ %4, %crypto_gcm_avx512_enabled.exit.thread ] ; 4 uses
  %.1130 = phi ptr [ %i.ai, %bb.i ], [ %3, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %.1126 = phi ptr [ %i.ac, %bb.i ], [ %2, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %i.av = trunc i8 %i.au to i1
  %i.aw = icmp ne i64 %.1135, 0
  %or.cond3 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = tail call i64 @aesni_gcm_decrypt(ptr noundef %.1126, ptr noundef %.1130, i64 noundef range(i64 1, 68719476705) %.1135, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ax) #46 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1126, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.1130, i64 %i.ay
  %i.bb = sub i64 %.1135, %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2136 = phi i64 [ %i.bb, %bb.k ], [ %.1135, %bb.j ] ; 3 uses
  %.2131 = phi ptr [ %i.ba, %bb.k ], [ %.1130, %bb.j ] ; 2 uses
  %.2 = phi ptr [ %i.az, %bb.k ], [ %.1126, %bb.j ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.be = icmp ugt i64 %.2136, 3071
  br i1 %i.be, label %.lr.ph167, label %._crit_edge168

.lr.ph167:                                        ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph167, %bb.m
  %.3165 = phi ptr [ %.2, %.lr.ph167 ], [ %i.bj, %bb.m ] ; 3 uses
  %.0127164 = phi i32 [ %i.bd, %.lr.ph167 ], [ %i.bg, %bb.m ]
  %.3132163 = phi ptr [ %.2131, %.lr.ph167 ], [ %i.bi, %bb.m ] ; 2 uses
  %.3137162 = phi i64 [ %.2136, %.lr.ph167 ], [ %i.bk, %bb.m ]
  tail call void %i.e(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, ptr noundef %.3165, i64 noundef 3072) #46
  tail call void %5(ptr noundef %.3165, ptr noundef %.3132163, i64 noundef 192, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bg = add i32 %.0127164, 192                  ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.bc, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.3132163, i64 3072 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.3165, i64 3072 ; 2 uses
  %i.bk = add i64 %.3137162, -3072                ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 3071
  br i1 %i.bl, label %bb.m, label %._crit_edge168, !llvm.loop !2267

._crit_edge168:                                   ; preds = %bb.m, %bb.l
  %.3137.lcssa = phi i64 [ %.2136, %bb.l ], [ %i.bk, %bb.m ] ; 4 uses
  %.3132.lcssa = phi ptr [ %.2131, %bb.l ], [ %i.bi, %bb.m ] ; 4 uses
  %.0127.lcssa = phi i32 [ %i.bd, %bb.l ], [ %i.bg, %bb.m ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.bj, %bb.m ] ; 5 uses
  %i.bm = and i64 %.3137.lcssa, 4080              ; 5 uses
  %.not149 = icmp eq i64 %i.bm, 0
  br i1 %.not149, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge168
  %i.bn = lshr i64 %.3137.lcssa, 4                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.a, ptr noundef %.3.lcssa, i64 noundef %i.bm) #46
  tail call void %5(ptr noundef %.3.lcssa, ptr noundef %.3132.lcssa, i64 noundef %i.bn, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bp = trunc nuw nsw i64 %i.bn to i32
  %i.bq = add i32 %.0127.lcssa, %i.bp             ; 2 uses
  %i.br = tail call noundef i32 @llvm.bswap.i32(i32 %i.bq)
  store i32 %i.br, ptr %i.bc, align 4
  %i.bs = getelementptr i8, ptr %.3132.lcssa, i64 %i.bm
  %i.bt = getelementptr i8, ptr %.3.lcssa, i64 %i.bm
  %i.bu = and i64 %.3137.lcssa, 15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge168
  %.4138 = phi i64 [ %i.bu, %bb.n ], [ %.3137.lcssa, %._crit_edge168 ] ; 12 uses
  %.4133 = phi ptr [ %i.bs, %bb.n ], [ %.3132.lcssa, %._crit_edge168 ] ; 10 uses
  %.1128 = phi i32 [ %i.bq, %bb.n ], [ %.0127.lcssa, %._crit_edge168 ]
  %.4 = phi ptr [ %i.bt, %bb.n ], [ %.3.lcssa, %._crit_edge168 ] ; 10 uses
  %.not150 = icmp eq i64 %.4138, 0
  br i1 %.not150, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !469
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.bw(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, ptr noundef %1) #46
  %i.by = add i32 %.1128, 1
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %i.by)
  store i32 %i.bz, ptr %i.bc, align 4
  %i.ca = icmp samesign ugt i64 %.4138, 16
  br i1 %i.ca, label %bb.q, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %min.iters.check = icmp ult i64 %.4138, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cc = getelementptr i8, ptr %0, i64 %.4138
  %i.cd = getelementptr i8, ptr %i.cc, i64 64     ; 2 uses
  %i.ce = add nuw nsw i64 %.4138, %i.bm           ; 2 uses
  %i.cf = getelementptr i8, ptr %.3132.lcssa, i64 %i.ce ; 2 uses
  %6 = getelementptr i8, ptr %.3.lcssa, i64 %i.ce ; 2 uses
  %bound0.a = icmp ult ptr %i.bx, %i.cf
  %bound1 = icmp ult ptr %.4133, %i.cd
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0216 = icmp ult ptr %i.bx, %6
  %bound1217 = icmp ult ptr %.4, %i.cd
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx = or i1 %found.conflict, %found.conflict218
  %bound0219 = icmp ult ptr %.4133, %6
  %bound1220 = icmp ult ptr %.4, %i.cf
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx, %found.conflict221
  br i1 %conflict.rdx222, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check223.not = icmp eq i64 %.4138, 16
  br i1 %min.iters.check223.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %.4, align 1, !tbaa !78, !alias.scope !2273 ; 2 uses
  %wide.load224 = load <16 x i8>, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.cg = xor <16 x i8> %wide.load224, %wide.load
  store <16 x i8> %i.cg, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2274, !noalias !2275
  %wide.load225 = load <16 x i8>, ptr %i.bx, align 16, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.ch = xor <16 x i8> %wide.load225, %wide.load
  store <16 x i8> %i.ch, ptr %.4133, align 1, !tbaa !78, !alias.scope !2276, !noalias !2273
  br label %.loopexit.loopexit

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec226 = and i64 %.4138, 28                  ; 5 uses
  %i.ci = and i64 %.4138, 3
  %wide.load228 = load <4 x i8>, ptr %.4, align 1, !tbaa !78, !alias.scope !2273 ; 2 uses
  %wide.load229 = load <4 x i8>, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.cj = xor <4 x i8> %wide.load229, %wide.load228
  store <4 x i8> %i.cj, ptr %i.cb, align 16, !tbaa !78, !alias.scope !2274, !noalias !2275
  %wide.load230 = load <4 x i8>, ptr %i.bx, align 16, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.ck = xor <4 x i8> %wide.load230, %wide.load228
  store <4 x i8> %i.ck, ptr %.4133, align 1, !tbaa !78, !alias.scope !2276, !noalias !2273
  %i.cl = icmp eq i64 %n.vec226, 4
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %wide.load228.1 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !78, !alias.scope !2273 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %wide.load229.1 = load <4 x i8>, ptr %i.cn, align 4, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.co = xor <4 x i8> %wide.load229.1, %wide.load228.1
  store <4 x i8> %i.co, ptr %i.cn, align 4, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load230.1 = load <4 x i8>, ptr %i.cp, align 4, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.cq = xor <4 x i8> %wide.load230.1, %wide.load228.1
  %i.cr = getelementptr inbounds nuw i8, ptr %.4133, i64 4
  store <4 x i8> %i.cq, ptr %i.cr, align 1, !tbaa !78, !alias.scope !2276, !noalias !2273
  %i.cs = icmp eq i64 %n.vec226, 8
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.ct = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %wide.load228.2 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !78, !alias.scope !2273 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.load229.2 = load <4 x i8>, ptr %i.cu, align 8, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.cv = xor <4 x i8> %wide.load229.2, %wide.load228.2
  store <4 x i8> %i.cv, ptr %i.cu, align 8, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.load230.2 = load <4 x i8>, ptr %i.cw, align 8, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.cx = xor <4 x i8> %wide.load230.2, %wide.load228.2
  %i.cy = getelementptr inbounds nuw i8, ptr %.4133, i64 8
  store <4 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !78, !alias.scope !2276, !noalias !2273
  %i.cz = icmp eq i64 %n.vec226, 12
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body.3

vec.epilog.vector.body.3:                         ; preds = %vec.epilog.vector.body.2
  %i.da = getelementptr inbounds nuw i8, ptr %.4, i64 12
  %wide.load228.3 = load <4 x i8>, ptr %i.da, align 1, !tbaa !78, !alias.scope !2273 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %wide.load229.3 = load <4 x i8>, ptr %i.db, align 4, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.dc = xor <4 x i8> %wide.load229.3, %wide.load228.3
  store <4 x i8> %i.dc, ptr %i.db, align 4, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.load230.3 = load <4 x i8>, ptr %i.dd, align 4, !tbaa !78, !alias.scope !2274, !noalias !2275
  %i.de = xor <4 x i8> %wide.load230.3, %wide.load228.3
  %i.df = getelementptr inbounds nuw i8, ptr %.4133, i64 12
  store <4 x i8> %i.de, ptr %i.df, align 1, !tbaa !78, !alias.scope !2276, !noalias !2273
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.3, %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n232 = icmp eq i64 %.4138, %n.vec226
  br i1 %cmp.n232, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec226, %vec.epilog.middle.block ] ; 6 uses
  %.5174.ph = phi i64 [ %.4138, %vector.memcheck ], [ %.4138, %iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5174.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dg = add nsw i64 %.5174.ph, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.ph
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !78  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.ph ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !78
  %i.dl = xor i8 %i.dk, %i.di
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.ph
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !78
  %i.do = xor i8 %i.dn, %i.di
  %i.dp = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.ph
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !78
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.5174.unr = phi i64 [ %.5174.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dg, %vec.epilog.scalar.ph.prol ]
  %i.dq = icmp eq i64 %.5174.ph, 1
  br i1 %i.dq, label %.loopexit.loopexit, label %vec.epilog.scalar.ph

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #49
  unreachable

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.5174 = phi i64 [ %i.ea, %vec.epilog.scalar.ph ], [ %.5174.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !78  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !78
  %i.dv = xor i8 %i.du, %i.ds
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !78
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !78
  %i.dy = xor i8 %i.dx, %i.ds
  %i.dz = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ea = add nsw i64 %.5174, -2                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.next
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !78  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !78
  %i.ef = xor i8 %i.ee, %i.ec
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !78
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !78
  %i.ei = xor i8 %i.eh, %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.next
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !78
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %.not151.1 = icmp eq i64 %i.ea, 0
  br i1 %.not151.1, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2272

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vector.body, %vec.epilog.middle.block
  %i.ek = trunc nuw nsw i64 %.4138 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader154, %.loopexit.loopexit, %bb.o, %._crit_edge
  %storemerge = phi i32 [ %i.ao, %._crit_edge ], [ 0, %bb.o ], [ %i.ek, %.loopexit.loopexit ], [ %i.z, %.preheader154 ]
  store i32 %storemerge, ptr %i.y, align 16, !tbaa !468
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %.loopexit, %bb.g
  %.1 = phi i32 [ 1, %.loopexit ], [ 1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @aes_gcm_decrypt_avx512(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_finish(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !466 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i32, ptr %i.d, align 16, !tbaa !468
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = load i32, ptr %i.f, align 4, !tbaa !467
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load <2 x i64>, ptr %i.i, align 16, !tbaa !82
  %i.l = shl <2 x i64> %i.k, splat (i64 3)
  %i.m = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.l)
  %i.n = load <2 x i64>, ptr %i.j, align 16
  %i.o = xor <2 x i64> %i.m, %i.n
  store <2 x i64> %i.o, ptr %i.j, align 16
  tail call void %i.c(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.j, align 16
  %i.r = load <2 x i64>, ptr %i.p, align 16
  %i.s = xor <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.j, align 16
  %i.t = icmp ne ptr %1, null
  %i.u = icmp ult i64 %2, 17
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.j, ptr noundef nonnull %1, i64 noundef %2) #46
  %i.w = icmp eq i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %i.x, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_gcm128_tag(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !466 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i32, ptr %i.d, align 16, !tbaa !468
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = load i32, ptr %i.f, align 4, !tbaa !467
  %.not24.i = icmp eq i32 %i.g, 0
  br i1 %.not24.i, label %CRYPTO_gcm128_finish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #46, !inline_history !474
  br label %CRYPTO_gcm128_finish.exit

CRYPTO_gcm128_finish.exit:                        ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load <2 x i64>, ptr %i.i, align 16, !tbaa !82
  %i.l = shl <2 x i64> %i.k, splat (i64 3)
  %i.m = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.l)
  %i.n = load <2 x i64>, ptr %i.j, align 16
  %i.o = xor <2 x i64> %i.m, %i.n
  store <2 x i64> %i.o, ptr %i.j, align 16
  tail call void %i.c(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #46, !inline_history !474
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.j, align 16
  %i.r = load <2 x i64>, ptr %i.p, align 16
  %i.s = xor <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.j, align 16
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %OPENSSL_memcpy.exit, label %bb.d

bb.d:                                             ; preds = %CRYPTO_gcm128_finish.exit
  %i.u = tail call i64 @llvm.umin.i64(i64 %2, i64 16)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.j, i64 %i.u, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %CRYPTO_gcm128_finish.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 2) i64 @CRYPTO_xts128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.2, align 16             ; 16 uses
  %7 = alloca %union.anon.2, align 16             ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.a = icmp ult i64 %4, 16
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2290
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2291
  call void %i.c(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %i.e) #46
  %.not = icmp ne i32 %5, 0                       ; 2 uses
  %i.f = and i64 %4, 15
  %.not61 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not61
  %i.g = add i64 %4, -16
  %spec.select = select i1 %or.cond, i64 %4, i64 %i.g ; 3 uses
  %i.h = icmp ugt i64 %spec.select, 15
  br i1 %i.h, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x i64>, ptr %6, align 16, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.05268 = phi ptr [ %2, %.lr.ph ], [ %i.w, %select.unfold ] ; 2 uses
  %.05367 = phi ptr [ %3, %.lr.ph ], [ %i.v, %select.unfold ] ; 2 uses
  %.166 = phi i64 [ %spec.select, %.lr.ph ], [ %i.t, %select.unfold ]
  %i.l = phi <2 x i64> [ %i.k, %.lr.ph ], [ %i.af, %select.unfold ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 1 dereferenceable(16) %.05268, i64 16, i1 false)
  %i.m = load <2 x i64>, ptr %7, align 16, !tbaa !78
  %i.n = xor <2 x i64> %i.m, %i.l
  store <2 x i64> %i.n, ptr %7, align 16, !tbaa !78
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !2292
  %i.p = load ptr, ptr %0, align 8, !tbaa !2293
  call void %i.o(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.p) #46
  %i.q = load <2 x i64>, ptr %6, align 16, !tbaa !78 ; 3 uses
  %i.r = load <2 x i64>, ptr %7, align 16, !tbaa !78
  %i.s = xor <2 x i64> %i.r, %i.q                 ; 2 uses
  store <2 x i64> %i.s, ptr %7, align 16, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05367, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.t = add i64 %.166, -16                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %select.unfold

select.unfold:                                    ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.05367, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05268, i64 16 ; 2 uses
  %i.x = extractelement <2 x i64> %i.q, i64 1     ; 2 uses
  %isneg62 = icmp slt i64 %i.x, 0
  %i.y = extractelement <2 x i64> %i.q, i64 0     ; 2 uses
  %i.z = shl i64 %i.y, 1
  %i.aa = select i1 %isneg62, i64 135, i64 0
  %i.ab = xor i64 %i.aa, %i.z                     ; 2 uses
  store i64 %i.ab, ptr %6, align 16, !tbaa !78
  %i.ac = call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.y, i64 1) ; 2 uses
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !78
  %i.ad = icmp ugt i64 %i.t, 15
  %i.ae = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ac, i64 1
  br i1 %i.ad, label %bb.c, label %select.unfold._crit_edge.loopexit, !llvm.loop !2277

select.unfold._crit_edge.loopexit:                ; preds = %select.unfold
  %i.ag = extractelement <2 x i64> %i.s, i64 0
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold._crit_edge.loopexit, %bb.b
  %i.ah = phi i64 [ undef, %bb.b ], [ %i.ag, %select.unfold._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %spec.select, %bb.b ], [ %i.t, %select.unfold._crit_edge.loopexit ] ; 19 uses
  %.053.lcssa = phi ptr [ %3, %bb.b ], [ %i.v, %select.unfold._crit_edge.loopexit ] ; 15 uses
  %.052.lcssa = phi ptr [ %2, %bb.b ], [ %i.w, %select.unfold._crit_edge.loopexit ] ; 14 uses
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %select.unfold._crit_edge
  %.not77 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not77, label %._crit_edge75, label %iter.check170

iter.check170:                                    ; preds = %.preheader
  %min.iters.check144 = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check144, label %.lr.ph74.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %iter.check170
  %i.ai = getelementptr i8, ptr %.053.lcssa, i64 %.1.lcssa ; 2 uses
  %i.aj = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %8 = getelementptr i8, ptr %.052.lcssa, i64 %.1.lcssa ; 2 uses
  %bound0146.a = icmp ult ptr %.053.lcssa, %i.aj
  %bound1147 = icmp ult ptr %7, %i.ai
  %found.conflict148 = and i1 %bound0146.a, %bound1147
  %bound0149 = icmp ult ptr %.053.lcssa, %8
  %bound1150 = icmp ult ptr %.052.lcssa, %i.ai
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %found.conflict148, %found.conflict151
  %bound0153 = icmp ult ptr %7, %8
  %bound1154 = icmp ult ptr %.052.lcssa, %i.aj
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  br i1 %conflict.rdx156, label %.lr.ph74.preheader, label %vec.epilog.ph174

vec.epilog.ph174:                                 ; preds = %vector.memcheck145
  %n.vec176 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph174
  %index178 = phi i64 [ 0, %vec.epilog.ph174 ], [ %index.next181, %vec.epilog.vector.body177 ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %index178
  %wide.load179 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !78, !alias.scope !2294
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 %index178 ; 2 uses
  %wide.load180 = load <4 x i8>, ptr %i.al, align 4, !tbaa !78, !alias.scope !2295, !noalias !2294
  %i.am = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %index178
  store <4 x i8> %wide.load180, ptr %i.am, align 1, !tbaa !78, !alias.scope !2296, !noalias !2297
  store <4 x i8> %wide.load179, ptr %i.al, align 4, !tbaa !78, !alias.scope !2295, !noalias !2294
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.an, label %vec.epilog.middle.block182, label %vec.epilog.vector.body177, !llvm.loop !2282

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body177
  %cmp.n183 = icmp eq i64 %.1.lcssa, %n.vec176
  br i1 %cmp.n183, label %._crit_edge75.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %iter.check170, %vector.memcheck145, %vec.epilog.middle.block182
  %indvars.iv82.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %iter.check170 ], [ %n.vec176, %vec.epilog.middle.block182 ] ; 6 uses
  %.neg191 = or disjoint i64 %indvars.iv82.ph, 1
  %xtraiter189 = and i64 %.1.lcssa, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv82.ph
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv82.ph ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv82.ph
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !78
  store i8 %i.ap, ptr %i.aq, align 4, !tbaa !78
  %indvars.iv.next83.prol = or disjoint i64 %indvars.iv82.ph, 1
  br label %.lr.ph74.prol.loopexit

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph74.preheader ], [ %indvars.iv.next83.prol, %.lr.ph74.prol ]
  %i.at = icmp eq i64 %.1.lcssa, %.neg191
  br i1 %i.at, label %._crit_edge75.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.1, %.lr.ph74 ], [ %indvars.iv82.unr, %.lr.ph74.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv82
  %i.av = load i8, ptr %i.au, align 1, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv82 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !78
  %i.ay = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv82
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !78
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !78
  %indvars.iv.next83 = add nuw i64 %indvars.iv82, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv.next83
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next83 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv.next83
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !78
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !78
  %indvars.iv.next83.1 = add nuw i64 %indvars.iv82, 2 ; 2 uses
  %exitcond85.not.1 = icmp eq i64 %indvars.iv.next83.1, %.1.lcssa
  br i1 %exitcond85.not.1, label %._crit_edge75.loopexit, label %.lr.ph74, !llvm.loop !2283

._crit_edge75.loopexit:                           ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %vec.epilog.middle.block182
  %.pre89 = load i64, ptr %7, align 16, !tbaa !78
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.preheader
  %i.be = phi i64 [ %.pre89, %._crit_edge75.loopexit ], [ %i.ah, %.preheader ]
  %i.bf = load i64, ptr %6, align 16, !tbaa !78
  %i.bg = xor i64 %i.be, %i.bf
  store i64 %i.bg, ptr %7, align 16, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !78
  %i.bl = xor i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2292
  %i.bo = load ptr, ptr %0, align 8, !tbaa !2293
  call void %i.bn(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.bo) #46
  %i.bp = load <2 x i64>, ptr %6, align 16, !tbaa !78
  %i.bq = load <2 x i64>, ptr %7, align 16, !tbaa !78
  %i.br = xor <2 x i64> %i.bq, %i.bp
  store <2 x i64> %i.br, ptr %7, align 16, !tbaa !78
  %i.bs = getelementptr inbounds i8, ptr %.053.lcssa, i64 -16
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %select.unfold._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !78 ; 2 uses
  %isneg = icmp slt i64 %i.bu, 0
  %i.bv = load i64, ptr %6, align 16, !tbaa !78   ; 2 uses
  %i.bw = shl i64 %i.bv, 1
  %i.bx = select i1 %isneg, i64 135, i64 0
  %i.by = xor i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bv, i64 1) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 1 dereferenceable(16) %.052.lcssa, i64 16, i1 false)
  %i.ca = load i64, ptr %7, align 16, !tbaa !78
  %i.cb = xor i64 %i.ca, %i.by
  store i64 %i.cb, ptr %7, align 16, !tbaa !78
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !78
  %i.ce = xor i64 %i.cd, %i.bz
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !78
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2292
  %i.ch = load ptr, ptr %0, align 8, !tbaa !2293
  call void %i.cg(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.ch) #46
  %i.ci = load i64, ptr %7, align 16, !tbaa !78
  %i.cj = xor i64 %i.ci, %i.by                    ; 2 uses
  store i64 %i.cj, ptr %7, align 16, !tbaa !78
  %i.ck = load i64, ptr %i.cc, align 8, !tbaa !78
  %i.cl = xor i64 %i.ck, %i.bz                    ; 2 uses
  store i64 %i.cl, ptr %i.cc, align 8, !tbaa !78
  %.not76 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph72.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cm = getelementptr i8, ptr %.053.lcssa, i64 16 ; 2 uses
  %i.cn = or disjoint i64 %.1.lcssa, 16           ; 2 uses
  %i.co = getelementptr i8, ptr %.053.lcssa, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %9 = getelementptr i8, ptr %.052.lcssa, i64 16  ; 2 uses
  %10 = getelementptr i8, ptr %.052.lcssa, i64 %i.cn ; 2 uses
  %bound0 = icmp ult ptr %i.cm, %i.cp
  %bound1 = icmp ult ptr %7, %i.co
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %i.cm, %10
  %bound1114 = icmp ult ptr %9, %i.co
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  %bound0116 = icmp ult ptr %7, %10
  %bound1117 = icmp ult ptr %9, %i.cp
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx, %found.conflict118
  br i1 %conflict.rdx119, label %.lr.ph72.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec124 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = add nuw i64 %index125, 16               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cq
  %wide.load126 = load <4 x i8>, ptr %i.cr, align 1, !tbaa !78, !alias.scope !2298
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 %index125 ; 2 uses
  %wide.load127 = load <4 x i8>, ptr %i.cs, align 4, !tbaa !78, !alias.scope !2299, !noalias !2298
  %i.ct = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.cq
  store <4 x i8> %wide.load127, ptr %i.ct, align 1, !tbaa !78, !alias.scope !2300, !noalias !2301
  store <4 x i8> %wide.load126, ptr %i.cs, align 4, !tbaa !78, !alias.scope !2299, !noalias !2298
  %index.next128 = add nuw i64 %index125, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %.1.lcssa, %n.vec124
  br i1 %cmp.n129, label %._crit_edge.loopexit, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec124, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %.1.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader
  %i.cv = or disjoint i64 %indvars.iv.ph, 16      ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.ph ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !78
  %i.da = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.cv
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !78
  store i8 %i.cx, ptr %i.cy, align 4, !tbaa !78
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph72.prol.loopexit

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph72.preheader ], [ %indvars.iv.next.prol, %.lr.ph72.prol ]
  %i.db = icmp eq i64 %.1.lcssa, %.neg
  br i1 %i.db, label %._crit_edge.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph72 ], [ %indvars.iv.unr, %.lr.ph72.prol.loopexit ] ; 5 uses
  %i.dc = add nuw i64 %indvars.iv, 16             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !78
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !78
  %i.dh = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.dc
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !78
  store i8 %i.de, ptr %i.df, align 1, !tbaa !78
  %i.di = add nuw i64 %indvars.iv, 17             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !78
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.di
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !78
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !78
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.1.lcssa
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph72, !llvm.loop !2289

._crit_edge.loopexit:                             ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %vec.epilog.middle.block
  %.pre87 = load i64, ptr %7, align 16, !tbaa !78
  %.pre88 = load i64, ptr %i.cc, align 8, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.dp = phi i64 [ %.pre88, %._crit_edge.loopexit ], [ %i.cl, %bb.d ]
  %i.dq = phi i64 [ %.pre87, %._crit_edge.loopexit ], [ %i.cj, %bb.d ]
  %i.dr = load i64, ptr %6, align 16, !tbaa !78
  %i.ds = xor i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %7, align 16, !tbaa !78
  %i.dt = load i64, ptr %i.bt, align 8, !tbaa !78
  %i.du = xor i64 %i.dp, %i.dt
  store i64 %i.du, ptr %i.cc, align 8, !tbaa !78
  %i.dv = load ptr, ptr %i.cf, align 8, !tbaa !2292
  %i.dw = load ptr, ptr %0, align 8, !tbaa !2293
  call void %i.dv(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.dw) #46
  %i.dx = load <2 x i64>, ptr %6, align 16, !tbaa !78
  %i.dy = load <2 x i64>, ptr %7, align 16, !tbaa !78
  %i.dz = xor <2 x i64> %i.dy, %i.dx
  store <2 x i64> %i.dz, ptr %7, align 16, !tbaa !78
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %._crit_edge, %._crit_edge75
  %.sink = phi ptr [ %i.bs, %._crit_edge75 ], [ %.053.lcssa, %._crit_edge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sink, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.sink.split, %bb.a
  %.0 = phi i64 [ 1, %.loopexit.sink.split ], [ 0, %bb.a ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %.0.copyload.i.i = load i64, ptr %i.a, align 8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.0.copyload.i12.i = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = and i64 %.0.copyload.i.i, 1              ; 2 uses
  %.neg.i.i.i.i = sub nsw i64 0, %i.d
  %i.e = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i12.i, i64 %.0.copyload.i.i, i64 63)
  %i.f = lshr i64 %.0.copyload.i12.i, 1
  %i.g = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #47, !srcloc !83
  %i.h = add nsw i64 %i.d, -1
  %i.i = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.h) #47, !srcloc !83 ; 0 uses
  %i.j = shl i64 %i.g, 56
  %i.k = and i64 %i.j, -2233785415175766016
  %i.l = xor i64 %i.k, %i.f
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %i.l)
  store i64 %i.m, ptr %i.a, align 8
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  store i64 %i.n, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @CRYPTO_ghash_init(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_update_blocks(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge23, label %OPENSSL_memcpy.exit.lr.ph

OPENSSL_memcpy.exit.lr.ph:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %OPENSSL_memcpy.exit.lr.ph, %._crit_edge
  %.01722 = phi i64 [ %2, %OPENSSL_memcpy.exit.lr.ph ], [ %i.e, %._crit_edge ] ; 2 uses
  %.01821 = phi ptr [ %1, %OPENSSL_memcpy.exit.lr.ph ], [ %i.d, %._crit_edge ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.01722, i64 512) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr readonly align 1 %.01821, i64 %spec.store.select, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.01821, i64 %spec.store.select
  %i.e = sub nuw i64 %.01722, %spec.store.select  ; 2 uses
  %i.f = lshr i64 %spec.store.select, 4           ; 3 uses
  switch i64 %i.f, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %OPENSSL_memcpy.exit
  %unroll_iter = and i64 %i.f, 62
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.g = and i64 %spec.store.select, 16
  %lcmp.mod.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %OPENSSL_memcpy.exit, %._crit_edge.loopexit.unr-lcssa
  %.019.epil.init = phi i64 [ 0, %OPENSSL_memcpy.exit ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod27)
  %i.h = shl nuw nsw i64 %.019.epil.init, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 3 uses
  %.0.copyload.i.i.epil = load i64, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.0.copyload.i5.i.epil = load i64, ptr %i.j, align 8
  %i.k = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.epil)
  store i64 %i.k, ptr %i.i, align 8
  %i.l = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.epil)
  store i64 %i.l, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %OPENSSL_memcpy.exit
end_hunk_2
begin_hunk_3_@mlkem512_polyvec_mulcache_compute:bb.a
  %i.be = shufflevector <4 x i32> %i.ah, <4 x i32> %i.bd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bf = lshr <8 x i32> %i.be, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.bf to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.aj, align 2, !tbaa !133, !alias.scope !2755, !noalias !2754
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, 60
  br i1 %i.bg, label %mlk_poly_mulcache_compute_native.exit.i.preheader, label %vector.body, !llvm.loop !2747

mlk_poly_mulcache_compute_native.exit.thread.i:   ; preds = %bb.a
  tail call void @mlkem_poly_mulcache_compute_avx2_asm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @mlkem_qdata) #46
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  br label %mlkem_poly_mulcache_compute.exit

mlk_poly_mulcache_compute_native.exit.i:          ; preds = %mlk_poly_mulcache_compute_native.exit.i.preheader, %mlk_poly_mulcache_compute_native.exit.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %mlk_poly_mulcache_compute_native.exit.i ], [ %indvars.iv.i.i.ph, %mlk_poly_mulcache_compute_native.exit.i.preheader ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !133
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @mlk_zetas, i64 %indvars.iv.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !133 ; 2 uses
  %i.bn = sext i16 %i.bj to i32
  %i.bo = sext i16 %i.bm to i32
  %i.bp = mul nsw i32 %i.bo, %i.bn                ; 2 uses
  %sext.i.i.i = mul i32 %i.bp, -218038272
  %i.bq = ashr exact i32 %sext.i.i.i, 16
  %.neg.i.i.i.i = mul nsw i32 %i.bq, -3329
  %i.br = add nsw i32 %.neg.i.i.i.i, %i.bp
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc nuw i32 %i.bs to i16
  %.idx15.i.i = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx15.i.i ; 2 uses
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !133
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !133
  %i.bx = sub i16 0, %i.bm
  %i.by = sext i16 %i.bw to i32
  %i.bz = sext i16 %i.bx to i32
  %i.ca = mul nsw i32 %i.by, %i.bz                ; 2 uses
  %sext.i11.i.i = mul i32 %i.ca, -218038272
  %i.cb = ashr exact i32 %sext.i11.i.i, 16
  %.neg.i.i12.i.i = mul nsw i32 %i.cb, -3329
  %i.cc = add nsw i32 %.neg.i.i12.i.i, %i.ca
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = trunc nuw i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !133
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 64
  br i1 %exitcond.not.i.i, label %mlkem_poly_mulcache_compute.exit, label %mlk_poly_mulcache_compute_native.exit.i, !llvm.loop !2748

mlkem_poly_mulcache_compute.exit:                 ; preds = %mlk_poly_mulcache_compute_native.exit.i, %mlk_poly_mulcache_compute_native.exit.thread.i
  %i.cg = phi i32 [ %.pre, %mlk_poly_mulcache_compute_native.exit.thread.i ], [ %i.a, %mlk_poly_mulcache_compute_native.exit.i ]
  %i.ch = getelementptr i8, ptr %0, i64 256       ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 6 uses
  %i.cj = and i32 %i.cg, 32
  %.not.i.i.1 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.1, label %vector.memcheck16, label %mlk_poly_mulcache_compute_native.exit.thread.i.1

vector.memcheck16:                                ; preds = %mlkem_poly_mulcache_compute.exit
  %i.ck = getelementptr i8, ptr %0, i64 512
  %i.cl = getelementptr i8, ptr %1, i64 514
  %i.cm = getelementptr i8, ptr %1, i64 1024
  %bound017 = icmp ult ptr %i.ch, %i.cm
  %bound118 = icmp ult ptr %i.cl, %i.ck
  %found.conflict19 = and i1 %bound017, %bound118
  br i1 %found.conflict19, label %mlk_poly_mulcache_compute_native.exit.i.1.preheader, label %vector.body21

mlk_poly_mulcache_compute_native.exit.i.1.preheader: ; preds = %vector.body21, %vector.memcheck16
  %indvars.iv.i.i.1.ph = phi i64 [ 0, %vector.memcheck16 ], [ 60, %vector.body21 ]
  br label %mlk_poly_mulcache_compute_native.exit.i.1

vector.body21:                                    ; preds = %vector.memcheck16, %vector.body21
  %index22 = phi i64 [ %index.next25, %vector.body21 ], [ 0, %vector.memcheck16 ] ; 7 uses
  %i.cn = shl nuw nsw i64 %index22, 3
  %i.co = shl i64 %index22, 3
  %i.cp = shl i64 %index22, 3
  %i.cq = shl i64 %index22, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cn ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.co ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cq ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 26
  %i.cz = load i16, ptr %i.cv, align 2, !tbaa !133, !alias.scope !2756
  %i.da = load i16, ptr %i.cw, align 2, !tbaa !133, !alias.scope !2756
  %i.db = load i16, ptr %i.cx, align 2, !tbaa !133, !alias.scope !2756
  %i.dc = load i16, ptr %i.cy, align 2, !tbaa !133, !alias.scope !2756
  %i.dd = insertelement <4 x i16> poison, i16 %i.cz, i64 0
  %i.de = insertelement <4 x i16> %i.dd, i16 %i.da, i64 1
  %i.df = insertelement <4 x i16> %i.de, i16 %i.db, i64 2
  %i.dg = insertelement <4 x i16> %i.df, i16 %i.dc, i64 3
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr @mlk_zetas, i64 %index22
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 128
  %wide.load23 = load <4 x i16>, ptr %i.di, align 8, !tbaa !133 ; 2 uses
  %i.dj = sext <4 x i16> %i.dg to <4 x i32>
  %i.dk = sext <4 x i16> %wide.load23 to <4 x i32>
  %i.dl = mul nsw <4 x i32> %i.dk, %i.dj          ; 2 uses
  %i.dm = mul <4 x i32> %i.dl, splat (i32 -218038272)
  %i.dn = ashr exact <4 x i32> %i.dm, splat (i32 16)
  %i.do = mul nsw <4 x i32> %i.dn, splat (i32 -3329)
  %i.dp = add nsw <4 x i32> %i.do, %i.dl
  %i.dq = shl nuw nsw i64 %index22, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 14
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 22
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cu, i64 30
  %i.dw = load i16, ptr %i.ds, align 2, !tbaa !133, !alias.scope !2756
  %i.dx = load i16, ptr %i.dt, align 2, !tbaa !133, !alias.scope !2756
  %i.dy = load i16, ptr %i.du, align 2, !tbaa !133, !alias.scope !2756
  %i.dz = load i16, ptr %i.dv, align 2, !tbaa !133, !alias.scope !2756
  %i.ea = insertelement <4 x i16> poison, i16 %i.dw, i64 0
  %i.eb = insertelement <4 x i16> %i.ea, i16 %i.dx, i64 1
  %i.ec = insertelement <4 x i16> %i.eb, i16 %i.dy, i64 2
  %i.ed = insertelement <4 x i16> %i.ec, i16 %i.dz, i64 3
  %i.ee = sub <4 x i16> zeroinitializer, %wide.load23
  %i.ef = sext <4 x i16> %i.ed to <4 x i32>
  %i.eg = sext <4 x i16> %i.ee to <4 x i32>
  %i.eh = mul nsw <4 x i32> %i.ef, %i.eg          ; 2 uses
  %i.ei = mul <4 x i32> %i.eh, splat (i32 -218038272)
  %i.ej = ashr exact <4 x i32> %i.ei, splat (i32 16)
  %i.ek = mul nsw <4 x i32> %i.ej, splat (i32 -3329)
  %i.el = add nsw <4 x i32> %i.ek, %i.eh
  %i.em = shufflevector <4 x i32> %i.dp, <4 x i32> %i.el, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.en = lshr <8 x i32> %i.em, splat (i32 16)
  %interleaved.vec24 = trunc nuw <8 x i32> %i.en to <8 x i16>
  store <8 x i16> %interleaved.vec24, ptr %i.dr, align 2, !tbaa !133, !alias.scope !2757, !noalias !2756
  %index.next25 = add nuw i64 %index22, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next25, 60
  br i1 %i.eo, label %mlk_poly_mulcache_compute_native.exit.i.1.preheader, label %vector.body21, !llvm.loop !2752

mlk_poly_mulcache_compute_native.exit.thread.i.1: ; preds = %mlkem_poly_mulcache_compute.exit
  tail call void @mlkem_poly_mulcache_compute_avx2_asm(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, ptr noundef nonnull @mlkem_qdata) #46
  br label %mlkem_poly_mulcache_compute.exit.1

mlk_poly_mulcache_compute_native.exit.i.1:        ; preds = %mlk_poly_mulcache_compute_native.exit.i.1.preheader, %mlk_poly_mulcache_compute_native.exit.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %mlk_poly_mulcache_compute_native.exit.i.1 ], [ %indvars.iv.i.i.1.ph, %mlk_poly_mulcache_compute_native.exit.i.1.preheader ] ; 4 uses
  %.idx.i.i.1 = shl nuw nsw i64 %indvars.iv.i.i.1, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i.i.1 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !133
  %i.es = getelementptr inbounds nuw [2 x i8], ptr @mlk_zetas, i64 %indvars.iv.i.i.1
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 128
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !133 ; 2 uses
  %i.ev = sext i16 %i.er to i32
  %i.ew = sext i16 %i.eu to i32
  %i.ex = mul nsw i32 %i.ew, %i.ev                ; 2 uses
  %sext.i.i.i.1 = mul i32 %i.ex, -218038272
  %i.ey = ashr exact i32 %sext.i.i.i.1, 16
  %.neg.i.i.i.i.1 = mul nsw i32 %i.ey, -3329
  %i.ez = add nsw i32 %.neg.i.i.i.i.1, %i.ex
  %i.fa = lshr i32 %i.ez, 16
  %i.fb = trunc nuw i32 %i.fa to i16
  %.idx15.i.i.1 = shl nuw nsw i64 %indvars.iv.i.i.1, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx15.i.i.1 ; 2 uses
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !133
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !133
  %i.ff = sub i16 0, %i.eu
  %i.fg = sext i16 %i.fe to i32
  %i.fh = sext i16 %i.ff to i32
  %i.fi = mul nsw i32 %i.fg, %i.fh                ; 2 uses
  %sext.i11.i.i.1 = mul i32 %i.fi, -218038272
  %i.fj = ashr exact i32 %sext.i11.i.i.1, 16
  %.neg.i.i12.i.i.1 = mul nsw i32 %i.fj, -3329
  %i.fk = add nsw i32 %.neg.i.i12.i.i.1, %i.fi
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc nuw i32 %i.fl to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !133
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 64
  br i1 %exitcond.not.i.i.1, label %mlkem_poly_mulcache_compute.exit.1, label %mlk_poly_mulcache_compute_native.exit.i.1, !llvm.loop !2753

mlkem_poly_mulcache_compute.exit.1:               ; preds = %mlk_poly_mulcache_compute_native.exit.i.1, %mlk_poly_mulcache_compute_native.exit.thread.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlk_matvec_mul512(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 6 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75 ; 3 uses
  %i.c = and i32 %i.b, 32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %vector.memcheck, label %mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i

mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i: ; preds = %bb.a
  tail call void @mlkem_polyvec_basemul_acc_montgomery_cached_k2_avx2_asm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #46
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  br label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit

vector.memcheck:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 1024
  %4 = getelementptr i8, ptr %3, i64 512
  %5 = getelementptr i8, ptr %2, i64 1024
  %bound0.a = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0.a, %bound1
  %bound019 = icmp ult ptr %0, %4
  %bound120 = icmp ult ptr %3, %i.e
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound022 = icmp ult ptr %0, %5
  %bound123 = icmp ult ptr %2, %i.e
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %conflict.rdx, %found.conflict24
  br i1 %conflict.rdx25, label %.preheader.i.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.g = shl nuw nsw i64 %index, 1                ; 4 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.h
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.k, align 2, !tbaa !133, !alias.scope !2772 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec26 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.l = sext <4 x i16> %strided.vec26 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.i, align 2, !tbaa !133, !alias.scope !2773
  %i.m = sext <4 x i16> %wide.load to <4 x i32>
  %i.n = mul nsw <4 x i32> %i.m, %i.l
  %i.o = sext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.g
  %wide.vec27 = load <8 x i16>, ptr %i.p, align 2, !tbaa !133, !alias.scope !2774 ; 2 uses
  %strided.vec28 = shufflevector <8 x i16> %wide.vec27, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec29 = shufflevector <8 x i16> %wide.vec27, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = sext <4 x i16> %strided.vec28 to <4 x i32> ; 2 uses
  %i.r = mul nsw <4 x i32> %i.q, %i.o
  %i.s = add nsw <4 x i32> %i.r, %i.n
  %i.t = sext <4 x i16> %strided.vec29 to <4 x i32>
  %i.u = mul nsw <4 x i32> %i.t, %i.o
  %i.v = mul nsw <4 x i32> %i.q, %i.l
  %i.w = add <4 x i32> %i.u, %i.v
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.h
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -2
  %wide.vec30 = load <8 x i16>, ptr %i.y, align 2, !tbaa !133, !alias.scope !2772 ; 2 uses
  %strided.vec31 = shufflevector <8 x i16> %wide.vec30, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x i16> %wide.vec30, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.z = sext <4 x i16> %strided.vec32 to <4 x i32> ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %wide.load33 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !133, !alias.scope !2773
  %i.ab = sext <4 x i16> %wide.load33 to <4 x i32>
  %i.ac = mul nsw <4 x i32> %i.ab, %i.z
  %i.ad = add nsw <4 x i32> %i.s, %i.ac
  %i.ae = sext <4 x i16> %strided.vec31 to <4 x i32> ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.g
  %wide.vec34 = load <8 x i16>, ptr %i.af, align 2, !tbaa !133, !alias.scope !2774 ; 2 uses
  %strided.vec35 = shufflevector <8 x i16> %wide.vec34, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec36 = shufflevector <8 x i16> %wide.vec34, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ag = sext <4 x i16> %strided.vec35 to <4 x i32> ; 2 uses
  %i.ah = mul nsw <4 x i32> %i.ag, %i.ae
  %i.ai = add nsw <4 x i32> %i.ad, %i.ah          ; 2 uses
  %i.aj = sext <4 x i16> %strided.vec36 to <4 x i32>
  %i.ak = mul nsw <4 x i32> %i.aj, %i.ae
  %i.al = mul nsw <4 x i32> %i.ag, %i.z
  %i.am = add <4 x i32> %i.w, %i.al
  %i.an = add <4 x i32> %i.am, %i.ak              ; 2 uses
  %i.ao = mul <4 x i32> %i.ai, splat (i32 -218038272)
  %i.ap = ashr exact <4 x i32> %i.ao, splat (i32 16)
  %i.aq = mul nsw <4 x i32> %i.ap, splat (i32 -3329)
  %i.ar = add <4 x i32> %i.aq, %i.ai
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.at = mul <4 x i32> %i.an, splat (i32 -218038272)
  %i.au = ashr exact <4 x i32> %i.at, splat (i32 16)
  %i.av = mul nsw <4 x i32> %i.au, splat (i32 -3329)
  %i.aw = add <4 x i32> %i.av, %i.an
  %i.ax = shufflevector <4 x i32> %i.ar, <4 x i32> %i.aw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ay = lshr <8 x i32> %i.ax, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.ay to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.as, align 2, !tbaa !133, !alias.scope !2775, !noalias !2776
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, 128
  br i1 %i.az, label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit, label %vector.body, !llvm.loop !2763

.preheader.i.i:                                   ; preds = %vector.memcheck, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ba = shl nuw nsw i64 %indvars.iv.i.i, 1      ; 6 uses
  %i.bb = or disjoint i64 %i.ba, 1                ; 4 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i.i ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !133
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = load i16, ptr %invariant.gep.i.i, align 2, !tbaa !133
  %i.bg = sext i16 %i.bf to i32
  %i.bh = mul nsw i32 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ba
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !133
  %i.bk = sext i16 %i.bj to i32                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ba
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !133
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.bk
  %i.bp = add nsw i32 %i.bo, %i.bh
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bb
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !133
  %i.bs = sext i16 %i.br to i32
  %i.bt = mul nsw i32 %i.bs, %i.bk
  %i.bu = mul nsw i32 %i.bn, %i.be
  %i.bv = add i32 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bb
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !133
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 256
  %i.bz = load i16, ptr %gep.1.i.i, align 2, !tbaa !133
  %i.ca = sext i16 %i.bz to i32
  %i.cb = mul nsw i32 %i.ca, %i.by
  %i.cc = add nsw i32 %i.bp, %i.cb
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ba
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !133
  %i.cf = sext i16 %i.ce to i32                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ba
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !133
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = mul nsw i32 %i.ci, %i.cf
  %i.ck = add nsw i32 %i.cc, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bb
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !133
  %i.cn = sext i16 %i.cm to i32
  %i.co = mul nsw i32 %i.cn, %i.cf
  %i.cp = mul nsw i32 %i.ci, %i.by
  %i.cq = add i32 %i.bv, %i.cp
  %i.cr = add i32 %i.cq, %i.co                    ; 2 uses
  %sext.i.i = mul i32 %i.ck, -218038272
  %i.cs = ashr exact i32 %sext.i.i, 16
  %.neg.i38.i.i = mul nsw i32 %i.cs, -3329
  %i.ct = add i32 %.neg.i38.i.i, %i.ck
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ba ; 2 uses
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !133
  %sext39.i.i = mul i32 %i.cr, -218038272
  %i.cx = ashr exact i32 %sext39.i.i, 16
  %.neg.i.i.i = mul nsw i32 %i.cx, -3329
  %i.cy = add i32 %.neg.i.i.i, %i.cr
  %i.cz = lshr i32 %i.cy, 16
  %i.da = trunc nuw i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.da, ptr %i.db, align 2, !tbaa !133
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 128
  br i1 %exitcond.not.i.i, label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit, label %.preheader.i.i, !llvm.loop !2764

mlkem512_polyvec_basemul_acc_montgomery_cached.exit: ; preds = %vector.body, %.preheader.i.i, %mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i
  %i.dc = phi i32 [ %.pre, %mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i ], [ %i.b, %.preheader.i.i ], [ %i.b, %vector.body ]
  %i.dd = getelementptr i8, ptr %0, i64 512       ; 6 uses
  %i.de = getelementptr i8, ptr %1, i64 1024      ; 5 uses
  %i.df = and i32 %i.dc, 32
  %.not.i.i.1 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.1, label %vector.memcheck53, label %mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i.1

mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i.1: ; preds = %mlkem512_polyvec_basemul_acc_montgomery_cached.exit
  tail call void @mlkem_polyvec_basemul_acc_montgomery_cached_k2_avx2_asm(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.de, ptr noundef nonnull %2, ptr noundef nonnull %3) #46
  br label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit.1

vector.memcheck53:                                ; preds = %mlkem512_polyvec_basemul_acc_montgomery_cached.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 3 uses
  %i.dh = getelementptr i8, ptr %0, i64 1024      ; 3 uses
  %i.di = getelementptr i8, ptr %1, i64 2048
  %6 = getelementptr i8, ptr %3, i64 512
  %7 = getelementptr i8, ptr %2, i64 1024
  %bound054.a = icmp ult ptr %i.dd, %i.di
  %bound155 = icmp ult ptr %i.de, %i.dh
  %found.conflict56 = and i1 %bound054.a, %bound155
  %bound057 = icmp ult ptr %i.dd, %6
  %bound158 = icmp ult ptr %3, %i.dh
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %found.conflict56, %found.conflict59
  %bound061 = icmp ult ptr %i.dd, %7
  %bound162 = icmp ult ptr %2, %i.dh
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %.preheader.i.i.1, label %vector.body66

vector.body66:                                    ; preds = %vector.memcheck53, %vector.body66
  %index67 = phi i64 [ %index.next83, %vector.body66 ], [ 0, %vector.memcheck53 ] ; 3 uses
  %i.dj = shl nuw nsw i64 %index67, 1             ; 4 uses
  %i.dk = or disjoint i64 %i.dj, 1                ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index67 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dk
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -2
  %wide.vec68 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !133, !alias.scope !2777 ; 2 uses
  %strided.vec69 = shufflevector <8 x i16> %wide.vec68, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec70 = shufflevector <8 x i16> %wide.vec68, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.do = sext <4 x i16> %strided.vec70 to <4 x i32> ; 2 uses
  %wide.load71 = load <4 x i16>, ptr %i.dl, align 2, !tbaa !133, !alias.scope !2778
  %i.dp = sext <4 x i16> %wide.load71 to <4 x i32>
  %i.dq = mul nsw <4 x i32> %i.dp, %i.do
  %i.dr = sext <4 x i16> %strided.vec69 to <4 x i32> ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.dj
  %wide.vec72 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !133, !alias.scope !2779 ; 2 uses
  %strided.vec73 = shufflevector <8 x i16> %wide.vec72, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec74 = shufflevector <8 x i16> %wide.vec72, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dt = sext <4 x i16> %strided.vec73 to <4 x i32> ; 2 uses
  %i.du = mul nsw <4 x i32> %i.dt, %i.dr
  %i.dv = add nsw <4 x i32> %i.du, %i.dq
  %i.dw = sext <4 x i16> %strided.vec74 to <4 x i32>
  %i.dx = mul nsw <4 x i32> %i.dw, %i.dr
  %i.dy = mul nsw <4 x i32> %i.dt, %i.do
  %i.dz = add <4 x i32> %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.dk
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -2
  %wide.vec75 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !133, !alias.scope !2777 ; 2 uses
  %strided.vec76 = shufflevector <8 x i16> %wide.vec75, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec77 = shufflevector <8 x i16> %wide.vec75, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ec = sext <4 x i16> %strided.vec77 to <4 x i32> ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 256
  %wide.load78 = load <4 x i16>, ptr %i.ed, align 2, !tbaa !133, !alias.scope !2778
  %i.ee = sext <4 x i16> %wide.load78 to <4 x i32>
  %i.ef = mul nsw <4 x i32> %i.ee, %i.ec
  %i.eg = add nsw <4 x i32> %i.dv, %i.ef
  %i.eh = sext <4 x i16> %strided.vec76 to <4 x i32> ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dj
  %wide.vec79 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !133, !alias.scope !2779 ; 2 uses
  %strided.vec80 = shufflevector <8 x i16> %wide.vec79, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec81 = shufflevector <8 x i16> %wide.vec79, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ej = sext <4 x i16> %strided.vec80 to <4 x i32> ; 2 uses
  %i.ek = mul nsw <4 x i32> %i.ej, %i.eh
  %i.el = add nsw <4 x i32> %i.eg, %i.ek          ; 2 uses
  %i.em = sext <4 x i16> %strided.vec81 to <4 x i32>
  %i.en = mul nsw <4 x i32> %i.em, %i.eh
  %i.eo = mul nsw <4 x i32> %i.ej, %i.ec
  %i.ep = add <4 x i32> %i.dz, %i.eo
  %i.eq = add <4 x i32> %i.ep, %i.en              ; 2 uses
  %i.er = mul <4 x i32> %i.el, splat (i32 -218038272)
  %i.es = ashr exact <4 x i32> %i.er, splat (i32 16)
  %i.et = mul nsw <4 x i32> %i.es, splat (i32 -3329)
  %i.eu = add <4 x i32> %i.et, %i.el
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.dj
  %i.ew = mul <4 x i32> %i.eq, splat (i32 -218038272)
  %i.ex = ashr exact <4 x i32> %i.ew, splat (i32 16)
  %i.ey = mul nsw <4 x i32> %i.ex, splat (i32 -3329)
  %i.ez = add <4 x i32> %i.ey, %i.eq
  %i.fa = shufflevector <4 x i32> %i.eu, <4 x i32> %i.ez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fb = lshr <8 x i32> %i.fa, splat (i32 16)
  %interleaved.vec82 = trunc nuw <8 x i32> %i.fb to <8 x i16>
  store <8 x i16> %interleaved.vec82, ptr %i.ev, align 2, !tbaa !133, !alias.scope !2780, !noalias !2781
  %index.next83 = add nuw i64 %index67, 4         ; 2 uses
  %i.fc = icmp eq i64 %index.next83, 128
  br i1 %i.fc, label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit.1, label %vector.body66, !llvm.loop !2770

.preheader.i.i.1:                                 ; preds = %vector.memcheck53, %.preheader.i.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.i.i.1 ], [ 0, %vector.memcheck53 ] ; 3 uses
  %i.fd = shl nuw nsw i64 %indvars.iv.i.i.1, 1    ; 6 uses
  %i.fe = or disjoint i64 %i.fd, 1                ; 4 uses
  %invariant.gep.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i.i.1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !133
  %i.fh = sext i16 %i.fg to i32                   ; 2 uses
  %i.fi = load i16, ptr %invariant.gep.i.i.1, align 2, !tbaa !133
  %i.fj = sext i16 %i.fi to i32
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.fd
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !133
  %i.fn = sext i16 %i.fm to i32                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.fd
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !133
  %i.fq = sext i16 %i.fp to i32                   ; 2 uses
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = add nsw i32 %i.fr, %i.fk
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.fe
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !133
  %i.fv = sext i16 %i.fu to i32
  %i.fw = mul nsw i32 %i.fv, %i.fn
  %i.fx = mul nsw i32 %i.fq, %i.fh
  %i.fy = add i32 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.fe
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !133
  %i.gb = sext i16 %i.ga to i32                   ; 2 uses
  %gep.1.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.1, i64 256
  %i.gc = load i16, ptr %gep.1.i.i.1, align 2, !tbaa !133
  %i.gd = sext i16 %i.gc to i32
  %i.ge = mul nsw i32 %i.gd, %i.gb
  %i.gf = add nsw i32 %i.fs, %i.ge
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.fd
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !133
  %i.gi = sext i16 %i.gh to i32                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fd
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !133
  %i.gl = sext i16 %i.gk to i32                   ; 2 uses
  %i.gm = mul nsw i32 %i.gl, %i.gi
  %i.gn = add nsw i32 %i.gf, %i.gm                ; 2 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fe
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !133
  %i.gq = sext i16 %i.gp to i32
  %i.gr = mul nsw i32 %i.gq, %i.gi
  %i.gs = mul nsw i32 %i.gl, %i.gb
  %i.gt = add i32 %i.fy, %i.gs
  %i.gu = add i32 %i.gt, %i.gr                    ; 2 uses
  %sext.i.i.1 = mul i32 %i.gn, -218038272
  %i.gv = ashr exact i32 %sext.i.i.1, 16
  %.neg.i38.i.i.1 = mul nsw i32 %i.gv, -3329
  %i.gw = add i32 %.neg.i38.i.i.1, %i.gn
  %i.gx = lshr i32 %i.gw, 16
  %i.gy = trunc nuw i32 %i.gx to i16
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.fd ; 2 uses
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !133
  %sext39.i.i.1 = mul i32 %i.gu, -218038272
  %i.ha = ashr exact i32 %sext39.i.i.1, 16
  %.neg.i.i.i.1 = mul nsw i32 %i.ha, -3329
  %i.hb = add i32 %.neg.i.i.i.1, %i.gu
  %i.hc = lshr i32 %i.hb, 16
  %i.hd = trunc nuw i32 %i.hc to i16
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !133
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 128
  br i1 %exitcond.not.i.i.1, label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit.1, label %.preheader.i.i.1, !llvm.loop !2771

mlkem512_polyvec_basemul_acc_montgomery_cached.exit.1: ; preds = %vector.body66, %.preheader.i.i.1, %mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem512_polyvec_reduce(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.b = and i32 %i.a, 32
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %mlk_poly_reduce_native.exit.i, label %mlk_poly_reduce_native.exit.thread.i

mlk_poly_reduce_native.exit.thread.i:             ; preds = %bb.a
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %0) #46
  br label %mlkem_poly_reduce.exit

mlk_poly_reduce_native.exit.i:                    ; preds = %bb.a, %mlk_poly_reduce_native.exit.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %mlk_poly_reduce_native.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !133  ; 2 uses
  %i.e = sext i16 %i.d to i32
  %i.f = mul nsw i32 %i.e, 20159
  %i.g = add nsw i32 %i.f, 33554432
  %i.h = ashr i32 %i.g, 26
  %i.i = trunc nsw i32 %i.h to i16
  %i.j = mul i16 %i.i, -3329
  %i.k = add i16 %i.j, %i.d                       ; 4 uses
  %i.l = add i16 %i.k, 3329
  %i.m = sext i16 %i.k to i32
  %i.n = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.m) #46, !srcloc !460
  %i.o = lshr i32 %i.n, 16
  %i.p = sub nsw i32 0, %i.o
  %i.q = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.p) #46, !srcloc !460
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc nuw i32 %i.r to i16
  %i.t = xor i16 %i.l, %i.k
  %i.u = and i16 %i.t, %i.s
  %i.v = xor i16 %i.u, %i.k
  store i16 %i.v, ptr %i.c, align 2, !tbaa !133
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %mlkem_poly_reduce.exit, label %mlk_poly_reduce_native.exit.i, !llvm.loop !46

mlkem_poly_reduce.exit:                           ; preds = %mlk_poly_reduce_native.exit.i, %mlk_poly_reduce_native.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.y = and i32 %i.x, 32
  %.not.i.i.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.1, label %mlk_poly_reduce_native.exit.i.1, label %mlk_poly_reduce_native.exit.thread.i.1

mlk_poly_reduce_native.exit.thread.i.1:           ; preds = %mlkem_poly_reduce.exit
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %i.w) #46
  br label %mlkem_poly_reduce.exit.1

mlk_poly_reduce_native.exit.i.1:                  ; preds = %mlkem_poly_reduce.exit, %mlk_poly_reduce_native.exit.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %mlk_poly_reduce_native.exit.i.1 ], [ 0, %mlkem_poly_reduce.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.i.i.1 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !133 ; 2 uses
  %i.ab = sext i16 %i.aa to i32
end_hunk_3
begin_hunk_4_@mlkem768_poly_getnoise_eta1_4x:vector.ph
  %i.ao = sub nsw <8 x i32> %i.ak, %i.an
  %i.ap = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aq = lshr <8 x i32> %i.ap, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.ar = and <8 x i32> %i.aq, splat (i32 3)
  %i.as = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.at = lshr <8 x i32> %i.as, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.au = and <8 x i32> %i.at, splat (i32 3)
  %i.av = sub nsw <8 x i32> %i.ar, %i.au
  %i.aw = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ax = lshr <8 x i32> %i.aw, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.ay = and <8 x i32> %i.ax, splat (i32 3)
  %i.az = shufflevector <4 x i32> %i.aa, <4 x i32> %i.ab, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = sub nsw <8 x i32> %i.ay, %i.az
  %i.bb = shufflevector <8 x i32> %i.ah, <8 x i32> %i.ao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = shufflevector <8 x i32> %i.av, <8 x i32> %i.ba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = shufflevector <16 x i32> %i.bb, <16 x i32> %i.bc, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.bd to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.x, align 2, !tbaa !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, 32
  br i1 %i.be, label %vector.body28, label %vector.body, !llvm.loop !2845

vector.body28:                                    ; preds = %vector.body, %vector.body28
  %index29 = phi i64 [ %index.next32, %vector.body28 ], [ 0, %vector.body ] ; 3 uses
  %i.bf = shl nuw nsw i64 %index29, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bf
  %wide.load30 = load <4 x i32>, ptr %i.bg, align 16 ; 2 uses
  %i.bh = and <4 x i32> %wide.load30, splat (i32 1431655765)
  %i.bi = lshr <4 x i32> %wide.load30, splat (i32 1)
  %i.bj = and <4 x i32> %i.bi, splat (i32 1431655765)
  %i.bk = add nuw <4 x i32> %i.bj, %i.bh          ; 10 uses
  %i.bl = shl nuw nsw i64 %index29, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = lshr <4 x i32> %i.bk, splat (i32 4)
  %i.bo = lshr <4 x i32> %i.bk, splat (i32 26)
  %i.bp = and <4 x i32> %i.bo, splat (i32 3)
  %i.bq = lshr <4 x i32> %i.bk, splat (i32 30)
  %i.br = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = and <8 x i32> %i.br, splat (i32 3)
  %i.bt = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bu = lshr <8 x i32> %i.bt, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.bv = and <8 x i32> %i.bu, splat (i32 3)
  %i.bw = sub nsw <8 x i32> %i.bs, %i.bv
  %i.bx = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.by = lshr <8 x i32> %i.bx, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.bz = and <8 x i32> %i.by, splat (i32 3)
  %i.ca = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cb = lshr <8 x i32> %i.ca, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.cc = and <8 x i32> %i.cb, splat (i32 3)
  %i.cd = sub nsw <8 x i32> %i.bz, %i.cc
  %i.ce = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cf = lshr <8 x i32> %i.ce, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.cg = and <8 x i32> %i.cf, splat (i32 3)
  %i.ch = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ci = lshr <8 x i32> %i.ch, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.cj = and <8 x i32> %i.ci, splat (i32 3)
  %i.ck = sub nsw <8 x i32> %i.cg, %i.cj
  %i.cl = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cm = lshr <8 x i32> %i.cl, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.cn = and <8 x i32> %i.cm, splat (i32 3)
  %i.co = shufflevector <4 x i32> %i.bp, <4 x i32> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = sub nsw <8 x i32> %i.cn, %i.co
  %i.cq = shufflevector <8 x i32> %i.bw, <8 x i32> %i.cd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cr = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = shufflevector <16 x i32> %i.cq, <16 x i32> %i.cr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec31 = trunc nsw <32 x i32> %i.cs to <32 x i16>
  store <32 x i16> %interleaved.vec31, ptr %i.bm, align 2, !tbaa !133
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next32, 32
  br i1 %i.ct, label %vector.body35, label %vector.body28, !llvm.loop !2846

vector.body35:                                    ; preds = %vector.body28, %vector.body35
  %index36 = phi i64 [ %index.next39, %vector.body35 ], [ 0, %vector.body28 ] ; 3 uses
  %i.cu = shl nuw nsw i64 %index36, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cu
  %wide.load37 = load <4 x i32>, ptr %i.cv, align 16 ; 2 uses
  %i.cw = and <4 x i32> %wide.load37, splat (i32 1431655765)
  %i.cx = lshr <4 x i32> %wide.load37, splat (i32 1)
  %i.cy = and <4 x i32> %i.cx, splat (i32 1431655765)
  %i.cz = add nuw <4 x i32> %i.cy, %i.cw          ; 10 uses
  %i.da = shl nuw nsw i64 %index36, 4
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da
  %i.dc = lshr <4 x i32> %i.cz, splat (i32 4)
  %i.dd = lshr <4 x i32> %i.cz, splat (i32 26)
  %i.de = and <4 x i32> %i.dd, splat (i32 3)
  %i.df = lshr <4 x i32> %i.cz, splat (i32 30)
  %i.dg = shufflevector <4 x i32> %i.cz, <4 x i32> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = and <8 x i32> %i.dg, splat (i32 3)
  %i.di = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dj = lshr <8 x i32> %i.di, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.dk = and <8 x i32> %i.dj, splat (i32 3)
  %i.dl = sub nsw <8 x i32> %i.dh, %i.dk
  %i.dm = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dn = lshr <8 x i32> %i.dm, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.do = and <8 x i32> %i.dn, splat (i32 3)
  %i.dp = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dq = lshr <8 x i32> %i.dp, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.dr = and <8 x i32> %i.dq, splat (i32 3)
  %i.ds = sub nsw <8 x i32> %i.do, %i.dr
  %i.dt = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.du = lshr <8 x i32> %i.dt, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.dv = and <8 x i32> %i.du, splat (i32 3)
  %i.dw = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dx = lshr <8 x i32> %i.dw, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.dy = and <8 x i32> %i.dx, splat (i32 3)
  %i.dz = sub nsw <8 x i32> %i.dv, %i.dy
  %i.ea = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eb = lshr <8 x i32> %i.ea, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.ec = and <8 x i32> %i.eb, splat (i32 3)
  %i.ed = shufflevector <4 x i32> %i.de, <4 x i32> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = sub nsw <8 x i32> %i.ec, %i.ed
  %i.ef = shufflevector <8 x i32> %i.dl, <8 x i32> %i.ds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = shufflevector <8 x i32> %i.dz, <8 x i32> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eh = shufflevector <16 x i32> %i.ef, <16 x i32> %i.eg, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec38 = trunc nsw <32 x i32> %i.eh to <32 x i16>
  store <32 x i16> %interleaved.vec38, ptr %i.db, align 2, !tbaa !133
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next39, 32
  br i1 %i.ei, label %mlk_poly_cbd_eta1768.exit21, label %vector.body35, !llvm.loop !2847

mlk_poly_cbd_eta1768.exit21:                      ; preds = %vector.body35
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %mlk_poly_cbd_eta1768.exit26, label %vector.body42

vector.body42:                                    ; preds = %mlk_poly_cbd_eta1768.exit21, %vector.body42
  %index43 = phi i64 [ %index.next46, %vector.body42 ], [ 0, %mlk_poly_cbd_eta1768.exit21 ] ; 3 uses
  %i.ej = shl nuw nsw i64 %index43, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ej
  %wide.load44 = load <4 x i32>, ptr %i.ek, align 16 ; 2 uses
  %i.el = and <4 x i32> %wide.load44, splat (i32 1431655765)
  %i.em = lshr <4 x i32> %wide.load44, splat (i32 1)
  %i.en = and <4 x i32> %i.em, splat (i32 1431655765)
  %i.eo = add nuw <4 x i32> %i.en, %i.el          ; 10 uses
  %i.ep = shl nuw nsw i64 %index43, 4
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ep
  %i.er = lshr <4 x i32> %i.eo, splat (i32 4)
  %i.es = lshr <4 x i32> %i.eo, splat (i32 26)
  %i.et = and <4 x i32> %i.es, splat (i32 3)
  %i.eu = lshr <4 x i32> %i.eo, splat (i32 30)
  %i.ev = shufflevector <4 x i32> %i.eo, <4 x i32> %i.er, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ew = and <8 x i32> %i.ev, splat (i32 3)
  %i.ex = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ey = lshr <8 x i32> %i.ex, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.ez = and <8 x i32> %i.ey, splat (i32 3)
  %i.fa = sub nsw <8 x i32> %i.ew, %i.ez
  %i.fb = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fc = lshr <8 x i32> %i.fb, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.fd = and <8 x i32> %i.fc, splat (i32 3)
  %i.fe = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ff = lshr <8 x i32> %i.fe, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.fg = and <8 x i32> %i.ff, splat (i32 3)
  %i.fh = sub nsw <8 x i32> %i.fd, %i.fg
  %i.fi = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fj = lshr <8 x i32> %i.fi, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.fk = and <8 x i32> %i.fj, splat (i32 3)
  %i.fl = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fm = lshr <8 x i32> %i.fl, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.fn = and <8 x i32> %i.fm, splat (i32 3)
  %i.fo = sub nsw <8 x i32> %i.fk, %i.fn
  %i.fp = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fq = lshr <8 x i32> %i.fp, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.fr = and <8 x i32> %i.fq, splat (i32 3)
  %i.fs = shufflevector <4 x i32> %i.et, <4 x i32> %i.eu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ft = sub nsw <8 x i32> %i.fr, %i.fs
  %i.fu = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = shufflevector <8 x i32> %i.fo, <8 x i32> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fw = shufflevector <16 x i32> %i.fu, <16 x i32> %i.fv, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec45 = trunc nsw <32 x i32> %i.fw to <32 x i16>
  store <32 x i16> %interleaved.vec45, ptr %i.eq, align 2, !tbaa !133
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.fx = icmp eq i64 %index.next46, 32
  br i1 %i.fx, label %mlk_poly_cbd_eta1768.exit26, label %vector.body42, !llvm.loop !2848

mlk_poly_cbd_eta1768.exit26:                      ; preds = %vector.body42, %mlk_poly_cbd_eta1768.exit21
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 512) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.f, i64 noundef 256) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem768_polyvec_basemul_acc_montgomery_cached(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.b = and i32 %i.a, 32
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %vector.memcheck, label %mlk_polyvec_basemul_acc_montgomery_cached_k3_native.exit

mlk_polyvec_basemul_acc_montgomery_cached_k3_native.exit: ; preds = %bb.a
  tail call void @mlkem_polyvec_basemul_acc_montgomery_cached_k3_avx2_asm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #46
  br label %mlk_polyvec_basemul_acc_montgomery_cached_c768.exit

vector.memcheck:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1024 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 1536
  %4 = getelementptr i8, ptr %3, i64 768
  %5 = getelementptr i8, ptr %2, i64 1536
  %bound0.a = icmp ult ptr %0, %i.h
  %bound1 = icmp ult ptr %1, %i.g
  %found.conflict = and i1 %bound0.a, %bound1
  %bound020 = icmp ult ptr %0, %4
  %bound121 = icmp ult ptr %3, %i.g
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %bound023 = icmp ult ptr %0, %5
  %bound124 = icmp ult ptr %2, %i.g
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  br i1 %conflict.rdx26, label %.preheader.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.i = shl nuw nsw i64 %index, 1                ; 5 uses
  %i.j = or disjoint i64 %i.i, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.j
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.m, align 2, !tbaa !133, !alias.scope !2856 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec27 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.n = sext <4 x i16> %strided.vec27 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.k, align 2, !tbaa !133, !alias.scope !2857
  %i.o = sext <4 x i16> %wide.load to <4 x i32>
  %i.p = mul nsw <4 x i32> %i.o, %i.n
  %i.q = sext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.i
  %wide.vec28 = load <8 x i16>, ptr %i.r, align 2, !tbaa !133, !alias.scope !2858 ; 2 uses
  %strided.vec29 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec30 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.s = sext <4 x i16> %strided.vec29 to <4 x i32> ; 2 uses
  %i.t = mul nsw <4 x i32> %i.s, %i.q
  %i.u = add nsw <4 x i32> %i.t, %i.p
  %i.v = sext <4 x i16> %strided.vec30 to <4 x i32>
  %i.w = mul nsw <4 x i32> %i.v, %i.q
  %i.x = mul nsw <4 x i32> %i.s, %i.n
  %i.y = add <4 x i32> %i.w, %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.j
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -2
  %wide.vec31 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !133, !alias.scope !2856 ; 2 uses
  %strided.vec32 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec33 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ab = sext <4 x i16> %strided.vec33 to <4 x i32> ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %wide.load34 = load <4 x i16>, ptr %i.ac, align 2, !tbaa !133, !alias.scope !2857
  %i.ad = sext <4 x i16> %wide.load34 to <4 x i32>
  %i.ae = mul nsw <4 x i32> %i.ad, %i.ab
  %i.af = add nsw <4 x i32> %i.u, %i.ae
  %i.ag = sext <4 x i16> %strided.vec32 to <4 x i32> ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.i
  %wide.vec35 = load <8 x i16>, ptr %i.ah, align 2, !tbaa !133, !alias.scope !2858 ; 2 uses
  %strided.vec36 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ai = sext <4 x i16> %strided.vec36 to <4 x i32> ; 2 uses
  %i.aj = mul nsw <4 x i32> %i.ai, %i.ag
  %i.ak = add nsw <4 x i32> %i.af, %i.aj
  %i.al = sext <4 x i16> %strided.vec37 to <4 x i32>
  %i.am = mul nsw <4 x i32> %i.al, %i.ag
  %i.an = mul nsw <4 x i32> %i.ai, %i.ab
  %i.ao = add <4 x i32> %i.y, %i.an
  %i.ap = add <4 x i32> %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.j
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -2
  %wide.vec38 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !133, !alias.scope !2856 ; 2 uses
  %strided.vec39 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.as = sext <4 x i16> %strided.vec40 to <4 x i32> ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  %wide.load41 = load <4 x i16>, ptr %i.at, align 2, !tbaa !133, !alias.scope !2857
  %i.au = sext <4 x i16> %wide.load41 to <4 x i32>
  %i.av = mul nsw <4 x i32> %i.au, %i.as
  %i.aw = add nsw <4 x i32> %i.ak, %i.av
  %i.ax = sext <4 x i16> %strided.vec39 to <4 x i32> ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.i
  %wide.vec42 = load <8 x i16>, ptr %i.ay, align 2, !tbaa !133, !alias.scope !2858 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.az = sext <4 x i16> %strided.vec43 to <4 x i32> ; 2 uses
  %i.ba = mul nsw <4 x i32> %i.az, %i.ax
  %i.bb = add nsw <4 x i32> %i.aw, %i.ba          ; 2 uses
  %i.bc = sext <4 x i16> %strided.vec44 to <4 x i32>
  %i.bd = mul nsw <4 x i32> %i.bc, %i.ax
  %i.be = mul nsw <4 x i32> %i.az, %i.as
  %i.bf = add <4 x i32> %i.ap, %i.be
  %i.bg = add <4 x i32> %i.bf, %i.bd              ; 2 uses
  %i.bh = mul <4 x i32> %i.bb, splat (i32 -218038272)
  %i.bi = ashr exact <4 x i32> %i.bh, splat (i32 16)
  %i.bj = mul nsw <4 x i32> %i.bi, splat (i32 -3329)
  %i.bk = add <4 x i32> %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i
  %i.bm = mul <4 x i32> %i.bg, splat (i32 -218038272)
  %i.bn = ashr exact <4 x i32> %i.bm, splat (i32 16)
  %i.bo = mul nsw <4 x i32> %i.bn, splat (i32 -3329)
  %i.bp = add <4 x i32> %i.bo, %i.bg
  %i.bq = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.br = lshr <8 x i32> %i.bq, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.br to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.bl, align 2, !tbaa !133, !alias.scope !2859, !noalias !2860
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, 128
  br i1 %i.bs, label %mlk_polyvec_basemul_acc_montgomery_cached_c768.exit, label %vector.body, !llvm.loop !2854

.preheader.i:                                     ; preds = %vector.memcheck, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bt = shl nuw nsw i64 %indvars.iv.i, 1        ; 8 uses
  %i.bu = or disjoint i64 %i.bt, 1                ; 6 uses
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !133
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %i.by = load i16, ptr %invariant.gep.i, align 2, !tbaa !133
  %i.bz = sext i16 %i.by to i32
  %i.ca = mul nsw i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bt
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !133
  %i.cd = sext i16 %i.cc to i32                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bt
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !133
  %i.cg = sext i16 %i.cf to i32                   ; 2 uses
  %i.ch = mul nsw i32 %i.cg, %i.cd
  %i.ci = add nsw i32 %i.ch, %i.ca
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bu
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !133
  %i.cl = sext i16 %i.ck to i32
  %i.cm = mul nsw i32 %i.cl, %i.cd
  %i.cn = mul nsw i32 %i.cg, %i.bx
  %i.co = add i32 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bu
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !133
  %i.cr = sext i16 %i.cq to i32                   ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256
  %i.cs = load i16, ptr %gep.1.i, align 2, !tbaa !133
  %i.ct = sext i16 %i.cs to i32
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = add nsw i32 %i.ci, %i.cu
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bt
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !133
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bt
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !133
  %i.db = sext i16 %i.da to i32                   ; 2 uses
  %i.dc = mul nsw i32 %i.db, %i.cy
  %i.dd = add nsw i32 %i.cv, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bu
  %i.df = load i16, ptr %i.de, align 2, !tbaa !133
  %i.dg = sext i16 %i.df to i32
  %i.dh = mul nsw i32 %i.dg, %i.cy
  %i.di = mul nsw i32 %i.db, %i.cr
  %i.dj = add i32 %i.co, %i.di
  %i.dk = add i32 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bu
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !133
  %i.dn = sext i16 %i.dm to i32                   ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 512
  %i.do = load i16, ptr %gep.2.i, align 2, !tbaa !133
  %i.dp = sext i16 %i.do to i32
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = add nsw i32 %i.dd, %i.dq
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bt
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !133
  %i.du = sext i16 %i.dt to i32                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bt
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !133
  %i.dx = sext i16 %i.dw to i32                   ; 2 uses
  %i.dy = mul nsw i32 %i.dx, %i.du
  %i.dz = add nsw i32 %i.dr, %i.dy                ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bu
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !133
  %i.ec = sext i16 %i.eb to i32
  %i.ed = mul nsw i32 %i.ec, %i.du
  %i.ee = mul nsw i32 %i.dx, %i.dn
  %i.ef = add i32 %i.dk, %i.ee
  %i.eg = add i32 %i.ef, %i.ed                    ; 2 uses
  %sext.i = mul i32 %i.dz, -218038272
  %i.eh = ashr exact i32 %sext.i, 16
  %.neg.i38.i = mul nsw i32 %i.eh, -3329
  %i.ei = add i32 %.neg.i38.i, %i.dz
  %i.ej = lshr i32 %i.ei, 16
  %i.ek = trunc nuw i32 %i.ej to i16
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bt ; 2 uses
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !133
  %sext39.i = mul i32 %i.eg, -218038272
  %i.em = ashr exact i32 %sext39.i, 16
  %.neg.i.i = mul nsw i32 %i.em, -3329
  %i.en = add i32 %.neg.i.i, %i.eg
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !133
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %mlk_polyvec_basemul_acc_montgomery_cached_c768.exit, label %.preheader.i, !llvm.loop !2855

mlk_polyvec_basemul_acc_montgomery_cached_c768.exit: ; preds = %vector.body, %.preheader.i, %mlk_polyvec_basemul_acc_montgomery_cached_k3_native.exit
  ret void
}

declare void @mlkem_polyvec_basemul_acc_montgomery_cached_k3_avx2_asm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem768_polyvec_tobytes(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.b = and i32 %i.a, 32
  %.not.i.i = icmp eq i32 %i.b, 0
end_hunk_4
begin_hunk_5_@mlkem1024_poly_getnoise_eta1_4x:vector.ph
  %i.am = lshr <8 x i32> %i.al, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.an = and <8 x i32> %i.am, splat (i32 3)
  %i.ao = sub nsw <8 x i32> %i.ak, %i.an
  %i.ap = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aq = lshr <8 x i32> %i.ap, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.ar = and <8 x i32> %i.aq, splat (i32 3)
  %i.as = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.at = lshr <8 x i32> %i.as, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.au = and <8 x i32> %i.at, splat (i32 3)
  %i.av = sub nsw <8 x i32> %i.ar, %i.au
  %i.aw = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ax = lshr <8 x i32> %i.aw, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.ay = and <8 x i32> %i.ax, splat (i32 3)
  %i.az = shufflevector <4 x i32> %i.aa, <4 x i32> %i.ab, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = sub nsw <8 x i32> %i.ay, %i.az
  %i.bb = shufflevector <8 x i32> %i.ah, <8 x i32> %i.ao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = shufflevector <8 x i32> %i.av, <8 x i32> %i.ba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = shufflevector <16 x i32> %i.bb, <16 x i32> %i.bc, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.bd to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.x, align 2, !tbaa !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, 32
  br i1 %i.be, label %vector.body28, label %vector.body, !llvm.loop !2910

vector.body28:                                    ; preds = %vector.body, %vector.body28
  %index29 = phi i64 [ %index.next32, %vector.body28 ], [ 0, %vector.body ] ; 3 uses
  %i.bf = shl nuw nsw i64 %index29, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bf
  %wide.load30 = load <4 x i32>, ptr %i.bg, align 16 ; 2 uses
  %i.bh = and <4 x i32> %wide.load30, splat (i32 1431655765)
  %i.bi = lshr <4 x i32> %wide.load30, splat (i32 1)
  %i.bj = and <4 x i32> %i.bi, splat (i32 1431655765)
  %i.bk = add nuw <4 x i32> %i.bj, %i.bh          ; 10 uses
  %i.bl = shl nuw nsw i64 %index29, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = lshr <4 x i32> %i.bk, splat (i32 4)
  %i.bo = lshr <4 x i32> %i.bk, splat (i32 26)
  %i.bp = and <4 x i32> %i.bo, splat (i32 3)
  %i.bq = lshr <4 x i32> %i.bk, splat (i32 30)
  %i.br = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = and <8 x i32> %i.br, splat (i32 3)
  %i.bt = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bu = lshr <8 x i32> %i.bt, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.bv = and <8 x i32> %i.bu, splat (i32 3)
  %i.bw = sub nsw <8 x i32> %i.bs, %i.bv
  %i.bx = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.by = lshr <8 x i32> %i.bx, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.bz = and <8 x i32> %i.by, splat (i32 3)
  %i.ca = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cb = lshr <8 x i32> %i.ca, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.cc = and <8 x i32> %i.cb, splat (i32 3)
  %i.cd = sub nsw <8 x i32> %i.bz, %i.cc
  %i.ce = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cf = lshr <8 x i32> %i.ce, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.cg = and <8 x i32> %i.cf, splat (i32 3)
  %i.ch = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ci = lshr <8 x i32> %i.ch, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.cj = and <8 x i32> %i.ci, splat (i32 3)
  %i.ck = sub nsw <8 x i32> %i.cg, %i.cj
  %i.cl = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cm = lshr <8 x i32> %i.cl, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.cn = and <8 x i32> %i.cm, splat (i32 3)
  %i.co = shufflevector <4 x i32> %i.bp, <4 x i32> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = sub nsw <8 x i32> %i.cn, %i.co
  %i.cq = shufflevector <8 x i32> %i.bw, <8 x i32> %i.cd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cr = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = shufflevector <16 x i32> %i.cq, <16 x i32> %i.cr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec31 = trunc nsw <32 x i32> %i.cs to <32 x i16>
  store <32 x i16> %interleaved.vec31, ptr %i.bm, align 2, !tbaa !133
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next32, 32
  br i1 %i.ct, label %vector.body35, label %vector.body28, !llvm.loop !2911

vector.body35:                                    ; preds = %vector.body28, %vector.body35
  %index36 = phi i64 [ %index.next39, %vector.body35 ], [ 0, %vector.body28 ] ; 3 uses
  %i.cu = shl nuw nsw i64 %index36, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cu
  %wide.load37 = load <4 x i32>, ptr %i.cv, align 16 ; 2 uses
  %i.cw = and <4 x i32> %wide.load37, splat (i32 1431655765)
  %i.cx = lshr <4 x i32> %wide.load37, splat (i32 1)
  %i.cy = and <4 x i32> %i.cx, splat (i32 1431655765)
  %i.cz = add nuw <4 x i32> %i.cy, %i.cw          ; 10 uses
  %i.da = shl nuw nsw i64 %index36, 4
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da
  %i.dc = lshr <4 x i32> %i.cz, splat (i32 4)
  %i.dd = lshr <4 x i32> %i.cz, splat (i32 26)
  %i.de = and <4 x i32> %i.dd, splat (i32 3)
  %i.df = lshr <4 x i32> %i.cz, splat (i32 30)
  %i.dg = shufflevector <4 x i32> %i.cz, <4 x i32> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = and <8 x i32> %i.dg, splat (i32 3)
  %i.di = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dj = lshr <8 x i32> %i.di, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.dk = and <8 x i32> %i.dj, splat (i32 3)
  %i.dl = sub nsw <8 x i32> %i.dh, %i.dk
  %i.dm = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dn = lshr <8 x i32> %i.dm, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.do = and <8 x i32> %i.dn, splat (i32 3)
  %i.dp = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dq = lshr <8 x i32> %i.dp, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.dr = and <8 x i32> %i.dq, splat (i32 3)
  %i.ds = sub nsw <8 x i32> %i.do, %i.dr
  %i.dt = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.du = lshr <8 x i32> %i.dt, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.dv = and <8 x i32> %i.du, splat (i32 3)
  %i.dw = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dx = lshr <8 x i32> %i.dw, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.dy = and <8 x i32> %i.dx, splat (i32 3)
  %i.dz = sub nsw <8 x i32> %i.dv, %i.dy
  %i.ea = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eb = lshr <8 x i32> %i.ea, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.ec = and <8 x i32> %i.eb, splat (i32 3)
  %i.ed = shufflevector <4 x i32> %i.de, <4 x i32> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = sub nsw <8 x i32> %i.ec, %i.ed
  %i.ef = shufflevector <8 x i32> %i.dl, <8 x i32> %i.ds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = shufflevector <8 x i32> %i.dz, <8 x i32> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eh = shufflevector <16 x i32> %i.ef, <16 x i32> %i.eg, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec38 = trunc nsw <32 x i32> %i.eh to <32 x i16>
  store <32 x i16> %interleaved.vec38, ptr %i.db, align 2, !tbaa !133
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next39, 32
  br i1 %i.ei, label %vector.body42, label %vector.body35, !llvm.loop !2912

vector.body42:                                    ; preds = %vector.body35, %vector.body42
  %index43 = phi i64 [ %index.next46, %vector.body42 ], [ 0, %vector.body35 ] ; 3 uses
  %i.ej = shl nuw nsw i64 %index43, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ej
  %wide.load44 = load <4 x i32>, ptr %i.ek, align 16 ; 2 uses
  %i.el = and <4 x i32> %wide.load44, splat (i32 1431655765)
  %i.em = lshr <4 x i32> %wide.load44, splat (i32 1)
  %i.en = and <4 x i32> %i.em, splat (i32 1431655765)
  %i.eo = add nuw <4 x i32> %i.en, %i.el          ; 10 uses
  %i.ep = shl nuw nsw i64 %index43, 4
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ep
  %i.er = lshr <4 x i32> %i.eo, splat (i32 4)
  %i.es = lshr <4 x i32> %i.eo, splat (i32 26)
  %i.et = and <4 x i32> %i.es, splat (i32 3)
  %i.eu = lshr <4 x i32> %i.eo, splat (i32 30)
  %i.ev = shufflevector <4 x i32> %i.eo, <4 x i32> %i.er, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ew = and <8 x i32> %i.ev, splat (i32 3)
  %i.ex = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ey = lshr <8 x i32> %i.ex, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.ez = and <8 x i32> %i.ey, splat (i32 3)
  %i.fa = sub nsw <8 x i32> %i.ew, %i.ez
  %i.fb = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fc = lshr <8 x i32> %i.fb, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.fd = and <8 x i32> %i.fc, splat (i32 3)
  %i.fe = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ff = lshr <8 x i32> %i.fe, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.fg = and <8 x i32> %i.ff, splat (i32 3)
  %i.fh = sub nsw <8 x i32> %i.fd, %i.fg
  %i.fi = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fj = lshr <8 x i32> %i.fi, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %i.fk = and <8 x i32> %i.fj, splat (i32 3)
  %i.fl = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fm = lshr <8 x i32> %i.fl, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %i.fn = and <8 x i32> %i.fm, splat (i32 3)
  %i.fo = sub nsw <8 x i32> %i.fk, %i.fn
  %i.fp = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fq = lshr <8 x i32> %i.fp, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.fr = and <8 x i32> %i.fq, splat (i32 3)
  %i.fs = shufflevector <4 x i32> %i.et, <4 x i32> %i.eu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ft = sub nsw <8 x i32> %i.fr, %i.fs
  %i.fu = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = shufflevector <8 x i32> %i.fo, <8 x i32> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fw = shufflevector <16 x i32> %i.fu, <16 x i32> %i.fv, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec45 = trunc nsw <32 x i32> %i.fw to <32 x i16>
  store <32 x i16> %interleaved.vec45, ptr %i.eq, align 2, !tbaa !133
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.fx = icmp eq i64 %index.next46, 32
  br i1 %i.fx, label %mlk_poly_cbd_eta11024.exit26, label %vector.body42, !llvm.loop !2913

mlk_poly_cbd_eta11024.exit26:                     ; preds = %vector.body42
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 512) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.f, i64 noundef 256) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem1024_polyvec_basemul_acc_montgomery_cached(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !75
  %i.b = and i32 %i.a, 32
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %vector.memcheck, label %mlk_polyvec_basemul_acc_montgomery_cached_k4_native.exit

mlk_polyvec_basemul_acc_montgomery_cached_k4_native.exit: ; preds = %bb.a
  tail call void @mlkem_polyvec_basemul_acc_montgomery_cached_k4_avx2_asm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #46
  br label %mlk_polyvec_basemul_acc_montgomery_cached_c1024.exit

vector.memcheck:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1024 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1536 ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 2048
  %4 = getelementptr i8, ptr %3, i64 1024
  %5 = getelementptr i8, ptr %2, i64 2048
  %bound0.a = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0.a, %bound1
  %bound020 = icmp ult ptr %0, %4
  %bound121 = icmp ult ptr %3, %i.i
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %bound023 = icmp ult ptr %0, %5
  %bound124 = icmp ult ptr %2, %i.i
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  br i1 %conflict.rdx26, label %.preheader.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.k = shl nuw nsw i64 %index, 1                ; 6 uses
  %i.l = or disjoint i64 %i.k, 1                  ; 4 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.o, align 2, !tbaa !133, !alias.scope !2921 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec27 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.p = sext <4 x i16> %strided.vec27 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.m, align 2, !tbaa !133, !alias.scope !2922
  %i.q = sext <4 x i16> %wide.load to <4 x i32>
  %i.r = mul nsw <4 x i32> %i.q, %i.p
  %i.s = sext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.k
  %wide.vec28 = load <8 x i16>, ptr %i.t, align 2, !tbaa !133, !alias.scope !2923 ; 2 uses
  %strided.vec29 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec30 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.u = sext <4 x i16> %strided.vec29 to <4 x i32> ; 2 uses
  %i.v = mul nsw <4 x i32> %i.u, %i.s
  %i.w = add nsw <4 x i32> %i.v, %i.r
  %i.x = sext <4 x i16> %strided.vec30 to <4 x i32>
  %i.y = mul nsw <4 x i32> %i.x, %i.s
  %i.z = mul nsw <4 x i32> %i.u, %i.p
  %i.aa = add <4 x i32> %i.y, %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.l
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %wide.vec31 = load <8 x i16>, ptr %i.ac, align 2, !tbaa !133, !alias.scope !2921 ; 2 uses
  %strided.vec32 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec33 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ad = sext <4 x i16> %strided.vec33 to <4 x i32> ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %wide.load34 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !133, !alias.scope !2922
  %i.af = sext <4 x i16> %wide.load34 to <4 x i32>
  %i.ag = mul nsw <4 x i32> %i.af, %i.ad
  %i.ah = add nsw <4 x i32> %i.w, %i.ag
  %i.ai = sext <4 x i16> %strided.vec32 to <4 x i32> ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.k
  %wide.vec35 = load <8 x i16>, ptr %i.aj, align 2, !tbaa !133, !alias.scope !2923 ; 2 uses
  %strided.vec36 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ak = sext <4 x i16> %strided.vec36 to <4 x i32> ; 2 uses
  %i.al = mul nsw <4 x i32> %i.ak, %i.ai
  %i.am = add nsw <4 x i32> %i.ah, %i.al
  %i.an = sext <4 x i16> %strided.vec37 to <4 x i32>
  %i.ao = mul nsw <4 x i32> %i.an, %i.ai
  %i.ap = mul nsw <4 x i32> %i.ak, %i.ad
  %i.aq = add <4 x i32> %i.aa, %i.ap
  %i.ar = add <4 x i32> %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.l
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -2
  %wide.vec38 = load <8 x i16>, ptr %i.at, align 2, !tbaa !133, !alias.scope !2921 ; 2 uses
  %strided.vec39 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.au = sext <4 x i16> %strided.vec40 to <4 x i32> ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %wide.load41 = load <4 x i16>, ptr %i.av, align 2, !tbaa !133, !alias.scope !2922
  %i.aw = sext <4 x i16> %wide.load41 to <4 x i32>
  %i.ax = mul nsw <4 x i32> %i.aw, %i.au
  %i.ay = add nsw <4 x i32> %i.am, %i.ax
  %i.az = sext <4 x i16> %strided.vec39 to <4 x i32> ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.k
  %wide.vec42 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !133, !alias.scope !2923 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bb = sext <4 x i16> %strided.vec43 to <4 x i32> ; 2 uses
  %i.bc = mul nsw <4 x i32> %i.bb, %i.az
  %i.bd = add nsw <4 x i32> %i.ay, %i.bc
  %i.be = sext <4 x i16> %strided.vec44 to <4 x i32>
  %i.bf = mul nsw <4 x i32> %i.be, %i.az
  %i.bg = mul nsw <4 x i32> %i.bb, %i.au
  %i.bh = add <4 x i32> %i.ar, %i.bg
  %i.bi = add <4 x i32> %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.l
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -2
  %wide.vec45 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !133, !alias.scope !2921 ; 2 uses
  %strided.vec46 = shufflevector <8 x i16> %wide.vec45, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec47 = shufflevector <8 x i16> %wide.vec45, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bl = sext <4 x i16> %strided.vec47 to <4 x i32> ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 768
  %wide.load48 = load <4 x i16>, ptr %i.bm, align 2, !tbaa !133, !alias.scope !2922
  %i.bn = sext <4 x i16> %wide.load48 to <4 x i32>
  %i.bo = mul nsw <4 x i32> %i.bn, %i.bl
  %i.bp = add nsw <4 x i32> %i.bd, %i.bo
  %i.bq = sext <4 x i16> %strided.vec46 to <4 x i32> ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.k
  %wide.vec49 = load <8 x i16>, ptr %i.br, align 2, !tbaa !133, !alias.scope !2923 ; 2 uses
  %strided.vec50 = shufflevector <8 x i16> %wide.vec49, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec51 = shufflevector <8 x i16> %wide.vec49, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bs = sext <4 x i16> %strided.vec50 to <4 x i32> ; 2 uses
  %i.bt = mul nsw <4 x i32> %i.bs, %i.bq
  %i.bu = add nsw <4 x i32> %i.bp, %i.bt          ; 2 uses
  %i.bv = sext <4 x i16> %strided.vec51 to <4 x i32>
  %i.bw = mul nsw <4 x i32> %i.bv, %i.bq
  %i.bx = mul nsw <4 x i32> %i.bs, %i.bl
  %i.by = add <4 x i32> %i.bi, %i.bx
  %i.bz = add <4 x i32> %i.by, %i.bw              ; 2 uses
  %i.ca = mul <4 x i32> %i.bu, splat (i32 -218038272)
  %i.cb = ashr exact <4 x i32> %i.ca, splat (i32 16)
  %i.cc = mul nsw <4 x i32> %i.cb, splat (i32 -3329)
  %i.cd = add <4 x i32> %i.cc, %i.bu
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.k
  %i.cf = mul <4 x i32> %i.bz, splat (i32 -218038272)
  %i.cg = ashr exact <4 x i32> %i.cf, splat (i32 16)
  %i.ch = mul nsw <4 x i32> %i.cg, splat (i32 -3329)
  %i.ci = add <4 x i32> %i.ch, %i.bz
  %i.cj = shufflevector <4 x i32> %i.cd, <4 x i32> %i.ci, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ck = lshr <8 x i32> %i.cj, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.ck to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.ce, align 2, !tbaa !133, !alias.scope !2924, !noalias !2925
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, 128
  br i1 %i.cl, label %mlk_polyvec_basemul_acc_montgomery_cached_c1024.exit, label %vector.body, !llvm.loop !2919

.preheader.i:                                     ; preds = %vector.memcheck, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cm = shl nuw nsw i64 %indvars.iv.i, 1        ; 10 uses
  %i.cn = or disjoint i64 %i.cm, 1                ; 8 uses
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i ; 4 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !133
  %i.cq = sext i16 %i.cp to i32                   ; 2 uses
  %i.cr = load i16, ptr %invariant.gep.i, align 2, !tbaa !133
  %i.cs = sext i16 %i.cr to i32
  %i.ct = mul nsw i32 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cm
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !133
  %i.cw = sext i16 %i.cv to i32                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cm
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !133
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %i.da = mul nsw i32 %i.cz, %i.cw
  %i.db = add nsw i32 %i.da, %i.ct
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cn
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !133
  %i.de = sext i16 %i.dd to i32
  %i.df = mul nsw i32 %i.de, %i.cw
  %i.dg = mul nsw i32 %i.cz, %i.cq
  %i.dh = add i32 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cn
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !133
  %i.dk = sext i16 %i.dj to i32                   ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256
  %i.dl = load i16, ptr %gep.1.i, align 2, !tbaa !133
  %i.dm = sext i16 %i.dl to i32
  %i.dn = mul nsw i32 %i.dm, %i.dk
  %i.do = add nsw i32 %i.db, %i.dn
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cm
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !133
  %i.dr = sext i16 %i.dq to i32                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.cm
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !133
  %i.du = sext i16 %i.dt to i32                   ; 2 uses
  %i.dv = mul nsw i32 %i.du, %i.dr
  %i.dw = add nsw i32 %i.do, %i.dv
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.cn
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !133
  %i.dz = sext i16 %i.dy to i32
  %i.ea = mul nsw i32 %i.dz, %i.dr
  %i.eb = mul nsw i32 %i.du, %i.dk
  %i.ec = add i32 %i.dh, %i.eb
  %i.ed = add i32 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.cn
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !133
  %i.eg = sext i16 %i.ef to i32                   ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 512
  %i.eh = load i16, ptr %gep.2.i, align 2, !tbaa !133
  %i.ei = sext i16 %i.eh to i32
  %i.ej = mul nsw i32 %i.ei, %i.eg
  %i.ek = add nsw i32 %i.dw, %i.ej
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.cm
  %i.em = load i16, ptr %i.el, align 2, !tbaa !133
  %i.en = sext i16 %i.em to i32                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cm
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !133
  %i.eq = sext i16 %i.ep to i32                   ; 2 uses
  %i.er = mul nsw i32 %i.eq, %i.en
  %i.es = add nsw i32 %i.ek, %i.er
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cn
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !133
  %i.ev = sext i16 %i.eu to i32
  %i.ew = mul nsw i32 %i.ev, %i.en
  %i.ex = mul nsw i32 %i.eq, %i.eg
  %i.ey = add i32 %i.ed, %i.ex
  %i.ez = add i32 %i.ey, %i.ew
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cn
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !133
  %i.fc = sext i16 %i.fb to i32                   ; 2 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 768
  %i.fd = load i16, ptr %gep.3.i, align 2, !tbaa !133
  %i.fe = sext i16 %i.fd to i32
  %i.ff = mul nsw i32 %i.fe, %i.fc
  %i.fg = add nsw i32 %i.es, %i.ff
end_hunk_5
