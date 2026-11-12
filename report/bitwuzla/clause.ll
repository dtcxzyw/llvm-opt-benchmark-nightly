Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/clause?download=true
inline.NumInlined: 431
inline.NumDeleted: 236
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
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
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.i) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3636
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp sgt i32 %spec.select, %i.k
  %sext42 = shl i64 %i.g, 30                      ; 2 uses
  %i.l = ashr exact i64 %sext42, 30
  %i.m = and i64 %i.l, -4
  %i.n = add nsw i64 %i.m, 24                     ; 2 uses
  %i.o = and i32 %i.i, 1
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.p = or i64 %i.n, 7
  %i.q = add nsw i64 %i.p, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.q
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #18 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !167
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !167
  store i64 %i.u, ptr %i.r, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %3 = select i1 %.not, i32 2048, i32 2304
  %4 = select i1 %1, i32 %3, i32 256              ; 2 uses
  store i32 %4, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  store i32 %spec.select, ptr %i.w, align 4, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store i32 %i.i, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 2, ptr %i.y, align 4, !tbaa !9
  %i.z = icmp sgt i32 %i.i, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !166 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %wide.trip.count = and i64 %i.h, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.h, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !9
  %wide.load57 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load, ptr %i.ae, align 4, !tbaa !9
  store <4 x i32> %wide.load57, ptr %i.af, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4208 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !169
  %i.aj = add nsw i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !169
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4232 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !227
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !227
  br i1 %1, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !224

bb.b:                                             ; preds = %._crit_edge
  %i.aq = ashr exact i64 %sext42, 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !170
  %i.at = add nsw i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sink56 = phi i64 [ 4224, %bb.b ], [ 4216, %._crit_edge ]
  %.sink53 = phi i64 [ 4248, %bb.b ], [ 4240, %._crit_edge ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sink56 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !171
  %i.aw = add nsw i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !171
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.sink53 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171
  %i.az = add nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !171
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !228 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !229
  %.not.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.bc, align 8, !tbaa !172
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !228
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !230 ; 4 uses
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.f, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc unwind label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #18
          to label %.noexc24 unwind label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store ptr %i.r, ptr %i.bs, align 8, !tbaa !172
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.g, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %.noexc24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %.noexc24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bg) #20
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.br, ptr %i.ba, align 8, !tbaa !230
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !228
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bv, ptr %i.bd, align 8, !tbaa !229
  %.pre = load i32, ptr %i.v, align 8
  %i.bw = and i32 %.pre, 2304
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.bx = phi i32 [ %i.bw, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %4, %bb.d ]
  %or.cond.i = icmp eq i32 %i.bx, 2048
  br i1 %or.cond.i, label %bb.i, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.pr = load i32, ptr %i.x, align 8, !tbaa !9
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %i.by = load i32, ptr %i.w, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2932
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !173
  %i.cb = icmp sgt i32 %i.by, %i.ca
  br i1 %i.cb, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit: ; preds = %bb.i
  %i.cc = load i32, ptr %i.x, align 8, !tbaa !9   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !174
  %.not43 = icmp sgt i32 %i.cc, %i.ce
  br i1 %.not43, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %bb.j

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit
  %i.cf = phi i32 [ %.pr, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread ], [ %i.cc, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ch = sext i32 %i.cf to i64
  %.idx.i = shl nsw i64 %i.ch, 2
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.cf, 0
  br i1 %.not12.i, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4200 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i, %.lr.ph.i
  %.013.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.dv, %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i ] ; 2 uses
  %i.cn = load i32, ptr %.013.i, align 4, !tbaa !9 ; 2 uses
  %i.co = load i32, ptr %i.x, align 8, !tbaa !9
  %i.cp = load i32, ptr %i.v, align 8
  %i.cq = and i32 %i.cp, 2048
  %.not11.i = icmp eq i32 %i.cq, 0
  %i.cr = tail call noundef i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.cs = zext nneg i32 %i.cr to i64              ; 3 uses
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = and i32 %i.cv, 512
  %.not.i.i.i25 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i25, label %bb.l, label %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cx = load i64, ptr %i.ck, align 8, !tbaa !163
  %i.cy = add nsw i64 %i.cx, 1
  store i64 %i.cy, ptr %i.ck, align 8, !tbaa !163
  %i.cz = load i32, ptr %i.cu, align 1
  %i.da = or i32 %i.cz, 512
  store i32 %i.da, ptr %i.cu, align 1
  br label %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i

_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i:    ; preds = %bb.l, %bb.k
  %i.db = icmp eq i32 %i.co, 3
  br i1 %i.db, label %bb.m, label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i
  %i.dc = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cs ; 3 uses
  %i.de = load i32, ptr %i.dd, align 1
  %i.df = and i32 %i.de, 1024
  %.not.i5.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i5.i.i, label %bb.n, label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.dg = load i64, ptr %i.cl, align 8, !tbaa !164
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.cl, align 8, !tbaa !164
  %i.di = load i32, ptr %i.dd, align 1
  %i.dj = or i32 %i.di, 1024
  store i32 %i.dj, ptr %i.dd, align 1
  br label %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i

_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i:    ; preds = %bb.n, %bb.m, %_ZN7CaDiCaL8Internal12mark_subsumeEi.exit.i.i
  br i1 %.not11.i, label %bb.o, label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i

bb.o:                                             ; preds = %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i
  %i.dk = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cs ; 3 uses
  %.lobit.i.i.i.i = lshr i32 %i.cn, 31
  %i.dm = add nuw nsw i32 %.lobit.i.i.i.i, 1      ; 2 uses
  %i.dn = load i32, ptr %i.dl, align 1
  %i.do = lshr i32 %i.dn, 13
  %i.dp = and i32 %i.do, %i.dm
  %.not.i6.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i

bb.p:                                             ; preds = %bb.o
  %i.dq = load i64, ptr %i.cm, align 8, !tbaa !162
  %i.dr = add nsw i64 %i.dq, 1
  store i64 %i.dr, ptr %i.cm, align 8, !tbaa !162
  %i.ds = load i32, ptr %i.dl, align 1
  %i.dt = shl nuw nsw i32 %i.dm, 13
  %i.du = or i32 %i.ds, %i.dt
  store i32 %i.du, ptr %i.dl, align 1
  br label %_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i

_ZN7CaDiCaL8Internal10mark_addedEiib.exit.i:      ; preds = %bb.p, %bb.o, %_ZN7CaDiCaL8Internal12mark_ternaryEi.exit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %.not.i26 = icmp eq ptr %i.dv, %i.ci
  br i1 %.not.i26, label %_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit27, label %bb.k

_ZN7CaDiCaL16DeferDeleteArrayIcED2Ev.exit:        ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %i.dw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #20
  resume { ptr, i32 } %i.dw

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
