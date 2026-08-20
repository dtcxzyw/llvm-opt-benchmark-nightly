inline.NumInlined: 22
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZL10mixbox_lutvEN13mixbox_init_tC2Ev:bb.a
  %i.ml = lshr i32 %i.mi, %i.mf
  store i32 %i.ml, ptr %i.k, align 4, !tbaa !25
  %i.mm = sub nsw i32 %i.mh, %i.mf
  store i32 %i.mm, ptr %i.j, align 8, !tbaa !24
  %i.mn = add i32 %i.mk, %i.mc
  br label %bb.bs

bb.bs:                                            ; preds = %_ZL8zreceiveP4zbufi.exit.i33.i, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i
  %.0.i34.i = phi i32 [ %i.mn, %_ZL8zreceiveP4zbufi.exit.i33.i ], [ %i.mc, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i ] ; 2 uses
  %i.mo = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.mp = ptrtoint ptr %.051.i.i to i64
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = sext i32 %.0.i34.i to i64               ; 3 uses
  %i.mt = icmp slt i64 %i.mr, %i.ms
  br i1 %i.mt, label %_ZL10decompressPci.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mu = sext i32 %.047.i.i to i64
  %i.mv = getelementptr inbounds i8, ptr %.051.i.i, i64 %i.mu
  %i.mw = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.mx = icmp ugt ptr %i.mv, %i.mw
  br i1 %i.mx, label %_ZL10decompressPci.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.my = sub nsw i64 0, %i.ms
  %i.mz = getelementptr inbounds i8, ptr %.051.i.i, i64 %i.my ; 6 uses
  %i.na = icmp eq i32 %.0.i34.i, 1
  %.not67.i35.i = icmp eq i32 %.047.i.i, 0        ; 2 uses
  br i1 %i.na, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br i1 %.not67.i35.i, label %.loopexit.i.i, label %.preheader.preheader.i37.i

.preheader.preheader.i37.i:                       ; preds = %bb.bv
  %i.nb = load i8, ptr %i.mz, align 1, !tbaa !9
  %i.nc = zext i32 %.047.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.051.i.i, i8 %i.nb, i64 %i.nc, i1 false), !tbaa !9
  %scevgep.i38.i = getelementptr i8, ptr %.051.i.i, i64 1
  %i.nd = add i32 %.047.i.i, -1
  %i.ne = zext i32 %i.nd to i64
  %scevgep100.i.i = getelementptr i8, ptr %scevgep.i38.i, i64 %i.ne
  br label %.loopexit.i.i

bb.bw:                                            ; preds = %bb.bu
  br i1 %.not67.i35.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.bw
  %i.nf = zext i32 %.047.i.i to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %.047.i.i, 4
  %i.ng = add nsw i64 %i.ms, -1
  %diff.check = icmp ult i64 %i.ng, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader93.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %.047.i.i, 32
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nh = and i64 %i.nf, 28
  %n.vec = and i64 %i.nf, 4294967264              ; 6 uses
  %i.ni = getelementptr i8, ptr %.051.i.i, i64 %n.vec ; 2 uses
  %i.nj = getelementptr i8, ptr %i.mz, i64 %n.vec
  %i.nk = trunc nuw i64 %n.vec to i32
  %i.nl = sub i32 %.047.i.i, %i.nk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.051.i.i, i64 %index ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.mz, i64 %index ; 2 uses
  %i.nm = getelementptr i8, ptr %next.gep86, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep86, align 1, !tbaa !9
  %wide.load87 = load <16 x i8>, ptr %i.nm, align 1, !tbaa !9
  %i.nn = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !9
  store <16 x i8> %wide.load87, ptr %i.nn, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.no = icmp eq i64 %index.next, %n.vec
  br i1 %i.no, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.nf
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nh, 0
  br i1 %min.epilog.iters.check, label %.preheader93.i.i.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.nf, 4294967292            ; 5 uses
  %i.np = getelementptr i8, ptr %.051.i.i, i64 %n.vec90 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.mz, i64 %n.vec90
  %i.nr = trunc nuw i64 %n.vec90 to i32
  %i.ns = sub i32 %.047.i.i, %i.nr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %next.gep92 = getelementptr i8, ptr %.051.i.i, i64 %index91
  %next.gep93 = getelementptr i8, ptr %i.mz, i64 %index91
  %wide.load94 = load <4 x i8>, ptr %next.gep93, align 1, !tbaa !9
  store <4 x i8> %wide.load94, ptr %next.gep92, align 1, !tbaa !9
  %index.next95 = add nuw i64 %index91, 4         ; 2 uses
  %i.nt = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.nt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %n.vec90, %i.nf
  br i1 %cmp.n96, label %.loopexit.i.i, label %.preheader93.i.i.preheader

.preheader93.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.i.i.ph = phi ptr [ %.051.i.i, %iter.check ], [ %i.ni, %vec.epilog.iter.check ], [ %i.np, %vec.epilog.middle.block ] ; 2 uses
  %.048.i.i.ph = phi ptr [ %i.mz, %iter.check ], [ %i.nj, %vec.epilog.iter.check ], [ %i.nq, %vec.epilog.middle.block ] ; 2 uses
  %.2.i.i.ph = phi i32 [ %.047.i.i, %iter.check ], [ %i.nl, %vec.epilog.iter.check ], [ %i.ns, %vec.epilog.middle.block ] ; 4 uses
  %i.nu = add nsw i32 %.2.i.i.ph, -1
  %xtraiter = and i32 %.2.i.i.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader93.i.i.prol.loopexit, label %.preheader93.i.i.prol

.preheader93.i.i.prol:                            ; preds = %.preheader93.i.i.preheader, %.preheader93.i.i.prol
  %.3.i.i.prol = phi ptr [ %i.nx, %.preheader93.i.i.prol ], [ %.3.i.i.ph, %.preheader93.i.i.preheader ] ; 2 uses
  %.048.i.i.prol = phi ptr [ %i.nv, %.preheader93.i.i.prol ], [ %.048.i.i.ph, %.preheader93.i.i.preheader ] ; 2 uses
  %.2.i.i.prol = phi i32 [ %i.ny, %.preheader93.i.i.prol ], [ %.2.i.i.ph, %.preheader93.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader93.i.i.prol ], [ 0, %.preheader93.i.i.preheader ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 1 ; 2 uses
  %i.nw = load i8, ptr %.048.i.i.prol, align 1, !tbaa !9
  %i.nx = getelementptr inbounds nuw i8, ptr %.3.i.i.prol, i64 1 ; 3 uses
  store i8 %i.nw, ptr %.3.i.i.prol, align 1, !tbaa !9
  %i.ny = add nsw i32 %.2.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader93.i.i.prol.loopexit, label %.preheader93.i.i.prol, !llvm.loop !40

.preheader93.i.i.prol.loopexit:                   ; preds = %.preheader93.i.i.prol, %.preheader93.i.i.preheader
  %.lcssa114.unr = phi ptr [ poison, %.preheader93.i.i.preheader ], [ %i.nx, %.preheader93.i.i.prol ]
  %.3.i.i.unr = phi ptr [ %.3.i.i.ph, %.preheader93.i.i.preheader ], [ %i.nx, %.preheader93.i.i.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.preheader93.i.i.preheader ], [ %i.nv, %.preheader93.i.i.prol ]
  %.2.i.i.unr = phi i32 [ %.2.i.i.ph, %.preheader93.i.i.preheader ], [ %i.ny, %.preheader93.i.i.prol ]
  %i.nz = icmp ult i32 %i.nu, 7
  br i1 %i.nz, label %.loopexit.i.i, label %.preheader93.i.i

.preheader93.i.i:                                 ; preds = %.preheader93.i.i.prol.loopexit, %.preheader93.i.i
  %.3.i.i = phi ptr [ %i.ox, %.preheader93.i.i ], [ %.3.i.i.unr, %.preheader93.i.i.prol.loopexit ] ; 9 uses
  %.048.i.i = phi ptr [ %i.ov, %.preheader93.i.i ], [ %.048.i.i.unr, %.preheader93.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i = phi i32 [ %i.oy, %.preheader93.i.i ], [ %.2.i.i.unr, %.preheader93.i.i.prol.loopexit ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 1
  %i.ob = load i8, ptr %.048.i.i, align 1, !tbaa !9
  %i.oc = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.ob, ptr %.3.i.i, align 1, !tbaa !9
  %i.od = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 2
  %i.oe = load i8, ptr %i.oa, align 1, !tbaa !9
  %i.of = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 2
  store i8 %i.oe, ptr %i.oc, align 1, !tbaa !9
  %i.og = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 3
  %i.oh = load i8, ptr %i.od, align 1, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 3
  store i8 %i.oh, ptr %i.of, align 1, !tbaa !9
  %i.oj = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.ok = load i8, ptr %i.og, align 1, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  store i8 %i.ok, ptr %i.oi, align 1, !tbaa !9
  %i.om = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 5
  %i.on = load i8, ptr %i.oj, align 1, !tbaa !9
  %i.oo = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 5
  store i8 %i.on, ptr %i.ol, align 1, !tbaa !9
  %i.op = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 6
  %i.oq = load i8, ptr %i.om, align 1, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 6
  store i8 %i.oq, ptr %i.oo, align 1, !tbaa !9
  %i.os = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 7
  %i.ot = load i8, ptr %i.op, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 7
  store i8 %i.ot, ptr %i.or, align 1, !tbaa !9
  %i.ov = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.ow = load i8, ptr %i.os, align 1, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 2 uses
  store i8 %i.ow, ptr %i.ou, align 1, !tbaa !9
  %i.oy = add nsw i32 %.2.i.i, -8                 ; 2 uses
  %.not66.i36.i.7 = icmp eq i32 %i.oy, 0
  br i1 %.not66.i36.i.7, label %.loopexit.i.i, label %.preheader93.i.i, !llvm.loop !42

.loopexit.i.i:                                    ; preds = %.preheader93.i.i.prol.loopexit, %.preheader93.i.i, %middle.block, %vec.epilog.middle.block, %bb.bw, %.preheader.preheader.i37.i, %bb.bv, %bb.bb
  %.7.i.i = phi ptr [ %i.jr, %bb.bb ], [ %scevgep100.i.i, %.preheader.preheader.i37.i ], [ %.051.i.i, %bb.bv ], [ %.051.i.i, %bb.bw ], [ %i.np, %vec.epilog.middle.block ], [ %i.ni, %middle.block ], [ %.lcssa114.unr, %.preheader93.i.i.prol.loopexit ], [ %i.ox, %.preheader93.i.i ]
  br label %bb.ap, !llvm.loop !43

bb.bx:                                            ; preds = %bb.bc
  store ptr %.051.i.i, ptr %i.g, align 8, !tbaa !21
  %.not25.i = icmp eq i32 %i.ai, 0
  br i1 %.not25.i, label %thread-pre-split.i, label %.preheader.i, !llvm.loop !44

.preheader.i:                                     ; preds = %bb.bx, %.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.us.i ], [ 0, %bb.bx ] ; 3 uses
  %i.oz = and i64 %indvars.iv.i, 63
  %.not26.i = icmp eq i64 %i.oz, 0
  br i1 %.not26.i, label %.split.us.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.pa = mul nuw nsw i64 %indvars.iv.i, 3
  %2 = getelementptr inbounds nuw i8, ptr @_ZZL10mixbox_lutvE12decompressed, i64 %i.pa ; 7 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 4294967293
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !9
  %i.pd = load i8, ptr %2, align 1, !tbaa !9
  %i.pe = add i8 %i.pc, -127
  %i.pf = add i8 %i.pe, %i.pd
  store i8 %i.pf, ptr %2, align 1, !tbaa !9
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 4294967294
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !9
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !9
  %i.pk = add i8 %i.ph, -127
  %i.pl = add i8 %i.pk, %i.pj
  store i8 %i.pl, ptr %i.pi, align 1, !tbaa !9
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 4294967295
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !9
  %i.pq = add i8 %i.pn, -127
  %i.pr = add i8 %i.pq, %i.pp
  store i8 %i.pr, ptr %i.po, align 1, !tbaa !9
  br label %.split.us.i

.split.us.i:                                      ; preds = %.preheader.split.preheader.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 266369
  br i1 %exitcond.not.i, label %_ZL10decompressPci.exit, label %.preheader.i, !llvm.loop !45

_ZL10decompressPci.exit:                          ; preds = %_ZL8zreceiveP4zbufi.exit.i, %_ZL21compute_huffman_codesP4zbuf.exit.i, %bb.aq, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bg, %bb.bm, %bb.bn, %bb.bo, %bb.bs, %bb.bt, %.split.us.i, %_ZL21compute_huffman_codesP4zbuf.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL9fill_bitsP4zbuf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 4, !tbaa !25
  %.promoted12 = load i32, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZL5zget8P4zbuf.exit, %bb.a
  %i.h = phi i32 [ %i.bj, %_ZL5zget8P4zbuf.exit ], [ %.promoted12, %bb.a ] ; 4 uses
  %i.i = phi i32 [ %i.bi, %_ZL5zget8P4zbuf.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.highbits = lshr i32 %i.i, %i.h
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.g, align 8, !tbaa !23
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.k = and i32 %i.j, 3                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9     ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !17
  %i.u = icmp sgt i32 %i.s, 39
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !23
  br label %_ZL5zget8P4zbuf.exit

bb.h:                                             ; preds = %bb.f
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr @_ZL21mixbox_lut_compressed, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %.pre = load i8, ptr %i.x, align 1, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.y = phi i8 [ %.pre, %bb.h ], [ %i.q, %bb.e ] ; 2 uses
  %i.z = phi i32 [ 0, %bb.h ], [ %i.n, %bb.e ]    ; 2 uses
  %i.aa = phi ptr [ %i.x, %bb.h ], [ %i.m, %bb.e ]
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = icmp sgt i8 %i.y, 91
  %.v.i11 = select i1 %i.ad, i8 -36, i8 -35
  %i.ae = add i8 %.v.i11, %i.y
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %i.ah = load <4 x i8>, ptr %i.ag, align 1, !tbaa !9 ; 2 uses
  %i.ai = icmp sgt <4 x i8> %i.ah, splat (i8 91)
  %i.aj = select <4 x i1> %i.ai, <4 x i8> splat (i8 -36), <4 x i8> splat (i8 -35)
  %i.ak = add <4 x i8> %i.aj, %i.ah               ; 4 uses
  %i.al = extractelement <4 x i8> %i.ak, i64 0
  %i.am = zext i8 %i.al to i32
  %i.an = extractelement <4 x i8> %i.ak, i64 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = extractelement <4 x i8> %i.ak, i64 2
  %i.aq = zext i8 %i.ap to i32
  %i.ar = extractelement <4 x i8> %i.ak, i64 3
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, 85
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = mul nuw nsw i32 %i.au, 85
  %i.aw = add nuw nsw i32 %i.av, %i.ao
  %i.ax = mul nuw nsw i32 %i.aw, 85
  %i.ay = add nuw nsw i32 %i.ax, %i.am
  %i.az = mul nuw nsw i32 %i.ay, 85
  %i.ba = add nuw nsw i32 %i.az, %i.af
  store i32 %i.ba, ptr %i.f, align 4
  %i.bb = add nsw i32 %i.z, 5
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.bc = zext nneg i32 %i.k to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = add nsw i32 %i.j, 1
  store i32 %i.bf, ptr %i.c, align 8, !tbaa !19
  %i.bg = zext i8 %i.be to i32
  br label %_ZL5zget8P4zbuf.exit

_ZL5zget8P4zbuf.exit:                             ; preds = %bb.g, %bb.j
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.bg, %bb.j ]
  %i.bh = shl i32 %.0.i, %i.h
  %i.bi = or i32 %i.bh, %i.i                      ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !25
  %i.bj = add nsw i32 %i.h, 8                     ; 2 uses
  store i32 %i.bj, ptr %i.b, align 8, !tbaa !24
  %i.bk = icmp slt i32 %i.h, 17
  br i1 %i.bk, label %bb.b, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %_ZL5zget8P4zbuf.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 {
.preheader74.preheader:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false), !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %0, i8 0, i64 1024, i1 false), !tbaa !30
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader74.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !47

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader74.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %bb.b
  %indvars.iv91 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next92, %bb.b ] ; 8 uses
  %.06480 = phi i32 [ 0, %._crit_edge ], [ %i.bc, %bb.b ] ; 3 uses
  %.06579 = phi i32 [ 0, %._crit_edge ], [ %i.bd, %bb.b ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv91
  store i32 %.06480, ptr %i.ao, align 4, !tbaa !32
  %i.ap = trunc i32 %.06480 to i16
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv91
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !30
  %i.ar = trunc i32 %.06579 to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv91
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !30
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv91
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32 ; 3 uses
  %i.av = add nsw i32 %i.au, %.06480              ; 3 uses
  %.not70 = icmp ne i32 %i.au, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.ax = shl nuw nsw i32 1, %i.aw
  %.not71.not = icmp sgt i32 %i.av, %i.ax
  %or.cond = select i1 %.not70, i1 %.not71.not, i1 false
  br i1 %or.cond, label %.loopexit72, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = trunc i64 %indvars.iv91 to i32
  %i.az = sub i32 16, %i.ay
  %i.ba = shl i32 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv91
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !32
  %i.bc = shl i32 %i.av, 1
  %i.bd = add nsw i32 %i.au, %.06579
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 16
  br i1 %exitcond94.not, label %bb.c, label %bb.a, !llvm.loop !48

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.be, align 4, !tbaa !32
  br i1 %i.c, label %.lr.ph86, label %.loopexit72

.lr.ph86:                                         ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count101 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph86, %bb.g
  %indvars.iv98 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next99, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9   ; 5 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %.not = icmp eq i8 %i.bi, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = zext i8 %i.bi to i64                    ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32 ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.bp = zext i16 %i.bo to i32
  %i.bq = sub i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bk
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !30
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.bq, %i.bt
  %i.bv = shl nuw nsw i32 %i.bj, 9
  %i.bw = trunc nuw nsw i64 %indvars.iv98 to i32
  %i.bx = or i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i16
  %i.bz = sext i32 %i.bu to i64                   ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bf, i64 %i.bz
  store i8 %i.bi, ptr %i.ca, align 1, !tbaa !9
  %i.cb = trunc i64 %indvars.iv98 to i16
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bz
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !30
  %i.cd = icmp ult i8 %i.bi, 10
  br i1 %i.cd, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.e
  %trunc.i = trunc i32 %i.bm to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.ce = zext i16 %rev.i to i32
  %i.cf = sub nuw nsw i32 16, %i.bj
  %i.cg = lshr i32 %i.ce, %i.cf
  %i.ch = shl nuw nsw i32 1, %i.bj
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = zext nneg i32 %i.ch to i64
  br label %bb.f

bb.f:                                             ; preds = %iter.check, %bb.f
  %indvars.iv95 = phi i64 [ %i.ci, %iter.check ], [ %indvars.iv.next96, %bb.f ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95
  store i16 %i.by, ptr %i.ck, align 2, !tbaa !30
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, %i.cj ; 2 uses
  %i.cl = icmp samesign ult i64 %indvars.iv.next96, 512
  br i1 %i.cl, label %bb.f, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.cm = add nsw i32 %i.bm, 1
  store i32 %i.cm, ptr %i.bl, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit72, label %bb.d, !llvm.loop !50

.loopexit72:                                      ; preds = %bb.a, %bb.g, %bb.c
  %.067 = phi i32 [ 1, %bb.c ], [ 1, %bb.g ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.067
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTS4zbuf", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !5, i64 24, !5, i64 28, !14, i64 32, !14, i64 40, !14, i64 48, !5, i64 56, !16, i64 60, !16, i64 2080}
end_hunk_0
