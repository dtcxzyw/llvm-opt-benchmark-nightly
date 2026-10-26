Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avxvnni?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn24pack_A_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %i.nc = add i64 %i.nb, 3
  %diff.check = icmp ult i64 %i.nc, 127
  br i1 %diff.check, label %.lr.ph374.i.us.preheader, label %vector.main.loop.iter.check252

vector.main.loop.iter.check252:                   ; preds = %vector.memcheck248
  br i1 %min.iters.check253, label %vec.epilog.ph271, label %vector.ph254

vector.ph254:                                     ; preds = %vector.main.loop.iter.check252
  %i.nd = getelementptr i8, ptr %.lcssa, i64 %n.vec255
  %i.ne = getelementptr i8, ptr %i.mw, i64 %n.vec255 ; 2 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.ph254, %vector.body256
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next264, %vector.body256 ] ; 3 uses
  %next.gep258 = getelementptr i8, ptr %.lcssa, i64 %index257 ; 4 uses
  %next.gep259 = getelementptr i8, ptr %i.mw, i64 %index257 ; 4 uses
  %i.nf = getelementptr i8, ptr %next.gep258, i64 32
  %i.ng = getelementptr i8, ptr %next.gep258, i64 64
  %i.nh = getelementptr i8, ptr %next.gep258, i64 96
  %wide.load260 = load <32 x i8>, ptr %next.gep258, align 1, !tbaa !17
  %wide.load261 = load <32 x i8>, ptr %i.nf, align 1, !tbaa !17
  %wide.load262 = load <32 x i8>, ptr %i.ng, align 1, !tbaa !17
  %wide.load263 = load <32 x i8>, ptr %i.nh, align 1, !tbaa !17
  %i.ni = getelementptr i8, ptr %next.gep259, i64 32
  %i.nj = getelementptr i8, ptr %next.gep259, i64 64
  %i.nk = getelementptr i8, ptr %next.gep259, i64 96
  store <32 x i8> %wide.load260, ptr %next.gep259, align 1, !tbaa !17
  store <32 x i8> %wide.load261, ptr %i.ni, align 1, !tbaa !17
  store <32 x i8> %wide.load262, ptr %i.nj, align 1, !tbaa !17
  store <32 x i8> %wide.load263, ptr %i.nk, align 1, !tbaa !17
  %index.next264 = add nuw i64 %index257, 128     ; 2 uses
  %i.nl = icmp eq i64 %index.next264, %n.vec255
  br i1 %i.nl, label %middle.block265, label %vector.body256, !llvm.loop !51

middle.block265:                                  ; preds = %vector.body256
  br i1 %cmp.n266, label %._crit_edge375.i.us, label %vec.epilog.iter.check268

vec.epilog.iter.check268:                         ; preds = %middle.block265
  br i1 %min.epilog.iters.check270, label %.lr.ph374.i.us.preheader, label %vec.epilog.ph271, !prof !24

vec.epilog.ph271:                                 ; preds = %vector.main.loop.iter.check252, %vec.epilog.iter.check268
  %vec.epilog.resume.val272 = phi i64 [ %n.vec255, %vec.epilog.iter.check268 ], [ 0, %vector.main.loop.iter.check252 ]
  %i.nm = getelementptr i8, ptr %.lcssa, i64 %n.vec273
  %i.nn = getelementptr i8, ptr %i.mw, i64 %n.vec273 ; 2 uses
  br label %vec.epilog.vector.body274

vec.epilog.vector.body274:                        ; preds = %vec.epilog.vector.body274, %vec.epilog.ph271
  %index275 = phi i64 [ %vec.epilog.resume.val272, %vec.epilog.ph271 ], [ %index.next279, %vec.epilog.vector.body274 ] ; 3 uses
  %next.gep276 = getelementptr i8, ptr %.lcssa, i64 %index275
  %next.gep277 = getelementptr i8, ptr %i.mw, i64 %index275
  %wide.load278 = load <8 x i8>, ptr %next.gep276, align 1, !tbaa !17
  store <8 x i8> %wide.load278, ptr %next.gep277, align 1, !tbaa !17
  %index.next279 = add nuw i64 %index275, 8       ; 2 uses
  %i.no = icmp eq i64 %index.next279, %n.vec273
  br i1 %i.no, label %vec.epilog.middle.block280, label %vec.epilog.vector.body274, !llvm.loop !52

vec.epilog.middle.block280:                       ; preds = %vec.epilog.vector.body274
  br i1 %cmp.n281, label %._crit_edge375.i.us, label %.lr.ph374.i.us.preheader

.lr.ph374.i.us.preheader:                         ; preds = %iter.check267, %vector.memcheck248, %vec.epilog.iter.check268, %vec.epilog.middle.block280
  %.1372.i.us.ph = phi i32 [ %i.jb, %iter.check267 ], [ %i.jb, %vector.memcheck248 ], [ %i.jx, %vec.epilog.iter.check268 ], [ %i.jz, %vec.epilog.middle.block280 ] ; 4 uses
  %.1202371.i.us.ph = phi ptr [ %.lcssa, %iter.check267 ], [ %.lcssa, %vector.memcheck248 ], [ %i.nd, %vec.epilog.iter.check268 ], [ %i.nm, %vec.epilog.middle.block280 ] ; 2 uses
  %.18370.i.us.ph = phi ptr [ %i.mw, %iter.check267 ], [ %i.mw, %vector.memcheck248 ], [ %i.ne, %vec.epilog.iter.check268 ], [ %i.nn, %vec.epilog.middle.block280 ] ; 2 uses
  %i.np = sub i32 %5, %.1372.i.us.ph
  %xtraiter416 = and i32 %i.np, 7                 ; 2 uses
  %lcmp.mod417.not = icmp eq i32 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph374.i.us.prol.loopexit, label %.lr.ph374.i.us.prol

.lr.ph374.i.us.prol:                              ; preds = %.lr.ph374.i.us.preheader, %.lr.ph374.i.us.prol
  %.1372.i.us.prol = phi i32 [ %i.nt, %.lr.ph374.i.us.prol ], [ %.1372.i.us.ph, %.lr.ph374.i.us.preheader ]
  %.1202371.i.us.prol = phi ptr [ %i.ns, %.lr.ph374.i.us.prol ], [ %.1202371.i.us.ph, %.lr.ph374.i.us.preheader ] ; 2 uses
  %.18370.i.us.prol = phi ptr [ %i.nr, %.lr.ph374.i.us.prol ], [ %.18370.i.us.ph, %.lr.ph374.i.us.preheader ] ; 2 uses
  %prol.iter418 = phi i32 [ %prol.iter418.next, %.lr.ph374.i.us.prol ], [ 0, %.lr.ph374.i.us.preheader ]
  %i.nq = load i8, ptr %.1202371.i.us.prol, align 1, !tbaa !17
  store i8 %i.nq, ptr %.18370.i.us.prol, align 1, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %.18370.i.us.prol, i64 1 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.1202371.i.us.prol, i64 1 ; 2 uses
  %i.nt = add nuw nsw i32 %.1372.i.us.prol, 1     ; 2 uses
  %prol.iter418.next = add i32 %prol.iter418, 1   ; 2 uses
  %prol.iter418.cmp.not = icmp eq i32 %prol.iter418.next, %xtraiter416
  br i1 %prol.iter418.cmp.not, label %.lr.ph374.i.us.prol.loopexit, label %.lr.ph374.i.us.prol, !llvm.loop !53

.lr.ph374.i.us.prol.loopexit:                     ; preds = %.lr.ph374.i.us.prol, %.lr.ph374.i.us.preheader
  %.lcssa358.unr = phi ptr [ poison, %.lr.ph374.i.us.preheader ], [ %i.nr, %.lr.ph374.i.us.prol ]
  %.1372.i.us.unr = phi i32 [ %.1372.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.nt, %.lr.ph374.i.us.prol ]
  %.1202371.i.us.unr = phi ptr [ %.1202371.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.ns, %.lr.ph374.i.us.prol ]
  %.18370.i.us.unr = phi ptr [ %.18370.i.us.ph, %.lr.ph374.i.us.preheader ], [ %i.nr, %.lr.ph374.i.us.prol ]
  %i.nu = sub i32 %.1372.i.us.ph, %5
  %i.nv = icmp ugt i32 %i.nu, -8
  br i1 %i.nv, label %._crit_edge375.i.us, label %.lr.ph374.i.us

.lr.ph374.i.us:                                   ; preds = %.lr.ph374.i.us.prol.loopexit, %.lr.ph374.i.us
  %.1372.i.us = phi i32 [ %i.ou, %.lr.ph374.i.us ], [ %.1372.i.us.unr, %.lr.ph374.i.us.prol.loopexit ]
  %.1202371.i.us = phi ptr [ %i.ot, %.lr.ph374.i.us ], [ %.1202371.i.us.unr, %.lr.ph374.i.us.prol.loopexit ] ; 9 uses
  %.18370.i.us = phi ptr [ %i.os, %.lr.ph374.i.us ], [ %.18370.i.us.unr, %.lr.ph374.i.us.prol.loopexit ] ; 9 uses
  %i.nw = load i8, ptr %.1202371.i.us, align 1, !tbaa !17
  store i8 %i.nw, ptr %.18370.i.us, align 1, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !17
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !17
  %i.oa = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !17
  store i8 %i.oc, ptr %i.oa, align 1, !tbaa !17
  %i.od = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 3
  %i.oe = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 3
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !17
  store i8 %i.of, ptr %i.od, align 1, !tbaa !17
  %i.og = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 4
  %i.oh = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 4
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !17
  store i8 %i.oi, ptr %i.og, align 1, !tbaa !17
  %i.oj = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 5
  %i.ok = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 5
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !17
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 6
  %i.on = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 6
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !17
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !17
  %i.op = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 7
  %i.oq = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 7
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !17
  store i8 %i.or, ptr %i.op, align 1, !tbaa !17
  %i.os = getelementptr inbounds nuw i8, ptr %.18370.i.us, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1202371.i.us, i64 8
  %i.ou = add nuw nsw i32 %.1372.i.us, 8          ; 2 uses
  %exitcond424.not.i.us.7 = icmp eq i32 %i.ou, %5
  br i1 %exitcond424.not.i.us.7, label %._crit_edge375.i.us, label %.lr.ph374.i.us, !llvm.loop !54

._crit_edge375.i.us:                              ; preds = %.lr.ph374.i.us.prol.loopexit, %.lr.ph374.i.us, %middle.block265, %vec.epilog.middle.block280, %._crit_edge365.i.us
  %.18.lcssa.i.us = phi ptr [ %i.mw, %._crit_edge365.i.us ], [ %i.nn, %vec.epilog.middle.block280 ], [ %i.ne, %middle.block265 ], [ %.lcssa358.unr, %.lr.ph374.i.us.prol.loopexit ], [ %i.os, %.lr.ph374.i.us ]
  %indvars.iv.next426.i.us = add nuw nsw i64 %indvars.iv425.i.us, 1 ; 2 uses
  %exitcond428.not.i.us = icmp eq i64 %indvars.iv.next426.i.us, %wide.trip.count.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond428.not.i.us, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, label %iter.check322, !llvm.loop !55

.lr.ph379.i.split:                                ; preds = %.lr.ph379.i
  %i.ov = icmp sgt i32 %5, 0
  br i1 %i.ov, label %._crit_edge365.i.preheader, label %_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii.exit

._crit_edge365.i.preheader:                       ; preds = %.lr.ph379.i.split
  %exitcond424.not.i = icmp eq i32 %5, 1
  %exitcond424.not.i.1 = icmp eq i32 %5, 2
  br label %._crit_edge365.i

bb.f:                                             ; preds = %._crit_edge352.i, %.lr.ph356.i
  %indvars.iv421.i = phi i64 [ %i.en, %.lr.ph356.i ], [ %indvars.iv.next422.i, %._crit_edge352.i ] ; 2 uses
  %.10355.i = phi ptr [ %.5.lcssa.i, %.lr.ph356.i ], [ %.14.lcssa.i, %._crit_edge352.i ] ; 8 uses
  %i.ow = add i64 %indvars.iv421.i, %i.ep         ; 2 uses
  %i.ox = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.oy = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.oz = sext i32 %i.oy to i64
  %i.pa = load i64, ptr %i.ej, align 8, !tbaa !16
  %i.pb = mul i64 %i.pa, %i.oz                    ; 2 uses
  %i.pc = mul i64 %i.pb, %i.ow                    ; 2 uses
  %i.pd = getelementptr i8, ptr %i.ox, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 %i.ek  ; 6 uses
  %i.pf = add nsw i64 %i.ow, 1
  %i.pg = mul i64 %i.pb, %i.pf                    ; 2 uses
  %i.ph = getelementptr i8, ptr %i.ox, i64 %i.pg
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.ek  ; 6 uses
  br i1 %i.el, label %.lr.ph329.i.preheader, label %._crit_edge330.i

.lr.ph329.i.preheader:                            ; preds = %bb.f
  br i1 %min.iters.check220, label %.lr.ph329.i.preheader361, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph329.i.preheader
  %i.pj = getelementptr i8, ptr %.10355.i, i64 %i.ev
  %scevgep209 = getelementptr i8, ptr %i.pj, i64 8 ; 2 uses
  %i.pk = getelementptr i8, ptr %i.ox, i64 %i.ew
  %i.pl = getelementptr i8, ptr %i.pk, i64 %i.ek
  %scevgep210 = getelementptr i8, ptr %i.pl, i64 4 ; 2 uses
  %scevgep211 = getelementptr i8, ptr %scevgep210, i64 %i.pg
  %scevgep212 = getelementptr i8, ptr %scevgep210, i64 %i.pc
  %bound0213 = icmp ult ptr %.10355.i, %scevgep211
  %bound1214 = icmp ult ptr %i.pi, %scevgep209
  %found.conflict215 = and i1 %bound0213, %bound1214
  %bound0216 = icmp ult ptr %.10355.i, %scevgep212
  %bound1217 = icmp ult ptr %i.pe, %scevgep209
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %found.conflict215, %found.conflict218
  br i1 %conflict.rdx219, label %.lr.ph329.i.preheader361, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck208
  %i.pm = getelementptr i8, ptr %i.pi, i64 %i.fc  ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pe, i64 %i.fc  ; 2 uses
  %i.po = getelementptr i8, ptr %.10355.i, i64 %i.fd ; 3 uses
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next240, %vector.body223 ] ; 3 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph221 ], [ %i.qg, %vector.body223 ]
  %vec.phi225 = phi <8 x i32> [ zeroinitializer, %vector.ph221 ], [ %i.py, %vector.body223 ]
  %i.pp = shl i64 %index224, 2                    ; 2 uses
  %next.gep226 = getelementptr i8, ptr %i.pi, i64 %i.pp
  %next.gep227 = getelementptr i8, ptr %i.pe, i64 %i.pp
  %i.pq = shl i64 %index224, 3
  %next.gep228 = getelementptr i8, ptr %.10355.i, i64 %i.pq
  %wide.vec229 = load <32 x i8>, ptr %next.gep227, align 1, !tbaa !17, !alias.scope !80 ; 5 uses
  %strided.vec230 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec231 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec232 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec233 = shufflevector <32 x i8> %wide.vec229, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec234 = load <32 x i8>, ptr %next.gep226, align 1, !tbaa !17, !alias.scope !81 ; 5 uses
  %strided.vec235 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec236 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec237 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec238 = shufflevector <32 x i8> %wide.vec234, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec239 = shufflevector <32 x i8> %wide.vec229, <32 x i8> %wide.vec234, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 34, i32 35, i32 4, i32 5, i32 6, i32 7, i32 36, i32 37, i32 38, i32 39, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 42, i32 43, i32 12, i32 13, i32 14, i32 15, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 50, i32 51, i32 20, i32 21, i32 22, i32 23, i32 52, i32 53, i32 54, i32 55, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 58, i32 59, i32 28, i32 29, i32 30, i32 31, i32 60, i32 61, i32 62, i32 63>
  store <64 x i8> %interleaved.vec239, ptr %next.gep228, align 1, !tbaa !17, !alias.scope !82, !noalias !83
  %i.pr = sext <8 x i8> %strided.vec230 to <8 x i32>
  %i.ps = add <8 x i32> %vec.phi225, %i.pr
  %i.pt = sext <8 x i8> %strided.vec231 to <8 x i32>
  %i.pu = add <8 x i32> %i.ps, %i.pt
  %i.pv = sext <8 x i8> %strided.vec232 to <8 x i32>
  %i.pw = add <8 x i32> %i.pu, %i.pv
  %i.px = sext <8 x i8> %strided.vec233 to <8 x i32>
  %i.py = add <8 x i32> %i.pw, %i.px              ; 2 uses
  %i.pz = sext <8 x i8> %strided.vec235 to <8 x i32>
  %i.qa = add <8 x i32> %vec.phi, %i.pz
  %i.qb = sext <8 x i8> %strided.vec236 to <8 x i32>
  %i.qc = add <8 x i32> %i.qa, %i.qb
  %i.qd = sext <8 x i8> %strided.vec237 to <8 x i32>
  %i.qe = add <8 x i32> %i.qc, %i.qd
  %i.qf = sext <8 x i8> %strided.vec238 to <8 x i32>
  %i.qg = add <8 x i32> %i.qe, %i.qf              ; 2 uses
  %index.next240 = add nuw i64 %index224, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next240, %n.vec222
  br i1 %i.qh, label %middle.block241, label %vector.body223, !llvm.loop !60

middle.block241:                                  ; preds = %vector.body223
  %i.qi = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.qg) ; 2 uses
  %i.qj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.py) ; 2 uses
  %ind.escape = getelementptr i8, ptr %i.po, i64 -8
  br i1 %cmp.n242, label %.loopexit, label %.lr.ph329.i.preheader361

.lr.ph329.i.preheader361:                         ; preds = %vector.memcheck208, %.lr.ph329.i.preheader, %middle.block241
  %.0203327.i.ph = phi i32 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph329.i.preheader ], [ %i.qi, %middle.block241 ]
  %.0204326.i.ph = phi i32 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph329.i.preheader ], [ %i.qj, %middle.block241 ]
  %.0205325.i.ph = phi i32 [ 0, %vector.memcheck208 ], [ 0, %.lr.ph329.i.preheader ], [ %i.fb, %middle.block241 ]
  %.0207324.i.ph = phi ptr [ %i.pi, %vector.memcheck208 ], [ %i.pi, %.lr.ph329.i.preheader ], [ %i.pm, %middle.block241 ]
  %.0210323.i.ph = phi ptr [ %i.pe, %vector.memcheck208 ], [ %i.pe, %.lr.ph329.i.preheader ], [ %i.pn, %middle.block241 ]
  %.11322.i.ph = phi ptr [ %.10355.i, %vector.memcheck208 ], [ %.10355.i, %.lr.ph329.i.preheader ], [ %i.po, %middle.block241 ]
  br label %.lr.ph329.i

.lr.ph329.i:                                      ; preds = %.lr.ph329.i.preheader361, %.lr.ph329.i
  %.0203327.i = phi i32 [ %i.ru, %.lr.ph329.i ], [ %.0203327.i.ph, %.lr.ph329.i.preheader361 ]
  %.0204326.i = phi i32 [ %i.rm, %.lr.ph329.i ], [ %.0204326.i.ph, %.lr.ph329.i.preheader361 ]
  %.0205325.i = phi i32 [ %i.ry, %.lr.ph329.i ], [ %.0205325.i.ph, %.lr.ph329.i.preheader361 ]
  %.0207324.i = phi ptr [ %i.rx, %.lr.ph329.i ], [ %.0207324.i.ph, %.lr.ph329.i.preheader361 ] ; 5 uses
  %.0210323.i = phi ptr [ %i.rw, %.lr.ph329.i ], [ %.0210323.i.ph, %.lr.ph329.i.preheader361 ] ; 5 uses
  %.11322.i = phi ptr [ %i.rv, %.lr.ph329.i ], [ %.11322.i.ph, %.lr.ph329.i.preheader361 ] ; 10 uses
  %i.qk = load i8, ptr %.0210323.i, align 1, !tbaa !17 ; 2 uses
  store i8 %i.qk, ptr %.11322.i, align 1, !tbaa !17
  %i.ql = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 1
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !17  ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.11322.i, i64 1
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !17
  %i.qo = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 2
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !17  ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.11322.i, i64 2
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !17
  %i.qr = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 3
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !17  ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.11322.i, i64 3
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !17
  %i.qu = load i8, ptr %.0207324.i, align 1, !tbaa !17 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.11322.i, i64 4
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !17
  %i.qw = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 1
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !17  ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.11322.i, i64 5
  store i8 %i.qx, ptr %i.qy, align 1, !tbaa !17
  %i.qz = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 2
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !17  ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.11322.i, i64 6
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 3
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !17  ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.11322.i, i64 7
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !17
  %i.rf = sext i8 %i.qk to i32
  %i.rg = add nsw i32 %.0204326.i, %i.rf
  %i.rh = sext i8 %i.qm to i32
  %i.ri = add nsw i32 %i.rg, %i.rh
  %i.rj = sext i8 %i.qp to i32
  %i.rk = add nsw i32 %i.ri, %i.rj
  %i.rl = sext i8 %i.qs to i32
  %i.rm = add nsw i32 %i.rk, %i.rl                ; 2 uses
  %i.rn = sext i8 %i.qu to i32
  %i.ro = add nsw i32 %.0203327.i, %i.rn
  %i.rp = sext i8 %i.qx to i32
  %i.rq = add nsw i32 %i.ro, %i.rp
  %i.rr = sext i8 %i.ra to i32
  %i.rs = add nsw i32 %i.rq, %i.rr
  %i.rt = sext i8 %i.rd to i32
  %i.ru = add nsw i32 %i.rs, %i.rt                ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.11322.i, i64 8 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0210323.i, i64 4 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0207324.i, i64 4 ; 2 uses
  %i.ry = add nuw nsw i32 %.0205325.i, 4          ; 2 uses
  %i.rz = or disjoint i32 %i.ry, 3
  %i.sa = icmp slt i32 %i.rz, %5
  br i1 %i.sa, label %.lr.ph329.i, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph329.i, %middle.block241
  %.11322.i.lcssa = phi ptr [ %ind.escape, %middle.block241 ], [ %.11322.i, %.lr.ph329.i ] ; 2 uses
  %.lcssa105 = phi i32 [ %i.qj, %middle.block241 ], [ %i.rm, %.lr.ph329.i ]
  %.lcssa104 = phi i32 [ %i.qi, %middle.block241 ], [ %i.ru, %.lr.ph329.i ]
  %.lcssa103 = phi ptr [ %i.po, %middle.block241 ], [ %i.rv, %.lr.ph329.i ]
  %.lcssa102 = phi ptr [ %i.pn, %middle.block241 ], [ %i.rw, %.lr.ph329.i ]
  %.lcssa101 = phi ptr [ %i.pm, %middle.block241 ], [ %i.rx, %.lr.ph329.i ]
  %i.sb = mul nsw i32 %.lcssa105, 127
  %i.sc = mul nsw i32 %.lcssa104, 127
  store i32 %i.sb, ptr %.lcssa103, align 4, !tbaa !23
  %i.sd = getelementptr inbounds nuw i8, ptr %.11322.i.lcssa, i64 12
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !23
  %i.se = getelementptr inbounds nuw i8, ptr %.11322.i.lcssa, i64 16
  br label %._crit_edge330.i

._crit_edge330.i:                                 ; preds = %.loopexit, %bb.f
  %.0205.lcssa465.i = phi i32 [ %i.em, %.loopexit ], [ 0, %bb.f ] ; 8 uses
  %.0207.lcssa463.i = phi ptr [ %.lcssa101, %.loopexit ], [ %i.pi, %bb.f ] ; 9 uses
  %.0210.lcssa461.i = phi ptr [ %.lcssa102, %.loopexit ], [ %i.pe, %bb.f ] ; 9 uses
  %.12.i = phi ptr [ %i.se, %.loopexit ], [ %.10355.i, %bb.f ] ; 10 uses
  %i.sf = or disjoint i32 %.0205.lcssa465.i, 1
  %i.sg = icmp slt i32 %i.sf, %5
  br i1 %i.sg, label %iter.check182, label %.preheader261.i

iter.check182:                                    ; preds = %._crit_edge330.i
  %i.sh = sub i32 %i.er, %.0205.lcssa465.i        ; 3 uses
  %i.si = lshr i32 %i.sh, 1
  %narrow349 = add nuw i32 %i.si, 1
  %i.sj = zext i32 %narrow349 to i64              ; 5 uses
  %min.iters.check164 = icmp ult i32 %i.sh, 14
  br i1 %min.iters.check164, label %.lr.ph342.i.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %iter.check182
  %scevgep151 = getelementptr i8, ptr %.12.i, i64 4
  %i.sk = sub i32 %i.eq, %.0205.lcssa465.i
  %i.sl = zext i32 %i.sk to i64                   ; 2 uses
  %i.sm = shl nuw nsw i64 %i.sl, 1
  %i.sn = and i64 %i.sm, 8589934588
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %i.sn ; 2 uses
  %scevgep153 = getelementptr i8, ptr %.0207.lcssa463.i, i64 2
  %i.so = and i64 %i.sl, 4294967294               ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.so
  %scevgep155 = getelementptr i8, ptr %.0210.lcssa461.i, i64 2
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.so
  %bound0157 = icmp ult ptr %.12.i, %scevgep154
  %bound1158 = icmp ult ptr %.0207.lcssa463.i, %scevgep152
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0160 = icmp ult ptr %.12.i, %scevgep156
  %bound1161 = icmp ult ptr %.0210.lcssa461.i, %scevgep152
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %found.conflict159, %found.conflict162
  br i1 %conflict.rdx163, label %.lr.ph342.i.preheader, label %vector.main.loop.iter.check165

vector.main.loop.iter.check165:                   ; preds = %vector.memcheck150
  %min.iters.check166 = icmp ult i32 %i.sh, 62
  br i1 %min.iters.check166, label %vec.epilog.ph186, label %vector.ph167

vector.ph167:                                     ; preds = %vector.main.loop.iter.check165
  %i.sp = and i64 %i.sj, 24
  %n.vec168 = and i64 %i.sj, 4294967264           ; 6 uses
  %i.sq = trunc nuw i64 %n.vec168 to i32
  %i.sr = shl i32 %i.sq, 1
  %i.ss = add i32 %.0205.lcssa465.i, %i.sr        ; 2 uses
  %i.st = shl nuw nsw i64 %n.vec168, 1            ; 2 uses
  %i.su = getelementptr i8, ptr %.0207.lcssa463.i, i64 %i.st ; 2 uses
  %i.sv = getelementptr i8, ptr %.0210.lcssa461.i, i64 %i.st ; 2 uses
  %i.sw = shl nuw nsw i64 %n.vec168, 2
  %i.sx = getelementptr i8, ptr %.12.i, i64 %i.sw ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.ph167, %vector.body169
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next179, %vector.body169 ] ; 3 uses
  %i.sy = shl i64 %index170, 1                    ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.0207.lcssa463.i, i64 %i.sy
  %next.gep172 = getelementptr i8, ptr %.0210.lcssa461.i, i64 %i.sy
  %i.sz = shl i64 %index170, 2
  %next.gep173 = getelementptr i8, ptr %.12.i, i64 %i.sz
  %wide.vec = load <64 x i8>, ptr %next.gep172, align 1, !tbaa !17, !alias.scope !84
  %wide.vec175 = load <64 x i8>, ptr %next.gep171, align 1, !tbaa !17, !alias.scope !85
  %interleaved.vec178 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec175, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec178, ptr %next.gep173, align 1, !tbaa !17, !alias.scope !86, !noalias !87
  %index.next179 = add nuw i64 %index170, 32      ; 2 uses
  %i.ta = icmp eq i64 %index.next179, %n.vec168
  br i1 %i.ta, label %middle.block180, label %vector.body169, !llvm.loop !66

middle.block180:                                  ; preds = %vector.body169
  %cmp.n181 = icmp eq i64 %n.vec168, %i.sj
  br i1 %cmp.n181, label %.preheader261.i, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block180
  %min.epilog.iters.check185 = icmp eq i64 %i.sp, 0
  br i1 %min.epilog.iters.check185, label %.lr.ph342.i.preheader, label %vec.epilog.ph186, !prof !25

vec.epilog.ph186:                                 ; preds = %vector.main.loop.iter.check165, %vec.epilog.iter.check183
  %vec.epilog.resume.val187 = phi i64 [ %n.vec168, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check165 ]
  %n.vec188 = and i64 %i.sj, 4294967288           ; 5 uses
  %i.tb = trunc nuw i64 %n.vec188 to i32
  %i.tc = shl i32 %i.tb, 1
  %i.td = add i32 %.0205.lcssa465.i, %i.tc        ; 2 uses
  %i.te = shl nuw nsw i64 %n.vec188, 1            ; 2 uses
  %i.tf = getelementptr i8, ptr %.0207.lcssa463.i, i64 %i.te ; 2 uses
  %i.tg = getelementptr i8, ptr %.0210.lcssa461.i, i64 %i.te ; 2 uses
  %i.th = shl nuw nsw i64 %n.vec188, 2
  %i.ti = getelementptr i8, ptr %.12.i, i64 %i.th ; 2 uses
end_hunk_0
