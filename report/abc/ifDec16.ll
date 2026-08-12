inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 82
begin_hunk_0_@If_CluMoveVar:bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x i64>, ptr %i.be, align 8, !tbaa !18
  %wide.load100 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x i64> %wide.load, ptr %i.bg, align 8, !tbaa !18
  store <2 x i64> %wide.load100, ptr %i.bh, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %If_CluCopy.exit, label %vector.body, !llvm.loop !231

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.next.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !18
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.next.i.1
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !18
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.next.i.2
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.2
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !18
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %If_CluCopy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !232

If_CluCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %If_CluCopy.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %If_CluCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %If_CluCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.i.epil
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.epil
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !18
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %If_CluCopy.exit, label %.lr.ph.i.epil, !llvm.loop !233

If_CluCopy.exit:                                  ; preds = %vector.body, %If_CluCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @If_CluMoveGroupToMsb(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !187     ; 2 uses
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi i32 [ %i.c, %.lr.ph ], [ %i.o, %bb.b ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.f = xor i32 %.012, -1                        ; 2 uses
  %i.g = add i32 %i.e, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !80
  %i.k = sext i8 %i.j to i32
  %i.l = add i32 %1, %i.f
  tail call void @If_CluMoveVar(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = add nuw nsw i32 %.012, 1                 ; 2 uses
  %i.n = load i8, ptr %4, align 1, !tbaa !187
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @If_CluReverseOrder_old(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.g, i1 false), !tbaa !18
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %bb.a
  %i.h = icmp slt i32 %4, %1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %If_CluCopy.exit
  %i.i = sext i32 %4 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %3, i64 %i.i
  %.neg = add nsw i32 %1, -1
  %i.k = add i32 %.neg, %4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.030 = phi i32 [ %4, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !10
  %i.m = sub i32 %i.k, %.030
  tail call void @If_CluMoveVar(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.l, i32 noundef %i.m)
  %i.n = add i32 %.030, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !235

._crit_edge:                                      ; preds = %bb.b, %If_CluCopy.exit
  %i.o = sub nsw i32 %1, %4                       ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %i.q = icmp sgt i32 %i.o, 1
  br i1 %i.q, label %.lr.ph.i20, label %If_CluReverseOrder.exit

.lr.ph.i20:                                       ; preds = %._crit_edge, %.lr.ph.i20
  %.013.i = phi i32 [ %i.u, %.lr.ph.i20 ], [ 0, %._crit_edge ] ; 3 uses
  %i.r = add nsw i32 %.013.i, %4
  %i.s = xor i32 %.013.i, -1
  %i.t = add i32 %1, %i.s
  call void @If_CluSwapVars(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef null, ptr noundef null, i32 noundef %i.r, i32 noundef %i.t)
  %i.u = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %exitcond.not.i21 = icmp eq i32 %i.u, %i.p
  br i1 %exitcond.not.i21, label %If_CluReverseOrder.exit, label %.lr.ph.i20, !llvm.loop !228

If_CluReverseOrder.exit:                          ; preds = %.lr.ph.i20, %._crit_edge
  br i1 %i.f, label %.lr.ph.preheader.i22, label %If_CluEqual.exit.thread

.lr.ph.preheader.i22:                             ; preds = %If_CluReverseOrder.exit
  %wide.trip.count.i23 = zext nneg i32 %i.e to i64
  br label %.lr.ph.i24

bb.c:                                             ; preds = %.lr.ph.i24
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i23
  br i1 %exitcond.not.i27, label %If_CluEqual.exit.thread, label %.lr.ph.i24, !llvm.loop !186

.lr.ph.i24:                                       ; preds = %bb.c, %.lr.ph.preheader.i22
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.preheader.i22 ], [ %indvars.iv.next.i26, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i25
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i25
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.w, %i.y
  br i1 %.not.i, label %bb.c, label %If_CluEqual.exit

If_CluEqual.exit:                                 ; preds = %.lr.ph.i24
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %1) ; 0 uses
  br label %If_CluEqual.exit.thread

If_CluEqual.exit.thread:                          ; preds = %bb.c, %If_CluReverseOrder.exit, %If_CluEqual.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @If_CluCountCofs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.c = alloca [128 x i64], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.d = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.e = sub nsw i32 %1, %2                       ; 4 uses
  %i.f = icmp slt i32 %i.e, 6
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i32 1, %i.e
  %i.h = zext nneg i32 %i.g to i64
  %notmask = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask, -1
  %.not180 = icmp eq i32 %2, 31
  br i1 %.not180, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.b
  %.not117 = icmp eq ptr %4, null
  %wide.trip.count212 = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph174, %.thread218
  %indvars.iv208 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next209, %.thread218 ] ; 3 uses
  %.0172 = phi i64 [ 0, %.lr.ph174 ], [ %.1, %.thread218 ]
  %.0100170 = phi i32 [ 0, %.lr.ph174 ], [ %.1101220, %.thread218 ] ; 6 uses
  %i.j = trunc nuw nsw i64 %indvars.iv208 to i32
  %i.k = shl nsw i32 %i.j, %i.e
  %i.l = add nsw i32 %i.k, %3                     ; 2 uses
  %i.m = sdiv i32 %i.l, 64
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = and i32 %i.l, 63
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %i.p, %i.r
  %i.t = and i64 %i.s, %i.i                       ; 3 uses
  %i.u = icmp sgt i32 %.0100170, 0
  br i1 %i.u, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %bb.c
  %wide.trip.count206 = zext nneg i32 %.0100170 to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.d
  %indvars.iv203 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next204, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv203
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = icmp eq i64 %i.t, %i.w
  br i1 %i.x, label %._crit_edge166.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph165
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge166.thread, label %.lr.ph165, !llvm.loop !236

._crit_edge166.loopexit:                          ; preds = %.lr.ph165
  %i.y = trunc nuw nsw i64 %indvars.iv203 to i32
  br label %._crit_edge166

._crit_edge166:                                   ; preds = %._crit_edge166.loopexit, %bb.c
  %.0108.lcssa = phi i32 [ 0, %bb.c ], [ %i.y, %._crit_edge166.loopexit ]
  %i.z = icmp eq i32 %.0108.lcssa, %.0100170
  br i1 %i.z, label %._crit_edge166.thread, label %.thread218

._crit_edge166.thread:                            ; preds = %bb.d, %._crit_edge166
  %i.aa = add nsw i32 %.0100170, 1                ; 2 uses
  %i.ab = sext i32 %.0100170 to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ab
  store i64 %i.t, ptr %i.ac, align 8, !tbaa !18
  %i.ad = icmp eq i32 %i.aa, 5
  br i1 %i.ad, label %.thread, label %.thread218

.thread218:                                       ; preds = %._crit_edge166, %._crit_edge166.thread
  %.1101220 = phi i32 [ %i.aa, %._crit_edge166.thread ], [ %.0100170, %._crit_edge166 ] ; 2 uses
  %i.ae = load i64, ptr %i.c, align 16            ; 2 uses
  %.not118 = icmp eq i64 %i.t, %i.ae
  %or.cond119 = select i1 %.not117, i1 true, i1 %.not118
  %i.af = shl nuw i64 1, %indvars.iv208
  %i.ag = select i1 %or.cond119, i64 0, i64 %i.af
  %.1 = or i64 %i.ag, %.0172                      ; 2 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count212
  br i1 %exitcond213.not, label %._crit_edge175, label %bb.c, !llvm.loop !237

._crit_edge175:                                   ; preds = %.thread218, %bb.b
  %i.ah = phi i64 [ 0, %bb.b ], [ %i.ae, %.thread218 ] ; 2 uses
  %.0100.lcssa = phi i32 [ 0, %bb.b ], [ %.1101220, %.thread218 ] ; 4 uses
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %.1, %.thread218 ]
  %i.ai = icmp slt i32 %.0100.lcssa, 3
  %i.aj = icmp ne ptr %4, null
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %._crit_edge175
  store i64 %i.ah, ptr %4, align 8, !tbaa !18
  %i.ak = icmp eq i32 %.0100.lcssa, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = select i1 %i.ak, i64 %i.am, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 2048
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !18
  br label %.thread.sink.split

bb.f:                                             ; preds = %bb.a
  %i.ap = add nsw i32 %i.e, -6                    ; 8 uses
  %i.aq = shl nuw i32 1, %i.ap                    ; 6 uses
  %.not = icmp eq i32 %2, 31
  br i1 %.not, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.f
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %.not178 = icmp eq i32 %i.ap, 31                ; 2 uses
  %.not114 = icmp eq ptr %4, null
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1) ; 4 uses
  %wide.trip.count201 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count195 = zext nneg i32 %smax to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.o
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge160, label %bb.h, !llvm.loop !238

bb.h:                                             ; preds = %.lr.ph159, %bb.g
  %indvars.iv197 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next198, %bb.g ] ; 4 uses
  %.3157 = phi i64 [ 0, %.lr.ph159 ], [ %.4, %bb.g ] ; 3 uses
  %.3103154 = phi i32 [ 0, %.lr.ph159 ], [ %.4104, %bb.g ] ; 6 uses
  %i.as = trunc nuw nsw i64 %indvars.iv197 to i32
  %i.at = shl i32 %i.as, %i.ap
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = icmp sgt i32 %.3103154, 0
  br i1 %i.aw, label %.lr.ph145, label %._crit_edge146.split.us

.lr.ph145:                                        ; preds = %bb.h
  br i1 %.not178, label %._crit_edge146.split.us.thread, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count190 = zext nneg i32 %.3103154 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.k
  %indvars.iv187 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next188, %bb.k ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv187
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18
  %i.az = mul i64 %i.ay, %i.ar
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.az
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.us, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !18
  %.not.us = icmp eq i64 %i.bc, %i.be
  br i1 %.not.us, label %bb.j, label %._crit_edge.us.split.loop.exit230

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.i, !llvm.loop !239

._crit_edge.us.split.loop.exit230:                ; preds = %bb.i
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.j, %._crit_edge.us.split.loop.exit230
  %.0106.lcssa.us = phi i32 [ %i.bf, %._crit_edge.us.split.loop.exit230 ], [ %smax, %bb.j ]
  %i.bg = icmp eq i32 %.0106.lcssa.us, %i.aq
  br i1 %i.bg, label %._crit_edge146.split.us.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.us
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count190
  br i1 %exitcond191.not, label %._crit_edge146.split.us.thread, label %.lr.ph.us, !llvm.loop !240

._crit_edge146.split.us.loopexit:                 ; preds = %._crit_edge.us
  %i.bh = trunc nuw nsw i64 %indvars.iv187 to i32
  br label %._crit_edge146.split.us

._crit_edge146.split.us:                          ; preds = %._crit_edge146.split.us.loopexit, %bb.h
  %.1109.lcssa = phi i32 [ 0, %bb.h ], [ %i.bh, %._crit_edge146.split.us.loopexit ]
  %i.bi = icmp eq i32 %.1109.lcssa, %.3103154
  br i1 %i.bi, label %._crit_edge146.split.us.thread, label %bb.l

._crit_edge146.split.us.thread:                   ; preds = %bb.k, %.lr.ph145, %._crit_edge146.split.us
  %i.bj = add nsw i32 %.3103154, 1
  %i.bk = sext i32 %.3103154 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bk
  store i64 %indvars.iv197, ptr %i.bl, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge146.split.us.thread, %._crit_edge146.split.us
  %.4104 = phi i32 [ %i.bj, %._crit_edge146.split.us.thread ], [ %.3103154, %._crit_edge146.split.us ] ; 3 uses
  br i1 %.not114, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i64, ptr %i.c, align 16, !tbaa !18
  %i.bn = mul i64 %i.bm, %i.ar
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn
  br i1 %.not178, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %bb.n ], [ 0, %bb.m ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv192
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv192
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18
  %.not115 = icmp eq i64 %i.bq, %i.bs
  br i1 %.not115, label %bb.n, label %._crit_edge.split.loop.exit232

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count195
  br i1 %exitcond196.not, label %._crit_edge, label %.lr.ph, !llvm.loop !241

._crit_edge.split.loop.exit232:                   ; preds = %.lr.ph
  %i.bt = trunc nuw nsw i64 %indvars.iv192 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %._crit_edge.split.loop.exit232
  %.1107.lcssa.ph = phi i32 [ %i.bt, %._crit_edge.split.loop.exit232 ], [ %smax, %bb.n ]
  %i.bu = icmp eq i32 %.1107.lcssa.ph, %i.aq
  br i1 %i.bu, label %bb.o, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.bv = shl nuw i64 1, %indvars.iv197
  %i.bw = or i64 %i.bv, %.3157
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %._crit_edge.thread, %bb.l
  %.4 = phi i64 [ %i.bw, %._crit_edge.thread ], [ %.3157, %._crit_edge ], [ %.3157, %bb.l ] ; 2 uses
  %i.bx = icmp eq i32 %.4104, 5
  br i1 %i.bx, label %.thread, label %bb.g

._crit_edge160:                                   ; preds = %bb.g, %bb.f
  %.3103.lcssa = phi i32 [ 0, %bb.f ], [ %.4104, %bb.g ] ; 7 uses
  %.3.lcssa = phi i64 [ 0, %bb.f ], [ %.4, %bb.g ] ; 4 uses
  %i.by = icmp slt i32 %.3103.lcssa, 3
  %i.bz = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.bz, %i.by
  br i1 %or.cond3, label %bb.p, label %.thread

bb.p:                                             ; preds = %._crit_edge160
  %i.ca = load i64, ptr %i.c, align 16, !tbaa !18 ; 3 uses
  %i.cb = sext i32 %i.aq to i64                   ; 4 uses
  %i.cc = mul i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cc ; 6 uses
  %.not134 = icmp eq i32 %i.ap, 31
  br i1 %.not134, label %.thread.sink.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %wide.trip.count.i = zext i32 %i.aq to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.ap, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ce = icmp ult i32 %i.ap, 2
  br i1 %i.ce, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.cf = mul i64 %i.ca, %i.cb
  %i.cg = shl i64 %i.cf, 3
  %i.ch = add i64 %i.cg, %i.a
  %i.ci = sub i64 %i.ch, %i.b
  %diff.check = icmp ugt i64 %i.ci, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !18
  %wide.load241 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x i64> %wide.load, ptr %i.cl, align 8, !tbaa !18
  store <2 x i64> %wide.load241, ptr %i.cm, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %.lr.ph.preheader.i120, label %vector.body, !llvm.loop !242

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !18
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.i.1
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i.1
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !18
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.i.2
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i.2
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@If_CluDetectSpecialCaseCofs:bb.a
  %i.bt = icmp eq i32 %.sroa.18.2, %.054
  br i1 %i.bt, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = icmp eq i32 %.sroa.23.2, %.054
  br i1 %i.bu, label %bb.z, label %.thread193

.thread193:                                       ; preds = %bb.b, %bb.y
  br label %bb.z

bb.z:                                             ; preds = %.thread193, %bb.y, %bb.x, %bb.w, %bb.v, %.loopexit
  %.0 = phi i32 [ 0, %.loopexit ], [ -1, %.thread193 ], [ 1, %bb.v ], [ 4, %bb.y ], [ 2, %bb.w ], [ 3, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @If_CluDecUsingCofs(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.If_Grp_t_) align 1 captures(none) initializes((0, 18)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 4 uses
  %i.b = alloca [18 x i32], align 16              ; 7 uses
  %i.c = alloca [18 x i32], align 16              ; 8 uses
  %i.d = alloca [18 x i32], align 16              ; 5 uses
  %i.e = alloca [18 x i32], align 16              ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.f = sub i32 %2, %3                           ; 2 uses
  %i.g = icmp slt i32 %2, 7
  %i.h = add nsw i32 %2, -6
  %i.i = shl nuw i32 1, %i.h
  %i.j = select i1 %i.g, i32 1, i32 %i.i          ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %i.l, i1 false), !tbaa !18
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %bb.a
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader92

.lr.ph.preheader:                                 ; preds = %If_CluCopy.exit
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 16, !tbaa !10
  store <4 x i32> %step.add, ptr %i.o, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %vec.ind, ptr %i.p, align 16, !tbaa !10
  store <4 x i32> %step.add, ptr %i.q, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader92, label %.lr.ph.preheader241

.lr.ph.preheader241:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader92:                                     ; preds = %.lr.ph, %middle.block, %If_CluCopy.exit
  %i.s = icmp sgt i32 %i.f, 0
  br i1 %i.s, label %.lr.ph116, label %._crit_edge117

.lr.ph:                                           ; preds = %.lr.ph.preheader241, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader241 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.u, ptr %i.t, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.u, ptr %i.v, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader92, label %.lr.ph, !llvm.loop !267

bb.b:                                             ; preds = %.loopexit91
  %i.w = add nuw nsw i32 %.076113, 1              ; 2 uses
  %exitcond143.not = icmp eq i32 %i.w, %i.f
  br i1 %exitcond143.not, label %._crit_edge117, label %.lr.ph116, !llvm.loop !268

.lr.ph116:                                        ; preds = %.preheader92, %bb.b
  %.0115 = phi i32 [ %.1, %bb.b ], [ %2, %.preheader92 ] ; 8 uses
  %.070114 = phi ptr [ %.2, %bb.b ], [ %i.a, %.preheader92 ] ; 12 uses
  %.076113 = phi i32 [ %i.w, %bb.b ], [ 0, %.preheader92 ]
  %i.x = add i32 %.0115, -1                       ; 13 uses
  %i.y = icmp sgt i32 %.0115, 0
  br i1 %i.y, label %.lr.ph109, label %.loopexit91

.lr.ph109:                                        ; preds = %.lr.ph116
  %i.z = icmp samesign ult i32 %.0115, 7          ; 3 uses
  %i.aa = add nsw i32 %.0115, -6
  %i.ab = shl nuw i32 1, %i.aa                    ; 2 uses
  %i.ac = select i1 %i.z, i32 1, i32 %i.ab        ; 5 uses
  %i.ad = icmp sgt i32 %i.ac, 0                   ; 2 uses
  %i.ae = sdiv i32 %i.ac, 2                       ; 2 uses
  %wide.trip.count135.i = zext nneg i32 %i.ac to i64
  %i.af = zext nneg i32 %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %If_CluDetectSpecialCaseCofs.exit
  %indvars.iv135 = phi i64 [ %i.af, %.lr.ph109 ], [ %indvars.iv.next136, %If_CluDetectSpecialCaseCofs.exit ] ; 8 uses
  %i.ag = icmp samesign ult i64 %indvars.iv135, 6
  br i1 %i.ag, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  br i1 %i.ad, label %.lr.ph.i85, label %If_CluDetectSpecialCaseCofs.exit

.lr.ph.i85:                                       ; preds = %bb.d
  %i.ah = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.ai = shl nuw nsw i32 1, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv135
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = xor i64 %i.ak, -1                       ; 3 uses
  %i.am = zext nneg i32 %i.ai to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.n, %.lr.ph.i85
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph.i85 ], [ %indvars.iv.next133.i, %bb.n ] ; 2 uses
  %i.an = phi i32 [ 0, %.lr.ph.i85 ], [ %i.bi, %bb.n ] ; 5 uses
  %i.ao = phi i32 [ 0, %.lr.ph.i85 ], [ %i.bj, %bb.n ] ; 5 uses
  %i.ap = phi i32 [ 0, %.lr.ph.i85 ], [ %i.bk, %bb.n ] ; 5 uses
  %i.aq = phi i32 [ 0, %.lr.ph.i85 ], [ %i.bl, %bb.n ] ; 5 uses
  %i.ar = phi i32 [ 0, %.lr.ph.i85 ], [ %i.bm, %bb.n ] ; 5 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.070114, i64 %indvars.iv132.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %i.au = and i64 %i.at, %i.al                    ; 3 uses
  %i.av = and i64 %i.at, %i.ak
  %i.aw = lshr i64 %i.av, %i.am                   ; 3 uses
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %i.ar, 1
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.az = icmp eq i64 %i.au, %i.al
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = add nsw i32 %i.an, 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = add nsw i32 %i.ao, 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bd = icmp eq i64 %i.aw, %i.al
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = add nsw i32 %i.ap, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bf = xor i64 %i.aw, %i.au
  %i.bg = icmp eq i64 %i.bf, -1
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i = add nsw i32 %i.aq, %i.bh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f
  %i.bi = phi i32 [ %i.an, %bb.f ], [ %i.an, %bb.j ], [ %i.an, %bb.m ], [ %i.ba, %bb.h ], [ %i.an, %bb.l ] ; 2 uses
  %i.bj = phi i32 [ %i.ao, %bb.f ], [ %i.bc, %bb.j ], [ %i.ao, %bb.m ], [ %i.ao, %bb.h ], [ %i.ao, %bb.l ] ; 2 uses
  %i.bk = phi i32 [ %i.ap, %bb.f ], [ %i.ap, %bb.j ], [ %i.ap, %bb.m ], [ %i.ap, %bb.h ], [ %i.be, %bb.l ] ; 2 uses
  %i.bl = phi i32 [ %i.aq, %bb.f ], [ %i.aq, %bb.j ], [ %spec.select.i, %bb.m ], [ %i.aq, %bb.h ], [ %i.aq, %bb.l ] ; 2 uses
  %i.bm = phi i32 [ %i.ay, %bb.f ], [ %i.ar, %bb.j ], [ %i.ar, %bb.m ], [ %i.ar, %bb.h ], [ %i.ar, %bb.l ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %.loopexit.i, label %bb.e, !llvm.loop !263

bb.o:                                             ; preds = %bb.c
  %i.bn = trunc i64 %indvars.iv135 to i32
  %i.bo = add i32 %i.bn, -6                       ; 3 uses
  %i.bp = shl nuw nsw i32 1, %i.bo                ; 2 uses
  br i1 %i.ad, label %.preheader.lr.ph.i, label %.loopexit.i

.preheader.lr.ph.i:                               ; preds = %bb.o
  %.not.i = icmp eq i32 %i.bo, 31
  %i.bq = shl i32 2, %i.bo                        ; 2 uses
  %i.br = sext i32 %i.bq to i64
  br i1 %.not.i, label %.loopexit.i.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %4 = zext nneg i32 %i.bp to i64
  %wide.trip.count.i81 = zext nneg i32 %i.bp to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.lcssa7798.us.i = phi i32 [ %i.ch, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  %.lcssa7392.us.i = phi i32 [ %i.ci, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  %.lcssa7189.us.i = phi i32 [ %i.cj, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  %.lcssa6986.us.i = phi i32 [ %i.ck, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  %.05282.us.i = phi i32 [ %i.cn, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  %.05381.us.i = phi ptr [ %i.cm, %._crit_edge.us.i ], [ %.070114, %.preheader.us.preheader.i ] ; 3 uses
  %.lcssa7980.us.i = phi i32 [ %i.cl, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  %invariant.gep.i = getelementptr [8 x i8], ptr %.05381.us.i, i64 %4
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %.preheader.us.i
  %indvars.iv.i82 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i83, %bb.w ] ; 3 uses
  %i.bs = phi i32 [ %.lcssa7798.us.i, %.preheader.us.i ], [ %i.ch, %bb.w ] ; 5 uses
  %i.bt = phi i32 [ %.lcssa7392.us.i, %.preheader.us.i ], [ %i.ci, %bb.w ] ; 5 uses
  %i.bu = phi i32 [ %.lcssa7189.us.i, %.preheader.us.i ], [ %i.cj, %bb.w ] ; 5 uses
  %i.bv = phi i32 [ %.lcssa6986.us.i, %.preheader.us.i ], [ %i.ck, %bb.w ] ; 5 uses
  %i.bw = phi i32 [ %.lcssa7980.us.i, %.preheader.us.i ], [ %i.cl, %bb.w ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.05381.us.i, i64 %indvars.iv.i82
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i82
  %i.bz = load i64, ptr %gep.i, align 8, !tbaa !18 ; 2 uses
  switch i64 %i.by, label %bb.s [
    i64 0, label %bb.r
    i64 -1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.ca = add nsw i32 %i.bv, 1
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.cb = add nsw i32 %i.bw, 1
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  switch i64 %i.bz, label %bb.v [
    i64 0, label %bb.u
    i64 -1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.cc = add nsw i32 %i.bu, 1
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = add nsw i32 %i.bt, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ce = xor i64 %i.bz, %i.by
  %i.cf = icmp eq i64 %i.ce, -1
  %i.cg = zext i1 %i.cf to i32
  %spec.select205.i = add nsw i32 %i.bs, %i.cg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %i.ch = phi i32 [ %i.bs, %bb.r ], [ %i.bs, %bb.u ], [ %spec.select205.i, %bb.v ], [ %i.bs, %bb.q ], [ %i.bs, %bb.t ] ; 3 uses
  %i.ci = phi i32 [ %i.bt, %bb.r ], [ %i.cd, %bb.u ], [ %i.bt, %bb.v ], [ %i.bt, %bb.q ], [ %i.bt, %bb.t ] ; 3 uses
  %i.cj = phi i32 [ %i.bu, %bb.r ], [ %i.bu, %bb.u ], [ %i.bu, %bb.v ], [ %i.bu, %bb.q ], [ %i.cc, %bb.t ] ; 3 uses
  %i.ck = phi i32 [ %i.bv, %bb.r ], [ %i.bv, %bb.u ], [ %i.bv, %bb.v ], [ %i.ca, %bb.q ], [ %i.bv, %bb.t ] ; 3 uses
  %i.cl = phi i32 [ %i.cb, %bb.r ], [ %i.bw, %bb.u ], [ %i.bw, %bb.v ], [ %i.bw, %bb.q ], [ %i.bw, %bb.t ] ; 3 uses
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %indvars.iv.next.i83, %wide.trip.count.i81
  br i1 %exitcond.not.i84, label %._crit_edge.us.i, label %bb.p, !llvm.loop !264

._crit_edge.us.i:                                 ; preds = %bb.w
  %i.cm = getelementptr inbounds [8 x i8], ptr %.05381.us.i, i64 %i.br
  %i.cn = add nsw i32 %.05282.us.i, %i.bq         ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.ac
  br i1 %i.co, label %.preheader.us.i, label %.loopexit.i, !llvm.loop !265

.loopexit.i:                                      ; preds = %._crit_edge.us.i, %bb.n, %bb.o
  %.sroa.0.0.i = phi i32 [ %i.bm, %bb.n ], [ 0, %bb.o ], [ %i.cl, %._crit_edge.us.i ]
  %.sroa.8.2.i = phi i32 [ %i.bi, %bb.n ], [ 0, %bb.o ], [ %i.ck, %._crit_edge.us.i ]
  %.sroa.13.2.i = phi i32 [ %i.bj, %bb.n ], [ 0, %bb.o ], [ %i.ci, %._crit_edge.us.i ]
  %.sroa.18.2.i = phi i32 [ %i.bk, %bb.n ], [ 0, %bb.o ], [ %i.cj, %._crit_edge.us.i ]
  %.sroa.23.2.i = phi i32 [ %i.bl, %bb.n ], [ 0, %bb.o ], [ %i.ch, %._crit_edge.us.i ]
  %.054.i = phi i32 [ %i.ac, %bb.n ], [ %i.ae, %bb.o ], [ %i.ae, %._crit_edge.us.i ] ; 5 uses
  %i.cp = icmp eq i32 %.sroa.0.0.i, %.054.i
  %i.cq = icmp eq i32 %.sroa.8.2.i, %.054.i
  %or.cond88 = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond88, label %.loopexit.i.thread, label %bb.x

bb.x:                                             ; preds = %.loopexit.i
  %i.cr = icmp eq i32 %.sroa.13.2.i, %.054.i
  %i.cs = icmp eq i32 %.sroa.18.2.i, %.054.i
  %or.cond89 = select i1 %i.cr, i1 true, i1 %i.cs
  %i.ct = icmp eq i32 %.sroa.23.2.i, %.054.i
  %or.cond90 = select i1 %or.cond89, i1 true, i1 %i.ct
  br i1 %or.cond90, label %.loopexit.i.thread, label %If_CluDetectSpecialCaseCofs.exit

.loopexit.i.thread:                               ; preds = %.loopexit.i, %bb.x, %.preheader.lr.ph.i
  %or.cond88168 = phi i1 [ true, %.preheader.lr.ph.i ], [ false, %bb.x ], [ true, %.loopexit.i ]
  %i.cu = trunc nuw nsw i64 %indvars.iv135 to i32 ; 5 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv135
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.x
  br i1 %i.da, label %.lr.ph110, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.lr.ph110, %.loopexit.i.thread
  %wide.trip.count141 = zext nneg i32 %.0115 to i64 ; 3 uses
  %min.iters.check204 = icmp ult i32 %.0115, 8
  br i1 %min.iters.check204, label %.lr.ph112.preheader228, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph112.preheader
  %n.vec206 = and i64 %wide.trip.count141, 2147483640 ; 3 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next211, %vector.body207 ] ; 3 uses
  %vec.ind209 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph205 ], [ %vec.ind.next212, %vector.body207 ] ; 4 uses
  %step.add210 = add <4 x i32> %vec.ind209, splat (i32 4) ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x i32> %vec.ind209, ptr %i.db, align 16, !tbaa !10
  store <4 x i32> %step.add210, ptr %i.dc, align 16, !tbaa !10
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index208 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x i32> %vec.ind209, ptr %i.dd, align 16, !tbaa !10
  store <4 x i32> %step.add210, ptr %i.de, align 16, !tbaa !10
  %index.next211 = add nuw i64 %index208, 8       ; 2 uses
  %vec.ind.next212 = add <4 x i32> %vec.ind209, splat (i32 8)
  %i.df = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.df, label %middle.block213, label %vector.body207, !llvm.loop !269

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %n.vec206, %wide.trip.count141
  br i1 %cmp.n214, label %._crit_edge, label %.lr.ph112.preheader228

.lr.ph112.preheader228:                           ; preds = %.lr.ph112.preheader, %middle.block213
  %indvars.iv138.ph = phi i64 [ 0, %.lr.ph112.preheader ], [ %n.vec206, %middle.block213 ]
  br label %.lr.ph112

.lr.ph110:                                        ; preds = %.loopexit.i.thread, %.lr.ph110
  %i.dg = phi i32 [ %i.du, %.lr.ph110 ], [ %i.cz, %.loopexit.i.thread ]
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dh ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !10
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !10
  %i.do = getelementptr i8, ptr %i.di, i64 4      ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !10 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !10
  store i32 %i.dj, ptr %i.do, align 4, !tbaa !10
  store i32 %i.dp, ptr %i.di, align 4, !tbaa !10
  %i.du = load i32, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.x
  br i1 %i.dv, label %.lr.ph110, label %.lr.ph112.preheader, !llvm.loop !270

.lr.ph112:                                        ; preds = %.lr.ph112.preheader228, %.lr.ph112
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph112 ], [ %indvars.iv138.ph, %.lr.ph112.preheader228 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv138
  %i.dx = trunc nuw nsw i64 %indvars.iv138 to i32 ; 2 uses
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv138
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !10
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge, label %.lr.ph112, !llvm.loop !271

._crit_edge:                                      ; preds = %.lr.ph112, %middle.block213
  call void @If_CluMoveVar(ptr noundef %.070114, i32 noundef %.0115, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.cu, i32 noundef %i.x)
  br i1 %or.cond88168, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %._crit_edge
  br i1 %i.z, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dz = load i64, ptr %.070114, align 8, !tbaa !18
  %i.ea = sext i32 %i.x to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !18
  %i.ed = and i64 %i.ec, %i.dz                    ; 2 uses
  %i.ee = shl nuw nsw i32 1, %i.x
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 %i.ed, %i.ef
  %i.eh = or i64 %i.eg, %i.ed
  store i64 %i.eh, ptr %.070114, align 8, !tbaa !18
  br label %.loopexit91

bb.aa:                                            ; preds = %bb.y
  %i.ei = sdiv i32 %i.ab, 2
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %.070114, i64 %i.ej
  br label %.loopexit91

bb.ab:                                            ; preds = %._crit_edge
end_hunk_1
begin_hunk_2_@If_CluCheckNonDisjointGroup:bb.a
bb.e:                                             ; preds = %.lr.ph.split.split
  %i.cw = call i32 @If_CluCountCofs(ptr noundef nonnull %i.g, i32 noundef %1, i32 noundef %i.e, i32 noundef 0, ptr noundef null)
  %i.cx = icmp sgt i32 %i.cw, 2
  br i1 %i.cx, label %bb.f, label %.split.us

.split.us:                                        ; preds = %bb.e, %bb.c
  %.us-phi42 = phi i8 [ %i.n, %bb.c ], [ %i.ct, %bb.e ]
  %i.cy = sext i8 %.us-phi42 to i32
  %i.cz = add nsw i32 %1, -1
  tail call void @If_CluMoveVar(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.cy, i32 noundef %i.cz)
  %i.da = load i8, ptr %4, align 1, !tbaa !187    ; 4 uses
  %i.db = icmp sgt i8 %i.da, 0
  br i1 %i.db, label %.lr.ph57.preheader, label %.sink.split

.lr.ph57.preheader:                               ; preds = %.split.us
  %i.dc = zext nneg i8 %i.da to i32
  %invariant.op = sub i32 %1, %i.dc               ; 5 uses
  %i.dd = zext nneg i8 %i.da to i64               ; 6 uses
  %min.iters.check124 = icmp ult i8 %i.da, 24
  br i1 %min.iters.check124, label %.lr.ph57.preheader135, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph57.preheader
  %i.de = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.df = trunc nsw i64 %i.de to i32
  %i.dg = add i32 %invariant.op, %i.df
  %i.dh = icmp slt i32 %i.dg, %invariant.op
  %i.di = icmp ugt i64 %i.de, 4294967295
  %i.dj = or i1 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph57.preheader135, label %vector.memcheck120

vector.memcheck120:                               ; preds = %vector.scevcheck
  %i.dk = getelementptr i8, ptr %4, i64 %i.dd
  %scevgep = getelementptr i8, ptr %i.dk, i64 2
  %i.dl = sext i32 %invariant.op to i64           ; 2 uses
  %i.dm = shl nsw i64 %i.dl, 2
  %scevgep121 = getelementptr i8, ptr %3, i64 %i.dm
  %i.dn = add nsw i64 %i.dl, %i.dd
  %i.do = shl nsw i64 %i.dn, 2
  %scevgep122 = getelementptr i8, ptr %3, i64 %i.do
  %bound0 = icmp ult ptr %i.f, %scevgep122
  %bound1 = icmp ult ptr %scevgep121, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph57.preheader135, label %vector.ph125

vector.ph125:                                     ; preds = %vector.memcheck120
  %n.vec126 = and i64 %i.dd, 120                  ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next131, %vector.body127 ] ; 3 uses
  %i.dp = trunc nuw nsw i64 %index128 to i32
  %i.dq = add i32 %invariant.op, %i.dp
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load129 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !10, !alias.scope !306
  %wide.load130 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !10, !alias.scope !306
  %i.du = trunc <4 x i32> %wide.load129 to <4 x i8>
  %i.dv = trunc <4 x i32> %wide.load130 to <4 x i8>
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 %index128 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store <4 x i8> %i.du, ptr %i.dw, align 1, !tbaa !80, !alias.scope !309, !noalias !306
  store <4 x i8> %i.dv, ptr %i.dx, align 1, !tbaa !80, !alias.scope !309, !noalias !306
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.dy, label %middle.block132, label %vector.body127, !llvm.loop !311

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %n.vec126, %i.dd
  br i1 %cmp.n133, label %.sink.split, label %.lr.ph57.preheader135

.lr.ph57.preheader135:                            ; preds = %vector.memcheck120, %vector.scevcheck, %.lr.ph57.preheader, %middle.block132
  %indvars.iv80.ph = phi i64 [ 0, %vector.memcheck120 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph57.preheader ], [ %n.vec126, %middle.block132 ]
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader135, %.lr.ph57
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph57 ], [ %indvars.iv80.ph, %.lr.ph57.preheader135 ] ; 3 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv80 to i32
  %.reass = add i32 %invariant.op, %i.dz
  %i.ea = sext i32 %.reass to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv80
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !80
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next81, %i.dd
  br i1 %i.ef, label %.lr.ph57, label %.sink.split, !llvm.loop !312

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count78
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph.split.split, !llvm.loop !305

.sink.split:                                      ; preds = %bb.f, %bb.d, %.lr.ph57, %middle.block132, %bb.b, %.split.us
  %.1.ph = phi i32 [ 1, %.split.us ], [ 0, %bb.b ], [ 1, %middle.block132 ], [ 0, %bb.d ], [ 1, %.lr.ph57 ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @If_CluFindGroup(ptr dead_on_unwind noalias nofree writable sret(%struct.If_Grp_t_) align 1 captures(none) initializes((0, 18)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = trunc i32 %7 to i8                       ; 2 uses
  store i8 %i.c, ptr %0, align 1, !tbaa !187
  %i.d = tail call i32 @If_CluCountCofs(ptr noundef %1, i32 noundef %2, i32 noundef %7, i32 noundef 0, ptr noundef null)
  %i.e = trunc i32 %i.d to i8                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !189
  %i.g = icmp sgt i32 %7, 0                       ; 2 uses
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = sub i32 %2, %7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = sext i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %7 to i64      ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %i.j ; 2 uses
  %min.iters.check = icmp ult i32 %7, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !10
  %wide.load229 = load <4 x i32>, ptr %i.l, align 4, !tbaa !10
  %i.m = trunc <4 x i32> %wide.load to <4 x i8>
  %i.n = trunc <4 x i32> %wide.load229 to <4 x i8>
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store <4 x i8> %i.m, ptr %i.o, align 1, !tbaa !80
  store <4 x i8> %i.n, ptr %i.p, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.r = load i32, ptr %gep, align 4, !tbaa !10
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.s, ptr %i.t, align 1, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !314

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.u = icmp eq i8 %i.e, 2
  br i1 %i.u, label %.loopexit161, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %8, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call i32 @If_CluCheckNonDisjointGroup(ptr noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %0)
  %.not151 = icmp eq i32 %i.v, 0
  br i1 %.not151, label %bb.d, label %.loopexit161

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = add nsw i32 %7, %3
  %i.x = icmp eq i32 %2, %i.w
  br i1 %i.x, label %.loopexit161.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.y = add nsw i32 %2, -1                       ; 2 uses
  %i.z = icmp slt i32 %7, %i.y
  %i.aa = sub nsw i32 %i.y, %7                    ; 6 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ab ; 2 uses
  %i.ad = add nsw i32 %7, 1                       ; 3 uses
  %i.ae = add i32 %2, -2
  %i.af = sub i32 %i.ae, %7                       ; 2 uses
  %.not152166 = icmp slt i32 %i.af, %3
  %i.ag = sext i32 %i.aa to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ag ; 2 uses
  %i.ai = sub i32 %2, %7                          ; 5 uses
  %i.aj = sub nsw i32 %2, %4
  %i.ak = icmp slt i32 %4, %7
  %i.al = shl nuw nsw i32 1, %7
  %i.am = icmp slt i32 %i.ai, 6
  %i.an = add i32 %i.ai, -6                       ; 3 uses
  %i.ao = shl nuw i32 1, %i.an                    ; 3 uses
  %.not.i = icmp eq i32 %7, 31                    ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %.not178.i = icmp eq i32 %i.an, 31
  %smax200.i = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 1) ; 2 uses
  %wide.trip.count201.i = zext nneg i32 %i.al to i64 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %smax200.i to i64
  %i.aq = shl nuw nsw i32 1, %i.ai
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i, -1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.au = sext i32 %i.af to i64
  %i.av = sext i32 %3 to i64
  %i.aw = sext i32 %i.ai to i64                   ; 2 uses
  %i.ax = sext i32 %i.aj to i64
  %wide.trip.count202 = zext i32 %7 to i64        ; 3 uses
  %invariant.gep220 = getelementptr [4 x i8], ptr %6, i64 %i.aw ; 2 uses
  %min.iters.check231 = icmp ult i32 %7, 8
  %n.vec233 = and i64 %wide.trip.count202, 2147483640 ; 3 uses
  %cmp.n240 = icmp eq i64 %n.vec233, %wide.trip.count202
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.u
  %i.ay = phi i1 [ true, %.preheader ], [ false, %bb.u ]
  br i1 %i.z, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.az = load i32, ptr %i.ac, align 4, !tbaa !10 ; 2 uses
  %i.ba = tail call i32 @If_CluCountCofs(ptr noundef %1, i32 noundef %2, i32 noundef %i.ad, i32 noundef 0, ptr noundef null)
  br i1 %.not152166, label %._crit_edge172, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.f, %bb.h
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %bb.h ], [ %i.au, %bb.f ] ; 3 uses
  %.0169 = phi i32 [ %.1, %bb.h ], [ %i.ba, %bb.f ] ; 2 uses
  %.0135168 = phi i32 [ %.1136, %bb.h ], [ %i.az, %bb.f ]
  %i.bb = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv193
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10
  tail call void @If_CluSwapVars(ptr noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %i.bf, i32 noundef %i.aa)
  %i.bg = tail call i32 @If_CluCountCofs(ptr noundef %1, i32 noundef %2, i32 noundef %i.ad, i32 noundef 0, ptr noundef null) ; 2 uses
  %.not156 = icmp slt i32 %.0169, %i.bg
  br i1 %.not156, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph171
  %i.bh = load i32, ptr %i.ac, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph171, %bb.g
  %.1136 = phi i32 [ %i.bh, %bb.g ], [ %.0135168, %.lr.ph171 ] ; 2 uses
  %.1 = phi i32 [ %i.bg, %bb.g ], [ %.0169, %.lr.ph171 ]
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, -1
  %.not152.not = icmp sgt i64 %indvars.iv193, %i.av
  br i1 %.not152.not, label %.lr.ph171, label %._crit_edge172, !llvm.loop !315

._crit_edge172:                                   ; preds = %bb.h, %bb.f
  %.0135.lcssa = phi i32 [ %i.az, %bb.f ], [ %.1136, %bb.h ]
  %i.bi = sext i32 %.0135.lcssa to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !10
  tail call void @If_CluSwapVars(ptr noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %i.bk, i32 noundef %i.aa)
  %i.bl = tail call i32 @If_CluCountCofs(ptr noundef %1, i32 noundef %2, i32 noundef %i.ad, i32 noundef 0, ptr noundef null) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge172, %bb.e
  %i.bm = load i32, ptr %i.ah, align 4, !tbaa !10 ; 2 uses
  %i.bn = tail call i32 @If_CluCountCofs(ptr noundef %1, i32 noundef %2, i32 noundef %7, i32 noundef 0, ptr noundef null)
  br i1 %i.ak, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %bb.i, %bb.q
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %bb.q ], [ %i.aw, %bb.i ] ; 2 uses
  %.2175 = phi i32 [ %.3, %bb.q ], [ %i.bn, %bb.i ] ; 2 uses
  %.2137174 = phi i32 [ %.3138, %bb.q ], [ %i.bm, %bb.i ]
  %i.bo = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv196
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10
  tail call void @If_CluSwapVars(ptr noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef %6, i32 noundef %i.bs, i32 noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph177
  br i1 %.not.i, label %If_CluCountCofs.exit, label %.lr.ph174.i

.lr.ph174.i:                                      ; preds = %bb.j, %.thread218.i
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %.thread218.i ], [ 0, %bb.j ] ; 2 uses
  %.0100170.i = phi i32 [ %.1101220.i, %.thread218.i ], [ 0, %bb.j ] ; 6 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv208.i to i32
  %i.bu = shl nsw i32 %i.bt, %i.ai                ; 2 uses
  %i.bv = sdiv i32 %i.bu, 64
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18
  %i.bz = and i32 %i.bu, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = lshr i64 %i.by, %i.ca
  %i.cc = and i64 %i.cb, %i.as                    ; 2 uses
  %i.cd = icmp sgt i32 %.0100170.i, 0
  br i1 %i.cd, label %.lr.ph165.preheader.i, label %._crit_edge166.i

.lr.ph165.preheader.i:                            ; preds = %.lr.ph174.i
  %wide.trip.count206.i = zext nneg i32 %.0100170.i to i64
  br label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.k, %.lr.ph165.preheader.i
  %indvars.iv203.i = phi i64 [ 0, %.lr.ph165.preheader.i ], [ %indvars.iv.next204.i, %bb.k ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv203.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.cg = icmp eq i64 %i.cc, %i.cf
  br i1 %i.cg, label %._crit_edge166.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph165.i
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next204.i, %wide.trip.count206.i
  br i1 %exitcond207.not.i, label %._crit_edge166.thread.i, label %.lr.ph165.i, !llvm.loop !236

._crit_edge166.loopexit.i:                        ; preds = %.lr.ph165.i
  %i.ch = trunc nuw nsw i64 %indvars.iv203.i to i32
  br label %._crit_edge166.i

._crit_edge166.i:                                 ; preds = %._crit_edge166.loopexit.i, %.lr.ph174.i
  %.0108.lcssa.i = phi i32 [ 0, %.lr.ph174.i ], [ %i.ch, %._crit_edge166.loopexit.i ]
  %i.ci = icmp eq i32 %.0108.lcssa.i, %.0100170.i
  br i1 %i.ci, label %._crit_edge166.thread.i, label %.thread218.i

._crit_edge166.thread.i:                          ; preds = %bb.k, %._crit_edge166.i
  %i.cj = add nsw i32 %.0100170.i, 1              ; 2 uses
  %i.ck = sext i32 %.0100170.i to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ck
  store i64 %i.cc, ptr %i.cl, align 8, !tbaa !18
  %i.cm = icmp eq i32 %i.cj, 5
  br i1 %i.cm, label %If_CluCountCofs.exit, label %.thread218.i

.thread218.i:                                     ; preds = %._crit_edge166.thread.i, %._crit_edge166.i
  %.1101220.i = phi i32 [ %i.cj, %._crit_edge166.thread.i ], [ %.0100170.i, %._crit_edge166.i ] ; 2 uses
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next209.i, %wide.trip.count201.i
  br i1 %exitcond213.not.i, label %If_CluCountCofs.exit, label %.lr.ph174.i, !llvm.loop !237

bb.l:                                             ; preds = %.lr.ph177
  br i1 %.not.i, label %If_CluCountCofs.exit, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.l
  br i1 %.not178.i, label %.lr.ph159.i.split.us, label %.lr.ph159.i.split

.lr.ph159.i.split.us:                             ; preds = %.lr.ph159.i, %.thread.us
  %indvars.iv197.i.us = phi i64 [ %indvars.iv.next198.i.us, %.thread.us ], [ 0, %.lr.ph159.i ] ; 2 uses
  %.3103154.i.us = phi i32 [ %.4104.i158.us, %.thread.us ], [ 0, %.lr.ph159.i ] ; 4 uses
  %or.cond = icmp sgt i32 %.3103154.i.us, -1
  br i1 %or.cond, label %.lr.ph145.i.us, label %.thread.us

.lr.ph145.i.us:                                   ; preds = %.lr.ph159.i.split.us
  %i.cn = add nuw nsw i32 %.3103154.i.us, 1       ; 2 uses
  %i.co = zext nneg i32 %.3103154.i.us to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.co
  store i64 %indvars.iv197.i.us, ptr %i.cp, align 8, !tbaa !18
  %i.cq = icmp eq i32 %i.cn, 5
  br i1 %i.cq, label %If_CluCountCofs.exit, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph159.i.split.us, %.lr.ph145.i.us
  %.4104.i158.us = phi i32 [ %i.cn, %.lr.ph145.i.us ], [ %.3103154.i.us, %.lr.ph159.i.split.us ] ; 2 uses
  %indvars.iv.next198.i.us = add nuw nsw i64 %indvars.iv197.i.us, 1 ; 2 uses
  %exitcond202.not.i.us = icmp eq i64 %indvars.iv.next198.i.us, %wide.trip.count201.i
  br i1 %exitcond202.not.i.us, label %If_CluCountCofs.exit, label %.lr.ph159.i.split.us, !llvm.loop !238

.thread:                                          ; preds = %._crit_edge146.split.us.i, %.loopexit
  %.4104.i158 = phi i32 [ %i.di, %.loopexit ], [ %.3103154.i, %._crit_edge146.split.us.i ] ; 2 uses
  %indvars.iv.next198.i = add nuw nsw i64 %indvars.iv197.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next198.i, %wide.trip.count201.i
  br i1 %exitcond202.not.i, label %If_CluCountCofs.exit, label %.lr.ph159.i.split, !llvm.loop !238

.lr.ph159.i.split:                                ; preds = %.lr.ph159.i, %.thread
  %indvars.iv197.i = phi i64 [ %indvars.iv.next198.i, %.thread ], [ 0, %.lr.ph159.i ] ; 3 uses
  %.3103154.i = phi i32 [ %.4104.i158, %.thread ], [ 0, %.lr.ph159.i ] ; 6 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv197.i to i32
  %i.cs = shl i32 %i.cr, %i.an
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ct
  %i.cv = icmp sgt i32 %.3103154.i, 0
  br i1 %i.cv, label %.lr.ph145.i, label %._crit_edge146.split.us.i

.lr.ph145.i:                                      ; preds = %.lr.ph159.i.split
  %wide.trip.count190.i = zext nneg i32 %.3103154.i to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.o, %.lr.ph145.i
  %indvars.iv187.i = phi i64 [ 0, %.lr.ph145.i ], [ %indvars.iv.next188.i, %bb.o ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv187.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !18
  %i.cy = mul i64 %i.cx, %i.ap
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cy
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !18
  %.not.us.i = icmp eq i64 %i.db, %i.dd
  br i1 %.not.us.i, label %bb.n, label %._crit_edge.us.split.loop.exit230.i

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.m, !llvm.loop !239

._crit_edge.us.split.loop.exit230.i:              ; preds = %bb.m
  %i.de = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.n, %._crit_edge.us.split.loop.exit230.i
  %.0106.lcssa.us.i = phi i32 [ %i.de, %._crit_edge.us.split.loop.exit230.i ], [ %smax200.i, %bb.n ]
  %i.df = icmp eq i32 %.0106.lcssa.us.i, %i.ao
  br i1 %i.df, label %._crit_edge146.split.us.loopexit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.us.i
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next188.i, %wide.trip.count190.i
  br i1 %exitcond191.not.i, label %.loopexit, label %.lr.ph.us.i, !llvm.loop !240

._crit_edge146.split.us.loopexit.i:               ; preds = %._crit_edge.us.i
  %i.dg = trunc nuw nsw i64 %indvars.iv187.i to i32
  br label %._crit_edge146.split.us.i

._crit_edge146.split.us.i:                        ; preds = %._crit_edge146.split.us.loopexit.i, %.lr.ph159.i.split
  %.1109.lcssa.i = phi i32 [ 0, %.lr.ph159.i.split ], [ %i.dg, %._crit_edge146.split.us.loopexit.i ]
  %i.dh = icmp eq i32 %.1109.lcssa.i, %.3103154.i
  br i1 %i.dh, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %bb.o, %._crit_edge146.split.us.i
  %i.di = add nsw i32 %.3103154.i, 1              ; 2 uses
  %i.dj = sext i32 %.3103154.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dj
  store i64 %indvars.iv197.i, ptr %i.dk, align 8, !tbaa !18
  %i.dl = icmp eq i32 %i.di, 5
  br i1 %i.dl, label %If_CluCountCofs.exit, label %.thread

If_CluCountCofs.exit:                             ; preds = %.loopexit, %.thread, %.thread.us, %.lr.ph145.i.us, %.thread218.i, %._crit_edge166.thread.i, %bb.l, %bb.j
  %.6.i = phi i32 [ 0, %bb.l ], [ 0, %bb.j ], [ %.4104.i158.us, %.thread.us ], [ %.1101220.i, %.thread218.i ], [ 5, %._crit_edge166.thread.i ], [ 5, %.lr.ph145.i.us ], [ 5, %.loopexit ], [ %.4104.i158, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not155 = icmp slt i32 %.2175, %.6.i
  br i1 %.not155, label %bb.q, label %bb.p

bb.p:                                             ; preds = %If_CluCountCofs.exit
  %i.dm = load i32, ptr %i.ah, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %If_CluCountCofs.exit, %bb.p
  %.3138 = phi i32 [ %i.dm, %bb.p ], [ %.2137174, %If_CluCountCofs.exit ] ; 2 uses
  %.3 = phi i32 [ %.6.i, %bb.p ], [ %.2175, %If_CluCountCofs.exit ]
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next197, %i.ax
  br i1 %i.dn, label %.lr.ph177, label %._crit_edge178, !llvm.loop !316

._crit_edge178:                                   ; preds = %bb.q, %bb.i
  %.2137.lcssa = phi i32 [ %i.bm, %bb.i ], [ %.3138, %bb.q ]
  %i.do = sext i32 %.2137.lcssa to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  tail call void @If_CluSwapVars(ptr noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef %6, i32 noundef %i.dq, i32 noundef %i.aa)
  %i.dr = tail call i32 @If_CluCountCofs(ptr noundef %1, i32 noundef %2, i32 noundef %7, i32 noundef 0, ptr noundef null) ; 2 uses
  %i.ds = load i8, ptr %i.f, align 1, !tbaa !189  ; 2 uses
  %i.dt = sext i8 %i.ds to i32
  %.not153 = icmp sgt i32 %i.dr, %i.dt
  br i1 %.not153, label %thread-pre-split, label %bb.r

bb.r:                                             ; preds = %._crit_edge178
  store i8 %i.c, ptr %0, align 1, !tbaa !187
  %i.du = trunc i32 %i.dr to i8                   ; 4 uses
  store i8 %i.du, ptr %i.f, align 1, !tbaa !189
  br i1 %i.g, label %.lr.ph182.preheader, label %thread-pre-split

.lr.ph182.preheader:                              ; preds = %bb.r
  br i1 %min.iters.check231, label %.lr.ph182.preheader246, label %vector.body234

vector.body234:                                   ; preds = %.lr.ph182.preheader, %vector.body234
  %index235 = phi i64 [ %index.next238, %vector.body234 ], [ 0, %.lr.ph182.preheader ] ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %invariant.gep220, i64 %index235 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %wide.load236 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !10
  %wide.load237 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !10
  %i.dx = trunc <4 x i32> %wide.load236 to <4 x i8>
  %i.dy = trunc <4 x i32> %wide.load237 to <4 x i8>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.at, i64 %index235 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store <4 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !80
  store <4 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !80
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.eb, label %middle.block239, label %vector.body234, !llvm.loop !317

middle.block239:                                  ; preds = %vector.body234
  br i1 %cmp.n240, label %thread-pre-split, label %.lr.ph182.preheader246

.lr.ph182.preheader246:                           ; preds = %.lr.ph182.preheader, %middle.block239
  %indvars.iv199.ph = phi i64 [ 0, %.lr.ph182.preheader ], [ %n.vec233, %middle.block239 ]
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader246, %.lr.ph182
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %.lr.ph182 ], [ %indvars.iv199.ph, %.lr.ph182.preheader246 ] ; 3 uses
  %gep221 = getelementptr [4 x i8], ptr %invariant.gep220, i64 %indvars.iv199
  %i.ec = load i32, ptr %gep221, align 4, !tbaa !10
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv199
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !80
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %thread-pre-split, label %.lr.ph182, !llvm.loop !318

thread-pre-split:                                 ; preds = %.lr.ph182, %middle.block239, %bb.r, %._crit_edge178
  %i.ef = phi i8 [ %i.ds, %._crit_edge178 ], [ %i.du, %bb.r ], [ %i.du, %middle.block239 ], [ %i.du, %.lr.ph182 ]
  %i.eg = icmp eq i8 %i.ef, 2
  br i1 %i.eg, label %.loopexit161, label %bb.s

bb.s:                                             ; preds = %thread-pre-split
  br i1 %.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eh = tail call i32 @If_CluCheckNonDisjointGroup(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %0)
  %.not154 = icmp eq i32 %i.eh, 0
  br i1 %.not154, label %bb.u, label %.loopexit161

bb.u:                                             ; preds = %bb.s, %bb.t
  br i1 %i.ay, label %bb.e, label %.loopexit161.sink.split, !llvm.loop !319

.loopexit161.sink.split:                          ; preds = %bb.u, %bb.d
  store i8 0, ptr %0, align 1, !tbaa !187
  br label %.loopexit161

.loopexit161:                                     ; preds = %bb.t, %thread-pre-split, %.loopexit161.sink.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @If_CluCheckGroup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.lr.ph.preheader.i

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %vec.ind, ptr %i.e, align 16, !tbaa !10
  store <4 x i32> %step.add, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> %vec.ind, ptr %i.g, align 16, !tbaa !10
  store <4 x i32> %step.add, ptr %i.h, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader35 ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.k, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.k, ptr %i.l, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !321

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.m = icmp samesign ult i32 %1, 7
  %i.n = add nsw i32 %1, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o          ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a, %._crit_edge
  %i.r = phi i32 [ %i.p, %._crit_edge ], [ 1, %bb.a ]
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.s, i1 false), !tbaa !18
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %._crit_edge
  %i.t = load i8, ptr %2, align 1, !tbaa !187     ; 3 uses
  %i.u = icmp sgt i8 %i.t, 0
  br i1 %i.u, label %.lr.ph.i24, label %If_CluCopy.exit.If_CluMoveGroupToMsb.exit_crit_edge

If_CluCopy.exit.If_CluMoveGroupToMsb.exit_crit_edge: ; preds = %If_CluCopy.exit
  %.pre30 = sext i8 %i.t to i32
end_hunk_2
begin_hunk_3_@If_CluMinimumBase:bb.a
  %i.ai = or i32 %.056.us, %i.ah
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %If_CluHasVar.exit.thread45.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv141
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = sext i32 %.02255.us to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.al
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %If_CluHasVar.exit.thread45.us
  %i.an = add nsw i32 %.02255.us, 1
  br label %If_CluHasVar.exit.thread.us

If_CluHasVar.exit.thread.us:                      ; preds = %._crit_edge.us.i.us, %bb.e, %bb.g
  %.123.us = phi i32 [ %i.an, %bb.g ], [ %.02255.us, %bb.e ], [ %.02255.us, %._crit_edge.us.i.us ] ; 2 uses
  %.1.us = phi i32 [ %i.ai, %bb.g ], [ %.056.us, %bb.e ], [ %.056.us, %._crit_edge.us.i.us ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !323

._crit_edge:                                      ; preds = %If_CluHasVar.exit.thread.us, %.lr.ph, %bb.a
  %.022.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %.123.us, %If_CluHasVar.exit.thread.us ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %.1.us, %If_CluHasVar.exit.thread.us ] ; 3 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  store i32 %.022.lcssa, ptr %3, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ao = add nsw i32 %.0.lcssa, 1
  %i.ap = and i32 %i.ao, %.0.lcssa
  %.not48 = icmp eq i32 %i.ap, 0
  br i1 %.not48, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  br i1 %i.b, label %.lr.ph58.i, label %If_CluTruthShrink.exit

.lr.ph58.i:                                       ; preds = %bb.j
  %i.aq = icmp samesign ult i32 %2, 7
  %i.ar = add nsw i32 %2, -6
  %i.as = shl nuw i32 1, %i.ar                    ; 2 uses
  %i.at = select i1 %i.aq, i32 1, i32 %i.as       ; 5 uses
  %i.au = icmp sgt i32 %i.at, 0                   ; 3 uses
  %i.av = zext i32 %i.at to i64                   ; 4 uses
  %wide.trip.count.i33 = zext nneg i32 %2 to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 2 uses
  %i.ay = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.az = icmp eq i64 %i.ax, 0
  %unroll_iter259 = and i64 %i.ay, -2
  %i.ba = and i64 %i.aw, 2
  %lcmp.mod257.not.not = icmp eq i64 %i.ba, 0
  %lcmp.mod258 = trunc i64 %i.ay to i1
  %min.iters.check = icmp ult i32 %i.at, 4
  %n.vec = and i64 %i.av, 2147483644
  %xtraiter261 = and i64 %i.av, 1
  %i.bb = icmp eq i64 %i.aw, 0
  %unroll_iter265 = and i64 %i.av, 2147483646
  %lcmp.mod263.not = icmp eq i64 %xtraiter261, 0
  %lcmp.mod264 = trunc i32 %i.at to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph58.i
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next.i36, %bb.o ] ; 3 uses
  %.056.i = phi i32 [ 0, %.lr.ph58.i ], [ %.2.i35, %bb.o ] ; 3 uses
  %.02255.i = phi i32 [ 0, %.lr.ph58.i ], [ %.123.i, %bb.o ] ; 5 uses
  %.02652.i = phi ptr [ %0, %.lr.ph58.i ], [ %.228.i, %bb.o ] ; 3 uses
  %.02951.i = phi ptr [ %i.a, %.lr.ph58.i ], [ %.231.i, %bb.o ] ; 3 uses
  %indvars71.i = trunc i64 %indvars.iv.i34 to i32 ; 3 uses
  %i.bc = shl nuw i32 1, %indvars71.i
  %i.bd = and i32 %i.bc, %.0.lcssa
  %.not34.i = icmp eq i32 %i.bd, 0
  br i1 %.not34.i, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %.not35.not44.i = icmp slt i32 %.02255.i, %indvars71.i
  br i1 %.not35.not44.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.be = sext i32 %.02255.i to i64
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %If_CluSwapAdjacent.exit.i, %.lr.ph.preheader.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.i34, %.lr.ph.preheader.i ], [ %indvars.iv.next69.i, %If_CluSwapAdjacent.exit.i ] ; 3 uses
  %.12746.i = phi ptr [ %.02652.i, %.lr.ph.preheader.i ], [ %.13045.i, %If_CluSwapAdjacent.exit.i ] ; 11 uses
  %.13045.i = phi ptr [ %.02951.i, %.lr.ph.preheader.i ], [ %.12746.i, %If_CluSwapAdjacent.exit.i ] ; 11 uses
  %.13045.i179 = ptrtoaddr ptr %.13045.i to i64   ; 4 uses
  %.12746.i180 = ptrtoaddr ptr %.12746.i to i64   ; 4 uses
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, -1 ; 5 uses
  %i.bf = icmp slt i64 %indvars.iv68.i, 6
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i38
  br i1 %i.au, label %.lr.ph127.i.i, label %If_CluSwapAdjacent.exit.i

.lr.ph127.i.i:                                    ; preds = %bb.l
  %i.bg = trunc nsw i64 %indvars.iv.next69.i to i32
  %i.bh = shl nuw nsw i32 1, %i.bg
  %i.bi = getelementptr inbounds [24 x i8], ptr @PMasks, i64 %indvars.iv.next69.i ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !18 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !18 ; 4 uses
  %i.bm = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18 ; 4 uses
  %i.bp = sub i64 %.12746.i180, %.13045.i179
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.lr.ph127.i.i
  br i1 %i.bb, label %scalar.ph.epil.preheader, label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph127.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert181 = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat182 = shufflevector <2 x i64> %broadcast.splatinsert181, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert183 = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat184 = shufflevector <2 x i64> %broadcast.splatinsert183, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert185 = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat186 = shufflevector <2 x i64> %broadcast.splatinsert185, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <2 x i64>, ptr %i.bq, align 8, !tbaa !18 ; 3 uses
  %wide.load187 = load <2 x i64>, ptr %i.br, align 8, !tbaa !18 ; 3 uses
  %i.bs = and <2 x i64> %wide.load, %broadcast.splat
  %i.bt = and <2 x i64> %wide.load187, %broadcast.splat
  %i.bu = and <2 x i64> %wide.load, %broadcast.splat182
  %i.bv = and <2 x i64> %wide.load187, %broadcast.splat182
  %i.bw = shl <2 x i64> %i.bu, %broadcast.splat184
  %i.bx = shl <2 x i64> %i.bv, %broadcast.splat184
  %i.by = or <2 x i64> %i.bw, %i.bs
  %i.bz = or <2 x i64> %i.bx, %i.bt
  %i.ca = and <2 x i64> %wide.load, %broadcast.splat186
  %i.cb = and <2 x i64> %wide.load187, %broadcast.splat186
  %i.cc = lshr <2 x i64> %i.ca, %broadcast.splat184
  %i.cd = lshr <2 x i64> %i.cb, %broadcast.splat184
  %i.ce = or <2 x i64> %i.by, %i.cc
  %i.cf = or <2 x i64> %i.bz, %i.cd
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x i64> %i.ce, ptr %i.cg, align 8, !tbaa !18
  store <2 x i64> %i.cf, ptr %i.ch, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %If_CluSwapAdjacent.exit.i, label %vector.body, !llvm.loop !324

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv158.i.i = phi i64 [ %indvars.iv.next159.i.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter266 = phi i64 [ %niter266.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv158.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !18 ; 3 uses
  %i.cl = and i64 %i.ck, %i.bj
  %i.cm = and i64 %i.ck, %i.bl
  %i.cn = shl i64 %i.cm, %i.bm
  %i.co = or i64 %i.cn, %i.cl
  %i.cp = and i64 %i.ck, %i.bo
  %i.cq = lshr i64 %i.cp, %i.bm
  %i.cr = or i64 %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv158.i.i
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !18
  %indvars.iv.next159.i.i = or disjoint i64 %indvars.iv158.i.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv.next159.i.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !18 ; 3 uses
  %i.cv = and i64 %i.cu, %i.bj
  %i.cw = and i64 %i.cu, %i.bl
  %i.cx = shl i64 %i.cw, %i.bm
  %i.cy = or i64 %i.cx, %i.cv
  %i.cz = and i64 %i.cu, %i.bo
  %i.da = lshr i64 %i.cz, %i.bm
  %i.db = or i64 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv.next159.i.i
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !18
  %indvars.iv.next159.i.i.1 = add nuw nsw i64 %indvars.iv158.i.i, 2 ; 2 uses
  %niter266.next.1 = add i64 %niter266, 2         ; 2 uses
  %niter266.ncmp.1 = icmp eq i64 %niter266.next.1, %unroll_iter265
  br i1 %niter266.ncmp.1, label %If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !325

bb.m:                                             ; preds = %.lr.ph.i38
  %i.dd = icmp eq i64 %indvars.iv.next69.i, 5
  br i1 %i.dd, label %.preheader.i.i, label %bb.n

.preheader.i.i:                                   ; preds = %bb.m
  br i1 %i.au, label %.lr.ph.i.i.preheader, label %If_CluSwapAdjacent.exit.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  br i1 %i.az, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.m
  %i.de = trunc i64 %indvars.iv68.i to i32
  %i.df = add i32 %i.de, -7                       ; 11 uses
  %i.dg = shl nuw nsw i32 1, %i.df
  br i1 %i.au, label %.preheader87.lr.ph.i.i, label %If_CluSwapAdjacent.exit.i

.preheader87.lr.ph.i.i:                           ; preds = %bb.n
  %.not128.i.i = icmp eq i32 %i.df, 31
  %i.dh = shl i32 4, %i.df                        ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  br i1 %.not128.i.i, label %If_CluSwapAdjacent.exit.i, label %.preheader87.us.preheader.i.i

.preheader87.us.preheader.i.i:                    ; preds = %.preheader87.lr.ph.i.i
  %i.dj = shl nuw i32 3, %i.df
  %i.dk = shl nuw i32 2, %i.df
  %i.dl = sext i32 %i.dk to i64                   ; 3 uses
  %4 = zext nneg i32 %i.dg to i64                 ; 12 uses
  %i.dm = sext i32 %i.dj to i64                   ; 6 uses
  %i.dn = shl nuw nsw i64 %4, 3                   ; 3 uses
  %i.do = shl nsw i64 %i.dl, 3                    ; 2 uses
  %i.dp = add i64 %i.do, %.13045.i179
  %i.dq = add i64 %i.dn, %.12746.i180
  %i.dr = add i64 %i.dn, %.13045.i179
  %i.ds = add i64 %i.do, %.12746.i180
  %min.iters.check220 = icmp ult i32 %i.df, 2
  %i.dt = sub i64 %i.ds, %i.dr
  %diff.check217 = icmp ugt i64 %i.dt, -32
  %or.cond230 = select i1 %min.iters.check220, i1 true, i1 %diff.check217
  %n.vec221 = and i64 %4, 2147483644
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %5 = icmp ult i32 %i.df, 2
  %unroll_iter = and i64 %4, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod242 = icmp ne i64 %xtraiter, 0
  %min.iters.check206 = icmp ult i32 %i.df, 2
  %i.du = sub i64 %i.dq, %i.dp
  %diff.check203 = icmp ugt i64 %i.du, -32
  %or.cond232.a = select i1 %min.iters.check206, i1 true, i1 %diff.check203
  %n.vec207 = and i64 %4, 2147483644
  %xtraiter243 = and i64 %4, 3                    ; 3 uses
  %6 = icmp ult i32 %i.df, 2
  %unroll_iter247 = and i64 %4, 2147483644
  %lcmp.mod245.not = icmp eq i64 %xtraiter243, 0
  %lcmp.mod246 = icmp ne i64 %xtraiter243, 0
  %min.iters.check192 = icmp ult i32 %i.df, 2
  %i.dv = sub i64 %.12746.i180, %.13045.i179
  %diff.check189 = icmp ugt i64 %i.dv, -32
  %or.cond231 = select i1 %min.iters.check192, i1 true, i1 %diff.check189
  %n.vec193 = and i64 %4, 2147483644
  %xtraiter249 = and i64 %4, 3                    ; 3 uses
  %7 = icmp ult i32 %i.df, 2
  %unroll_iter253 = and i64 %4, 2147483644
  %lcmp.mod251.not = icmp eq i64 %xtraiter249, 0
  %lcmp.mod252 = icmp ne i64 %xtraiter249, 0
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %._crit_edge.us.i.i, %.preheader87.us.preheader.i.i
  %.098.us.i.i = phi ptr [ %i.fl, %._crit_edge.us.i.i ], [ %.13045.i, %.preheader87.us.preheader.i.i ] ; 10 uses
  %.07797.us.i.i = phi ptr [ %i.fk, %._crit_edge.us.i.i ], [ %.12746.i, %.preheader87.us.preheader.i.i ] ; 10 uses
  %.07996.us.i.i = phi i32 [ %i.fm, %._crit_edge.us.i.i ], [ 0, %.preheader87.us.preheader.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.098.us.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.07797.us.i.i, i64 %i.dn, i1 false), !tbaa !18
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.07797.us.i.i, i64 %i.dl ; 6 uses
  %invariant.gep168.i.i = getelementptr [8 x i8], ptr %.098.us.i.i, i64 %4 ; 6 uses
  br i1 %or.cond230, label %.lr.ph91.us.i.i.preheader, label %vector.body222

.lr.ph91.us.i.i.preheader:                        ; preds = %.lr.ph.us.preheader.i.i
  br i1 %5, label %.lr.ph91.us.i.i.epil.preheader, label %.lr.ph91.us.i.i

vector.body222:                                   ; preds = %.lr.ph.us.preheader.i.i, %vector.body222
  %index223 = phi i64 [ %index.next226, %vector.body222 ], [ 0, %.lr.ph.us.preheader.i.i ] ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index223 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %wide.load224 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !18
  %wide.load225 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !18
  %i.dy = getelementptr [8 x i8], ptr %invariant.gep168.i.i, i64 %index223 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store <2 x i64> %wide.load224, ptr %i.dy, align 8, !tbaa !18
  store <2 x i64> %wide.load225, ptr %i.dz, align 8, !tbaa !18
  %index.next226 = add nuw i64 %index223, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.ea, label %.preheader85.us.i.i, label %vector.body222, !llvm.loop !326

.lr.ph91.us.i.i:                                  ; preds = %.lr.ph91.us.i.i.preheader, %.lr.ph91.us.i.i
  %indvars.iv136.i.i = phi i64 [ %indvars.iv.next137.i.i.3, %.lr.ph91.us.i.i ], [ 0, %.lr.ph91.us.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph91.us.i.i ], [ 0, %.lr.ph91.us.i.i.preheader ]
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv136.i.i
  %i.eb = load i64, ptr %gep.i.i, align 8, !tbaa !18
  %gep169.i.i = getelementptr [8 x i8], ptr %invariant.gep168.i.i, i64 %indvars.iv136.i.i
  store i64 %i.eb, ptr %gep169.i.i, align 8, !tbaa !18
  %indvars.iv.next137.i.i = or disjoint i64 %indvars.iv136.i.i, 1 ; 2 uses
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next137.i.i
  %i.ec = load i64, ptr %gep.i.i.1, align 8, !tbaa !18
  %gep169.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep168.i.i, i64 %indvars.iv.next137.i.i
  store i64 %i.ec, ptr %gep169.i.i.1, align 8, !tbaa !18
  %indvars.iv.next137.i.i.1 = or disjoint i64 %indvars.iv136.i.i, 2 ; 2 uses
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next137.i.i.1
  %i.ed = load i64, ptr %gep.i.i.2, align 8, !tbaa !18
  %gep169.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep168.i.i, i64 %indvars.iv.next137.i.i.1
  store i64 %i.ed, ptr %gep169.i.i.2, align 8, !tbaa !18
  %indvars.iv.next137.i.i.2 = or disjoint i64 %indvars.iv136.i.i, 3 ; 2 uses
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next137.i.i.2
  %i.ee = load i64, ptr %gep.i.i.3, align 8, !tbaa !18
  %gep169.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep168.i.i, i64 %indvars.iv.next137.i.i.2
  store i64 %i.ee, ptr %gep169.i.i.3, align 8, !tbaa !18
  %indvars.iv.next137.i.i.3 = add nuw nsw i64 %indvars.iv136.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader85.us.i.i.loopexit.unr-lcssa, label %.lr.ph91.us.i.i, !llvm.loop !327

scalar.ph204:                                     ; preds = %scalar.ph204.preheader, %scalar.ph204
  %indvars.iv143.i.i = phi i64 [ %indvars.iv.next144.i.i.3, %scalar.ph204 ], [ 0, %scalar.ph204.preheader ] ; 6 uses
  %niter248 = phi i64 [ %niter248.next.3, %scalar.ph204 ], [ 0, %scalar.ph204.preheader ]
  %gep171.i.i = getelementptr [8 x i8], ptr %invariant.gep170.i.i, i64 %indvars.iv143.i.i
  %i.ef = load i64, ptr %gep171.i.i, align 8, !tbaa !18
  %gep173.i.i = getelementptr [8 x i8], ptr %invariant.gep172.i.i, i64 %indvars.iv143.i.i
  store i64 %i.ef, ptr %gep173.i.i, align 8, !tbaa !18
  %indvars.iv.next144.i.i = or disjoint i64 %indvars.iv143.i.i, 1 ; 2 uses
  %gep171.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep170.i.i, i64 %indvars.iv.next144.i.i
  %i.eg = load i64, ptr %gep171.i.i.1, align 8, !tbaa !18
  %gep173.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep172.i.i, i64 %indvars.iv.next144.i.i
  store i64 %i.eg, ptr %gep173.i.i.1, align 8, !tbaa !18
  %indvars.iv.next144.i.i.1 = or disjoint i64 %indvars.iv143.i.i, 2 ; 2 uses
  %gep171.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep170.i.i, i64 %indvars.iv.next144.i.i.1
  %i.eh = load i64, ptr %gep171.i.i.2, align 8, !tbaa !18
  %gep173.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep172.i.i, i64 %indvars.iv.next144.i.i.1
  store i64 %i.eh, ptr %gep173.i.i.2, align 8, !tbaa !18
  %indvars.iv.next144.i.i.2 = or disjoint i64 %indvars.iv143.i.i, 3 ; 2 uses
  %gep171.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep170.i.i, i64 %indvars.iv.next144.i.i.2
  %i.ei = load i64, ptr %gep171.i.i.3, align 8, !tbaa !18
  %gep173.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep172.i.i, i64 %indvars.iv.next144.i.i.2
  store i64 %i.ei, ptr %gep173.i.i.3, align 8, !tbaa !18
  %indvars.iv.next144.i.i.3 = add nuw nsw i64 %indvars.iv143.i.i, 4 ; 2 uses
  %niter248.next.3 = add i64 %niter248, 4         ; 2 uses
  %niter248.ncmp.3 = icmp eq i64 %niter248.next.3, %unroll_iter247
  br i1 %niter248.ncmp.3, label %.lr.ph95.us.i.i.preheader.loopexit.unr-lcssa, label %scalar.ph204, !llvm.loop !328

.lr.ph95.us.i.i.preheader.loopexit.unr-lcssa:     ; preds = %scalar.ph204
  br i1 %lcmp.mod245.not, label %.lr.ph95.us.i.i.preheader, label %scalar.ph204.epil.preheader

scalar.ph204.epil.preheader:                      ; preds = %.lr.ph95.us.i.i.preheader.loopexit.unr-lcssa, %scalar.ph204.preheader
  %indvars.iv143.i.i.epil.init = phi i64 [ 0, %scalar.ph204.preheader ], [ %indvars.iv.next144.i.i.3, %.lr.ph95.us.i.i.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod246)
  br label %scalar.ph204.epil

scalar.ph204.epil:                                ; preds = %scalar.ph204.epil, %scalar.ph204.epil.preheader
  %indvars.iv143.i.i.epil = phi i64 [ %indvars.iv.next144.i.i.epil, %scalar.ph204.epil ], [ %indvars.iv143.i.i.epil.init, %scalar.ph204.epil.preheader ] ; 3 uses
  %epil.iter244 = phi i64 [ %epil.iter244.next, %scalar.ph204.epil ], [ 0, %scalar.ph204.epil.preheader ]
  %gep171.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep170.i.i, i64 %indvars.iv143.i.i.epil
  %i.ej = load i64, ptr %gep171.i.i.epil, align 8, !tbaa !18
  %gep173.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep172.i.i, i64 %indvars.iv143.i.i.epil
  store i64 %i.ej, ptr %gep173.i.i.epil, align 8, !tbaa !18
  %indvars.iv.next144.i.i.epil = add nuw nsw i64 %indvars.iv143.i.i.epil, 1
  %epil.iter244.next = add i64 %epil.iter244, 1   ; 2 uses
  %epil.iter244.cmp.not = icmp eq i64 %epil.iter244.next, %xtraiter243
  br i1 %epil.iter244.cmp.not, label %.lr.ph95.us.i.i.preheader, label %scalar.ph204.epil, !llvm.loop !329

.lr.ph95.us.i.i.preheader:                        ; preds = %vector.body208, %.lr.ph95.us.i.i.preheader.loopexit.unr-lcssa, %scalar.ph204.epil
  br i1 %or.cond231, label %.lr.ph95.us.i.i.preheader233, label %vector.body194

.lr.ph95.us.i.i.preheader233:                     ; preds = %.lr.ph95.us.i.i.preheader
  br i1 %7, label %.lr.ph95.us.i.i.epil.preheader, label %.lr.ph95.us.i.i

vector.body194:                                   ; preds = %.lr.ph95.us.i.i.preheader, %vector.body194
  %index195 = phi i64 [ %index.next198, %vector.body194 ], [ 0, %.lr.ph95.us.i.i.preheader ] ; 2 uses
  %i.ek = add nsw i64 %index195, %i.dm            ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %.07797.us.i.i, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load196 = load <2 x i64>, ptr %i.el, align 8, !tbaa !18
  %wide.load197 = load <2 x i64>, ptr %i.em, align 8, !tbaa !18
  %i.en = getelementptr inbounds [8 x i8], ptr %.098.us.i.i, i64 %i.ek ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x i64> %wide.load196, ptr %i.en, align 8, !tbaa !18
  store <2 x i64> %wide.load197, ptr %i.eo, align 8, !tbaa !18
  %index.next198 = add nuw i64 %index195, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.ep, label %._crit_edge.us.i.i, label %vector.body194, !llvm.loop !330

.lr.ph95.us.i.i:                                  ; preds = %.lr.ph95.us.i.i.preheader233, %.lr.ph95.us.i.i
  %indvars.iv150.i.i = phi i64 [ %indvars.iv.next151.i.i.3, %.lr.ph95.us.i.i ], [ 0, %.lr.ph95.us.i.i.preheader233 ] ; 5 uses
  %niter254 = phi i64 [ %niter254.next.3, %.lr.ph95.us.i.i ], [ 0, %.lr.ph95.us.i.i.preheader233 ]
  %i.eq = add nsw i64 %indvars.iv150.i.i, %i.dm   ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.07797.us.i.i, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !18
  %i.et = getelementptr inbounds [8 x i8], ptr %.098.us.i.i, i64 %i.eq
  store i64 %i.es, ptr %i.et, align 8, !tbaa !18
  %indvars.iv.next151.i.i = or disjoint i64 %indvars.iv150.i.i, 1
  %i.eu = add nsw i64 %indvars.iv.next151.i.i, %i.dm ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %.07797.us.i.i, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !18
  %i.ex = getelementptr inbounds [8 x i8], ptr %.098.us.i.i, i64 %i.eu
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !18
  %indvars.iv.next151.i.i.1 = or disjoint i64 %indvars.iv150.i.i, 2
  %i.ey = add nsw i64 %indvars.iv.next151.i.i.1, %i.dm ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %.07797.us.i.i, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !18
  %i.fb = getelementptr inbounds [8 x i8], ptr %.098.us.i.i, i64 %i.ey
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !18
  %indvars.iv.next151.i.i.2 = or disjoint i64 %indvars.iv150.i.i, 3
  %i.fc = add nsw i64 %indvars.iv.next151.i.i.2, %i.dm ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %.07797.us.i.i, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !18
  %i.ff = getelementptr inbounds [8 x i8], ptr %.098.us.i.i, i64 %i.fc
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !18
  %indvars.iv.next151.i.i.3 = add nuw nsw i64 %indvars.iv150.i.i, 4 ; 2 uses
  %niter254.next.3 = add i64 %niter254, 4         ; 2 uses
  %niter254.ncmp.3 = icmp eq i64 %niter254.next.3, %unroll_iter253
  br i1 %niter254.ncmp.3, label %._crit_edge.us.i.i.loopexit.unr-lcssa, label %.lr.ph95.us.i.i, !llvm.loop !331

._crit_edge.us.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph95.us.i.i
  br i1 %lcmp.mod251.not, label %._crit_edge.us.i.i, label %.lr.ph95.us.i.i.epil.preheader

.lr.ph95.us.i.i.epil.preheader:                   ; preds = %._crit_edge.us.i.i.loopexit.unr-lcssa, %.lr.ph95.us.i.i.preheader233
  %indvars.iv150.i.i.epil.init = phi i64 [ 0, %.lr.ph95.us.i.i.preheader233 ], [ %indvars.iv.next151.i.i.3, %._crit_edge.us.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod252)
  br label %.lr.ph95.us.i.i.epil

.lr.ph95.us.i.i.epil:                             ; preds = %.lr.ph95.us.i.i.epil, %.lr.ph95.us.i.i.epil.preheader
  %indvars.iv150.i.i.epil = phi i64 [ %indvars.iv.next151.i.i.epil, %.lr.ph95.us.i.i.epil ], [ %indvars.iv150.i.i.epil.init, %.lr.ph95.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter250 = phi i64 [ %epil.iter250.next, %.lr.ph95.us.i.i.epil ], [ 0, %.lr.ph95.us.i.i.epil.preheader ]
  %i.fg = add nsw i64 %indvars.iv150.i.i.epil, %i.dm ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %.07797.us.i.i, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !18
  %i.fj = getelementptr inbounds [8 x i8], ptr %.098.us.i.i, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !18
  %indvars.iv.next151.i.i.epil = add nuw nsw i64 %indvars.iv150.i.i.epil, 1
  %epil.iter250.next = add i64 %epil.iter250, 1   ; 2 uses
  %epil.iter250.cmp.not = icmp eq i64 %epil.iter250.next, %xtraiter249
  br i1 %epil.iter250.cmp.not, label %._crit_edge.us.i.i, label %.lr.ph95.us.i.i.epil, !llvm.loop !332

._crit_edge.us.i.i:                               ; preds = %vector.body194, %._crit_edge.us.i.i.loopexit.unr-lcssa, %.lr.ph95.us.i.i.epil
  %i.fk = getelementptr inbounds [8 x i8], ptr %.07797.us.i.i, i64 %i.di
  %i.fl = getelementptr inbounds [8 x i8], ptr %.098.us.i.i, i64 %i.di
  %i.fm = add nsw i32 %.07996.us.i.i, %i.dh       ; 2 uses
  %i.fn = icmp slt i32 %i.fm, %i.at
  br i1 %i.fn, label %.lr.ph.us.preheader.i.i, label %If_CluSwapAdjacent.exit.i, !llvm.loop !143

.preheader85.us.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph91.us.i.i
  br i1 %lcmp.mod.not, label %.preheader85.us.i.i, label %.lr.ph91.us.i.i.epil.preheader

.lr.ph91.us.i.i.epil.preheader:                   ; preds = %.preheader85.us.i.i.loopexit.unr-lcssa, %.lr.ph91.us.i.i.preheader
  %indvars.iv136.i.i.epil.init = phi i64 [ 0, %.lr.ph91.us.i.i.preheader ], [ %indvars.iv.next137.i.i.3, %.preheader85.us.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod242)
  br label %.lr.ph91.us.i.i.epil

.lr.ph91.us.i.i.epil:                             ; preds = %.lr.ph91.us.i.i.epil, %.lr.ph91.us.i.i.epil.preheader
  %indvars.iv136.i.i.epil = phi i64 [ %indvars.iv.next137.i.i.epil, %.lr.ph91.us.i.i.epil ], [ %indvars.iv136.i.i.epil.init, %.lr.ph91.us.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph91.us.i.i.epil ], [ 0, %.lr.ph91.us.i.i.epil.preheader ]
  %gep.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv136.i.i.epil
  %i.fo = load i64, ptr %gep.i.i.epil, align 8, !tbaa !18
  %gep169.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep168.i.i, i64 %indvars.iv136.i.i.epil
  store i64 %i.fo, ptr %gep169.i.i.epil, align 8, !tbaa !18
  %indvars.iv.next137.i.i.epil = add nuw nsw i64 %indvars.iv136.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader85.us.i.i, label %.lr.ph91.us.i.i.epil, !llvm.loop !333

.preheader85.us.i.i:                              ; preds = %vector.body222, %.preheader85.us.i.i.loopexit.unr-lcssa, %.lr.ph91.us.i.i.epil
  %invariant.gep170.i.i = getelementptr [8 x i8], ptr %.07797.us.i.i, i64 %4 ; 6 uses
  %invariant.gep172.i.i = getelementptr [8 x i8], ptr %.098.us.i.i, i64 %i.dl ; 6 uses
  br i1 %or.cond232.a, label %scalar.ph204.preheader, label %vector.body208

scalar.ph204.preheader:                           ; preds = %.preheader85.us.i.i
  br i1 %6, label %scalar.ph204.epil.preheader, label %scalar.ph204

vector.body208:                                   ; preds = %.preheader85.us.i.i, %vector.body208
  %index209 = phi i64 [ %index.next212, %vector.body208 ], [ 0, %.preheader85.us.i.i ] ; 3 uses
  %i.fp = getelementptr [8 x i8], ptr %invariant.gep170.i.i, i64 %index209 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  %wide.load210 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !18
  %wide.load211 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !18
  %i.fr = getelementptr [8 x i8], ptr %invariant.gep172.i.i, i64 %index209 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store <2 x i64> %wide.load210, ptr %i.fr, align 8, !tbaa !18
  store <2 x i64> %wide.load211, ptr %i.fs, align 8, !tbaa !18
  %index.next212 = add nuw i64 %index209, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.ft, label %.lr.ph95.us.i.i.preheader, label %vector.body208, !llvm.loop !334

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv155.i.i = phi i64 [ %indvars.iv.next156.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %niter260 = phi i64 [ %niter260.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv155.i.i
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv155.i.i
  %i.fw = load <2 x i64>, ptr %i.fu, align 8, !tbaa !18 ; 3 uses
  %i.fx = and <2 x i64> %i.fw, <i64 4294967295, i64 -4294967296>
  %i.fy = shl <2 x i64> %i.fw, splat (i64 32)
  %i.fz = lshr <2 x i64> %i.fw, splat (i64 32)
  %i.ga = shufflevector <2 x i64> %i.fy, <2 x i64> %i.fz, <2 x i32> <i32 1, i32 2>
  %i.gb = or disjoint <2 x i64> %i.ga, %i.fx
  store <2 x i64> %i.gb, ptr %i.fv, align 8, !tbaa !18
  %indvars.iv.next156.i.i = or disjoint i64 %indvars.iv155.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv.next156.i.i
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv.next156.i.i
  %i.ge = load <2 x i64>, ptr %i.gc, align 8, !tbaa !18 ; 3 uses
  %i.gf = and <2 x i64> %i.ge, <i64 4294967295, i64 -4294967296>
  %i.gg = shl <2 x i64> %i.ge, splat (i64 32)
  %i.gh = lshr <2 x i64> %i.ge, splat (i64 32)
  %i.gi = shufflevector <2 x i64> %i.gg, <2 x i64> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.gj = or disjoint <2 x i64> %i.gi, %i.gf
  store <2 x i64> %i.gj, ptr %i.gd, align 8, !tbaa !18
  %indvars.iv.next156.i.i.1 = add nuw nsw i64 %indvars.iv155.i.i, 4 ; 2 uses
  %niter260.next.1 = add nuw nsw i64 %niter260, 2 ; 2 uses
  %niter260.ncmp.1.not = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1.not, label %If_CluSwapAdjacent.exit.i.loopexit238.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !144

If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa:     ; preds = %scalar.ph
  br i1 %lcmp.mod263.not, label %If_CluSwapAdjacent.exit.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv158.i.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next159.i.i.1, %If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod264)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv158.i.i.epil.init
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !18 ; 3 uses
  %i.gm = and i64 %i.gl, %i.bj
  %i.gn = and i64 %i.gl, %i.bl
  %i.go = shl i64 %i.gn, %i.bm
  %i.gp = or i64 %i.go, %i.gm
  %i.gq = and i64 %i.gl, %i.bo
  %i.gr = lshr i64 %i.gq, %i.bm
  %i.gs = or i64 %i.gp, %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv158.i.i.epil.init
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !18
  br label %If_CluSwapAdjacent.exit.i

If_CluSwapAdjacent.exit.i.loopexit238.unr-lcssa:  ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod257.not.not, label %.lr.ph.i.i.epil.preheader, label %If_CluSwapAdjacent.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %If_CluSwapAdjacent.exit.i.loopexit238.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv155.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next156.i.i.1, %If_CluSwapAdjacent.exit.i.loopexit238.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv155.i.i.epil.init
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv155.i.i.epil.init
  %i.gw = load <2 x i64>, ptr %i.gu, align 8, !tbaa !18 ; 3 uses
  %i.gx = and <2 x i64> %i.gw, <i64 4294967295, i64 -4294967296>
  %i.gy = shl <2 x i64> %i.gw, splat (i64 32)
  %i.gz = lshr <2 x i64> %i.gw, splat (i64 32)
  %i.ha = shufflevector <2 x i64> %i.gy, <2 x i64> %i.gz, <2 x i32> <i32 1, i32 2>
  %i.hb = or disjoint <2 x i64> %i.ha, %i.gx
  store <2 x i64> %i.hb, ptr %i.gv, align 8, !tbaa !18
  br label %If_CluSwapAdjacent.exit.i

If_CluSwapAdjacent.exit.i:                        ; preds = %._crit_edge.us.i.i, %.lr.ph.i.i.epil.preheader, %If_CluSwapAdjacent.exit.i.loopexit238.unr-lcssa, %vector.body, %scalar.ph.epil.preheader, %If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa, %.preheader87.lr.ph.i.i, %bb.n, %.preheader.i.i, %bb.l
  %.not35.not.i = icmp sgt i64 %indvars.iv.next69.i, %i.be
  br i1 %.not35.not.i, label %.lr.ph.i38, label %._crit_edge.loopexit.i, !llvm.loop !335

._crit_edge.loopexit.i:                           ; preds = %If_CluSwapAdjacent.exit.i
  %i.hc = add i32 %.056.i, %indvars71.i
  %i.hd = sub i32 %i.hc, %.02255.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.130.lcssa.i = phi ptr [ %.02951.i, %.preheader.i ], [ %.12746.i, %._crit_edge.loopexit.i ]
  %.127.lcssa.i = phi ptr [ %.02652.i, %.preheader.i ], [ %.13045.i, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.056.i, %.preheader.i ], [ %i.hd, %._crit_edge.loopexit.i ]
  %i.he = add nsw i32 %.02255.i, 1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %bb.k
  %.231.i = phi ptr [ %.130.lcssa.i, %._crit_edge.i ], [ %.02951.i, %bb.k ] ; 2 uses
  %.228.i = phi ptr [ %.127.lcssa.i, %._crit_edge.i ], [ %.02652.i, %bb.k ] ; 2 uses
  %.123.i = phi i32 [ %i.he, %._crit_edge.i ], [ %.02255.i, %bb.k ]
  %.2.i35 = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.056.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %wide.trip.count.i33
  br i1 %exitcond.not.i37, label %._crit_edge59.i, label %bb.k, !llvm.loop !336

._crit_edge59.i:                                  ; preds = %bb.o
  %i.hf = and i32 %.2.i35, 1
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %If_CluTruthShrink.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge59.i
  %i.hh = icmp slt i32 %2, 7
  %i.hi = select i1 %i.hh, i32 1, i32 %i.as       ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.preheader.i36.i, label %If_CluTruthShrink.exit

.lr.ph.preheader.i36.i:                           ; preds = %bb.p
  %wide.trip.count.i37.i = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %wide.trip.count.i37.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.231.i, ptr noundef nonnull align 8 dereferenceable(1) %.228.i, i64 %i.hk, i1 false), !tbaa !18
  br label %If_CluTruthShrink.exit

If_CluTruthShrink.exit:                           ; preds = %bb.j, %._crit_edge59.i, %bb.p, %.lr.ph.preheader.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %If_CluTruthShrink.exit
  %.025 = phi i32 [ 1, %If_CluTruthShrink.exit ], [ 0, %bb.i ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define void @If_CluCheck(ptr dead_on_unwind noalias nofree writable sret(%struct.If_Grp_t_) align 1 captures(none) initializes((0, 18)) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef captures(address_is_null) %11, i32 noundef %12) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x [256 x i64]], align 16       ; 8 uses
  %13 = alloca %struct.If_Grp_t_, align 1         ; 17 uses
  %i.b = alloca [1024 x i64], align 16            ; 6 uses
  %i.c = alloca [1024 x i64], align 16            ; 24 uses
  %i.d = alloca [18 x i32], align 16              ; 12 uses
  %i.e = alloca [18 x i32], align 16              ; 15 uses
  %i.f = alloca [18 x i32], align 16              ; 6 uses
  %i.g = alloca [18 x i32], align 16              ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %13, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.h = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = load i32, ptr %i.j, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ %3, %bb.a ]   ; 5 uses
  %.not = icmp eq ptr %8, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %8, align 1, !tbaa !187
  store i64 0, ptr %9, align 8, !tbaa !18
  store i64 0, ptr %10, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = icmp slt i32 %i.l, 7
  %i.n = add nsw i32 %i.l, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o          ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.r, i1 false), !tbaa !18
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %bb.e
  %i.s = icmp slt i32 %3, 7
  %i.t = add nsw i32 %3, -6
  %i.u = shl nuw i32 1, %i.t
  %.fr.i = freeze i32 %i.u                        ; 2 uses
  %i.v = select i1 %i.s, i32 1, i32 %.fr.i        ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i145, label %If_CluCopy.exit151

.lr.ph.preheader.i145:                            ; preds = %If_CluCopy.exit
  %wide.trip.count.i146 = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %wide.trip.count.i146, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 16 %i.b, i64 %i.x, i1 false), !tbaa !18
  br label %If_CluCopy.exit151

If_CluCopy.exit151:                               ; preds = %.lr.ph.preheader.i145, %If_CluCopy.exit
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph.preheader, label %If_CluSupport.exit.thread

end_hunk_3
