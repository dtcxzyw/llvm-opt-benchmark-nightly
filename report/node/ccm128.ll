inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@CRYPTO_ccm128_init:bb.a
  %i.f = or disjoint i32 %i.b, %i.e
  %i.g = trunc nuw nsw i32 %i.f to i8
  store i8 %i.g, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %4, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.j, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @CRYPTO_ccm128_setiv(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !9       ; 2 uses
  %i.b = and i8 %i.a, 7                           ; 2 uses
  %narrow = sub nuw nsw i8 14, %i.b
  %i.c = zext nneg i8 %narrow to i64              ; 2 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i8 %i.b, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %3, 56
  %i.g = trunc nuw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !9
  %i.i = lshr i64 %3, 48
  %i.j = trunc i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.j, ptr %i.k, align 1, !tbaa !9
  %i.l = lshr i64 %3, 40
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.m, ptr %i.n, align 2, !tbaa !9
  %i.o = lshr i64 %3, 32
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.p, ptr %i.q, align 1, !tbaa !9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = lshr i64 %3, 24
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !9
  %i.v = lshr i64 %3, 16
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.w, ptr %i.x, align 1, !tbaa !9
  %i.y = lshr i64 %3, 8
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !9
  %i.ab = trunc i64 %3 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !9
  %i.ad = and i8 %i.a, -65
  store i8 %i.ad, ptr %0, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_ccm128_aad(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !9
  %i.e = or i8 %i.d, 64
  store i8 %i.e, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.h) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = icmp ult i64 %2, 65280
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %2, 8
  %i.n = trunc nuw i64 %i.m to i8
  %i.o = load i8, ptr %i.f, align 8, !tbaa !9
  %i.p = xor i8 %i.o, %i.n
  store i8 %i.p, ptr %i.f, align 8, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %2, 4294967295
  %i.r = load i8, ptr %i.f, align 8, !tbaa !9
  %i.s = xor i8 %i.r, -1
  store i8 %i.s, ptr %i.f, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = xor i8 %i.u, -1
  store i8 %i.w, ptr %i.t, align 1, !tbaa !9
  %i.x = lshr i64 %2, 56
  %i.y = lshr i64 %2, 48
  %i.z = lshr i64 %2, 40
  %i.aa = lshr i64 %2, 32
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = trunc i64 %i.z to i8
  %i.ad = trunc i64 %i.y to i8
  %i.ae = trunc nuw i64 %i.x to i8
  %i.af = load <4 x i8>, ptr %i.v, align 2, !tbaa !9
  %i.ag = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ad, i64 1
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ac, i64 2
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.ab, i64 3
  %i.ak = xor <4 x i8> %i.af, %i.aj
  store <4 x i8> %i.ak, ptr %i.v, align 2, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.am = load i8, ptr %i.al, align 2, !tbaa !9
  %i.an = lshr i64 %2, 24
  %i.ao = trunc i64 %i.an to i8
  %i.ap = xor i8 %i.am, %i.ao
  store i8 %i.ap, ptr %i.al, align 2, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = lshr i64 %2, 16
  %i.at = trunc i64 %i.as to i8
  %i.au = xor i8 %i.ar, %i.at
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !9
  %i.ax = lshr i64 %2, 8
  %i.ay = trunc i64 %i.ax to i8
  %i.az = xor i8 %i.aw, %i.ay
  store i8 %i.az, ptr %i.av, align 8, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ba = xor i8 %i.u, -2
  store i8 %i.ba, ptr %i.t, align 1, !tbaa !9
  %i.bb = lshr i64 %2, 24
  %i.bc = trunc nuw i64 %i.bb to i8
  %i.bd = load i8, ptr %i.v, align 2, !tbaa !9
  %i.be = xor i8 %i.bd, %i.bc
  store i8 %i.be, ptr %i.v, align 2, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = lshr i64 %2, 16
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = xor i8 %i.bg, %i.bi
  store i8 %i.bj, ptr %i.bf, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !9
  %i.bm = lshr i64 %2, 8
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = xor i8 %i.bl, %i.bn
  store i8 %i.bo, ptr %i.bk, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.sink76 = phi i64 [ 25, %bb.e ], [ 21, %bb.f ], [ 17, %bb.c ]
  %.055 = phi i64 [ 10, %bb.e ], [ 6, %bb.f ], [ 2, %bb.c ]
  %i.bp = trunc i64 %2 to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink76 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = xor i8 %i.br, %i.bp
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !9
  %scevgep = getelementptr i8, ptr %0, i64 16
  %scevgep81.a = getelementptr i8, ptr %0, i64 17
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge, %bb.g
  %.057 = phi i64 [ %2, %bb.g ], [ %.lcssa77, %._crit_edge ] ; 8 uses
  %.156 = phi i64 [ %.055, %bb.g ], [ 0, %._crit_edge ] ; 10 uses
  %.0 = phi ptr [ %1, %bb.g ], [ %.lcssa78, %._crit_edge ] ; 8 uses
  %i.bt = add i64 %.057, -1
  %i.bu = sub nsw i64 15, %.156
  %umin85 = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bu) ; 3 uses
  %i.bv = add nuw nsw i64 %umin85, 1              ; 5 uses
  %min.iters.check = icmp ult i64 %umin85, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %.156
  %i.bw = add i64 %.057, -1
  %i.bx = sub nsw i64 15, %.156
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bx) ; 2 uses
  %i.by = getelementptr i8, ptr %scevgep81.a, i64 %.156
  %scevgep82.a = getelementptr i8, ptr %i.by, i64 %umin
  %scevgep83.a = getelementptr i8, ptr %.0, i64 1
  %scevgep84 = getelementptr i8, ptr %scevgep83.a, i64 %umin
  %bound0 = icmp ult ptr %scevgep80, %scevgep84
  %bound1 = icmp ult ptr %.0, %scevgep82.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check86 = icmp ult i64 %umin85, 15
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bv, -16                     ; 5 uses
  %i.bz = getelementptr i8, ptr %.0, i64 %n.vec   ; 2 uses
  %i.ca = sub i64 %.057, %n.vec                   ; 3 uses
  %wide.load = load <16 x i8>, ptr %.0, align 1, !tbaa !9, !alias.scope !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 %.156 ; 2 uses
  %wide.load87 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !9, !alias.scope !19, !noalias !16
  %i.cc = xor <16 x i8> %wide.load87, %wide.load
  store <16 x i8> %i.cc, ptr %i.cb, align 1, !tbaa !9, !alias.scope !19, !noalias !16
  %i.cd = icmp ne i64 %.057, 16
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.ce = add i64 %.156, %n.vec
  %n.mod.vf = and i64 %i.bv, 12
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val89 = phi i64 [ %i.ca, %vec.epilog.iter.check ], [ %.057, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %i.bv, -4                    ; 5 uses
  %i.cf = add i64 %.156, %n.vec91
  %i.cg = getelementptr i8, ptr %.0, i64 %n.vec91 ; 2 uses
  %i.ch = sub i64 %.057, %n.vec91                 ; 2 uses
  %i.ci = add i64 %bc.resume.val89, -3
  %i.cj = getelementptr i8, ptr %i.f, i64 %.156
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.ck = phi i64 [ %i.ci, %vec.epilog.ph ], [ %i.cn, %vec.epilog.vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.0, i64 %index
  %wide.load94.a = load <4 x i8>, ptr %next.gep, align 1, !tbaa !9, !alias.scope !16
  %i.cl = getelementptr i8, ptr %i.cj, i64 %index ; 2 uses
  %wide.load95 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !9, !alias.scope !19, !noalias !16
  %i.cm = xor <4 x i8> %wide.load95, %wide.load94.a
  store <4 x i8> %i.cm, ptr %i.cl, align 1, !tbaa !9, !alias.scope !19, !noalias !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = add i64 %i.ck, -4
  %i.co = icmp eq i64 %index.next, %n.vec91
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cp = icmp ne i64 %i.ck, 1
  %cmp.n96 = icmp eq i64 %i.bv, %n.vec91
  br i1 %cmp.n96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.156, %iter.check ], [ %.156, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.162.ph = phi ptr [ %.0, %iter.check ], [ %.0, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  %.15860.ph = phi i64 [ %.057, %iter.check ], [ %.057, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.162 = phi ptr [ %i.cu, %.lr.ph ], [ %.162.ph, %.lr.ph.preheader ] ; 2 uses
  %.15860 = phi i64 [ %i.cv, %.lr.ph ], [ %.15860.ph, %.lr.ph.preheader ]
  %i.cq = load i8, ptr %.162, align 1, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.ct = xor i8 %i.cs, %i.cq
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.162, i64 1 ; 2 uses
  %i.cv = add i64 %.15860, -1                     ; 3 uses
  %i.cw = icmp samesign ult i64 %indvars.iv, 15
  %i.cx = icmp ne i64 %i.cv, 0                    ; 2 uses
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %vector.ph
  %.lcssa78 = phi ptr [ %i.cg, %vec.epilog.middle.block ], [ %i.bz, %vector.ph ], [ %i.cu, %.lr.ph ]
  %.lcssa77 = phi i64 [ %i.ch, %vec.epilog.middle.block ], [ %i.ca, %vector.ph ], [ %i.cv, %.lr.ph ]
  %.lcssa = phi i1 [ %i.cp, %vec.epilog.middle.block ], [ %i.cd, %vector.ph ], [ %i.cx, %.lr.ph ]
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !15
  tail call void %i.b(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef %i.cz) #7
  %i.da = load i64, ptr %i.i, align 8, !tbaa !10
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.i, align 8, !tbaa !10
  br i1 %.lcssa, label %iter.check, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @CRYPTO_ccm128_encrypt(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon.0, align 16             ; 13 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !9       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.f = zext i8 %i.a to i32                      ; 2 uses
  %i.g = and i32 %i.f, 64
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef %i.e) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = and i32 %i.f, 7                          ; 3 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  store i8 %i.m, ptr %0, align 8, !tbaa !9
  %i.n = xor i32 %i.l, 15                         ; 4 uses
  %.not110 = icmp eq i32 %i.l, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.o = zext nneg i32 %i.n to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.n, i32 14)
  %i.p = add nuw nsw i32 %umax, 1
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.08794 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %.08794, %i.s
  store i8 0, ptr %i.q, align 1, !tbaa !9
  %i.u = shl i64 %i.t, 8                          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.087.lcssa = phi i64 [ 0, %bb.c ], [ %i.u, %.lr.ph ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %.087.lcssa, %i.x
  store i8 1, ptr %i.v, align 1, !tbaa !9
  %.not91 = icmp eq i64 %i.y, %3
  br i1 %.not91, label %bb.d, label %bb.q

bb.d:                                             ; preds = %._crit_edge
  %i.z = add i64 %3, 15
  %i.aa = lshr i64 %i.z, 3
  %i.ab = or i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !10
  %i.af = icmp ugt i64 %i.ae, 2305843009213693952
  br i1 %i.af, label %bb.q, label %.preheader93

.preheader93:                                     ; preds = %bb.d
  %i.ag = icmp ugt i64 %3, 15
  br i1 %i.ag, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader93
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph99, %ctr64_inc.exit
  %.08398 = phi ptr [ %1, %.lr.ph99 ], [ %i.bw, %ctr64_inc.exit ] ; 4 uses
  %.08497 = phi ptr [ %2, %.lr.ph99 ], [ %i.bx, %ctr64_inc.exit ] ; 3 uses
  %.08596 = phi i64 [ %3, %.lr.ph99 ], [ %i.by, %ctr64_inc.exit ]
  %i.as = load i64, ptr %.08398, align 1, !tbaa !29
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !9
  %i.au = xor i64 %i.at, %i.as
  store i64 %i.au, ptr %i.ah, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %.08398, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !29
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !9
  %i.ay = xor i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ai, align 8, !tbaa !9
  call void %i.c(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ah, ptr noundef %i.e) #7
  call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.e) #7
  %i.az = load i8, ptr %i.al, align 1, !tbaa !9
  %i.ba = add i8 %i.az, 1                         ; 2 uses
  store i8 %i.ba, ptr %i.al, align 1, !tbaa !9
  %.not.i.not = icmp eq i8 %i.ba, 0
  br i1 %.not.i.not, label %bb.f, label %ctr64_inc.exit

bb.f:                                             ; preds = %bb.e
  %i.bb = load i8, ptr %i.am, align 1, !tbaa !9
  %i.bc = add i8 %i.bb, 1                         ; 2 uses
  store i8 %i.bc, ptr %i.am, align 1, !tbaa !9
  %.not.i.1.not = icmp eq i8 %i.bc, 0
  br i1 %.not.i.1.not, label %bb.g, label %ctr64_inc.exit

bb.g:                                             ; preds = %bb.f
  %i.bd = load i8, ptr %i.an, align 1, !tbaa !9
  %i.be = add i8 %i.bd, 1                         ; 2 uses
  store i8 %i.be, ptr %i.an, align 1, !tbaa !9
  %.not.i.2.not = icmp eq i8 %i.be, 0
  br i1 %.not.i.2.not, label %bb.h, label %ctr64_inc.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.bg = add i8 %i.bf, 1                         ; 2 uses
  store i8 %i.bg, ptr %i.ao, align 1, !tbaa !9
  %.not.i.3.not = icmp eq i8 %i.bg, 0
  br i1 %.not.i.3.not, label %bb.i, label %ctr64_inc.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.bi = add i8 %i.bh, 1                         ; 2 uses
  store i8 %i.bi, ptr %i.ap, align 1, !tbaa !9
  %.not.i.4.not = icmp eq i8 %i.bi, 0
  br i1 %.not.i.4.not, label %bb.j, label %ctr64_inc.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.bk = add i8 %i.bj, 1                         ; 2 uses
  store i8 %i.bk, ptr %i.aq, align 1, !tbaa !9
  %.not.i.5.not = icmp eq i8 %i.bk, 0
  br i1 %.not.i.5.not, label %bb.k, label %ctr64_inc.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.bm = add i8 %i.bl, 1                         ; 2 uses
  store i8 %i.bm, ptr %i.ar, align 1, !tbaa !9
  %.not.i.6.not = icmp eq i8 %i.bm, 0
  br i1 %.not.i.6.not, label %bb.l, label %ctr64_inc.exit

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.aj, align 1, !tbaa !9
  br label %ctr64_inc.exit

ctr64_inc.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bp = load i64, ptr %4, align 16, !tbaa !9
  %i.bq = load i64, ptr %.08398, align 1, !tbaa !29
  %i.br = xor i64 %i.bq, %i.bp
  store i64 %i.br, ptr %.08497, align 1, !tbaa !29
  %i.bs = load i64, ptr %i.ak, align 8, !tbaa !9
  %i.bt = load i64, ptr %i.av, align 1, !tbaa !29
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %.08497, i64 8
  store i64 %i.bu, ptr %i.bv, align 1, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %.08398, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.08497, i64 16 ; 2 uses
  %i.by = add i64 %.08596, -16                    ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %bb.e, label %._crit_edge100, !llvm.loop !30

._crit_edge100:                                   ; preds = %ctr64_inc.exit, %.preheader93
  %.085.lcssa = phi i64 [ %3, %.preheader93 ], [ %i.by, %ctr64_inc.exit ] ; 7 uses
  %.084.lcssa = phi ptr [ %2, %.preheader93 ], [ %i.bx, %ctr64_inc.exit ] ; 5 uses
  %.083.lcssa = phi ptr [ %1, %.preheader93 ], [ %i.bw, %ctr64_inc.exit ] ; 10 uses
  %.not92 = icmp eq i64 %.085.lcssa, 0
  br i1 %.not92, label %._crit_edge109, label %.preheader

.preheader:                                       ; preds = %._crit_edge100
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %xtraiter = and i64 %.085.lcssa, 3              ; 3 uses
  %i.cb = icmp ult i64 %.085.lcssa, 4
  br i1 %i.cb, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %.085.lcssa, 12
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.new
  %indvars.iv115 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next116.3, %bb.m ] ; 6 uses
end_hunk_0
