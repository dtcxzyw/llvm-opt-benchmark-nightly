Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@_ZN4rhai8packages10blob_basic14blob_functions6splice17hf882de7b79a29b21E:bb.a
  %min.iters.check = icmp ult i64 %i.ap, 9
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aq = add i64 %.promoted, %i.af
  %i.ar = sub i64 %.sroa.532.0.copyload130, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -4
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.as = and i64 %i.ap, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec = sub i64 %i.ap, %i.au                   ; 3 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.aw = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi131 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %next.gep132 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep132, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep132, align 1, !noalias !40785
  %wide.load133 = load <2 x i8>, ptr %i.ay, align 1, !noalias !40785
  %i.az = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %wide.load, ptr %next.gep, align 1, !noalias !40786
  store <2 x i8> %wide.load133, ptr %i.az, align 1, !noalias !40786
  %i.ba = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bb = add <2 x i64> %vec.phi131, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !40666

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph

scalar.ph:                                        ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %bc.merge.rdx = phi i64 [ %i.bd, %middle.block ], [ %.promoted, %.lr.ph.preheader ], [ %.promoted, %vector.memcheck ]
  %bc.resume.val = phi ptr [ %i.av, %middle.block ], [ %i.al, %.lr.ph.preheader ], [ %i.al, %vector.memcheck ] ; 2 uses
  %bc.resume.val134 = phi ptr [ %i.aw, %middle.block ], [ %.sroa.532.0.copyload, %.lr.ph.preheader ], [ %.sroa.532.0.copyload, %vector.memcheck ] ; 2 uses
  %bc.resume.val138 = ptrtoaddr ptr %bc.resume.val to i64
  %bc.resume.val134136 = ptrtoaddr ptr %bc.resume.val134 to i64 ; 4 uses
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40788)
  %i.be = load i64, ptr %0, align 8, !range !63, !alias.scope !40789, !noalias !40790, !noundef !53
  %i.bf = sub nsw i64 %i.be, %.promoted
  %i.bg = icmp ugt i64 %.sroa.7.0.copyload.fr, %i.bf
  br i1 %i.bg, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", !prof !64

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.promoted, i64 noundef %.sroa.7.0.copyload.fr, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" unwind label %bb.x, !noalias !40791

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread": ; preds = %bb.p
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !40792, !noalias !40790
  %.pre75 = load ptr, ptr %i.ad, align 8, !alias.scope !40792, !noalias !40790
  br label %iter.check202

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i": ; preds = %bb.o
  %.not7.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %iter.check202

iter.check202:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i"
  %i.bh = phi i64 [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %.promoted, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 7 uses
  %i.bi = phi ptr [ %.pre75, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 8 uses
  %min.iters.check187 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 8
  br i1 %min.iters.check187, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck188

vector.memcheck188:                               ; preds = %iter.check202
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = add i64 %i.bh, %i.bj
  %i.bl = sub i64 %.sroa.532.0.copyload130, %i.bk
  %diff.check189 = icmp ugt i64 %i.bl, -32
  br i1 %diff.check189, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check190

vector.main.loop.iter.check190:                   ; preds = %vector.memcheck188
  %min.iters.check191 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 32
  br i1 %min.iters.check191, label %vec.epilog.ph206, label %vector.ph192

vector.ph192:                                     ; preds = %vector.main.loop.iter.check190
  %i.bm = and i64 %.sroa.7.0.copyload.fr, 24
  %n.vec193 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775776 ; 5 uses
  %i.bn = add i64 %i.bh, %n.vec193                ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec193
  %i.bp = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %vector.body194

vector.body194:                                   ; preds = %vector.ph192, %vector.body194
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next199, %vector.body194 ] ; 3 uses
  %next.gep196 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index195 ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep196, i64 16
  %wide.load197 = load <16 x i8>, ptr %next.gep196, align 1, !noalias !40793
  %wide.load198 = load <16 x i8>, ptr %i.bq, align 1, !noalias !40793
  %i.br = getelementptr i8, ptr %i.bp, i64 %index195 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load197, ptr %i.br, align 1, !noalias !40794
  store <16 x i8> %wide.load198, ptr %i.bs, align 1, !noalias !40794
  %index.next199 = add nuw i64 %index195, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.bt, label %middle.block200, label %vector.body194, !llvm.loop !40693

middle.block200:                                  ; preds = %vector.body194
  %cmp.n201 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec193
  br i1 %cmp.n201, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %vec.epilog.iter.check203

vec.epilog.iter.check203:                         ; preds = %middle.block200
  %min.epilog.iters.check205 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check205, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph206, !prof !156

vec.epilog.ph206:                                 ; preds = %vector.main.loop.iter.check190, %vec.epilog.iter.check203
  %vec.epilog.resume.val207 = phi i64 [ %n.vec193, %vec.epilog.iter.check203 ], [ 0, %vector.main.loop.iter.check190 ]
  %n.vec208 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775800 ; 4 uses
  %i.bu = add i64 %i.bh, %n.vec208                ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec208
  %i.bw = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph206
  %index210 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph206 ], [ %index.next213, %vec.epilog.vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index210
  %wide.load212 = load <8 x i8>, ptr %next.gep211, align 1, !noalias !40793
  %i.bx = getelementptr i8, ptr %i.bw, i64 %index210
  store <8 x i8> %wide.load212, ptr %i.bx, align 1, !noalias !40794
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.by, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !40694

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec208
  br i1 %cmp.n215, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check202, %vector.memcheck188, %vec.epilog.iter.check203, %vec.epilog.middle.block214
  %.ph = phi i64 [ %i.bh, %iter.check202 ], [ %i.bh, %vector.memcheck188 ], [ %i.bn, %vec.epilog.iter.check203 ], [ %i.bu, %vec.epilog.middle.block214 ] ; 2 uses
  %.ph220 = phi ptr [ %.sroa.532.0.copyload, %iter.check202 ], [ %.sroa.532.0.copyload, %vector.memcheck188 ], [ %i.bo, %vec.epilog.iter.check203 ], [ %i.bv, %vec.epilog.middle.block214 ] ; 3 uses
  %i.bz = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload130 ; 2 uses
  %.ph220243 = ptrtoaddr ptr %.ph220 to i64       ; 2 uses
  %i.ca = sub i64 %i.bz, %.ph220243
  %xtraiter244 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.cb = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cc = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph220, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter246 = phi i64 [ %prol.iter246.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !40793, !noundef !53
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cb
  store i8 %i.cd, ptr %i.cf, align 1, !noalias !40794
  %i.cg = add i64 %i.cb, 1                        ; 3 uses
  %prol.iter246.next = add i64 %prol.iter246, 1   ; 2 uses
  %prol.iter246.cmp.not = icmp eq i64 %prol.iter246.next, %xtraiter244
  br i1 %prol.iter246.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !40695

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr247 = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr248 = phi ptr [ %.ph220, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ch = sub i64 %.ph220243, %i.bz
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cj = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr247, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr248, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !40793, !noundef !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cj
  store i8 %i.cl, ptr %i.cn, align 1, !noalias !40794
  %i.co = load i8, ptr %i.cm, align 1, !noalias !40793, !noundef !53
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cq = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  store i8 %i.co, ptr %i.cr, align 1, !noalias !40794
  %i.cs = load i8, ptr %i.cp, align 1, !noalias !40793, !noundef !53
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.cu = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  store i8 %i.cs, ptr %i.cv, align 1, !noalias !40794
  %i.cw = load i8, ptr %i.ct, align 1, !noalias !40793, !noundef !53
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cz = getelementptr i8, ptr %i.cy, i64 3
  store i8 %i.cw, ptr %i.cz, align 1, !noalias !40794
  %i.da = add i64 %i.cj, 4                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.cx, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.3, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !40696

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i": ; preds = %.lr.ph
  %.not.not.i.i.i = icmp eq ptr %i.de, %i.aj
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not.i.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge.a", label %.lr.ph, !llvm.loop !40697

.lr.ph:                                           ; preds = %scalar.ph, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.db = phi i64 [ %bc.merge.rdx, %scalar.ph ], [ %i.dg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ]
  %.sroa.0.08.i.i.i52 = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.dd, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.dc = phi ptr [ %bc.resume.val134, %scalar.ph ], [ %i.de, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i52, i64 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 9 uses
  %i.df = load i8, ptr %i.dc, align 1, !noalias !40785, !noundef !53
  store i8 %i.df, ptr %.sroa.0.08.i.i.i52, align 1, !noalias !40786
  %i.dg = add i64 %i.db, 1                        ; 6 uses
  %i.dh = icmp eq ptr %i.dd, %i.ah
  br i1 %i.dh, label %.loopexit.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"

.loopexit.i.i:                                    ; preds = %.lr.ph
  store i64 %i.dg, ptr %i.a, align 8, !noalias !40786
  %i.di = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = sub nuw i64 %i.di, %i.dj                ; 5 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.de
  br i1 %.not.i.i, label %.loopexit.i, label %bb.s

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i": ; preds = %scalar.ph139
  store i64 %i.hh, ptr %i.a, align 8, !noalias !40795
  %.pre.i.i11 = ptrtoint ptr %i.hf to i64
  %.pre22.i = sub nuw i64 %i.di, %.pre.i.i11
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i": ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i"
  %.pre-phi.i = phi i64 [ %i.dk, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %.pre22.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 5 uses
  %i.dl = phi i64 [ %.promoted59, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hh, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ]
  %.val.i.i.i.i.i.i.i = phi ptr [ %i.de, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hf, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 7 uses
  %.val.i.i.i.i.i.i.i160 = ptrtoaddr ptr %.val.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.dm = icmp slt i64 %.pre-phi.i, 0
  br i1 %i.dm, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !40796

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %i.dn = icmp eq ptr %i.aj, %.val.i.i.i.i.i.i.i
  br i1 %i.dn, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !40797
  %i.do = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.pre-phi.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !40797 ; 13 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.r, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.dq = ptrtoaddr ptr %i.do to i64
  %i.dr = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload130
  %i.ds = sub i64 %i.dr, %.val.i.i.i.i.i.i.i160   ; 7 uses
  %min.iters.check162 = icmp ult i64 %i.ds, 4
  %i.dt = sub i64 %.val.i.i.i.i.i.i.i160, %i.dq
  %diff.check164 = icmp ugt i64 %i.dt, -32
  %or.cond218 = or i1 %min.iters.check162, %diff.check164
  br i1 %or.cond218, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check165 = icmp ult i64 %i.ds, 32
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.ph166

vector.ph166:                                     ; preds = %vector.main.loop.iter.check
  %i.du = and i64 %i.ds, 28
  %n.vec167 = and i64 %i.ds, -32                  ; 7 uses
  %i.dv = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec167
  br label %vector.body168

vector.body168:                                   ; preds = %vector.ph166, %vector.body168
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next173, %vector.body168 ] ; 3 uses
  %next.gep170 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index169 ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load171 = load <16 x i8>, ptr %next.gep170, align 1, !noalias !40798
  %wide.load172 = load <16 x i8>, ptr %i.dw, align 1, !noalias !40798
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 %index169 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <16 x i8> %wide.load171, ptr %i.dx, align 1, !noalias !40799
  store <16 x i8> %wide.load172, ptr %i.dy, align 1, !noalias !40799
  %index.next173 = add nuw i64 %index169, 32      ; 2 uses
  %i.dz = icmp eq i64 %index.next173, %n.vec167
  br i1 %i.dz, label %middle.block174, label %vector.body168, !llvm.loop !40740

middle.block174:                                  ; preds = %vector.body168
  %ind.escape = add i64 %n.vec167, -1
  %cmp.n = icmp eq i64 %i.ds, %n.vec167
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block174
  %min.epilog.iters.check = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !155

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec167, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec175 = and i64 %i.ds, -4                   ; 6 uses
  %i.ea = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec175
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index176 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 3 uses
  %next.gep177 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index176
  %wide.load178 = load <4 x i8>, ptr %next.gep177, align 1, !noalias !40798
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 %index176
  store <4 x i8> %wide.load178, ptr %i.eb, align 1, !noalias !40799
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next179, %n.vec175
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40741

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape180 = add i64 %n.vec175, -1
  %cmp.n181 = icmp eq i64 %i.ds, %n.vec175
  br i1 %cmp.n181, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph222 = phi i64 [ 0, %iter.check ], [ %n.vec167, %vec.epilog.iter.check ], [ %n.vec175, %vec.epilog.middle.block ] ; 2 uses
  %.ph223 = phi ptr [ %.val.i.i.i.i.i.i.i, %iter.check ], [ %i.dv, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ] ; 3 uses
  %i.ed = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload130 ; 2 uses
  %.ph223241 = ptrtoaddr ptr %.ph223 to i64       ; 2 uses
  %i.ee = sub i64 %i.ed, %.ph223241
  %xtraiter = and i64 %i.ee, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ef = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph222, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.eg = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph223, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !40798, !noundef !53
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ef
  store i8 %i.eh, ptr %i.ej, align 1, !noalias !40799
  %i.ek = add nuw i64 %i.ef, 1                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !40742

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa225.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.lcssa224.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph222, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr242 = phi ptr [ %.ph223, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.el = sub i64 %.ph223241, %i.ed
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc5.i unwind label %bb.x, !noalias !40791

.noexc5.i:                                        ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.en = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eo = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr242, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !40798, !noundef !53
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.en
  store i8 %i.ep, ptr %i.er, align 1, !noalias !40799
  %i.es = load i8, ptr %i.eq, align 1, !noalias !40798, !noundef !53
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.en
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 %i.es, ptr %i.ev, align 1, !noalias !40799
  %i.ew = load i8, ptr %i.et, align 1, !noalias !40798, !noundef !53
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.en
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store i8 %i.ew, ptr %i.ez, align 1, !noalias !40799
  %i.fa = add nuw i64 %i.en, 3                    ; 2 uses
  %i.fb = load i8, ptr %i.ex, align 1, !noalias !40798, !noundef !53
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fa
  store i8 %i.fb, ptr %i.fd, align 1, !noalias !40799
  %i.fe = add nuw i64 %i.en, 4                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.fc, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !40743

bb.s:                                             ; preds = %.loopexit.i.i
  %i.ff = load i64, ptr %0, align 8, !range !63, !noalias !40800, !noundef !53
  %i.fg = sub nsw i64 %i.ff, %i.b
  %i.fh = icmp ugt i64 %i.dk, %i.fg
  br i1 %i.fh, label %bb.t, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", !prof !64

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %i.dk, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" unwind label %bb.x, !noalias !40791

"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge": ; preds = %bb.t
  %.pre = load ptr, ptr %i.ad, align 8, !noalias !40800
  %.pre70 = load i64, ptr %i.a, align 8, !noalias !40795
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i": ; preds = %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge", %bb.s
  %.promoted59 = phi i64 [ %.pre70, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.dg, %bb.s ] ; 8 uses
  %i.fi = phi ptr [ %.pre, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.ae, %bb.s ] ; 5 uses
  %i.fj = ptrtoaddr ptr %i.fi to i64
  %i.fk = add i64 %i.dk, %i.m                     ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.m
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fk ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull align 1 %i.fl, i64 %i.ag, i1 false), !noalias !40800
  %i.fn = icmp samesign eq i64 %.promoted59, %i.fk
  br i1 %i.fn, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i", label %.lr.ph57

.lr.ph57:                                         ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.promoted59 ; 4 uses
  %i.fp = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload130 ; 2 uses
  %i.fq = xor i64 %bc.resume.val134136, -1
  %i.fr = add i64 %i.fp, %i.fq
  %i.fs = freeze i64 %i.fr
  %i.ft = add i64 %.promoted, %i.af
  %i.fu = add i64 %i.ft, %spec.select.i
  %i.fv = xor i64 %bc.resume.val138, -1
  %i.fw = add i64 %i.fu, %i.fv
  %i.fx = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 %i.fw) ; 2 uses
  %i.fy = add i64 %i.fp, -2
  %i.fz = add i64 %i.fx, %bc.resume.val134136
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = freeze i64 %i.ga
  %i.gc = add i64 %.promoted, %.sroa.7.0.copyload.fr
  %i.gd = add i64 %i.gc, %.sroa.532.0.copyload130
  %i.ge = add i64 %i.gd, %spec.select.i
  %i.gf = add i64 %i.ge, -2
  %i.gg = add i64 %.promoted59, %bc.resume.val134136
  %i.gh = add i64 %i.gg, %i.fx
  %i.gi = sub i64 %i.gf, %i.gh
  %i.gj = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.gi)
  %i.gk = add i64 %i.gj, 1                        ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.gk, 17
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph57
  %i.gl = add i64 %.promoted59, %i.fj
  %i.gm = xor i64 %bc.resume.val134136, -1
  %i.gn = sub i64 %i.gm, %indvar
  %i.go = add i64 %i.gl, %i.gn
  %i.gp = add i64 %i.go, -1
  %diff.check137 = icmp ult i64 %i.gp, 3
  br i1 %diff.check137, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck135
  %i.gq = and i64 %i.gk, 3                        ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  %i.gs = select i1 %i.gr, i64 4, i64 %i.gq
  %n.vec142 = sub i64 %i.gk, %i.gs                ; 3 uses
  %i.gt = getelementptr i8, ptr %i.fo, i64 %n.vec142
  %i.gu = getelementptr i8, ptr %i.de, i64 %n.vec142
  %i.gv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted59, i64 0
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 3 uses
  %vec.phi145 = phi <2 x i64> [ %i.gv, %vector.ph141 ], [ %i.gy, %vector.body143 ]
  %vec.phi146 = phi <2 x i64> [ zeroinitializer, %vector.ph141 ], [ %i.gz, %vector.body143 ]
  %next.gep147 = getelementptr i8, ptr %i.fo, i64 %index144 ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.de, i64 %index144 ; 2 uses
  %i.gw = getelementptr i8, ptr %next.gep148, i64 2
  %wide.load149 = load <2 x i8>, ptr %next.gep148, align 1, !noalias !40801
  %wide.load150 = load <2 x i8>, ptr %i.gw, align 1, !noalias !40801
  %i.gx = getelementptr i8, ptr %next.gep147, i64 2
  store <2 x i8> %wide.load149, ptr %next.gep147, align 1, !noalias !40795
  store <2 x i8> %wide.load150, ptr %i.gx, align 1, !noalias !40795
  %i.gy = add <2 x i64> %vec.phi145, splat (i64 1) ; 2 uses
  %i.gz = add <2 x i64> %vec.phi146, splat (i64 1) ; 2 uses
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.ha, label %middle.block152, label %vector.body143, !llvm.loop !40748

middle.block152:                                  ; preds = %vector.body143
  %bin.rdx153 = add <2 x i64> %i.gz, %i.gy
  %i.hb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx153)
  br label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %vector.memcheck135, %.lr.ph57, %middle.block152
  %.ph226 = phi i64 [ %.promoted59, %vector.memcheck135 ], [ %.promoted59, %.lr.ph57 ], [ %i.hb, %middle.block152 ]
  %.sroa.0.08.i23.i.i56.ph = phi ptr [ %i.fo, %vector.memcheck135 ], [ %i.fo, %.lr.ph57 ], [ %i.gt, %middle.block152 ]
  %.ph227 = phi ptr [ %i.de, %vector.memcheck135 ], [ %i.de, %.lr.ph57 ], [ %i.gu, %middle.block152 ]
  br label %scalar.ph139

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i": ; preds = %scalar.ph139
  %.not.not.i24.i.i = icmp eq ptr %i.hf, %i.aj
  br i1 %.not.not.i24.i.i, label %.loopexit.i.loopexit, label %scalar.ph139, !llvm.loop !40749

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  %i.hc = phi i64 [ %i.hh, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph226, %scalar.ph139.preheader ]
  %.sroa.0.08.i23.i.i56 = phi ptr [ %i.he, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.sroa.0.08.i23.i.i56.ph, %scalar.ph139.preheader ] ; 2 uses
  %i.hd = phi ptr [ %i.hf, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph227, %scalar.ph139.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i23.i.i56, i64 1 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 4 uses
  %i.hg = load i8, ptr %i.hd, align 1, !noalias !40801, !noundef !53
  store i8 %i.hg, ptr %.sroa.0.08.i23.i.i56, align 1, !noalias !40795
  %i.hh = add i64 %i.hc, 1                        ; 5 uses
  %i.hi = icmp eq ptr %i.he, %i.fm
  br i1 %i.hi, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i": ; preds = %bb.w, %bb.v
  %.pre.i = phi i64 [ %i.hp, %bb.v ], [ %i.hz, %bb.w ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40802
  br label %.loopexit.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block174
  %.lcssa116 = phi i64 [ %ind.escape180, %vec.epilog.middle.block ], [ %ind.escape, %middle.block174 ], [ %.lcssa225.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa115 = phi i64 [ %n.vec175, %vec.epilog.middle.block ], [ %n.vec167, %middle.block174 ], [ %.lcssa224.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hj = icmp sgt i64 %.lcssa115, -1
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.do, i64 %.lcssa115
  %i.hl = add i64 %i.dk, %i.b                     ; 2 uses
  %i.hm = load i64, ptr %0, align 8, !range !63, !noalias !40803, !noundef !53
  %i.hn = sub i64 %i.hm, %i.hl
  %.not53.i.i = icmp ult i64 %.lcssa116, %i.hn
  br i1 %.not53.i.i, label %bb.v, label %bb.u, !prof !72

bb.u:                                             ; preds = %.loopexit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.hl, i64 noundef %.lcssa115, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge unwind label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", !noalias !40790

._crit_edge:                                      ; preds = %bb.u
  %.pre71 = load ptr, ptr %i.ad, align 8, !noalias !40803
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %.loopexit
  %i.ho = phi ptr [ %.pre71, %._crit_edge ], [ %i.fi, %.loopexit ] ; 3 uses
  %i.hp = add i64 %.lcssa115, %i.fk               ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.fk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr nonnull align 1 %i.hq, i64 %i.ag, i1 false), !noalias !40803
  %i.hs = load i64, ptr %i.a, align 8, !noalias !40804, !noundef !53 ; 2 uses
  %i.ht = icmp samesign eq i64 %i.hs, %i.hp
  br i1 %i.ht, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hs
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph127
  %.sroa.0.08.i32.i.i126 = phi ptr [ %i.hu, %.lr.ph127 ], [ %i.hw, %bb.w ] ; 2 uses
  %i.hv = phi ptr [ %i.do, %.lr.ph127 ], [ %i.ib, %bb.w ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i32.i.i126, i64 1 ; 2 uses
  %i.hx = load i8, ptr %i.hv, align 1, !noalias !40805, !noundef !53
  store i8 %i.hx, ptr %.sroa.0.08.i32.i.i126, align 1, !noalias !40804
  %i.hy = load i64, ptr %i.a, align 8, !noalias !40804, !noundef !53
  %i.hz = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.hz, ptr %i.a, align 8, !noalias !40804
  %i.ia = icmp eq ptr %i.hw, %i.hr
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 1 ; 2 uses
  %.not.not.i33.i.i = icmp eq ptr %i.ib, %i.hk
  %or.cond219 = select i1 %i.ia, i1 true, i1 %.not.not.i33.i.i
  br i1 %or.cond219, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %bb.w

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i": ; preds = %bb.u
  %i.ic = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40806
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.sroa.21.3 = phi i64 [ %i.b, %bb.p ], [ %i.fk, %bb.r ], [ %i.m, %bb.t ]
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", %bb.x
  %.sroa.21.1 = phi i64 [ %.sroa.21.3, %bb.x ], [ %i.fk, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.id, %bb.x ], [ %i.ic, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  br i1 %i.ak, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ie = load i64, ptr %i.a, align 8, !noalias !40807, !noundef !53 ; 4 uses
  %i.if = icmp sgt i64 %i.ie, -1
  tail call void @llvm.assume(i1 %i.if)
  %.not3.i.i.i.i = icmp eq i64 %.sroa.21.1, %i.ie
  br i1 %.not3.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.ig = add nuw i64 %i.ie, %i.ag
  store i64 %i.ig, ptr %i.a, align 8, !noalias !40807
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"

bb.ab:                                            ; preds = %bb.z
  %i.ih = load ptr, ptr %i.ad, align 8, !noalias !40807, !nonnull !53, !noundef !53 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.21.1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ie
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull align 1 %i.ii, i64 %i.ag, i1 false), !noalias !40807
  br label %bb.aa

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit": ; preds = %bb.y, %bb.aa
  %i.ik = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.ik, label %.body, label %bb.ae

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge.a": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  store i64 %i.dg, ptr %i.a, align 8, !noalias !40786
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  store i64 %i.hh, ptr %i.a, align 8, !noalias !40795
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.loopexit.i.i, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader", %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge.a", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %i.il = phi i64 [ %i.m, %.loopexit.i.i ], [ %i.hp, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.fk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge.a" ], [ %i.fk, %.loopexit.i.loopexit ] ; 2 uses
  %i.im = phi i64 [ %i.dg, %.loopexit.i.i ], [ %.pre.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.dl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.promoted, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.dg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge.a" ], [ %i.hh, %.loopexit.i.loopexit ] ; 4 uses
  %i.in = icmp sgt i64 %i.im, -1
  tail call void @llvm.assume(i1 %i.in)
  %.not3.i.i.i.i.i = icmp eq i64 %i.il, %i.im
  br i1 %.not3.i.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %.loopexit.i
  %i.io = add nuw i64 %i.im, %i.ag
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i"

bb.ad:                                            ; preds = %.loopexit.i
  %i.ip = load ptr, ptr %i.ad, align 8, !noalias !40808, !nonnull !53, !noundef !53 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.il
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.im
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ir, ptr nonnull align 1 %i.iq, i64 %i.ag, i1 false), !noalias !40808
  br label %bb.ac

bb.ae:                                            ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40809
  br label %.body

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block200, %vec.epilog.middle.block214, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", %bb.ac
  %storemerge = phi i64 [ %i.io, %bb.ac ], [ %.promoted, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ], [ %i.bu, %vec.epilog.middle.block214 ], [ %i.bn, %middle.block200 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i ]
  store i64 %storemerge, ptr %i.a, align 8, !noalias !40791
  %i.is = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.is, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit", label %bb.af

bb.af:                                            ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40810
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

.body:                                            ; preds = %bb.i, %bb.h, %bb.k, %bb.j, %bb.ae, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit" ], [ %i.u, %bb.j ], [ %i.o, %bb.h ], [ %eh.lpad-body.i, %bb.ae ], [ %i.o, %bb.i ], [ %i.u, %bb.k ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions7extract17hd191706b56ee2c2fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !53 ; 7 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  %i.e = icmp slt i64 %3, 1
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %2, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp samesign ult i64 %2, %i.b
  br i1 %.not.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.g = sub i64 0, %2
  %i.h = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.b, i64 range(i64 1, -9223372036854775807) %i.g)
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.d ], [ %2, %bb.c ] ; 4 uses
  %i.i = sub nsw i64 %i.b, %.sroa.01.0.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.i) ; 6 uses
  %i.j = icmp eq i64 %spec.select.i, 0
  br i1 %i.j, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  %i.k = add nuw i64 %spec.select.i, %.sroa.01.0.i ; 2 uses
  %.not = icmp ugt i64 %i.k, %i.b
  br i1 %.not, label %bb.f, label %bb.g, !prof !81

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread: ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit, %bb.c, %bb.a, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"
  %spec.select.i.sink12 = phi i64 [ %spec.select.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit" ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit ] ; 2 uses
  %.sink = phi ptr [ %i.n, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit ]
  store i64 %spec.select.i.sink12, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i.sink12, ptr %.sroa.6.0..sroa_idx.i, align 8
  ret void

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.01.0.i, i64 noundef %i.k, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1593) #70
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !53, !noundef !53
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !40818
  %i.n = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %spec.select.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !40818 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %spec.select.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70, !noalias !40819
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit": ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.p, i64 %spec.select.i, i1 false), !noalias !40820
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions7reverse17h3772e9a615185d78E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !53 ; 7 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !53, !noundef !53 ; 4 uses
  %i.g = lshr i64 %i.b, 1                         ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40830)
  %.not15.i.i = icmp eq i64 %i.g, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp samesign ult i64 %i.b, 32
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.g, 4611686018427387888      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = xor i64 %index, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %i.i
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !alias.scope !40831
  %i.l = getelementptr i8, ptr %i.k, i64 -15      ; 2 uses
  %wide.load3 = load <16 x i8>, ptr %i.l, align 1, !alias.scope !40832
  %reverse = shufflevector <16 x i8> %wide.load3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.j, align 1, !alias.scope !40831
  %reverse4 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse4, ptr %i.l, align 1, !alias.scope !40832
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !40826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.n = and i64 %i.b, 24
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.g, 4611686018427387900     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.o = xor i64 %index6, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %index6 ; 2 uses
  %i.q = getelementptr i8, ptr %i.h, i64 %i.o
  %wide.load7 = load <4 x i8>, ptr %i.p, align 1, !alias.scope !40831
  %i.r = getelementptr i8, ptr %i.q, i64 -3       ; 2 uses
  %wide.load8 = load <4 x i8>, ptr %i.r, align 1, !alias.scope !40832
  %reverse9 = shufflevector <4 x i8> %wide.load8, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse9, ptr %i.p, align 1, !alias.scope !40831
  %reverse10 = shufflevector <4 x i8> %wide.load7, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse10, ptr %i.r, align 1, !alias.scope !40832
  %index.next11 = add nuw i64 %index6, 4          ; 2 uses
  %i.s = icmp eq i64 %index.next11, %n.vec5
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40827

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.g, %n.vec5
  br i1 %cmp.n12, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6fd01a3c9b8f2077E.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.t = xor i64 %.sroa.0.014.i.i, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.014.i.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.t     ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !alias.scope !40831, !noundef !53
  %i.x = load i8, ptr %i.v, align 1, !alias.scope !40832
  store i8 %i.x, ptr %i.u, align 1, !alias.scope !40831
  store i8 %i.w, ptr %i.v, align 1, !alias.scope !40832
  %i.y = add nuw nsw i64 %.sroa.0.014.i.i, 1      ; 2 uses
end_hunk_0
