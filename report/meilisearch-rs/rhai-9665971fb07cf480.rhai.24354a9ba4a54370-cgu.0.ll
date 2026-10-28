Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@_ZN4rhai8packages10blob_basic14blob_functions6splice17hf882de7b79a29b21E:bb.a
  %i.dl = phi i64 [ %.promoted59, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hg, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ]
  %.val.i.i.i.i.i.i.i = phi ptr [ %i.de, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.he, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 7 uses
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
  %i.gl = xor i64 %bc.resume.val134136, -1
  %i.gm = sub i64 %i.gl, %indvar
  %4 = add i64 %.promoted59, %i.fj
  %i.gn = add i64 %4, %i.gm
  %i.go = add i64 %i.gn, -1
  %diff.check137 = icmp ult i64 %i.go, 3
  br i1 %diff.check137, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck135
  %i.gp = and i64 %i.gk, 3                        ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = select i1 %i.gq, i64 4, i64 %i.gp
  %n.vec142 = sub i64 %i.gk, %i.gr                ; 3 uses
  %i.gs = getelementptr i8, ptr %i.fo, i64 %n.vec142
  %i.gt = getelementptr i8, ptr %i.de, i64 %n.vec142
  %i.gu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted59, i64 0
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 3 uses
  %vec.phi145 = phi <2 x i64> [ %i.gu, %vector.ph141 ], [ %i.gx, %vector.body143 ]
  %vec.phi146 = phi <2 x i64> [ zeroinitializer, %vector.ph141 ], [ %i.gy, %vector.body143 ]
  %next.gep147 = getelementptr i8, ptr %i.fo, i64 %index144 ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.de, i64 %index144 ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep148, i64 2
  %wide.load149 = load <2 x i8>, ptr %next.gep148, align 1, !noalias !40801
  %wide.load150 = load <2 x i8>, ptr %i.gv, align 1, !noalias !40801
  %i.gw = getelementptr i8, ptr %next.gep147, i64 2
  store <2 x i8> %wide.load149, ptr %next.gep147, align 1, !noalias !40795
  store <2 x i8> %wide.load150, ptr %i.gw, align 1, !noalias !40795
  %i.gx = add <2 x i64> %vec.phi145, splat (i64 1) ; 2 uses
  %i.gy = add <2 x i64> %vec.phi146, splat (i64 1) ; 2 uses
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.gz, label %middle.block152, label %vector.body143, !llvm.loop !40748

middle.block152:                                  ; preds = %vector.body143
  %bin.rdx153 = add <2 x i64> %i.gy, %i.gx
  %i.ha = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx153)
  br label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %vector.memcheck135, %.lr.ph57, %middle.block152
  %.ph226 = phi i64 [ %.promoted59, %vector.memcheck135 ], [ %.promoted59, %.lr.ph57 ], [ %i.ha, %middle.block152 ]
  %.sroa.0.08.i23.i.i56.ph = phi ptr [ %i.fo, %vector.memcheck135 ], [ %i.fo, %.lr.ph57 ], [ %i.gs, %middle.block152 ]
  %.ph227 = phi ptr [ %i.de, %vector.memcheck135 ], [ %i.de, %.lr.ph57 ], [ %i.gt, %middle.block152 ]
  br label %scalar.ph139

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i": ; preds = %scalar.ph139
  %.not.not.i24.i.i = icmp eq ptr %i.he, %i.aj
  br i1 %.not.not.i24.i.i, label %.loopexit.i.loopexit, label %scalar.ph139, !llvm.loop !40749

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  %i.hb = phi i64 [ %i.hg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph226, %scalar.ph139.preheader ]
  %.sroa.0.08.i23.i.i56 = phi ptr [ %i.hd, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.sroa.0.08.i23.i.i56.ph, %scalar.ph139.preheader ] ; 2 uses
  %i.hc = phi ptr [ %i.he, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph227, %scalar.ph139.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i23.i.i56, i64 1 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 4 uses
  %i.hf = load i8, ptr %i.hc, align 1, !noalias !40801, !noundef !53
  store i8 %i.hf, ptr %.sroa.0.08.i23.i.i56, align 1, !noalias !40795
  %i.hg = add i64 %i.hb, 1                        ; 5 uses
  %i.hh = icmp eq ptr %i.hd, %i.fm
  br i1 %i.hh, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i": ; preds = %bb.w, %bb.v
  %.pre.i = phi i64 [ %i.ho, %bb.v ], [ %i.hy, %bb.w ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40802
  br label %.loopexit.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block174
  %.lcssa116 = phi i64 [ %ind.escape180, %vec.epilog.middle.block ], [ %ind.escape, %middle.block174 ], [ %.lcssa225.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa115 = phi i64 [ %n.vec175, %vec.epilog.middle.block ], [ %n.vec167, %middle.block174 ], [ %.lcssa224.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hi = icmp sgt i64 %.lcssa115, -1
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.do, i64 %.lcssa115
  %i.hk = add i64 %i.dk, %i.b                     ; 2 uses
  %i.hl = load i64, ptr %0, align 8, !range !63, !noalias !40803, !noundef !53
  %i.hm = sub i64 %i.hl, %i.hk
  %.not53.i.i = icmp ult i64 %.lcssa116, %i.hm
  br i1 %.not53.i.i, label %bb.v, label %bb.u, !prof !72

bb.u:                                             ; preds = %.loopexit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.hk, i64 noundef %.lcssa115, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge unwind label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", !noalias !40790

._crit_edge:                                      ; preds = %bb.u
  %.pre71 = load ptr, ptr %i.ad, align 8, !noalias !40803
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %.loopexit
  %i.hn = phi ptr [ %.pre71, %._crit_edge ], [ %i.fi, %.loopexit ] ; 3 uses
  %i.ho = add i64 %.lcssa115, %i.fk               ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.fk
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull align 1 %i.hp, i64 %i.ag, i1 false), !noalias !40803
  %i.hr = load i64, ptr %i.a, align 8, !noalias !40804, !noundef !53 ; 2 uses
  %i.hs = icmp samesign eq i64 %i.hr, %i.ho
  br i1 %i.hs, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.v
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph127
  %.sroa.0.08.i32.i.i126 = phi ptr [ %i.ht, %.lr.ph127 ], [ %i.hv, %bb.w ] ; 2 uses
  %i.hu = phi ptr [ %i.do, %.lr.ph127 ], [ %i.ia, %bb.w ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i32.i.i126, i64 1 ; 2 uses
  %i.hw = load i8, ptr %i.hu, align 1, !noalias !40805, !noundef !53
  store i8 %i.hw, ptr %.sroa.0.08.i32.i.i126, align 1, !noalias !40804
  %i.hx = load i64, ptr %i.a, align 8, !noalias !40804, !noundef !53
  %i.hy = add i64 %i.hx, 1                        ; 2 uses
  store i64 %i.hy, ptr %i.a, align 8, !noalias !40804
  %i.hz = icmp eq ptr %i.hv, %i.hq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  %.not.not.i33.i.i = icmp eq ptr %i.ia, %i.hj
  %or.cond219 = select i1 %i.hz, i1 true, i1 %.not.not.i33.i.i
  br i1 %or.cond219, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %bb.w

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i": ; preds = %bb.u
  %i.ib = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40806
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.sroa.21.3 = phi i64 [ %i.b, %bb.p ], [ %i.fk, %bb.r ], [ %i.m, %bb.t ]
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", %bb.x
  %.sroa.21.1 = phi i64 [ %.sroa.21.3, %bb.x ], [ %i.fk, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ic, %bb.x ], [ %i.ib, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  br i1 %i.ak, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.id = load i64, ptr %i.a, align 8, !noalias !40807, !noundef !53 ; 4 uses
  %i.ie = icmp sgt i64 %i.id, -1
  tail call void @llvm.assume(i1 %i.ie)
  %.not3.i.i.i.i = icmp eq i64 %.sroa.21.1, %i.id
  br i1 %.not3.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.if = add nuw i64 %i.id, %i.ag
  store i64 %i.if, ptr %i.a, align 8, !noalias !40807
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"

bb.ab:                                            ; preds = %bb.z
  %i.ig = load ptr, ptr %i.ad, align 8, !noalias !40807, !nonnull !53, !noundef !53 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.21.1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.id
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull align 1 %i.ih, i64 %i.ag, i1 false), !noalias !40807
  br label %bb.aa

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit": ; preds = %bb.y, %bb.aa
  %i.ij = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.ij, label %.body, label %bb.ae

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  store i64 %i.dg, ptr %i.a, align 8, !noalias !40786
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  store i64 %i.hg, ptr %i.a, align 8, !noalias !40795
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.loopexit.i.i, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader", %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %i.ik = phi i64 [ %i.m, %.loopexit.i.i ], [ %i.ho, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.fk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.fk, %.loopexit.i.loopexit ] ; 2 uses
  %i.il = phi i64 [ %i.dg, %.loopexit.i.i ], [ %.pre.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.dl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.promoted, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.dg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.hg, %.loopexit.i.loopexit ] ; 4 uses
  %i.im = icmp sgt i64 %i.il, -1
  tail call void @llvm.assume(i1 %i.im)
  %.not3.i.i.i.i.i = icmp eq i64 %i.ik, %i.il
  br i1 %.not3.i.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %.loopexit.i
  %i.in = add nuw i64 %i.il, %i.ag
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i"

bb.ad:                                            ; preds = %.loopexit.i
  %i.io = load ptr, ptr %i.ad, align 8, !noalias !40808, !nonnull !53, !noundef !53 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.il
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.ip, i64 %i.ag, i1 false), !noalias !40808
  br label %bb.ac

bb.ae:                                            ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40809
  br label %.body

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block200, %vec.epilog.middle.block214, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", %bb.ac
  %storemerge = phi i64 [ %i.in, %bb.ac ], [ %.promoted, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ], [ %i.bu, %vec.epilog.middle.block214 ], [ %i.bn, %middle.block200 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i ]
  store i64 %storemerge, ptr %i.a, align 8, !noalias !40791
  %i.ir = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.ir, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit", label %bb.af

bb.af:                                            ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !40810
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

.body:                                            ; preds = %bb.i, %bb.h, %bb.k, %bb.j, %bb.ae, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit" ], [ %i.u, %bb.j ], [ %i.o, %bb.h ], [ %eh.lpad-body.i, %bb.ae ], [ %i.o, %bb.i ], [ %i.u, %bb.k ]
  resume { ptr, i32 } %.pn
}

end_hunk_0
