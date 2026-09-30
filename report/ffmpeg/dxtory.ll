Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dxtory?download=true
inline.NumInlined: 53
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decode_sym:bb.a
  %i.s = icmp slt i32 %spec.select.i.i, %i.d
  %i.t = zext i1 %i.s to i32
  %spec.select.i.i.1 = add i32 %spec.select.i.i, %i.t ; 5 uses
  %i.u = zext i8 %i.r to i32
  %i.v = and i32 %spec.select.i.i, 7
  store i32 %spec.select.i.i.1, ptr %i.a, align 8, !tbaa !45
  %i.w = shl nuw nsw i32 1, %i.v
  %i.x = and i32 %i.w, %i.u
  %.not.i.1 = icmp eq i32 %i.x, 0
  br i1 %.not.i.1, label %get_unary.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = lshr i32 %spec.select.i.i.1, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = icmp slt i32 %spec.select.i.i.1, %i.d
  %i.ad = zext i1 %i.ac to i32
  %spec.select.i.i.2 = add i32 %spec.select.i.i.1, %i.ad ; 5 uses
  %i.ae = zext i8 %i.ab to i32
  %i.af = and i32 %spec.select.i.i.1, 7
  store i32 %spec.select.i.i.2, ptr %i.a, align 8, !tbaa !45
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = and i32 %i.ag, %i.ae
  %.not.i.2 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.2, label %get_unary.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = lshr i32 %spec.select.i.i.2, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = icmp slt i32 %spec.select.i.i.2, %i.d
  %i.an = zext i1 %i.am to i32
  %spec.select.i.i.3 = add i32 %spec.select.i.i.2, %i.an ; 5 uses
  %i.ao = zext i8 %i.al to i32
  %i.ap = and i32 %spec.select.i.i.2, 7
  store i32 %spec.select.i.i.3, ptr %i.a, align 8, !tbaa !45
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.ao
  %.not.i.3 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.3, label %get_unary.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %spec.select.i.i.3, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = icmp slt i32 %spec.select.i.i.3, %i.d
  %i.ax = zext i1 %i.aw to i32
  %spec.select.i.i.4 = add i32 %spec.select.i.i.3, %i.ax ; 5 uses
  %i.ay = zext i8 %i.av to i32
  %i.az = and i32 %spec.select.i.i.3, 7
  store i32 %spec.select.i.i.4, ptr %i.a, align 8, !tbaa !45
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = and i32 %i.ba, %i.ay
  %.not.i.4 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.4, label %get_unary.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = lshr i32 %spec.select.i.i.4, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp slt i32 %spec.select.i.i.4, %i.d
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i.5 = add i32 %spec.select.i.i.4, %i.bh ; 5 uses
  %i.bi = zext i8 %i.bf to i32
  %i.bj = and i32 %spec.select.i.i.4, 7
  store i32 %spec.select.i.i.5, ptr %i.a, align 8, !tbaa !45
  %i.bk = shl nuw nsw i32 1, %i.bj
  %i.bl = and i32 %i.bk, %i.bi
  %.not.i.5 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.5, label %get_unary.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = lshr i32 %spec.select.i.i.5, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = icmp slt i32 %spec.select.i.i.5, %i.d
  %i.br = zext i1 %i.bq to i32
  %spec.select.i.i.6 = add i32 %spec.select.i.i.5, %i.br ; 5 uses
  %i.bs = zext i8 %i.bp to i32
  %i.bt = and i32 %spec.select.i.i.5, 7
  store i32 %spec.select.i.i.6, ptr %i.a, align 8, !tbaa !45
  %i.bu = shl nuw nsw i32 1, %i.bt
  %i.bv = and i32 %i.bu, %i.bs
  %.not.i.6 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.6, label %get_unary.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = lshr i32 %spec.select.i.i.6, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = icmp slt i32 %spec.select.i.i.6, %i.d
  %i.cb = zext i1 %i.ca to i32
  %spec.select.i.i.7 = add i32 %spec.select.i.i.6, %i.cb
  %i.cc = zext i8 %i.bz to i32
  %i.cd = and i32 %spec.select.i.i.6, 7
  store i32 %spec.select.i.i.7, ptr %i.a, align 8, !tbaa !45
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = and i32 %i.ce, %i.cc
  %.not.i.7 = icmp eq i32 %i.cf, 0
  %i.cg = select i1 %.not.i.7, i64 6, i64 7
  br label %get_unary.exit.thread

get_unary.exit:                                   ; preds = %bb.a
  %i.ch = load i32, ptr %i.q, align 1, !tbaa !17
  %i.ci = and i32 %spec.select.i.i, 7
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = add i32 %spec.select.i.i, 8
  %i.cl = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ck)
  store i32 %i.cl, ptr %i.a, align 8, !tbaa !45
  %i.cm = trunc i32 %i.cj to i8
  br label %bb.i

get_unary.exit.thread:                            ; preds = %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.cn = phi i64 [ %i.cg, %bb.h ], [ 5, %bb.g ], [ 4, %bb.f ], [ 3, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %get_unary.exit.thread, %get_unary.exit
  %.sink23 = phi i64 [ %i.cn, %get_unary.exit.thread ], [ 7, %get_unary.exit ]
  %.0 = phi i8 [ %i.cp, %get_unary.exit.thread ], [ %i.cm, %get_unary.exit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr align 1 %1, i64 %.sink23, i1 false)
  store i8 %.0, ptr %1, align 1, !tbaa !17
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @dx2_decode_slice_420(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %.fr278 = freeze i32 %i.b                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.j = mul i32 %i.d, %2
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %i.o = ashr i32 %i.f, 1
  %i.p = mul i32 %i.o, %2
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = ashr i32 %i.h, 1
  %i.v = mul i32 %i.u, %2
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.z = load i32, ptr %i.y, align 4, !tbaa !47
  %i.aa = and i32 %.fr278, -2                     ; 2 uses
  %i.ab = and i32 %.fr278, 1                      ; 3 uses
  %i.ac = and i32 %i.z, 1
  %i.ad = add nsw i32 %.fr278, 1
  %i.ae = ashr i32 %i.ad, 1
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 8         ; 63 uses
  %i.ah = add nsw i32 %3, -1                      ; 2 uses
  %i.ai = icmp sgt i32 %3, 1
  br i1 %i.ai, label %.lr.ph236, label %.critedge

.lr.ph236:                                        ; preds = %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 12        ; 3 uses
  %i.ak = mul nsw i32 %i.aa, 3
  %i.al = shl nuw nsw i32 %i.ab, 2
  %i.am = add nsw i32 %i.ak, %i.al                ; 3 uses
  %i.an = icmp sgt i32 %.fr278, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 17
  %.not117 = icmp eq i32 %i.ab, 0                 ; 2 uses
  %i.au = sext i32 %i.af to i64                   ; 4 uses
  %i.av = shl i32 %i.d, 1
  %i.aw = sext i32 %i.av to i64                   ; 3 uses
  %i.ax = sext i32 %i.f to i64                    ; 3 uses
  %i.ay = sext i32 %i.h to i64                    ; 3 uses
  %i.az = sext i32 %i.d to i64                    ; 3 uses
  br i1 %i.an, label %.lr.ph236.split.us.preheader, label %.lr.ph236.split

.lr.ph236.split.us.preheader:                     ; preds = %.lr.ph236
  %i.ba = zext nneg i32 %i.aa to i64
  %5 = and i32 %3, 2147483646
  br label %.lr.ph236.split.us

.lr.ph236.split.us:                               ; preds = %.lr.ph236.split.us.preheader, %bb.as
  %.0234.us = phi ptr [ %i.xg, %bb.as ], [ %i.x, %.lr.ph236.split.us.preheader ] ; 4 uses
  %.0111233.us = phi ptr [ %i.xf, %bb.as ], [ %i.r, %.lr.ph236.split.us.preheader ] ; 4 uses
  %.0112232.us = phi ptr [ %i.xe, %bb.as ], [ %i.l, %.lr.ph236.split.us.preheader ] ; 8 uses
  %.0113231.us = phi i32 [ %i.xh, %bb.as ], [ 0, %.lr.ph236.split.us.preheader ] ; 2 uses
  %.val.us = load i32, ptr %i.ag, align 8, !tbaa !45
  %.val118.us = load i32, ptr %i.aj, align 4, !tbaa !43
  %i.bb = sub nsw i32 %.val118.us, %.val.us
  %.not.us = icmp slt i32 %i.bb, %i.am
  br i1 %.not.us, label %.critedge, label %.preheader229.us.preheader

.preheader229.us.preheader:                       ; preds = %.lr.ph236.split.us
  %invariant.gep = getelementptr i8, ptr %.0112232.us, i64 %i.az
  %invariant.gep304 = getelementptr i8, ptr %.0112232.us, i64 %i.az
  br label %.preheader229.us

.preheader229.us:                                 ; preds = %.preheader229.us.preheader, %decode_sym.exit228.us
  %indvars.iv = phi i64 [ 0, %.preheader229.us.preheader ], [ %indvars.iv.next, %decode_sym.exit228.us ] ; 5 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !42    ; 8 uses
  %i.bd = load i32, ptr %i.ao, align 8, !tbaa !44 ; 9 uses
  %.promoted.i.i.us = load i32, ptr %i.ag, align 8, !tbaa !45 ; 4 uses
  %i.be = lshr i32 %.promoted.i.i.us, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = icmp slt i32 %.promoted.i.i.us, %i.bd
  %i.bj = zext i1 %i.bi to i32
  %spec.select.i.i.i.us = add i32 %.promoted.i.i.us, %i.bj ; 7 uses
  %i.bk = zext i8 %i.bh to i32
  %i.bl = and i32 %.promoted.i.i.us, 7
  store i32 %spec.select.i.i.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %i.bk
  %.not.i.i.us = icmp eq i32 %i.bn, 0
  %i.bo = lshr i32 %spec.select.i.i.i.us, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bp ; 2 uses
  br i1 %.not.i.i.us, label %get_unary.exit.i.us, label %bb.b

bb.b:                                             ; preds = %.preheader229.us
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = icmp slt i32 %spec.select.i.i.i.us, %i.bd
  %i.bt = zext i1 %i.bs to i32
  %spec.select.i.i.1.i.us = add i32 %spec.select.i.i.i.us, %i.bt ; 5 uses
  %i.bu = zext i8 %i.br to i32
  %i.bv = and i32 %spec.select.i.i.i.us, 7
  store i32 %spec.select.i.i.1.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = and i32 %i.bw, %i.bu
  %.not.i.1.i.us = icmp eq i32 %i.bx, 0
  br i1 %.not.i.1.i.us, label %get_unary.exit.thread.i.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = lshr i32 %spec.select.i.i.1.i.us, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  %i.cc = icmp slt i32 %spec.select.i.i.1.i.us, %i.bd
  %i.cd = zext i1 %i.cc to i32
  %spec.select.i.i.2.i.us = add i32 %spec.select.i.i.1.i.us, %i.cd ; 5 uses
  %i.ce = zext i8 %i.cb to i32
  %i.cf = and i32 %spec.select.i.i.1.i.us, 7
  store i32 %spec.select.i.i.2.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.cg = shl nuw nsw i32 1, %i.cf
  %i.ch = and i32 %i.cg, %i.ce
  %.not.i.2.i.us = icmp eq i32 %i.ch, 0
  br i1 %.not.i.2.i.us, label %get_unary.exit.thread.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = lshr i32 %spec.select.i.i.2.i.us, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = icmp slt i32 %spec.select.i.i.2.i.us, %i.bd
  %i.cn = zext i1 %i.cm to i32
  %spec.select.i.i.3.i.us = add i32 %spec.select.i.i.2.i.us, %i.cn ; 5 uses
  %i.co = zext i8 %i.cl to i32
  %i.cp = and i32 %spec.select.i.i.2.i.us, 7
  store i32 %spec.select.i.i.3.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = and i32 %i.cq, %i.co
  %.not.i.3.i.us = icmp eq i32 %i.cr, 0
  br i1 %.not.i.3.i.us, label %get_unary.exit.thread.i.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = lshr i32 %spec.select.i.i.3.i.us, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !17
  %i.cw = icmp slt i32 %spec.select.i.i.3.i.us, %i.bd
  %i.cx = zext i1 %i.cw to i32
  %spec.select.i.i.4.i.us = add i32 %spec.select.i.i.3.i.us, %i.cx ; 5 uses
  %i.cy = zext i8 %i.cv to i32
  %i.cz = and i32 %spec.select.i.i.3.i.us, 7
  store i32 %spec.select.i.i.4.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.da = shl nuw nsw i32 1, %i.cz
  %i.db = and i32 %i.da, %i.cy
  %.not.i.4.i.us = icmp eq i32 %i.db, 0
  br i1 %.not.i.4.i.us, label %get_unary.exit.thread.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = lshr i32 %spec.select.i.i.4.i.us, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  %i.dg = icmp slt i32 %spec.select.i.i.4.i.us, %i.bd
  %i.dh = zext i1 %i.dg to i32
  %spec.select.i.i.5.i.us = add i32 %spec.select.i.i.4.i.us, %i.dh ; 5 uses
  %i.di = zext i8 %i.df to i32
  %i.dj = and i32 %spec.select.i.i.4.i.us, 7
  store i32 %spec.select.i.i.5.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.dk = shl nuw nsw i32 1, %i.dj
  %i.dl = and i32 %i.dk, %i.di
  %.not.i.5.i.us = icmp eq i32 %i.dl, 0
  br i1 %.not.i.5.i.us, label %get_unary.exit.thread.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = lshr i32 %spec.select.i.i.5.i.us, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !17
  %i.dq = icmp slt i32 %spec.select.i.i.5.i.us, %i.bd
  %i.dr = zext i1 %i.dq to i32
  %spec.select.i.i.6.i.us = add i32 %spec.select.i.i.5.i.us, %i.dr ; 5 uses
  %i.ds = zext i8 %i.dp to i32
  %i.dt = and i32 %spec.select.i.i.5.i.us, 7
  store i32 %spec.select.i.i.6.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = and i32 %i.du, %i.ds
  %.not.i.6.i.us = icmp eq i32 %i.dv, 0
  br i1 %.not.i.6.i.us, label %get_unary.exit.thread.i.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dw = lshr i32 %spec.select.i.i.6.i.us, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !17
  %i.ea = icmp slt i32 %spec.select.i.i.6.i.us, %i.bd
  %i.eb = zext i1 %i.ea to i32
  %spec.select.i.i.7.i.us = add i32 %spec.select.i.i.6.i.us, %i.eb
  %i.ec = zext i8 %i.dz to i32
  %i.ed = and i32 %spec.select.i.i.6.i.us, 7
  store i32 %spec.select.i.i.7.i.us, ptr %i.ag, align 8, !tbaa !45
  %i.ee = shl nuw nsw i32 1, %i.ed
  %i.ef = and i32 %i.ee, %i.ec
  %.not.i.7.i.us = icmp eq i32 %i.ef, 0
  %i.eg = select i1 %.not.i.7.i.us, i64 6, i64 7
  br label %get_unary.exit.thread.i.us

get_unary.exit.thread.i.us:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.eh = phi i64 [ %i.eg, %bb.h ], [ 5, %bb.g ], [ 4, %bb.f ], [ 3, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !17
  br label %decode_sym.exit.us

get_unary.exit.i.us:                              ; preds = %.preheader229.us
  %i.ek = load i32, ptr %i.bq, align 1, !tbaa !17
  %i.el = and i32 %spec.select.i.i.i.us, 7
  %i.em = lshr i32 %i.ek, %i.el
  %i.en = add i32 %spec.select.i.i.i.us, 8
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %i.en)
  store i32 %i.eo, ptr %i.ag, align 8, !tbaa !45
  %i.ep = trunc i32 %i.em to i8
  br label %decode_sym.exit.us

decode_sym.exit.us:                               ; preds = %get_unary.exit.i.us, %get_unary.exit.thread.i.us
  %.sink23.i.us = phi i64 [ %i.eh, %get_unary.exit.thread.i.us ], [ 7, %get_unary.exit.i.us ]
  %.0.i.us = phi i8 [ %i.ej, %get_unary.exit.thread.i.us ], [ %i.ep, %get_unary.exit.i.us ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %4, i64 %.sink23.i.us, i1 false)
  store i8 %.0.i.us, ptr %4, align 1, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %.0112232.us, i64 %indvars.iv
  store i8 %.0.i.us, ptr %i.eq, align 1, !tbaa !17
  %i.er = load ptr, ptr %0, align 8, !tbaa !42    ; 8 uses
  %i.es = load i32, ptr %i.ao, align 8, !tbaa !44 ; 9 uses
  %.promoted.i.i119.us = load i32, ptr %i.ag, align 8, !tbaa !45 ; 4 uses
  %i.et = lshr i32 %.promoted.i.i119.us, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !17
  %i.ex = icmp slt i32 %.promoted.i.i119.us, %i.es
  %i.ey = zext i1 %i.ex to i32
  %spec.select.i.i.i120.us = add i32 %.promoted.i.i119.us, %i.ey ; 7 uses
  %i.ez = zext i8 %i.ew to i32
  %i.fa = and i32 %.promoted.i.i119.us, 7
  store i32 %spec.select.i.i.i120.us, ptr %i.ag, align 8, !tbaa !45
  %i.fb = shl nuw nsw i32 1, %i.fa
  %i.fc = and i32 %i.fb, %i.ez
  %.not.i.i121.us = icmp eq i32 %i.fc, 0
  %i.fd = lshr i32 %spec.select.i.i.i120.us, 3
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fe ; 2 uses
  br i1 %.not.i.i121.us, label %get_unary.exit.i139.us, label %bb.i

bb.i:                                             ; preds = %decode_sym.exit.us
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !17
  %i.fh = icmp slt i32 %spec.select.i.i.i120.us, %i.es
  %i.fi = zext i1 %i.fh to i32
  %spec.select.i.i.1.i122.us = add i32 %spec.select.i.i.i120.us, %i.fi ; 5 uses
end_hunk_0
begin_hunk_1_@dx2_decode_slice_420:bb.a
  %i.ss = and i32 %spec.select.i.i.i186.us, 7
  %i.st = lshr i32 %i.sr, %i.ss
  %i.su = add i32 %spec.select.i.i.i186.us, 8
  %i.sv = tail call i32 @llvm.umin.i32(i32 %i.pk, i32 %i.su)
  store i32 %i.sv, ptr %i.ag, align 8, !tbaa !45
  %i.sw = trunc i32 %i.st to i8
  br label %decode_sym.exit206.us

decode_sym.exit206.us:                            ; preds = %get_unary.exit.i205.us, %get_unary.exit.thread.i202.us
  %.sink23.i203.us = phi i64 [ %i.so, %get_unary.exit.thread.i202.us ], [ 7, %get_unary.exit.i205.us ]
  %.0.i204.us = phi i8 [ %i.sq, %get_unary.exit.thread.i202.us ], [ %i.sw, %get_unary.exit.i205.us ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.aq, i64 %.sink23.i203.us, i1 false)
  store i8 %.0.i204.us, ptr %i.aq, align 1, !tbaa !17
  %i.sx = xor i8 %.0.i204.us, -128
  %i.sy = lshr exact i64 %indvars.iv, 1           ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.0111233.us, i64 %i.sy
  store i8 %i.sx, ptr %i.sz, align 1, !tbaa !17
  %i.ta = load ptr, ptr %0, align 8, !tbaa !42    ; 8 uses
  %i.tb = load i32, ptr %i.ao, align 8, !tbaa !44 ; 9 uses
  %.promoted.i.i207.us = load i32, ptr %i.ag, align 8, !tbaa !45 ; 4 uses
  %i.tc = lshr i32 %.promoted.i.i207.us, 3
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !17
  %i.tg = icmp slt i32 %.promoted.i.i207.us, %i.tb
  %i.th = zext i1 %i.tg to i32
  %spec.select.i.i.i208.us = add i32 %.promoted.i.i207.us, %i.th ; 7 uses
  %i.ti = zext i8 %i.tf to i32
  %i.tj = and i32 %.promoted.i.i207.us, 7
  store i32 %spec.select.i.i.i208.us, ptr %i.ag, align 8, !tbaa !45
  %i.tk = shl nuw nsw i32 1, %i.tj
  %i.tl = and i32 %i.tk, %i.ti
  %.not.i.i209.us = icmp eq i32 %i.tl, 0
  %i.tm = lshr i32 %spec.select.i.i.i208.us, 3
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.tn ; 2 uses
  br i1 %.not.i.i209.us, label %get_unary.exit.i227.us, label %bb.ak

bb.ak:                                            ; preds = %decode_sym.exit206.us
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !17
  %i.tq = icmp slt i32 %spec.select.i.i.i208.us, %i.tb
  %i.tr = zext i1 %i.tq to i32
  %spec.select.i.i.1.i210.us = add i32 %spec.select.i.i.i208.us, %i.tr ; 5 uses
  %i.ts = zext i8 %i.tp to i32
  %i.tt = and i32 %spec.select.i.i.i208.us, 7
  store i32 %spec.select.i.i.1.i210.us, ptr %i.ag, align 8, !tbaa !45
  %i.tu = shl nuw nsw i32 1, %i.tt
  %i.tv = and i32 %i.tu, %i.ts
  %.not.i.1.i211.us = icmp eq i32 %i.tv, 0
  br i1 %.not.i.1.i211.us, label %get_unary.exit.thread.i224.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.tw = lshr i32 %spec.select.i.i.1.i210.us, 3
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !17
  %i.ua = icmp slt i32 %spec.select.i.i.1.i210.us, %i.tb
  %i.ub = zext i1 %i.ua to i32
  %spec.select.i.i.2.i212.us = add i32 %spec.select.i.i.1.i210.us, %i.ub ; 5 uses
  %i.uc = zext i8 %i.tz to i32
  %i.ud = and i32 %spec.select.i.i.1.i210.us, 7
  store i32 %spec.select.i.i.2.i212.us, ptr %i.ag, align 8, !tbaa !45
  %i.ue = shl nuw nsw i32 1, %i.ud
  %i.uf = and i32 %i.ue, %i.uc
  %.not.i.2.i213.us = icmp eq i32 %i.uf, 0
  br i1 %.not.i.2.i213.us, label %get_unary.exit.thread.i224.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ug = lshr i32 %spec.select.i.i.2.i212.us, 3
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !17
  %i.uk = icmp slt i32 %spec.select.i.i.2.i212.us, %i.tb
  %i.ul = zext i1 %i.uk to i32
  %spec.select.i.i.3.i214.us = add i32 %spec.select.i.i.2.i212.us, %i.ul ; 5 uses
  %i.um = zext i8 %i.uj to i32
  %i.un = and i32 %spec.select.i.i.2.i212.us, 7
  store i32 %spec.select.i.i.3.i214.us, ptr %i.ag, align 8, !tbaa !45
  %i.uo = shl nuw nsw i32 1, %i.un
  %i.up = and i32 %i.uo, %i.um
  %.not.i.3.i215.us = icmp eq i32 %i.up, 0
  br i1 %.not.i.3.i215.us, label %get_unary.exit.thread.i224.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.uq = lshr i32 %spec.select.i.i.3.i214.us, 3
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !17
  %i.uu = icmp slt i32 %spec.select.i.i.3.i214.us, %i.tb
  %i.uv = zext i1 %i.uu to i32
  %spec.select.i.i.4.i216.us = add i32 %spec.select.i.i.3.i214.us, %i.uv ; 5 uses
  %i.uw = zext i8 %i.ut to i32
  %i.ux = and i32 %spec.select.i.i.3.i214.us, 7
  store i32 %spec.select.i.i.4.i216.us, ptr %i.ag, align 8, !tbaa !45
  %i.uy = shl nuw nsw i32 1, %i.ux
  %i.uz = and i32 %i.uy, %i.uw
  %.not.i.4.i217.us = icmp eq i32 %i.uz, 0
  br i1 %.not.i.4.i217.us, label %get_unary.exit.thread.i224.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.va = lshr i32 %spec.select.i.i.4.i216.us, 3
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !17
  %i.ve = icmp slt i32 %spec.select.i.i.4.i216.us, %i.tb
  %i.vf = zext i1 %i.ve to i32
  %spec.select.i.i.5.i218.us = add i32 %spec.select.i.i.4.i216.us, %i.vf ; 5 uses
  %i.vg = zext i8 %i.vd to i32
  %i.vh = and i32 %spec.select.i.i.4.i216.us, 7
  store i32 %spec.select.i.i.5.i218.us, ptr %i.ag, align 8, !tbaa !45
  %i.vi = shl nuw nsw i32 1, %i.vh
  %i.vj = and i32 %i.vi, %i.vg
  %.not.i.5.i219.us = icmp eq i32 %i.vj, 0
  br i1 %.not.i.5.i219.us, label %get_unary.exit.thread.i224.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.vk = lshr i32 %spec.select.i.i.5.i218.us, 3
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !17
  %i.vo = icmp slt i32 %spec.select.i.i.5.i218.us, %i.tb
  %i.vp = zext i1 %i.vo to i32
  %spec.select.i.i.6.i220.us = add i32 %spec.select.i.i.5.i218.us, %i.vp ; 5 uses
  %i.vq = zext i8 %i.vn to i32
  %i.vr = and i32 %spec.select.i.i.5.i218.us, 7
  store i32 %spec.select.i.i.6.i220.us, ptr %i.ag, align 8, !tbaa !45
  %i.vs = shl nuw nsw i32 1, %i.vr
  %i.vt = and i32 %i.vs, %i.vq
  %.not.i.6.i221.us = icmp eq i32 %i.vt, 0
  br i1 %.not.i.6.i221.us, label %get_unary.exit.thread.i224.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.vu = lshr i32 %spec.select.i.i.6.i220.us, 3
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !17
  %i.vy = icmp slt i32 %spec.select.i.i.6.i220.us, %i.tb
  %i.vz = zext i1 %i.vy to i32
  %spec.select.i.i.7.i222.us = add i32 %spec.select.i.i.6.i220.us, %i.vz
  %i.wa = zext i8 %i.vx to i32
  %i.wb = and i32 %spec.select.i.i.6.i220.us, 7
  store i32 %spec.select.i.i.7.i222.us, ptr %i.ag, align 8, !tbaa !45
  %i.wc = shl nuw nsw i32 1, %i.wb
  %i.wd = and i32 %i.wc, %i.wa
  %.not.i.7.i223.us = icmp eq i32 %i.wd, 0
  %i.we = select i1 %.not.i.7.i223.us, i64 6, i64 7
  br label %get_unary.exit.thread.i224.us

get_unary.exit.thread.i224.us:                    ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.wf = phi i64 [ %i.we, %bb.aq ], [ 5, %bb.ap ], [ 4, %bb.ao ], [ 3, %bb.an ], [ 2, %bb.am ], [ 1, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !17
  br label %decode_sym.exit228.us

get_unary.exit.i227.us:                           ; preds = %decode_sym.exit206.us
  %i.wi = load i32, ptr %i.to, align 1, !tbaa !17
  %i.wj = and i32 %spec.select.i.i.i208.us, 7
  %i.wk = lshr i32 %i.wi, %i.wj
  %i.wl = add i32 %spec.select.i.i.i208.us, 8
  %i.wm = tail call i32 @llvm.umin.i32(i32 %i.tb, i32 %i.wl)
  store i32 %i.wm, ptr %i.ag, align 8, !tbaa !45
  %i.wn = trunc i32 %i.wk to i8
  br label %decode_sym.exit228.us

decode_sym.exit228.us:                            ; preds = %get_unary.exit.i227.us, %get_unary.exit.thread.i224.us
  %.sink23.i225.us = phi i64 [ %i.wf, %get_unary.exit.thread.i224.us ], [ 7, %get_unary.exit.i227.us ]
  %.0.i226.us = phi i8 [ %i.wh, %get_unary.exit.thread.i224.us ], [ %i.wn, %get_unary.exit.i227.us ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %i.as, i64 %.sink23.i225.us, i1 false)
  store i8 %.0.i226.us, ptr %i.as, align 1, !tbaa !17
  %i.wo = xor i8 %.0.i226.us, -128
  %i.wp = getelementptr inbounds nuw i8, ptr %.0234.us, i64 %i.sy
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.wq = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.wq, label %.preheader229.us, label %._crit_edge.us, !llvm.loop !97

bb.ar:                                            ; preds = %._crit_edge.us
  %i.wr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ws = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.wt = getelementptr inbounds nuw i8, ptr %.0112232.us, i64 %indvars.iv.next
  store i8 %i.ws, ptr %i.wt, align 1, !tbaa !17
  %i.wu = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.wv = add nsw i32 %i.d, %i.wr
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds i8, ptr %.0112232.us, i64 %i.ww
  store i8 %i.wu, ptr %i.wx, align 1, !tbaa !17
  %i.wy = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.aq)
  %i.wz = xor i8 %i.wy, -128
  %i.xa = getelementptr inbounds i8, ptr %.0111233.us, i64 %i.au
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !17
  %i.xb = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.as)
  %i.xc = xor i8 %i.xb, -128
  %i.xd = getelementptr inbounds i8, ptr %.0234.us, i64 %i.au
  store i8 %i.xc, ptr %i.xd, align 1, !tbaa !17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.us
  %i.xe = getelementptr inbounds i8, ptr %.0112232.us, i64 %i.aw ; 2 uses
  %i.xf = getelementptr inbounds i8, ptr %.0111233.us, i64 %i.ax ; 2 uses
  %i.xg = getelementptr inbounds i8, ptr %.0234.us, i64 %i.ay ; 2 uses
  %i.xh = add nuw nsw i32 %.0113231.us, 2         ; 2 uses
  %i.xi = icmp slt i32 %i.xh, %i.ah
  br i1 %i.xi, label %.lr.ph236.split.us, label %.critedge, !llvm.loop !98

._crit_edge.us:                                   ; preds = %decode_sym.exit228.us
  br i1 %.not117, label %bb.as, label %bb.ar

.lr.ph236.split:                                  ; preds = %.lr.ph236
  br i1 %.not117, label %.lr.ph236.split.split.us, label %.lr.ph236.split.split.preheader

.lr.ph236.split.split.preheader:                  ; preds = %.lr.ph236.split
  %6 = and i32 %3, 2147483646
  br label %.lr.ph236.split.split

.lr.ph236.split.split.us:                         ; preds = %.lr.ph236.split
  %.val.us257 = load i32, ptr %i.ag, align 8, !tbaa !45
  %.val118.us258 = load i32, ptr %i.aj, align 4, !tbaa !43
  %i.xj = sub nsw i32 %.val118.us258, %.val.us257
  %.not.us259 = icmp slt i32 %i.xj, %i.am
  br i1 %.not.us259, label %.critedge, label %.preheader229.us260.preheader

.preheader229.us260.preheader:                    ; preds = %.lr.ph236.split.split.us
  %i.xk = add nsw i32 %3, -2                      ; 2 uses
  %i.xl = lshr i32 %i.xk, 1
  %narrow = add nuw nsw i32 %i.xl, 1
  %i.xm = zext nneg i32 %narrow to i64            ; 3 uses
  %i.xn = mul nsw i64 %i.xm, %i.aw
  %i.xo = getelementptr i8, ptr %i.i, i64 %i.xn
  %scevgep = getelementptr i8, ptr %i.xo, i64 %i.k
  %i.xp = mul nsw i64 %i.xm, %i.ax
  %i.xq = getelementptr i8, ptr %i.n, i64 %i.xp
  %scevgep290 = getelementptr i8, ptr %i.xq, i64 %i.q
  %i.xr = mul nsw i64 %i.xm, %i.ay
  %i.xs = getelementptr i8, ptr %i.t, i64 %i.xr
  %scevgep291 = getelementptr i8, ptr %i.xs, i64 %i.w
  %i.xt = and i32 %i.xk, -2
  %i.xu = add nuw nsw i32 %i.xt, 2
  br label %.critedge

.lr.ph236.split.split:                            ; preds = %.lr.ph236.split.split.preheader, %.preheader229
  %.0234 = phi ptr [ %i.yh, %.preheader229 ], [ %i.x, %.lr.ph236.split.split.preheader ] ; 3 uses
  %.0111233 = phi ptr [ %i.yg, %.preheader229 ], [ %i.r, %.lr.ph236.split.split.preheader ] ; 3 uses
  %.0112232 = phi ptr [ %i.yf, %.preheader229 ], [ %i.l, %.lr.ph236.split.split.preheader ] ; 4 uses
  %.0113231 = phi i32 [ %i.yi, %.preheader229 ], [ 0, %.lr.ph236.split.split.preheader ] ; 2 uses
  %.val = load i32, ptr %i.ag, align 8, !tbaa !45
  %.val118 = load i32, ptr %i.aj, align 4, !tbaa !43
  %i.xv = sub nsw i32 %.val118, %.val
  %.not = icmp slt i32 %i.xv, %i.am
  br i1 %.not, label %.critedge, label %.preheader229

.preheader229:                                    ; preds = %.lr.ph236.split.split
  %i.xw = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef %4)
  store i8 %i.xw, ptr %.0112232, align 1, !tbaa !17
  %i.xx = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef %4)
  %i.xy = getelementptr inbounds i8, ptr %.0112232, i64 %i.az
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !17
  %i.xz = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.aq)
  %i.ya = xor i8 %i.xz, -128
  %i.yb = getelementptr inbounds i8, ptr %.0111233, i64 %i.au
  store i8 %i.ya, ptr %i.yb, align 1, !tbaa !17
  %i.yc = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.as)
  %i.yd = xor i8 %i.yc, -128
  %i.ye = getelementptr inbounds i8, ptr %.0234, i64 %i.au
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !17
  %i.yf = getelementptr inbounds i8, ptr %.0112232, i64 %i.aw ; 2 uses
  %i.yg = getelementptr inbounds i8, ptr %.0111233, i64 %i.ax ; 2 uses
  %i.yh = getelementptr inbounds i8, ptr %.0234, i64 %i.ay ; 2 uses
  %i.yi = add nuw nsw i32 %.0113231, 2            ; 2 uses
  %i.yj = icmp slt i32 %i.yi, %i.ah
  br i1 %i.yj, label %.lr.ph236.split.split, label %.critedge, !llvm.loop !98

.critedge:                                        ; preds = %.lr.ph236.split.split, %.preheader229, %.lr.ph236.split.us, %bb.as, %.preheader229.us260.preheader, %.lr.ph236.split.split.us, %bb.a
  %.0113.lcssa = phi i32 [ 0, %bb.a ], [ %i.xu, %.preheader229.us260.preheader ], [ 0, %.lr.ph236.split.split.us ], [ %5, %bb.as ], [ %.0113231.us, %.lr.ph236.split.us ], [ %6, %.preheader229 ], [ %.0113231, %.lr.ph236.split.split ]
  %.0112.lcssa = phi ptr [ %i.l, %bb.a ], [ %scevgep, %.preheader229.us260.preheader ], [ %i.l, %.lr.ph236.split.split.us ], [ %i.xe, %bb.as ], [ %.0112232.us, %.lr.ph236.split.us ], [ %i.yf, %.preheader229 ], [ %.0112232, %.lr.ph236.split.split ] ; 2 uses
  %.0111.lcssa = phi ptr [ %i.r, %bb.a ], [ %scevgep290, %.preheader229.us260.preheader ], [ %i.r, %.lr.ph236.split.split.us ], [ %i.xf, %bb.as ], [ %.0111233.us, %.lr.ph236.split.us ], [ %i.yg, %.preheader229 ], [ %.0111233, %.lr.ph236.split.split ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.x, %bb.a ], [ %scevgep291, %.preheader229.us260.preheader ], [ %i.x, %.lr.ph236.split.split.us ], [ %i.xg, %bb.as ], [ %.0234.us, %.lr.ph236.split.us ], [ %i.yh, %.preheader229 ], [ %.0234, %.lr.ph236.split.split ] ; 2 uses
  %.not115 = icmp eq i32 %i.ac, 0
  br i1 %.not115, label %bb.av, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.yk = icmp sgt i32 %.fr278, 0
  br i1 %i.yk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.yl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.yn = zext nneg i32 %.fr278 to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph, %bb.at
  %indvars.iv293 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next294, %bb.at ] ; 3 uses
  %i.yo = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef %4)
  %i.yp = getelementptr inbounds nuw i8, ptr %.0112.lcssa, i64 %indvars.iv293
  store i8 %i.yo, ptr %i.yp, align 1, !tbaa !17
  %i.yq = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.yl)
  %i.yr = xor i8 %i.yq, -128
  %i.ys = lshr exact i64 %indvars.iv293, 1        ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0111.lcssa, i64 %i.ys
  store i8 %i.yr, ptr %i.yt, align 1, !tbaa !17
  %i.yu = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.ym)
  %i.yv = xor i8 %i.yu, -128
  %i.yw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.ys
  store i8 %i.yv, ptr %i.yw, align 1, !tbaa !17
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 2 ; 3 uses
  %i.yx = icmp samesign ult i64 %indvars.iv.next294, %i.yn
  br i1 %i.yx, label %bb.at, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.at, %.preheader
  %.1.lcssa = phi i64 [ 0, %.preheader ], [ %indvars.iv.next294, %bb.at ]
  %.not116 = icmp eq i32 %i.ab, 0
  br i1 %.not116, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.yy = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef %4)
  %i.yz = getelementptr inbounds nuw i8, ptr %.0112.lcssa, i64 %.1.lcssa
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !17
  %i.za = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zb = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.za)
  %i.zc = xor i8 %i.zb, -128
  %i.zd = sext i32 %i.af to i64                   ; 2 uses
  %i.ze = getelementptr inbounds i8, ptr %.0111.lcssa, i64 %i.zd
  store i8 %i.zc, ptr %i.ze, align 1, !tbaa !17
  %i.zf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zg = tail call fastcc zeroext i8 @decode_sym(ptr noundef %0, ptr noundef nonnull %i.zf)
  %i.zh = xor i8 %i.zg, -128
  %i.zi = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.zd
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !17
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.au, %.critedge
  ret i32 %.0113.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @dx2_decode_slice_410(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !34
  %i.j = mul nsw i32 %i.d, %2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = ashr i32 %i.f, 2
  %i.p = mul nsw i32 %i.o, %2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.u = ashr i32 %i.h, 2
  %i.v = mul nsw i32 %i.u, %2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.z = load i32, ptr %i.y, align 4, !tbaa !47
  %i.aa = and i32 %i.b, 3                         ; 7 uses
  %i.ab = and i32 %i.z, 3                         ; 4 uses
  %i.ac = add nsw i32 %i.b, 3
  %i.ad = ashr i32 %i.ac, 2
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 8         ; 101 uses
  %i.ag = add nsw i32 %3, -3
  %i.ah = icmp sgt i32 %3, 3
  br i1 %i.ah, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.ai = and i32 %i.b, -4                        ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 12
  %i.ak = mul nsw i32 %i.ai, 9
  %i.al = ashr exact i32 %i.ak, 1
  %i.am = shl nuw nsw i32 %i.aa, 2
  %i.an = add nsw i32 %i.al, %i.am
  %.not = icmp eq i32 %i.aa, 0                    ; 2 uses
  %i.ao = select i1 %.not, i32 0, i32 2
  %i.ap = add nsw i32 %i.an, %i.ao
  %i.aq = icmp sgt i32 %i.b, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.ax = sext i32 %i.ae to i64                   ; 2 uses
  %i.ay = shl nsw i32 %i.d, 2
  %i.az = sext i32 %i.ay to i64
  %i.ba = sext i32 %i.f to i64
  %i.bb = sext i32 %i.h to i64
  %i.bc = sext i32 %i.ai to i64
  %5 = and i32 %3, 2147483644
  %exitcond300.not = icmp eq i32 %i.aa, 1
  %exitcond300.not.1 = icmp eq i32 %i.aa, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.az
  %.0273 = phi ptr [ %i.x, %.lr.ph ], [ %i.xs, %bb.az ] ; 4 uses
  %.0127272 = phi ptr [ %i.r, %.lr.ph ], [ %i.xr, %bb.az ] ; 4 uses
  %.0128271 = phi ptr [ %i.l, %.lr.ph ], [ %i.xq, %bb.az ] ; 6 uses
  %.0134270 = phi i32 [ 0, %.lr.ph ], [ %i.xt, %bb.az ] ; 2 uses
  %.val = load i32, ptr %i.af, align 8, !tbaa !45
  %.val145 = load i32, ptr %i.aj, align 4, !tbaa !43
  %i.bd = sub nsw i32 %.val145, %.val
  %.not142 = icmp slt i32 %i.bd, %i.ap
  br i1 %.not142, label %.critedge, label %.preheader264

.preheader264:                                    ; preds = %bb.b
  br i1 %i.aq, label %.preheader262, label %._crit_edge

.preheader262:                                    ; preds = %.preheader264, %decode_sym.exit189
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %decode_sym.exit189 ], [ 0, %.preheader264 ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv294 to i32
  br label %.preheader260

.preheader260:                                    ; preds = %.preheader262, %bb.k
  %.0129266 = phi i32 [ 0, %.preheader262 ], [ %i.ez, %bb.k ] ; 2 uses
  %i.bf = mul nsw i32 %.0129266, %i.d
  %i.bg = add i32 %i.bf, %i.be
  br label %bb.c

bb.c:                                             ; preds = %.preheader260, %decode_sym.exit
  %indvars.iv = phi i64 [ 0, %.preheader260 ], [ %indvars.iv.next, %decode_sym.exit ] ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !42    ; 8 uses
  %i.bi = load i32, ptr %i.ar, align 8, !tbaa !44 ; 9 uses
  %.promoted.i.i = load i32, ptr %i.af, align 8, !tbaa !45 ; 4 uses
  %i.bj = lshr i32 %.promoted.i.i, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = icmp slt i32 %.promoted.i.i, %i.bi
  %i.bo = zext i1 %i.bn to i32
  %spec.select.i.i.i = add i32 %.promoted.i.i, %i.bo ; 7 uses
  %i.bp = zext i8 %i.bm to i32
  %i.bq = and i32 %.promoted.i.i, 7
  store i32 %spec.select.i.i.i, ptr %i.af, align 8, !tbaa !45
  %i.br = shl nuw nsw i32 1, %i.bq
  %i.bs = and i32 %i.br, %i.bp
  %.not.i.i = icmp eq i32 %i.bs, 0
  %i.bt = lshr i32 %spec.select.i.i.i, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu ; 2 uses
  br i1 %.not.i.i, label %get_unary.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = icmp slt i32 %spec.select.i.i.i, %i.bi
  %i.by = zext i1 %i.bx to i32
  %spec.select.i.i.1.i = add i32 %spec.select.i.i.i, %i.by ; 5 uses
  %i.bz = zext i8 %i.bw to i32
  %i.ca = and i32 %spec.select.i.i.i, 7
  store i32 %spec.select.i.i.1.i, ptr %i.af, align 8, !tbaa !45
  %i.cb = shl nuw nsw i32 1, %i.ca
  %i.cc = and i32 %i.cb, %i.bz
  %.not.i.1.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.1.i, label %get_unary.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cd = lshr i32 %spec.select.i.i.1.i, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = icmp slt i32 %spec.select.i.i.1.i, %i.bi
  %i.ci = zext i1 %i.ch to i32
  %spec.select.i.i.2.i = add i32 %spec.select.i.i.1.i, %i.ci ; 5 uses
  %i.cj = zext i8 %i.cg to i32
  %i.ck = and i32 %spec.select.i.i.1.i, 7
  store i32 %spec.select.i.i.2.i, ptr %i.af, align 8, !tbaa !45
  %i.cl = shl nuw nsw i32 1, %i.ck
  %i.cm = and i32 %i.cl, %i.cj
  %.not.i.2.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.2.i, label %get_unary.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = lshr i32 %spec.select.i.i.2.i, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17
  %i.cr = icmp slt i32 %spec.select.i.i.2.i, %i.bi
  %i.cs = zext i1 %i.cr to i32
  %spec.select.i.i.3.i = add i32 %spec.select.i.i.2.i, %i.cs ; 5 uses
  %i.ct = zext i8 %i.cq to i32
  %i.cu = and i32 %spec.select.i.i.2.i, 7
  store i32 %spec.select.i.i.3.i, ptr %i.af, align 8, !tbaa !45
  %i.cv = shl nuw nsw i32 1, %i.cu
  %i.cw = and i32 %i.cv, %i.ct
  %.not.i.3.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.3.i, label %get_unary.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = lshr i32 %spec.select.i.i.3.i, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.db = icmp slt i32 %spec.select.i.i.3.i, %i.bi
  %i.dc = zext i1 %i.db to i32
  %spec.select.i.i.4.i = add i32 %spec.select.i.i.3.i, %i.dc ; 5 uses
  %i.dd = zext i8 %i.da to i32
  %i.de = and i32 %spec.select.i.i.3.i, 7
  store i32 %spec.select.i.i.4.i, ptr %i.af, align 8, !tbaa !45
  %i.df = shl nuw nsw i32 1, %i.de
  %i.dg = and i32 %i.df, %i.dd
  %.not.i.4.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.4.i, label %get_unary.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dh = lshr i32 %spec.select.i.i.4.i, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = icmp slt i32 %spec.select.i.i.4.i, %i.bi
  %i.dm = zext i1 %i.dl to i32
  %spec.select.i.i.5.i = add i32 %spec.select.i.i.4.i, %i.dm ; 5 uses
  %i.dn = zext i8 %i.dk to i32
  %i.do = and i32 %spec.select.i.i.4.i, 7
  store i32 %spec.select.i.i.5.i, ptr %i.af, align 8, !tbaa !45
  %i.dp = shl nuw nsw i32 1, %i.do
  %i.dq = and i32 %i.dp, %i.dn
  %.not.i.5.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.5.i, label %get_unary.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = lshr i32 %spec.select.i.i.5.i, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17
  %i.dv = icmp slt i32 %spec.select.i.i.5.i, %i.bi
  %i.dw = zext i1 %i.dv to i32
  %spec.select.i.i.6.i = add i32 %spec.select.i.i.5.i, %i.dw ; 5 uses
  %i.dx = zext i8 %i.du to i32
  %i.dy = and i32 %spec.select.i.i.5.i, 7
  store i32 %spec.select.i.i.6.i, ptr %i.af, align 8, !tbaa !45
  %i.dz = shl nuw nsw i32 1, %i.dy
  %i.ea = and i32 %i.dz, %i.dx
  %.not.i.6.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.6.i, label %get_unary.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = lshr i32 %spec.select.i.i.6.i, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !17
  %i.ef = icmp slt i32 %spec.select.i.i.6.i, %i.bi
  %i.eg = zext i1 %i.ef to i32
  %spec.select.i.i.7.i = add i32 %spec.select.i.i.6.i, %i.eg
  %i.eh = zext i8 %i.ee to i32
  %i.ei = and i32 %spec.select.i.i.6.i, 7
  store i32 %spec.select.i.i.7.i, ptr %i.af, align 8, !tbaa !45
  %i.ej = shl nuw nsw i32 1, %i.ei
  %i.ek = and i32 %i.ej, %i.eh
  %.not.i.7.i = icmp eq i32 %i.ek, 0
  %i.el = select i1 %.not.i.7.i, i64 6, i64 7
  br label %get_unary.exit.thread.i

get_unary.exit.i:                                 ; preds = %bb.c
  %i.em = load i32, ptr %i.bv, align 1, !tbaa !17
  %i.en = and i32 %spec.select.i.i.i, 7
  %i.eo = lshr i32 %i.em, %i.en
  %i.ep = add i32 %spec.select.i.i.i, 8
  %i.eq = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.ep)
  store i32 %i.eq, ptr %i.af, align 8, !tbaa !45
  %i.er = trunc i32 %i.eo to i8
  br label %decode_sym.exit

get_unary.exit.thread.i:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.es = phi i64 [ %i.el, %bb.j ], [ 5, %bb.i ], [ 4, %bb.h ], [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !17
  br label %decode_sym.exit

decode_sym.exit:                                  ; preds = %get_unary.exit.i, %get_unary.exit.thread.i
  %.sink23.i = phi i64 [ %i.es, %get_unary.exit.thread.i ], [ 7, %get_unary.exit.i ]
  %.0.i = phi i8 [ %i.eu, %get_unary.exit.thread.i ], [ %i.er, %get_unary.exit.i ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %4, i64 %.sink23.i, i1 false)
  store i8 %.0.i, ptr %4, align 1, !tbaa !17
  %i.ev = trunc nuw nsw i64 %indvars.iv to i32
  %i.ew = add i32 %i.bg, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %.0128271, i64 %i.ex
  store i8 %.0.i, ptr %i.ey, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.k, label %bb.c, !llvm.loop !100

bb.k:                                             ; preds = %decode_sym.exit
  %i.ez = add nuw nsw i32 %.0129266, 1            ; 2 uses
  %exitcond293.not = icmp eq i32 %i.ez, 4
  br i1 %exitcond293.not, label %bb.l, label %.preheader260, !llvm.loop !101

bb.l:                                             ; preds = %bb.k
  %i.fa = load ptr, ptr %0, align 8, !tbaa !42    ; 8 uses
  %i.fb = load i32, ptr %i.ar, align 8, !tbaa !44 ; 9 uses
end_hunk_1
begin_hunk_2_@dx2_decode_slice_410:bb.a
get_unary.exit.i210.1:                            ; preds = %bb.ah
  %i.tj = load i32, ptr %i.qp, align 1, !tbaa !17
  %i.tk = and i32 %spec.select.i.i.i191.1, 7
  %i.tl = lshr i32 %i.tj, %i.tk
  %i.tm = add i32 %spec.select.i.i.i191.1, 8
  %i.tn = tail call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.tm)
  store i32 %i.tn, ptr %i.af, align 8, !tbaa !45
  %i.to = trunc i32 %i.tl to i8
  br label %decode_sym.exit211.1

decode_sym.exit211.1:                             ; preds = %get_unary.exit.i210.1, %get_unary.exit.thread.i207.1
  %.sink23.i208.1 = phi i64 [ %i.tg, %get_unary.exit.thread.i207.1 ], [ 7, %get_unary.exit.i210.1 ]
  %.0.i209.1 = phi i8 [ %i.ti, %get_unary.exit.thread.i207.1 ], [ %i.to, %get_unary.exit.i210.1 ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %4, i64 %.sink23.i208.1, i1 false)
  store i8 %.0.i209.1, ptr %4, align 1, !tbaa !17
  %i.tp = add i32 %i.mk, 1
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds i8, ptr %.0128271, i64 %i.tq
  store i8 %.0.i209.1, ptr %i.tr, align 1, !tbaa !17
  br i1 %exitcond300.not.1, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %decode_sym.exit211.1
  %i.ts = load ptr, ptr %0, align 8, !tbaa !42    ; 8 uses
  %i.tt = load i32, ptr %i.ar, align 8, !tbaa !44 ; 9 uses
  %.promoted.i.i190.2 = load i32, ptr %i.af, align 8, !tbaa !45 ; 4 uses
  %i.tu = lshr i32 %.promoted.i.i190.2, 3
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tv
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !17
  %i.ty = icmp slt i32 %.promoted.i.i190.2, %i.tt
  %i.tz = zext i1 %i.ty to i32
  %spec.select.i.i.i191.2 = add i32 %.promoted.i.i190.2, %i.tz ; 7 uses
  %i.ua = zext i8 %i.tx to i32
  %i.ub = and i32 %.promoted.i.i190.2, 7
  store i32 %spec.select.i.i.i191.2, ptr %i.af, align 8, !tbaa !45
  %i.uc = shl nuw nsw i32 1, %i.ub
  %i.ud = and i32 %i.uc, %i.ua
  %.not.i.i192.2 = icmp eq i32 %i.ud, 0
  %i.ue = lshr i32 %spec.select.i.i.i191.2, 3
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.uf ; 2 uses
  br i1 %.not.i.i192.2, label %get_unary.exit.i210.2, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !17
  %i.ui = icmp slt i32 %spec.select.i.i.i191.2, %i.tt
  %i.uj = zext i1 %i.ui to i32
  %spec.select.i.i.1.i193.2 = add i32 %spec.select.i.i.i191.2, %i.uj ; 5 uses
  %i.uk = zext i8 %i.uh to i32
  %i.ul = and i32 %spec.select.i.i.i191.2, 7
  store i32 %spec.select.i.i.1.i193.2, ptr %i.af, align 8, !tbaa !45
  %i.um = shl nuw nsw i32 1, %i.ul
  %i.un = and i32 %i.um, %i.uk
  %.not.i.1.i194.2 = icmp eq i32 %i.un, 0
  br i1 %.not.i.1.i194.2, label %get_unary.exit.thread.i207.2, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.uo = lshr i32 %spec.select.i.i.1.i193.2, 3
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.up
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !17
  %i.us = icmp slt i32 %spec.select.i.i.1.i193.2, %i.tt
  %i.ut = zext i1 %i.us to i32
  %spec.select.i.i.2.i195.2 = add i32 %spec.select.i.i.1.i193.2, %i.ut ; 5 uses
  %i.uu = zext i8 %i.ur to i32
  %i.uv = and i32 %spec.select.i.i.1.i193.2, 7
  store i32 %spec.select.i.i.2.i195.2, ptr %i.af, align 8, !tbaa !45
  %i.uw = shl nuw nsw i32 1, %i.uv
  %i.ux = and i32 %i.uw, %i.uu
  %.not.i.2.i196.2 = icmp eq i32 %i.ux, 0
  br i1 %.not.i.2.i196.2, label %get_unary.exit.thread.i207.2, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.uy = lshr i32 %spec.select.i.i.2.i195.2, 3
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !17
  %i.vc = icmp slt i32 %spec.select.i.i.2.i195.2, %i.tt
  %i.vd = zext i1 %i.vc to i32
  %spec.select.i.i.3.i197.2 = add i32 %spec.select.i.i.2.i195.2, %i.vd ; 5 uses
  %i.ve = zext i8 %i.vb to i32
  %i.vf = and i32 %spec.select.i.i.2.i195.2, 7
  store i32 %spec.select.i.i.3.i197.2, ptr %i.af, align 8, !tbaa !45
  %i.vg = shl nuw nsw i32 1, %i.vf
  %i.vh = and i32 %i.vg, %i.ve
  %.not.i.3.i198.2 = icmp eq i32 %i.vh, 0
  br i1 %.not.i.3.i198.2, label %get_unary.exit.thread.i207.2, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.vi = lshr i32 %spec.select.i.i.3.i197.2, 3
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !17
  %i.vm = icmp slt i32 %spec.select.i.i.3.i197.2, %i.tt
  %i.vn = zext i1 %i.vm to i32
  %spec.select.i.i.4.i199.2 = add i32 %spec.select.i.i.3.i197.2, %i.vn ; 5 uses
  %i.vo = zext i8 %i.vl to i32
  %i.vp = and i32 %spec.select.i.i.3.i197.2, 7
  store i32 %spec.select.i.i.4.i199.2, ptr %i.af, align 8, !tbaa !45
  %i.vq = shl nuw nsw i32 1, %i.vp
  %i.vr = and i32 %i.vq, %i.vo
  %.not.i.4.i200.2 = icmp eq i32 %i.vr, 0
  br i1 %.not.i.4.i200.2, label %get_unary.exit.thread.i207.2, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vs = lshr i32 %spec.select.i.i.4.i199.2, 3
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !17
  %i.vw = icmp slt i32 %spec.select.i.i.4.i199.2, %i.tt
  %i.vx = zext i1 %i.vw to i32
  %spec.select.i.i.5.i201.2 = add i32 %spec.select.i.i.4.i199.2, %i.vx ; 5 uses
  %i.vy = zext i8 %i.vv to i32
  %i.vz = and i32 %spec.select.i.i.4.i199.2, 7
  store i32 %spec.select.i.i.5.i201.2, ptr %i.af, align 8, !tbaa !45
  %i.wa = shl nuw nsw i32 1, %i.vz
  %i.wb = and i32 %i.wa, %i.vy
  %.not.i.5.i202.2 = icmp eq i32 %i.wb, 0
  br i1 %.not.i.5.i202.2, label %get_unary.exit.thread.i207.2, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.wc = lshr i32 %spec.select.i.i.5.i201.2, 3
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !17
  %i.wg = icmp slt i32 %spec.select.i.i.5.i201.2, %i.tt
  %i.wh = zext i1 %i.wg to i32
  %spec.select.i.i.6.i203.2 = add i32 %spec.select.i.i.5.i201.2, %i.wh ; 5 uses
  %i.wi = zext i8 %i.wf to i32
  %i.wj = and i32 %spec.select.i.i.5.i201.2, 7
  store i32 %spec.select.i.i.6.i203.2, ptr %i.af, align 8, !tbaa !45
  %i.wk = shl nuw nsw i32 1, %i.wj
  %i.wl = and i32 %i.wk, %i.wi
  %.not.i.6.i204.2 = icmp eq i32 %i.wl, 0
  br i1 %.not.i.6.i204.2, label %get_unary.exit.thread.i207.2, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.wm = lshr i32 %spec.select.i.i.6.i203.2, 3
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !17
  %i.wq = icmp slt i32 %spec.select.i.i.6.i203.2, %i.tt
  %i.wr = zext i1 %i.wq to i32
  %spec.select.i.i.7.i205.2 = add i32 %spec.select.i.i.6.i203.2, %i.wr
  %i.ws = zext i8 %i.wp to i32
  %i.wt = and i32 %spec.select.i.i.6.i203.2, 7
  store i32 %spec.select.i.i.7.i205.2, ptr %i.af, align 8, !tbaa !45
  %i.wu = shl nuw nsw i32 1, %i.wt
  %i.wv = and i32 %i.wu, %i.ws
  %.not.i.7.i206.2 = icmp eq i32 %i.wv, 0
  %i.ww = select i1 %.not.i.7.i206.2, i64 6, i64 7
  br label %get_unary.exit.thread.i207.2

get_unary.exit.thread.i207.2:                     ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.wx = phi i64 [ %i.ww, %bb.aw ], [ 5, %bb.av ], [ 4, %bb.au ], [ 3, %bb.at ], [ 2, %bb.as ], [ 1, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %4, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !17
  br label %decode_sym.exit211.2

get_unary.exit.i210.2:                            ; preds = %bb.ap
  %i.xa = load i32, ptr %i.ug, align 1, !tbaa !17
  %i.xb = and i32 %spec.select.i.i.i191.2, 7
  %i.xc = lshr i32 %i.xa, %i.xb
  %i.xd = add i32 %spec.select.i.i.i191.2, 8
  %i.xe = tail call i32 @llvm.umin.i32(i32 %i.tt, i32 %i.xd)
  store i32 %i.xe, ptr %i.af, align 8, !tbaa !45
  %i.xf = trunc i32 %i.xc to i8
  br label %decode_sym.exit211.2

decode_sym.exit211.2:                             ; preds = %get_unary.exit.i210.2, %get_unary.exit.thread.i207.2
  %.sink23.i208.2 = phi i64 [ %i.wx, %get_unary.exit.thread.i207.2 ], [ 7, %get_unary.exit.i210.2 ]
  %.0.i209.2 = phi i8 [ %i.wz, %get_unary.exit.thread.i207.2 ], [ %i.xf, %get_unary.exit.i210.2 ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %4, i64 %.sink23.i208.2, i1 false)
  store i8 %.0.i209.2, ptr %4, align 1, !tbaa !17
  %i.xg = add i32 %i.mk, 2
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %.0128271, i64 %i.xh
  store i8 %.0.i209.2, ptr %i.xi, align 1, !tbaa !17
  br label %bb.ax

bb.ax:                                            ; preds = %decode_sym.exit211.2, %decode_sym.exit211.1, %decode_sym.exit211
  %i.xj = add nuw nsw i32 %.1269, 1               ; 2 uses
  %exitcond301.not = icmp eq i32 %i.xj, 4
  br i1 %exitcond301.not, label %bb.ay, label %.preheader261, !llvm.loop !103

bb.ay:                                            ; preds = %bb.ax
  %i.xk = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.at)
  %i.xl = xor i8 %i.xk, -128
  %i.xm = getelementptr inbounds i8, ptr %.0127272, i64 %i.ax
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !17
  %i.xn = tail call fastcc zeroext i8 @decode_sym(ptr noundef nonnull %0, ptr noundef nonnull %i.av)
  %i.xo = xor i8 %i.xn, -128
  %i.xp = getelementptr inbounds i8, ptr %.0273, i64 %i.ax
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !17
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge
  %i.xq = getelementptr inbounds i8, ptr %.0128271, i64 %i.az ; 2 uses
  %i.xr = getelementptr inbounds i8, ptr %.0127272, i64 %i.ba ; 2 uses
  %i.xs = getelementptr inbounds i8, ptr %.0273, i64 %i.bb ; 2 uses
  %i.xt = add nuw nsw i32 %.0134270, 4            ; 2 uses
  %i.xu = icmp slt i32 %i.xt, %i.ag
  br i1 %i.xu, label %bb.b, label %.critedge, !llvm.loop !104

.critedge:                                        ; preds = %bb.b, %bb.az, %bb.a
  %.0134.lcssa = phi i32 [ 0, %bb.a ], [ %5, %bb.az ], [ %.0134270, %bb.b ] ; 2 uses
  %.0128.lcssa = phi ptr [ %i.l, %bb.a ], [ %i.xq, %bb.az ], [ %.0128271, %bb.b ] ; 4 uses
  %.0127.lcssa = phi ptr [ %i.r, %bb.a ], [ %i.xr, %bb.az ], [ %.0127272, %bb.b ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.x, %bb.a ], [ %i.xs, %bb.az ], [ %.0273, %bb.b ] ; 2 uses
  %.not143 = icmp ne i32 %i.ab, 0
  %i.xv = or disjoint i32 %.0134.lcssa, %i.ab
  %i.xw = icmp eq i32 %i.xv, %3
  %or.cond = select i1 %.not143, i1 %i.xw, i1 false
  br i1 %or.cond, label %.preheader259, label %bb.cj

.preheader259:                                    ; preds = %.critedge
  %i.xx = icmp sgt i32 %i.b, 0
  br i1 %i.xx, label %.preheader258.lr.ph, label %._crit_edge287

.preheader258.lr.ph:                              ; preds = %.preheader259
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xz = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ya = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.yc = zext nneg i32 %i.b to i64
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader258.lr.ph, %bb.bj
  %indvars.iv307 = phi i64 [ 0, %.preheader258.lr.ph ], [ %indvars.iv.next308, %bb.bj ] ; 3 uses
  %i.yd = trunc nuw nsw i64 %indvars.iv307 to i32
  br label %.preheader257

.preheader257:                                    ; preds = %.preheader258, %bb.bi
  %.2285 = phi i32 [ 0, %.preheader258 ], [ %i.aby, %bb.bi ] ; 2 uses
  %i.ye = mul nsw i32 %.2285, %i.d
  %i.yf = add i32 %i.ye, %i.yd
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader257, %decode_sym.exit233
  %indvars.iv302 = phi i64 [ 0, %.preheader257 ], [ %indvars.iv.next303, %decode_sym.exit233 ] ; 2 uses
  %i.yg = load ptr, ptr %0, align 8, !tbaa !42    ; 8 uses
  %i.yh = load i32, ptr %i.xy, align 8, !tbaa !44 ; 9 uses
  %.promoted.i.i212 = load i32, ptr %i.af, align 8, !tbaa !45 ; 4 uses
  %i.yi = lshr i32 %.promoted.i.i212, 3
  %i.yj = zext nneg i32 %i.yi to i64
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !17
  %i.ym = icmp slt i32 %.promoted.i.i212, %i.yh
  %i.yn = zext i1 %i.ym to i32
  %spec.select.i.i.i213 = add i32 %.promoted.i.i212, %i.yn ; 7 uses
  %i.yo = zext i8 %i.yl to i32
  %i.yp = and i32 %.promoted.i.i212, 7
  store i32 %spec.select.i.i.i213, ptr %i.af, align 8, !tbaa !45
  %i.yq = shl nuw nsw i32 1, %i.yp
  %i.yr = and i32 %i.yq, %i.yo
  %.not.i.i214 = icmp eq i32 %i.yr, 0
  %i.ys = lshr i32 %spec.select.i.i.i213, 3
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yt ; 2 uses
  br i1 %.not.i.i214, label %get_unary.exit.i232, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !17
  %i.yw = icmp slt i32 %spec.select.i.i.i213, %i.yh
  %i.yx = zext i1 %i.yw to i32
  %spec.select.i.i.1.i215 = add i32 %spec.select.i.i.i213, %i.yx ; 5 uses
  %i.yy = zext i8 %i.yv to i32
  %i.yz = and i32 %spec.select.i.i.i213, 7
  store i32 %spec.select.i.i.1.i215, ptr %i.af, align 8, !tbaa !45
  %i.za = shl nuw nsw i32 1, %i.yz
  %i.zb = and i32 %i.za, %i.yy
  %.not.i.1.i216 = icmp eq i32 %i.zb, 0
  br i1 %.not.i.1.i216, label %get_unary.exit.thread.i229, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.zc = lshr i32 %spec.select.i.i.1.i215, 3
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !17
  %i.zg = icmp slt i32 %spec.select.i.i.1.i215, %i.yh
  %i.zh = zext i1 %i.zg to i32
  %spec.select.i.i.2.i217 = add i32 %spec.select.i.i.1.i215, %i.zh ; 5 uses
  %i.zi = zext i8 %i.zf to i32
  %i.zj = and i32 %spec.select.i.i.1.i215, 7
  store i32 %spec.select.i.i.2.i217, ptr %i.af, align 8, !tbaa !45
  %i.zk = shl nuw nsw i32 1, %i.zj
  %i.zl = and i32 %i.zk, %i.zi
  %.not.i.2.i218 = icmp eq i32 %i.zl, 0
  br i1 %.not.i.2.i218, label %get_unary.exit.thread.i229, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.zm = lshr i32 %spec.select.i.i.2.i217, 3
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !17
  %i.zq = icmp slt i32 %spec.select.i.i.2.i217, %i.yh
  %i.zr = zext i1 %i.zq to i32
  %spec.select.i.i.3.i219 = add i32 %spec.select.i.i.2.i217, %i.zr ; 5 uses
  %i.zs = zext i8 %i.zp to i32
  %i.zt = and i32 %spec.select.i.i.2.i217, 7
  store i32 %spec.select.i.i.3.i219, ptr %i.af, align 8, !tbaa !45
  %i.zu = shl nuw nsw i32 1, %i.zt
  %i.zv = and i32 %i.zu, %i.zs
  %.not.i.3.i220 = icmp eq i32 %i.zv, 0
  br i1 %.not.i.3.i220, label %get_unary.exit.thread.i229, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.zw = lshr i32 %spec.select.i.i.3.i219, 3
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !17
  %i.aaa = icmp slt i32 %spec.select.i.i.3.i219, %i.yh
  %i.aab = zext i1 %i.aaa to i32
  %spec.select.i.i.4.i221 = add i32 %spec.select.i.i.3.i219, %i.aab ; 5 uses
  %i.aac = zext i8 %i.zz to i32
  %i.aad = and i32 %spec.select.i.i.3.i219, 7
  store i32 %spec.select.i.i.4.i221, ptr %i.af, align 8, !tbaa !45
  %i.aae = shl nuw nsw i32 1, %i.aad
  %i.aaf = and i32 %i.aae, %i.aac
  %.not.i.4.i222 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i.4.i222, label %get_unary.exit.thread.i229, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aag = lshr i32 %spec.select.i.i.4.i221, 3
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !17
  %i.aak = icmp slt i32 %spec.select.i.i.4.i221, %i.yh
  %i.aal = zext i1 %i.aak to i32
  %spec.select.i.i.5.i223 = add i32 %spec.select.i.i.4.i221, %i.aal ; 5 uses
  %i.aam = zext i8 %i.aaj to i32
  %i.aan = and i32 %spec.select.i.i.4.i221, 7
  store i32 %spec.select.i.i.5.i223, ptr %i.af, align 8, !tbaa !45
  %i.aao = shl nuw nsw i32 1, %i.aan
  %i.aap = and i32 %i.aao, %i.aam
  %.not.i.5.i224 = icmp eq i32 %i.aap, 0
  br i1 %.not.i.5.i224, label %get_unary.exit.thread.i229, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.aaq = lshr i32 %spec.select.i.i.5.i223, 3
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !17
  %i.aau = icmp slt i32 %spec.select.i.i.5.i223, %i.yh
  %i.aav = zext i1 %i.aau to i32
  %spec.select.i.i.6.i225 = add i32 %spec.select.i.i.5.i223, %i.aav ; 5 uses
  %i.aaw = zext i8 %i.aat to i32
  %i.aax = and i32 %spec.select.i.i.5.i223, 7
  store i32 %spec.select.i.i.6.i225, ptr %i.af, align 8, !tbaa !45
  %i.aay = shl nuw nsw i32 1, %i.aax
  %i.aaz = and i32 %i.aay, %i.aaw
  %.not.i.6.i226 = icmp eq i32 %i.aaz, 0
  br i1 %.not.i.6.i226, label %get_unary.exit.thread.i229, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aba = lshr i32 %spec.select.i.i.6.i225, 3
  %i.abb = zext nneg i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.abb
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !17
  %i.abe = icmp slt i32 %spec.select.i.i.6.i225, %i.yh
  %i.abf = zext i1 %i.abe to i32
  %spec.select.i.i.7.i227 = add i32 %spec.select.i.i.6.i225, %i.abf
  %i.abg = zext i8 %i.abd to i32
  %i.abh = and i32 %spec.select.i.i.6.i225, 7
  store i32 %spec.select.i.i.7.i227, ptr %i.af, align 8, !tbaa !45
  %i.abi = shl nuw nsw i32 1, %i.abh
  %i.abj = and i32 %i.abi, %i.abg
  %.not.i.7.i228 = icmp eq i32 %i.abj, 0
  %i.abk = select i1 %.not.i.7.i228, i64 6, i64 7
  br label %get_unary.exit.thread.i229

get_unary.exit.i232:                              ; preds = %bb.ba
  %i.abl = load i32, ptr %i.yu, align 1, !tbaa !17
  %i.abm = and i32 %spec.select.i.i.i213, 7
  %i.abn = lshr i32 %i.abl, %i.abm
  %i.abo = add i32 %spec.select.i.i.i213, 8
  %i.abp = tail call i32 @llvm.umin.i32(i32 %i.yh, i32 %i.abo)
  store i32 %i.abp, ptr %i.af, align 8, !tbaa !45
  %i.abq = trunc i32 %i.abn to i8
  br label %decode_sym.exit233

get_unary.exit.thread.i229:                       ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.abr = phi i64 [ %i.abk, %bb.bh ], [ 5, %bb.bg ], [ 4, %bb.bf ], [ 3, %bb.be ], [ 2, %bb.bd ], [ 1, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %4, i64 %i.abr
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !17
  br label %decode_sym.exit233

decode_sym.exit233:                               ; preds = %get_unary.exit.i232, %get_unary.exit.thread.i229
  %.sink23.i230 = phi i64 [ %i.abr, %get_unary.exit.thread.i229 ], [ 7, %get_unary.exit.i232 ]
  %.0.i231 = phi i8 [ %i.abt, %get_unary.exit.thread.i229 ], [ %i.abq, %get_unary.exit.i232 ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.xz, ptr align 1 %4, i64 %.sink23.i230, i1 false)
  store i8 %.0.i231, ptr %4, align 1, !tbaa !17
  %i.abu = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.abv = add i32 %i.yf, %i.abu
  %i.abw = sext i32 %i.abv to i64
  %i.abx = getelementptr inbounds i8, ptr %.0128.lcssa, i64 %i.abw
  store i8 %.0.i231, ptr %i.abx, align 1, !tbaa !17
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next303, 4
  br i1 %exitcond305.not, label %bb.bi, label %bb.ba, !llvm.loop !105

bb.bi:                                            ; preds = %decode_sym.exit233
  %i.aby = add nuw nsw i32 %.2285, 1              ; 2 uses
  %exitcond306.not = icmp eq i32 %i.aby, %i.ab
  br i1 %exitcond306.not, label %bb.bj, label %.preheader257, !llvm.loop !106

end_hunk_2
