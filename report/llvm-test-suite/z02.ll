Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z02?download=true
inline.NumInlined: 19
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@LexGetToken:bb.a
  br i1 %i.tp, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.co
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tc, i64 64 ; 3 uses
  %min.iters.check = icmp ult i64 %i.so, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tr = sub i64 %i.td, %.0200543.le759
  %i.ts = add i64 %i.tr, 62
  %diff.check = icmp ult i64 %i.ts, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check544 = icmp ult i64 %i.so, 32
  br i1 %min.iters.check544, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tt = and i64 %i.so, 28
  %n.vec = and i64 %i.so, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.l, i64 %index ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %wide.load = load <16 x i8>, ptr %i.tu, align 1, !tbaa !8
  %wide.load545 = load <16 x i8>, ptr %i.tv, align 1, !tbaa !8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 %index ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store <16 x i8> %wide.load, ptr %i.tw, align 1, !tbaa !8
  store <16 x i8> %wide.load545, ptr %i.tx, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ty = icmp eq i64 %index.next, %n.vec
  br i1 %i.ty, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.so, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tt, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec546 = and i64 %i.so, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index547 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next549, %vec.epilog.vector.body ] ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.l, i64 %index547
  %wide.load548 = load <4 x i8>, ptr %i.tz, align 1, !tbaa !8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tq, i64 %index547
  store <4 x i8> %wide.load548, ptr %i.ua, align 1, !tbaa !8
  %index.next549 = add nuw i64 %index547, 4       ; 2 uses
  %i.ub = icmp eq i64 %index.next549, %n.vec546
  br i1 %i.ub, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n550 = icmp eq i64 %i.so, %n.vec546
  br i1 %cmp.n550, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec546, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tq, i64 %indvars.iv
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.so
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.co
  %.lcssa302 = phi i64 [ 0, %bb.co ], [ %i.so, %middle.block ], [ %i.so, %vec.epilog.middle.block ], [ %i.so, %vec.epilog.scalar.ph ]
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tc, i64 64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 %.lcssa302
  store i8 0, ptr %i.ug, align 1, !tbaa !8
  br label %.thread287

bb.cp:                                            ; preds = %bb.ci
  %i.uh = and i8 %i.sg, -8
  %or.cond266 = icmp eq i8 %i.uh, 48
  br i1 %or.cond266, label %.preheader, label %bb.cs

.preheader:                                       ; preds = %bb.cp
  %i.ui = getelementptr inbounds nuw i8, ptr %.7, i64 2 ; 2 uses
  %i.uj = zext nneg i8 %i.sg to i32
  %i.uk = add nsw i32 %i.uj, -48                  ; 2 uses
  %i.ul = load i8, ptr %i.ui, align 1, !tbaa !8   ; 3 uses
  %i.um = icmp ugt i8 %i.ul, 47
  %i.un = icmp ult i8 %i.ul, 56
  %or.cond = and i1 %i.um, %i.un
  br i1 %or.cond, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %.preheader
  %i.uo = shl nuw nsw i32 %i.uk, 3
  %i.up = getelementptr inbounds nuw i8, ptr %.7, i64 3 ; 2 uses
  %i.uq = zext nneg i8 %i.ul to i32
  %i.ur = add nsw i32 %i.uo, -48
  %i.us = add nsw i32 %i.ur, %i.uq                ; 2 uses
  %i.ut = load i8, ptr %i.up, align 1, !tbaa !8   ; 3 uses
  %i.uu = icmp ugt i8 %i.ut, 47
  %i.uv = icmp ult i8 %i.ut, 56
  %or.cond761 = and i1 %i.uu, %i.uv
  br i1 %or.cond761, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.1
  %i.uw = shl nsw i32 %i.us, 3
  %i.ux = getelementptr inbounds nuw i8, ptr %.7, i64 4
  %i.uy = zext nneg i8 %i.ut to i32
  %i.uz = add nsw i32 %i.uw, -48
  %i.va = add i32 %i.uz, %i.uy
  br label %.critedge

.critedge:                                        ; preds = %.preheader.2, %.preheader.1, %.preheader
  %.lcssa664 = phi ptr [ %i.ux, %.preheader.2 ], [ %i.ui, %.preheader ], [ %i.up, %.preheader.1 ] ; 2 uses
  %.lcssa663 = phi i32 [ %i.va, %.preheader.2 ], [ %i.uk, %.preheader ], [ %i.us, %.preheader.1 ] ; 2 uses
  %i.vb = icmp eq i32 %.lcssa663, 0
  br i1 %i.vb, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.critedge
  %i.vc = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 13, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.cq, %bb.cr, %bb.ct, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.cs
  %.7.be = phi ptr [ %i.oj, %bb.ct ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.ve, %bb.cs ], [ %.lcssa664, %bb.cr ], [ %.lcssa664, %bb.cq ]
  %.0197.be = phi ptr [ %i.ol, %bb.ct ], [ %i.ol, %bb.bv ], [ %i.ol, %bb.bv ], [ %i.ol, %bb.bv ], [ %i.ol, %bb.bv ], [ %i.ol, %bb.bv ], [ %i.ol, %bb.bv ], [ %i.ol, %bb.cs ], [ %i.ol, %bb.cr ], [ %.0197, %bb.cq ]
  br label %bb.bv, !llvm.loop !65

bb.cr:                                            ; preds = %.critedge
  %i.vd = trunc i32 %.lcssa663 to i8
  store i8 %i.vd, ptr %.0197, align 1, !tbaa !8
  br label %.backedge

bb.cs:                                            ; preds = %bb.cp
  %i.ve = getelementptr inbounds nuw i8, ptr %.7, i64 2
  store i8 %i.sg, ptr %.0197, align 1, !tbaa !8
  br label %.backedge

bb.ct:                                            ; preds = %bb.bv
  %i.vf = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 14, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %.backedge

bb.cu:                                            ; preds = %bb.f
  %i.vg = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.vh = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %i.vg, ptr noundef nonnull @.str.40) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader296, %bb.az, %bb.br, %bb.m, %bb.n, %bb.o, %bb.cu, %bb.k, %bb.j, %bb.l, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.y, %bb.bt, %bb.bs, %bb.be
  %.10 = phi ptr [ %i.l, %bb.cu ], [ %i.z, %bb.j ], [ %i.l, %bb.k ], [ %i.ar, %bb.l ], [ %.6, %bb.br ], [ %i.l, %bb.m ], [ %i.l, %bb.n ], [ %i.az, %bb.o ], [ %i.cc, %bb.y ], [ %i.l, %bb.ad ], [ %.0200, %bb.aa ], [ %.0200, %bb.ab ], [ %i.ck, %bb.ac ], [ %.5205, %bb.bs ], [ %.5205, %bb.bt ], [ %.5205, %bb.az ], [ %.5205, %bb.be ], [ %.1201, %.preheader296 ] ; 2 uses
  %.5 = phi ptr [ null, %bb.cu ], [ %i.y, %bb.j ], [ null, %bb.k ], [ null, %bb.l ], [ %.2190, %bb.br ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.y ], [ null, %bb.ad ], [ %i.cg, %bb.aa ], [ %i.cj, %bb.ab ], [ null, %bb.ac ], [ %i.nv, %bb.bs ], [ %i.nz, %bb.bt ], [ null, %bb.az ], [ %i.jy, %bb.be ], [ null, %.preheader296 ] ; 2 uses
  %.2 = phi i8 [ %.0186, %bb.cu ], [ %.0186, %bb.j ], [ %.0186, %bb.k ], [ %.0186, %bb.l ], [ %.1187, %bb.br ], [ %.0186, %bb.m ], [ %.0186, %bb.n ], [ %i.ay, %bb.o ], [ %.0186, %bb.y ], [ %.0186, %bb.ad ], [ %.0186, %bb.aa ], [ %.0186, %bb.ab ], [ %.0186, %bb.ac ], [ %.0186, %bb.bs ], [ %.0186, %bb.bt ], [ %.0186, %bb.az ], [ %.0186, %bb.be ], [ %.0186, %.preheader296 ] ; 2 uses
  %.1 = phi i8 [ %.0185, %bb.cu ], [ %.0185, %bb.j ], [ %.0185, %bb.k ], [ %.0185, %bb.l ], [ %.0185, %bb.br ], [ %i.at, %bb.m ], [ %i.au, %bb.n ], [ 0, %bb.o ], [ 0, %bb.y ], [ %.0185, %bb.ad ], [ %.0185, %bb.aa ], [ %.0185, %bb.ab ], [ 0, %bb.ac ], [ %.0185, %bb.bs ], [ %.0185, %bb.bt ], [ 0, %bb.az ], [ %.0185, %bb.be ], [ %.0185, %.preheader296 ] ; 2 uses
  %i.vi = icmp eq ptr %.5, null
  br i1 %i.vi, label %bb.f, label %.thread287, !llvm.loop !66

.thread287:                                       ; preds = %.loopexit, %._crit_edge, %._crit_edge345, %._crit_edge350, %bb.bc, %._crit_edge355, %._crit_edge360
  %.1295 = phi i8 [ %.0185, %._crit_edge ], [ %.0185, %._crit_edge360 ], [ %.0185, %._crit_edge355 ], [ %.0185, %bb.bc ], [ %.0185, %._crit_edge350 ], [ %.0185, %._crit_edge345 ], [ %.1, %.loopexit ]
  %.2294 = phi i8 [ %.0186, %._crit_edge ], [ %.0186, %._crit_edge360 ], [ %.0186, %._crit_edge355 ], [ %.0186, %bb.bc ], [ %.0186, %._crit_edge350 ], [ %.0186, %._crit_edge345 ], [ %.2, %.loopexit ]
  %.5293 = phi ptr [ %i.tc, %._crit_edge ], [ %i.ew, %._crit_edge360 ], [ %i.ho, %._crit_edge355 ], [ %i.jl, %bb.bc ], [ %i.pg, %._crit_edge350 ], [ %i.rb, %._crit_edge345 ], [ %.5, %.loopexit ] ; 3 uses
  %.10292 = phi ptr [ %i.oj, %._crit_edge ], [ %.5205, %._crit_edge360 ], [ %.5205, %._crit_edge355 ], [ %.5205, %bb.bc ], [ %.7, %._crit_edge350 ], [ %i.oj, %._crit_edge345 ], [ %.10, %.loopexit ] ; 2 uses
  %i.vj = load ptr, ptr @startline, align 8, !tbaa !20
  %i.vk = ptrtoint ptr %.10292 to i64
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = icmp sgt i64 %i.vm, 2047
  br i1 %i.vn, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.thread287
  %i.vo = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.vp = and i32 %i.vo, 1048575
  %i.vq = or disjoint i32 %i.vp, 1048576
  store i32 %i.vq, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.vr = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 15, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.thread287
  store ptr %.10292, ptr @chpt, align 8, !tbaa !20
  %i.vs = getelementptr inbounds nuw i8, ptr %.5293, i64 42
  store i8 %.2294, ptr %i.vs, align 2, !tbaa !8
  %i.vt = getelementptr inbounds nuw i8, ptr %.5293, i64 41
  store i8 %.1295, ptr %i.vt, align 1, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.d
  %.0207 = phi ptr [ %i.b, %bb.d ], [ %.5293, %bb.cw ]
  ret ptr %.0207
}

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @srcnext() unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @blksize, align 4, !tbaa !7
  %.not = icmp ne i32 %i.a, 0
  %.pre = load ptr, ptr @chpt, align 8, !tbaa !20 ; 3 uses
  %.pre13 = load ptr, ptr @limit, align 8, !tbaa !20 ; 3 uses
  %0 = icmp ult ptr %.pre, %.pre13
  %or.cond23 = select i1 %.not, i1 %0, i1 false
  br i1 %or.cond23, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @buf, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %.pre13, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ]  ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !8
  %.not8 = icmp eq i8 %i.e, 10
  br i1 %.not8, label %bb.d, label %bb.c, !llvm.loop !71

bb.d:                                             ; preds = %bb.c
  store ptr %.0, ptr @frst, align 8, !tbaa !20
  store ptr %i.c, ptr @limit, align 8, !tbaa !20
  store i32 0, ptr @blksize, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.g = phi ptr [ %i.c, %bb.d ], [ %.pre13, %bb.a ] ; 2 uses
  %.not9 = icmp ult ptr %.pre, %i.g
  br i1 %.not9, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ugt ptr %.pre, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.j = and i32 %i.i, 1048575
  %i.k = or disjoint i32 %i.j, 1048576
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.l = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr @frst, align 8, !tbaa !20
  store ptr %i.m, ptr @chpt, align 8, !tbaa !20
  %i.n = load ptr, ptr @buf, align 8, !tbaa !20
  %i.o = load ptr, ptr @fp, align 8, !tbaa !29
  %i.p = tail call i64 @fread(ptr noundef %i.n, i64 noundef 1, i64 noundef 8192, ptr noundef %i.o) ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 5 uses
  store i32 %i.q, ptr @blksize, align 4, !tbaa !7
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre14 = load i8, ptr @last_char, align 1
  %.pre16.pre = load ptr, ptr @buf, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @buf, align 8, !tbaa !20   ; 2 uses
  %i.t = and i64 %i.p, 2147483647
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  store i8 %i.w, ptr @last_char, align 1, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.pre16 = phi ptr [ %.pre16.pre, %._crit_edge ], [ %i.s, %bb.i ] ; 3 uses
  %i.x = phi i8 [ %.pre14, %._crit_edge ], [ %i.w, %bb.i ]
  %i.y = icmp slt i32 %i.q, 8192
  %i.z = icmp ne i8 %i.x, 10
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %i.q, 1                     ; 3 uses
  store i32 %i.aa, ptr @blksize, align 4, !tbaa !7
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %.pre16, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  store i8 10, ptr %i.ad, align 1, !tbaa !8
  store i8 10, ptr @last_char, align 1, !tbaa !8
  %i.ae = load i16, ptr @ftype, align 2, !tbaa !28
  %i.af = icmp eq i16 %i.ae, 3
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ag = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 25, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre15 = load ptr, ptr @buf, align 8, !tbaa !20
  %.pre17 = load i32, ptr @blksize, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %i.ah = phi i32 [ %i.aa, %bb.k ], [ %.pre17, %bb.l ], [ %i.q, %bb.j ]
  %i.ai = phi ptr [ %.pre16, %bb.k ], [ %.pre15, %bb.l ], [ %.pre16, %bb.j ] ; 2 uses
  store ptr %i.ai, ptr @frst, align 8, !tbaa !20
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj ; 3 uses
  store ptr %i.ak, ptr @limit, align 8, !tbaa !20
  store i8 10, ptr %i.ak, align 1, !tbaa !8
  %.pre18 = load ptr, ptr @chpt, align 8, !tbaa !20
  %i.al = icmp ult ptr %.pre18, %i.ak
  br i1 %i.al, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr @buf, align 8, !tbaa !20  ; 3 uses
  store ptr %i.am, ptr @limit, align 8, !tbaa !20
  store ptr %i.am, ptr @chpt, align 8, !tbaa !20
  store i8 0, ptr %i.am, align 1, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.n, %bb.m
  ret void
}

declare zeroext i16 @NextFile(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @SearchSym(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CopyTokenList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @SymName(ptr noundef) local_unnamed_addr #4

declare void @UnSuppressScope() local_unnamed_addr #4

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @SuppressScope() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @LexScanVerbatim(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 22 uses
  %i.b = alloca [512 x i8], align 16              ; 35 uses
  %i.c = alloca i32, align 4                      ; 56 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.e = load ptr, ptr @next_token, align 8, !tbaa !32
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef %2) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @chpt, align 8, !tbaa !20
  store i32 0, ptr %i.c, align 4, !tbaa !7
  %i.h = icmp eq ptr %0, null                     ; 19 uses
  %.not246 = icmp eq i32 %1, 0                    ; 2 uses
  %.not253 = icmp eq i32 %3, 0                    ; 2 uses
  %i.i = select i1 %.not253, ptr @.str.45, ptr @.str.44
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.0192317 = phi ptr [ null, %bb.c ], [ %.0192317.be, %.backedge ] ; 29 uses
  %.0193316 = phi i32 [ 0, %bb.c ], [ %.0193316.be, %.backedge ] ; 23 uses
  %.0198315 = phi i32 [ 1, %bb.c ], [ %.0198315.be, %.backedge ] ; 6 uses
  %.0203313 = phi i32 [ 0, %bb.c ], [ %.0203313.be, %.backedge ] ; 26 uses
  %.0205312 = phi ptr [ %i.g, %bb.c ], [ %.0205312.be, %.backedge ] ; 23 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0205312, i64 1 ; 24 uses
  %i.k = load i8, ptr %.0205312, align 1, !tbaa !8 ; 6 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  switch i8 %i.n, label %bb.dh [
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 2, label %bb.e
    i8 5, label %bb.q
    i8 7, label %bb.q
    i8 6, label %bb.q
    i8 8, label %bb.y
    i8 9, label %bb.ah
    i8 0, label %bb.ak
    i8 1, label %bb.bv
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.o = icmp sgt i32 %.0193316, 0
  br i1 %i.o, label %.lr.ph309.preheader, label %._crit_edge310

.lr.ph309.preheader:                              ; preds = %bb.e
  %wide.trip.count373 = zext nneg i32 %.0193316 to i64
  br label %.lr.ph309

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %bb.k
  %indvars.iv370 = phi i64 [ 0, %.lr.ph309.preheader ], [ %indvars.iv.next371, %bb.k ] ; 3 uses
  %.1306 = phi ptr [ %.0192317, %.lr.ph309.preheader ], [ %.2, %bb.k ] ; 4 uses
  br i1 %i.h, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph309
  %i.p = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.q = icmp slt i32 %i.p, 512
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv370
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 8
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call fastcc ptr @BuildLines(ptr noundef %.1306, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, 1
  store i32 %i.y, ptr %i.c, align 4, !tbaa !7
  %i.z = sext i32 %i.p to i64
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %i.z
end_hunk_0
