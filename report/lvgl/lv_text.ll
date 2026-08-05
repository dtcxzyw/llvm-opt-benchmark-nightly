inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lv_text_ins:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, -32                     ; 4 uses
  %i.ab = sub i64 %i.f, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = sub i64 %i.f, %index                    ; 2 uses
  %i.ad = sub i64 %i.ac, %i.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -15
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -31
  %wide.load = load <16 x i8>, ptr %i.af, align 1, !tbaa !8
  %wide.load37 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -15
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -31
  store <16 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !8
  store <16 x i8> %wide.load37, ptr %i.aj, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.aa, -8                    ; 3 uses
  %i.al = sub i64 %i.f, %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.am = sub i64 %i.f, %index40                  ; 2 uses
  %i.an = sub i64 %i.am, %i.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  %wide.load41 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  store <8 x i8> %wide.load41, ptr %i.ar, align 1, !tbaa !8
  %index.next42 = add nuw i64 %index40, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.aa, %n.vec39
  br i1 %cmp.n43, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.027.ph = phi i64 [ %i.f, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.027 = phi i64 [ %i.ax, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader ] ; 3 uses
  %i.at = sub i64 %.027, %i.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !8
  %i.ax = add i64 %.027, -1                       ; 2 uses
  %.not = icmp ult i64 %i.ax, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lv_text_utf8_get_byte_id.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.010.lcssa.i
  %i.az = tail call ptr @lv_memcpy(ptr noundef nonnull %i.ay, ptr noundef nonnull %2, i64 noundef %i.d) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare i64 @lv_strlen(ptr noundef) local_unnamed_addr #7

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @lv_text_cut(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @lv_strlen(ptr noundef nonnull %0) #11 ; 3 uses
  %.not16.i = icmp eq i32 %1, 0
  br i1 %.not16.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %lv_text_utf8_size.exit.i
  %.013.i = phi i32 [ %i.p, %lv_text_utf8_size.exit.i ], [ 0, %bb.b ]
  %.01012.i = phi i32 [ %i.o, %lv_text_utf8_size.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.c = zext i32 %.01012.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 3 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %lv_text_utf8_get_byte_id.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %lv_text_utf8_size.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.f, 224
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %lv_text_utf8_size.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.f, 240
  %i.k = icmp eq i32 %i.j, 224
  br i1 %i.k, label %lv_text_utf8_size.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.f, 248
  %i.m = icmp eq i32 %i.l, 240
  %i.n = select i1 %i.m, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i

lv_text_utf8_size.exit.i:                         ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 3, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ], [ %i.n, %bb.f ]
  %i.o = add i32 %.0.i.i, %.01012.i               ; 2 uses
  %i.p = add nuw i32 %.013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, %1
  br i1 %exitcond.not.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i, !llvm.loop !10

lv_text_utf8_get_byte_id.exit:                    ; preds = %.lr.ph.i, %lv_text_utf8_size.exit.i, %bb.b
  %.010.lcssa.i = phi i32 [ 0, %bb.b ], [ %.01012.i, %.lr.ph.i ], [ %i.o, %lv_text_utf8_size.exit.i ] ; 14 uses
  %i.q = zext i32 %.010.lcssa.i to i64            ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %.not16.i18 = icmp eq i32 %2, 0
  br i1 %.not16.i18, label %lv_text_utf8_get_byte_id.exit27, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %lv_text_utf8_get_byte_id.exit, %lv_text_utf8_size.exit.i23
  %.013.i20 = phi i32 [ %i.af, %lv_text_utf8_size.exit.i23 ], [ 0, %lv_text_utf8_get_byte_id.exit ]
  %.01012.i21 = phi i32 [ %i.ae, %lv_text_utf8_size.exit.i23 ], [ 0, %lv_text_utf8_get_byte_id.exit ] ; 3 uses
  %i.s = zext i32 %.01012.i21 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 3 uses
  %.not.i22 = icmp eq i8 %i.u, 0
  br i1 %.not.i22, label %lv_text_utf8_get_byte_id.exit27, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i19
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = icmp sgt i8 %i.u, -1
  br i1 %i.w, label %lv_text_utf8_size.exit.i23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = and i32 %i.v, 224
  %i.y = icmp eq i32 %i.x, 192
  br i1 %i.y, label %lv_text_utf8_size.exit.i23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.v, 240
  %i.aa = icmp eq i32 %i.z, 224
  br i1 %i.aa, label %lv_text_utf8_size.exit.i23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.v, 248
  %i.ac = icmp eq i32 %i.ab, 240
  %i.ad = select i1 %i.ac, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i23

lv_text_utf8_size.exit.i23:                       ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i24 = phi i32 [ 3, %bb.i ], [ 1, %bb.g ], [ 2, %bb.h ], [ %i.ad, %bb.j ]
  %i.ae = add i32 %.0.i.i24, %.01012.i21          ; 2 uses
  %i.af = add nuw i32 %.013.i20, 1                ; 2 uses
  %exitcond.not.i25 = icmp eq i32 %i.af, %2
  br i1 %exitcond.not.i25, label %lv_text_utf8_get_byte_id.exit27, label %.lr.ph.i19, !llvm.loop !10

lv_text_utf8_get_byte_id.exit27:                  ; preds = %.lr.ph.i19, %lv_text_utf8_size.exit.i23, %lv_text_utf8_get_byte_id.exit
  %.010.lcssa.i26 = phi i32 [ 0, %lv_text_utf8_get_byte_id.exit ], [ %.01012.i21, %.lr.ph.i19 ], [ %i.ae, %lv_text_utf8_size.exit.i23 ] ; 6 uses
  %i.ag = zext i32 %.010.lcssa.i26 to i64         ; 3 uses
  %i.ah = sub i64 %i.b, %i.ag                     ; 2 uses
  %.not28 = icmp ult i64 %i.ah, %i.q
  br i1 %.not28, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %lv_text_utf8_get_byte_id.exit27
  %i.ai = add i64 %i.b, 1
  %i.aj = sub i64 %i.ai, %i.ag
  %i.ak = add i32 %.010.lcssa.i, 1
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %umax40 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.al)
  %i.am = add i64 %umax40, 1
  %i.an = sub i64 %i.am, %i.al                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ao = add i64 %i.b, 1
  %i.ap = sub i64 %i.ao, %i.ag
  %i.aq = add i32 %.010.lcssa.i, 1
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.ar) ; 4 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 -2, %.010.lcssa.i
  %i.av = icmp ult i32 %i.au, %i.at
  %3 = trunc i64 %i.as to i32
  %i.aw = xor i32 %.010.lcssa.i, -1
  %i.ax = icmp ult i32 %i.aw, %3
  %i.ay = icmp ugt i64 %i.as, 4294967295
  %i.az = or i1 %i.ax, %i.ay
  %i.ba = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %4 = trunc i64 %i.as to i32
  %i.bb = xor i32 %i.ba, -1
  %i.bc = icmp ult i32 %i.bb, %4
  %i.bd = or i1 %i.av, %i.az
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %i.bg = zext i32 %i.bf to i64
  %i.bh = sub nsw i64 %i.bg, %i.q
  %diff.check = icmp ugt i64 %i.bh, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 24
  %n.vec = and i64 %i.an, -32                     ; 5 uses
  %i.bi = add i64 %n.vec, %i.q
  %i.bj = trunc i64 %n.vec to i32
  %i.bk = add i32 %.010.lcssa.i, %i.bj
  %invariant.op = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = trunc i64 %index to i32
  %.reass = add i32 %i.bl, %invariant.op
  %i.bm = zext i32 %.reass to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 1, !tbaa !8
  %wide.load42 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !8
  store <16 x i8> %wide.load42, ptr %i.bp, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.an, -8                    ; 4 uses
  %i.br = add i64 %n.vec45, %i.q
  %i.bs = trunc i64 %n.vec45 to i32
  %i.bt = add i32 %.010.lcssa.i, %i.bs
  %invariant.op52 = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep54 = getelementptr i8, ptr %0, i64 %i.q
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %i.bu = trunc i64 %index46 to i32
  %.reass53 = add i32 %i.bu, %invariant.op52
  %i.bv = zext i32 %.reass53 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %wide.load47 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !8
  %gep55 = getelementptr i8, ptr %invariant.gep54, i64 %index46
  store <8 x i8> %wide.load47, ptr %gep55, align 1, !tbaa !8
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.bx = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.an, %n.vec45
  br i1 %cmp.n49, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.q, %iter.check ], [ %i.q, %vector.scevcheck ], [ %i.q, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.029.ph = phi i32 [ %.010.lcssa.i, %iter.check ], [ %.010.lcssa.i, %vector.scevcheck ], [ %.010.lcssa.i, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.by = phi i64 [ %i.cf, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.029 = phi i32 [ %i.ce, %.lr.ph ], [ %.029.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bz = add i32 %.029, %.010.lcssa.i26
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !8
  %i.ce = add i32 %.029, 1                        ; 2 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %.not = icmp ult i64 %i.ah, %i.cf
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lv_text_utf8_get_byte_id.exit27, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define nonnull ptr @lv_text_set_text_vfmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr %1)
  %i.a = call i32 @lv_vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = add i32 %i.a, 1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = call ptr @lv_malloc(i64 noundef %i.c) #11 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @lv_vsnprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %0, ptr noundef %1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #9

declare i32 @lv_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #7

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!15, !5, i64 4}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!16 = !{!15, !5, i64 8}
!17 = !{!15, !5, i64 12}
!18 = !{!15, !5, i64 0}
!19 = !{!20, !5, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4}
!21 = !{!20, !5, i64 4}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 8, i32 24}
!31 = distinct !{!31, !11, !28, !29}
!32 = distinct !{!32, !11, !28}
!33 = distinct !{!33, !11, !28, !29}
!34 = distinct !{!34, !11, !28, !29}
!35 = distinct !{!35, !11, !28}
end_hunk_0
