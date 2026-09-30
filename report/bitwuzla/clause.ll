Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/clause?download=true
inline.NumInlined: 431
inline.NumDeleted: 236
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal13unmark_clauseEv:bb.a
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal12mark_removedEPNS_6ClauseEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal12mark_removedEi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal12mark_removedEi.exit
  %.013 = phi ptr [ %i.a, %.lr.ph ], [ %i.ae, %_ZN7CaDiCaL8Internal12mark_removedEi.exit ] ; 2 uses
  %i.i = load i32, ptr %.013, align 4, !tbaa !9   ; 3 uses
  %.not11 = icmp eq i32 %i.i, %2
  br i1 %.not11, label %_ZN7CaDiCaL8Internal12mark_removedEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k ; 3 uses
  %i.n = load i32, ptr %i.m, align 1              ; 2 uses
  %i.o = and i32 %i.n, 256
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN7CaDiCaL8Internal9mark_elimEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !161
  %i.q = add nsw i64 %i.p, 1
  store i64 %i.q, ptr %i.g, align 8, !tbaa !161
  %i.r = load i32, ptr %i.m, align 1
  %i.s = or i32 %i.r, 256
  store i32 %i.s, ptr %i.m, align 1
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.k
  %.pre3.i = load i32, ptr %.phi.trans.insert.i, align 1
  br label %_ZN7CaDiCaL8Internal9mark_elimEi.exit.i

_ZN7CaDiCaL8Internal9mark_elimEi.exit.i:          ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %i.n, %bb.c ], [ %.pre3.i, %bb.d ]
  %i.u = phi ptr [ %i.l, %bb.c ], [ %.pre.i, %bb.d ]
  %.inv.i = icmp slt i32 %i.i, 1
  %i.v = select i1 %.inv.i, i32 1, i32 2          ; 2 uses
  %i.w = lshr i32 %i.t, 13
  %i.x = and i32 %i.w, %i.v
  %.not.i2.i = icmp eq i32 %i.x, 0
  br i1 %.not.i2.i, label %bb.e, label %_ZN7CaDiCaL8Internal12mark_removedEi.exit

bb.e:                                             ; preds = %_ZN7CaDiCaL8Internal9mark_elimEi.exit.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.k ; 2 uses
  %i.z = load i64, ptr %i.h, align 8, !tbaa !162
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.h, align 8, !tbaa !162
  %i.ab = load i32, ptr %i.y, align 1
  %i.ac = shl nuw nsw i32 %i.v, 13
  %i.ad = or i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.y, align 1
  br label %_ZN7CaDiCaL8Internal12mark_removedEi.exit

_ZN7CaDiCaL8Internal12mark_removedEi.exit:        ; preds = %bb.e, %_ZN7CaDiCaL8Internal9mark_elimEi.exit.i, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.013, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal10mark_addedEPNS_6ClauseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4200 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal10mark_addedEiib.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal10mark_addedEiib.exit
  %.013 = phi ptr [ %i.a, %.lr.ph ], [ %i.as, %_ZN7CaDiCaL8Internal10mark_addedEiib.exit ] ; 2 uses
  %i.k = load i32, ptr %.013, align 4, !tbaa !9   ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !9
  %i.m = load i32, ptr %i.f, align 8
  %i.n = and i32 %i.m, 2048
  %.not11 = icmp eq i32 %i.n, 0
  %i.o = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p ; 3 uses
  %i.s = load i32, ptr %i.r, align 1
  %i.t = and i32 %i.s, 512
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.h, align 8, !tbaa !163
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr %i.h, align 8, !tbaa !163
  %i.w = load i32, ptr %i.r, align 1
  %i.x = or i32 %i.w, 512
  store i32 %i.x, ptr %i.r, align 1
  br label %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i

_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i:      ; preds = %bb.c, %bb.b
  %i.y = icmp eq i32 %i.l, 3
  br i1 %i.y, label %bb.d, label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i

bb.d:                                             ; preds = %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.p ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = and i32 %i.ab, 1024
  %.not.i5.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i5.i, label %bb.e, label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !164
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !164
  %i.af = load i32, ptr %i.aa, align 1
  %i.ag = or i32 %i.af, 1024
  store i32 %i.ag, ptr %i.aa, align 1
  br label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i

_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i:      ; preds = %bb.e, %bb.d, %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i
  br i1 %.not11, label %bb.f, label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit

bb.f:                                             ; preds = %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.p ; 3 uses
  %.lobit.i.i.i = lshr i32 %i.k, 31
  %i.aj = add nuw nsw i32 %.lobit.i.i.i, 1        ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 1
  %i.al = lshr i32 %i.ak, 13
  %i.am = and i32 %i.al, %i.aj
  %.not.i6.i = icmp eq i32 %i.am, 0
  br i1 %.not.i6.i, label %bb.g, label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.j, align 8, !tbaa !162
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.j, align 8, !tbaa !162
  %i.ap = load i32, ptr %i.ai, align 1
  %i.aq = shl nuw nsw i32 %i.aj, 13
  %i.ar = or i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.ai, align 1
  br label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit

_ZN7CaDiCaL8Internal10mark_addedEiib.exit:        ; preds = %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i, %bb.f, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.013, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7CaDiCaL8Internal10new_clauseEbi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 4 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.i) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3636
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp sgt i32 %spec.select, %i.k
  %3 = select i1 %1, i32 2048, i32 0
  %4 = select i1 %1, i1 %.not, i1 false
  %.021 = select i1 %4, i32 0, i32 256
  %sext42 = shl i64 %i.g, 30                      ; 2 uses
  %i.l = ashr exact i64 %sext42, 30
  %i.m = and i64 %i.l, -4
  %i.n = add nsw i64 %i.m, 24                     ; 2 uses
  %i.o = and i32 %i.i, 1
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.p = or i64 %i.n, 7
  %i.q = add nsw i64 %i.p, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.q
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #18 ; 12 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !167
  %i.v = add i64 %i.u, 1                          ; 2 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !167
  store i64 %i.v, ptr %i.r, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %5 = or disjoint i32 %3, %.021                  ; 2 uses
  store i32 %5, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  store i32 %spec.select, ptr %i.x, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store i32 %i.i, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 2, ptr %i.z, align 4, !tbaa !9
  %i.aa = icmp sgt i32 %i.i, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !166 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 6 uses
  %wide.trip.count = and i64 %i.h, 2147483647     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %i.ae = sub i64 %i.s, %i.ad
  %i.af = add i64 %i.ae, 23
  %diff.check = icmp ult i64 %i.af, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !9
  %wide.load57 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load, ptr %i.ai, align 4, !tbaa !9
  store <4 x i32> %wide.load57, ptr %i.aj, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.prol
  store i32 %i.am, ptr %i.an, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !224

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ao = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4208 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !169
  %i.as = add nsw i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !169
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4232 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !229
  %i.av = add nsw i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !229
  br i1 %1, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !225

bb.b:                                             ; preds = %._crit_edge
  %i.bi = ashr exact i64 %sext42, 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !170
  %i.bl = add nsw i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sink56 = phi i64 [ 4224, %bb.b ], [ 4216, %._crit_edge ]
  %.sink53 = phi i64 [ 4248, %bb.b ], [ 4240, %._crit_edge ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink56 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !171
  %i.bo = add nsw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !171
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink53 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !171
  %i.br = add nsw i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !171
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !230 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !231
  %.not.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.bu, align 8, !tbaa !172
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !230
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !232 ; 4 uses
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.f, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc unwind label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #18
          to label %.noexc24 unwind label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cb ; 2 uses
  store ptr %i.r, ptr %i.ck, align 8, !tbaa !172
  %i.cl = icmp sgt i64 %i.cb, 0
  br i1 %i.cl, label %bb.g, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %.noexc24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %i.by, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %.noexc24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.not.i17.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.by) #20
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.cj, ptr %i.bs, align 8, !tbaa !232
  store ptr %i.cm, ptr %i.bt, align 8, !tbaa !230
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.cn, ptr %i.bv, align 8, !tbaa !231
  %.pre = load i32, ptr %i.w, align 8
  %i.co = and i32 %.pre, 2304
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.cp = phi i32 [ %i.co, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %5, %bb.d ]
  %or.cond.i = icmp eq i32 %i.cp, 2048
  br i1 %or.cond.i, label %bb.i, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.pr = load i32, ptr %i.y, align 8, !tbaa !9
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %i.cq = load i32, ptr %i.x, align 4, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2932
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !173
  %i.ct = icmp sgt i32 %i.cq, %i.cs
  br i1 %i.ct, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit: ; preds = %bb.i
  %i.cu = load i32, ptr %i.y, align 8, !tbaa !9   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !174
  %.not43 = icmp sgt i32 %i.cu, %i.cw
  br i1 %.not43, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %bb.j

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit
  %i.cx = phi i32 [ %.pr, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread ], [ %i.cu, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.cz = sext i32 %i.cx to i64
  %.idx.i = shl nsw i64 %i.cz, 2
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.cx, 0
  br i1 %.not12.i, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4200 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i, %.lr.ph.i
  %.013.i = phi ptr [ %i.cy, %.lr.ph.i ], [ %i.en, %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i ] ; 2 uses
  %i.df = load i32, ptr %.013.i, align 4, !tbaa !9 ; 2 uses
  %i.dg = load i32, ptr %i.y, align 8, !tbaa !9
  %i.dh = load i32, ptr %i.w, align 8
  %i.di = and i32 %i.dh, 2048
  %.not11.i = icmp eq i32 %i.di, 0
  %i.dj = tail call noundef i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dk = zext nneg i32 %i.dj to i64              ; 3 uses
  %i.dl = load ptr, ptr %i.db, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 1
  %i.do = and i32 %i.dn, 512
  %.not.i.i.i25 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i25, label %bb.l, label %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dp = load i64, ptr %i.dc, align 8, !tbaa !163
  %i.dq = add nsw i64 %i.dp, 1
  store i64 %i.dq, ptr %i.dc, align 8, !tbaa !163
  %i.dr = load i32, ptr %i.dm, align 1
  %i.ds = or i32 %i.dr, 512
  store i32 %i.ds, ptr %i.dm, align 1
  br label %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i

_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i:    ; preds = %bb.l, %bb.k
  %i.dt = icmp eq i32 %i.dg, 3
  br i1 %i.dt, label %bb.m, label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i
  %i.du = load ptr, ptr %i.db, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dk ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 1
  %i.dx = and i32 %i.dw, 1024
  %.not.i5.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i5.i.i, label %bb.n, label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.dy = load i64, ptr %i.dd, align 8, !tbaa !164
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dd, align 8, !tbaa !164
  %i.ea = load i32, ptr %i.dv, align 1
  %i.eb = or i32 %i.ea, 1024
  store i32 %i.eb, ptr %i.dv, align 1
  br label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i

_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i:    ; preds = %bb.n, %bb.m, %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i
  br i1 %.not11.i, label %bb.o, label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i

bb.o:                                             ; preds = %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i
  %i.ec = load ptr, ptr %i.db, align 8, !tbaa !19
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.dk ; 3 uses
  %.lobit.i.i.i.i = lshr i32 %i.df, 31
  %i.ee = add nuw nsw i32 %.lobit.i.i.i.i, 1      ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 1
  %i.eg = lshr i32 %i.ef, 13
  %i.eh = and i32 %i.eg, %i.ee
  %.not.i6.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ei = load i64, ptr %i.de, align 8, !tbaa !162
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.de, align 8, !tbaa !162
  %i.ek = load i32, ptr %i.ed, align 1
  %i.el = shl nuw nsw i32 %i.ee, 13
  %i.em = or i32 %i.ek, %i.el
  store i32 %i.em, ptr %i.ed, align 1
  br label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i

_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i:      ; preds = %bb.p, %bb.o, %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %.not.i26 = icmp eq ptr %i.en, %i.da
  br i1 %.not.i26, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %bb.k

_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit:        ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %i.eo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #20
  resume { ptr, i32 } %i.eo

_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27:      ; preds = %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i, %bb.i, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit, %bb.j
  ret ptr %i.r
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7CaDiCaL8Internal14promote_clauseEPNS_6ClauseEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 320
  %or.cond = icmp eq i32 %i.c, 0
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %.not18 = icmp slt i32 %2, %i.e
  br i1 %.not18, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3636
  %i.g = load i32, ptr %i.f, align 4, !tbaa !175
  %.not19 = icmp sgt i32 %2, %i.g
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4616 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !176
  %i.j = add nsw i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !176
  %i.k = load i32, ptr %i.a, align 8
  %i.l = or i32 %i.k, 256
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.n = load i32, ptr %i.m, align 8, !tbaa !177  ; 2 uses
  %i.o = icmp sle i32 %i.e, %i.n
  %.not20 = icmp sgt i32 %2, %i.n
  %or.cond22 = or i1 %i.o, %.not20
  br i1 %or.cond22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !178
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !178
  %i.s = load i32, ptr %i.a, align 8
  %i.t = and i32 %i.s, -49153
  %i.u = or disjoint i32 %i.t, 32768
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.f
  %.sink = phi i32 [ %i.u, %bb.f ], [ %i.l, %bb.d ]
  store i32 %.sink, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !179
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !179
  store i32 %2, ptr %i.d, align 4, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7CaDiCaL8Internal13shrink_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3252
  %i.b = load i32, ptr %i.a, align 4, !tbaa !180
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

end_hunk_0
