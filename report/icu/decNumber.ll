Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/decNumber?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@uprv_decNumberCompareTotalMag_78:bb.a

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.d, align 4, !tbaa !16    ; 2 uses
  %i.t = load <2 x i32>, ptr %1, align 4, !tbaa !21
  %i.u = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  store <2 x i32> %i.t, ptr %.034, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %.034, i64 9
  store i8 %i.w, ptr %i.x, align 1, !tbaa !19
  %i.y = icmp sgt i32 %i.u, 1
  br i1 %i.y, label %bb.f, label %uprv_decNumberCopy_78.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %.034, i64 10
  %i.aa = icmp samesign ult i32 %i.u, 50
  %i.ab = zext nneg i32 %i.u to i64               ; 2 uses
  br i1 %i.aa, label %bb.g, label %.lr.ph.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = zext i8 %i.ad to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f, %bb.g
  %.pn.i = phi i64 [ %i.ae, %bb.g ], [ %i.ab, %bb.f ]
  %i.af = getelementptr i8, ptr %1, i64 10
  %i.ag = add i64 %.pn.i, %i.b
  %i.ah = add i64 %i.ag, 9
  %i.ai = add i64 %i.b, 11
  %umax = call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = add i64 %umax, -10
  %i.ak = sub i64 %i.aj, %i.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.z, ptr align 2 %i.af, i64 %i.ak, i1 false), !tbaa !19
  br label %uprv_decNumberCopy_78.exit

uprv_decNumberCopy_78.exit:                       ; preds = %.uprv_decNumberCopy_78.exit_crit_edge, %.lr.ph.preheader.i, %bb.e
  %i.al = phi i8 [ %.pre, %.uprv_decNumberCopy_78.exit_crit_edge ], [ %i.s, %.lr.ph.preheader.i ], [ %i.s, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.an = and i8 %i.al, 127
  store i8 %i.an, ptr %i.am, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %uprv_decNumberCopy_78.exit, %bb.a
  %.039 = phi ptr [ %.034, %uprv_decNumberCopy_78.exit ], [ %1, %bb.a ]
  %.137 = phi ptr [ %.036, %uprv_decNumberCopy_78.exit ], [ null, %bb.a ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !16
  %.not52 = icmp sgt i8 %i.ap, -1
  br i1 %.not52, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 50
  br i1 %i.ar, label %bb.j, label %.thread64

bb.j:                                             ; preds = %bb.i
  %i.as = sext i32 %i.aq to i64                   ; 2 uses
  %i.at = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19
  %i.av = zext i8 %i.au to i32
  %i.aw = add nsw i64 %i.as, -38
  %i.ax = icmp ult i64 %i.aw, 12
  br i1 %i.ax, label %.thread64, label %bb.l

.thread64:                                        ; preds = %bb.i, %bb.j
  %i.ay = phi i32 [ %i.av, %bb.j ], [ %i.aq, %bb.i ]
  %narrow53 = add nuw i32 %i.ay, 11
  %i.az = zext i32 %narrow53 to i64
  %i.ba = call noalias ptr @uprv_malloc_78(i64 noundef %i.az) #16 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread64
  store i32 16, ptr %i.c, align 4, !tbaa !21
  br label %bb.q

bb.l:                                             ; preds = %.thread64, %bb.j
  %.035 = phi ptr [ null, %bb.j ], [ %i.ba, %.thread64 ]
  %.0 = phi ptr [ %5, %bb.j ], [ %i.ba, %.thread64 ] ; 7 uses
  %i.bc = icmp eq ptr %.0, %2
  br i1 %i.bc, label %.uprv_decNumberCopy_78.exit63_crit_edge, label %bb.m

.uprv_decNumberCopy_78.exit63_crit_edge:          ; preds = %bb.l
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.pre81 = load i8, ptr %.phi.trans.insert80, align 4, !tbaa !16
  br label %uprv_decNumberCopy_78.exit63

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.ao, align 4, !tbaa !16  ; 2 uses
  %i.be = load <2 x i32>, ptr %2, align 4, !tbaa !21
  %i.bf = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
  store <2 x i32> %i.be, ptr %.0, align 4, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 9
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !19
  %i.bj = icmp sgt i32 %i.bf, 1
  br i1 %i.bj, label %bb.n, label %uprv_decNumberCopy_78.exit63

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %.0, i64 10
  %i.bl = icmp samesign ult i32 %i.bf, 50
  %i.bm = zext nneg i32 %i.bf to i64              ; 2 uses
  br i1 %i.bl, label %bb.o, label %.lr.ph.preheader.i58

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19
  %i.bp = zext i8 %i.bo to i64
  br label %.lr.ph.preheader.i58

.lr.ph.preheader.i58:                             ; preds = %bb.n, %bb.o
  %.pn.i59 = phi i64 [ %i.bp, %bb.o ], [ %i.bm, %bb.n ]
  %i.bq = getelementptr i8, ptr %2, i64 10
  %i.br = add i64 %.pn.i59, %i.a
  %i.bs = add i64 %i.br, 9
  %i.bt = add i64 %i.a, 11
  %umax79 = call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bt)
  %i.bu = add i64 %umax79, -10
  %i.bv = sub i64 %i.bu, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bk, ptr align 2 %i.bq, i64 %i.bv, i1 false), !tbaa !19
  br label %uprv_decNumberCopy_78.exit63

uprv_decNumberCopy_78.exit63:                     ; preds = %.uprv_decNumberCopy_78.exit63_crit_edge, %.lr.ph.preheader.i58, %bb.m
  %i.bw = phi i8 [ %.pre81, %.uprv_decNumberCopy_78.exit63_crit_edge ], [ %i.bd, %.lr.ph.preheader.i58 ], [ %i.bd, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.by = and i8 %i.bw, 127
  store i8 %i.by, ptr %i.bx, align 4, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %uprv_decNumberCopy_78.exit63, %bb.h
  %.040 = phi ptr [ %.0, %uprv_decNumberCopy_78.exit63 ], [ %2, %bb.h ]
  %.1 = phi ptr [ %.035, %uprv_decNumberCopy_78.exit63 ], [ null, %bb.h ]
  %i.bz = call fastcc noundef ptr @_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull %.039, ptr noundef nonnull %.040, ptr noundef %3, i8 noundef zeroext 4, ptr noundef %i.c) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.2 = phi ptr [ %.1, %bb.p ], [ null, %bb.k ]   ; 2 uses
  %.not54 = icmp eq ptr %.137, null
  br i1 %.not54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @uprv_free_78(ptr noundef nonnull %.137)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not55 = icmp eq ptr %.2, null
  br i1 %.not55, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @uprv_free_78(ptr noundef nonnull %.2)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pr = load i32, ptr %i.c, align 4, !tbaa !21   ; 6 uses
  %.not56 = icmp eq i32 %.pr, 0
  br i1 %.not56, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = and i32 %.pr, 221
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = and i32 %.pr, 1073741824
  %.not6.i = icmp eq i32 %i.cb, 0
  br i1 %.not6.i, label %.thread77, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = and i32 %.pr, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread77:                                        ; preds = %.thread, %bb.w
  %i.cd = phi i32 [ %.pr, %bb.w ], [ 16, %.thread ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cf, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cg, align 1, !tbaa !19
  store i8 32, ptr %i.ce, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.v, %bb.x, %.thread77
  %.0.i = phi i32 [ %i.cc, %bb.x ], [ %i.cd, %.thread77 ], [ %.pr, %bb.v ]
  %i.ch = call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberCopy_78(ptr nofree noundef returned writeonly captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4, !tbaa !16
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !19
  %i.k = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = icmp samesign ult i32 %i.k, 50
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  br i1 %i.n, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = zext i8 %i.q to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.c, %bb.d
  %.pn = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.u = add i64 %.pn, %i.a
  %i.v = add i64 %i.u, 9
  %i.w = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.w)
  %i.x = add i64 %umax, -10
  %i.y = sub i64 %i.x, %i.a                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ac = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep36, align 1, !tbaa !19
  %wide.load37 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load37, ptr %i.ae, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.y, -8                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %n.vec39
  %i.ah = getelementptr i8, ptr %i.t, i64 %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %next.gep41 = getelementptr i8, ptr %i.m, i64 %index40
  %next.gep42 = getelementptr i8, ptr %i.t, i64 %index40
  %wide.load43 = load <8 x i8>, ptr %next.gep42, align 1, !tbaa !19
  store <8 x i8> %wide.load43, ptr %next.gep41, align 1, !tbaa !19
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.y, %n.vec39
  br i1 %cmp.n45, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.ph = phi ptr [ %i.m, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.02631.ph = phi ptr [ %i.t, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.032 = phi ptr [ %i.al, %.lr.ph ], [ %.032.ph, %.lr.ph.preheader ] ; 2 uses
  %.02631 = phi ptr [ %i.ak, %.lr.ph ], [ %.02631.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.02631, align 1, !tbaa !19
  store i8 %i.aj, ptr %.032, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %.02631, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.032, i64 1
  %i.am = icmp ult ptr %i.ak, %i.s
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberDivide_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = call fastcc noundef ptr @_ZL11decDivideOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !21   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !19
  store i8 32, ptr %i.g, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL11decDivideOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i8 noundef zeroext range(i8 16, -127) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [47 x i8], align 16               ; 3 uses
  %i.b = alloca [73 x i8], align 16               ; 3 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = load i32, ptr %3, align 4, !tbaa !26     ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !16    ; 5 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i8, ptr %i.h, align 4, !tbaa !16    ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = xor i8 %i.i, %i.f
  %i.l = and i8 %i.k, -128                        ; 9 uses
  %i.m = or i32 %i.j, %i.g                        ; 2 uses
  %i.n = and i32 %i.m, 112
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.m, 48
  %.not550 = icmp eq i32 %i.o, 0
  br i1 %.not550, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) ; 0 uses
  br label %.thread623.thread

bb.d:                                             ; preds = %bb.b
  %i.q = and i32 %i.g, 64
  %.not551 = icmp eq i32 %i.q, 0
  br i1 %.not551, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %i.j, 64
  %.not554 = icmp eq i32 %i.r, 0
  %i.s = and i8 %4, 80
  %.not555 = icmp eq i8 %i.s, 0
  %or.cond558 = and i1 %.not555, %.not554
  br i1 %or.cond558, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %5, align 4, !tbaa !21
  %i.u = or i32 %i.t, 128
  store i32 %i.u, ptr %5, align 4, !tbaa !21
  br label %.thread623.thread

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.x, align 1, !tbaa !19
  %i.y = or disjoint i8 %i.l, 64
  store i8 %i.y, ptr %i.v, align 4, !tbaa !16
  br label %.thread623.thread

bb.h:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.z = and i8 %4, 80
  %.not552 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not552, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.f, ptr %i.aa, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.af = load i32, ptr %1, align 4, !tbaa !18
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ae, i32 noundef %i.af, ptr noundef nonnull %i.c, ptr noundef nonnull %5)
end_hunk_0
begin_hunk_1_@uprv_decNumberInvert_78:bb.a
  %.not7094 = phi i1 [ false, %.thread ], [ %i.ac, %bb.g ]
  %.pn = getelementptr i8, ptr %i.j, i64 %.pn95
  %i.ad = getelementptr i8, ptr %.pn, i64 -1      ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.split78
  %.05484 = phi ptr [ %i.aq, %.split78 ], [ %i.j, %.lr.ph.preheader ] ; 5 uses
  %.05583 = phi ptr [ %i.ap, %.split78 ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %i.ae = icmp ugt ptr %.05583, %i.t
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.af = load i8, ptr %.05583, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.052 = phi i8 [ %i.af, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  store i8 0, ptr %.05484, align 1, !tbaa !19
  %i.ag = icmp ne ptr %.05484, %i.ad
  %brmerge = select i1 %i.ag, i1 true, i1 %.not7094
  %brmerge.fr = freeze i1 %brmerge
  %i.ah = and i8 %.052, 1
  %.not68.not.us = icmp eq i8 %i.ah, 0            ; 2 uses
  br i1 %brmerge.fr, label %.split.us, label %.split, !llvm.loop !104

.split.us:                                        ; preds = %bb.i
  br i1 %.not68.not.us, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split.us
  store i8 1, ptr %.05484, align 1, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split.us
  %i.ai = urem i8 %.052, 10
  %i.aj = icmp samesign ugt i8 %i.ai, 1
  br i1 %i.aj, label %.split80.us, label %.split78

.split:                                           ; preds = %bb.i
  br i1 %.not68.not.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split
  store i8 1, ptr %.05484, align 1, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split
  %i.ak = urem i8 %.052, 10
  %i.al = icmp samesign ugt i8 %i.ak, 1
  br i1 %i.al, label %.split80.us, label %.split78

.split80.us:                                      ; preds = %bb.m, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.an, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  store i8 0, ptr %i.j, align 1, !tbaa !19
  store i8 32, ptr %i.am, align 4, !tbaa !16
  %i.ao = tail call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %2, i32 noundef 128) ; 0 uses
  br label %bb.o

.split78:                                         ; preds = %bb.k, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.05583, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.05484, i64 1 ; 3 uses
  %.not67 = icmp ugt ptr %i.aq, %i.ad
  br i1 %.not67, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %.split78, %bb.g
  %.054.lcssa = phi ptr [ %i.j, %bb.g ], [ %i.aq, %.split78 ]
  %i.ar = ptrtoint ptr %.054.lcssa to i64
  %i.as = ptrtoint ptr %i.j to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %sext = shl i64 %i.at, 32
  %i.av = ashr exact i64 %sext, 32
  %i.aw = getelementptr i8, ptr %i.j, i64 %i.av
  %.01011.i = getelementptr i8, ptr %i.aw, i64 -1 ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.j
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.n
  %.01014.i = phi ptr [ %.010.i, %bb.n ], [ %.01011.i, %._crit_edge ] ; 2 uses
  %.013.i = phi i32 [ %i.ba, %bb.n ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.ax = load i8, ptr %.01014.i, align 1, !tbaa !19
  %i.ay = icmp ne i8 %i.ax, 0
  %i.az = icmp eq i32 %.013.i, 1
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i, label %_ZL12decGetDigitsPhi.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.ba = add nsw i32 %.013.i, -1                 ; 2 uses
  %.010.i = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %.010.i, %i.j
  br i1 %.not.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL12decGetDigitsPhi.exit:                        ; preds = %.lr.ph.i, %bb.n, %._crit_edge
  %.0.lcssa.i = phi i32 [ %i.au, %._crit_edge ], [ %i.ba, %bb.n ], [ %.013.i, %.lr.ph.i ]
  store i32 %.0.lcssa.i, ptr %0, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bc, align 4, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %.split80.us, %_ZL12decGetDigitsPhi.exit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberLn_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = load i32, ptr %2, align 4, !tbaa !26
  %i.c = icmp sgt i32 %i.b, 999999
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  %i.f = icmp sgt i32 %i.e, 999999
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = icmp slt i32 %i.h, -999999
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 999999
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = add i32 %i.j, -1000001
  %i.o = add i32 %i.n, %i.m
  %or.cond.i = icmp ult i32 %i.o, -2999997
  br i1 %or.cond.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = icmp eq i8 %i.q, 0
  %i.s = icmp eq i32 %i.j, 1
  %or.cond16.i = and i1 %i.s, %i.r
  br i1 %or.cond16.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i8, ptr %i.t, align 4, !tbaa !16
  %i.v = and i8 %i.u, 112
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = call fastcc noundef ptr @_ZL7decLnOpP9decNumberPKS_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.a) ; 0 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not8 = icmp eq i32 %.pr, 0
  br i1 %.not8, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %i.y = phi i32 [ %.pr, %bb.h ], [ 64, %bb.a ], [ 64, %bb.c ], [ 64, %bb.b ], [ 128, %bb.d ], [ 128, %bb.g ], [ 128, %bb.f ] ; 5 uses
  %i.z = and i32 %i.y, 221
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.aa = and i32 %i.y, 1073741824
  %.not6.i = icmp eq i32 %i.aa, 0
  br i1 %.not6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.y, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ae, align 1, !tbaa !19
  store i8 32, ptr %i.ac, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %.thread, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.ab, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %.thread ]
  %i.af = tail call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %2, i32 noundef %.0.i) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL7decLnOpP9decNumberPKS_P10decContextPj(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %4 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %5 = alloca [8 x %struct.decNumber], align 16   ; 3 uses
  %6 = alloca %struct.decNumber, align 4          ; 9 uses
  %7 = alloca %struct.decNumber, align 4          ; 8 uses
  %8 = alloca %struct.decContext, align 4         ; 23 uses
  %9 = alloca %struct.decContext, align 4         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !16    ; 4 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 112
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.g, 64
  %.not176 = icmp eq i32 %i.i, 0
  br i1 %.not176, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not177 = icmp sgt i8 %i.f, -1
  br i1 %.not177, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %3, align 4, !tbaa !21
  %i.k = or i32 %i.j, 128
  store i32 %i.k, ptr %3, align 4, !tbaa !21
  br label %.thread232

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq ptr %0, %1
  br i1 %i.l, label %.thread232, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.m, align 4, !tbaa !16
  %i.n = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.n, ptr %0, align 4, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.p, ptr %i.q, align 1, !tbaa !19
  %i.r = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %.thread232

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.u = icmp samesign ult i32 %i.r, 50
  %i.v = zext nneg i32 %i.r to i64                ; 2 uses
  br i1 %i.u, label %bb.h, label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
  %i.y = zext i8 %i.x to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.g, %bb.h
  %.pn.i = phi i64 [ %i.y, %bb.h ], [ %i.v, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %.pn.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.ab = add i64 %.pn.i, %i.a
  %i.ac = add i64 %i.ab, 9
  %i.ad = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.ad)
  %i.ae = add i64 %umax, -10
  %i.af = sub i64 %i.ae, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  %i.ag = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond291 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond291, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check278 = icmp ult i64 %i.af, 32
  br i1 %min.iters.check278, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.af, 24
  %n.vec = and i64 %i.af, -32                     ; 5 uses
  %i.ai = getelementptr i8, ptr %i.t, i64 %n.vec
  %i.aj = getelementptr i8, ptr %i.aa, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep279, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep279, align 1, !tbaa !19
  %wide.load280 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !19
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load280, ptr %i.al, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.thread232, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec282 = and i64 %i.af, -8                   ; 4 uses
  %i.an = getelementptr i8, ptr %i.t, i64 %n.vec282
  %i.ao = getelementptr i8, ptr %i.aa, i64 %n.vec282
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index283 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next287, %vec.epilog.vector.body ] ; 3 uses
  %next.gep284 = getelementptr i8, ptr %i.t, i64 %index283
  %next.gep285 = getelementptr i8, ptr %i.aa, i64 %index283
  %wide.load286 = load <8 x i8>, ptr %next.gep285, align 1, !tbaa !19
  store <8 x i8> %wide.load286, ptr %next.gep284, align 1, !tbaa !19
  %index.next287 = add nuw i64 %index283, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n288 = icmp eq i64 %i.af, %n.vec282
  br i1 %cmp.n288, label %.thread232, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aq = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.aq, ptr %.032.i, align 1, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.at = icmp ult ptr %i.ar, %i.z
  br i1 %i.at, label %.lr.ph.i, label %.thread232, !llvm.loop !108

bb.i:                                             ; preds = %bb.b
  %i.au = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %.thread232

bb.j:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19  ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0                     ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ay = load i32, ptr %1, align 4, !tbaa !18
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.bc, align 1, !tbaa !19
  store i8 -64, ptr %i.ba, align 4, !tbaa !16
  br label %.thread232

bb.m:                                             ; preds = %bb.k, %bb.j
  %.not173 = icmp sgt i8 %i.f, -1
  br i1 %.not173, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr %3, align 4, !tbaa !21
  %i.be = or i32 %i.bd, 128
  store i32 %i.be, ptr %3, align 4, !tbaa !21
  br label %.thread232

bb.o:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17
  %i.bh = icmp eq i32 %i.bg, 0
  %.pre = load i32, ptr %2, align 4, !tbaa !26    ; 2 uses
  %i.bi = icmp slt i32 %.pre, 41
  %or.cond272 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond272, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  br i1 %i.ax, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !19
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bm = load i32, ptr %1, align 4, !tbaa !18
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !36
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 3, ptr %i.bo, align 4, !tbaa !33
  %i.bp = call ptr @uprv_decNumberFromString_78(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %8) ; 0 uses
  %i.bq = load i32, ptr %3, align 4, !tbaa !21
  %i.br = or i32 %i.bq, 2080
  store i32 %i.br, ptr %3, align 4, !tbaa !21
  br label %.thread232

bb.t:                                             ; preds = %bb.p
  %i.bs = icmp eq i8 %i.aw, 2
  br i1 %i.bs, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bt = load i32, ptr %1, align 4, !tbaa !18
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !36
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 3, ptr %i.bv, align 4, !tbaa !33
  %i.bw = call ptr @uprv_decNumberFromString_78(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %8) ; 0 uses
  %i.bx = load i32, ptr %3, align 4, !tbaa !21
  %i.by = or i32 %i.bx, 2080
  store i32 %i.by, ptr %3, align 4, !tbaa !21
  br label %.thread232

.thread:                                          ; preds = %bb.q, %bb.r, %bb.t, %bb.u, %bb.o
  %i.bz = load i32, ptr %1, align 4, !tbaa !18    ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.pre, i32 %i.bz) ; 2 uses
  %spec.select235 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 7)
  %i.ca = add nuw nsw i32 %spec.select235, 2      ; 6 uses
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 16) ; 2 uses
  %i.cc = icmp slt i32 %spec.select, 48
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19
  %i.cg = zext i8 %i.cf to i32
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %i.ch = phi i32 [ %i.cg, %bb.w ], [ %i.cb, %.thread ] ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.ch, 49
  br i1 %i.ci, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %narrow = add nuw i32 %i.ch, 11
  %i.cj = zext i32 %narrow to i64
  %i.ck = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cj) #16 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.pre243 = load i32, ptr %1, align 4, !tbaa !18
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cm = load i32, ptr %3, align 4, !tbaa !21
  %i.cn = or i32 %i.cm, 16
  store i32 %i.cn, ptr %3, align 4, !tbaa !21
  br label %.thread232

bb.aa:                                            ; preds = %._crit_edge, %bb.x
  %i.co = phi i32 [ %i.bz, %bb.x ], [ %.pre243, %._crit_edge ]
end_hunk_1
begin_hunk_2_@_ZL7decLnOpP9decNumberPKS_P10decContextPj:bb.a
  %i.jb = icmp eq i8 %i.ja, 0                     ; 2 uses
  %.pre244 = load i32, ptr %.0, align 4, !tbaa !18 ; 3 uses
  %i.jc = icmp eq i32 %.pre244, 1
  %or.cond274 = select i1 %i.jb, i1 %i.jc, i1 false
  br i1 %or.cond274, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jd = load i8, ptr %i.ea, align 4, !tbaa !16
  %i.je = and i8 %i.jd, 112
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %._crit_edge245, label %bb.au

._crit_edge245:                                   ; preds = %bb.at
  %.pre246 = load i32, ptr %.0148, align 4, !tbaa !18
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jg = load i32, ptr %.0148, align 4, !tbaa !18 ; 2 uses
  %i.jh = load i32, ptr %i.di, align 4, !tbaa !17
  %i.ji = add nsw i32 %i.jh, %i.jg
  %i.jj = load i32, ptr %i.eb, align 4, !tbaa !17
  %i.jk = add nsw i32 %i.jj, %.pre244
  %i.jl = load i32, ptr %2, align 4, !tbaa !26
  %i.jm = add nsw i32 %i.jk, %i.jl
  %.not175.not = icmp sgt i32 %i.ji, %i.jm
  br i1 %.not175.not, label %bb.av, label %bb.bj

bb.av:                                            ; preds = %._crit_edge245, %bb.au
  %i.jn = phi i32 [ %.pre246, %._crit_edge245 ], [ %i.jg, %bb.au ] ; 2 uses
  %i.jo = icmp eq i32 %i.jn, %i.ca
  br i1 %i.jo, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jp = load i8, ptr %i.dj, align 1, !tbaa !19
  %i.jq = icmp eq i8 %i.jp, 0
  %i.jr = icmp eq i32 %i.jn, 1
  %or.cond = and i1 %i.jr, %i.jq
  br i1 %or.cond, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.js = load i8, ptr %i.dh, align 4, !tbaa !16
  %i.jt = and i8 %i.js, 112
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.jv = load i8, ptr %i.e, align 4, !tbaa !16
  %i.jw = and i8 %i.jv, 48
  %.not115.i = icmp eq i8 %i.jw, 0
  br i1 %.not115.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jx = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %7, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %8, ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jy = call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %6, i8 noundef zeroext 0) ; 3 uses
  %i.jz = icmp eq i32 %i.jy, -2147483648
  br i1 %i.jz, label %bb.bb, label %.thread139.i

bb.bb:                                            ; preds = %bb.ba
  %i.ka = load i32, ptr %i.c, align 4, !tbaa !21
  %i.kb = or i32 %i.ka, 16
  store i32 %i.kb, ptr %i.c, align 4, !tbaa !21
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

.thread139.i:                                     ; preds = %bb.ba
  %i.kc = icmp eq i32 %i.jy, 0
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i8 0, ptr %i.kd, align 4, !tbaa !16
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ke, align 4, !tbaa !17
  store i32 1, ptr %7, align 4, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 9 ; 2 uses
  store i8 0, ptr %i.kf, align 1, !tbaa !19
  br i1 %i.kc, label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit, label %bb.bc

bb.bc:                                            ; preds = %.thread139.i
  store i8 1, ptr %i.kf, align 1, !tbaa !19
  %i.kg = icmp slt i32 %i.jy, 0
  br i1 %i.kg, label %bb.bd, label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

bb.bd:                                            ; preds = %bb.bc
  store i8 -128, ptr %i.kd, align 4, !tbaa !16
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit

_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit: ; preds = %bb.az, %bb.bb, %.thread139.i, %bb.bc, %bb.bd
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 9
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !19
  %i.kj = icmp eq i8 %i.ki, 0
  br i1 %i.kj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit
  store i32 0, ptr %i.di, align 4, !tbaa !17
  br label %.loopexit

bb.bf:                                            ; preds = %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit
  %i.kk = load i32, ptr %3, align 4, !tbaa !21
  %i.kl = or i32 %i.kk, 2080
  store i32 %i.kl, ptr %3, align 4, !tbaa !21
  br label %.loopexit

bb.bg:                                            ; preds = %bb.ax, %bb.aw
  %i.km = icmp eq i32 %.pre244, 1
  %or.cond275 = select i1 %i.jb, i1 %i.km, i1 false
  br i1 %or.cond275, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.kn = load i8, ptr %i.ea, align 4, !tbaa !16
  %i.ko = and i8 %i.kn, 112
  %i.kp = icmp eq i8 %i.ko, 0
  br i1 %i.kp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kq = load i32, ptr %i.di, align 4, !tbaa !17
  %i.kr = sub nsw i32 %i.kq, %i.ca
  store i32 %i.kr, ptr %i.eb, align 4, !tbaa !17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.au
  %i.ks = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %.0148, ptr noundef nonnull %.0148, ptr noundef nonnull %.0, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef %i.c) ; 0 uses
  br i1 %i.is, label %bb.as, label %bb.bk, !llvm.loop !110

bb.bk:                                            ; preds = %bb.bj
  %i.kt = shl nsw i32 %spec.select182.sink273, 1
  %spec.select182 = call i32 @llvm.smin.i32(i32 %i.kt, i32 %i.ca)
  br label %.outer, !llvm.loop !110

.loopexit:                                        ; preds = %bb.av, %bb.be, %bb.bf
  store i32 1, ptr %i.d, align 4, !tbaa !21
  %i.ku = load i8, ptr %i.dj, align 1, !tbaa !19
  %i.kv = icmp eq i8 %i.ku, 0
  br i1 %i.kv, label %bb.bl, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre247 = load i8, ptr %i.dh, align 4, !tbaa !16
  %.pre249 = load i32, ptr %.0148, align 4, !tbaa !18
  br label %bb.bo

bb.bl:                                            ; preds = %.loopexit
  %i.kw = load i32, ptr %.0148, align 4, !tbaa !18 ; 2 uses
  %i.kx = icmp eq i32 %i.kw, 1
  %.pre248 = load i8, ptr %i.dh, align 4, !tbaa !16 ; 4 uses
  br i1 %i.kx, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ky = and i8 %.pre248, 112
  %i.kz = icmp eq i8 %i.ky, 0
  br i1 %i.kz, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.d, align 4, !tbaa !21
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit._crit_edge, %bb.bn, %bb.bm, %bb.bl
  %i.la = phi i32 [ %.pre249, %.loopexit._crit_edge ], [ 1, %bb.bn ], [ 1, %bb.bm ], [ %i.kw, %bb.bl ]
  %i.lb = phi i8 [ %.pre247, %.loopexit._crit_edge ], [ %.pre248, %bb.bn ], [ %.pre248, %bb.bm ], [ %.pre248, %bb.bl ]
  %i.lc = load i32, ptr %2, align 4, !tbaa !26
  store i32 %i.lc, ptr %8, align 4, !tbaa !26
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.lb, ptr %i.ld, align 4, !tbaa !16
  %i.le = load i32, ptr %i.di, align 4, !tbaa !17
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !17
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef %0, ptr noundef nonnull readonly %8, ptr noundef nonnull readonly %i.dj, i32 noundef %i.la, ptr noundef nonnull %i.d, ptr noundef nonnull %3)
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.d, ptr noundef %3)
  br label %uprv_decNumberCopy_78.exit

uprv_decNumberCopy_78.exit:                       ; preds = %bb.bo, %bb.ae
  %.1 = phi ptr [ null, %bb.ae ], [ %.0147, %bb.bo ] ; 2 uses
  %.not178 = icmp eq ptr %.0149, null
  br i1 %.not178, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %uprv_decNumberCopy_78.exit
  call void @uprv_free_78(ptr noundef nonnull %.0149)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %uprv_decNumberCopy_78.exit
  %.not179 = icmp eq ptr %.1, null
  br i1 %.not179, label %.thread232, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @uprv_free_78(ptr noundef nonnull %.1)
  br label %.thread232

.thread232:                                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.i, %bb.l, %bb.n, %bb.s, %bb.v, %bb.z, %bb.e, %bb.f, %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberLogB_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !16    ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = and i32 %i.f, 48
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %uprv_decNumberFromInt32_78.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 64
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %uprv_decNumberCopyAbs_78.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.j, align 4, !tbaa !16
  %i.k = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.k, ptr %0, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.m, ptr %i.n, align 1, !tbaa !19
  %i.o = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %uprv_decNumberCopyAbs_78.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.r = icmp samesign ult i32 %i.o, 50
  %i.s = zext nneg i32 %i.o to i64                ; 2 uses
  br i1 %i.r, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19
  %i.v = zext i8 %i.u to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.e
  %.pn.i.i = phi i64 [ %i.v, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pn.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.y = add i64 %.pn.i.i, %i.a
  %i.z = add i64 %i.y, 9
  %i.aa = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.aa)
  %i.ab = add i64 %umax, -10
  %i.ac = sub i64 %i.ab, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ac, 8
  %i.ad = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond43 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond43, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 5 uses
  %i.af = getelementptr i8, ptr %i.q, i64 %n.vec
  %i.ag = getelementptr i8, ptr %i.x, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %index ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.x, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep31, align 1, !tbaa !19
  %wide.load32 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !19
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load32, ptr %i.ai, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopyAbs_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.ac, -8                    ; 4 uses
  %i.ak = getelementptr i8, ptr %i.q, i64 %n.vec34
  %i.al = getelementptr i8, ptr %i.x, i64 %n.vec34
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.q, i64 %index35
  %next.gep37 = getelementptr i8, ptr %i.x, i64 %index35
  %wide.load38 = load <8 x i8>, ptr %next.gep37, align 1, !tbaa !19
  store <8 x i8> %wide.load38, ptr %next.gep36, align 1, !tbaa !19
  %index.next39 = add nuw i64 %index35, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.ac, %n.vec34
  br i1 %cmp.n40, label %uprv_decNumberCopyAbs_78.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.02631.i.i.ph = phi ptr [ %i.x, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.032.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.032.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02631.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.02631.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.an = load i8, ptr %.02631.i.i, align 1, !tbaa !19
  store i8 %i.an, ptr %.032.i.i, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.02631.i.i, i64 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 1
  %i.aq = icmp ult ptr %i.ao, %i.w
  br i1 %i.aq, label %.lr.ph.i.i, label %uprv_decNumberCopyAbs_78.exit, !llvm.loop !115

uprv_decNumberCopyAbs_78.exit:                    ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.c, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !16
  %i.at = and i8 %i.as, 127
  store i8 %i.at, ptr %i.ar, align 4, !tbaa !16
  br label %uprv_decNumberFromInt32_78.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19
  %i.aw = icmp eq i8 %i.av, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !18    ; 2 uses
  %i.ax = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ba, align 1, !tbaa !19
  store i8 -64, ptr %i.ay, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.bd = add nsw i32 %.pre, %i.bc                ; 2 uses
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.bf, align 4, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 6 uses
  store i8 0, ptr %i.bh, align 1, !tbaa !19
  %i.bi = icmp eq i32 %i.be, 0
  br i1 %i.bi, label %uprv_decNumberFromInt32_78.exit.thread, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.h
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.be, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i
  %.018.i.i = phi ptr [ %i.bm, %.preheader.i.i ], [ %i.bh, %.preheader.i.preheader.i ] ; 2 uses
  %.01417.i.i = phi i32 [ %i.bl, %.preheader.i.i ], [ %.0.i, %.preheader.i.preheader.i ] ; 3 uses
  %i.bj = urem i32 %.01417.i.i, 10
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  store i8 %i.bk, ptr %.018.i.i, align 1, !tbaa !19
  %i.bl = udiv i32 %.01417.i.i, 10
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp ult i32 %.01417.i.i, 10
  br i1 %.not.i.i, label %bb.i, label %.preheader.i.i, !llvm.loop !0

bb.i:                                             ; preds = %.preheader.i.i
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.bp, 32
  %i.br = ashr exact i64 %sext.i.i, 32
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.br
  %.01011.i.i.i = getelementptr i8, ptr %i.bs, i64 -1 ; 2 uses
  %.not12.i.i.i = icmp ult ptr %.01011.i.i.i, %i.bh
  br i1 %.not12.i.i.i, label %uprv_decNumberFromUInt32_78.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.j
  %.01014.i.i.i = phi ptr [ %.010.i.i.i, %bb.j ], [ %.01011.i.i.i, %bb.i ] ; 2 uses
  %.013.i.i.i = phi i32 [ %i.bw, %bb.j ], [ %i.bq, %bb.i ] ; 3 uses
  %i.bt = load i8, ptr %.01014.i.i.i, align 1, !tbaa !19
  %i.bu = icmp ne i8 %i.bt, 0
  %i.bv = icmp eq i32 %.013.i.i.i, 1
  %or.cond.i.i.i = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond.i.i.i, label %uprv_decNumberFromUInt32_78.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = add nsw i32 %.013.i.i.i, -1
  %.010.i.i.i = getelementptr i8, ptr %.01014.i.i.i, i64 -1 ; 2 uses
  %.not.i.i.i = icmp ult ptr %.010.i.i.i, %i.bh
  br i1 %.not.i.i.i, label %uprv_decNumberFromUInt32_78.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

uprv_decNumberFromUInt32_78.exit.i:               ; preds = %bb.j, %.lr.ph.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ %i.bq, %bb.i ], [ 0, %bb.j ], [ %.013.i.i.i, %.lr.ph.i.i.i ]
  store i32 %.0.lcssa.i.i.i, ptr %0, align 4, !tbaa !18
  %i.bx = icmp slt i32 %i.bd, 1
  br i1 %i.bx, label %bb.k, label %uprv_decNumberFromInt32_78.exit.thread

bb.k:                                             ; preds = %uprv_decNumberFromUInt32_78.exit.i
  store i8 -128, ptr %i.bf, align 4, !tbaa !16
  br label %uprv_decNumberFromInt32_78.exit.thread

uprv_decNumberFromInt32_78.exit:                  ; preds = %bb.a
  %i.by = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %i.c) ; 0 uses
  %.pr.pre = load i32, ptr %i.c, align 4, !tbaa !21 ; 6 uses
  %.not19 = icmp eq i32 %.pr.pre, 0
  br i1 %.not19, label %uprv_decNumberFromInt32_78.exit.thread, label %bb.l

bb.l:                                             ; preds = %uprv_decNumberFromInt32_78.exit
  %i.bz = and i32 %.pr.pre, 221
  %.not.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = and i32 %.pr.pre, 1073741824
  %.not6.i = icmp eq i32 %i.ca, 0
  br i1 %.not6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = and i32 %.pr.pre, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.o:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ce, align 1, !tbaa !19
  store i8 32, ptr %i.cc, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %.thread, %bb.l, %bb.n, %bb.o
  %.0.i20 = phi i32 [ %i.cb, %bb.n ], [ %.pr.pre, %bb.o ], [ %.pr.pre, %bb.l ], [ 2, %.thread ]
  %i.cf = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef %.0.i20) ; 0 uses
  br label %uprv_decNumberFromInt32_78.exit.thread
end_hunk_2
begin_hunk_3_@_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj:bb.a
  %.02631.i.ph = phi ptr [ %i.aj, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.az = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.az, ptr %.032.i, align 1, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.bc = icmp ult ptr %i.ba, %i.ai
  br i1 %i.bc, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !118

bb.l:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.p, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 11 uses
  %i.bf = icmp slt i32 %i.r, 50
  br i1 %i.bf, label %bb.m, label %.thread64

.thread64:                                        ; preds = %bb.l
  %i.bg = zext nneg i32 %i.r to i64
  br label %iter.check99

bb.m:                                             ; preds = %bb.l
  %i.bh = sext i32 %i.r to i64
  %i.bi = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bk = zext i8 %i.bj to i64
  %.not53 = icmp eq i32 %i.r, 0
  br i1 %.not53, label %._crit_edge.thread, label %iter.check99

iter.check99:                                     ; preds = %.thread64, %bb.m
  %.pn = phi i64 [ %i.bg, %.thread64 ], [ %i.bk, %bb.m ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pn
  %i.bm = getelementptr inbounds nuw i8, ptr %.040, i64 9 ; 5 uses
  %i.bn = add i64 %.pn, %i.a
  %i.bo = add i64 %i.bn, 9
  %i.bp = add i64 %i.a, 10
  %umax82 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bp)
  %i.bq = add i64 %umax82, -9
  %i.br = sub i64 %i.bq, %i.a                     ; 7 uses
  %min.iters.check83 = icmp ult i64 %i.br, 8
  %i.bs = sub i64 %.04066, %i.a
  %diff.check81 = icmp ugt i64 %i.bs, -32
  %or.cond115 = or i1 %min.iters.check83, %diff.check81
  br i1 %or.cond115, label %.lr.ph.preheader, label %vector.main.loop.iter.check84

vector.main.loop.iter.check84:                    ; preds = %iter.check99
  %min.iters.check85 = icmp ult i64 %i.br, 32
  br i1 %min.iters.check85, label %vec.epilog.ph103, label %vector.ph86

vector.ph86:                                      ; preds = %vector.main.loop.iter.check84
  %i.bt = and i64 %i.br, 24
  %n.vec87 = and i64 %i.br, -32                   ; 5 uses
  %i.bu = getelementptr i8, ptr %i.be, i64 %n.vec87
  %i.bv = getelementptr i8, ptr %i.bm, i64 %n.vec87
  br label %vector.body88

vector.body88:                                    ; preds = %vector.ph86, %vector.body88
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next94, %vector.body88 ] ; 3 uses
  %next.gep90 = getelementptr i8, ptr %i.be, i64 %index89 ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.bm, i64 %index89 ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load92 = load <16 x i8>, ptr %next.gep91, align 1, !tbaa !19
  %wide.load93 = load <16 x i8>, ptr %i.bw, align 1, !tbaa !19
  %i.bx = getelementptr i8, ptr %next.gep90, i64 16
  store <16 x i8> %wide.load92, ptr %next.gep90, align 1, !tbaa !19
  store <16 x i8> %wide.load93, ptr %i.bx, align 1, !tbaa !19
  %index.next94 = add nuw i64 %index89, 32        ; 2 uses
  %i.by = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.by, label %middle.block95, label %vector.body88, !llvm.loop !119

middle.block95:                                   ; preds = %vector.body88
  %cmp.n96 = icmp eq i64 %i.br, %n.vec87
  br i1 %cmp.n96, label %._crit_edge, label %vec.epilog.iter.check101

vec.epilog.iter.check101:                         ; preds = %middle.block95
  %min.epilog.iters.check102 = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check102, label %.lr.ph.preheader, label %vec.epilog.ph103, !prof !34

vec.epilog.ph103:                                 ; preds = %vector.main.loop.iter.check84, %vec.epilog.iter.check101
  %vec.epilog.resume.val97 = phi i64 [ %n.vec87, %vec.epilog.iter.check101 ], [ 0, %vector.main.loop.iter.check84 ]
  %n.vec104 = and i64 %i.br, -8                   ; 4 uses
  %i.bz = getelementptr i8, ptr %i.be, i64 %n.vec104
  %i.ca = getelementptr i8, ptr %i.bm, i64 %n.vec104
  br label %vec.epilog.vector.body105

vec.epilog.vector.body105:                        ; preds = %vec.epilog.vector.body105, %vec.epilog.ph103
  %index106 = phi i64 [ %vec.epilog.resume.val97, %vec.epilog.ph103 ], [ %index.next110, %vec.epilog.vector.body105 ] ; 3 uses
  %next.gep107 = getelementptr i8, ptr %i.be, i64 %index106
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %index106
  %wide.load109 = load <8 x i8>, ptr %next.gep108, align 1, !tbaa !19
  store <8 x i8> %wide.load109, ptr %next.gep107, align 1, !tbaa !19
  %index.next110 = add nuw i64 %index106, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.cb, label %vec.epilog.middle.block111, label %vec.epilog.vector.body105, !llvm.loop !120

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body105
  %cmp.n112 = icmp eq i64 %i.br, %n.vec104
  br i1 %cmp.n112, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check99, %vec.epilog.iter.check101, %vec.epilog.middle.block111
  %.052.ph = phi ptr [ %i.be, %iter.check99 ], [ %i.bu, %vec.epilog.iter.check101 ], [ %i.bz, %vec.epilog.middle.block111 ]
  %.03951.ph = phi ptr [ %i.bm, %iter.check99 ], [ %i.bv, %vec.epilog.iter.check101 ], [ %i.ca, %vec.epilog.middle.block111 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.052 = phi ptr [ %i.cd, %.lr.ph ], [ %.052.ph, %.lr.ph.preheader ] ; 2 uses
  %.03951 = phi ptr [ %i.ce, %.lr.ph ], [ %.03951.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cc = load i8, ptr %.03951, align 1, !tbaa !19
  store i8 %i.cc, ptr %.052, align 1, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.052, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03951, i64 1
  %i.cf = icmp ult ptr %i.cd, %i.bl
  br i1 %i.cf, label %.lr.ph, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block111, %middle.block95
  %.pre = load i32, ptr %3, align 4, !tbaa !26    ; 3 uses
  %i.cg = icmp slt i32 %.pre, 50
  br i1 %i.cg, label %._crit_edge.thread, label %uprv_decNumberCopy_78.exit.sink.split

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.ch = phi i32 [ %.pre, %._crit_edge ], [ %i.r, %bb.m ] ; 4 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !19  ; 2 uses
  %i.cl = zext i8 %i.ck to i32                    ; 5 uses
  store i32 %i.cl, ptr %0, align 4, !tbaa !18
  %i.cm = icmp slt i32 %i.ch, %i.cl
  br i1 %i.cm, label %bb.n, label %uprv_decNumberCopy_78.exit

bb.n:                                             ; preds = %._crit_edge.thread
  %.not.i = icmp sgt i32 %i.ch, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.be, align 1, !tbaa !19
  br label %uprv_decNumberCopy_78.exit.sink.split

bb.p:                                             ; preds = %bb.n
  %.neg35.i = add nuw nsw i32 %i.ch, 1
  %i.cn = sub nsw i32 %.neg35.i, %i.cl            ; 2 uses
  %.not33.i = icmp eq i32 %i.cn, 1
  %.pre55 = zext i8 %i.ck to i64                  ; 2 uses
  br i1 %.not33.i, label %._crit_edge54, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.pn.i50 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pre55
  %i.co = getelementptr inbounds i8, ptr %.pn.i50, i64 -1 ; 2 uses
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !21
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !19
  %i.ct = zext i8 %i.cs to i32
  %i.cu = urem i32 %i.ct, %i.cr
  %i.cv = trunc nuw i32 %i.cu to i8
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !19
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %bb.p, %bb.q
  %i.cw = getelementptr i8, ptr %i.be, i64 %.pre55
  %.01011.i.i = getelementptr i8, ptr %i.cw, i64 -1 ; 2 uses
  %.not12.i.i = icmp ult ptr %.01011.i.i, %i.be
  br i1 %.not12.i.i, label %uprv_decNumberCopy_78.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge54, %bb.r
  %.01014.i.i = phi ptr [ %.010.i.i, %bb.r ], [ %.01011.i.i, %._crit_edge54 ] ; 2 uses
  %.013.i.i = phi i32 [ %i.da, %bb.r ], [ %i.cl, %._crit_edge54 ] ; 3 uses
  %i.cx = load i8, ptr %.01014.i.i, align 1, !tbaa !19
  %i.cy = icmp ne i8 %i.cx, 0
  %i.cz = icmp eq i32 %.013.i.i, 1
  %or.cond.i.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i.i, label %uprv_decNumberCopy_78.exit.sink.split, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.da = add nsw i32 %.013.i.i, -1               ; 2 uses
  %.010.i.i = getelementptr i8, ptr %.01014.i.i, i64 -1 ; 2 uses
  %.not.i.i = icmp ult ptr %.010.i.i, %i.be
  br i1 %.not.i.i, label %uprv_decNumberCopy_78.exit.sink.split, label %.lr.ph.i.i, !llvm.loop !1

uprv_decNumberCopy_78.exit.sink.split:            ; preds = %bb.r, %.lr.ph.i.i, %._crit_edge54, %bb.o, %._crit_edge
  %.pre.sink = phi i32 [ %.pre, %._crit_edge ], [ 1, %bb.o ], [ %i.cl, %._crit_edge54 ], [ %.013.i.i, %.lr.ph.i.i ], [ %i.da, %bb.r ]
  store i32 %.pre.sink, ptr %0, align 4, !tbaa !18
  br label %uprv_decNumberCopy_78.exit

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %uprv_decNumberCopy_78.exit.sink.split, %bb.i, %bb.h, %._crit_edge.thread
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !16
  %i.dd = and i8 %i.dc, -49
  %i.de = or disjoint i8 %i.dd, 32
  store i8 %i.de, ptr %i.db, align 4, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.df, align 4, !tbaa !17
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberCopyAbs_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %uprv_decNumberCopy_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4, !tbaa !16
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !19
  %i.k = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %uprv_decNumberCopy_78.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = icmp samesign ult i32 %i.k, 50
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  br i1 %i.n, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = zext i8 %i.q to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.c, %bb.d
  %.pn.i = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.u = add i64 %.pn.i, %i.a
  %i.v = add i64 %i.u, 9
  %i.w = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.w)
  %i.x = add i64 %umax, -10
  %i.y = sub i64 %i.x, %i.a                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ac = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep7, align 1, !tbaa !19
  %wide.load8 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load8, ptr %i.ae, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.y, -8                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %n.vec10
  %i.ah = getelementptr i8, ptr %i.t, i64 %n.vec10
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.m, i64 %index11
  %next.gep13 = getelementptr i8, ptr %i.t, i64 %index11
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !tbaa !19
  store <8 x i8> %wide.load14, ptr %next.gep12, align 1, !tbaa !19
  %index.next15 = add nuw i64 %index11, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.y, %n.vec10
  br i1 %cmp.n16, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.aj, ptr %.032.i, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.am = icmp ult ptr %i.ak, %i.s
  br i1 %i.am, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !124

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !16
  %i.ap = and i8 %i.ao, 127
  store i8 %i.ap, ptr %i.an, align 4, !tbaa !16
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberLog10_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %4 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %5 = alloca [2 x %struct.decNumber], align 16   ; 14 uses
  %6 = alloca %struct.decContext, align 4         ; 14 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.e = load i32, ptr %2, align 4, !tbaa !26
  %i.f = icmp sgt i32 %i.e, 999999
  br i1 %i.f, label %.thread101.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %i.i = icmp sgt i32 %i.h, 999999
  br i1 %i.i, label %.thread101.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = icmp slt i32 %i.k, -999999
  br i1 %i.l, label %.thread101.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 999999
  br i1 %i.n, label %.thread101.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = add i32 %i.m, -1000001
  %i.r = add i32 %i.q, %i.p
  %or.cond.i = icmp ult i32 %i.r, -2999997
  br i1 %or.cond.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = icmp eq i8 %i.t, 0
  %i.v = icmp eq i32 %i.m, 1
  %or.cond16.i = and i1 %i.v, %i.u
  br i1 %or.cond16.i, label %bb.g, label %.thread101.thread

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i8, ptr %i.w, align 4, !tbaa !16
  %i.y = and i8 %i.x, 112
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.h, label %.thread101.thread

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.aa = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %6, i32 noundef 64) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !16  ; 2 uses
  %.not83 = icmp ult i8 %i.ac, 16
  %.pre107 = load i32, ptr %1, align 4, !tbaa !18 ; 3 uses
  br i1 %.not83, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = icmp eq i8 %i.ae, 0
  %i.ag = icmp eq i32 %.pre107, 1
  %or.cond122 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond122, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !21
  store i32 1, ptr %6, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.ac, ptr %i.ah, align 8, !tbaa !16
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !17
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef nonnull %5, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.ad, i32 noundef %.pre107, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !21
  %i.al = and i32 %i.ak, 32
  %.not84 = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 8 uses
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 1
  %or.cond = select i1 %.not84, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !17 ; 3 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !16
  store i32 0, ptr %i.aj, align 4, !tbaa !17
  store i32 1, ptr %5, align 16, !tbaa !18
  store i8 0, ptr %i.am, align 1, !tbaa !19
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.k
  %.0.i = call i32 @llvm.abs.i32(i32 %i.ap, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i
end_hunk_3
begin_hunk_4_@uprv_decNumberNextMinus_78:bb.a
  store i8 0, ptr %i.q, align 4, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = load i32, ptr %2, align 4, !tbaa !26
  %i.u = add i32 %i.s, 1
  %i.v = sub i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !17
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.z, align 1, !tbaa !19
  store i32 -1000000000, ptr %i.y, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.aa, align 4, !tbaa !33
  %i.ab = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext -128, ptr noundef %i.a) ; 0 uses
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !21  ; 3 uses
  %i.ad = and i32 %i.ac, 1073741952               ; 3 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = and i32 %i.ac, 128
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = and i32 %i.ac, 1073741824
  %.not6.i = icmp eq i32 %i.af, 0
  br i1 %.not6.i, label %bb.f, label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ai, align 1, !tbaa !19
  store i8 32, ptr %i.ag, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.e, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.ad, %bb.d ], [ %i.ad, %bb.f ], [ 128, %bb.e ]
  %i.aj = call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %2, i32 noundef %.0.i) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZL9decStatusP9decNumberjP10decContext.exit, %_ZL14decSetMaxValueP9decNumberP10decContext.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14decSetMaxValueP9decNumberP10decContext(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !26     ; 5 uses
  store i32 %i.a, ptr %0, align 4, !tbaa !18
  %i.b = getelementptr i8, ptr %0, i64 9          ; 2 uses
  %i.c = icmp sgt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nsw i32 %i.a, -1
  %i.e = zext nneg i32 %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.b, i8 9, i64 %i.e, i1 false), !tbaa !19
  %narrow = add nuw i32 %i.a, 8
  %i.f = zext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.f
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %.013.lcssa = phi ptr [ %i.b, %bb.a ], [ %scevgep, %.lr.ph.preheader ]
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 1, %.lr.ph.preheader ]
  %i.g = sext i32 %.0.lcssa to i64
  %i.h = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  %i.j = trunc i32 %i.i to i8
  %i.k = add i8 %i.j, -1
  store i8 %i.k, ptr %.013.lcssa, align 1, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.l, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29
  %i.o = load i32, ptr %1, align 4, !tbaa !26
  %i.p = add i32 %i.n, 1
  %i.q = sub i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberNextPlus_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %4 = alloca %struct.decContext, align 4         ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !16
  %i.d = icmp ugt i8 %i.c, -65
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !26     ; 5 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !18
  %i.f = getelementptr i8, ptr %0, i64 9          ; 2 uses
  %i.g = icmp sgt i32 %i.e, 1
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZL14decSetMaxValueP9decNumberP10decContext.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = add nsw i32 %i.e, -1
  %i.i = zext nneg i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 9, i64 %i.i, i1 false), !tbaa !19
  %narrow.i = add nuw i32 %i.e, 8
  %i.j = zext i32 %narrow.i to i64
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.j
  br label %_ZL14decSetMaxValueP9decNumberP10decContext.exit

_ZL14decSetMaxValueP9decNumberP10decContext.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.013.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %scevgep.i, %.lr.ph.preheader.i ]
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ 1, %.lr.ph.preheader.i ]
  %i.k = sext i32 %.0.lcssa.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.n, -1
  store i8 %i.o, ptr %.013.lcssa.i, align 1, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29
  %i.s = load i32, ptr %2, align 4, !tbaa !26
  %i.t = add i32 %i.r, 1
  %i.u = sub i32 %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !17
  store i8 -128, ptr %i.p, align 4, !tbaa !16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.w, align 4, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.y, align 1, !tbaa !19
  store i32 -1000000000, ptr %i.x, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !33
  %i.aa = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !21  ; 3 uses
  %i.ac = and i32 %i.ab, 1073741952               ; 3 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = and i32 %i.ab, 128
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = and i32 %i.ab, 1073741824
  %.not6.i = icmp eq i32 %i.ae, 0
  br i1 %.not6.i, label %bb.f, label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !19
  store i8 32, ptr %i.af, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.e, %bb.d, %bb.f
  %.0.i = phi i32 [ %i.ac, %bb.d ], [ %i.ac, %bb.f ], [ 128, %bb.e ]
  %i.ai = call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %2, i32 noundef %.0.i) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZL9decStatusP9decNumberjP10decContext.exit, %_ZL14decSetMaxValueP9decNumberP10decContext.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberNextToward_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %4 = alloca %struct.decNumber, align 4          ; 7 uses
  %5 = alloca %struct.decContext, align 4         ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !16
  %i.f = and i8 %i.e, 48
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !16
  %i.i = and i8 %i.h, 48
  %.not37 = icmp eq i8 %i.i, 0
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.c) ; 0 uses
  br label %uprv_decNumberIsNormal_78.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = tail call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0) ; 2 uses
  switch i32 %i.k, label %bb.i [
    i32 -2147483648, label %.thread49
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.g, align 4, !tbaa !16
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %uprv_decNumberCopySign_78.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.d, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.n, ptr %i.o, align 4, !tbaa !16
  %i.p = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.p, ptr %0, align 4, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !19
  %i.t = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %uprv_decNumberCopySign_78.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.w = icmp samesign ult i32 %i.t, 50
  %i.x = zext nneg i32 %i.t to i64                ; 2 uses
  br i1 %i.w, label %bb.h, label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = zext i8 %i.z to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.h, %bb.g
  %.pn.i.i = phi i64 [ %i.aa, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pn.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.ad = add i64 %.pn.i.i, %i.a
  %i.ae = add i64 %i.ad, 9
  %i.af = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = add i64 %umax, -10
  %i.ah = sub i64 %i.ag, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  %i.ai = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check54 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.ah, 24
  %n.vec = and i64 %i.ah, -32                     ; 5 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 %n.vec
  %i.al = getelementptr i8, ptr %i.ac, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %index ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ac, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep55, align 1, !tbaa !19
  %wide.load56 = load <16 x i8>, ptr %i.am, align 1, !tbaa !19
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load56, ptr %i.an, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopySign_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec58 = and i64 %i.ah, -8                    ; 4 uses
  %i.ap = getelementptr i8, ptr %i.v, i64 %n.vec58
  %i.aq = getelementptr i8, ptr %i.ac, i64 %n.vec58
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 3 uses
  %next.gep60 = getelementptr i8, ptr %i.v, i64 %index59
  %next.gep61 = getelementptr i8, ptr %i.ac, i64 %index59
  %wide.load62 = load <8 x i8>, ptr %next.gep61, align 1, !tbaa !19
  store <8 x i8> %wide.load62, ptr %next.gep60, align 1, !tbaa !19
  %index.next63 = add nuw i64 %index59, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.ah, %n.vec58
  br i1 %cmp.n64, label %uprv_decNumberCopySign_78.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.02631.i.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.032.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.032.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.02631.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.02631.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.as = load i8, ptr %.02631.i.i, align 1, !tbaa !19
  store i8 %i.as, ptr %.032.i.i, align 1, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.02631.i.i, i64 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 1
  %i.av = icmp ult ptr %i.at, %i.ab
  br i1 %i.av, label %.lr.ph.i.i, label %uprv_decNumberCopySign_78.exit, !llvm.loop !127

uprv_decNumberCopySign_78.exit:                   ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.f
  %i.aw = and i8 %i.l, -128
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !16
  %i.az = and i8 %i.ay, 127
  %i.ba = or disjoint i8 %i.az, %i.aw
  store i8 %i.ba, ptr %i.ax, align 4, !tbaa !16
  br label %uprv_decNumberIsNormal_78.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.bb = icmp slt i32 %i.k, 0
  %i.bc = load i8, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  br i1 %i.bb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp ugt i8 %i.bc, -65
  br i1 %i.bd, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZL14decSetMaxValueP9decNumberP10decContext(ptr noundef %0, ptr noundef nonnull %3)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -128, ptr %i.be, align 4, !tbaa !16
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.bf = and i8 %i.bc, -64
  %i.bg = icmp eq i8 %i.bf, 64
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZL14decSetMaxValueP9decNumberP10decContext(ptr noundef %0, ptr noundef nonnull %3)
  br label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.j
  %.sink = phi i32 [ 0, %bb.j ], [ 6, %bb.l ]
  %.033 = phi i8 [ 0, %bb.j ], [ -128, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sink, ptr %i.bh, align 4, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bi, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %4, align 4, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 1, ptr %i.bk, align 1, !tbaa !19
  store i32 -1000000000, ptr %i.bj, align 4, !tbaa !17
  %i.bl = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext %.033, ptr noundef %i.c) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !16
  %i.bo = and i8 %i.bn, 112
  %.not.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i, label %bb.o, label %uprv_decNumberIsNormal_78.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !19
  %i.br = icmp eq i8 %i.bq, 0
  %.pre.i = load i32, ptr %0, align 4, !tbaa !18  ; 2 uses
  %i.bs = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i, label %uprv_decNumberIsNormal_78.exit.thread, label %uprv_decNumberIsNormal_78.exit

uprv_decNumberIsNormal_78.exit:                   ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !17
  %i.bv = add nsw i32 %i.bu, %.pre.i
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !28
  %.not9.i.not = icmp sgt i32 %i.bv, %i.bx
  br i1 %.not9.i.not, label %.critedge, label %uprv_decNumberIsNormal_78.exit.thread

uprv_decNumberIsNormal_78.exit.thread:            ; preds = %bb.n, %bb.o, %uprv_decNumberIsNormal_78.exit, %uprv_decNumberCopySign_78.exit, %bb.c
  %.pr = load i32, ptr %i.c, align 4, !tbaa !21   ; 6 uses
  %.not39 = icmp eq i32 %.pr, 0
  br i1 %.not39, label %.critedge, label %bb.p

bb.p:                                             ; preds = %uprv_decNumberIsNormal_78.exit.thread
  %i.by = and i32 %.pr, 221
  %.not.i40 = icmp eq i32 %i.by, 0
  br i1 %.not.i40, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = and i32 %.pr, 1073741824
  %.not6.i = icmp eq i32 %i.bz, 0
  br i1 %.not6.i, label %.thread49, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = and i32 %.pr, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread49:                                        ; preds = %bb.d, %bb.q
  %i.cb = phi i32 [ %.pr, %bb.q ], [ 16, %bb.d ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ce, align 1, !tbaa !19
  store i8 32, ptr %i.cc, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.p, %bb.r, %.thread49
  %.0.i41 = phi i32 [ %i.ca, %bb.r ], [ %i.cb, %.thread49 ], [ %.pr, %bb.p ]
  %i.cf = call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %3, i32 noundef %.0.i41) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %uprv_decNumberIsNormal_78.exit, %bb.k, %bb.m, %uprv_decNumberIsNormal_78.exit.thread, %_ZL9decStatusP9decNumberjP10decContext.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !18
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !16
  %i.h = and i8 %i.g, 112
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %not. = xor i1 %i.i, true
  %spec.select64 = zext i1 %not. to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not57 = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ false, %bb.b ] ; 4 uses
  %.048 = phi i32 [ 1, %bb.a ], [ %spec.select64, %bb.c ], [ 1, %bb.b ]
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %1, align 4, !tbaa !18
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i8, ptr %i.o, align 4, !tbaa !16    ; 2 uses
  %i.q = and i8 %i.p, 112
  %i.r = icmp eq i8 %i.q, 0                       ; 2 uses
  %brmerge = select i1 %i.r, i1 true, i1 %.not57
  %.048.mux = select i1 %i.r, i32 %.048, i32 -1
  br i1 %brmerge, label %bb.y, label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  br i1 %.not57, label %bb.y, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !16
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i8, ptr %i.s, align 4, !tbaa !16
  %.not58 = icmp sgt i8 %i.t, -1
  %spec.select65 = select i1 %.not58, i32 1, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ 0, %bb.i ], [ %spec.select65, %bb.j ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %1, align 4, !tbaa !18
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !16   ; 2 uses
  %i.ab = and i8 %i.aa, 112
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !16  ; 2 uses
  %.not59 = icmp sgt i8 %i.ae, -1
  %spec.select66 = select i1 %.not59, i32 1, i32 -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = phi i8 [ %i.ae, %bb.n ], [ %i.aa, %bb.m ]
  %.047 = phi i32 [ %spec.select66, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ag = icmp sgt i32 %.1, %.047
  br i1 %i.ag, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = icmp slt i32 %.1, %.047                 ; 2 uses
  %brmerge68 = select i1 %i.ah, i1 true, i1 %.not57
  %.mux = sext i1 %i.ah to i32
  br i1 %brmerge68, label %bb.y, label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p, %bb.g
  %i.ai = phi i8 [ %.pre, %._crit_edge ], [ %i.af, %bb.p ], [ %i.p, %bb.g ]
  %.2 = phi i32 [ 1, %._crit_edge ], [ %.1, %bb.p ], [ 1, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !16
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = zext i8 %i.ai to i32                    ; 2 uses
  %i.an = or i32 %i.am, %i.al
  %i.ao = and i32 %i.an, 64
  %.not60 = icmp eq i32 %i.ao, 0
  br i1 %.not60, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = and i32 %i.am, 64
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = and i32 %i.al, 64
  %.not63 = icmp eq i32 %i.aq, 0
  %i.ar = sub nsw i32 0, %.2
  %spec.select69 = select i1 %.not63, i32 %i.ar, i32 0
  br label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  %i.aw = icmp sgt i32 %i.at, %i.av               ; 3 uses
  %i.ax = sub nsw i32 0, %.2
  %.050 = select i1 %i.aw, ptr %0, ptr %1         ; 3 uses
  %.049 = select i1 %i.aw, ptr %1, ptr %0         ; 3 uses
  %.4 = select i1 %i.aw, i32 %i.ax, i32 %.2
  %i.ay = getelementptr inbounds nuw i8, ptr %.049, i64 9
  %i.az = load i32, ptr %.049, align 4, !tbaa !18 ; 3 uses
  %i.ba = icmp slt i32 %i.az, 50
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.be = zext i8 %i.bd to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bf = phi i32 [ %i.be, %bb.u ], [ %i.az, %bb.t ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.050, i64 9
  %i.bh = load i32, ptr %.050, align 4, !tbaa !18 ; 3 uses
  %i.bi = icmp slt i32 %i.bh, 50
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !19
  %i.bm = zext i8 %i.bl to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bn = phi i32 [ %i.bm, %bb.w ], [ %i.bh, %bb.v ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.050, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !17
  %i.bs = sub nsw i32 %i.bp, %i.br
  %i.bt = tail call fastcc noundef i32 @_ZL14decUnitComparePKhiS0_ii(ptr noundef nonnull %i.ay, i32 noundef %i.bf, ptr noundef nonnull %i.bg, i32 noundef %i.bn, i32 noundef %i.bs) ; 2 uses
  %.not61 = icmp eq i32 %i.bt, -2147483648
  %i.bu = mul nsw i32 %i.bt, %.4
  %spec.select67 = select i1 %.not61, i32 -2147483648, i32 %i.bu
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.p, %bb.g, %bb.r, %bb.o, %bb.h, %bb.x
  %.0 = phi i32 [ %.mux, %bb.p ], [ %.048.mux, %bb.g ], [ %spec.select69, %bb.s ], [ %spec.select67, %bb.x ], [ -1, %bb.h ], [ 1, %bb.o ], [ %.2, %bb.r ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberCopySign_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %uprv_decNumberCopy_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %i.h, align 4, !tbaa !16
  %i.i = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.i, ptr %0, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.k, ptr %i.l, align 1, !tbaa !19
  %i.m = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %uprv_decNumberCopy_78.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.p = icmp samesign ult i32 %i.m, 50
  %i.q = zext nneg i32 %i.m to i64                ; 2 uses
  br i1 %i.p, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %i.t = zext i8 %i.s to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.c, %bb.d
  %.pn.i = phi i64 [ %i.t, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pn.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.w = add i64 %.pn.i, %i.a
  %i.x = add i64 %i.w, 9
  %i.y = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y)
  %i.z = add i64 %umax, -10
  %i.aa = sub i64 %i.z, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  %i.ab = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, -32                     ; 5 uses
  %i.ad = getelementptr i8, ptr %i.o, i64 %n.vec
  %i.ae = getelementptr i8, ptr %i.v, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.v, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep9, align 1, !tbaa !19
  %wide.load10 = load <16 x i8>, ptr %i.af, align 1, !tbaa !19
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load10, ptr %i.ag, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.aa, -8                    ; 4 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %n.vec12
  %i.aj = getelementptr i8, ptr %i.v, i64 %n.vec12
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %next.gep14 = getelementptr i8, ptr %i.o, i64 %index13
  %next.gep15 = getelementptr i8, ptr %i.v, i64 %index13
  %wide.load16 = load <8 x i8>, ptr %next.gep15, align 1, !tbaa !19
  store <8 x i8> %wide.load16, ptr %next.gep14, align 1, !tbaa !19
  %index.next17 = add nuw i64 %index13, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next17, %n.vec12
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.aa, %n.vec12
  br i1 %cmp.n18, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.al = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.al, ptr %.032.i, align 1, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.ao = icmp ult ptr %i.am, %i.u
  br i1 %i.ao, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !130

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  %i.ap = and i8 %i.d, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !16
  %i.as = and i8 %i.ar, 127
  %i.at = or disjoint i8 %i.as, %i.ap
  store i8 %i.at, ptr %i.aq, align 4, !tbaa !16
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uprv_decNumberIsNormal_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !16
  %i.c = and i8 %i.b, 112
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %i.f = icmp eq i8 %i.e, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  %i.g = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = add nsw i32 %.pre, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %.not9 = icmp sgt i32 %i.j, %i.l
  %. = zext i1 %.not9 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberOr_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !16
  %or.cond = icmp ult i8 %i.d, 16
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %.not93 = icmp eq i32 %i.f, 0
  br i1 %.not93, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !16
  %or.cond99 = icmp ult i8 %i.h, 16
  br i1 %or.cond99, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.k, align 1, !tbaa !19
  store i8 32, ptr %i.i, align 4, !tbaa !16
  %i.l = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef 128) ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.q = icmp slt i32 %i.p, 50
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = zext i8 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = phi i32 [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = load i32, ptr %2, align 4, !tbaa !18     ; 3 uses
  %i.aa = icmp slt i32 %i.z, 50
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = zext i8 %i.ad to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.af = phi i32 [ %i.ae, %bb.i ], [ %i.z, %bb.h ]
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = load i32, ptr %3, align 4, !tbaa !26    ; 5 uses
  %i.ak = icmp slt i32 %i.aj, 50
  br i1 %i.ak, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  %i.al = zext nneg i32 %i.aj to i64
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %bb.j
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.am
end_hunk_4
begin_hunk_5_@_ZL14decShiftToMostPhii:bb.a
  br i1 %.not73, label %.loopexit76, label %.lr.ph86, !llvm.loop !138

bb.j:                                             ; preds = %bb.i
  %i.be = icmp samesign ult i32 %i.c, 50
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = zext nneg i32 %i.c to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !19
  %i.bi = zext i8 %i.bh to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bj = phi i32 [ %i.bi, %bb.k ], [ %i.c, %bb.j ]
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -1
  %.not78 = icmp eq i32 %i.p, 0
  br i1 %.not78, label %.loopexit76, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bn = sext i32 %i.ad to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21
  %i.bq = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bn
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !21
  %i.bs = sext i32 %i.ac to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.081 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %bb.o ]
  %.16180 = phi ptr [ %i.s, %.lr.ph ], [ %i.cf, %bb.o ] ; 2 uses
  %.16379 = phi ptr [ %i.ab, %.lr.ph ], [ %i.cg, %bb.o ] ; 3 uses
  %i.bv = load i8, ptr %.16180, align 1, !tbaa !19
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = lshr i32 %i.bw, %i.ad
  %i.by = mul i32 %i.bx, %i.bp
  %i.bz = lshr i32 %i.by, 17                      ; 2 uses
  %i.ca = mul i32 %i.bz, %i.br
  %i.cb = sub i32 %i.bw, %i.ca
  %.not72 = icmp ugt ptr %.16379, %i.bm
  br i1 %.not72, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = add i32 %i.bz, %.081
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %.16379, align 1, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = mul i32 %i.bu, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.16180, i64 -1 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.16379, i64 -1 ; 2 uses
  %.not = icmp ult ptr %i.cf, %0
  br i1 %.not, label %.loopexit76.loopexit92, label %bb.m, !llvm.loop !139

.loopexit76.loopexit92:                           ; preds = %bb.o
  %i.ch = trunc i32 %i.ce to i8
  br label %.loopexit76

.loopexit76:                                      ; preds = %.lr.ph86, %middle.block, %vec.epilog.middle.block, %.loopexit76.loopexit92, %bb.l, %.preheader
  %.264 = phi ptr [ %i.cg, %.loopexit76.loopexit92 ], [ %i.ab, %.preheader ], [ %i.ab, %bb.l ], [ %i.aw, %vec.epilog.middle.block ], [ %i.an, %middle.block ], [ %i.bd, %.lr.ph86 ] ; 4 uses
  %.1 = phi i8 [ %i.ch, %.loopexit76.loopexit92 ], [ 0, %.preheader ], [ 0, %bb.l ], [ 0, %vec.epilog.middle.block ], [ 0, %middle.block ], [ 0, %.lr.ph86 ]
  %.264125 = ptrtoaddr ptr %.264 to i64           ; 2 uses
  %.not7488 = icmp ult ptr %.264, %0
  br i1 %.not7488, label %.loopexit, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.loopexit76
  store i8 %.1, ptr %.264, align 1, !tbaa !19
  %i.ci = getelementptr inbounds i8, ptr %.264, i64 -1 ; 6 uses
  %.not74.peel = icmp ult ptr %i.ci, %0
  br i1 %.not74.peel, label %.loopexit, label %iter.check139

iter.check139:                                    ; preds = %.lr.ph91.preheader
  %i.cj = sub i64 0, %i.a
  %i.ck = sub i64 1, %.264125
  %i.cl = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ck)
  %i.cm = add i64 %i.cl, %.264125                 ; 7 uses
  %min.iters.check127 = icmp ult i64 %i.cm, 8
  br i1 %min.iters.check127, label %.lr.ph91.preheader152, label %vector.main.loop.iter.check128

vector.main.loop.iter.check128:                   ; preds = %iter.check139
  %min.iters.check129 = icmp ult i64 %i.cm, 32
  br i1 %min.iters.check129, label %vec.epilog.ph143, label %vector.ph130

vector.ph130:                                     ; preds = %vector.main.loop.iter.check128
  %i.cn = and i64 %i.cm, 24
  %n.vec131 = and i64 %i.cm, -32                  ; 4 uses
  %i.co = sub i64 0, %n.vec131
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.co
  br label %vector.body132

vector.body132:                                   ; preds = %vector.ph130, %vector.body132
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.cq = sub i64 0, %index133
  %next.gep134 = getelementptr i8, ptr %i.ci, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep134, i64 -15
  %i.cs = getelementptr i8, ptr %next.gep134, i64 -31
  store <16 x i8> zeroinitializer, ptr %i.cr, align 1, !tbaa !19
  store <16 x i8> zeroinitializer, ptr %i.cs, align 1, !tbaa !19
  %index.next135 = add nuw i64 %index133, 32      ; 2 uses
  %i.ct = icmp eq i64 %index.next135, %n.vec131
  br i1 %i.ct, label %middle.block136, label %vector.body132, !llvm.loop !140

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.cm, %n.vec131
  br i1 %cmp.n137, label %.loopexit, label %vec.epilog.iter.check141

vec.epilog.iter.check141:                         ; preds = %middle.block136
  %min.epilog.iters.check142 = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check142, label %.lr.ph91.preheader152, label %vec.epilog.ph143, !prof !34

vec.epilog.ph143:                                 ; preds = %vector.main.loop.iter.check128, %vec.epilog.iter.check141
  %vec.epilog.resume.val138 = phi i64 [ %n.vec131, %vec.epilog.iter.check141 ], [ 0, %vector.main.loop.iter.check128 ]
  %n.vec144 = and i64 %i.cm, -8                   ; 3 uses
  %i.cu = sub i64 0, %n.vec144
  %i.cv = getelementptr i8, ptr %i.ci, i64 %i.cu
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph143
  %index146 = phi i64 [ %vec.epilog.resume.val138, %vec.epilog.ph143 ], [ %index.next148, %vec.epilog.vector.body145 ] ; 2 uses
  %i.cw = sub i64 0, %index146
  %next.gep147 = getelementptr i8, ptr %i.ci, i64 %i.cw
  %i.cx = getelementptr i8, ptr %next.gep147, i64 -7
  store <8 x i8> zeroinitializer, ptr %i.cx, align 1, !tbaa !19
  %index.next148 = add nuw i64 %index146, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next148, %n.vec144
  br i1 %i.cy, label %vec.epilog.middle.block149, label %vec.epilog.vector.body145, !llvm.loop !141

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body145
  %cmp.n150 = icmp eq i64 %i.cm, %n.vec144
  br i1 %cmp.n150, label %.loopexit, label %.lr.ph91.preheader152

.lr.ph91.preheader152:                            ; preds = %iter.check139, %vec.epilog.iter.check141, %vec.epilog.middle.block149
  %.389.ph = phi ptr [ %i.ci, %iter.check139 ], [ %i.cp, %vec.epilog.iter.check141 ], [ %i.cv, %vec.epilog.middle.block149 ]
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader152, %.lr.ph91
  %.389 = phi ptr [ %i.cz, %.lr.ph91 ], [ %.389.ph, %.lr.ph91.preheader152 ] ; 2 uses
  store i8 0, ptr %.389, align 1, !tbaa !19
  %i.cz = getelementptr inbounds i8, ptr %.389, i64 -1 ; 2 uses
  %.not74 = icmp ult ptr %i.cz, %0
  br i1 %.not74, label %.loopexit, label %.lr.ph91, !llvm.loop !142

.loopexit:                                        ; preds = %.lr.ph91, %middle.block136, %vec.epilog.middle.block149, %.lr.ph91.preheader, %.loopexit76, %bb.a, %bb.c
  %.065 = phi i32 [ %1, %bb.a ], [ %i.c, %bb.c ], [ %i.c, %.loopexit76 ], [ %i.c, %.lr.ph91.preheader ], [ %i.c, %middle.block136 ], [ %i.c, %vec.epilog.middle.block149 ], [ %i.c, %.lr.ph91 ]
  ret i32 %.065
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberQuantize_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = call fastcc noundef ptr @_ZL13decQuantizeOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !21   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !19
  store i8 32, ptr %i.g, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL13decQuantizeOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i8 noundef zeroext range(i8 0, 2) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca i32, align 4                      ; 7 uses
  %6 = alloca %struct.decContext, align 4         ; 7 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !26     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %reass.sub = sub i32 %i.f, %i.d
  %i.g = add i32 %reass.sub, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 4, !tbaa !16    ; 4 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i8, ptr %i.k, align 4, !tbaa !16    ; 4 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = or i32 %i.m, %i.j                        ; 2 uses
  %i.o = and i32 %i.n, 112
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %i.n, 48
  %.not90 = icmp eq i32 %i.p, 0
  br i1 %.not90, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) ; 0 uses
  br label %uprv_decNumberCopy_78.exit

bb.d:                                             ; preds = %bb.b
  %i.r = xor i32 %i.m, %i.j
  %i.s = and i32 %i.r, 64
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %5, align 4, !tbaa !21
  %i.u = or i32 %i.t, 128
  store i32 %i.u, ptr %5, align 4, !tbaa !21
  br label %uprv_decNumberCopy_78.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq ptr %0, %1
  br i1 %i.v, label %uprv_decNumberCopy_78.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.i, ptr %i.w, align 4, !tbaa !16
  %i.x = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.x, ptr %0, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !19
  %i.ab = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %uprv_decNumberCopy_78.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.ae = icmp samesign ult i32 %i.ab, 50
  %i.af = zext nneg i32 %i.ab to i64              ; 2 uses
  br i1 %i.ae, label %bb.i, label %iter.check

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !19
  %i.ai = zext i8 %i.ah to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.h, %bb.i
  %.pn.i = phi i64 [ %i.ai, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.pn.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.al = add i64 %.pn.i, %i.a
  %i.am = add i64 %i.al, 9
  %i.an = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = add i64 %umax, -10
  %i.ap = sub i64 %i.ao, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ap, 8
  %i.aq = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond155 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond155, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check127 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ap, 24
  %n.vec = and i64 %i.ap, -32                     ; 5 uses
  %i.as = getelementptr i8, ptr %i.ad, i64 %n.vec
  %i.at = getelementptr i8, ptr %i.ak, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %index ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.ak, i64 %index ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep128, align 1, !tbaa !19
  %wide.load129 = load <16 x i8>, ptr %i.au, align 1, !tbaa !19
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load129, ptr %i.av, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.ap, -8                   ; 4 uses
  %i.ax = getelementptr i8, ptr %i.ad, i64 %n.vec131
  %i.ay = getelementptr i8, ptr %i.ak, i64 %n.vec131
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 3 uses
  %next.gep133 = getelementptr i8, ptr %i.ad, i64 %index132
  %next.gep134 = getelementptr i8, ptr %i.ak, i64 %index132
  %wide.load135 = load <8 x i8>, ptr %next.gep134, align 1, !tbaa !19
  store <8 x i8> %wide.load135, ptr %next.gep133, align 1, !tbaa !19
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !144

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.ap, %n.vec131
  br i1 %cmp.n137, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ba = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.ba, ptr %.032.i, align 1, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.bd = icmp ult ptr %i.bb, %i.aj
  br i1 %i.bd, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !145

bb.j:                                             ; preds = %bb.a
  %.not89 = icmp eq i8 %4, 0
  br i1 %.not89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !17
  br label %_ZL9decGetIntPK9decNumber.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17 ; 6 uses
  %i.bj = add i32 %i.bi, %i.bg                    ; 6 uses
  %i.bk = icmp slt i8 %i.l, 0                     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19  ; 2 uses
  %i.bn = icmp eq i32 %i.bg, 1
  %i.bo = and i8 %i.l, 112
  %i.bp = or i8 %i.bm, %i.bo
  %i.bq = icmp eq i8 %i.bp, 0
  %or.cond89.i = select i1 %i.bq, i1 %i.bn, i1 false
  br i1 %or.cond89.i, label %_ZL9decGetIntPK9decNumber.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = icmp sgt i32 %i.bi, -1
  br i1 %i.br, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = sub nsw i32 0, %i.bi
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0109.i = phi i32 [ %i.bs, %bb.n ], [ %i.bu, %bb.p ] ; 2 uses
  %.064108.i = phi ptr [ %i.bl, %bb.n ], [ %i.bv, %bb.p ] ; 2 uses
  %i.bt = load i8, ptr %.064108.i, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i, label %bb.p, label %_ZL9decGetIntPK9decNumber.exit.thread97

bb.p:                                             ; preds = %bb.o
  %i.bu = add nsw i32 %.0109.i, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %.064108.i, i64 1 ; 3 uses
  %i.bw = icmp slt i32 %.0109.i, 2
  br i1 %i.bw, label %.critedge.thread.loopexit.i, label %bb.o, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.m
  %i.bx = icmp eq i32 %i.bi, 0
  br i1 %i.bx, label %.critedge.thread.i, label %bb.q

.critedge.thread.loopexit.i:                      ; preds = %bb.p
  %.pre.i = load i8, ptr %i.bv, align 1, !tbaa !19
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.loopexit.i, %.critedge.i
  %i.by = phi i8 [ %i.bm, %.critedge.i ], [ %.pre.i, %.critedge.thread.loopexit.i ]
  %.46896.i = phi ptr [ %i.bl, %.critedge.i ], [ %i.bv, %.critedge.thread.loopexit.i ]
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.46896.i, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.critedge.thread.i, %.critedge.i
  %.373.i = phi i32 [ %i.bz, %.critedge.thread.i ], [ 0, %.critedge.i ] ; 4 uses
  %.569.i = phi ptr [ %i.ca, %.critedge.thread.i ], [ %i.bl, %.critedge.i ] ; 4 uses
  %.4.i = phi i32 [ 1, %.critedge.thread.i ], [ %i.bi, %.critedge.i ] ; 4 uses
  %i.cb = icmp slt i32 %i.bj, 11
  br i1 %i.cb, label %.preheader.i, label %.thread.i92

.preheader.i:                                     ; preds = %bb.q
  %i.cc = icmp slt i32 %.4.i, %i.bj
  br i1 %i.cc, label %.lr.ph.preheader.i93, label %._crit_edge.i

.lr.ph.preheader.i93:                             ; preds = %.preheader.i
  %i.cd = zext nneg i32 %.4.i to i64              ; 3 uses
  %i.ce = add i32 %i.bi, %i.bg
  %i.cf = xor i32 %.4.i, -1
  %i.cg = add i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check140 = icmp ult i32 %i.cg, 7
  br i1 %min.iters.check140, label %.lr.ph.i94.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.preheader.i93
  %n.vec142 = and i64 %i.ci, 8589934584           ; 4 uses
  %i.cj = add nuw nsw i64 %n.vec142, %i.cd
  %i.ck = getelementptr i8, ptr %.569.i, i64 %n.vec142 ; 2 uses
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.373.i, i64 0
  %invariant.gep = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.cd
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.cl, %vector.ph141 ], [ %i.cs, %vector.body143 ]
  %vec.phi145 = phi <4 x i32> [ zeroinitializer, %vector.ph141 ], [ %i.ct, %vector.body143 ]
  %next.gep146 = getelementptr i8, ptr %.569.i, i64 %index144 ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep146, i64 4
  %wide.load147 = load <4 x i8>, ptr %next.gep146, align 1, !tbaa !19
  %wide.load148 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !19
  %i.cn = zext <4 x i8> %wide.load147 to <4 x i32>
  %i.co = zext <4 x i8> %wide.load148 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index144 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load149 = load <4 x i32>, ptr %gep, align 4, !tbaa !21
  %wide.load150 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !21
  %i.cq = mul <4 x i32> %wide.load149, %i.cn
  %i.cr = mul <4 x i32> %wide.load150, %i.co
  %i.cs = add <4 x i32> %i.cq, %vec.phi           ; 2 uses
  %i.ct = add <4 x i32> %i.cr, %vec.phi145        ; 2 uses
  %index.next151 = add nuw i64 %index144, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cu, label %middle.block152, label %vector.body143, !llvm.loop !146

middle.block152:                                  ; preds = %vector.body143
  %bin.rdx = add <4 x i32> %i.ct, %i.cs
  %i.cv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n153 = icmp eq i64 %i.ci, %n.vec142
  br i1 %cmp.n153, label %._crit_edge.i, label %.lr.ph.i94.preheader

.lr.ph.i94.preheader:                             ; preds = %.lr.ph.preheader.i93, %middle.block152
  %indvars.iv.i.ph = phi i64 [ %i.cd, %.lr.ph.preheader.i93 ], [ %i.cj, %middle.block152 ]
  %.6111.i.ph = phi ptr [ %.569.i, %.lr.ph.preheader.i93 ], [ %i.ck, %middle.block152 ]
  %.474110.i.ph = phi i32 [ %.373.i, %.lr.ph.preheader.i93 ], [ %i.cv, %middle.block152 ]
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.preheader, %.lr.ph.i94
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i94 ], [ %indvars.iv.i.ph, %.lr.ph.i94.preheader ] ; 2 uses
  %.6111.i = phi ptr [ %i.dc, %.lr.ph.i94 ], [ %.6111.i.ph, %.lr.ph.i94.preheader ] ; 2 uses
  %.474110.i = phi i32 [ %i.db, %.lr.ph.i94 ], [ %.474110.i.ph, %.lr.ph.i94.preheader ]
end_hunk_5
begin_hunk_6_@uprv_decNumberSquareRoot_78:bb.a
  store i32 %i.ns, ptr %.0199, align 4, !tbaa !18
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bj, %bb.bs, %bb.bp, %bb.bh, %bb.be
  %i.nt = phi i32 [ %i.mq, %bb.bj ], [ %i.nf, %bb.bs ], [ %i.nf, %bb.bp ], [ %i.mm, %bb.bh ], [ %i.md, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bc
  %i.nu = phi i32 [ %i.nt, %bb.bt ], [ %i.lz, %bb.bc ] ; 3 uses
  %i.nv = and i32 %i.nu, 8192
  %.not234 = icmp eq i32 %i.nv, 0
  br i1 %.not234, label %bb.bw, label %condstore.split

condstore.split:                                  ; preds = %bb.bu
  %i.nw = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.nx = load i32, ptr %1, align 4, !tbaa !18
  %i.ny = add nsw i32 %i.nx, %i.nw
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !28
  %i.ob = shl nsw i32 %i.oa, 1
  %.not235.not = icmp sgt i32 %i.ny, %i.ob        ; 2 uses
  %i.oc = and i32 %i.nu, -12289
  %i.od = select i1 %.not235.not, i32 %i.oc, i32 %i.nu ; 3 uses
  %i.oe = and i32 %i.od, 32
  %.not236 = icmp eq i32 %i.oe, 0                 ; 2 uses
  %i.of = or i1 %.not235.not, %.not236
  br i1 %i.of, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %condstore.split
  %i.og = and i32 %i.od, -8225
  %simplifycfg.merge = select i1 %.not236, i32 %i.og, i32 %i.od
  store i32 %simplifycfg.merge, ptr %i.d, align 4, !tbaa !21
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %condstore.split, %bb.bu
  %i.oh = icmp eq ptr %0, %.0199
  br i1 %i.oh, label %uprv_decNumberCopy_78.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oi = load i8, ptr %i.et, align 4, !tbaa !16
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.oi, ptr %i.oj, align 4, !tbaa !16
  %i.ok = load <2 x i32>, ptr %.0199, align 4, !tbaa !21
  %i.ol = load i32, ptr %.0199, align 4, !tbaa !18 ; 3 uses
  store <2 x i32> %i.ok, ptr %0, align 4, !tbaa !21
  %i.om = load i8, ptr %i.fe, align 1, !tbaa !19
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.om, ptr %i.on, align 1, !tbaa !19
  %i.oo = icmp sgt i32 %i.ol, 1
  br i1 %i.oo, label %bb.by, label %uprv_decNumberCopy_78.exit

bb.by:                                            ; preds = %bb.bx
  %i.op = getelementptr i8, ptr %0, i64 10
  %i.oq = icmp samesign ult i32 %i.ol, 50
  %i.or = zext nneg i32 %i.ol to i64              ; 2 uses
  br i1 %i.oq, label %bb.bz, label %.lr.ph.preheader.i279

bb.bz:                                            ; preds = %bb.by
  %i.os = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !19
  %i.ou = zext i8 %i.ot to i64
  br label %.lr.ph.preheader.i279

.lr.ph.preheader.i279:                            ; preds = %bb.by, %bb.bz
  %.pn.i280 = phi i64 [ %i.ou, %bb.bz ], [ %i.or, %bb.by ]
  %i.ov = add i64 %.pn.i280, %.0199314
  %i.ow = add i64 %i.ov, 9
  %i.ox = add i64 %.0199314, 11
  %umax317 = call i64 @llvm.umax.i64(i64 %i.ow, i64 %i.ox)
  %i.oy = add i64 %umax317, -10
  %i.oz = sub i64 %i.oy, %.0199314
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.op, ptr nonnull align 2 %i.ff, i64 %i.oz, i1 false), !tbaa !19
  br label %uprv_decNumberCopy_78.exit

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.preheader.i260, %.lr.ph.preheader.i279, %bb.bx, %bb.bw, %bb.al, %bb.ak, %bb.x
  %.1204 = phi ptr [ %.0203, %bb.bw ], [ %.0203, %.lr.ph.preheader.i279 ], [ %.0203, %bb.bx ], [ %i.dm, %bb.x ], [ %.0203, %bb.ak ], [ %.0203, %bb.al ], [ %.0203, %.lr.ph.preheader.i260 ] ; 2 uses
  %.1202 = phi ptr [ %.0201, %bb.bw ], [ %.0201, %.lr.ph.preheader.i279 ], [ %.0201, %bb.bx ], [ %i.dn, %bb.x ], [ %.0201, %bb.ak ], [ %.0201, %bb.al ], [ %.0201, %.lr.ph.preheader.i260 ] ; 2 uses
  %.not239 = icmp eq ptr %.0205, null
  br i1 %.not239, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %uprv_decNumberCopy_78.exit
  call void @uprv_free_78(ptr noundef nonnull %.0205)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %uprv_decNumberCopy_78.exit
  %.not240 = icmp eq ptr %.1204, null
  br i1 %.not240, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @uprv_free_78(ptr noundef nonnull %.1204)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not241 = icmp eq ptr %.1202, null
  br i1 %.not241, label %.thread301, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @uprv_free_78(ptr noundef nonnull %.1202)
  br label %.thread301

.thread301:                                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %uprv_decNumberCopy_78.exit251, %bb.h, %bb.ce, %bb.cd
  %.pr304 = load i32, ptr %i.d, align 4, !tbaa !21 ; 6 uses
  %.not242 = icmp eq i32 %.pr304, 0
  br i1 %.not242, label %bb.cg, label %.thread301.thread

.thread301.thread:                                ; preds = %.thread301
  %i.pa = and i32 %.pr304, 221
  %.not.i = icmp eq i32 %i.pa, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %.thread301.thread.thread

.thread301.thread.thread:                         ; preds = %.thread301.thread
  %i.pb = and i32 %.pr304, 1073741824
  %.not6.i = icmp eq i32 %i.pb, 0
  br i1 %.not6.i, label %.thread301.thread.thread.thread, label %bb.cf

bb.cf:                                            ; preds = %.thread301.thread.thread
  %i.pc = and i32 %.pr304, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread301.thread.thread.thread:                  ; preds = %bb.s, %bb.o, %bb.c, %.thread301.thread.thread
  %i.pd = phi i32 [ %.pr304, %.thread301.thread.thread ], [ 128, %bb.o ], [ 128, %bb.c ], [ 16, %bb.s ]
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.pf, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.pg, align 1, !tbaa !19
  store i8 32, ptr %i.pe, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %.thread301.thread, %bb.cf, %.thread301.thread.thread.thread
  %.0.i = phi i32 [ %i.pc, %bb.cf ], [ %i.pd, %.thread301.thread.thread.thread ], [ %.pr304, %.thread301.thread ]
  %i.ph = call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef %.0.i) ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %.thread301
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberSubtract_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext -128, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !21   ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !19
  store i8 32, ptr %i.g, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberToIntegralExact_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 8 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %4 = alloca %struct.decContext, align 4         ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 4, !tbaa !16    ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 112
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.g, 64
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %0, %1
  br i1 %i.j, label %uprv_decNumberCopy_78.exit27, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.k, align 4, !tbaa !16
  %i.l = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.l, ptr %0, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.n, ptr %i.o, align 1, !tbaa !19
  %i.p = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %uprv_decNumberCopy_78.exit27

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.s = icmp samesign ult i32 %i.p, 50
  %i.t = zext nneg i32 %i.p to i64                ; 2 uses
  br i1 %i.s, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  %i.w = zext i8 %i.v to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.e, %bb.f
  %.pn.i = phi i64 [ %i.w, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %.pn.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.z = add i64 %.pn.i, %i.a
  %i.aa = add i64 %i.z, 9
  %i.ab = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ab)
  %i.ac = add i64 %umax, -10
  %i.ad = sub i64 %i.ac, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  %i.ae = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.ad, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, -32                     ; 5 uses
  %i.ag = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.ah = getelementptr i8, ptr %i.y, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.y, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep41, align 1, !tbaa !19
  %wide.load42 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !19
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load42, ptr %i.aj, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit27, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.ad, -8                    ; 4 uses
  %i.al = getelementptr i8, ptr %i.r, i64 %n.vec44
  %i.am = getelementptr i8, ptr %i.y, i64 %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %i.r, i64 %index45
  %next.gep47 = getelementptr i8, ptr %i.y, i64 %index45
  %wide.load48 = load <8 x i8>, ptr %next.gep47, align 1, !tbaa !19
  store <8 x i8> %wide.load48, ptr %next.gep46, align 1, !tbaa !19
  %index.next49 = add nuw i64 %index45, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.ad, %n.vec44
  br i1 %cmp.n50, label %uprv_decNumberCopy_78.exit27, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ao = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.ao, ptr %.032.i, align 1, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.ar = icmp ult ptr %i.ap, %i.x
  br i1 %i.ar, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit27, !llvm.loop !173

bb.g:                                             ; preds = %bb.b
  %i.as = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %i.d) ; 0 uses
  %.pr.pre = load i32, ptr %i.d, align 4, !tbaa !21
  br label %uprv_decNumberCopy_78.exit

bb.h:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !17 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq ptr %0, %1
  br i1 %i.aw, label %uprv_decNumberCopy_78.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.ax, align 4, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !17
  %i.az = load i32, ptr %1, align 4, !tbaa !18
  store i32 %i.az, ptr %0, align 4, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !19
  %i.bd = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.k, label %uprv_decNumberCopy_78.exit27

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.bg = icmp samesign ult i32 %i.bd, 50
  %i.bh = zext nneg i32 %i.bd to i64              ; 2 uses
  br i1 %i.bg, label %bb.l, label %iter.check72

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bk = zext i8 %i.bj to i64
  br label %iter.check72

iter.check72:                                     ; preds = %bb.k, %bb.l
  %.pn.i23 = phi i64 [ %i.bk, %bb.l ], [ %i.bh, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.pn.i23
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.bn = add i64 %.pn.i23, %i.a
  %i.bo = add i64 %i.bn, 9
  %i.bp = add i64 %i.a, 11
  %umax55 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bp)
  %i.bq = add i64 %umax55, -10
  %i.br = sub i64 %i.bq, %i.a                     ; 7 uses
  %min.iters.check56 = icmp ult i64 %i.br, 8
  %i.bs = sub i64 %i.a, %i.b
  %diff.check54 = icmp ugt i64 %i.bs, -32
  %or.cond88 = or i1 %min.iters.check56, %diff.check54
  br i1 %or.cond88, label %.lr.ph.i24.preheader, label %vector.main.loop.iter.check57

vector.main.loop.iter.check57:                    ; preds = %iter.check72
  %min.iters.check58 = icmp ult i64 %i.br, 32
  br i1 %min.iters.check58, label %vec.epilog.ph76, label %vector.ph59

vector.ph59:                                      ; preds = %vector.main.loop.iter.check57
  %i.bt = and i64 %i.br, 24
  %n.vec60 = and i64 %i.br, -32                   ; 5 uses
  %i.bu = getelementptr i8, ptr %i.bf, i64 %n.vec60
  %i.bv = getelementptr i8, ptr %i.bm, i64 %n.vec60
  br label %vector.body61

vector.body61:                                    ; preds = %vector.ph59, %vector.body61
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 3 uses
  %next.gep63 = getelementptr i8, ptr %i.bf, i64 %index62 ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.bm, i64 %index62 ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load65 = load <16 x i8>, ptr %next.gep64, align 1, !tbaa !19
  %wide.load66 = load <16 x i8>, ptr %i.bw, align 1, !tbaa !19
  %i.bx = getelementptr i8, ptr %next.gep63, i64 16
  store <16 x i8> %wide.load65, ptr %next.gep63, align 1, !tbaa !19
  store <16 x i8> %wide.load66, ptr %i.bx, align 1, !tbaa !19
  %index.next67 = add nuw i64 %index62, 32        ; 2 uses
  %i.by = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.by, label %middle.block68, label %vector.body61, !llvm.loop !174

middle.block68:                                   ; preds = %vector.body61
  %cmp.n69 = icmp eq i64 %i.br, %n.vec60
  br i1 %cmp.n69, label %uprv_decNumberCopy_78.exit27, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block68
  %min.epilog.iters.check75 = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph.i24.preheader, label %vec.epilog.ph76, !prof !34

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check57, %vec.epilog.iter.check74
  %vec.epilog.resume.val70 = phi i64 [ %n.vec60, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check57 ]
  %n.vec77 = and i64 %i.br, -8                    ; 4 uses
  %i.bz = getelementptr i8, ptr %i.bf, i64 %n.vec77
  %i.ca = getelementptr i8, ptr %i.bm, i64 %n.vec77
  br label %vec.epilog.vector.body78

vec.epilog.vector.body78:                         ; preds = %vec.epilog.vector.body78, %vec.epilog.ph76
  %index79 = phi i64 [ %vec.epilog.resume.val70, %vec.epilog.ph76 ], [ %index.next83, %vec.epilog.vector.body78 ] ; 3 uses
  %next.gep80 = getelementptr i8, ptr %i.bf, i64 %index79
  %next.gep81 = getelementptr i8, ptr %i.bm, i64 %index79
  %wide.load82 = load <8 x i8>, ptr %next.gep81, align 1, !tbaa !19
  store <8 x i8> %wide.load82, ptr %next.gep80, align 1, !tbaa !19
  %index.next83 = add nuw i64 %index79, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next83, %n.vec77
  br i1 %i.cb, label %vec.epilog.middle.block84, label %vec.epilog.vector.body78, !llvm.loop !175

vec.epilog.middle.block84:                        ; preds = %vec.epilog.vector.body78
  %cmp.n85 = icmp eq i64 %i.br, %n.vec77
  br i1 %cmp.n85, label %uprv_decNumberCopy_78.exit27, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %iter.check72, %vec.epilog.iter.check74, %vec.epilog.middle.block84
  %.032.i25.ph = phi ptr [ %i.bf, %iter.check72 ], [ %i.bu, %vec.epilog.iter.check74 ], [ %i.bz, %vec.epilog.middle.block84 ]
  %.02631.i26.ph = phi ptr [ %i.bm, %iter.check72 ], [ %i.bv, %vec.epilog.iter.check74 ], [ %i.ca, %vec.epilog.middle.block84 ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader, %.lr.ph.i24
  %.032.i25 = phi ptr [ %i.ce, %.lr.ph.i24 ], [ %.032.i25.ph, %.lr.ph.i24.preheader ] ; 2 uses
  %.02631.i26 = phi ptr [ %i.cd, %.lr.ph.i24 ], [ %.02631.i26.ph, %.lr.ph.i24.preheader ] ; 2 uses
  %i.cc = load i8, ptr %.02631.i26, align 1, !tbaa !19
  store i8 %i.cc, ptr %.032.i25, align 1, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.02631.i26, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.032.i25, i64 1
  %i.cf = icmp ult ptr %i.cd, %i.bl
  br i1 %i.cf, label %.lr.ph.i24, label %uprv_decNumberCopy_78.exit27, !llvm.loop !176

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !36
  %i.cg = load i32, ptr %1, align 4, !tbaa !18
  store i32 %i.cg, ptr %4, align 4, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ch, align 4, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ci, align 4, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.cj, align 4, !tbaa !17
  store i32 1, ptr %3, align 4, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.cl = call fastcc noundef ptr @_ZL13decQuantizeOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %3, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef %i.c) ; 0 uses
  %i.cm = load i32, ptr %i.c, align 4, !tbaa !21  ; 6 uses
  %.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i, label %uprv_decNumberQuantize_78.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = and i32 %i.cm, 221
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %_ZL9decStatusP9decNumberjP10decContext.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = and i32 %i.cm, 1073741824
  %.not6.i.i = icmp eq i32 %i.co, 0
  br i1 %.not6.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = and i32 %i.cm, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cr, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cs, align 1, !tbaa !19
  store i8 32, ptr %i.cq, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit.i

_ZL9decStatusP9decNumberjP10decContext.exit.i:    ; preds = %bb.q, %bb.p, %bb.n
  %.0.i.i = phi i32 [ %i.cp, %bb.p ], [ %i.cm, %bb.q ], [ %i.cm, %bb.n ]
  %i.ct = call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %4, i32 noundef %.0.i.i) ; 0 uses
  br label %uprv_decNumberQuantize_78.exit

uprv_decNumberQuantize_78.exit:                   ; preds = %bb.m, %_ZL9decStatusP9decNumberjP10decContext.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !38
  br label %uprv_decNumberCopy_78.exit

uprv_decNumberCopy_78.exit:                       ; preds = %bb.g, %uprv_decNumberQuantize_78.exit
  %i.cw = phi i32 [ %i.cv, %uprv_decNumberQuantize_78.exit ], [ %.pr.pre, %bb.g ] ; 6 uses
  %.not20 = icmp eq i32 %i.cw, 0
  br i1 %.not20, label %uprv_decNumberCopy_78.exit27, label %bb.r

bb.r:                                             ; preds = %uprv_decNumberCopy_78.exit
  %i.cx = and i32 %i.cw, 221
  %.not.i28 = icmp eq i32 %i.cx, 0
  br i1 %.not.i28, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = and i32 %i.cw, 1073741824
  %.not6.i = icmp eq i32 %i.cy, 0
  br i1 %.not6.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = and i32 %i.cw, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.u:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.db, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.dc, align 1, !tbaa !19
  store i8 32, ptr %i.da, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.r, %bb.t, %bb.u
  %.0.i = phi i32 [ %i.cz, %bb.t ], [ %i.cw, %bb.u ], [ %i.cw, %bb.r ]
  %i.dd = call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef %.0.i) ; 0 uses
  br label %uprv_decNumberCopy_78.exit27

uprv_decNumberCopy_78.exit27:                     ; preds = %.lr.ph.i, %.lr.ph.i24, %middle.block, %vec.epilog.middle.block, %middle.block68, %vec.epilog.middle.block84, %bb.c, %bb.d, %bb.j, %bb.i, %uprv_decNumberCopy_78.exit, %_ZL9decStatusP9decNumberjP10decContext.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberToIntegralValue_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.decContext, align 4         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.b = call ptr @uprv_decNumberToIntegralExact_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = and i32 %i.d, 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
  %i.h = or i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberXor_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !16
end_hunk_6
begin_hunk_7_@uprv_decNumberXor_78:bb.a
bb.o:                                             ; preds = %bb.m, %bb.n
  %.072 = phi i8 [ %i.aw, %bb.n ], [ 0, %bb.m ]   ; 4 uses
  store i8 0, ptr %.077115, align 1, !tbaa !19
  %i.ax = or i8 %.072, %.073
  %.not97 = icmp eq i8 %i.ax, 0
  br i1 %.not97, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.ay = icmp ne ptr %.077115, %i.as
  %brmerge = select i1 %i.ay, i1 true, i1 %.not101128
  %brmerge.fr = freeze i1 %brmerge
  %i.az = xor i8 %.072, %.073
  %i.ba = and i8 %i.az, 1
  %.not98.us = icmp eq i8 %i.ba, 0                ; 2 uses
  br i1 %brmerge.fr, label %.preheader.split.us, label %.preheader.split, !llvm.loop !177

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not98.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.split.us
  store i8 1, ptr %.077115, align 1, !tbaa !19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.split.us
  %i.bb = urem i8 %.073, 10
  %i.bc = urem i8 %.072, 10
  %i.bd = or i8 %i.bc, %i.bb
  %i.be = icmp samesign ugt i8 %i.bd, 1
  br i1 %i.be, label %.split.us, label %.loopexit

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not98.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader.split
  store i8 1, ptr %.077115, align 1, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.split
  %i.bf = urem i8 %.073, 10
  %i.bg = urem i8 %.072, 10
  %i.bh = or i8 %i.bg, %i.bf
  %i.bi = icmp samesign ugt i8 %i.bh, 1
  br i1 %i.bi, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %bb.s, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  store i8 0, ptr %i.o, align 1, !tbaa !19
  store i8 32, ptr %i.bj, align 4, !tbaa !16
  %i.bl = tail call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %3, i32 noundef 128) ; 0 uses
  br label %bb.u

.loopexit:                                        ; preds = %bb.q, %bb.s, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.079113, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.078114, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.077115, i64 1 ; 3 uses
  %.not96 = icmp ugt ptr %i.bo, %i.as
  br i1 %.not96, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %.loopexit, %bb.k
  %.077.lcssa = phi ptr [ %i.o, %bb.k ], [ %i.bo, %.loopexit ]
  %i.bp = ptrtoint ptr %.077.lcssa to i64
  %i.bq = ptrtoint ptr %i.o to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %sext = shl i64 %i.br, 32
  %i.bt = ashr exact i64 %sext, 32
  %i.bu = getelementptr i8, ptr %i.o, i64 %i.bt
  %.01011.i = getelementptr i8, ptr %i.bu, i64 -1 ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.o
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %.01014.i = phi ptr [ %.010.i, %bb.t ], [ %.01011.i, %._crit_edge ] ; 2 uses
  %.013.i = phi i32 [ %i.by, %bb.t ], [ %i.bs, %._crit_edge ] ; 3 uses
  %i.bv = load i8, ptr %.01014.i, align 1, !tbaa !19
  %i.bw = icmp ne i8 %i.bv, 0
  %i.bx = icmp eq i32 %.013.i, 1
  %or.cond.i = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond.i, label %_ZL12decGetDigitsPhi.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.by = add nsw i32 %.013.i, -1                 ; 2 uses
  %.010.i = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %.010.i, %i.o
  br i1 %.not.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL12decGetDigitsPhi.exit:                        ; preds = %.lr.ph.i, %bb.t, %._crit_edge
  %.0.lcssa.i = phi i32 [ %i.bs, %._crit_edge ], [ %i.by, %bb.t ], [ %.013.i, %.lr.ph.i ]
  store i32 %.0.lcssa.i, ptr %0, align 4, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bz, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ca, align 4, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %.split.us, %_ZL12decGetDigitsPhi.exit, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 10) i32 @_Z22uprv_decNumberClass_78PK9decNumberP10decContext(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !16    ; 6 uses
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = and i32 %i.c, 112
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 32
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.c, 16
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp sgt i8 %i.b, -1
  %. = select i1 %.not18, i32 9, i32 2
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = and i8 %i.b, 112
  %.not.i = icmp ne i8 %i.g, 0                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !19 ; 2 uses
  br i1 %.not.i, label %uprv_decNumberIsNormal_78.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i8 %.pre, 0
  %.pre.i = load i32, ptr %0, align 4, !tbaa !18  ; 2 uses
  %i.i = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %uprv_decNumberIsNormal_78.exit.thread.thread, label %uprv_decNumberIsNormal_78.exit

uprv_decNumberIsNormal_78.exit:                   ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = add nsw i32 %i.k, %.pre.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %.not9.i.not = icmp sgt i32 %i.l, %i.n
  br i1 %.not9.i.not, label %bb.g, label %uprv_decNumberIsNormal_78.exit.thread

bb.g:                                             ; preds = %uprv_decNumberIsNormal_78.exit
  %.not15 = icmp sgt i8 %i.b, -1
  %.19 = select i1 %.not15, i32 8, i32 3
  br label %bb.j

uprv_decNumberIsNormal_78.exit.thread:            ; preds = %bb.e, %uprv_decNumberIsNormal_78.exit
  %i.o = icmp eq i8 %.pre, 0
  br i1 %i.o, label %uprv_decNumberIsNormal_78.exit.thread.thread, label %bb.i

uprv_decNumberIsNormal_78.exit.thread.thread:     ; preds = %bb.f, %uprv_decNumberIsNormal_78.exit.thread
  %i.p = load i32, ptr %0, align 4, !tbaa !18
  %i.q = icmp ne i32 %i.p, 1
  %brmerge = or i1 %.not.i, %i.q
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %uprv_decNumberIsNormal_78.exit.thread.thread
  %.not14 = icmp sgt i8 %i.b, -1
  %.20 = select i1 %.not14, i32 6, i32 5
  br label %bb.j

bb.i:                                             ; preds = %uprv_decNumberIsNormal_78.exit.thread.thread, %uprv_decNumberIsNormal_78.exit.thread
  %.not13 = icmp sgt i8 %i.b, -1
  %.21 = select i1 %.not13, i32 7, i32 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %.20, %bb.h ], [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ], [ %.19, %bb.g ], [ %.21, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @uprv_decNumberClassToString_78(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.uprv_decNumberClassToString_78, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberCopyNegate_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %uprv_decNumberCopy_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4, !tbaa !16
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !19
  %i.k = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %uprv_decNumberCopy_78.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = icmp samesign ult i32 %i.k, 50
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  br i1 %i.n, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = zext i8 %i.q to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.c, %bb.d
  %.pn.i = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.u = add i64 %.pn.i, %i.a
  %i.v = add i64 %i.u, 9
  %i.w = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.w)
  %i.x = add i64 %umax, -10
  %i.y = sub i64 %i.x, %i.a                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ac = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep7, align 1, !tbaa !19
  %wide.load8 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load8, ptr %i.ae, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.y, -8                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %n.vec10
  %i.ah = getelementptr i8, ptr %i.t, i64 %n.vec10
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.m, i64 %index11
  %next.gep13 = getelementptr i8, ptr %i.t, i64 %index11
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !tbaa !19
  store <8 x i8> %wide.load14, ptr %next.gep12, align 1, !tbaa !19
  %index.next15 = add nuw i64 %index11, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.y, %n.vec10
  br i1 %cmp.n16, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.aj, ptr %.032.i, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.am = icmp ult ptr %i.ak, %i.s
  br i1 %i.am, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !181

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !16
  %i.ap = xor i8 %i.ao, -128
  store i8 %i.ap, ptr %i.an, align 4, !tbaa !16
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberGetBCD_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(address, ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  %.not13 = icmp slt i32 %i.b, 1
  br i1 %.not13, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.c = zext nneg i32 %i.b to i64                ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 2 uses
  %.01012 = getelementptr i8, ptr %i.d, i64 -1    ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 9          ; 7 uses
  %i.f = add i64 %i.a, %i.c                       ; 2 uses
  %i.g = sub i64 1, %i.f
  %i.h = sub i64 0, %i.a
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  %i.j = add i64 %i.i, %i.f                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add i64 %i.a, %i.c                       ; 2 uses
  %i.l = add i64 %i.k, -2
  %i.m = add i64 %i.a, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add i64 %i.n, 1
  %i.p = sub i64 %i.o, %i.a
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = add i64 %i.k, 8
  %i.s = sub i64 %i.r, %i.n
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %bound0 = icmp ult ptr %i.q, %i.t
  %bound1 = icmp ult ptr %i.e, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check17 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 5 uses
  %i.v = sub i64 0, %n.vec
  %i.w = getelementptr i8, ptr %.01012, i64 %i.v
  %i.x = getelementptr i8, ptr %i.e, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.01012, i64 %i.y ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.e, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep18, align 1, !tbaa !19, !alias.scope !188
  %wide.load19 = load <16 x i8>, ptr %i.z, align 1, !tbaa !19, !alias.scope !188
  %i.aa = getelementptr i8, ptr %next.gep, i64 -15
  %i.ab = getelementptr i8, ptr %next.gep, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse20 = shufflevector <16 x i8> %wide.load19, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.aa, align 1, !tbaa !19, !alias.scope !189, !noalias !188
  store <16 x i8> %reverse20, ptr %i.ab, align 1, !tbaa !19, !alias.scope !189, !noalias !188
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.j, -8                     ; 4 uses
  %i.ad = sub i64 0, %n.vec22
  %i.ae = getelementptr i8, ptr %.01012, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.e, i64 %n.vec22
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = sub i64 0, %index23
  %next.gep24 = getelementptr i8, ptr %.01012, i64 %i.ag
  %next.gep25 = getelementptr i8, ptr %i.e, i64 %index23
  %wide.load26 = load <8 x i8>, ptr %next.gep25, align 1, !tbaa !19, !alias.scope !188
  %i.ah = getelementptr i8, ptr %next.gep24, i64 -7
  %reverse27 = shufflevector <8 x i8> %wide.load26, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse27, ptr %i.ah, align 1, !tbaa !19, !alias.scope !189, !noalias !188
  %index.next28 = add nuw i64 %index23, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next28, %n.vec22
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !186

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.j, %n.vec22
  br i1 %cmp.n29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01015.ph = phi ptr [ %.01012, %iter.check ], [ %.01012, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.014.ph = phi ptr [ %i.e, %iter.check ], [ %i.e, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01015 = phi ptr [ %.010, %.lr.ph ], [ %.01015.ph, %.lr.ph.preheader ] ; 2 uses
  %.014 = phi ptr [ %i.ak, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.014, align 1, !tbaa !19
  store i8 %i.aj, ptr %.01015, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.010 = getelementptr inbounds i8, ptr %.01015, i64 -1 ; 2 uses
  %.not = icmp ult ptr %.010, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %1
}

end_hunk_7
