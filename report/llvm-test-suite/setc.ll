Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/setc?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cdist:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.041 = phi i32 [ %i.ag, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.ah = icmp sgt i32 %i.a, 1
  br i1 %i.ah, label %.lr.ph.preheader, label %.loopexit49

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.150 = phi i32 [ %.041, %.lr.ph.preheader ], [ %.2, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = and i32 %i.al, %i.aj                    ; 2 uses
  %i.an = lshr i32 %i.am, 1
  %i.ao = or i32 %i.an, %i.am
  %i.ap = and i32 %i.ao, 1431655765               ; 2 uses
  %.not48 = icmp eq i32 %i.ap, 1431655765
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.aq = xor i32 %i.ap, 1431655765               ; 4 uses
  %i.ar = and i32 %i.aq, 85
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = lshr i32 %i.aq, 8
  %i.aw = and i32 %i.av, 85
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = lshr i32 %i.aq, 16
  %i.bb = and i32 %i.ba, 85
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = lshr i32 %i.aq, 24
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = add i32 %i.au, %.150
  %i.bk = add i32 %i.bj, %i.az
  %i.bl = add i32 %i.bk, %i.be
  %i.bm = add i32 %i.bl, %i.bi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.2 = phi i32 [ %i.bm, %bb.e ], [ %.150, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit49, label %.lr.ph

.loopexit49:                                      ; preds = %bb.f, %bb.d, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ %.041, %bb.d ], [ %.2, %bb.f ] ; 2 uses
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !15 ; 2 uses
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16 ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.loopexit49
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !18
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !19
  %i.bt = sext i32 %i.bn to i64
  %wide.trip.count69 = sext i32 %i.bo to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph58, %.loopexit
  %indvars.iv66 = phi i64 [ %i.bt, %.lr.ph58 ], [ %indvars.iv.next67, %.loopexit ] ; 4 uses
  %.455 = phi i32 [ %.3, %.lr.ph58 ], [ %.5, %.loopexit ] ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %indvars.iv66
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv66
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7  ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv66
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7  ; 2 uses
  %.not4652 = icmp sgt i32 %i.bz, %i.bx
  br i1 %.not4652, label %._crit_edge, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %bb.g
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add i32 %i.bx, 1
  br label %.lr.ph54

bb.h:                                             ; preds = %.lr.ph54
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next63 to i32
  %exitcond65.not = icmp eq i32 %i.cb, %lftr.wideiv
  br i1 %exitcond65.not, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.h
  %indvars.iv62 = phi i64 [ %i.ca, %.lr.ph54.preheader ], [ %indvars.iv.next63, %bb.h ] ; 4 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv62
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv62
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = and i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %indvars.iv62
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = and i32 %i.cg, %i.ci
  %.not47 = icmp eq i32 %i.cj, 0
  br i1 %.not47, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.ck = add nsw i32 %.455, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph54, %._crit_edge
  %.5 = phi i32 [ %i.ck, %._crit_edge ], [ %.455, %.lr.ph54 ] ; 2 uses
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge59, label %bb.g

._crit_edge59:                                    ; preds = %.loopexit, %.loopexit49
  %.4.lcssa = phi i32 [ %.3, %.loopexit49 ], [ %.5, %.loopexit ]
  ret i32 %.4.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @force_lower(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 !guid !34 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !13 ; 4 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %.loopexit63, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = and i32 %i.f, %i.d                       ; 2 uses
  %i.h = lshr i32 %i.g, 1
  %i.i = or i32 %i.h, %i.g
  %i.j = xor i32 %i.i, -1
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !14
  %i.l = and i32 %i.k, %i.j                       ; 3 uses
  %.not57 = icmp eq i32 %i.l, 0
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = shl i32 %i.l, 1
  %i.n = or i32 %i.m, %i.l
  %i.o = and i32 %i.n, %i.d
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = or i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = icmp sgt i32 %i.a, 1
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit63

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = and i32 %i.w, %i.u                       ; 2 uses
  %i.y = lshr i32 %i.x, 1
  %i.z = or i32 %i.y, %i.x
  %i.aa = and i32 %i.z, 1431655765                ; 2 uses
  %.not61 = icmp eq i32 %i.aa, 1431655765
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ab = xor i32 %i.aa, 1431655765
  %i.ac = mul nuw i32 %i.ab, 3
  %i.ad = and i32 %i.ac, %i.u
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = or i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit63, label %.lr.ph

.loopexit63:                                      ; preds = %bb.f, %bb.d, %bb.a
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !15 ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16 ; 2 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %.loopexit63
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !18
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !19
  %i.an = sext i32 %i.ah to i64
  %scevgep = getelementptr i8, ptr %1, i64 4
  %scevgep107 = getelementptr i8, ptr %0, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph72, %.loopexit
  %i.ao = phi i32 [ %i.ai, %.lr.ph72 ], [ %i.di, %.loopexit ] ; 2 uses
  %indvars.iv84 = phi i64 [ %i.an, %.lr.ph72 ], [ %indvars.iv.next85, %.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv84
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 7 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.al, i64 %indvars.iv84
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7  ; 6 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv84
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7  ; 4 uses
  %.not5865 = icmp sgt i32 %i.au, %i.as
  br i1 %.not5865, label %.loopexit, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %bb.g
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = add i32 %i.as, 1
  br label %.lr.ph67

bb.h:                                             ; preds = %.lr.ph67
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next76 to i32
  %exitcond78.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond78.not, label %.lr.ph70.preheader, label %.lr.ph67

.lr.ph70.preheader:                               ; preds = %bb.h
  %i.ax = sext i32 %i.au to i64                   ; 4 uses
  %i.ay = add i32 %i.as, 1
  %i.az = sub i32 %i.as, %i.au                    ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.az, 7
  br i1 %min.iters.check, label %.lr.ph70.preheader115, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph70.preheader
  %i.bc = shl nsw i64 %i.av, 2                    ; 3 uses
  %i.bd = getelementptr i8, ptr %0, i64 %i.bc     ; 2 uses
  %i.be = add nsw i64 %i.av, %i.ba
  %i.bf = shl nsw i64 %i.be, 2                    ; 3 uses
  %3 = getelementptr i8, ptr %scevgep107, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 %i.bc
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.aq, i64 %i.bc
  %i.bj = getelementptr i8, ptr %i.aq, i64 %i.bf
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %bound0 = icmp ult ptr %i.bd, %i.bh
  %bound1 = icmp ult ptr %i.bg, %3
  %found.conflict = and i1 %bound0, %bound1
  %bound0107 = icmp ult ptr %i.bd, %i.bk
  %bound1108 = icmp ult ptr %i.bi, %3
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx = or i1 %found.conflict, %found.conflict109
  br i1 %conflict.rdx, label %.lr.ph70.preheader115, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 8589934584              ; 3 uses
  %i.bl = add nsw i64 %n.vec, %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = add i64 %index, %i.ax                   ; 3 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <4 x i32>, ptr %i.bn, align 4, !tbaa !7, !alias.scope !35
  %wide.load110 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !7, !alias.scope !35
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load111 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !7, !alias.scope !36
  %wide.load112 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !7, !alias.scope !36
  %i.br = and <4 x i32> %wide.load111, %wide.load
  %i.bs = and <4 x i32> %wide.load112, %wide.load110
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load113 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !7, !alias.scope !37, !noalias !38
  %wide.load114 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !7, !alias.scope !37, !noalias !38
  %i.bv = or <4 x i32> %wide.load113, %i.br
  %i.bw = or <4 x i32> %wide.load114, %i.bs
  store <4 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !7, !alias.scope !37, !noalias !38
  store <4 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !7, !alias.scope !37, !noalias !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph70.preheader115

.lr.ph70.preheader115:                            ; preds = %vector.memcheck, %.lr.ph70.preheader, %middle.block
  %indvars.iv79.ph = phi i64 [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph70.preheader ], [ %i.bl, %middle.block ] ; 6 uses
  %i.by = trunc i64 %indvars.iv79.ph to i32       ; 2 uses
  %i.bz = add i32 %i.as, %i.by
  %i.ca = and i32 %i.bz, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ca, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph70.prol, label %.lr.ph70.prol.loopexit

.lr.ph70.prol:                                    ; preds = %.lr.ph70.preheader115
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv79.ph
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv79.ph
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = and i32 %i.ce, %i.cc
  %i.cg = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv79.ph ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = or i32 %i.ch, %i.cf
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !7
  %indvars.iv.next80.prol = add nsw i64 %indvars.iv79.ph, 1
  br label %.lr.ph70.prol.loopexit

.lr.ph70.prol.loopexit:                           ; preds = %.lr.ph70.prol, %.lr.ph70.preheader115
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph70.preheader115 ], [ %indvars.iv.next80.prol, %.lr.ph70.prol ]
  %i.cj = icmp eq i32 %i.as, %i.by
  br i1 %i.cj, label %.loopexit.loopexit, label %.lr.ph70

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %bb.h
  %indvars.iv75 = phi i64 [ %i.av, %.lr.ph67.preheader ], [ %indvars.iv.next76, %bb.h ] ; 4 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv75
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !7
  %i.cm = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv75
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = and i32 %i.cn, %i.cl
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv75
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = and i32 %i.co, %i.cq
  %.not60 = icmp eq i32 %i.cr, 0
  br i1 %.not60, label %bb.h, label %.loopexit

.lr.ph70:                                         ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.1, %.lr.ph70 ], [ %indvars.iv79.unr, %.lr.ph70.prol.loopexit ] ; 5 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv79
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv79
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = and i32 %i.cv, %i.ct
  %i.cx = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv79 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = or i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !7
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 3 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next80
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv.next80
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = and i32 %i.dd, %i.db
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next80 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = or i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !7
  %indvars.iv.next80.1 = add nsw i64 %indvars.iv79, 2 ; 2 uses
  %lftr.wideiv82.1 = trunc i64 %indvars.iv.next80.1 to i32
  %exitcond83.not.1 = icmp eq i32 %i.ay, %lftr.wideiv82.1
  br i1 %exitcond83.not.1, label %.loopexit.loopexit, label %.lr.ph70, !llvm.loop !33

.loopexit.loopexit:                               ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70, %middle.block
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph67, %bb.g, %.loopexit.loopexit
  %i.di = phi i32 [ %i.ao, %bb.g ], [ %.pre, %.loopexit.loopexit ], [ %i.ao, %.lr.ph67 ] ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next85, %i.dj
  br i1 %i.dk, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.loopexit63
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @consensus(ptr nofree noundef captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 !guid !52 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !53  ; 2 uses
  %i.b = icmp slt i32 %i.a, 33
  %i.c = add nsw i32 %i.a, -1
  %i.d = ashr i32 %i.c, 5
  %i.e = add nsw i32 %i.d, 1
  %i.f = select i1 %i.b, i32 1, i32 %i.e          ; 4 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !7
  %i.g = sext i32 %i.f to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %i.f, i32 1)
  %i.h = sub nsw i32 %i.f, %smin
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = sub nsw i64 %i.g, %i.i
  %i.l = shl nsw i64 %i.k, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.l
  %i.m = add nuw nsw i64 %i.j, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.m, i1 false), !tbaa !7
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !13 ; 5 uses
  %.not = icmp eq i32 %i.n, -1
  br i1 %.not, label %.loopexit85, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = and i32 %i.s, %i.q                       ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !7
  %i.v = lshr i32 %i.t, 1
  %i.w = or i32 %i.v, %i.t
  %i.x = xor i32 %i.w, -1
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !14
  %i.z = and i32 %i.y, %i.x                       ; 3 uses
  %.not79 = icmp eq i32 %i.z, 0
  br i1 %.not79, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = shl i32 %i.z, 1
  %i.ab = or i32 %i.aa, %i.z
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !7
  %i.ad = load i32, ptr %i.r, align 4, !tbaa !7
  %i.ae = or i32 %i.ad, %i.ac
  %i.af = and i32 %i.ae, %i.ab
  %i.ag = or i32 %i.af, %i.t
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = icmp sgt i32 %i.n, 1
  br i1 %i.ah, label %.lr.ph.preheader, label %.loopexit85

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %i.ai = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 9
  br i1 %min.iters.check, label %.lr.ph.preheader218, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aj = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ak = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 %i.ak     ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 4
  %i.an = getelementptr i8, ptr %1, i64 %i.ak
  %i.ao = getelementptr i8, ptr %2, i64 4
  %i.ap = getelementptr i8, ptr %2, i64 %i.ak
  %bound0 = icmp ult ptr %i.aj, %i.an
  %bound1 = icmp ult ptr %i.am, %i.al
  %found.conflict = and i1 %bound0, %bound1
  %bound0146 = icmp ult ptr %i.aj, %i.ap
  %bound1147 = icmp ult ptr %i.ao, %i.al
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx = or i1 %found.conflict, %found.conflict148
  br i1 %conflict.rdx, label %.lr.ph.preheader218, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.aq = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue157, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue157 ] ; 5 uses
  %i.ar = or disjoint i64 %index, 1               ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !7, !alias.scope !54
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar ; 2 uses
  %wide.load149 = load <4 x i32>, ptr %i.at, align 4, !tbaa !7, !alias.scope !55
  %i.au = and <4 x i32> %wide.load149, %wide.load ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  store <4 x i32> %i.au, ptr %i.av, align 4, !tbaa !7, !alias.scope !56, !noalias !57
  %i.aw = lshr <4 x i32> %i.au, splat (i32 1)
  %i.ax = or <4 x i32> %i.aw, %i.au
  %i.ay = and <4 x i32> %i.ax, splat (i32 1431655765) ; 2 uses
  %i.az = icmp ne <4 x i32> %i.ay, splat (i32 1431655765) ; 4 uses
  %i.ba = xor <4 x i32> %i.ay, splat (i32 1431655765)
  %i.bb = mul nuw <4 x i32> %i.ba, splat (i32 3)
  %wide.load150 = load <4 x i32>, ptr %i.as, align 4, !tbaa !7, !alias.scope !54
  %wide.load151 = load <4 x i32>, ptr %i.at, align 4, !tbaa !7, !alias.scope !55
  %i.bc = or <4 x i32> %wide.load151, %wide.load150
  %i.bd = and <4 x i32> %i.bc, %i.bb
  %i.be = or <4 x i32> %i.bd, %i.au               ; 4 uses
  %i.bf = extractelement <4 x i1> %i.az, i64 0
  br i1 %i.bf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bg = extractelement <4 x i32> %i.be, i64 0
  store i32 %i.bg, ptr %i.av, align 4, !tbaa !7, !alias.scope !56, !noalias !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bh = extractelement <4 x i1> %i.az, i64 1
  br i1 %i.bh, label %pred.store.if152, label %pred.store.continue153

pred.store.if152:                                 ; preds = %pred.store.continue
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = extractelement <4 x i32> %i.be, i64 1
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !7, !alias.scope !56, !noalias !57
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.if152, %pred.store.continue
  %i.bl = extractelement <4 x i1> %i.az, i64 2
  br i1 %i.bl, label %pred.store.if154, label %pred.store.continue155

pred.store.if154:                                 ; preds = %pred.store.continue153
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = extractelement <4 x i32> %i.be, i64 2
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !7, !alias.scope !56, !noalias !57
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.if154, %pred.store.continue153
  %i.bp = extractelement <4 x i1> %i.az, i64 3
  br i1 %i.bp, label %pred.store.if156, label %pred.store.continue157

pred.store.if156:                                 ; preds = %pred.store.continue155
  %i.bq = getelementptr [4 x i8], ptr %0, i64 %index
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = extractelement <4 x i32> %i.be, i64 3
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !7, !alias.scope !56, !noalias !57
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %pred.store.if156, %pred.store.continue155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %pred.store.continue157
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.loopexit85, label %.lr.ph.preheader218

.lr.ph.preheader218:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader218, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %.lr.ph.preheader218 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = and i32 %i.bx, %i.bv                    ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !7
  %i.ca = lshr i32 %i.by, 1
  %i.cb = or i32 %i.ca, %i.by
  %i.cc = and i32 %i.cb, 1431655765               ; 2 uses
  %.not84 = icmp eq i32 %i.cc, 1431655765
  br i1 %.not84, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.cd = xor i32 %i.cc, 1431655765
  %i.ce = mul nuw i32 %i.cd, 3
  %i.cf = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.ch = or i32 %i.cg, %i.cf
  %i.ci = and i32 %i.ch, %i.ce
  %i.cj = or i32 %i.ci, %i.by
  store i32 %i.cj, ptr %i.bz, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit85, label %.lr.ph, !llvm.loop !44

.loopexit85:                                      ; preds = %bb.f, %middle.block, %bb.d, %bb.a
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !15 ; 2 uses
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %.loopexit85
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !18
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !19
  %i.cq = sext i32 %i.ck to i64
  %scevgep182 = getelementptr i8, ptr %2, i64 4
  %scevgep183 = getelementptr i8, ptr %1, i64 4
  %scevgep184 = getelementptr i8, ptr %0, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph97, %.loopexit
  %indvars.iv110 = phi i64 [ %i.cq, %.lr.ph97 ], [ %indvars.iv.next111, %.loopexit ] ; 4 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv110
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !20 ; 7 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv110
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7  ; 7 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv110 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7  ; 2 uses
  %.not8087 = icmp sgt i32 %i.cw, %i.cu
  br i1 %.not8087, label %._crit_edge.thread, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %bb.g
  %i.cx = sext i32 %i.cw to i64
  %i.cy = add i32 %i.cu, 1                        ; 2 uses
  br label %.lr.ph90.outer

.lr.ph90.outer:                                   ; preds = %.thread, %.lr.ph90.preheader
  %indvars.iv101.ph = phi i64 [ %indvars.iv.next102122, %.thread ], [ %i.cx, %.lr.ph90.preheader ]
  %i.cz = phi i1 [ true, %.thread ], [ false, %.lr.ph90.preheader ]
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.outer, %bb.h
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.h ], [ %indvars.iv101.ph, %.lr.ph90.outer ] ; 6 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv101
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  %i.dc = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv101
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = and i32 %i.dd, %i.db
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv101
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = and i32 %i.de, %i.dg                    ; 2 uses
  %.not83 = icmp eq i32 %i.dh, 0
  br i1 %.not83, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph90
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32
  %exitcond104.not = icmp eq i32 %i.cy, %lftr.wideiv
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph90

.thread:                                          ; preds = %.lr.ph90
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv101 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %i.dk = or i32 %i.dj, %i.dh
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !7
  %indvars.iv.next102122 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv123 = trunc i64 %indvars.iv.next102122 to i32
  %exitcond104.not124 = icmp eq i32 %i.cy, %lftr.wideiv123
  br i1 %exitcond104.not124, label %.loopexit, label %.lr.ph90.outer

._crit_edge:                                      ; preds = %bb.h
  br i1 %i.cz, label %.loopexit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %i.dl = load i32, ptr %i.cv, align 4, !tbaa !7  ; 3 uses
  %.not8291 = icmp sgt i32 %i.dl, %i.cu
  br i1 %.not8291, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %._crit_edge.thread
  %i.dm = sext i32 %i.dl to i64                   ; 6 uses
  %i.dn = add i32 %i.cu, 1
  %i.do = sub i32 %i.cu, %i.dl                    ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check183 = icmp ult i32 %i.do, 7
  br i1 %min.iters.check183, label %.lr.ph94.preheader212, label %vector.memcheck184

vector.memcheck184:                               ; preds = %.lr.ph94.preheader
  %i.dr = shl nsw i64 %i.dm, 2                    ; 4 uses
  %i.ds = getelementptr i8, ptr %0, i64 %i.dr     ; 3 uses
  %i.dt = add nsw i64 %i.dm, %i.dp
  %i.du = shl nsw i64 %i.dt, 2                    ; 4 uses
  %3 = getelementptr i8, ptr %scevgep184, i64 %i.du ; 3 uses
  %i.dv = getelementptr i8, ptr %i.cs, i64 %i.dr
  %i.dw = getelementptr i8, ptr %i.cs, i64 %i.du
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = getelementptr i8, ptr %1, i64 %i.dr
  %i.dz = getelementptr i8, ptr %scevgep183, i64 %i.du
  %i.ea = getelementptr i8, ptr %2, i64 %i.dr
  %i.eb = getelementptr i8, ptr %scevgep182, i64 %i.du
  %bound0185 = icmp ult ptr %i.ds, %i.dx
  %bound1186 = icmp ult ptr %i.dv, %3
  %found.conflict187 = and i1 %bound0185, %bound1186
  %bound0188 = icmp ult ptr %i.ds, %i.dz
  %bound1189 = icmp ult ptr %i.dy, %3
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %found.conflict187, %found.conflict190
  %bound0192 = icmp ult ptr %i.ds, %i.eb
  %bound1193 = icmp ult ptr %i.ea, %3
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194
  br i1 %conflict.rdx195, label %.lr.ph94.preheader212, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck184
  %n.vec197 = and i64 %i.dq, 8589934584           ; 3 uses
  %i.ec = add nsw i64 %n.vec197, %i.dm
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next208, %vector.body198 ] ; 2 uses
  %i.ed = add i64 %index199, %i.dm                ; 4 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load200 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !7, !alias.scope !58
  %wide.load201 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !7, !alias.scope !58
  %i.eg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ed ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load202 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !7, !alias.scope !59
  %wide.load203 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !7, !alias.scope !59
  %i.ei = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ed ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load204 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !7, !alias.scope !60
  %wide.load205 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !7, !alias.scope !60
  %i.ek = or <4 x i32> %wide.load204, %wide.load202
  %i.el = or <4 x i32> %wide.load205, %wide.load203
  %i.em = and <4 x i32> %i.ek, %wide.load200
  %i.en = and <4 x i32> %i.el, %wide.load201
  %i.eo = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ed ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load206 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !7, !alias.scope !61, !noalias !62
  %wide.load207 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !7, !alias.scope !61, !noalias !62
  %i.eq = or <4 x i32> %i.em, %wide.load206
  %i.er = or <4 x i32> %i.en, %wide.load207
  store <4 x i32> %i.eq, ptr %i.eo, align 4, !tbaa !7, !alias.scope !61, !noalias !62
  store <4 x i32> %i.er, ptr %i.ep, align 4, !tbaa !7, !alias.scope !61, !noalias !62
  %index.next208 = add nuw i64 %index199, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next208, %n.vec197
  br i1 %i.es, label %middle.block209, label %vector.body198, !llvm.loop !50

middle.block209:                                  ; preds = %vector.body198
  %cmp.n210 = icmp eq i64 %i.dq, %n.vec197
  br i1 %cmp.n210, label %.loopexit, label %.lr.ph94.preheader212

.lr.ph94.preheader212:                            ; preds = %vector.memcheck184, %.lr.ph94.preheader, %middle.block209
  %indvars.iv105.ph = phi i64 [ %i.dm, %vector.memcheck184 ], [ %i.dm, %.lr.ph94.preheader ], [ %i.ec, %middle.block209 ] ; 7 uses
  %i.et = trunc i64 %indvars.iv105.ph to i32      ; 2 uses
  %i.eu = add i32 %i.cu, %i.et
  %i.ev = and i32 %i.eu, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ev, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph94.prol, label %.lr.ph94.prol.loopexit

.lr.ph94.prol:                                    ; preds = %.lr.ph94.preheader212
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv105.ph
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !7
  %i.ey = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv105.ph
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7
  %i.fa = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv105.ph
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = or i32 %i.fb, %i.ez
  %i.fd = and i32 %i.fc, %i.ex
  %i.fe = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv105.ph ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !7
  %i.fg = or i32 %i.fd, %i.ff
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !7
  %indvars.iv.next106.prol = add nsw i64 %indvars.iv105.ph, 1
  br label %.lr.ph94.prol.loopexit

.lr.ph94.prol.loopexit:                           ; preds = %.lr.ph94.prol, %.lr.ph94.preheader212
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %.lr.ph94.preheader212 ], [ %indvars.iv.next106.prol, %.lr.ph94.prol ]
  %i.fh = icmp eq i32 %i.cu, %i.et
  br i1 %i.fh, label %.loopexit, label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.prol.loopexit, %.lr.ph94
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.1, %.lr.ph94 ], [ %indvars.iv105.unr, %.lr.ph94.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv105
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.fk = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv105
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv105
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = or i32 %i.fn, %i.fl
  %i.fp = and i32 %i.fo, %i.fj
  %i.fq = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv105 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = or i32 %i.fp, %i.fr
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !7
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 4 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv.next106
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !7
  %i.fv = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next106
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !7
  %i.fx = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next106
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !7
  %i.fz = or i32 %i.fy, %i.fw
  %i.ga = and i32 %i.fz, %i.fu
  %i.gb = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next106 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !7
  %i.gd = or i32 %i.ga, %i.gc
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !7
  %indvars.iv.next106.1 = add nsw i64 %indvars.iv105, 2 ; 2 uses
  %lftr.wideiv108.1 = trunc i64 %indvars.iv.next106.1 to i32
  %exitcond109.not.1 = icmp eq i32 %i.dn, %lftr.wideiv108.1
  br i1 %exitcond109.not.1, label %.loopexit, label %.lr.ph94, !llvm.loop !51

.loopexit:                                        ; preds = %.thread, %.lr.ph94.prol.loopexit, %.lr.ph94, %middle.block209, %._crit_edge.thread, %._crit_edge
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.ge = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next111, %i.gf
  br i1 %i.gg, label %bb.g, label %._crit_edge98

._crit_edge98:                                    ; preds = %.loopexit, %.loopexit85
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cactive(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 !guid !63 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !13 ; 5 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %.loopexit70, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, %i.d
  %i.g = xor i32 %i.f, -1
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !14
  %i.i = and i32 %i.h, %i.g                       ; 6 uses
  %.not65 = icmp eq i32 %i.i, 0
  br i1 %.not65, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = lshr i32 %i.i, 8
  %i.o = and i32 %i.n, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = add nsw i32 %i.r, %i.m
  %i.t = lshr i32 %i.i, 16
  %i.u = and i32 %i.t, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = add nsw i32 %i.s, %i.x
  %i.z = lshr i32 %i.i, 24
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = add nsw i32 %i.y, %i.ac                 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = shl i32 %i.a, 4
  %i.ag = add i32 %i.af, -16
  %i.ah = tail call i32 (i32, ...) @bit_index(i32 noundef %i.i) #7
  %i.ai = sdiv i32 %i.ah, 2
  %i.aj = add nsw i32 %i.ag, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.047 = phi i32 [ %i.aj, %bb.d ], [ -1, %bb.b ] ; 2 uses
  %.045 = phi i32 [ %i.ad, %bb.d ], [ 0, %bb.b ]  ; 2 uses
  %i.ak = icmp sgt i32 %i.a, 1
  br i1 %i.ak, label %.lr.ph.preheader, label %.loopexit70

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.14675 = phi i32 [ %.045, %.lr.ph.preheader ], [ %.2, %bb.h ] ; 2 uses
  %.14874 = phi i32 [ %.047, %.lr.ph.preheader ], [ %.249, %bb.h ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7  ; 2 uses
  %i.an = lshr i32 %i.am, 1
  %i.ao = and i32 %i.am, 1431655765
  %i.ap = and i32 %i.ao, %i.an                    ; 2 uses
  %i.aq = xor i32 %i.ap, 1431655765               ; 5 uses
  %.not66 = icmp eq i32 %i.ap, 1431655765
  br i1 %.not66, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = and i32 %i.aq, 85
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = lshr i32 %i.aq, 8
  %i.aw = and i32 %i.av, 85
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ax
end_hunk_0
