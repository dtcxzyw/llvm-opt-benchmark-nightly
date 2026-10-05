Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_sqshlui_h:bb.a
  %i.do = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.do, %i.h
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !256

.split:                                           ; preds = %do_suqrshl_bhs.exit.1, %.split.preheader239.new
  %.015 = phi i64 [ %.015.ph, %.split.preheader239.new ], [ %i.dy, %do_suqrshl_bhs.exit.1 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = icmp slt i16 %i.dq, 0
  br i1 %i.dr, label %bb.r, label %do_suqrshl_bhs.exit

bb.r:                                             ; preds = %.split
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %.split, %bb.r
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 0, ptr %i.ds, align 2
  %i.dt = or disjoint i64 %.015, 1                ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2
  %i.dw = icmp slt i16 %i.dv, 0
  br i1 %i.dw, label %bb.s, label %do_suqrshl_bhs.exit.1

bb.s:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.1

do_suqrshl_bhs.exit.1:                            ; preds = %bb.s, %do_suqrshl_bhs.exit
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dt
  store i16 0, ptr %i.dx, align 2
  %i.dy = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dy, %i.h
  br i1 %exitcond.not.1, label %.split17.us, label %.split, !llvm.loop !257

.split17.us:                                      ; preds = %do_suqrshl_bhs.exit.1, %do_suqrshl_bhs.exit.us.1, %bb.m, %do_suqrshl_bhs.exit.us.us19.1, %do_suqrshl_bhs.exit.us.us.1, %middle.block, %middle.block123, %middle.block227
  %i.dz = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dz, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.ea = add nuw nsw i32 %i.e, 8
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %0, i64 %i.g
  %i.ed = xor i64 %i.g, -1
  %i.ee = add nsw i64 %i.ed, %i.eb
  %i.ef = and i64 %i.ee, -8
  %i.eg = add nsw i64 %i.ef, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ec, i8 0, i64 %i.eg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshlu_s32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %2, 24
  %i.a = ashr exact i32 %sext, 24                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i32 %i.a, -32
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_bhs.exit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i32 %i.a, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = sub nsw i32 0, %i.a
  %i.f = lshr i32 %1, %i.e
  br label %do_suqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i32 %i.a, 32
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = shl i32 %1, %i.a                         ; 2 uses
  %i.i = lshr exact i32 %i.h, %i.a
  %.not2 = icmp eq i32 %i.i, %1
  br i1 %.not2, label %do_suqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %do_suqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.h, %bb.g ], [ %i.f, %bb.e ], [ -1, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qshlu_s64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i64 %2, 56
  %i.a = ashr exact i64 %sext, 56                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_d.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i64 %i.a, -64
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_d.exit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = sub nsw i64 0, %i.a
  %i.f = lshr i64 %1, %i.e
  br label %do_suqrshl_d.exit

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i64 %i.a, 64
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = shl i64 %1, %i.a                         ; 2 uses
  %i.i = lshr exact i64 %i.h, %i.a
  %.not2 = icmp eq i64 %i.i, %1
  br i1 %.not2, label %do_suqrshl_d.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %do_suqrshl_d.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_d.exit

do_suqrshl_d.exit:                                ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ %i.f, %bb.e ], [ -1, %bb.i ], [ %i.h, %bb.g ]
  ret i64 %.0.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 11 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 12 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 9 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 20 uses
  %.not.i.i = icmp sgt i32 %i.j, -32
  %i.l = icmp samesign ult i32 %i.j, 32
  %i.m = sub nsw i32 0, %i.j                      ; 3 uses
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %.split.preheader239.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.preheader
  %i.n = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.o
  %bound1 = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %i.k, %i.p
  %bound152 = icmp ult ptr %1, %i.n
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  %bound054 = icmp ult ptr %0, %i.p
  %bound155 = icmp ult ptr %1, %i.o
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx, %found.conflict56
  br i1 %conflict.rdx57, label %.split.preheader239.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %4 = load <8 x i32>, ptr %i.q, align 4, !alias.scope !298
  %5 = shufflevector <8 x i32> %4, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.r = icmp slt <8 x i32> %5, zeroinitializer
  %i.s = bitcast <8 x i1> %i.r to i8
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.k, align 4, !alias.scope !299, !noalias !300
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> zeroinitializer, ptr %i.t, align 4, !alias.scope !301, !noalias !298
  store <4 x i32> zeroinitializer, ptr %i.u, align 4, !alias.scope !301, !noalias !298
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split18.us, label %.split.preheader239.new

.split.preheader239.new:                          ; preds = %vector.memcheck, %.split.preheader, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split

.split.us:                                        ; preds = %bb.a
  %i.w = icmp slt i32 %i.j, 0
  br i1 %i.w, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %min.iters.check188 = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check188, label %.split.us.split.us.preheader234.new, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.split.us.split.us.preheader
  %i.x = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %bound0190 = icmp ult ptr %i.k, %i.y
  %bound1191 = icmp ult ptr %0, %i.x
  %found.conflict192 = and i1 %bound0190, %bound1191
  %bound0193 = icmp ult ptr %i.k, %i.z
  %bound1194 = icmp ult ptr %1, %i.x
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192, %found.conflict195
  %bound0197 = icmp ult ptr %0, %i.z
  %bound1198 = icmp ult ptr %1, %i.y
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  br i1 %conflict.rdx200, label %.split.us.split.us.preheader234.new, label %vector.ph201

vector.ph201:                                     ; preds = %vector.memcheck189
  %n.vec202 = and i64 %i.h, 536870904             ; 3 uses
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %bb.e, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next227, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index206 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load207 = load <4 x i32>, ptr %i.aa, align 4, !alias.scope !302 ; 2 uses
  %wide.load208 = load <4 x i32>, ptr %i.ab, align 4, !alias.scope !302 ; 2 uses
  %i.ac = icmp slt <4 x i32> %wide.load207, zeroinitializer ; 2 uses
  %i.ad = icmp slt <4 x i32> %wide.load208, zeroinitializer ; 2 uses
  %i.ae = lshr <4 x i32> %wide.load207, %broadcast.splat204
  %i.af = lshr <4 x i32> %wide.load208, %broadcast.splat204
  %i.ag = shufflevector <4 x i1> %i.ad, <4 x i1> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = bitcast <8 x i1> %i.ag to i8
  %.not233 = icmp eq i8 %i.ah, 0
  br i1 %.not233, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body205
  store i32 1, ptr %i.k, align 4, !alias.scope !303, !noalias !304
  br label %bb.e

bb.e:                                             ; preds = %vector.body205, %bb.d
  %predphi225 = select <4 x i1> %i.ac, <4 x i32> zeroinitializer, <4 x i32> %i.ae
  %predphi226 = select <4 x i1> %i.ad, <4 x i32> zeroinitializer, <4 x i32> %i.af
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index206 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %predphi225, ptr %i.ai, align 4, !alias.scope !305, !noalias !302
  store <4 x i32> %predphi226, ptr %i.aj, align 4, !alias.scope !305, !noalias !302
  %index.next227 = add nuw i64 %index206, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next227, %n.vec202
  br i1 %i.ak, label %middle.block228, label %vector.body205, !llvm.loop !283

middle.block228:                                  ; preds = %bb.e
  %cmp.n229 = icmp eq i64 %i.h, %n.vec202
  br i1 %cmp.n229, label %.split18.us, label %.split.us.split.us.preheader234.new

.split.us.split.us.preheader234.new:              ; preds = %vector.memcheck189, %.split.us.split.us.preheader, %middle.block228
  %.016.us.us.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.split.us.split.us.preheader ], [ %n.vec202, %middle.block228 ]
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %do_suqrshl_bhs.exit.us.us.1, %.split.us.split.us.preheader234.new
  %.016.us.us = phi i64 [ %.016.us.us.ph, %.split.us.split.us.preheader234.new ], [ %i.aw, %do_suqrshl_bhs.exit.us.us.1 ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.us.us
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.split.us
  %i.ao = lshr i32 %i.am, %i.m
  br label %do_suqrshl_bhs.exit.us.us

bb.g:                                             ; preds = %.split.us.split.us
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us

do_suqrshl_bhs.exit.us.us:                        ; preds = %bb.g, %bb.f
  %.0.i.us.us = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.f ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.us.us
  store i32 %.0.i.us.us, ptr %i.ap, align 4
  %i.aq = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  %i.au = lshr i32 %i.as, %i.m
  br label %do_suqrshl_bhs.exit.us.us.1

bb.i:                                             ; preds = %do_suqrshl_bhs.exit.us.us
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us.1

do_suqrshl_bhs.exit.us.us.1:                      ; preds = %bb.i, %bb.h
  %.0.i.us.us.1 = phi i32 [ 0, %bb.i ], [ %i.au, %bb.h ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  store i32 %.0.i.us.us.1, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.016.us.us, 2          ; 2 uses
  %exitcond27.not.1 = icmp eq i64 %i.aw, %i.h
  br i1 %exitcond27.not.1, label %.split18.us, label %.split.us.split.us, !llvm.loop !284

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.l, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check88 = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check88, label %.split.us.split.split.preheader237.new, label %vector.memcheck89

vector.memcheck89:                                ; preds = %.split.us.split.split.preheader
  %i.ax = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound090 = icmp ult ptr %i.k, %i.ay
  %bound191 = icmp ult ptr %0, %i.ax
  %found.conflict92 = and i1 %bound090, %bound191
  %bound093 = icmp ult ptr %i.k, %i.az
  %bound194 = icmp ult ptr %1, %i.ax
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  %bound097 = icmp ult ptr %0, %i.az
  %bound198 = icmp ult ptr %1, %i.ay
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  br i1 %conflict.rdx100, label %.split.us.split.split.preheader237.new, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck89
  %n.vec102 = and i64 %i.h, 536870904             ; 3 uses
  br label %vector.body103

vector.body103:                                   ; preds = %bb.k, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next123, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index104 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load105 = load <4 x i32>, ptr %i.ba, align 4, !alias.scope !306 ; 2 uses
  %wide.load106 = load <4 x i32>, ptr %i.bb, align 4, !alias.scope !306 ; 2 uses
  %i.bc = icmp sgt <4 x i32> %wide.load105, zeroinitializer
  %i.bd = icmp sgt <4 x i32> %wide.load106, zeroinitializer
  %i.be = shufflevector <4 x i32> %wide.load106, <4 x i32> %wide.load105, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = icmp ne <8 x i32> %i.be, zeroinitializer
  %i.bg = bitcast <8 x i1> %i.bf to i8
  %.not231 = icmp eq i8 %i.bg, 0
  br i1 %.not231, label %bb.k, label %bb.j

bb.j:                                             ; preds = %vector.body103
  store i32 1, ptr %i.k, align 4, !alias.scope !307, !noalias !308
  br label %bb.k

bb.k:                                             ; preds = %vector.body103, %bb.j
  %i.bh = sext <4 x i1> %i.bc to <4 x i32>
  %i.bi = sext <4 x i1> %i.bd to <4 x i32>
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x i32> %i.bh, ptr %i.bj, align 4, !alias.scope !309, !noalias !306
  store <4 x i32> %i.bi, ptr %i.bk, align 4, !alias.scope !309, !noalias !306
  %index.next123 = add nuw i64 %index104, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next123, %n.vec102
  br i1 %i.bl, label %middle.block124, label %vector.body103, !llvm.loop !289

middle.block124:                                  ; preds = %bb.k
  %cmp.n125 = icmp eq i64 %i.h, %n.vec102
  br i1 %cmp.n125, label %.split18.us, label %.split.us.split.split.preheader237.new

.split.us.split.split.preheader237.new:           ; preds = %vector.memcheck89, %.split.us.split.split.preheader, %middle.block124
  %.016.us.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec102, %middle.block124 ]
  br label %.split.us.split.split
end_hunk_0
