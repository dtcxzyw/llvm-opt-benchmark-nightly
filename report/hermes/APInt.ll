inline.NumInlined: 1495
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN4llvh5APInt13getBitsNeededENS_9StringRefEh:bb.a
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = or disjoint i32 %.019.i.i.i.i, %i.ap
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ar = add i32 %.019.i.i.i.i, 64
  %i.as = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.as, label %bb.k, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i, !llvm.loop !93

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i: ; preds = %bb.l, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.aq, %.thread.i.i.i.i ], [ %i.ak, %bb.l ]
  %i.at = and i32 %i.y, 63
  %.not.i.i.i.i = icmp eq i32 %i.at, 0
  %.neg.i.i.i.i = or i32 %i.y, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 %.neg.i.i.i.i
  %i.au = add i32 %.2.i.i.i.i, %.neg15.i.i.i.i
  br label %_ZNK4llvh5APInt8logBase2Ev.exit

_ZNK4llvh5APInt8logBase2Ev.exit:                  ; preds = %bb.j, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i
  %i.av = phi ptr [ %i.ae, %bb.j ], [ %i.aj, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.ad, %bb.j ], [ %i.au, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ]
  %i.aw = xor i32 %.0.i.i.i, -1
  %i.ax = add i32 %i.y, %i.aw                     ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -1
  %i.az = select i1 %i.b, i32 2, i32 1
  %i.ba = select i1 %i.ay, i32 0, i32 %i.ax
  %.0 = add i32 %i.az, %i.ba
  %i.bb = icmp ult i32 %i.y, 65
  %i.bc = icmp eq ptr %i.av, null
  %or.cond44 = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond44, label %_ZN4llvh5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvh5APInt8logBase2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.av) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh5APInt8logBase2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %.0, %_ZN4llvh5APIntD2Ev.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh10hash_valueERKNS_5APIntE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit, !prof !94

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #24
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !10 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not1.i.i.i, i64 -49064778989728563, i64 %i.g
  store i64 %i.h, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #24
  br label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit

_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.i = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !10
  %i.j = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.k = shl i64 %i.j, 3
  %i.l = and i64 %i.k, 34359738360
  %i.m = add nuw nsw i64 %i.l, 8
  %.sroa.0.4.extract.shift = lshr i64 %i.j, 32
  %i.n = xor i64 %i.i, %.sroa.0.4.extract.shift   ; 2 uses
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7070675565921424023       ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %i.n, %i.q
  %i.s = xor i64 %i.r, %i.p
  %i.t = mul i64 %i.s, -7070675565921424023       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -7070675565921424023
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.y = zext i32 %i.b to i64
  %i.z = add nuw nsw i64 %i.y, 63
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = tail call i64 @_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_(ptr noundef %i.x, ptr noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit
  %.sroa.0.0 = phi i64 [ %i.w, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit ], [ %i.ac, %bb.e ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt7isSplatEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4llvh5APInt4rotlEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = load i64, ptr %2, align 8                ; 2 uses
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.e to ptr
  br label %_ZNK4llvh5APInteqERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 3
  %.idx.i.i = and i64 %i.j, 1073741816
  %i.k = load ptr, ptr %0, align 8, !tbaa !9
  %i.l = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr %i.l, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZNK4llvh5APInteqERKS0_.exit

_ZNK4llvh5APInteqERKS0_.exit:                     ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i = phi i1 [ %i.f, %bb.b ], [ %.not9.i.i.i.i.i.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !7
  %i.p = icmp ult i32 %i.o, 65
  %i.q = icmp eq ptr %i.m, null
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh5APInteqERKS0_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotlEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 14 uses
  %i.c = urem i32 %2, %i.b                        ; 6 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !7
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.g, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741816                 ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  %i.m = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %i.k, i1 false)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.b, 65
  br i1 %i.n, label %_ZN4llvh5APIntD2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext i32 %i.b to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816                 ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !95 ; 17 uses
  %i.t = load ptr, ptr %1, align 8, !noalias !95  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.t, i64 %i.r, i1 false), !noalias !95
  %i.u = lshr i64 %i.p, 6                         ; 6 uses
  %i.v = trunc nuw nsw i64 %i.u to i32            ; 4 uses
  %i.w = lshr i32 %i.c, 6                         ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.w) ; 11 uses
  %i.x = and i32 %i.c, 63                         ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.z = icmp samesign ult i32 %i.w, %i.v
  br i1 %i.z, label %.lr.ph.i.i, label %.loopexit29

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.aa = zext nneg i32 %i.x to i64               ; 4 uses
  %i.ab = sub nuw nsw i32 64, %i.x
  %i.ac = zext nneg i32 %i.ab to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.u, -1    ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.ad = sub nsw i32 %indvars.i2.i, %.sroa.speculated.i.i ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ah = shl i64 %i.ag, %i.aa                    ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !10
  %i.aj = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.aj, label %.lr.ph.preheader.i, label %.loopexit29

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i
  %i.ak = xor i32 %.sroa.speculated.i.i, -1
  %i.al = sext i32 %i.ak to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.s, i64 %i.al ; 3 uses
  %i.am = add nsw i32 %i.v, -2
  %xtraiter = and i32 %i.ad, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.an = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.ao = lshr i64 %i.an, %i.ac
  %i.ap = or i64 %i.ao, %i.ah
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.u, -2  ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.aq = sub nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10
  %i.au = shl i64 %i.at, %i.aa                    ; 2 uses
  %i.av = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.av ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %i.ai, %.lr.ph.preheader.i ], [ %i.aw, %.lr.ph.i.prol ]
  %.unr33 = phi i64 [ %i.ah, %.lr.ph.preheader.i ], [ %i.au, %.lr.ph.i.prol ]
  %i.ax = icmp eq i32 %i.am, %.sroa.speculated.i.i
  br i1 %i.ax, label %.loopexit29, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ay
  %i.ba = sub nsw i32 %i.v, %.sroa.speculated.i.i
  %i.bb = shl nsw i32 %i.ba, 3
  %i.bc = zext i32 %i.bb to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.s, i64 %i.bc, i1 false)
  br label %.loopexit29

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.bd = phi ptr [ %i.by, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.be = phi i64 [ %i.bw, %.lr.ph.i ], [ %.unr33, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.bf = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.bg = lshr i64 %i.bf, %i.ac
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bd, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.bi = sub i32 %indvars.i, %.sroa.speculated.i.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = shl i64 %i.bl, %i.aa                    ; 2 uses
  %i.bn = and i64 %indvars.iv.next.i, 4294967295
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bn ; 2 uses
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.bp = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.bq = lshr i64 %i.bp, %i.ac
  %i.br = or i64 %i.bq, %i.bm
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.bs = sub i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = shl i64 %i.bv, %i.aa                    ; 2 uses
  %i.bx = and i64 %indvars.iv.next.i.1, 4294967295
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bx ; 2 uses
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !10
  %i.bz = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.bz, label %.lr.ph.i, label %.loopexit29

_ZN4llvh5APIntD2Ev.exit.thread:                   ; preds = %bb.e
  %i.ca = load i64, ptr %1, align 8, !noalias !95 ; 2 uses
  %i.cb = zext nneg i32 %i.c to i64
  %i.cc = shl i64 %i.ca, %i.cb
  %i.cd = sub nsw i32 0, %i.b
  %i.ce = and i32 %i.cd, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 -1, %i.cf
  %i.ch = and i64 %i.cc, %i.cg
  %i.ci = sub nsw i32 %i.b, %i.c
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 %i.ca, %i.cj
  %i.cl = or i64 %i.ck, %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.cm, align 8, !tbaa !7, !alias.scope !98
  store i64 %i.cl, ptr %0, align 8, !alias.scope !98
  br label %_ZN4llvh5APIntC2ERKS0_.exit

.loopexit29:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %.lr.ph.i.i, %.preheader.i.i
  %i.cn = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.co = zext nneg i32 %i.cn to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.co, i1 false)
  %i.cp = sub i32 0, %i.b
  %i.cq = and i32 %i.cp, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 -1, %i.cr
  %i.ct = add nuw nsw i64 %i.u, 4294967295
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !10
  %i.cx = and i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !10
  %i.cy = sub i32 %i.b, %i.c                      ; 2 uses
  %i.cz = zext i32 %i.b to i64
  %i.da = add nuw nsw i64 %i.cz, 63               ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = and i64 %i.db, 1073741816               ; 2 uses
  %i.dd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #22, !noalias !101 ; 20 uses
  %i.de = ptrtoint ptr %i.dd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr align 8 %i.t, i64 %i.dc, i1 false), !noalias !101
  %i.df = lshr i64 %i.da, 6                       ; 2 uses
  %i.dg = trunc nuw nsw i64 %i.df to i32          ; 3 uses
  %i.dh = lshr i32 %i.cy, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dh) ; 9 uses
  %i.di = and i32 %i.cy, 63                       ; 3 uses
  %i.dj = sub nsw i32 %i.dg, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.dk = icmp eq i32 %i.di, 0
  br i1 %i.dk, label %bb.h, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.loopexit29
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.dh, %i.dg
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.dl = zext nneg i32 %i.di to i64              ; 4 uses
  %i.dm = sub nuw nsw i32 64, %i.di
  %i.dn = zext nneg i32 %i.dm to i64              ; 3 uses
  %i.do = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !10, !noalias !101
  %i.dr = lshr i64 %i.dq, %i.dl                   ; 3 uses
  store i64 %i.dr, ptr %i.dd, align 8, !tbaa !10, !noalias !101
  %.not32.i1.i.i.i = icmp eq i32 %i.dj, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ds = zext i32 %i.dj to i64
  %i.dt = add nsw i64 %i.ds, -1                   ; 3 uses
  %xtraiter34 = and i64 %i.dt, 1
  %i.du = icmp eq i32 %i.dj, 2
  br i1 %i.du, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.dt, -2
  br label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.loopexit29
  %i.dv = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dv
  %i.dx = shl nsw i32 %i.dj, 3
  %i.dy = zext i32 %i.dx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.dw, i64 %i.dy, i1 false), !noalias !101
  br label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.dz = phi ptr [ %i.dd, %.lr.ph.i.i.i.preheader.new ], [ %i.fb, %.lr.ph.i.i.i ]
  %i.ea = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader.new ], [ %i.fa, %.lr.ph.i.i.i ]
  %i.eb = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.ew, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ec = add i32 %i.eb, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !10, !noalias !101
  %i.eg = shl i64 %i.ef, %i.dn
  %i.eh = or i64 %i.eg, %i.ea
  store i64 %i.eh, ptr %i.dz, align 8, !tbaa !10, !noalias !101
  %i.ei = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.ej = add i32 %.sroa.speculated.i.i.i.i, %i.ei ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !10, !noalias !101
  %i.en = lshr i64 %i.em, %i.dl                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !10, !noalias !101
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.ep = add i32 %i.ej, 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10, !noalias !101
  %i.et = shl i64 %i.es, %i.dn
  %i.eu = or i64 %i.et, %i.en
  store i64 %i.eu, ptr %i.eo, align 8, !tbaa !10, !noalias !101
  %i.ev = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.ew = add i32 %.sroa.speculated.i.i.i.i, %i.ev ; 3 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !10, !noalias !101
  %i.fa = lshr i64 %i.ez, %i.dl                   ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !10, !noalias !101
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i
  %lcmp.mod40.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod40.not, label %.loopexit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.dd, %.lr.ph.i.i.i.preheader ], [ %i.fb, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init37 = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.fa, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init39 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ew, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.fc = add i32 %.epil.init39, 1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10, !noalias !101
  %i.fg = shl i64 %i.ff, %i.dn
  %i.fh = or i64 %i.fg, %.epil.init37
  store i64 %i.fh, ptr %.epil.init, align 8, !tbaa !10, !noalias !101
  %i.fi = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.fj = add i32 %.sroa.speculated.i.i.i.i, %i.fi
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10, !noalias !101
  %i.fn = lshr i64 %i.fm, %i.dl
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !10, !noalias !101
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i, %.lr.ph.i.i.i.i, %bb.h
  %i.fp = zext i32 %i.dj to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fp
  %i.fr = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.fs = zext nneg i32 %i.fr to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fq, i8 0, i64 %i.fs, i1 false), !noalias !101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %n.vec = and i64 %i.u, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <2 x i64>, ptr %i.ft, align 8, !tbaa !10, !noalias !98
  %wide.load30 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !10, !noalias !98
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %wide.load31 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !10, !noalias !98
  %wide.load32 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !10, !noalias !98
  %i.fx = or <2 x i64> %wide.load31, %wide.load
  %i.fy = or <2 x i64> %wide.load32, %wide.load30
  store <2 x i64> %i.fx, ptr %i.fv, align 8, !tbaa !10, !noalias !98
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !10, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4.preheader

.lr.ph.i.i.i.i4.preheader:                        ; preds = %.loopexit, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.loopexit ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %.lr.ph.i.i.i.i4.preheader, %.lr.ph.i.i.i.i4
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i5, %.lr.ph.i.i.i.i4 ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !10, !noalias !98
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !10, !noalias !98
  %i.ge = or i64 %i.gd, %i.gb
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !10, !noalias !98
end_hunk_0
begin_hunk_1_@_ZN4llvh5APInt7sdivremERKS0_lRS0_Rl:bb.a
.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k, %middle.block96
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %bb.k ], [ %n.vec90, %middle.block96 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !10
  %i.dq = xor i64 %i.dp, -1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.di
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !587

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i: ; preds = %_ZN4llvh5APIntD2Ev.exit37
  %i.dr = load i64, ptr %2, align 8, !tbaa !9
  %i.ds = xor i64 %i.dr, -1
  %i.dt = sub nsw i32 0, %i.dd
  %i.du = and i32 %i.dt, 63
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = lshr i64 -1, %i.dv                      ; 2 uses
  %i.dx = and i64 %i.dw, %i.ds
  %i.dy = add i64 %i.dx, 1
  %i.dz = and i64 %i.dy, %i.dw
  store i64 %i.dz, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt6negateEv.exit

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block96
  %i.ea = sub i32 0, %i.dd
  %i.eb = and i32 %i.ea, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = lshr i64 -1, %i.ec                      ; 2 uses
  %i.ee = load ptr, ptr %2, align 8, !tbaa !9
  %i.ef = add nuw nsw i64 %i.di, 4294967295
  %i.eg = and i64 %i.ef, 4294967295               ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eg ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !10
  %i.ej = and i64 %i.ei, %i.ed
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !10
  %i.ek = load ptr, ptr %2, align 8, !tbaa !9     ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10
  %i.em = add i64 %i.el, 1                        ; 2 uses
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !10
  %.not.peel.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.peel.i.i.i.i, label %.lr.ph.i.i.i2.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i

.lr.ph.i.i.i2.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i2.i
  %indvars.iv.i.i.i3.i = phi i64 [ %indvars.iv.next.i.i.i4.i, %.lr.ph.i.i.i2.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i3.i ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = add i64 %i.eo, 1                        ; 2 uses
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !10
  %.not.i.i.i.i = icmp ne i64 %i.ep, 0
  %indvars.iv.next.i.i.i4.i = add nuw nsw i64 %indvars.iv.i.i.i3.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i4.i, %i.di
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i
  br i1 %or.cond.i.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i:  ; preds = %.lr.ph.i.i.i2.i, %.lr.ph.preheader.i.i.i.i
  %i.eq = load ptr, ptr %2, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eg ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = and i64 %i.es, %i.ed
  store i64 %i.et, ptr %i.er, align 8, !tbaa !10
  br label %_ZN4llvh5APInt6negateEv.exit

_ZN4llvh5APInt6negateEv.exit:                     ; preds = %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i, %_ZN4llvh5APIntD2Ev.exit18
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ev = sub i64 0, %i.eu
  store i64 %i.ev, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvh5APInt6negateEv.exit52

bb.l:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ew = sub nsw i64 0, %1
  call void @_ZN4llvh5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !7  ; 5 uses
  %i.ez = icmp ult i32 %i.ey, 65
  br i1 %i.ez, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i51, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fa = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.fb = zext i32 %i.ey to i64
  %i.fc = add nuw nsw i64 %i.fb, 63
  %i.fd = lshr i64 %i.fc, 6                       ; 5 uses
  %min.iters.check113 = icmp ult i32 %i.ey, 193
  br i1 %min.iters.check113, label %.lr.ph.i.i.i.i38.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %bb.n
  %n.vec116 = and i64 %i.fd, 134217724            ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body117 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index118 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load119 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !10
  %wide.load120 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !10
  %i.fg = xor <2 x i64> %wide.load119, splat (i64 -1)
  %i.fh = xor <2 x i64> %wide.load120, splat (i64 -1)
  store <2 x i64> %i.fg, ptr %i.fe, align 8, !tbaa !10
  store <2 x i64> %i.fh, ptr %i.ff, align 8, !tbaa !10
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.fi, label %middle.block122, label %vector.body117, !llvm.loop !588

middle.block122:                                  ; preds = %vector.body117
  %cmp.n123 = icmp eq i64 %i.fd, %n.vec116
  br i1 %cmp.n123, label %.lr.ph.preheader.i.i.i.i42, label %.lr.ph.i.i.i.i38.preheader

.lr.ph.i.i.i.i38.preheader:                       ; preds = %bb.n, %middle.block122
  %indvars.iv.i.i.i.i39.ph = phi i64 [ 0, %bb.n ], [ %n.vec116, %middle.block122 ]
  br label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %.lr.ph.i.i.i.i38.preheader, %.lr.ph.i.i.i.i38
  %indvars.iv.i.i.i.i39 = phi i64 [ %indvars.iv.next.i.i.i.i40, %.lr.ph.i.i.i.i38 ], [ %indvars.iv.i.i.i.i39.ph, %.lr.ph.i.i.i.i38.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i.i.i.i39 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !10
  %i.fl = xor i64 %i.fk, -1
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.i40 = add nuw nsw i64 %indvars.iv.i.i.i.i39, 1 ; 2 uses
  %exitcond.not.i.i.i.i41 = icmp eq i64 %indvars.iv.next.i.i.i.i40, %i.fd
  br i1 %exitcond.not.i.i.i.i41, label %.lr.ph.preheader.i.i.i.i42, label %.lr.ph.i.i.i.i38, !llvm.loop !589

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i51: ; preds = %bb.m
  %i.fm = load i64, ptr %2, align 8, !tbaa !9
  %i.fn = xor i64 %i.fm, -1
  %i.fo = sub nsw i32 0, %i.ey
  %i.fp = and i32 %i.fo, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = lshr i64 -1, %i.fq                      ; 2 uses
  %i.fs = and i64 %i.fr, %i.fn
  %i.ft = add i64 %i.fs, 1
  %i.fu = and i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt6negateEv.exit52

.lr.ph.preheader.i.i.i.i42:                       ; preds = %.lr.ph.i.i.i.i38, %middle.block122
  %i.fv = sub i32 0, %i.ey
  %i.fw = and i32 %i.fv, 63
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = lshr i64 -1, %i.fx                      ; 2 uses
  %i.fz = load ptr, ptr %2, align 8, !tbaa !9
  %i.ga = add nuw nsw i64 %i.fd, 4294967295
  %i.gb = and i64 %i.ga, 4294967295               ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gb ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !10
  %i.ge = and i64 %i.gd, %i.fy
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !10
  %i.gf = load ptr, ptr %2, align 8, !tbaa !9     ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !10
  %i.gh = add i64 %i.gg, 1                        ; 2 uses
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !10
  %.not.peel.i.i.i.i43 = icmp eq i64 %i.gh, 0
  br i1 %.not.peel.i.i.i.i43, label %.lr.ph.i.i.i2.i45, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i44

.lr.ph.i.i.i2.i45:                                ; preds = %.lr.ph.preheader.i.i.i.i42, %.lr.ph.i.i.i2.i45
  %indvars.iv.i.i.i3.i46 = phi i64 [ %indvars.iv.next.i.i.i4.i48, %.lr.ph.i.i.i2.i45 ], [ 1, %.lr.ph.preheader.i.i.i.i42 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i3.i46 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !10
  %i.gk = add i64 %i.gj, 1                        ; 2 uses
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !10
  %.not.i.i.i.i47 = icmp ne i64 %i.gk, 0
  %indvars.iv.next.i.i.i4.i48 = add nuw nsw i64 %indvars.iv.i.i.i3.i46, 1 ; 2 uses
  %exitcond.not.i.i.i5.i49 = icmp eq i64 %indvars.iv.next.i.i.i4.i48, %i.fd
  %or.cond.i.i50 = select i1 %.not.i.i.i.i47, i1 true, i1 %exitcond.not.i.i.i5.i49
  br i1 %or.cond.i.i50, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i44, label %.lr.ph.i.i.i2.i45, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i44: ; preds = %.lr.ph.i.i.i2.i45, %.lr.ph.preheader.i.i.i.i42
  %i.gl = load ptr, ptr %2, align 8, !tbaa !9
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gb ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !10
  %i.go = and i64 %i.gn, %i.fy
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !10
  br label %_ZN4llvh5APInt6negateEv.exit52

bb.o:                                             ; preds = %bb.l
  call void @_ZN4llvh5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN4llvh5APInt6negateEv.exit52

_ZN4llvh5APInt6negateEv.exit52:                   ; preds = %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i44, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i51, %bb.o, %_ZN4llvh5APInt6negateEv.exit
  %i.gp = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.gp, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7sadd_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 3 uses
  br i1 %i.c, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i:     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  %i.e = load i64, ptr %2, align 8, !noalias !590 ; 2 uses
  %i.f = add i64 %i.e, %i.d
  %i.g = sub nsw i32 0, %i.b
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 -1, %i.i
  %i.k = and i64 %i.f, %i.j
  %i.l = inttoptr i64 %i.d to ptr
  %i.m = inttoptr i64 %i.e to ptr
  br label %_ZN4llvh5APIntD2Ev.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.n = zext i32 %i.b to i64
  %i.o = add nuw nsw i64 %i.n, 63                 ; 3 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741816                 ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #22 ; 6 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.s, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.t = load ptr, ptr %2, align 8, !tbaa !9, !noalias !590 ; 4 uses
  %i.u = lshr i64 %i.o, 6                         ; 4 uses
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.u, 134217726
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %.022.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10, !noalias !590 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !10, !noalias !590
  %i.aa = add i64 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp uge i64 %i.aa, %i.x
  %i.ac = add i64 %i.aa, 1                        ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, %i.x
  %.sink.i.i.i = select i1 %.022.i.i.i, i64 %i.aa, i64 %i.ac
  %.1.in.i.i.i = select i1 %.022.i.i.i, i1 %i.ab, i1 %i.ad ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.w, align 8, !tbaa !10, !noalias !590
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10, !noalias !590 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10, !noalias !590
  %i.ai = add i64 %i.ah, %i.af                    ; 3 uses
  %i.aj = icmp uge i64 %i.ai, %i.af
  %i.ak = add i64 %i.ai, 1                        ; 2 uses
  %i.al = icmp ugt i64 %i.ak, %i.af
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.ai, i64 %i.ak
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.aj, i1 %i.al ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.ae, align 8, !tbaa !10, !noalias !590
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !25

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa:  ; preds = %.lr.ph.i.i.i
  %i.am = and i64 %i.o, 64
  %lcmp.mod.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ] ; 2 uses
  %.022.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10, !noalias !590
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.epil.init
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !10, !noalias !590
  %i.ar = add i64 %i.aq, %i.ao
  %not..022.i.i.i.epil.init = xor i1 %.022.i.i.i.epil.init, true
  %i.as = zext i1 %not..022.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.ar, %i.as
  store i64 %.sink.i.i.i.epil, ptr %i.an, align 8, !tbaa !10, !noalias !590
  br label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i:            ; preds = %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %i.at = ptrtoint ptr %i.r to i64
  %i.au = sub i32 0, %i.b
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 -1, %i.aw
  %i.ay = add nuw nsw i64 %i.u, 4294967295
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10, !noalias !590
  %i.bc = and i64 %i.bb, %i.ax
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !10, !noalias !590
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i
  %i.bd = phi ptr [ %i.m, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i ], [ %i.t, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i ]
  %i.be = phi ptr [ %i.l, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i ], [ %i.s, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i ]
  %.sroa.0.1 = phi i64 [ %i.k, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i ], [ %i.at, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bf, align 8, !tbaa !7, !alias.scope !590
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !590
  %i.bg = add i32 %i.b, -1                        ; 2 uses
  %i.bh = and i32 %i.bg, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi                    ; 2 uses
  %i.bk = lshr i32 %i.bg, 6
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  %.in.i.i.i.i = select i1 %i.c, ptr %1, ptr %i.bm
  %i.bn = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !9
  %i.bo = and i64 %i.bj, %i.bn
  %.not.i = icmp eq i64 %i.bo, 0                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !7  ; 2 uses
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = icmp ult i32 %i.bq, 65
  %i.bw = lshr i32 %i.br, 6
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bx
  %.in.i.i.i.i5 = select i1 %i.bv, ptr %2, ptr %i.by
  %i.bz = load i64, ptr %.in.i.i.i.i5, align 8, !tbaa !9
  %i.ca = and i64 %i.bu, %i.bz
  %.not.i6 = icmp eq i64 %i.ca, 0
  %i.cb = xor i1 %.not.i, %.not.i6
  br i1 %i.cb, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.cc = inttoptr i64 %.sroa.0.1 to ptr
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bl
  %.in.i.i.i.i7 = select i1 %i.c, ptr %0, ptr %i.cd
  %i.ce = load i64, ptr %.in.i.i.i.i7, align 8, !tbaa !9
  %i.cf = and i64 %i.ce, %i.bj
  %.not.i8 = icmp eq i64 %i.cf, 0
  %i.cg = xor i1 %.not.i, %.not.i8
  %i.ch = zext i1 %i.cg to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvh5APIntD2Ev.exit
  %i.ci = phi i8 [ 0, %_ZN4llvh5APIntD2Ev.exit ], [ %i.ch, %bb.b ]
  store i8 %i.ci, ptr %3, align 1, !tbaa !593
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7uadd_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = add nuw nsw i64 %i.d, 63                 ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.f, 1073741816                 ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #22 ; 7 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %i.i, i64 %i.g, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.j = load ptr, ptr %2, align 8, !tbaa !9, !noalias !594 ; 4 uses
  %i.k = lshr i64 %i.e, 6                         ; 5 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.k, 134217726
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %.022.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10, !noalias !594 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10, !noalias !594
  %i.q = add i64 %i.p, %i.n                       ; 3 uses
  %i.r = icmp uge i64 %i.q, %i.n
  %i.s = add i64 %i.q, 1                          ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.n
  %.sink.i.i.i = select i1 %.022.i.i.i, i64 %i.q, i64 %i.s
  %.1.in.i.i.i = select i1 %.022.i.i.i, i1 %i.r, i1 %i.t ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.m, align 8, !tbaa !10, !noalias !594
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !10, !noalias !594 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10, !noalias !594
  %i.y = add i64 %i.x, %i.v                       ; 3 uses
  %i.z = icmp uge i64 %i.y, %i.v
  %i.aa = add i64 %i.y, 1                         ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %i.v
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.y, i64 %i.aa
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.z, i1 %i.ab ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.u, align 8, !tbaa !10, !noalias !594
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !25

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %1, align 8, !tbaa !9
  %i.ad = load i64, ptr %2, align 8, !tbaa !9, !noalias !594 ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = sub nsw i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = and i64 %i.ae, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ak, align 8, !tbaa !7, !alias.scope !594
  store i64 %i.aj, ptr %0, align 8, !alias.scope !594
  %i.al = icmp ult i64 %i.aj, %i.ad
  br label %_ZNK4llvh5APInt3ultERKS0_.exit

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i
  %i.am = and i64 %i.e, 64
  %lcmp.mod.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.unr-lcssa ] ; 2 uses
  %.022.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10, !noalias !594
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.epil.init
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !10, !noalias !594
  %i.ar = add i64 %i.aq, %i.ao
  %not..022.i.i.i.epil.init = xor i1 %.022.i.i.i.epil.init, true
  %i.as = zext i1 %not..022.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.ar, %i.as
  store i64 %.sink.i.i.i.epil, ptr %i.an, align 8, !tbaa !10, !noalias !594
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %i.at = ptrtoint ptr %i.h to i64
  %i.au = sub i32 0, %i.b
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 -1, %i.aw
  %i.ay = add nuw nsw i64 %i.k, 4294967295
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10, !noalias !594
  %i.bc = and i64 %i.bb, %i.ax
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !10, !noalias !594
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bd, align 8, !tbaa !7, !alias.scope !594
  store i64 %i.at, ptr %0, align 8, !alias.scope !594
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i, label %_ZNK4llvh5APInt3ultERKS0_.exit, label %bb.e, !llvm.loop !84

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i.i.i520 = phi i64 [ %i.k, %bb.c ], [ %i.be, %bb.d ]
  %i.be = add nsw i64 %indvars.iv.i.i.i520, -1    ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.be
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.bg, %i.bi
  br i1 %.not13.i.i.i, label %bb.d, label %bb.f, !llvm.loop !84

bb.f:                                             ; preds = %bb.e
  %i.bj = icmp ule i64 %i.bg, %i.bi
  br label %_ZNK4llvh5APInt3ultERKS0_.exit

_ZNK4llvh5APInt3ultERKS0_.exit:                   ; preds = %bb.d, %bb.b, %bb.f
  %.0.i.i = phi i1 [ %i.al, %bb.b ], [ %i.bj, %bb.f ], [ false, %bb.d ]
  %i.bk = zext i1 %.0.i.i to i8
  store i8 %i.bk, ptr %3, align 1, !tbaa !593
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7ssub_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 3 uses
  br i1 %i.c, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  %i.e = load i64, ptr %2, align 8, !noalias !597 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sub nsw i32 0, %i.b
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 -1, %i.i
  %i.k = and i64 %i.f, %i.j
  %i.l = inttoptr i64 %i.d to ptr
  %i.m = inttoptr i64 %i.e to ptr
  br label %_ZN4llvh5APIntD2Ev.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.n = zext i32 %i.b to i64
  %i.o = add nuw nsw i64 %i.n, 63                 ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741816                 ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #22 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.s, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.t = load ptr, ptr %2, align 8, !tbaa !9, !noalias !597 ; 2 uses
  %i.u = lshr i64 %i.o, 6                         ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.d ] ; 3 uses
  %.022.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %i.ad, %bb.d ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10, !noalias !597 ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10, !noalias !597 ; 3 uses
  br i1 %.022.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %.neg.i.i.i = xor i64 %i.y, -1
  %i.z = add i64 %i.w, %.neg.i.i.i                ; 2 uses
  %i.aa = icmp uge i64 %i.z, %i.w
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = sub i64 %i.w, %i.y
  %i.ac = icmp ugt i64 %i.y, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i.i.i = phi i64 [ %i.ab, %bb.c ], [ %i.z, %bb.b ]
  %.1.in.i.i.i = phi i1 [ %i.ac, %bb.c ], [ %i.aa, %bb.b ]
  store i64 %.sink.i.i.i, ptr %i.v, align 8, !tbaa !10, !noalias !597
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.u
  %i.ad = xor i1 %.1.in.i.i.i, true
  br i1 %exitcond.not.i.i.i, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i:      ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.r to i64
  %i.af = sub i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = add nuw nsw i64 %i.u, 4294967295
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10, !noalias !597
  %i.an = and i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !10, !noalias !597
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i
  %i.ao = phi ptr [ %i.m, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i ], [ %i.t, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i ]
  %i.ap = phi ptr [ %i.l, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i ], [ %i.s, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i ]
  %.sroa.0.1 = phi i64 [ %i.k, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i ], [ %i.ae, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.aq, align 8, !tbaa !7, !alias.scope !597
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !597
  %i.ar = add i32 %i.b, -1                        ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw i64 1, %i.at                    ; 2 uses
  %i.av = lshr i32 %i.ar, 6
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aw
  %.in.i.i.i.i = select i1 %i.c, ptr %1, ptr %i.ax
  %i.ay = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !9
  %i.az = and i64 %i.au, %i.ay
  %.not.i = icmp eq i64 %i.az, 0                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !7  ; 2 uses
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  %i.bd = and i32 %i.bc, 63
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = icmp ult i32 %i.bb, 65
  %i.bh = lshr i32 %i.bc, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bi
  %.in.i.i.i.i5 = select i1 %i.bg, ptr %2, ptr %i.bj
  %i.bk = load i64, ptr %.in.i.i.i.i5, align 8, !tbaa !9
  %i.bl = and i64 %i.bf, %i.bk
  %.not.i6 = icmp eq i64 %i.bl, 0
  %i.bm = xor i1 %.not.i, %.not.i6
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.bn = inttoptr i64 %.sroa.0.1 to ptr
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.aw
  %.in.i.i.i.i7 = select i1 %i.c, ptr %0, ptr %i.bo
  %i.bp = load i64, ptr %.in.i.i.i.i7, align 8, !tbaa !9
  %i.bq = and i64 %i.bp, %i.au
  %.not.i8 = icmp eq i64 %i.bq, 0
  %i.br = xor i1 %.not.i, %.not.i8
  %i.bs = zext i1 %i.br to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh5APIntD2Ev.exit
  %i.bt = phi i8 [ 0, %_ZN4llvh5APIntD2Ev.exit ], [ %i.bs, %bb.e ]
  store i8 %i.bt, ptr %3, align 1, !tbaa !593
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7usub_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZN4llvh5APIntD2Ev.exit.thread, label %.lr.ph.preheader.i.i.i

_ZN4llvh5APIntD2Ev.exit.thread:                   ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !9, !noalias !600
  %i.f = sub i64 %i.d, %i.e
  %i.g = sub nsw i32 0, %i.b
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 -1, %i.i
  %i.k = and i64 %i.f, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.l, align 8, !tbaa !7, !alias.scope !600
  store i64 %i.k, ptr %0, align 8, !alias.scope !600
  %i.m = icmp ule i64 %i.k, %i.d
  br label %_ZNK4llvh5APInt3ugtERKS0_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.n = zext i32 %i.b to i64
  %i.o = add nuw nsw i64 %i.n, 63                 ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741816                 ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #22 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.s, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.t = load ptr, ptr %2, align 8, !tbaa !9, !noalias !600
  %i.u = lshr i64 %i.o, 6                         ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.d ] ; 3 uses
  %.022.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %i.ad, %bb.d ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10, !noalias !600 ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10, !noalias !600 ; 3 uses
  br i1 %.022.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %.neg.i.i.i = xor i64 %i.y, -1
  %i.z = add i64 %i.w, %.neg.i.i.i                ; 2 uses
  %i.aa = icmp uge i64 %i.z, %i.w
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = sub i64 %i.w, %i.y
  %i.ac = icmp ugt i64 %i.y, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i.i.i = phi i64 [ %i.ab, %bb.c ], [ %i.z, %bb.b ]
  %.1.in.i.i.i = phi i1 [ %i.ac, %bb.c ], [ %i.aa, %bb.b ]
  store i64 %.sink.i.i.i, ptr %i.v, align 8, !tbaa !10, !noalias !600
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.u
  %i.ad = xor i1 %.1.in.i.i.i, true
  br i1 %exitcond.not.i.i.i, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !26

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.r to i64
  %i.af = sub i32 0, %i.b
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = add nuw nsw i64 %i.u, 4294967295
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10, !noalias !600
  %i.an = and i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !10, !noalias !600
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ao, align 8, !tbaa !7, !alias.scope !600
  store i64 %i.ae, ptr %0, align 8, !alias.scope !600
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvh5APInt3ugtERKS0_.exit, label %bb.f, !llvm.loop !84

bb.f:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit, %bb.e
  %indvars.iv.i.i.i.i18 = phi i64 [ %i.u, %_ZN4llvh5APIntD2Ev.exit ], [ %i.ap, %bb.e ]
  %i.ap = add nsw i64 %indvars.iv.i.i.i.i18, -1   ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ap
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ar, %i.at
  br i1 %.not13.i.i.i.i, label %bb.e, label %bb.g, !llvm.loop !84

bb.g:                                             ; preds = %bb.f
  %i.au = icmp ule i64 %i.ar, %i.at
  br label %_ZNK4llvh5APInt3ugtERKS0_.exit

_ZNK4llvh5APInt3ugtERKS0_.exit:                   ; preds = %bb.e, %_ZN4llvh5APIntD2Ev.exit.thread, %bb.g
  %.0.i.i.i = phi i1 [ %i.m, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %i.au, %bb.g ], [ true, %bb.e ]
  %i.av = xor i1 %.0.i.i.i, true
  %i.aw = zext i1 %i.av to i8
  store i8 %i.aw, ptr %3, align 1, !tbaa !593
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7sdiv_ovERKS0_Rb(ptr dead_on_unwind noalias writable sret(%"class.llvh::APInt") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !9
  %i.e = add nsw i32 %i.b, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.g, label %_ZNK4llvh5APInt16isMinSignedValueEv.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = add i32 %i.b, -1                         ; 3 uses
  %i.j = and i32 %i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %i.n = lshr i32 %i.i, 6
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = and i64 %i.q, %i.l
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZNK4llvh5APInt16isMinSignedValueEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = zext i32 %i.b to i64
  %i.t = add nuw nsw i64 %i.s, 63
  %i.u = lshr i64 %i.t, 6                         ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = shl i32 %i.v, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %.01014.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = add i32 %.01014.i.i, 64
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.u
  br i1 %exitcond.not.i.i, label %_ZNK4llvh5APInt16isMinSignedValueEv.exit, label %bb.d, !llvm.loop !145

bb.f:                                             ; preds = %bb.d
  %i.ab = and i64 %indvars.iv.i.i, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 false)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = add i32 %.01014.i.i, %i.af
  br label %_ZNK4llvh5APInt16isMinSignedValueEv.exit

_ZNK4llvh5APInt16isMinSignedValueEv.exit:         ; preds = %bb.e, %bb.f
  %.1.i.i = phi i32 [ %i.ag, %bb.f ], [ %i.w, %bb.e ]
  %.sroa.speculated.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.b, i32 %.1.i.i)
  %i.ah = icmp eq i32 %.sroa.speculated.i.i, %i.i
  br i1 %i.ah, label %bb.g, label %_ZNK4llvh5APInt16isMinSignedValueEv.exit.thread

bb.g:                                             ; preds = %bb.b, %_ZNK4llvh5APInt16isMinSignedValueEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !7  ; 4 uses
  %i.ak = icmp ult i32 %i.aj, 65
  br i1 %i.ak, label %bb.h, label %.lr.ph.i.i4

bb.h:                                             ; preds = %bb.g
  %i.al = load i64, ptr %2, align 8, !tbaa !9
  %i.am = sub nuw nsw i32 64, %i.aj
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 -1, %i.an
  %i.ap = icmp eq i64 %i.al, %i.ao
  br label %_ZNK4llvh5APInt14isAllOnesValueEv.exit

.lr.ph.i.i4:                                      ; preds = %bb.g
  %i.aq = zext i32 %i.aj to i64
  %i.ar = add nuw nsw i64 %i.aq, 63
  %i.as = lshr i64 %i.ar, 6                       ; 2 uses
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.av = shl i32 %i.at, 6
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i4
  %indvars.iv.i.i5 = phi i64 [ 0, %.lr.ph.i.i4 ], [ %indvars.iv.next.i.i8, %bb.j ] ; 3 uses
  %.0811.i.i = phi i32 [ 0, %.lr.ph.i.i4 ], [ %i.az, %bb.j ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i5
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = add i32 %.0811.i.i, 64
  %indvars.iv.next.i.i8 = add nuw nsw i64 %indvars.iv.i.i5, 1 ; 2 uses
  %exitcond.not.i.i9 = icmp eq i64 %indvars.iv.next.i.i8, %i.as
  br i1 %exitcond.not.i.i9, label %_ZNK4llvh5APInt25countTrailingOnesSlowCaseEv.exit.i, label %bb.i, !llvm.loop !146

bb.k:                                             ; preds = %bb.i
  %i.ba = and i64 %indvars.iv.i.i5, 4294967295
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.bd = xor i64 %i.bc, -1
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bd, i1 false)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = add i32 %.0811.i.i, %i.bf
  br label %_ZNK4llvh5APInt25countTrailingOnesSlowCaseEv.exit.i

_ZNK4llvh5APInt25countTrailingOnesSlowCaseEv.exit.i: ; preds = %bb.j, %bb.k
  %.1.i.i6 = phi i32 [ %i.bg, %bb.k ], [ %i.av, %bb.j ]
  %i.bh = icmp eq i32 %.1.i.i6, %i.aj
  br label %_ZNK4llvh5APInt14isAllOnesValueEv.exit

_ZNK4llvh5APInt14isAllOnesValueEv.exit:           ; preds = %bb.h, %_ZNK4llvh5APInt25countTrailingOnesSlowCaseEv.exit.i
  %.0.i7 = phi i1 [ %i.ap, %bb.h ], [ %i.bh, %_ZNK4llvh5APInt25countTrailingOnesSlowCaseEv.exit.i ]
  %i.bi = zext i1 %.0.i7 to i8
  br label %_ZNK4llvh5APInt16isMinSignedValueEv.exit.thread

_ZNK4llvh5APInt16isMinSignedValueEv.exit.thread:  ; preds = %bb.c, %bb.b, %_ZNK4llvh5APInt14isAllOnesValueEv.exit, %_ZNK4llvh5APInt16isMinSignedValueEv.exit
  %i.bj = phi i8 [ 0, %_ZNK4llvh5APInt16isMinSignedValueEv.exit ], [ %i.bi, %_ZNK4llvh5APInt14isAllOnesValueEv.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  store i8 %i.bj, ptr %3, align 1, !tbaa !593
  tail call void @_ZNK4llvh5APInt4sdivERKS0_(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7smul_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !noalias !603 ; 9 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZNK4llvh5APIntmlERKS0_.exit.thread, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i

_ZNK4llvh5APIntmlERKS0_.exit.thread:              ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !noalias !603 ; 2 uses
  %i.e = load i64, ptr %2, align 8, !noalias !603 ; 2 uses
  %i.f = mul i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.g, align 8, !tbaa !7, !alias.scope !603
  %i.h = sub nsw i32 0, %i.b
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = and i64 %i.f, %i.k
  store i64 %i.l, ptr %0, align 8, !tbaa !9, !alias.scope !603
  %i.m = inttoptr i64 %i.e to ptr
  br label %_ZNK4llvh5APIntneEm.exit

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i:        ; preds = %bb.a
  %i.n = zext i32 %i.b to i64
  %i.o = add nuw nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 5 uses
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %i.r = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !603 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.t, align 8, !tbaa !7, !alias.scope !603
  store ptr %i.s, ptr %0, align 8, !tbaa !9, !alias.scope !603
  %i.u = load ptr, ptr %1, align 8, !tbaa !9, !noalias !603 ; 3 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !9, !noalias !603 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !10, !noalias !603
  %scevgep.i.i.i = getelementptr i8, ptr %i.s, i64 8
  %i.w = add nuw nsw i64 %i.r, 34359738360
  %i.x = and i64 %i.w, 34359738360
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.x, i1 false), !tbaa !10, !noalias !603
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !10, !noalias !603
  %i.ab = trunc i64 %indvars.iv.i.i to i32
  %i.ac = sub i32 %i.q, %i.ab
  %i.ad = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.y, ptr noundef readonly %i.u, i64 noundef %i.aa, i64 noundef 0, i32 noundef %i.q, i32 noundef %i.ac, i1 noundef zeroext true), !noalias !603 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.p
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i, !llvm.loop !27

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i
  %i.ae = sub i32 0, %i.b
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 -1, %i.ag
  %i.ai = add nuw nsw i64 %i.p, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10, !noalias !603
  %i.am = and i64 %i.al, %i.ah
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !10, !noalias !603
  %i.an = shl i32 %i.q, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.au, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = or disjoint i32 %.019.i.i.i.i.i, %i.as
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.au = add i32 %.019.i.i.i.i.i, 64
  %i.av = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.av, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.at, %.thread.i.i.i.i.i ], [ %i.an, %bb.c ]
  %i.aw = and i32 %i.b, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  %.neg.i.i.i.i.i = or i32 %i.b, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.ax = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.ay = sub i32 %i.b, %i.ax
  %i.az = icmp ult i32 %i.ay, 65
  br i1 %i.az, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i, label %_ZNK4llvh5APIntneEm.exit.thread

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %i.u, align 8, !tbaa !9
  br label %_ZNK4llvh5APIntneEm.exit

_ZNK4llvh5APIntneEm.exit:                         ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i, %_ZNK4llvh5APIntmlERKS0_.exit.thread
  %.pre.i.i1349 = phi ptr [ %i.v, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i ], [ %i.m, %_ZNK4llvh5APIntmlERKS0_.exit.thread ]
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i ], [ %i.d, %_ZNK4llvh5APIntmlERKS0_.exit.thread ]
  %.not = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not, label %bb.m, label %_ZNK4llvh5APIntneEm.exit.thread

_ZNK4llvh5APIntneEm.exit.thread:                  ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APIntneEm.exit
  %.pre.i.i13 = phi ptr [ %i.v, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ], [ %.pre.i.i1349, %_ZNK4llvh5APIntneEm.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !7  ; 5 uses
  %i.bc = icmp ult i32 %i.bb, 65
  %i.bd = ptrtoint ptr %.pre.i.i13 to i64
  br i1 %i.bc, label %_ZNK4llvh5APIntneEm.exit27, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %_ZNK4llvh5APIntneEm.exit.thread
  %i.be = zext i32 %i.bb to i64
  %i.bf = add nuw nsw i64 %i.be, 63
  %i.bg = lshr i64 %i.bf, 6                       ; 2 uses
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = shl i32 %i.bh, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i14
  %indvars.iv.i.i.i.i15 = phi i64 [ %indvars.iv.next.i.i.i.i17, %bb.e ], [ %i.bg, %.lr.ph.i.i.i.i.i14 ] ; 2 uses
  %.019.i.i.i.i.i16 = phi i32 [ %i.bp, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i14 ] ; 2 uses
  %indvars.iv.next.i.i.i.i17 = add nsw i64 %indvars.iv.i.i.i.i15, -1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i13, i64 %indvars.iv.next.i.i.i.i17
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.e, label %.thread.i.i.i.i.i18

.thread.i.i.i.i.i18:                              ; preds = %bb.d
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = or disjoint i32 %.019.i.i.i.i.i16, %i.bn
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19

bb.e:                                             ; preds = %bb.d
  %i.bp = add i32 %.019.i.i.i.i.i16, 64
  %i.bq = icmp samesign ugt i64 %indvars.iv.i.i.i.i15, 1
  br i1 %i.bq, label %bb.d, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19:      ; preds = %bb.e, %.thread.i.i.i.i.i18
  %.2.i.i.i.i.i20 = phi i32 [ %i.bo, %.thread.i.i.i.i.i18 ], [ %i.bi, %bb.e ]
  %i.br = and i32 %i.bb, 63
  %.not.i.i.i.i.i21 = icmp eq i32 %i.br, 0
  %.neg.i.i.i.i.i22 = or i32 %i.bb, -64
  %.neg15.i.i.i.i.i23 = select i1 %.not.i.i.i.i.i21, i32 0, i32 %.neg.i.i.i.i.i22
  %i.bs = add i32 %.neg15.i.i.i.i.i23, %.2.i.i.i.i.i20
  %i.bt = sub i32 %i.bb, %i.bs
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24, label %_ZNK4llvh5APIntneEm.exit27.thread

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19
  %.0.i.i.pre.i25 = load i64, ptr %.pre.i.i13, align 8, !tbaa !9
  br label %_ZNK4llvh5APIntneEm.exit27

_ZNK4llvh5APIntneEm.exit27:                       ; preds = %_ZNK4llvh5APIntneEm.exit.thread, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24
  %.0.i.i.i26 = phi i64 [ %.0.i.i.pre.i25, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24 ], [ %i.bd, %_ZNK4llvh5APIntneEm.exit.thread ]
  %.not36 = icmp eq i64 %.0.i.i.i26, 0
  br i1 %.not36, label %bb.m, label %_ZNK4llvh5APIntneEm.exit27.thread

_ZNK4llvh5APIntneEm.exit27.thread:                ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19, %_ZNK4llvh5APIntneEm.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK4llvh5APInt4sdivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !7  ; 3 uses
  %i.bx = icmp ult i32 %i.bw, 65
  br i1 %i.bx, label %bb.f, label %_ZNK4llvh5APIntneERKS0_.exit

bb.f:                                             ; preds = %_ZNK4llvh5APIntneEm.exit27.thread
  %i.by = load i64, ptr %4, align 8, !tbaa !9
  %i.bz = load i64, ptr %1, align 8, !tbaa !9
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.g, label %_ZN4llvh5APIntD2Ev.exit

_ZNK4llvh5APIntneERKS0_.exit:                     ; preds = %_ZNK4llvh5APIntneEm.exit27.thread
  %i.cb = zext i32 %i.bw to i64
  %i.cc = add nuw nsw i64 %i.cb, 63
  %i.cd = lshr i64 %i.cc, 3
  %.idx.i.i.i = and i64 %i.cd, 1073741816
  %i.ce = load ptr, ptr %4, align 8, !tbaa !9
  %i.cf = load ptr, ptr %1, align 8, !tbaa !9
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ce, ptr %i.cf, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.g, label %_ZN4llvh5APIntD2Ev.exit

bb.g:                                             ; preds = %bb.f, %_ZNK4llvh5APIntneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNK4llvh5APInt4sdivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !7  ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 65
  br i1 %i.ci, label %_ZNK4llvh5APIntneERKS0_.exit32, label %bb.h

_ZNK4llvh5APIntneERKS0_.exit32:                   ; preds = %bb.g
  %i.cj = load i64, ptr %5, align 8, !tbaa !9
  %i.ck = load i64, ptr %2, align 8, !tbaa !9
  %i.cl = icmp ne i64 %i.cj, %i.ck
  %i.cm = zext i1 %i.cl to i8
  store i8 %i.cm, ptr %3, align 1, !tbaa !593
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cn = zext i32 %i.ch to i64
  %i.co = add nuw nsw i64 %i.cn, 63
  %i.cp = lshr i64 %i.co, 3
  %.idx.i.i.i28 = and i64 %i.cp, 1073741816
  %i.cq = load ptr, ptr %5, align 8, !tbaa !9     ; 3 uses
  %i.cr = load ptr, ptr %2, align 8, !tbaa !9
  %bcmp.i.i.i.i.i.i.i29 = call i32 @bcmp(ptr %i.cq, ptr %i.cr, i64 %.idx.i.i.i28)
  %.not9.i.i.i.i.i.i.i30 = icmp ne i32 %bcmp.i.i.i.i.i.i.i29, 0
  %i.cs = zext i1 %.not9.i.i.i.i.i.i.i30 to i8
  store i8 %i.cs, ptr %3, align 1, !tbaa !593
  %i.ct = icmp eq ptr %i.cq, null
  br i1 %i.ct, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #23
  br label %bb.j

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.f, %_ZNK4llvh5APIntneERKS0_.exit
  store i8 1, ptr %3, align 1, !tbaa !593
  br label %.critedge12

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZNK4llvh5APIntneERKS0_.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.pre = load i32, ptr %i.bv, align 8, !tbaa !7
  br label %.critedge12

.critedge12:                                      ; preds = %_ZN4llvh5APIntD2Ev.exit, %bb.j
  %i.cu = phi i32 [ %i.bw, %_ZN4llvh5APIntD2Ev.exit ], [ %.pre, %bb.j ]
  %i.cv = icmp ugt i32 %i.cu, 64
  br i1 %i.cv, label %bb.k, label %_ZN4llvh5APIntD2Ev.exit33

bb.k:                                             ; preds = %.critedge12
  %i.cw = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN4llvh5APIntD2Ev.exit33, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #23
  br label %_ZN4llvh5APIntD2Ev.exit33

_ZN4llvh5APIntD2Ev.exit33:                        ; preds = %.critedge12, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.n

bb.m:                                             ; preds = %_ZNK4llvh5APIntneEm.exit27, %_ZNK4llvh5APIntneEm.exit
  store i8 0, ptr %3, align 1, !tbaa !593
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit33, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7umul_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7, !noalias !606 ; 9 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZNK4llvh5APIntmlERKS0_.exit.thread, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i

_ZNK4llvh5APIntmlERKS0_.exit.thread:              ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !noalias !606 ; 2 uses
  %i.e = load i64, ptr %2, align 8, !noalias !606 ; 2 uses
  %i.f = mul i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.g, align 8, !tbaa !7, !alias.scope !606
  %i.h = sub nsw i32 0, %i.b
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = and i64 %i.f, %i.k
  store i64 %i.l, ptr %0, align 8, !tbaa !9, !alias.scope !606
  %i.m = inttoptr i64 %i.e to ptr
  br label %_ZNK4llvh5APIntneEm.exit

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i:        ; preds = %bb.a
  %i.n = zext i32 %i.b to i64
  %i.o = add nuw nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 5 uses
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %i.r = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !606 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.t, align 8, !tbaa !7, !alias.scope !606
  store ptr %i.s, ptr %0, align 8, !tbaa !9, !alias.scope !606
  %i.u = load ptr, ptr %1, align 8, !tbaa !9, !noalias !606 ; 3 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !9, !noalias !606 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !10, !noalias !606
  %scevgep.i.i.i = getelementptr i8, ptr %i.s, i64 8
  %i.w = add nuw nsw i64 %i.r, 34359738360
  %i.x = and i64 %i.w, 34359738360
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.x, i1 false), !tbaa !10, !noalias !606
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !10, !noalias !606
  %i.ab = trunc i64 %indvars.iv.i.i to i32
  %i.ac = sub i32 %i.q, %i.ab
  %i.ad = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.y, ptr noundef readonly %i.u, i64 noundef %i.aa, i64 noundef 0, i32 noundef %i.q, i32 noundef %i.ac, i1 noundef zeroext true), !noalias !606 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.p
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i, !llvm.loop !27

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i
  %i.ae = sub i32 0, %i.b
  %i.af = and i32 %i.ae, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 -1, %i.ag
  %i.ai = add nuw nsw i64 %i.p, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10, !noalias !606
  %i.am = and i64 %i.al, %i.ah
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !10, !noalias !606
  %i.an = shl i32 %i.q, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.au, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = or disjoint i32 %.019.i.i.i.i.i, %i.as
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.au = add i32 %.019.i.i.i.i.i, 64
  %i.av = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.av, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.at, %.thread.i.i.i.i.i ], [ %i.an, %bb.c ]
  %i.aw = and i32 %i.b, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  %.neg.i.i.i.i.i = or i32 %i.b, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.ax = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.ay = sub i32 %i.b, %i.ax
  %i.az = icmp ult i32 %i.ay, 65
  br i1 %i.az, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i, label %_ZNK4llvh5APIntneEm.exit.thread

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %i.u, align 8, !tbaa !9
  br label %_ZNK4llvh5APIntneEm.exit

_ZNK4llvh5APIntneEm.exit:                         ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i, %_ZNK4llvh5APIntmlERKS0_.exit.thread
  %.pre.i.i1349 = phi ptr [ %i.v, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i ], [ %i.m, %_ZNK4llvh5APIntmlERKS0_.exit.thread ]
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i ], [ %i.d, %_ZNK4llvh5APIntmlERKS0_.exit.thread ]
  %.not = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not, label %bb.m, label %_ZNK4llvh5APIntneEm.exit.thread

_ZNK4llvh5APIntneEm.exit.thread:                  ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APIntneEm.exit
  %.pre.i.i13 = phi ptr [ %i.v, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ], [ %.pre.i.i1349, %_ZNK4llvh5APIntneEm.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !7  ; 5 uses
  %i.bc = icmp ult i32 %i.bb, 65
  %i.bd = ptrtoint ptr %.pre.i.i13 to i64
  br i1 %i.bc, label %_ZNK4llvh5APIntneEm.exit27, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %_ZNK4llvh5APIntneEm.exit.thread
  %i.be = zext i32 %i.bb to i64
  %i.bf = add nuw nsw i64 %i.be, 63
  %i.bg = lshr i64 %i.bf, 6                       ; 2 uses
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = shl i32 %i.bh, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i14
  %indvars.iv.i.i.i.i15 = phi i64 [ %indvars.iv.next.i.i.i.i17, %bb.e ], [ %i.bg, %.lr.ph.i.i.i.i.i14 ] ; 2 uses
  %.019.i.i.i.i.i16 = phi i32 [ %i.bp, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i14 ] ; 2 uses
  %indvars.iv.next.i.i.i.i17 = add nsw i64 %indvars.iv.i.i.i.i15, -1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i13, i64 %indvars.iv.next.i.i.i.i17
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.e, label %.thread.i.i.i.i.i18

.thread.i.i.i.i.i18:                              ; preds = %bb.d
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = or disjoint i32 %.019.i.i.i.i.i16, %i.bn
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19

bb.e:                                             ; preds = %bb.d
  %i.bp = add i32 %.019.i.i.i.i.i16, 64
  %i.bq = icmp samesign ugt i64 %indvars.iv.i.i.i.i15, 1
  br i1 %i.bq, label %bb.d, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19:      ; preds = %bb.e, %.thread.i.i.i.i.i18
  %.2.i.i.i.i.i20 = phi i32 [ %i.bo, %.thread.i.i.i.i.i18 ], [ %i.bi, %bb.e ]
  %i.br = and i32 %i.bb, 63
  %.not.i.i.i.i.i21 = icmp eq i32 %i.br, 0
  %.neg.i.i.i.i.i22 = or i32 %i.bb, -64
  %.neg15.i.i.i.i.i23 = select i1 %.not.i.i.i.i.i21, i32 0, i32 %.neg.i.i.i.i.i22
  %i.bs = add i32 %.neg15.i.i.i.i.i23, %.2.i.i.i.i.i20
  %i.bt = sub i32 %i.bb, %i.bs
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24, label %_ZNK4llvh5APIntneEm.exit27.thread

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19
  %.0.i.i.pre.i25 = load i64, ptr %.pre.i.i13, align 8, !tbaa !9
  br label %_ZNK4llvh5APIntneEm.exit27

_ZNK4llvh5APIntneEm.exit27:                       ; preds = %_ZNK4llvh5APIntneEm.exit.thread, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24
  %.0.i.i.i26 = phi i64 [ %.0.i.i.pre.i25, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i24 ], [ %i.bd, %_ZNK4llvh5APIntneEm.exit.thread ]
  %.not36 = icmp eq i64 %.0.i.i.i26, 0
  br i1 %.not36, label %bb.m, label %_ZNK4llvh5APIntneEm.exit27.thread

_ZNK4llvh5APIntneEm.exit27.thread:                ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i19, %_ZNK4llvh5APIntneEm.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK4llvh5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !7  ; 3 uses
  %i.bx = icmp ult i32 %i.bw, 65
  br i1 %i.bx, label %bb.f, label %_ZNK4llvh5APIntneERKS0_.exit

bb.f:                                             ; preds = %_ZNK4llvh5APIntneEm.exit27.thread
  %i.by = load i64, ptr %4, align 8, !tbaa !9
  %i.bz = load i64, ptr %1, align 8, !tbaa !9
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.g, label %_ZN4llvh5APIntD2Ev.exit

_ZNK4llvh5APIntneERKS0_.exit:                     ; preds = %_ZNK4llvh5APIntneEm.exit27.thread
  %i.cb = zext i32 %i.bw to i64
  %i.cc = add nuw nsw i64 %i.cb, 63
  %i.cd = lshr i64 %i.cc, 3
  %.idx.i.i.i = and i64 %i.cd, 1073741816
  %i.ce = load ptr, ptr %4, align 8, !tbaa !9
  %i.cf = load ptr, ptr %1, align 8, !tbaa !9
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ce, ptr %i.cf, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.g, label %_ZN4llvh5APIntD2Ev.exit

bb.g:                                             ; preds = %bb.f, %_ZNK4llvh5APIntneERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNK4llvh5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !7  ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 65
  br i1 %i.ci, label %_ZNK4llvh5APIntneERKS0_.exit32, label %bb.h

_ZNK4llvh5APIntneERKS0_.exit32:                   ; preds = %bb.g
  %i.cj = load i64, ptr %5, align 8, !tbaa !9
  %i.ck = load i64, ptr %2, align 8, !tbaa !9
  %i.cl = icmp ne i64 %i.cj, %i.ck
  %i.cm = zext i1 %i.cl to i8
  store i8 %i.cm, ptr %3, align 1, !tbaa !593
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cn = zext i32 %i.ch to i64
  %i.co = add nuw nsw i64 %i.cn, 63
  %i.cp = lshr i64 %i.co, 3
  %.idx.i.i.i28 = and i64 %i.cp, 1073741816
end_hunk_1
begin_hunk_2_@_ZN4llvh8APIntOps12RoundingSDivERKNS_5APIntES3_NS1_8RoundingE:bb.a
  %i.cw = and i64 %i.cv, 1073741816               ; 2 uses
  %i.cx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #22 ; 6 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = load ptr, ptr %4, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.cz, i64 %i.cw, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.da = lshr i64 %i.cu, 6                       ; 2 uses
  %i.db = load i64, ptr %i.cx, align 8, !tbaa !10, !noalias !663
  %i.dc = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.cx, align 8, !tbaa !10, !noalias !663
  %.not.peel.i.i.i15 = icmp eq i64 %i.dc, 0
  br i1 %.not.peel.i.i.i15, label %.lr.ph.i.i.i20, label %_ZN4llvh5APInt9tcAddPartEPmmj.exit.thread.i.i

.lr.ph.i.i.i20:                                   ; preds = %.lr.ph.preheader.i.i.i14, %.lr.ph.i.i.i20
  %indvars.iv.i.i.i21 = phi i64 [ %indvars.iv.next.i.i.i23, %.lr.ph.i.i.i20 ], [ 1, %.lr.ph.preheader.i.i.i14 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i21 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10, !noalias !663
  %i.df = add i64 %i.de, 1                        ; 2 uses
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !10, !noalias !663
  %.not.i.i.i22 = icmp ne i64 %i.df, 0
  %indvars.iv.next.i.i.i23 = add nuw nsw i64 %indvars.iv.i.i.i21, 1 ; 2 uses
  %exitcond.not.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i.i23, %i.da
  %or.cond.i.i25 = select i1 %.not.i.i.i22, i1 true, i1 %exitcond.not.i.i.i24
  br i1 %or.cond.i.i25, label %_ZN4llvh5APInt9tcAddPartEPmmj.exit.thread.i.i, label %.lr.ph.i.i.i20, !llvm.loop !16

_ZN4llvh5APInt9tcAddPartEPmmj.exit.thread.i.i:    ; preds = %.lr.ph.i.i.i20, %.lr.ph.preheader.i.i.i14
  %.pn.in.in.i.i16 = sub i32 0, %i.ck
  %.pn.in.i.i17 = and i32 %.pn.in.in.i.i16, 63
  %.pn.i.i18 = zext nneg i32 %.pn.in.i.i17 to i64
  %i.dg = lshr i64 -1, %.pn.i.i18
  %i.dh = add nuw nsw i64 %i.da, 4294967295
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !10, !noalias !663
  %i.dl = and i64 %i.dk, %i.dg
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !10, !noalias !663
  br label %_ZN4llvh5APIntD2Ev.exit26

_ZN4llvh5APIntD2Ev.exit26:                        ; preds = %_ZN4llvh5APInt9tcAddPartEPmmj.exit.thread.i.i, %_ZN4llvh5APInt9tcAddPartEPmmj.exit.thread2.i.i
  %.sroa.0.1 = phi i64 [ %i.cs, %_ZN4llvh5APInt9tcAddPartEPmmj.exit.thread2.i.i ], [ %i.cy, %_ZN4llvh5APInt9tcAddPartEPmmj.exit.thread.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ck, ptr %i.dm, align 8, !tbaa !7, !alias.scope !663
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !663
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit26, %bb.j, %bb.h, %_ZN4llvh5APIntD2Ev.exit, %bb.e
  %i.dn = phi i32 [ %i.ck, %_ZN4llvh5APIntD2Ev.exit26 ], [ 0, %bb.j ], [ 0, %bb.h ], [ %i.bb, %_ZN4llvh5APIntD2Ev.exit ], [ 0, %bb.e ]
  %i.do = icmp ult i32 %i.d, 65
  %i.dp = icmp eq ptr %.pre.i, null
  %or.cond = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit27, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %.pre.i) #23
  %.pre = load i32, ptr %i.b, align 8, !tbaa !7
  br label %_ZN4llvh5APIntD2Ev.exit27

_ZN4llvh5APIntD2Ev.exit27:                        ; preds = %bb.l, %bb.m
  %i.dq = phi i32 [ %i.dn, %bb.l ], [ %.pre, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.dr = icmp ugt i32 %i.dq, 64
  br i1 %i.dr, label %bb.n, label %_ZN4llvh5APIntD2Ev.exit28

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit27
  %i.ds = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZN4llvh5APIntD2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #23
  br label %_ZN4llvh5APIntD2Ev.exit28

_ZN4llvh5APIntD2Ev.exit28:                        ; preds = %_ZN4llvh5APIntD2Ev.exit27, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh5APInt4sdivERKS0_(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4llvh5APIntD2Ev.exit28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::Optional") align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 9 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %10 = alloca %"class.llvh::APInt", align 8      ; 9 uses
  %11 = alloca %"class.llvh::APInt", align 8      ; 13 uses
  %12 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %13 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %14 = alloca %"class.llvh::APInt", align 8      ; 5 uses
  %15 = alloca %"class.llvh::APInt", align 8      ; 8 uses
  %16 = alloca %"class.llvh::APInt", align 8      ; 8 uses
  %17 = alloca %"class.llvh::APInt", align 8      ; 7 uses
  %18 = alloca %"class.llvh::APInt", align 8      ; 15 uses
  %19 = alloca %"class.llvh::APInt", align 8      ; 9 uses
  %20 = alloca %"class.llvh::APInt", align 8      ; 6 uses
  %21 = alloca %"class.llvh::APInt", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNK4llvh5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %4)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7    ; 5 uses
  %i.e = icmp ult i32 %i.d, 65
  br i1 %i.e, label %_ZNK4llvh5APInt11isNullValueEv.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvh5APInt11isNullValueEv.exit.thread:       ; preds = %bb.a
  %i.f = load i64, ptr %5, align 8, !tbaa !9
  %i.g = icmp eq i64 %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.g, label %bb.d, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = zext i32 %i.d to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = load ptr, ptr %5, align 8, !tbaa !9      ; 2 uses
  %i.m = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i ] ; 2 uses
  %.019.i.i.i = phi i32 [ %i.t, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.019.i.i.i, %i.r
  br label %.loopexit914

bb.c:                                             ; preds = %bb.b
  %i.t = add i32 %.019.i.i.i, 64
  %i.u = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.u, label %bb.b, label %.loopexit914, !llvm.loop !93

.loopexit914:                                     ; preds = %bb.c, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.s, %.thread.i.i.i ], [ %i.m, %bb.c ]
  %i.v = and i32 %i.d, 63
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %.neg.i.i.i = or i32 %i.d, -64
  %.neg15.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %.neg.i.i.i
  %i.w = add i32 %.2.i.i.i, %.neg15.i.i.i
  %i.x = icmp eq i32 %i.w, %i.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.loopexit914, %_ZNK4llvh5APInt11isNullValueEv.exit.thread
  %i.y = icmp ult i32 %i.b, 65
  br i1 %i.y, label %_ZN4llvh5APIntD2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %i.b to i64
  %i.aa = add nuw nsw i64 %i.z, 63
  %i.ab = lshr i64 %i.aa, 6                       ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.ac, i1 false)
  %i.ae = ptrtoint ptr %i.ad to i64
  store i64 0, ptr %i.ad, align 8, !tbaa !10
  %.pn.in.in.i = sub i32 0, %i.b
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.af = lshr i64 -1, %.pn.i
  %i.ag = add nuw nsw i64 %i.ab, 4294967295
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !10
  %i.ak = and i64 %i.aj, %i.af
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !10
  br label %_ZN4llvh5APIntD2Ev.exit12

_ZN4llvh5APIntD2Ev.exit12:                        ; preds = %bb.d, %bb.e
  %.sroa.0663.0 = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.al, align 8, !tbaa !666
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.am, align 8, !tbaa !7
  store i64 %.sroa.0663.0, ptr %0, align 8
  br label %bb.cu

bb.f:                                             ; preds = %.loopexit914, %_ZNK4llvh5APInt11isNullValueEv.exit.thread
  %i.an = mul i32 %i.b, 3                         ; 17 uses
  %i.ao = icmp ult i32 %i.an, 65                  ; 4 uses
  br i1 %i.ao, label %_ZN4llvh5APIntC2Ejmb.exit.i, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i13

_ZN4llvh5APIntC2Ejmb.exit.i:                      ; preds = %bb.f
  %i.ap = load i64, ptr %1, align 8, !noalias !670 ; 2 uses
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !7, !noalias !670 ; 2 uses
  %i.ar = sub i32 64, %i.aq
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = shl i64 %i.ap, %i.as
  %i.au = ashr exact i64 %i.at, %i.as
  %i.av = sub nsw i32 0, %i.an
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 -1, %i.ax
  %i.az = and i64 %i.au, %i.ay
  %i.ba = inttoptr i64 %i.ap to ptr
  br label %_ZNK4llvh5APInt4sextEj.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i13:       ; preds = %bb.f
  %i.bb = zext i32 %i.an to i64
  %i.bc = add nuw nsw i64 %i.bb, 63
  %i.bd = lshr i64 %i.bc, 6                       ; 3 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #22, !noalias !670 ; 5 uses
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !7, !noalias !670 ; 5 uses
  %i.bh = icmp ult i32 %i.bg, 65                  ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !noalias !670 ; 3 uses
  %.0.i.i14 = select i1 %i.bh, ptr %1, ptr %i.bi
  %i.bj = zext i32 %i.bg to i64
  %i.bk = add nuw nsw i64 %i.bj, 63
  %i.bl = lshr i64 %i.bk, 6                       ; 4 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %.0.i.i14, i64 %i.bm, i1 false), !noalias !670
  %i.bn = add nuw nsw i64 %i.bl, 4294967295
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !10, !noalias !670
  %i.br = sub i32 0, %i.bg
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = shl i64 %i.bq, %i.bt
  %i.bv = ashr exact i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !10, !noalias !670
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bl
  %i.bx = add i32 %i.bg, -1                       ; 2 uses
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = lshr i32 %i.bx, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cc
  %.in.i.i.i.i = select i1 %i.bh, ptr %1, ptr %i.cd
  %i.ce = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !9, !noalias !670
  %i.cf = and i64 %i.ce, %i.ca
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = sext i1 %i.cg to i8
  %i.ci = sub nsw i64 %i.bd, %i.bl
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bw, i8 %i.ch, i64 %i.ck, i1 false), !noalias !670
  %i.cl = sub i32 0, %i.an
  %i.cm = and i32 %i.cl, 63
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = lshr i64 -1, %i.cn
  %i.cp = add nuw nsw i64 %i.bd, 4294967295
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10, !noalias !670
  %i.ct = and i64 %i.cs, %i.co
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !10, !noalias !670
  %i.cu = ptrtoint ptr %i.bf to i64
  br label %_ZNK4llvh5APInt4sextEj.exit

_ZNK4llvh5APInt4sextEj.exit:                      ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i13
  %i.cv = phi ptr [ %i.ba, %_ZN4llvh5APIntC2Ejmb.exit.i ], [ %i.bi, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i13 ] ; 2 uses
  %i.cw = phi i32 [ %i.aq, %_ZN4llvh5APIntC2Ejmb.exit.i ], [ %i.bg, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i13 ]
  %.sink.i = phi i64 [ %i.az, %_ZN4llvh5APIntC2Ejmb.exit.i ], [ %i.cu, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i13 ]
  %i.cx = icmp ult i32 %i.cw, 65
  %i.cy = icmp eq ptr %i.cv, null
  %or.cond933 = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond933, label %_ZN4llvh5APIntD2Ev.exit15, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvh5APInt4sextEj.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.cv) #23
  br label %_ZN4llvh5APIntD2Ev.exit15

_ZN4llvh5APIntD2Ev.exit15:                        ; preds = %bb.g, %_ZNK4llvh5APInt4sextEj.exit
  store i64 %.sink.i, ptr %1, align 8
  store i32 %i.an, ptr %i.a, align 8, !tbaa !7
  br i1 %i.ao, label %_ZN4llvh5APIntC2Ejmb.exit.i20, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i16

_ZN4llvh5APIntC2Ejmb.exit.i20:                    ; preds = %_ZN4llvh5APIntD2Ev.exit15
  %i.cz = load i64, ptr %2, align 8, !noalias !673 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !7, !noalias !673 ; 2 uses
  %i.dc = sub i32 64, %i.db
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = shl i64 %i.cz, %i.dd
  %i.df = ashr exact i64 %i.de, %i.dd
  %i.dg = sub nsw i32 0, %i.an
  %i.dh = and i32 %i.dg, 63
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 -1, %i.di
  %i.dk = and i64 %i.df, %i.dj
  %i.dl = inttoptr i64 %i.cz to ptr
  br label %_ZNK4llvh5APInt4sextEj.exit21

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i16:       ; preds = %_ZN4llvh5APIntD2Ev.exit15
  %i.dm = zext i32 %i.an to i64
  %i.dn = add nuw nsw i64 %i.dm, 63
  %i.do = lshr i64 %i.dn, 6                       ; 3 uses
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #22, !noalias !673 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !7, !noalias !673 ; 5 uses
  %i.dt = icmp ult i32 %i.ds, 65                  ; 2 uses
  %i.du = load ptr, ptr %2, align 8, !noalias !673 ; 3 uses
  %.0.i.i17 = select i1 %i.dt, ptr %2, ptr %i.du
  %i.dv = zext i32 %i.ds to i64
  %i.dw = add nuw nsw i64 %i.dv, 63
  %i.dx = lshr i64 %i.dw, 6                       ; 4 uses
  %i.dy = shl nuw nsw i64 %i.dx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %.0.i.i17, i64 %i.dy, i1 false), !noalias !673
  %i.dz = add nuw nsw i64 %i.dx, 4294967295
  %i.ea = and i64 %i.dz, 4294967295
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ea ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10, !noalias !673
  %i.ed = sub i32 0, %i.ds
  %i.ee = and i32 %i.ed, 63
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = shl i64 %i.ec, %i.ef
  %i.eh = ashr exact i64 %i.eg, %i.ef
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !10, !noalias !673
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dx
  %i.ej = add i32 %i.ds, -1                       ; 2 uses
  %i.ek = and i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = lshr i32 %i.ej, 6
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.eo
  %.in.i.i.i.i18 = select i1 %i.dt, ptr %2, ptr %i.ep
  %i.eq = load i64, ptr %.in.i.i.i.i18, align 8, !tbaa !9, !noalias !673
  %i.er = and i64 %i.eq, %i.em
  %i.es = icmp ne i64 %i.er, 0
  %i.et = sext i1 %i.es to i8
  %i.eu = sub nsw i64 %i.do, %i.dx
  %i.ev = shl nsw i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ei, i8 %i.et, i64 %i.ew, i1 false), !noalias !673
  %i.ex = sub i32 0, %i.an
  %i.ey = and i32 %i.ex, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez
  %i.fb = add nuw nsw i64 %i.do, 4294967295
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.fc ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10, !noalias !673
  %i.ff = and i64 %i.fe, %i.fa
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !10, !noalias !673
  %i.fg = ptrtoint ptr %i.dq to i64
  br label %_ZNK4llvh5APInt4sextEj.exit21

_ZNK4llvh5APInt4sextEj.exit21:                    ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i20, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i16
  %i.fh = phi ptr [ %i.dl, %_ZN4llvh5APIntC2Ejmb.exit.i20 ], [ %i.du, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i16 ] ; 2 uses
  %i.fi = phi i32 [ %i.db, %_ZN4llvh5APIntC2Ejmb.exit.i20 ], [ %i.ds, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i16 ]
  %.sink.i19 = phi i64 [ %i.dk, %_ZN4llvh5APIntC2Ejmb.exit.i20 ], [ %i.fg, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i16 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.fk = icmp ult i32 %i.fi, 65
  %i.fl = icmp eq ptr %i.fh, null
  %or.cond934 = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond934, label %_ZN4llvh5APIntD2Ev.exit23, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh5APInt4sextEj.exit21
  tail call void @_ZdaPv(ptr noundef nonnull %i.fh) #23
  br label %_ZN4llvh5APIntD2Ev.exit23

_ZN4llvh5APIntD2Ev.exit23:                        ; preds = %bb.h, %_ZNK4llvh5APInt4sextEj.exit21
  store i64 %.sink.i19, ptr %2, align 8
  store i32 %i.an, ptr %i.fj, align 8, !tbaa !7
  br i1 %i.ao, label %_ZN4llvh5APIntC2Ejmb.exit.i28, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i24

_ZN4llvh5APIntC2Ejmb.exit.i28:                    ; preds = %_ZN4llvh5APIntD2Ev.exit23
  %i.fm = load i64, ptr %3, align 8, !noalias !676 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !7, !noalias !676 ; 2 uses
  %i.fp = sub i32 64, %i.fo
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = shl i64 %i.fm, %i.fq
  %i.fs = ashr exact i64 %i.fr, %i.fq
  %i.ft = sub nsw i32 0, %i.an
  %i.fu = and i32 %i.ft, 63
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = lshr i64 -1, %i.fv
  %i.fx = and i64 %i.fs, %i.fw
  %i.fy = inttoptr i64 %i.fm to ptr
  br label %_ZNK4llvh5APInt4sextEj.exit29

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i24:       ; preds = %_ZN4llvh5APIntD2Ev.exit23
  %i.fz = zext i32 %i.an to i64
  %i.ga = add nuw nsw i64 %i.fz, 63
  %i.gb = lshr i64 %i.ga, 6                       ; 3 uses
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #22, !noalias !676 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !7, !noalias !676 ; 5 uses
  %i.gg = icmp ult i32 %i.gf, 65                  ; 2 uses
  %i.gh = load ptr, ptr %3, align 8, !noalias !676 ; 3 uses
  %.0.i.i25 = select i1 %i.gg, ptr %3, ptr %i.gh
  %i.gi = zext i32 %i.gf to i64
  %i.gj = add nuw nsw i64 %i.gi, 63
  %i.gk = lshr i64 %i.gj, 6                       ; 4 uses
  %i.gl = shl nuw nsw i64 %i.gk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %.0.i.i25, i64 %i.gl, i1 false), !noalias !676
  %i.gm = add nuw nsw i64 %i.gk, 4294967295
  %i.gn = and i64 %i.gm, 4294967295
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !10, !noalias !676
  %i.gq = sub i32 0, %i.gf
  %i.gr = and i32 %i.gq, 63
  %i.gs = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.gt = shl i64 %i.gp, %i.gs
  %i.gu = ashr exact i64 %i.gt, %i.gs
  store i64 %i.gu, ptr %i.go, align 8, !tbaa !10, !noalias !676
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gk
  %i.gw = add i32 %i.gf, -1                       ; 2 uses
  %i.gx = and i32 %i.gw, 63
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = shl nuw i64 1, %i.gy
  %i.ha = lshr i32 %i.gw, 6
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.hb
  %.in.i.i.i.i26 = select i1 %i.gg, ptr %3, ptr %i.hc
  %i.hd = load i64, ptr %.in.i.i.i.i26, align 8, !tbaa !9, !noalias !676
  %i.he = and i64 %i.hd, %i.gz
  %i.hf = icmp ne i64 %i.he, 0
  %i.hg = sext i1 %i.hf to i8
  %i.hh = sub nsw i64 %i.gb, %i.gk
  %i.hi = shl nsw i64 %i.hh, 3
  %i.hj = and i64 %i.hi, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gv, i8 %i.hg, i64 %i.hj, i1 false), !noalias !676
  %i.hk = sub i32 0, %i.an
  %i.hl = and i32 %i.hk, 63
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = lshr i64 -1, %i.hm
  %i.ho = add nuw nsw i64 %i.gb, 4294967295
  %i.hp = and i64 %i.ho, 4294967295
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.hp ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !10, !noalias !676
  %i.hs = and i64 %i.hr, %i.hn
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !10, !noalias !676
  %i.ht = ptrtoint ptr %i.gd to i64
  br label %_ZNK4llvh5APInt4sextEj.exit29

_ZNK4llvh5APInt4sextEj.exit29:                    ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i28, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i24
  %i.hu = phi ptr [ %i.fy, %_ZN4llvh5APIntC2Ejmb.exit.i28 ], [ %i.gh, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i24 ] ; 2 uses
  %i.hv = phi i32 [ %i.fo, %_ZN4llvh5APIntC2Ejmb.exit.i28 ], [ %i.gf, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i24 ]
  %.sink.i27 = phi i64 [ %i.fx, %_ZN4llvh5APIntC2Ejmb.exit.i28 ], [ %i.ht, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i24 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.hx = icmp ult i32 %i.hv, 65
  %i.hy = icmp eq ptr %i.hu, null
  %or.cond935 = select i1 %i.hx, i1 true, i1 %i.hy
  br i1 %or.cond935, label %_ZN4llvh5APIntD2Ev.exit31, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh5APInt4sextEj.exit29
  tail call void @_ZdaPv(ptr noundef nonnull %i.hu) #23
  br label %_ZN4llvh5APIntD2Ev.exit31

_ZN4llvh5APIntD2Ev.exit31:                        ; preds = %bb.i, %_ZNK4llvh5APInt4sextEj.exit29
  store i64 %.sink.i27, ptr %3, align 8
  store i32 %i.an, ptr %i.hw, align 8, !tbaa !7
  %i.hz = load i32, ptr %i.a, align 8, !tbaa !7   ; 6 uses
  %i.ia = add i32 %i.hz, -1                       ; 2 uses
  %i.ib = and i32 %i.ia, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = shl nuw i64 1, %i.ic
  %i.ie = icmp ult i32 %i.hz, 65                  ; 2 uses
  %i.if = load ptr, ptr %1, align 8               ; 4 uses
  %i.ig = lshr i32 %i.ia, 6
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ih
  %.in.i.i.i = select i1 %i.ie, ptr %1, ptr %i.ii
  %i.ij = load i64, ptr %.in.i.i.i, align 8, !tbaa !9
  %i.ik = and i64 %i.id, %i.ij
  %.not762 = icmp eq i64 %i.ik, 0
  %i.il = ptrtoint ptr %i.if to i64
  br i1 %.not762, label %_ZN4llvh5APInt6negateEv.exit61, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit31
  br i1 %i.ie, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.im = zext i32 %i.hz to i64
  %i.in = add nuw nsw i64 %i.im, 63
  %i.io = lshr i64 %i.in, 6                       ; 5 uses
  %min.iters.check = icmp ult i32 %i.hz, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %i.io, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ip, align 8, !tbaa !10
  %wide.load963 = load <2 x i64>, ptr %i.iq, align 8, !tbaa !10
  %i.ir = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.is = xor <2 x i64> %wide.load963, splat (i64 -1)
  store <2 x i64> %i.ir, ptr %i.ip, align 8, !tbaa !10
  store <2 x i64> %i.is, ptr %i.iq, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %bb.k ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = xor i64 %i.iv, -1
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.io
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !680

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i: ; preds = %bb.j
  %i.ix = xor i64 %i.il, -1
  %i.iy = sub nsw i32 0, %i.hz
  %i.iz = and i32 %i.iy, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = lshr i64 -1, %i.ja                      ; 2 uses
  %i.jc = and i64 %i.jb, %i.ix
  %i.jd = add i64 %i.jc, 1
  %i.je = and i64 %i.jd, %i.jb
  store i64 %i.je, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt6negateEv.exit

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block
  %i.jf = sub i32 0, %i.hz
  %i.jg = and i32 %i.jf, 63
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = lshr i64 -1, %i.jh                      ; 2 uses
  %i.jj = load ptr, ptr %1, align 8, !tbaa !9
  %i.jk = add nuw nsw i64 %i.io, 4294967295
  %i.jl = and i64 %i.jk, 4294967295               ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jl ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !10
  %i.jo = and i64 %i.jn, %i.ji
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !10
  %i.jp = load ptr, ptr %1, align 8, !tbaa !9     ; 3 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !10
  %i.jr = add i64 %i.jq, 1                        ; 2 uses
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !10
  %.not.peel.i.i.i.i = icmp eq i64 %i.jr, 0
  br i1 %.not.peel.i.i.i.i, label %.lr.ph.i.i.i2.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i

.lr.ph.i.i.i2.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i2.i
  %indvars.iv.i.i.i3.i = phi i64 [ %indvars.iv.next.i.i.i4.i, %.lr.ph.i.i.i2.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i.i.i3.i ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !10
  %i.ju = add i64 %i.jt, 1                        ; 2 uses
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !10
  %.not.i.i.i.i = icmp ne i64 %i.ju, 0
  %indvars.iv.next.i.i.i4.i = add nuw nsw i64 %indvars.iv.i.i.i3.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i4.i, %i.io
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i
  br i1 %or.cond.i.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i:  ; preds = %.lr.ph.i.i.i2.i, %.lr.ph.preheader.i.i.i.i
  %i.jv = load ptr, ptr %1, align 8, !tbaa !9
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jl ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !10
  %i.jy = and i64 %i.jx, %i.ji
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !10
  br label %_ZN4llvh5APInt6negateEv.exit
end_hunk_2
begin_hunk_3_@_ZN4llvh8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j:bb.a
  %i.mw = and i64 %i.mv, %i.mq
  store i64 %i.mw, ptr %i.mu, align 8, !tbaa !10
  %i.mx = load ptr, ptr %3, align 8, !tbaa !9     ; 3 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !10
  %i.mz = add i64 %i.my, 1                        ; 2 uses
  store i64 %i.mz, ptr %i.mx, align 8, !tbaa !10
  %.not.peel.i.i.i.i52 = icmp eq i64 %i.mz, 0
  br i1 %.not.peel.i.i.i.i52, label %.lr.ph.i.i.i2.i54, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i53

.lr.ph.i.i.i2.i54:                                ; preds = %.lr.ph.preheader.i.i.i.i51, %.lr.ph.i.i.i2.i54
  %indvars.iv.i.i.i3.i55 = phi i64 [ %indvars.iv.next.i.i.i4.i57, %.lr.ph.i.i.i2.i54 ], [ 1, %.lr.ph.preheader.i.i.i.i51 ] ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.i.i.i3.i55 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !10
  %i.nc = add i64 %i.nb, 1                        ; 2 uses
  store i64 %i.nc, ptr %i.na, align 8, !tbaa !10
  %.not.i.i.i.i56 = icmp ne i64 %i.nc, 0
  %indvars.iv.next.i.i.i4.i57 = add nuw nsw i64 %indvars.iv.i.i.i3.i55, 1 ; 2 uses
  %exitcond.not.i.i.i5.i58 = icmp eq i64 %indvars.iv.next.i.i.i4.i57, %i.lv
  %or.cond.i.i59 = select i1 %.not.i.i.i.i56, i1 true, i1 %exitcond.not.i.i.i5.i58
  br i1 %or.cond.i.i59, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i53, label %.lr.ph.i.i.i2.i54, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i53: ; preds = %.lr.ph.i.i.i2.i54, %.lr.ph.preheader.i.i.i.i51
  %i.nd = load ptr, ptr %3, align 8, !tbaa !9
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.mt ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !10
  %i.ng = and i64 %i.nf, %i.mq
  store i64 %i.ng, ptr %i.ne, align 8, !tbaa !10
  br label %_ZN4llvh5APInt6negateEv.exit61

_ZN4llvh5APInt6negateEv.exit61:                   ; preds = %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i53, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i60, %_ZN4llvh5APIntD2Ev.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.an, ptr %i.nh, align 8, !tbaa !7, !alias.scope !685
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh5APInt6negateEv.exit61
  %i.ni = and i32 %4, 63
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = shl nuw i64 1, %i.nj
  %i.nl = inttoptr i64 %i.nk to ptr
  br label %_ZN4llvh5APInt12getOneBitSetEjj.exit

bb.o:                                             ; preds = %_ZN4llvh5APInt6negateEv.exit61
  %i.nm = zext i32 %i.an to i64
  %i.nn = add nuw nsw i64 %i.nm, 63
  %i.no = lshr i64 %i.nn, 6                       ; 2 uses
  %i.np = shl nuw nsw i64 %i.no, 3                ; 2 uses
  %i.nq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.np) #22, !noalias !685 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nq, i8 0, i64 %i.np, i1 false), !noalias !685
  store i64 0, ptr %i.nq, align 8, !tbaa !10, !noalias !685
  %.pn.in.in.i.i = sub i32 0, %i.an
  %.pn.in.i.i = and i32 %.pn.in.in.i.i, 63
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %i.nr = lshr i64 -1, %.pn.i.i
  %i.ns = add nuw nsw i64 %i.no, 4294967295
  %i.nt = and i64 %i.ns, 4294967295
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.nt ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !10, !noalias !685
  %i.nw = and i64 %i.nv, %i.nr
  store i64 %i.nw, ptr %i.nu, align 8, !tbaa !10, !noalias !685
  %i.nx = and i32 %4, 63
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = shl nuw i64 1, %i.ny
  %i.oa = lshr i32 %4, 6
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.ob ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !10, !noalias !685
  %i.oe = or i64 %i.od, %i.nz
  store i64 %i.oe, ptr %i.oc, align 8, !tbaa !10, !noalias !685
  br label %_ZN4llvh5APInt12getOneBitSetEjj.exit

_ZN4llvh5APInt12getOneBitSetEjj.exit:             ; preds = %bb.n, %bb.o
  %i.of = phi ptr [ %i.nl, %bb.n ], [ %i.nq, %bb.o ] ; 4 uses
  store ptr %i.of, ptr %6, align 8, !tbaa !9, !alias.scope !685
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.og = load i32, ptr %i.a, align 8, !tbaa !7   ; 19 uses
  %i.oh = icmp ult i32 %i.og, 65                  ; 6 uses
  %i.oi = ptrtoint ptr %i.of to i64
  br i1 %i.oh, label %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread.i, label %.lr.ph.i.i453

_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread.i: ; preds = %_ZN4llvh5APInt12getOneBitSetEjj.exit
  %i.oj = load i64, ptr %1, align 8, !tbaa !9
  %i.ok = shl i64 %i.oj, 1
  %i.ol = sub nsw i32 0, %i.og
  %i.om = and i32 %i.ol, 63
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = lshr i64 -1, %i.on
  %i.op = and i64 %i.ok, %i.oo
  br label %_ZN4llvh5APIntD2Ev.exit62

.lr.ph.i.i453:                                    ; preds = %_ZN4llvh5APInt12getOneBitSetEjj.exit
  %i.oq = zext i32 %i.og to i64
  %i.or = add nuw nsw i64 %i.oq, 63               ; 3 uses
  %i.os = lshr i64 %i.or, 3
  %i.ot = and i64 %i.os, 1073741816               ; 2 uses
  %i.ou = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ot) #22 ; 6 uses
  %i.ov = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ou, ptr align 8 %i.ov, i64 %i.ot, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.ow = lshr i64 %i.or, 6                       ; 4 uses
  %i.ox = icmp eq i64 %i.ow, 1
  br i1 %i.ox, label %.lr.ph.split.split.i.i.epil.preheader, label %.lr.ph.i.i453.new

.lr.ph.i.i453.new:                                ; preds = %.lr.ph.i.i453
  %unroll_iter = and i64 %i.ow, 134217726
  br label %.lr.ph.split.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %bb.r, %.lr.ph.i.i453.new
  %indvars.iv.i.i454 = phi i64 [ 0, %.lr.ph.i.i453.new ], [ %indvars.iv.next.i.i455.1, %bb.r ] ; 3 uses
  %.06985.i.i = phi i64 [ 0, %.lr.ph.i.i453.new ], [ %.3.i.i.1, %bb.r ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i453.new ], [ %niter.next.1, %bb.r ]
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv.i.i454 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !10, !noalias !688 ; 3 uses
  %i.pa = icmp eq i64 %i.oz, 0
  br i1 %i.pa, label %.lr.ph.split.split.i.i.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.i.i
  %i.pb = shl i64 %i.oz, 1                        ; 2 uses
  %i.pc = lshr i64 %i.oz, 63
  %i.pd = add i64 %i.pb, %.06985.i.i              ; 2 uses
  %i.pe = icmp ult i64 %i.pd, %i.pb
  %i.pf = zext i1 %i.pe to i64
  %.2.i.i = add nuw nsw i64 %i.pc, %i.pf
  br label %.lr.ph.split.split.i.i.1

.lr.ph.split.split.i.i.1:                         ; preds = %bb.p, %.lr.ph.split.split.i.i
  %.067.i.i = phi i64 [ %i.pd, %bb.p ], [ %.06985.i.i, %.lr.ph.split.split.i.i ]
  %.3.i.i = phi i64 [ %.2.i.i, %bb.p ], [ 0, %.lr.ph.split.split.i.i ] ; 2 uses
  store i64 %.067.i.i, ptr %i.oy, align 8, !tbaa !10, !noalias !688
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv.i.i454
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !10, !noalias !688 ; 3 uses
  %i.pj = icmp eq i64 %i.pi, 0
  br i1 %i.pj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.split.i.i.1
  %i.pk = shl i64 %i.pi, 1                        ; 2 uses
  %i.pl = lshr i64 %i.pi, 63
  %i.pm = add i64 %i.pk, %.3.i.i                  ; 2 uses
  %i.pn = icmp ult i64 %i.pm, %i.pk
  %i.po = zext i1 %i.pn to i64
  %.2.i.i.1 = add nuw nsw i64 %i.pl, %i.po
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.split.i.i.1
  %.067.i.i.1 = phi i64 [ %i.pm, %bb.q ], [ %.3.i.i, %.lr.ph.split.split.i.i.1 ]
  %.3.i.i.1 = phi i64 [ %.2.i.i.1, %bb.q ], [ 0, %.lr.ph.split.split.i.i.1 ] ; 2 uses
  store i64 %.067.i.i.1, ptr %i.ph, align 8, !tbaa !10, !noalias !688
  %indvars.iv.next.i.i455.1 = add nuw nsw i64 %indvars.iv.i.i454, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i.unr-lcssa, label %.lr.ph.split.split.i.i, !llvm.loop !80

_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i.unr-lcssa: ; preds = %bb.r
  %i.pp = and i64 %i.or, 64
  %lcmp.mod.not = icmp eq i64 %i.pp, 0
  br i1 %lcmp.mod.not, label %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i, label %.lr.ph.split.split.i.i.epil.preheader

.lr.ph.split.split.i.i.epil.preheader:            ; preds = %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i.unr-lcssa, %.lr.ph.i.i453
  %indvars.iv.i.i454.epil.init = phi i64 [ 0, %.lr.ph.i.i453 ], [ %indvars.iv.next.i.i455.1, %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i.unr-lcssa ]
  %.06985.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i453 ], [ %.3.i.i.1, %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1103 = trunc i64 %i.ow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1103)
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv.i.i454.epil.init ; 2 uses
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !10, !noalias !688 ; 2 uses
  %i.ps = icmp eq i64 %i.pr, 0
  %i.pt = shl i64 %i.pr, 1
  %i.pu = add i64 %i.pt, %.06985.i.i.epil.init
  %.067.i.i.epil = select i1 %i.ps, i64 %.06985.i.i.epil.init, i64 %i.pu
  store i64 %.067.i.i.epil, ptr %i.pq, align 8, !tbaa !10, !noalias !688
  br label %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i

_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i: ; preds = %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i.unr-lcssa, %.lr.ph.split.split.i.i.epil.preheader
  %i.pv = ptrtoint ptr %i.ou to i64
  %.pn.in.in.i457 = sub i32 0, %i.og
  %.pn.in.i458 = and i32 %.pn.in.in.i457, 63
  %.pn.i459 = zext nneg i32 %.pn.in.i458 to i64
  %i.pw = lshr i64 -1, %.pn.i459
  %i.px = add nuw nsw i64 %i.ow, 4294967295
  %i.py = and i64 %i.px, 4294967295
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.py ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !10, !noalias !688
  %i.qb = and i64 %i.qa, %i.pw
  store i64 %i.qb, ptr %i.pz, align 8, !tbaa !10, !noalias !688
  br label %_ZN4llvh5APIntD2Ev.exit62

_ZN4llvh5APIntD2Ev.exit62:                        ; preds = %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i, %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread.i
  %.sroa.0645.1 = phi i64 [ %i.op, %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread.i ], [ %i.pv, %_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb.exit.thread6.i ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.og, ptr %i.qc, align 8, !tbaa !7, !alias.scope !688
  store i64 %.sroa.0645.1, ptr %7, align 8, !alias.scope !688
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.qd = load i32, ptr %i.fj, align 8, !tbaa !7, !noalias !691 ; 8 uses
  %i.qe = icmp ult i32 %i.qd, 65                  ; 2 uses
  %i.qf = inttoptr i64 %.sroa.0645.1 to ptr
  br i1 %i.qe, label %_ZN4llvh5APIntC2Ejmb.exit.i66, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i

_ZN4llvh5APIntC2Ejmb.exit.i66:                    ; preds = %_ZN4llvh5APIntD2Ev.exit62
  %i.qg = load i64, ptr %2, align 8, !noalias !691 ; 3 uses
  %i.qh = mul i64 %i.qg, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.qd, ptr %i.qi, align 8, !tbaa !7, !alias.scope !691
  %i.qj = sub nsw i32 0, %i.qd
  %i.qk = and i32 %i.qj, 63
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = lshr i64 -1, %i.ql
  %i.qn = and i64 %i.qh, %i.qm                    ; 3 uses
  store i64 %i.qn, ptr %8, align 8, !tbaa !9, !alias.scope !691
  %i.qo = inttoptr i64 %i.qg to ptr
  %i.qp = inttoptr i64 %i.qn to ptr
  br label %_ZNK4llvh5APIntmlERKS0_.exit

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i:        ; preds = %_ZN4llvh5APIntD2Ev.exit62
  %i.qq = zext i32 %i.qd to i64
  %i.qr = add nuw nsw i64 %i.qq, 63
  %i.qs = lshr i64 %i.qr, 6                       ; 4 uses
  %i.qt = trunc nuw nsw i64 %i.qs to i32          ; 2 uses
  %i.qu = shl nuw nsw i64 %i.qs, 3                ; 2 uses
  %i.qv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.qu) #22, !noalias !691 ; 7 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.qd, ptr %i.qw, align 8, !tbaa !7, !alias.scope !691
  store ptr %i.qv, ptr %8, align 8, !tbaa !9, !alias.scope !691
  %i.qx = load ptr, ptr %2, align 8, !tbaa !9, !noalias !691 ; 3 uses
  store i64 0, ptr %i.qv, align 8, !tbaa !10, !noalias !691
  %scevgep.i.i.i = getelementptr i8, ptr %i.qv, i64 8
  %i.qy = add nuw nsw i64 %i.qu, 34359738360
  %i.qz = and i64 %i.qy, 34359738360
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.qz, i1 false), !tbaa !10, !noalias !691
  %i.ra = ptrtoint ptr %i.qv to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i
  %indvars.iv.i.i63 = phi i64 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i ], [ %indvars.iv.next.i.i64, %.lr.ph.i.i ] ; 4 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.i.i63
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.i.i63
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !10, !noalias !691
  %i.re = trunc i64 %indvars.iv.i.i63 to i32
  %i.rf = sub i32 %i.qt, %i.re
  %i.rg = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.rb, ptr noundef readonly %i.qx, i64 noundef %i.rd, i64 noundef 0, i32 noundef %i.qt, i32 noundef %i.rf, i1 noundef zeroext true), !noalias !691 ; 0 uses
  %indvars.iv.next.i.i64 = add nuw nsw i64 %indvars.iv.i.i63, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i64, %i.qs
  br i1 %exitcond.not.i.i, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i65, label %.lr.ph.i.i, !llvm.loop !27

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i65:       ; preds = %.lr.ph.i.i
  %i.rh = sub i32 0, %i.qd
  %i.ri = and i32 %i.rh, 63
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = lshr i64 -1, %i.rj
  %i.rl = add nuw nsw i64 %i.qs, 4294967295
  %i.rm = and i64 %i.rl, 4294967295
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.rm ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !10, !noalias !691
  %i.rp = and i64 %i.ro, %i.rk
  store i64 %i.rp, ptr %i.rn, align 8, !tbaa !10, !noalias !691
  br label %_ZNK4llvh5APIntmlERKS0_.exit

_ZNK4llvh5APIntmlERKS0_.exit:                     ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i66, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i65
  %i.rq = phi ptr [ %i.qp, %_ZN4llvh5APIntC2Ejmb.exit.i66 ], [ %i.qv, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i65 ] ; 3 uses
  %i.rr = phi i64 [ %i.qn, %_ZN4llvh5APIntC2Ejmb.exit.i66 ], [ %i.ra, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i65 ]
  %i.rs = phi ptr [ %i.qo, %_ZN4llvh5APIntC2Ejmb.exit.i66 ], [ %i.qx, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i65 ]
  %i.rt = add i32 %i.qd, -1                       ; 2 uses
  %i.ru = and i32 %i.rt, 63
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = shl nuw i64 1, %i.rv
  %i.rx = lshr i32 %i.rt, 6
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.ry
  %.in.i.i.i.i67 = select i1 %i.qe, ptr %2, ptr %i.rz
  %i.sa = load i64, ptr %.in.i.i.i.i67, align 8, !tbaa !9
  %i.sb = and i64 %i.sa, %i.rw
  %.not.i = icmp eq i64 %i.sb, 0
  br i1 %.not.i, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %_ZNK4llvh5APIntmlERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNK4llvh5APInt4sremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %9, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %6)
  %i.sc = load i32, ptr %i.hw, align 8, !tbaa !7
  %i.sd = icmp ult i32 %i.sc, 65
  br i1 %i.sd, label %_ZN4llvh5APIntD2Ev.exit69, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.se = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %_ZN4llvh5APIntD2Ev.exit69, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.se) #23
  br label %_ZN4llvh5APIntD2Ev.exit69

_ZN4llvh5APIntD2Ev.exit69:                        ; preds = %bb.u, %bb.t, %bb.s
  %i.sg = load i64, ptr %9, align 8               ; 4 uses
  store i64 %i.sg, ptr %3, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !7  ; 9 uses
  store i32 %i.si, ptr %i.hw, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.sj = add i32 %i.si, -1                       ; 2 uses
  %i.sk = and i32 %i.sj, 63
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = shl nuw i64 1, %i.sl
  %i.sn = icmp ult i32 %i.si, 65                  ; 2 uses
  %i.so = inttoptr i64 %i.sg to ptr               ; 3 uses
  %i.sp = lshr i32 %i.sj, 6
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sq
  %.in.i.i.i.i.i = select i1 %i.sn, ptr %3, ptr %i.sr
  %i.ss = load i64, ptr %.in.i.i.i.i.i, align 8, !tbaa !9
  %i.st = and i64 %i.ss, %i.sm
  %.not.i.i = icmp eq i64 %i.st, 0
  br i1 %.not.i.i, label %bb.v, label %_ZN4llvh5APIntmIERKS0_.exit

bb.v:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit69
  br i1 %i.sn, label %_ZNK4llvh5APInt18isStrictlyPositiveEv.exit.thread671, label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %bb.v
  %i.su = zext i32 %i.si to i64
  %i.sv = add nuw nsw i64 %i.su, 63
  %i.sw = lshr i64 %i.sv, 6                       ; 4 uses
  %i.sx = trunc nuw nsw i64 %i.sw to i32
  %i.sy = shl i32 %i.sx, 6
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i70
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.x ], [ %i.sw, %.lr.ph.i.i.i.i70 ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.tf, %bb.x ], [ 0, %.lr.ph.i.i.i.i70 ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv.next.i.i.i
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !10 ; 2 uses
  %i.tb = icmp eq i64 %i.ta, 0
  br i1 %i.tb, label %bb.x, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.w
  %i.tc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ta, i1 true)
  %i.td = trunc nuw nsw i64 %i.tc to i32
  %i.te = or disjoint i32 %.019.i.i.i.i, %i.td
  br label %_ZNK4llvh5APInt18isStrictlyPositiveEv.exit

bb.x:                                             ; preds = %bb.w
  %i.tf = add i32 %.019.i.i.i.i, 64
  %i.tg = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.tg, label %bb.w, label %_ZNK4llvh5APInt18isStrictlyPositiveEv.exit, !llvm.loop !93

_ZNK4llvh5APInt18isStrictlyPositiveEv.exit:       ; preds = %bb.x, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.te, %.thread.i.i.i.i ], [ %i.sy, %bb.x ]
  %i.th = and i32 %i.si, 63
  %.not.i.i.i.i71 = icmp eq i32 %i.th, 0
  %.neg.i.i.i.i = or i32 %i.si, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i71, i32 0, i32 %.neg.i.i.i.i
  %i.ti = add i32 %.2.i.i.i.i, %.neg15.i.i.i.i
  %.not765 = icmp eq i32 %i.ti, %i.si
  br i1 %.not765, label %_ZN4llvh5APIntmIERKS0_.exit, label %.lr.ph.i.i72

_ZNK4llvh5APInt18isStrictlyPositiveEv.exit.thread671: ; preds = %bb.v
  %.not766 = icmp eq i64 %i.sg, 0
  br i1 %.not766, label %_ZN4llvh5APIntmIERKS0_.exit, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i: ; preds = %_ZNK4llvh5APInt18isStrictlyPositiveEv.exit.thread671
  %i.tj = sub i64 %i.sg, %i.oi
  %i.tk = sub nsw i32 0, %i.si
  %i.tl = and i32 %i.tk, 63
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = lshr i64 -1, %i.tm
  %i.to = and i64 %i.tj, %i.tn
  store i64 %i.to, ptr %3, align 8, !tbaa !9
  br label %_ZN4llvh5APIntmIERKS0_.exit

.lr.ph.i.i72:                                     ; preds = %_ZNK4llvh5APInt18isStrictlyPositiveEv.exit, %bb.aa
  %indvars.iv.i.i73 = phi i64 [ %indvars.iv.next.i.i74, %bb.aa ], [ 0, %_ZNK4llvh5APInt18isStrictlyPositiveEv.exit ] ; 3 uses
  %.022.i.i = phi i1 [ %i.tx, %bb.aa ], [ true, %_ZNK4llvh5APInt18isStrictlyPositiveEv.exit ]
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv.i.i73 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !10 ; 4 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %indvars.iv.i.i73
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !10 ; 3 uses
  br i1 %.022.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i72
  %.neg.i.i = xor i64 %i.ts, -1
  %i.tt = add i64 %i.tq, %.neg.i.i                ; 2 uses
  %i.tu = icmp uge i64 %i.tt, %i.tq
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i72
  %i.tv = sub i64 %i.tq, %i.ts
  %i.tw = icmp ugt i64 %i.ts, %i.tq
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i.i = phi i64 [ %i.tv, %bb.z ], [ %i.tt, %bb.y ]
  %.1.in.i.i = phi i1 [ %i.tw, %bb.z ], [ %i.tu, %bb.y ]
  store i64 %.sink.i.i, ptr %i.tp, align 8, !tbaa !10
  %indvars.iv.next.i.i74 = add nuw nsw i64 %indvars.iv.i.i73, 1 ; 2 uses
  %exitcond.not.i.i75 = icmp eq i64 %indvars.iv.next.i.i74, %i.sw
  %i.tx = xor i1 %.1.in.i.i, true
  br i1 %exitcond.not.i.i75, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i, label %.lr.ph.i.i72, !llvm.loop !26

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i:        ; preds = %bb.aa
  %i.ty = sub i32 0, %i.si
  %i.tz = and i32 %i.ty, 63
  %i.ua = zext nneg i32 %i.tz to i64
end_hunk_3
begin_hunk_4_@_ZN4llvh8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j:bb.a
_ZN4llvh5APIntD2Ev.exit85:                        ; preds = %bb.ai, %bb.ah, %_ZN4llvh5APIntD2Ev.exit83
  %i.zi = load i64, ptr %13, align 8              ; 4 uses
  store i64 %i.zi, ptr %10, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !7  ; 5 uses
  store i32 %i.zk, ptr %i.zb, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.zl = load i32, ptr %i.hw, align 8, !tbaa !7  ; 11 uses
  %i.zm = icmp ult i32 %i.zl, 65
  %i.zn = inttoptr i64 %i.zi to ptr               ; 3 uses
  br i1 %i.zm, label %_ZNK4llvh5APInt3sgtERKS0_.exit.thread679, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit85
  %i.zo = add i32 %i.zl, -1                       ; 2 uses
  %i.zp = and i32 %i.zo, 63
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = shl nuw i64 1, %i.zq
  %i.zs = load ptr, ptr %3, align 8               ; 4 uses
  %i.zt = lshr i32 %i.zo, 6
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.zu
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !9
  %i.zx = and i64 %i.zw, %i.zr
  %i.zy = icmp ne i64 %i.zx, 0                    ; 2 uses
  %i.zz = add i32 %i.zk, -1                       ; 2 uses
  %i.aaa = and i32 %i.zz, 63
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = shl nuw i64 1, %i.aab
  %i.aad = icmp ult i32 %i.zk, 65
  %i.aae = lshr i32 %i.zz, 6
  %i.aaf = zext nneg i32 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.aaf
  %.in.i.i.i11.i.i.i = select i1 %i.aad, ptr %10, ptr %i.aag
  %i.aah = load i64, ptr %.in.i.i.i11.i.i.i, align 8, !tbaa !9
  %i.aai = and i64 %i.aac, %i.aah
  %i.aaj = icmp ne i64 %i.aai, 0
  %i.aak = xor i1 %i.zy, %i.aaj
  br i1 %i.aak, label %_ZNK4llvh5APInt3sgtERKS0_.exit.thread676, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aal = zext i32 %i.zl to i64
  %i.aam = add nuw nsw i64 %i.aal, 63             ; 2 uses
  %i.aan = lshr i64 %i.aam, 6                     ; 6 uses
  %.not.i.i.i.i87958 = icmp eq i64 %i.aan, 0
  br i1 %.not.i.i.i.i87958, label %.lr.ph.preheader.i.i135, label %.lr.ph

bb.al:                                            ; preds = %.lr.ph
  %.not.i.i.i.i87 = icmp eq i64 %i.aao, 0
  br i1 %.not.i.i.i.i87, label %.lr.ph.preheader.i.i135, label %.lr.ph, !llvm.loop !84

.lr.ph:                                           ; preds = %bb.ak, %bb.al
  %indvars.iv.i.i.i.i86959 = phi i64 [ %i.aao, %bb.al ], [ %i.aan, %bb.ak ]
  %i.aao = add nsw i64 %indvars.iv.i.i.i.i86959, -1 ; 4 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.aao
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !10 ; 2 uses
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.aao
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.aaq, %i.aas
  br i1 %.not13.i.i.i.i, label %bb.al, label %_ZNK4llvh5APInt3sgtERKS0_.exit, !llvm.loop !84

_ZNK4llvh5APInt3sgtERKS0_.exit:                   ; preds = %.lr.ph
  %.not763 = icmp ugt i64 %i.aaq, %i.aas
  br i1 %.not763, label %bb.am, label %.lr.ph.preheader.i.i135

_ZNK4llvh5APInt3sgtERKS0_.exit.thread679:         ; preds = %_ZN4llvh5APIntD2Ev.exit85
  %i.aat = load i64, ptr %3, align 8, !tbaa !9    ; 3 uses
  %i.aau = sub nuw nsw i32 64, %i.zl
  %i.aav = zext nneg i32 %i.aau to i64            ; 2 uses
  %i.aaw = shl i64 %i.aat, %i.aav
  %i.aax = shl i64 %i.zi, %i.aav
  %.not764 = icmp sgt i64 %i.aaw, %i.aax
  br i1 %.not764, label %.thread681, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i146

.thread681:                                       ; preds = %_ZNK4llvh5APInt3sgtERKS0_.exit.thread679
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.aay = xor i64 %i.aat, -1
  %i.aaz = sub nsw i32 0, %i.zl
  %i.aba = and i32 %i.aaz, 63
  %i.abb = zext nneg i32 %i.aba to i64
  %i.abc = lshr i64 -1, %i.abb                    ; 2 uses
  %i.abd = and i64 %i.abc, %i.aay
  %i.abe = add i64 %i.abd, 1
  %i.abf = and i64 %i.abe, %i.abc
  br label %_ZN4llvhngENS_5APIntE.exit

_ZNK4llvh5APInt3sgtERKS0_.exit.thread676:         ; preds = %bb.aj
  br i1 %i.zy, label %_ZNK4llvh5APInt3sgtERKS0_.exit.thread676..lr.ph.preheader.i.i135_crit_edge, label %.thread678

_ZNK4llvh5APInt3sgtERKS0_.exit.thread676..lr.ph.preheader.i.i135_crit_edge: ; preds = %_ZNK4llvh5APInt3sgtERKS0_.exit.thread676
  %.pre816 = zext i32 %i.zl to i64
  %.pre818 = add nuw nsw i64 %.pre816, 63
  %.pre820 = lshr i64 %.pre818, 6
  br label %.lr.ph.preheader.i.i135

.thread678:                                       ; preds = %_ZNK4llvh5APInt3sgtERKS0_.exit.thread676
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %.pre810 = zext i32 %i.zl to i64
  %.pre812 = add nuw nsw i64 %.pre810, 63         ; 2 uses
  %.pre814 = lshr i64 %.pre812, 6
  br label %bb.an

bb.am:                                            ; preds = %_ZNK4llvh5APInt3sgtERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread678
  %.pre-phi815 = phi i64 [ %i.aan, %bb.am ], [ %.pre814, %.thread678 ] ; 6 uses
  %.pre-phi813 = phi i64 [ %i.aam, %bb.am ], [ %.pre812, %.thread678 ]
  %i.abg = lshr i64 %.pre-phi813, 3
  %i.abh = and i64 %i.abg, 1073741816             ; 2 uses
  %i.abi = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.abh) #22 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.abi, ptr nonnull align 8 %i.zs, i64 %i.abh, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %min.iters.check1004 = icmp samesign ult i64 %.pre-phi815, 4
  br i1 %min.iters.check1004, label %.lr.ph.i.i.i.i.i89.preheader, label %vector.ph1005

vector.ph1005:                                    ; preds = %bb.an
  %n.vec1007 = and i64 %.pre-phi815, 288230376151711740 ; 3 uses
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %vector.ph1005
  %index1009 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1012, %vector.body1008 ] ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %index1009 ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16 ; 2 uses
  %wide.load1010 = load <2 x i64>, ptr %i.abj, align 8, !tbaa !10, !noalias !702
  %wide.load1011 = load <2 x i64>, ptr %i.abk, align 8, !tbaa !10, !noalias !702
  %i.abl = xor <2 x i64> %wide.load1010, splat (i64 -1)
  %i.abm = xor <2 x i64> %wide.load1011, splat (i64 -1)
  store <2 x i64> %i.abl, ptr %i.abj, align 8, !tbaa !10, !noalias !702
  store <2 x i64> %i.abm, ptr %i.abk, align 8, !tbaa !10, !noalias !702
  %index.next1012 = add nuw i64 %index1009, 4     ; 2 uses
  %i.abn = icmp eq i64 %index.next1012, %n.vec1007
  br i1 %i.abn, label %middle.block1013, label %vector.body1008, !llvm.loop !705

middle.block1013:                                 ; preds = %vector.body1008
  %cmp.n1014 = icmp eq i64 %.pre-phi815, %n.vec1007
  br i1 %cmp.n1014, label %.lr.ph.preheader.i.i.i.i.i93, label %.lr.ph.i.i.i.i.i89.preheader

.lr.ph.i.i.i.i.i89.preheader:                     ; preds = %bb.an, %middle.block1013
  %indvars.iv.i.i.i.i.i90.ph = phi i64 [ 0, %bb.an ], [ %n.vec1007, %middle.block1013 ]
  br label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %.lr.ph.i.i.i.i.i89.preheader, %.lr.ph.i.i.i.i.i89
  %indvars.iv.i.i.i.i.i90 = phi i64 [ %indvars.iv.next.i.i.i.i.i91, %.lr.ph.i.i.i.i.i89 ], [ %indvars.iv.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i89.preheader ] ; 2 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv.i.i.i.i.i90 ; 2 uses
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !10, !noalias !702
  %i.abq = xor i64 %i.abp, -1
  store i64 %i.abq, ptr %i.abo, align 8, !tbaa !10, !noalias !702
  %indvars.iv.next.i.i.i.i.i91 = add nuw nsw i64 %indvars.iv.i.i.i.i.i90, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i92 = icmp eq i64 %indvars.iv.next.i.i.i.i.i91, %.pre-phi815
  br i1 %exitcond.not.i.i.i.i.i92, label %.lr.ph.preheader.i.i.i.i.i93, label %.lr.ph.i.i.i.i.i89, !llvm.loop !706

.lr.ph.preheader.i.i.i.i.i93:                     ; preds = %.lr.ph.i.i.i.i.i89, %middle.block1013
  %i.abr = ptrtoint ptr %i.abi to i64
  %i.abs = sub i32 0, %i.zl
  %i.abt = and i32 %i.abs, 63
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = lshr i64 -1, %i.abu                    ; 2 uses
  %i.abw = add nuw nsw i64 %.pre-phi815, 4294967295
  %i.abx = and i64 %i.abw, 4294967295
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %i.abx ; 4 uses
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !10, !noalias !702
  %i.aca = and i64 %i.abz, %i.abv
  store i64 %i.aca, ptr %i.aby, align 8, !tbaa !10, !noalias !702
  %i.acb = load i64, ptr %i.abi, align 8, !tbaa !10, !noalias !702
  %i.acc = add i64 %i.acb, 1                      ; 2 uses
  store i64 %i.acc, ptr %i.abi, align 8, !tbaa !10, !noalias !702
  %.not.peel.i.i.i.i.i94 = icmp eq i64 %i.acc, 0
  br i1 %.not.peel.i.i.i.i.i94, label %.lr.ph.i.i.i2.i.i96, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i

.lr.ph.i.i.i2.i.i96:                              ; preds = %.lr.ph.preheader.i.i.i.i.i93, %.lr.ph.i.i.i2.i.i96
  %indvars.iv.i.i.i3.i.i97 = phi i64 [ %indvars.iv.next.i.i.i4.i.i99, %.lr.ph.i.i.i2.i.i96 ], [ 1, %.lr.ph.preheader.i.i.i.i.i93 ] ; 2 uses
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv.i.i.i3.i.i97 ; 2 uses
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !10, !noalias !702
  %i.acf = add i64 %i.ace, 1                      ; 2 uses
  store i64 %i.acf, ptr %i.acd, align 8, !tbaa !10, !noalias !702
  %.not.i.i.i.i.i98 = icmp ne i64 %i.acf, 0
  %indvars.iv.next.i.i.i4.i.i99 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i97, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i100 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i99, %.pre-phi815
  %or.cond.i.i.i101 = select i1 %.not.i.i.i.i.i98, i1 true, i1 %exitcond.not.i.i.i5.i.i100
  br i1 %or.cond.i.i.i101, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i, label %.lr.ph.i.i.i2.i.i96, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i2.i.i96, %.lr.ph.preheader.i.i.i.i.i93
  %i.acg = load i64, ptr %i.aby, align 8, !tbaa !10, !noalias !702
  %i.ach = and i64 %i.acg, %i.abv
  store i64 %i.ach, ptr %i.aby, align 8, !tbaa !10, !noalias !702
  br label %_ZN4llvhngENS_5APIntE.exit

_ZN4llvhngENS_5APIntE.exit:                       ; preds = %.thread681, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i
  %.sroa.0625.1 = phi i64 [ %i.abf, %.thread681 ], [ %i.abr, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i ]
  %i.aci = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 %i.zl, ptr %i.aci, align 8, !tbaa !7, !alias.scope !702
  store i64 %.sroa.0625.1, ptr %15, align 8, !alias.scope !702
  call fastcc void @"_ZZN4llvh8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_jENK3$_0clERKS1_S4_"(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %6)
  %i.acj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 8, !tbaa !7, !noalias !707 ; 5 uses
  %i.acl = icmp ult i32 %i.ack, 65                ; 2 uses
  br i1 %i.acl, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i116, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvhngENS_5APIntE.exit
  %i.acm = load ptr, ptr %14, align 8, !noalias !707 ; 7 uses
  %i.acn = zext i32 %i.ack to i64
  %i.aco = add nuw nsw i64 %i.acn, 63
  %i.acp = lshr i64 %i.aco, 6                     ; 5 uses
  %i.acq = ptrtoint ptr %i.acm to i64
  %min.iters.check1017 = icmp ult i32 %i.ack, 193
  br i1 %min.iters.check1017, label %.lr.ph.i.i.i.i.i102.preheader, label %vector.ph1018

vector.ph1018:                                    ; preds = %bb.ao
  %n.vec1020 = and i64 %i.acp, 134217724          ; 3 uses
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1018
  %index1022 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1025, %vector.body1021 ] ; 2 uses
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %index1022 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16 ; 2 uses
  %wide.load1023 = load <2 x i64>, ptr %i.acr, align 8, !tbaa !10, !noalias !707
  %wide.load1024 = load <2 x i64>, ptr %i.acs, align 8, !tbaa !10, !noalias !707
  %i.act = xor <2 x i64> %wide.load1023, splat (i64 -1)
  %i.acu = xor <2 x i64> %wide.load1024, splat (i64 -1)
  store <2 x i64> %i.act, ptr %i.acr, align 8, !tbaa !10, !noalias !707
  store <2 x i64> %i.acu, ptr %i.acs, align 8, !tbaa !10, !noalias !707
  %index.next1025 = add nuw i64 %index1022, 4     ; 2 uses
  %i.acv = icmp eq i64 %index.next1025, %n.vec1020
  br i1 %i.acv, label %middle.block1026, label %vector.body1021, !llvm.loop !710

middle.block1026:                                 ; preds = %vector.body1021
  %cmp.n1027 = icmp eq i64 %i.acp, %n.vec1020
  br i1 %cmp.n1027, label %.lr.ph.preheader.i.i.i.i.i106, label %.lr.ph.i.i.i.i.i102.preheader

.lr.ph.i.i.i.i.i102.preheader:                    ; preds = %bb.ao, %middle.block1026
  %indvars.iv.i.i.i.i.i103.ph = phi i64 [ 0, %bb.ao ], [ %n.vec1020, %middle.block1026 ]
  br label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.lr.ph.i.i.i.i.i102.preheader, %.lr.ph.i.i.i.i.i102
  %indvars.iv.i.i.i.i.i103 = phi i64 [ %indvars.iv.next.i.i.i.i.i104, %.lr.ph.i.i.i.i.i102 ], [ %indvars.iv.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i102.preheader ] ; 2 uses
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %indvars.iv.i.i.i.i.i103 ; 2 uses
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !10, !noalias !707
  %i.acy = xor i64 %i.acx, -1
  store i64 %i.acy, ptr %i.acw, align 8, !tbaa !10, !noalias !707
  %indvars.iv.next.i.i.i.i.i104 = add nuw nsw i64 %indvars.iv.i.i.i.i.i103, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i105 = icmp eq i64 %indvars.iv.next.i.i.i.i.i104, %i.acp
  br i1 %exitcond.not.i.i.i.i.i105, label %.lr.ph.preheader.i.i.i.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !711

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i116: ; preds = %_ZN4llvhngENS_5APIntE.exit
  %i.acz = load i64, ptr %14, align 8, !tbaa !9, !noalias !707
  %i.ada = xor i64 %i.acz, -1
  %i.adb = sub nsw i32 0, %i.ack
  %i.adc = and i32 %i.adb, 63
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = lshr i64 -1, %i.add                    ; 2 uses
  %i.adf = and i64 %i.ade, %i.ada
  %i.adg = add i64 %i.adf, 1
  %i.adh = and i64 %i.adg, %i.ade                 ; 2 uses
  store i64 %i.adh, ptr %14, align 8, !tbaa !9, !noalias !707
  br label %_ZN4llvhngENS_5APIntE.exit117

.lr.ph.preheader.i.i.i.i.i106:                    ; preds = %.lr.ph.i.i.i.i.i102, %middle.block1026
  %i.adi = sub i32 0, %i.ack
  %i.adj = and i32 %i.adi, 63
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = lshr i64 -1, %i.adk                    ; 2 uses
  %i.adm = add nuw nsw i64 %i.acp, 4294967295
  %i.adn = and i64 %i.adm, 4294967295
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %i.adn ; 4 uses
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !10, !noalias !707
  %i.adq = and i64 %i.adp, %i.adl
  store i64 %i.adq, ptr %i.ado, align 8, !tbaa !10, !noalias !707
  %i.adr = load i64, ptr %i.acm, align 8, !tbaa !10, !noalias !707
  %i.ads = add i64 %i.adr, 1                      ; 2 uses
  store i64 %i.ads, ptr %i.acm, align 8, !tbaa !10, !noalias !707
  %.not.peel.i.i.i.i.i107 = icmp eq i64 %i.ads, 0
  br i1 %.not.peel.i.i.i.i.i107, label %.lr.ph.i.i.i2.i.i110, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i108

.lr.ph.i.i.i2.i.i110:                             ; preds = %.lr.ph.preheader.i.i.i.i.i106, %.lr.ph.i.i.i2.i.i110
  %indvars.iv.i.i.i3.i.i111 = phi i64 [ %indvars.iv.next.i.i.i4.i.i113, %.lr.ph.i.i.i2.i.i110 ], [ 1, %.lr.ph.preheader.i.i.i.i.i106 ] ; 2 uses
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %indvars.iv.i.i.i3.i.i111 ; 2 uses
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !10, !noalias !707
  %i.adv = add i64 %i.adu, 1                      ; 2 uses
  store i64 %i.adv, ptr %i.adt, align 8, !tbaa !10, !noalias !707
  %.not.i.i.i.i.i112 = icmp ne i64 %i.adv, 0
  %indvars.iv.next.i.i.i4.i.i113 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i111, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i114 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i113, %i.acp
  %or.cond.i.i.i115 = select i1 %.not.i.i.i.i.i112, i1 true, i1 %exitcond.not.i.i.i5.i.i114
  br i1 %or.cond.i.i.i115, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i108, label %.lr.ph.i.i.i2.i.i110, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i108: ; preds = %.lr.ph.i.i.i2.i.i110, %.lr.ph.preheader.i.i.i.i.i106
  %i.adw = load i64, ptr %i.ado, align 8, !tbaa !10, !noalias !707
  %i.adx = and i64 %i.adw, %i.adl
  store i64 %i.adx, ptr %i.ado, align 8, !tbaa !10, !noalias !707
  br label %_ZN4llvhngENS_5APIntE.exit117

_ZN4llvhngENS_5APIntE.exit117:                    ; preds = %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i116, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i108
  %i.ady = phi i64 [ %i.adh, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i116 ], [ %i.acq, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i108 ] ; 4 uses
  store i32 0, ptr %i.acj, align 8, !tbaa !7, !noalias !707
  %i.adz = load i32, ptr %i.hw, align 8, !tbaa !7 ; 4 uses
  %i.aea = icmp ult i32 %i.adz, 65
  br i1 %i.aea, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i129, label %.lr.ph.preheader.i.i118

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i129: ; preds = %_ZN4llvhngENS_5APIntE.exit117
  %i.aeb = load i64, ptr %3, align 8, !tbaa !9
  %i.aec = sub i64 %i.aeb, %i.ady
  %i.aed = sub nsw i32 0, %i.adz
  %i.aee = and i32 %i.aed, 63
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = lshr i64 -1, %i.aef
  %i.aeh = and i64 %i.aec, %i.aeg
  store i64 %i.aeh, ptr %3, align 8, !tbaa !9
  br label %_ZN4llvh5APIntmIERKS0_.exit130

.lr.ph.preheader.i.i118:                          ; preds = %_ZN4llvhngENS_5APIntE.exit117
  %i.aei = load ptr, ptr %3, align 8, !tbaa !9
  %i.aej = inttoptr i64 %i.ady to ptr
  %i.aek = zext i32 %i.adz to i64
  %i.ael = add nuw nsw i64 %i.aek, 63
  %i.aem = lshr i64 %i.ael, 6                     ; 2 uses
  br label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %bb.ar, %.lr.ph.preheader.i.i118
  %indvars.iv.i.i120 = phi i64 [ 0, %.lr.ph.preheader.i.i118 ], [ %indvars.iv.next.i.i125, %bb.ar ] ; 3 uses
  %.022.i.i121 = phi i1 [ true, %.lr.ph.preheader.i.i118 ], [ %i.aev, %bb.ar ]
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.aei, i64 %indvars.iv.i.i120 ; 2 uses
  %i.aeo = load i64, ptr %i.aen, align 8, !tbaa !10 ; 4 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aej, i64 %indvars.iv.i.i120
  %i.aeq = load i64, ptr %i.aep, align 8, !tbaa !10 ; 3 uses
  br i1 %.022.i.i121, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i119
  %.neg.i.i122 = xor i64 %i.aeq, -1
  %i.aer = add i64 %i.aeo, %.neg.i.i122           ; 2 uses
  %i.aes = icmp uge i64 %i.aer, %i.aeo
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i119
  %i.aet = sub i64 %i.aeo, %i.aeq
  %i.aeu = icmp ugt i64 %i.aeq, %i.aeo
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i.i123 = phi i64 [ %i.aet, %bb.aq ], [ %i.aer, %bb.ap ]
  %.1.in.i.i124 = phi i1 [ %i.aeu, %bb.aq ], [ %i.aes, %bb.ap ]
  store i64 %.sink.i.i123, ptr %i.aen, align 8, !tbaa !10
  %indvars.iv.next.i.i125 = add nuw nsw i64 %indvars.iv.i.i120, 1 ; 2 uses
  %exitcond.not.i.i126 = icmp eq i64 %indvars.iv.next.i.i125, %i.aem
  %i.aev = xor i1 %.1.in.i.i124, true
  br i1 %exitcond.not.i.i126, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i127, label %.lr.ph.i.i119, !llvm.loop !26

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i127:     ; preds = %bb.ar
  %i.aew = sub i32 0, %i.adz
  %i.aex = and i32 %i.aew, 63
  %i.aey = zext nneg i32 %i.aex to i64
  %i.aez = lshr i64 -1, %i.aey
  %i.afa = load ptr, ptr %3, align 8, !tbaa !9
  %i.afb = add nuw nsw i64 %i.aem, 4294967295
  %i.afc = and i64 %i.afb, 4294967295
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %i.afc ; 2 uses
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !10
  %i.aff = and i64 %i.afe, %i.aez
  store i64 %i.aff, ptr %i.afd, align 8, !tbaa !10
  br label %_ZN4llvh5APIntmIERKS0_.exit130

_ZN4llvh5APIntmIERKS0_.exit130:                   ; preds = %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i129, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i127
  %i.afg = icmp eq i64 %i.ady, 0
  %or.cond769 = select i1 %i.acl, i1 true, i1 %i.afg
  br i1 %or.cond769, label %_ZN4llvh5APIntD2Ev.exit132, label %bb.as

bb.as:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit130
  %i.afh = inttoptr i64 %i.ady to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.afh) #23
  br label %_ZN4llvh5APIntD2Ev.exit132

_ZN4llvh5APIntD2Ev.exit132:                       ; preds = %bb.as, %_ZN4llvh5APIntmIERKS0_.exit130
  %i.afi = load i32, ptr %i.aci, align 8, !tbaa !7
  %i.afj = icmp ugt i32 %i.afi, 64
  br i1 %i.afj, label %bb.at, label %_ZN4llvh5APIntD2Ev.exit134

bb.at:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit132
  %i.afk = load ptr, ptr %15, align 8, !tbaa !9   ; 2 uses
  %i.afl = icmp eq ptr %i.afk, null
  br i1 %i.afl, label %_ZN4llvh5APIntD2Ev.exit134, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.afk) #23
  br label %_ZN4llvh5APIntD2Ev.exit134

_ZN4llvh5APIntD2Ev.exit134:                       ; preds = %bb.au, %bb.at, %_ZN4llvh5APIntD2Ev.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %.pre = load i32, ptr %i.zb, align 8, !tbaa !7
  br label %_ZN4llvh5APIntmIERKS0_.exit147

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i146: ; preds = %_ZNK4llvh5APInt3sgtERKS0_.exit.thread679
  %i.afm = sub i64 %i.aat, %i.zi
  %i.afn = sub nsw i32 0, %i.zl
  %i.afo = and i32 %i.afn, 63
  %i.afp = zext nneg i32 %i.afo to i64
  %i.afq = lshr i64 -1, %i.afp
  %i.afr = and i64 %i.afm, %i.afq
  store i64 %i.afr, ptr %3, align 8, !tbaa !9
  br label %_ZN4llvh5APIntmIERKS0_.exit147

.lr.ph.preheader.i.i135:                          ; preds = %bb.al, %bb.ak, %_ZNK4llvh5APInt3sgtERKS0_.exit.thread676..lr.ph.preheader.i.i135_crit_edge, %_ZNK4llvh5APInt3sgtERKS0_.exit
end_hunk_4
begin_hunk_5_@_ZN4llvh8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j:bb.a
  %i.aim = icmp eq i64 %i.ail, 0
  %i.ain = shl i64 %i.ail, 2
  %i.aio = add i64 %i.ain, %.06985.i.i481.epil.init
  %.067.i.i484.epil = select i1 %i.aim, i64 %.06985.i.i481.epil.init, i64 %i.aio
  store i64 %.067.i.i484.epil, ptr %i.aik, align 8, !tbaa !10, !noalias !718
  br label %_ZN4llvh5APIntmLEm.exit494

_ZN4llvh5APIntmLEm.exit494:                       ; preds = %_ZN4llvh5APIntmLEm.exit494.unr-lcssa, %.lr.ph.split.split.i.i479.epil.preheader
  %.pn.in.in.i489 = sub i32 0, %i.agq
  %.pn.in.i490 = and i32 %.pn.in.in.i489, 63
  %.pn.i491 = zext nneg i32 %.pn.in.i490 to i64
  %i.aip = lshr i64 -1, %.pn.i491                 ; 5 uses
  %i.aiq = add nuw nsw i64 %i.ahp, 4294967295
  %i.air = and i64 %i.aiq, 4294967295             ; 2 uses
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.ahn, i64 %i.air ; 2 uses
  %i.ait = load i64, ptr %i.ais, align 8, !tbaa !10, !noalias !718
  %i.aiu = and i64 %i.ait, %i.aip
  store i64 %i.aiu, ptr %i.ais, align 8, !tbaa !10, !noalias !718
  %i.aiv = trunc nuw nsw i64 %i.ahp to i32        ; 2 uses
  %i.aiw = shl nuw nsw i64 %i.ahp, 3              ; 2 uses
  %i.aix = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aiw) #22, !noalias !712 ; 14 uses
  %i.aiy = load ptr, ptr %3, align 8, !tbaa !9, !noalias !712
  store i64 0, ptr %i.aix, align 8, !tbaa !10, !noalias !712
  %scevgep.i.i.i151 = getelementptr i8, ptr %i.aix, i64 8
  %i.aiz = add nuw nsw i64 %i.aiw, 34359738360
  %i.aja = and i64 %i.aiz, 34359738360
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i151, i8 0, i64 %i.aja, i1 false), !tbaa !10, !noalias !712
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152, %_ZN4llvh5APIntmLEm.exit494
  %indvars.iv.i.i153 = phi i64 [ 0, %_ZN4llvh5APIntmLEm.exit494 ], [ %indvars.iv.next.i.i154, %.lr.ph.i.i152 ] ; 4 uses
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %indvars.iv.i.i153
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %indvars.iv.i.i153
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !10, !noalias !712
  %i.aje = trunc i64 %indvars.iv.i.i153 to i32
  %i.ajf = sub i32 %i.aiv, %i.aje
  %i.ajg = call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.ajb, ptr noundef nonnull readonly %i.ahn, i64 noundef %i.ajd, i64 noundef 0, i32 noundef %i.aiv, i32 noundef %i.ajf, i1 noundef zeroext true), !noalias !712 ; 0 uses
  %indvars.iv.next.i.i154 = add nuw nsw i64 %indvars.iv.i.i153, 1 ; 2 uses
  %exitcond.not.i.i155 = icmp eq i64 %indvars.iv.next.i.i154, %i.ahp
  br i1 %exitcond.not.i.i155, label %bb.bd, label %.lr.ph.i.i152, !llvm.loop !27

bb.bd:                                            ; preds = %.lr.ph.i.i152
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %i.air ; 8 uses
  %i.aji = load i64, ptr %i.ajh, align 8, !tbaa !10, !noalias !712
  %i.ajj = and i64 %i.aji, %i.aip
  store i64 %i.ajj, ptr %i.ajh, align 8, !tbaa !10, !noalias !712
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %min.iters.check1030 = icmp ult i32 %i.agq, 193
  br i1 %min.iters.check1030, label %.lr.ph.i.i.i.i.i159.preheader, label %vector.ph1031

vector.ph1031:                                    ; preds = %bb.bd
  %n.vec1033 = and i64 %i.ahp, 134217724          ; 3 uses
  br label %vector.body1034

vector.body1034:                                  ; preds = %vector.body1034, %vector.ph1031
  %index1035 = phi i64 [ 0, %vector.ph1031 ], [ %index.next1038, %vector.body1034 ] ; 2 uses
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %index1035 ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16 ; 2 uses
  %wide.load1036 = load <2 x i64>, ptr %i.ajk, align 8, !tbaa !10, !noalias !715
  %wide.load1037 = load <2 x i64>, ptr %i.ajl, align 8, !tbaa !10, !noalias !715
  %i.ajm = xor <2 x i64> %wide.load1036, splat (i64 -1)
  %i.ajn = xor <2 x i64> %wide.load1037, splat (i64 -1)
  store <2 x i64> %i.ajm, ptr %i.ajk, align 8, !tbaa !10, !noalias !715
  store <2 x i64> %i.ajn, ptr %i.ajl, align 8, !tbaa !10, !noalias !715
  %index.next1038 = add nuw i64 %index1035, 4     ; 2 uses
  %i.ajo = icmp eq i64 %index.next1038, %n.vec1033
  br i1 %i.ajo, label %middle.block1039, label %vector.body1034, !llvm.loop !721

middle.block1039:                                 ; preds = %vector.body1034
  %cmp.n1040 = icmp eq i64 %i.ahp, %n.vec1033
  br i1 %cmp.n1040, label %.lr.ph.preheader.i.i.i.i.i163, label %.lr.ph.i.i.i.i.i159.preheader

.lr.ph.i.i.i.i.i159.preheader:                    ; preds = %bb.bd, %middle.block1039
  %indvars.iv.i.i.i.i.i160.ph = phi i64 [ 0, %bb.bd ], [ %n.vec1033, %middle.block1039 ]
  br label %.lr.ph.i.i.i.i.i159

.lr.ph.i.i.i.i.i159:                              ; preds = %.lr.ph.i.i.i.i.i159.preheader, %.lr.ph.i.i.i.i.i159
  %indvars.iv.i.i.i.i.i160 = phi i64 [ %indvars.iv.next.i.i.i.i.i161, %.lr.ph.i.i.i.i.i159 ], [ %indvars.iv.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i159.preheader ] ; 2 uses
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %indvars.iv.i.i.i.i.i160 ; 2 uses
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !10, !noalias !715
  %i.ajr = xor i64 %i.ajq, -1
  store i64 %i.ajr, ptr %i.ajp, align 8, !tbaa !10, !noalias !715
  %indvars.iv.next.i.i.i.i.i161 = add nuw nsw i64 %indvars.iv.i.i.i.i.i160, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i162 = icmp eq i64 %indvars.iv.next.i.i.i.i.i161, %i.ahp
  br i1 %exitcond.not.i.i.i.i.i162, label %.lr.ph.preheader.i.i.i.i.i163, label %.lr.ph.i.i.i.i.i159, !llvm.loop !722

.lr.ph.preheader.i.i.i.i.i163:                    ; preds = %.lr.ph.i.i.i.i.i159, %middle.block1039
  %i.ajs = ptrtoint ptr %i.aix to i64             ; 2 uses
  %i.ajt = load i64, ptr %i.ajh, align 8, !tbaa !10, !noalias !715
  %i.aju = and i64 %i.ajt, %i.aip
  store i64 %i.aju, ptr %i.ajh, align 8, !tbaa !10, !noalias !715
  %i.ajv = load i64, ptr %i.aix, align 8, !tbaa !10, !noalias !715
  %i.ajw = add i64 %i.ajv, 1                      ; 2 uses
  store i64 %i.ajw, ptr %i.aix, align 8, !tbaa !10, !noalias !715
  %.not.peel.i.i.i.i.i164 = icmp eq i64 %i.ajw, 0
  br i1 %.not.peel.i.i.i.i.i164, label %.lr.ph.i.i.i2.i.i175, label %.lr.ph.preheader.i.i.i165

.lr.ph.i.i.i2.i.i175:                             ; preds = %.lr.ph.preheader.i.i.i.i.i163, %.lr.ph.i.i.i2.i.i175
  %indvars.iv.i.i.i3.i.i176 = phi i64 [ %indvars.iv.next.i.i.i4.i.i178, %.lr.ph.i.i.i2.i.i175 ], [ 1, %.lr.ph.preheader.i.i.i.i.i163 ] ; 2 uses
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %indvars.iv.i.i.i3.i.i176 ; 2 uses
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !10, !noalias !715
  %i.ajz = add i64 %i.ajy, 1                      ; 2 uses
  store i64 %i.ajz, ptr %i.ajx, align 8, !tbaa !10, !noalias !715
  %.not.i.i.i.i.i177 = icmp ne i64 %i.ajz, 0
  %indvars.iv.next.i.i.i4.i.i178 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i176, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i179 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i178, %i.ahp
  %or.cond.i.i.i180 = select i1 %.not.i.i.i.i.i177, i1 true, i1 %exitcond.not.i.i.i5.i.i179
  br i1 %or.cond.i.i.i180, label %.lr.ph.preheader.i.i.i165, label %.lr.ph.i.i.i2.i.i175, !llvm.loop !16

.lr.ph.preheader.i.i.i165:                        ; preds = %.lr.ph.i.i.i2.i.i175, %.lr.ph.preheader.i.i.i.i.i163
  %i.aka = load i64, ptr %i.ajh, align 8, !tbaa !10, !noalias !715
  %i.akb = and i64 %i.aka, %i.aip
  store i64 %i.akb, ptr %i.ajh, align 8, !tbaa !10, !noalias !715
  %i.akc = icmp eq i64 %i.ahq, 0
  br i1 %i.akc, label %.lr.ph.i.i.i166.epil.preheader, label %.lr.ph.preheader.i.i.i165.new

.lr.ph.preheader.i.i.i165.new:                    ; preds = %.lr.ph.preheader.i.i.i165
  %unroll_iter1122 = and i64 %i.ahp, 134217726
  br label %.lr.ph.i.i.i166

.lr.ph.i.i.i166:                                  ; preds = %.lr.ph.i.i.i166, %.lr.ph.preheader.i.i.i165.new
  %indvars.iv.i.i.i167 = phi i64 [ 0, %.lr.ph.preheader.i.i.i165.new ], [ %indvars.iv.next.i.i.i171.1, %.lr.ph.i.i.i166 ] ; 4 uses
  %.022.i.i.i168 = phi i1 [ true, %.lr.ph.preheader.i.i.i165.new ], [ %.1.in.i.i.i170.1, %.lr.ph.i.i.i166 ] ; 2 uses
  %niter1123 = phi i64 [ 0, %.lr.ph.preheader.i.i.i165.new ], [ %niter1123.next.1, %.lr.ph.i.i.i166 ]
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %indvars.iv.i.i.i167 ; 2 uses
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !10, !noalias !715 ; 3 uses
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.i.i.i167
  %i.akg = load i64, ptr %i.akf, align 8, !tbaa !10, !noalias !715
  %i.akh = add i64 %i.akg, %i.ake                 ; 3 uses
  %i.aki = icmp uge i64 %i.akh, %i.ake
  %i.akj = add i64 %i.akh, 1                      ; 2 uses
  %i.akk = icmp ugt i64 %i.akj, %i.ake
  %.sink.i.i.i169 = select i1 %.022.i.i.i168, i64 %i.akh, i64 %i.akj
  %.1.in.i.i.i170 = select i1 %.022.i.i.i168, i1 %i.aki, i1 %i.akk ; 2 uses
  store i64 %.sink.i.i.i169, ptr %i.akd, align 8, !tbaa !10, !noalias !715
  %indvars.iv.next.i.i.i171 = or disjoint i64 %indvars.iv.i.i.i167, 1 ; 2 uses
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %indvars.iv.next.i.i.i171 ; 2 uses
  %i.akm = load i64, ptr %i.akl, align 8, !tbaa !10, !noalias !715 ; 3 uses
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.next.i.i.i171
  %i.ako = load i64, ptr %i.akn, align 8, !tbaa !10, !noalias !715
  %i.akp = add i64 %i.ako, %i.akm                 ; 3 uses
  %i.akq = icmp uge i64 %i.akp, %i.akm
  %i.akr = add i64 %i.akp, 1                      ; 2 uses
  %i.aks = icmp ugt i64 %i.akr, %i.akm
  %.sink.i.i.i169.1 = select i1 %.1.in.i.i.i170, i64 %i.akp, i64 %i.akr
  %.1.in.i.i.i170.1 = select i1 %.1.in.i.i.i170, i1 %i.akq, i1 %i.aks ; 2 uses
  store i64 %.sink.i.i.i169.1, ptr %i.akl, align 8, !tbaa !10, !noalias !715
  %indvars.iv.next.i.i.i171.1 = add nuw nsw i64 %indvars.iv.i.i.i167, 2 ; 2 uses
  %niter1123.next.1 = add i64 %niter1123, 2       ; 2 uses
  %niter1123.ncmp.1 = icmp eq i64 %niter1123.next.1, %unroll_iter1122
  br i1 %niter1123.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i166, !llvm.loop !25

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i166
  %i.akt = and i64 %i.ahk, 64
  %lcmp.mod1120.not = icmp eq i64 %i.akt, 0
  br i1 %lcmp.mod1120.not, label %bb.be, label %.lr.ph.i.i.i166.epil.preheader

.lr.ph.i.i.i166.epil.preheader:                   ; preds = %.unr-lcssa, %.lr.ph.preheader.i.i.i165
  %indvars.iv.i.i.i167.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i165 ], [ %indvars.iv.next.i.i.i171.1, %.unr-lcssa ] ; 2 uses
  %.022.i.i.i168.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i165 ], [ %.1.in.i.i.i170.1, %.unr-lcssa ]
  %lcmp.mod1121 = trunc i64 %i.ahp to i1
  call void @llvm.assume(i1 %lcmp.mod1121)
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %indvars.iv.i.i.i167.epil.init ; 2 uses
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !10, !noalias !715
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv.i.i.i167.epil.init
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !10, !noalias !715
  %i.aky = add i64 %i.akx, %i.akv
  %not..022.i.i.i168.epil.init = xor i1 %.022.i.i.i168.epil.init, true
  %i.akz = zext i1 %not..022.i.i.i168.epil.init to i64
  %.sink.i.i.i169.epil = add i64 %i.aky, %i.akz
  store i64 %.sink.i.i.i169.epil, ptr %i.aku, align 8, !tbaa !10, !noalias !715
  br label %bb.be

bb.be:                                            ; preds = %.unr-lcssa, %.lr.ph.i.i.i166.epil.preheader
  %i.ala = load i64, ptr %i.ajh, align 8, !tbaa !10, !noalias !715
  %i.alb = and i64 %i.ala, %i.aip
  store i64 %i.alb, ptr %i.ajh, align 8, !tbaa !10, !noalias !715
  %i.alc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.agq, ptr %i.alc, align 8, !tbaa !7, !alias.scope !715
  store i64 %i.ajs, ptr %16, align 8, !alias.scope !715
  call void @_ZdaPv(ptr noundef nonnull %i.ahn) #23
  br label %_ZN4llvh5APIntD2Ev.exit185

_ZN4llvh5APIntD2Ev.exit185:                       ; preds = %bb.be, %_ZN4llvh5APIntmLEm.exit494.thread
  %i.ald = phi ptr [ %i.ahi, %_ZN4llvh5APIntmLEm.exit494.thread ], [ %i.aix, %bb.be ] ; 5 uses
  %i.ale = phi i64 [ %i.ahg, %_ZN4llvh5APIntmLEm.exit494.thread ], [ %i.ajs, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZNK4llvh5APInt4sqrtEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %17, ptr noundef nonnull align 8 dereferenceable(12) %16)
  %i.alf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !7, !noalias !723 ; 12 uses
  %i.alh = icmp ult i32 %i.alg, 65                ; 3 uses
  br i1 %i.alh, label %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i186

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i186:     ; preds = %_ZN4llvh5APIntD2Ev.exit185
  %i.ali = zext i32 %i.alg to i64
  %i.alj = add nuw nsw i64 %i.ali, 63             ; 2 uses
  %i.alk = lshr i64 %i.alj, 6                     ; 7 uses
  %i.all = trunc nuw nsw i64 %i.alk to i32        ; 2 uses
  %i.alm = shl nuw nsw i64 %i.alk, 3              ; 2 uses
  %i.aln = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.alm) #22, !noalias !723 ; 8 uses
  %i.alo = load ptr, ptr %17, align 8, !noalias !723 ; 12 uses
  store i64 0, ptr %i.aln, align 8, !tbaa !10, !noalias !723
  %scevgep.i.i.i187 = getelementptr i8, ptr %i.aln, i64 8
  %i.alp = add nuw nsw i64 %i.alm, 34359738360
  %i.alq = and i64 %i.alp, 34359738360
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i187, i8 0, i64 %i.alq, i1 false), !tbaa !10, !noalias !723
  %i.alr = ptrtoint ptr %i.alo to i64             ; 5 uses
  br label %.lr.ph.i.i188

.lr.ph.i.i188:                                    ; preds = %.lr.ph.i.i188, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i186
  %indvars.iv.i.i189 = phi i64 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i186 ], [ %indvars.iv.next.i.i190, %.lr.ph.i.i188 ] ; 4 uses
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.aln, i64 %indvars.iv.i.i189
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %indvars.iv.i.i189
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !10, !noalias !723
  %i.alv = trunc i64 %indvars.iv.i.i189 to i32
  %i.alw = sub i32 %i.all, %i.alv
  %i.alx = call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.als, ptr noundef readonly %i.alo, i64 noundef %i.alu, i64 noundef 0, i32 noundef %i.all, i32 noundef %i.alw, i1 noundef zeroext true), !noalias !723 ; 0 uses
  %indvars.iv.next.i.i190 = add nuw nsw i64 %indvars.iv.i.i189, 1 ; 2 uses
  %exitcond.not.i.i191 = icmp eq i64 %indvars.iv.next.i.i190, %i.alk
  br i1 %exitcond.not.i.i191, label %bb.bf, label %.lr.ph.i.i188, !llvm.loop !27

bb.bf:                                            ; preds = %.lr.ph.i.i188
  %i.aly = ptrtoint ptr %i.aln to i64             ; 5 uses
  %i.alz = sub i32 0, %i.alg
  %i.ama = and i32 %i.alz, 63
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = lshr i64 -1, %i.amb                    ; 2 uses
  %i.amd = add nuw nsw i64 %i.alk, 4294967295
  %i.ame = and i64 %i.amd, 4294967295             ; 2 uses
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.aln, i64 %i.ame ; 2 uses
  %i.amg = load i64, ptr %i.amf, align 8, !tbaa !10, !noalias !723
  %i.amh = and i64 %i.amg, %i.amc
  store i64 %i.amh, ptr %i.amf, align 8, !tbaa !10, !noalias !723
  %i.ami = lshr i64 %i.alj, 3
  %.idx.i.i.i = and i64 %i.ami, 1073741816
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aln, ptr %i.ald, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i, 0 ; 5 uses
  %i.amj = add i32 %i.alg, -1                     ; 2 uses
  %i.amk = and i32 %i.amj, 63
  %i.aml = zext nneg i32 %i.amk to i64
  %i.amm = shl nuw i64 1, %i.aml
  %i.amn = lshr i32 %i.amj, 6
  %i.amo = zext nneg i32 %i.amn to i64
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.aln, i64 %i.amo
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !9
  %i.amr = and i64 %i.amq, %i.amm
  %i.ams = icmp ne i64 %i.amr, 0                  ; 2 uses
  %i.amt = add i32 %i.agq, -1                     ; 2 uses
  %i.amu = and i32 %i.amt, 63
  %i.amv = zext nneg i32 %i.amu to i64
  %i.amw = shl nuw i64 1, %i.amv
  %i.amx = lshr i32 %i.amt, 6
  %i.amy = zext nneg i32 %i.amx to i64
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.ald, i64 %i.amy
  %.in.i.i.i11.i.i.i196 = select i1 %i.agr, ptr %16, ptr %i.amz
  %i.ana = load i64, ptr %.in.i.i.i11.i.i.i196, align 8, !tbaa !9
  %i.anb = and i64 %i.ana, %i.amw
  %i.anc = icmp ne i64 %i.anb, 0
  %i.and = xor i1 %i.ams, %i.anc
  br i1 %i.and, label %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710, label %.preheader

.preheader:                                       ; preds = %bb.bf
  %.not.i.i.i.i198960 = icmp eq i64 %i.alk, 0
  br i1 %.not.i.i.i.i198960, label %_ZN4llvh5APIntmIEm.exit, label %.lr.ph962

bb.bg:                                            ; preds = %.lr.ph962
  %.not.i.i.i.i198 = icmp eq i64 %i.ane, 0
  br i1 %.not.i.i.i.i198, label %_ZN4llvh5APIntmIEm.exit, label %.lr.ph962, !llvm.loop !84

.lr.ph962:                                        ; preds = %.preheader, %bb.bg
  %indvars.iv.i.i.i.i197961 = phi i64 [ %i.ane, %bb.bg ], [ %i.alk, %.preheader ]
  %i.ane = add nsw i64 %indvars.iv.i.i.i.i197961, -1 ; 4 uses
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %i.aln, i64 %i.ane
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !10 ; 2 uses
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.ald, i64 %i.ane
  %i.ani = load i64, ptr %i.anh, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i.i199 = icmp eq i64 %i.ang, %i.ani
  br i1 %.not13.i.i.i.i199, label %bb.bg, label %_ZNK4llvh5APInt3sgtERKS0_.exit201, !llvm.loop !84

_ZNK4llvh5APInt3sgtERKS0_.exit201:                ; preds = %.lr.ph962
  %.not767 = icmp ugt i64 %i.ang, %i.ani
  br i1 %.not767, label %.lr.ph.preheader.i.i202, label %_ZN4llvh5APIntmIEm.exit

_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718:      ; preds = %_ZN4llvh5APIntD2Ev.exit185
  %i.anj = load i64, ptr %17, align 8, !noalias !723 ; 5 uses
  %i.ank = mul i64 %i.anj, %i.anj
  %i.anl = sub nsw i32 0, %i.alg
  %i.anm = and i32 %i.anl, 63
  %i.ann = zext nneg i32 %i.anm to i64
  %i.ano = lshr i64 -1, %i.ann                    ; 2 uses
  %i.anp = and i64 %i.ank, %i.ano                 ; 4 uses
  %i.anq = icmp ne i64 %i.anp, %i.ale             ; 2 uses
  %i.anr = sub nuw nsw i32 64, %i.alg
  %i.ans = zext nneg i32 %i.anr to i64            ; 2 uses
  %i.ant = shl i64 %i.anp, %i.ans
  %i.anu = shl i64 %i.ale, %i.ans
  %.not768 = icmp sgt i64 %i.ant, %i.anu
  %i.anv = inttoptr i64 %i.anj to ptr
  br i1 %.not768, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i, label %_ZN4llvh5APIntmIEm.exit

_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710:      ; preds = %bb.bf
  br i1 %i.ams, label %_ZN4llvh5APIntmIEm.exit, label %.lr.ph.preheader.i.i202

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i: ; preds = %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718
  %i.anw = add i64 %i.anj, -1
  %i.anx = and i64 %i.anw, %i.ano                 ; 3 uses
  store i64 %i.anx, ptr %17, align 8, !tbaa !9
  %i.any = inttoptr i64 %i.anx to ptr
  br label %_ZN4llvh5APIntmIEm.exit

.lr.ph.preheader.i.i202:                          ; preds = %_ZNK4llvh5APInt3sgtERKS0_.exit201, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710
  %i.anz = load i64, ptr %i.alo, align 8, !tbaa !10 ; 2 uses
  %i.aoa = add i64 %i.anz, -1
  store i64 %i.aoa, ptr %i.alo, align 8, !tbaa !10
  %.not.peel.i.i = icmp eq i64 %i.anz, 0
  br i1 %.not.peel.i.i, label %.lr.ph.i.i207, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i

.lr.ph.i.i207:                                    ; preds = %.lr.ph.preheader.i.i202, %.lr.ph.i.i207
  %indvars.iv.i.i208 = phi i64 [ %indvars.iv.next.i.i210, %.lr.ph.i.i207 ], [ 1, %.lr.ph.preheader.i.i202 ] ; 2 uses
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %indvars.iv.i.i208 ; 2 uses
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !10 ; 2 uses
  %i.aod = add i64 %i.aoc, -1
  store i64 %i.aod, ptr %i.aob, align 8, !tbaa !10
  %.not.i.i209 = icmp ne i64 %i.aoc, 0
  %indvars.iv.next.i.i210 = add nuw nsw i64 %indvars.iv.i.i208, 1 ; 2 uses
  %exitcond.not.i.i211 = icmp eq i64 %indvars.iv.next.i.i210, %i.alk
  %or.cond.i = select i1 %.not.i.i209, i1 true, i1 %exitcond.not.i.i211
  br i1 %or.cond.i, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i, label %.lr.ph.i.i207, !llvm.loop !24

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i: ; preds = %.lr.ph.i.i207, %.lr.ph.preheader.i.i202
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %i.ame ; 2 uses
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !10
  %i.aog = and i64 %i.aof, %i.amc
  store i64 %i.aog, ptr %i.aoe, align 8, !tbaa !10
  br label %_ZN4llvh5APIntmIEm.exit

_ZN4llvh5APIntmIEm.exit:                          ; preds = %bb.bg, %.preheader, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710, %_ZNK4llvh5APInt3sgtERKS0_.exit201
  %i.aoh = phi ptr [ %i.alo, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i ], [ %i.anv, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718 ], [ %i.alo, %_ZNK4llvh5APInt3sgtERKS0_.exit201 ], [ %i.alo, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710 ], [ %i.any, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i ], [ %i.alo, %.preheader ], [ %i.alo, %bb.bg ] ; 7 uses
  %i.aoi = phi i64 [ %i.alr, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i ], [ %i.anj, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718 ], [ %i.alr, %_ZNK4llvh5APInt3sgtERKS0_.exit201 ], [ %i.alr, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710 ], [ %i.anx, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i ], [ %i.alr, %.preheader ], [ %i.alr, %bb.bg ] ; 2 uses
  %.sroa.0595.0702706709 = phi i64 [ %i.aly, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i ], [ %i.anp, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718 ], [ %i.aly, %_ZNK4llvh5APInt3sgtERKS0_.exit201 ], [ %i.aly, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710 ], [ %i.anp, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i ], [ %i.aly, %.preheader ], [ %i.aly, %bb.bg ] ; 2 uses
  %i.aoj = phi i1 [ %.not9.i.i.i.i.i.i.i, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i ], [ %i.anq, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread718 ], [ %.not9.i.i.i.i.i.i.i, %_ZNK4llvh5APInt3sgtERKS0_.exit201 ], [ %.not9.i.i.i.i.i.i.i, %_ZNK4llvh5APInt3sgtERKS0_.exit201.thread710 ], [ %i.anq, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i ], [ %.not9.i.i.i.i.i.i.i, %.preheader ], [ %.not9.i.i.i.i.i.i.i, %bb.bg ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.aok = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  store i32 1, ptr %i.aok, align 8, !tbaa !7
  store i64 0, ptr %18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.aol = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store i32 1, ptr %i.aol, align 8, !tbaa !7
  store i64 0, ptr %19, align 8, !tbaa !9
  br i1 %.1, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %_ZN4llvh5APIntmIEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.aom = load i32, ptr %i.fj, align 8, !tbaa !7 ; 5 uses
  %i.aon = icmp ult i32 %i.aom, 65                ; 2 uses
  br i1 %i.aon, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i227, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aoo = zext i32 %i.aom to i64
  %i.aop = add nuw nsw i64 %i.aoo, 63             ; 2 uses
  %i.aoq = lshr i64 %i.aop, 3
  %i.aor = and i64 %i.aoq, 1073741816             ; 2 uses
  %i.aos = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aor) #22 ; 8 uses
  %i.aot = load ptr, ptr %2, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aos, ptr align 8 %i.aot, i64 %i.aor, i1 false)
  %i.aou = lshr i64 %i.aop, 6                     ; 5 uses
  %min.iters.check1056 = icmp ult i32 %i.aom, 193
  br i1 %min.iters.check1056, label %.lr.ph.i.i.i.i.i213.preheader, label %vector.ph1057

vector.ph1057:                                    ; preds = %bb.bi
  %n.vec1059 = and i64 %i.aou, 134217724          ; 3 uses
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1057
  %index1061 = phi i64 [ 0, %vector.ph1057 ], [ %index.next1064, %vector.body1060 ] ; 2 uses
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.aos, i64 %index1061 ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 16 ; 2 uses
  %wide.load1062 = load <2 x i64>, ptr %i.aov, align 8, !tbaa !10, !noalias !726
  %wide.load1063 = load <2 x i64>, ptr %i.aow, align 8, !tbaa !10, !noalias !726
  %i.aox = xor <2 x i64> %wide.load1062, splat (i64 -1)
  %i.aoy = xor <2 x i64> %wide.load1063, splat (i64 -1)
  store <2 x i64> %i.aox, ptr %i.aov, align 8, !tbaa !10, !noalias !726
  store <2 x i64> %i.aoy, ptr %i.aow, align 8, !tbaa !10, !noalias !726
  %index.next1064 = add nuw i64 %index1061, 4     ; 2 uses
  %i.aoz = icmp eq i64 %index.next1064, %n.vec1059
  br i1 %i.aoz, label %middle.block1065, label %vector.body1060, !llvm.loop !729

middle.block1065:                                 ; preds = %vector.body1060
  %cmp.n1066 = icmp eq i64 %i.aou, %n.vec1059
  br i1 %cmp.n1066, label %.lr.ph.preheader.i.i.i.i.i217, label %.lr.ph.i.i.i.i.i213.preheader

.lr.ph.i.i.i.i.i213.preheader:                    ; preds = %bb.bi, %middle.block1065
  %indvars.iv.i.i.i.i.i214.ph = phi i64 [ 0, %bb.bi ], [ %n.vec1059, %middle.block1065 ]
  br label %.lr.ph.i.i.i.i.i213

.lr.ph.i.i.i.i.i213:                              ; preds = %.lr.ph.i.i.i.i.i213.preheader, %.lr.ph.i.i.i.i.i213
  %indvars.iv.i.i.i.i.i214 = phi i64 [ %indvars.iv.next.i.i.i.i.i215, %.lr.ph.i.i.i.i.i213 ], [ %indvars.iv.i.i.i.i.i214.ph, %.lr.ph.i.i.i.i.i213.preheader ] ; 2 uses
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %i.aos, i64 %indvars.iv.i.i.i.i.i214 ; 2 uses
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !10, !noalias !726
  %i.apc = xor i64 %i.apb, -1
  store i64 %i.apc, ptr %i.apa, align 8, !tbaa !10, !noalias !726
  %indvars.iv.next.i.i.i.i.i215 = add nuw nsw i64 %indvars.iv.i.i.i.i.i214, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i216 = icmp eq i64 %indvars.iv.next.i.i.i.i.i215, %i.aou
  br i1 %exitcond.not.i.i.i.i.i216, label %.lr.ph.preheader.i.i.i.i.i217, label %.lr.ph.i.i.i.i.i213, !llvm.loop !730

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i227: ; preds = %bb.bh
  %i.apd = load i64, ptr %2, align 8, !tbaa !9
  %i.ape = xor i64 %i.apd, -1
  %i.apf = sub nsw i32 0, %i.aom
  %i.apg = and i32 %i.apf, 63
  %i.aph = zext nneg i32 %i.apg to i64
  %i.api = lshr i64 -1, %i.aph                    ; 2 uses
  %i.apj = and i64 %i.api, %i.ape
  %i.apk = add i64 %i.apj, 1
  %i.apl = and i64 %i.apk, %i.api
  br label %_ZN4llvhngENS_5APIntE.exit228

.lr.ph.preheader.i.i.i.i.i217:                    ; preds = %.lr.ph.i.i.i.i.i213, %middle.block1065
  %i.apm = ptrtoint ptr %i.aos to i64
  %i.apn = sub i32 0, %i.aom
  %i.apo = and i32 %i.apn, 63
  %i.app = zext nneg i32 %i.apo to i64
  %i.apq = lshr i64 -1, %i.app                    ; 2 uses
  %i.apr = add nuw nsw i64 %i.aou, 4294967295
  %i.aps = and i64 %i.apr, 4294967295
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.aos, i64 %i.aps ; 4 uses
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !10, !noalias !726
  %i.apv = and i64 %i.apu, %i.apq
  store i64 %i.apv, ptr %i.apt, align 8, !tbaa !10, !noalias !726
  %i.apw = load i64, ptr %i.aos, align 8, !tbaa !10, !noalias !726
  %i.apx = add i64 %i.apw, 1                      ; 2 uses
  store i64 %i.apx, ptr %i.aos, align 8, !tbaa !10, !noalias !726
  %.not.peel.i.i.i.i.i218 = icmp eq i64 %i.apx, 0
  br i1 %.not.peel.i.i.i.i.i218, label %.lr.ph.i.i.i2.i.i221, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i219

.lr.ph.i.i.i2.i.i221:                             ; preds = %.lr.ph.preheader.i.i.i.i.i217, %.lr.ph.i.i.i2.i.i221
  %indvars.iv.i.i.i3.i.i222 = phi i64 [ %indvars.iv.next.i.i.i4.i.i224, %.lr.ph.i.i.i2.i.i221 ], [ 1, %.lr.ph.preheader.i.i.i.i.i217 ] ; 2 uses
  %i.apy = getelementptr inbounds nuw [8 x i8], ptr %i.aos, i64 %indvars.iv.i.i.i3.i.i222 ; 2 uses
  %i.apz = load i64, ptr %i.apy, align 8, !tbaa !10, !noalias !726
  %i.aqa = add i64 %i.apz, 1                      ; 2 uses
  store i64 %i.aqa, ptr %i.apy, align 8, !tbaa !10, !noalias !726
  %.not.i.i.i.i.i223 = icmp ne i64 %i.aqa, 0
  %indvars.iv.next.i.i.i4.i.i224 = add nuw nsw i64 %indvars.iv.i.i.i3.i.i222, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i225 = icmp eq i64 %indvars.iv.next.i.i.i4.i.i224, %i.aou
  %or.cond.i.i.i226 = select i1 %.not.i.i.i.i.i223, i1 true, i1 %exitcond.not.i.i.i5.i.i225
  br i1 %or.cond.i.i.i226, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i219, label %.lr.ph.i.i.i2.i.i221, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i219: ; preds = %.lr.ph.i.i.i2.i.i221, %.lr.ph.preheader.i.i.i.i.i217
  %i.aqb = load i64, ptr %i.apt, align 8, !tbaa !10, !noalias !726
  %i.aqc = and i64 %i.aqb, %i.apq
  store i64 %i.aqc, ptr %i.apt, align 8, !tbaa !10, !noalias !726
  br label %_ZN4llvhngENS_5APIntE.exit228

_ZN4llvhngENS_5APIntE.exit228:                    ; preds = %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i227, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i219
  %.sroa.0583.1 = phi i64 [ %i.apl, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i227 ], [ %i.apm, %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i219 ] ; 4 uses
  br i1 %i.alh, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i263, label %.lr.ph.preheader.i.i.i230

.lr.ph.preheader.i.i.i230:                        ; preds = %_ZN4llvhngENS_5APIntE.exit228
  %i.aqd = zext i32 %i.alg to i64
  %i.aqe = add nuw nsw i64 %i.aqd, 63             ; 3 uses
  %i.aqf = lshr i64 %i.aqe, 3
  %i.aqg = and i64 %i.aqf, 1073741816             ; 2 uses
  %i.aqh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqg) #22 ; 14 uses
  %i.aqi = ptrtoint ptr %i.aqh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aqh, ptr align 8 %i.aoh, i64 %i.aqg, i1 false)
  %i.aqj = zext i1 %i.aoj to i64                  ; 2 uses
  %i.aqk = lshr i64 %i.aqe, 6                     ; 9 uses
  %i.aql = load i64, ptr %i.aqh, align 8, !tbaa !10, !noalias !731
  %i.aqm = add i64 %i.aql, %i.aqj                 ; 2 uses
  store i64 %i.aqm, ptr %i.aqh, align 8, !tbaa !10, !noalias !731
  %.not.peel.i.i.i = icmp ult i64 %i.aqm, %i.aqj
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i235, label %.loopexit

.lr.ph.i.i.i235:                                  ; preds = %.lr.ph.preheader.i.i.i230, %.lr.ph.i.i.i235
  %indvars.iv.i.i.i236 = phi i64 [ %indvars.iv.next.i.i.i238, %.lr.ph.i.i.i235 ], [ 1, %.lr.ph.preheader.i.i.i230 ] ; 2 uses
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.aqh, i64 %indvars.iv.i.i.i236 ; 2 uses
  %i.aqo = load i64, ptr %i.aqn, align 8, !tbaa !10, !noalias !731
  %i.aqp = add i64 %i.aqo, 1                      ; 2 uses
  store i64 %i.aqp, ptr %i.aqn, align 8, !tbaa !10, !noalias !731
  %.not.i.i.i237 = icmp ne i64 %i.aqp, 0
  %indvars.iv.next.i.i.i238 = add nuw nsw i64 %indvars.iv.i.i.i236, 1 ; 2 uses
  %exitcond.not.i.i.i239 = icmp eq i64 %indvars.iv.next.i.i.i238, %i.aqk
  %or.cond.i.i240 = select i1 %.not.i.i.i237, i1 true, i1 %exitcond.not.i.i.i239
  br i1 %or.cond.i.i240, label %.loopexit, label %.lr.ph.i.i.i235, !llvm.loop !16

end_hunk_5
begin_hunk_6_@_ZN4llvh8APIntOps26SolveQuadraticEquationWrapENS_5APIntES1_S1_j:bb.a
.lr.ph.preheader.i.i.i322:                        ; preds = %.lr.ph.i.i315
  %i.axw = sub i32 0, %i.axe
  %i.axx = and i32 %i.axw, 63
  %i.axy = zext nneg i32 %i.axx to i64
  %i.axz = lshr i64 -1, %i.axy                    ; 4 uses
  %i.aya = add nuw nsw i64 %i.axi, 4294967295
  %i.ayb = and i64 %i.aya, 4294967295             ; 2 uses
  %i.ayc = getelementptr inbounds nuw [8 x i8], ptr %i.axl, i64 %i.ayb ; 4 uses
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !10, !noalias !747
  %i.aye = and i64 %i.ayd, %i.axz
  store i64 %i.aye, ptr %i.ayc, align 8, !tbaa !10, !noalias !747
  %i.ayf = load ptr, ptr %2, align 8, !tbaa !9, !noalias !750 ; 3 uses
  %i.ayg = add nsw i64 %i.axi, -1                 ; 2 uses
  %i.ayh = icmp eq i64 %i.ayg, 0
  br i1 %i.ayh, label %.lr.ph.i.i.i323.epil.preheader, label %.lr.ph.preheader.i.i.i322.new

.lr.ph.preheader.i.i.i322.new:                    ; preds = %.lr.ph.preheader.i.i.i322
  %unroll_iter1137 = and i64 %i.axi, 134217726
  br label %.lr.ph.i.i.i323

.lr.ph.i.i.i323:                                  ; preds = %.lr.ph.i.i.i323, %.lr.ph.preheader.i.i.i322.new
  %indvars.iv.i.i.i324 = phi i64 [ 0, %.lr.ph.preheader.i.i.i322.new ], [ %indvars.iv.next.i.i.i328.1, %.lr.ph.i.i.i323 ] ; 4 uses
  %.022.i.i.i325 = phi i1 [ true, %.lr.ph.preheader.i.i.i322.new ], [ %.1.in.i.i.i327.1, %.lr.ph.i.i.i323 ] ; 2 uses
  %niter1138 = phi i64 [ 0, %.lr.ph.preheader.i.i.i322.new ], [ %niter1138.next.1, %.lr.ph.i.i.i323 ]
  %i.ayi = getelementptr inbounds nuw [8 x i8], ptr %i.axl, i64 %indvars.iv.i.i.i324 ; 2 uses
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !10, !noalias !750 ; 3 uses
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.ayf, i64 %indvars.iv.i.i.i324
  %i.ayl = load i64, ptr %i.ayk, align 8, !tbaa !10, !noalias !750
  %i.aym = add i64 %i.ayl, %i.ayj                 ; 3 uses
  %i.ayn = icmp uge i64 %i.aym, %i.ayj
  %i.ayo = add i64 %i.aym, 1                      ; 2 uses
  %i.ayp = icmp ugt i64 %i.ayo, %i.ayj
  %.sink.i.i.i326 = select i1 %.022.i.i.i325, i64 %i.aym, i64 %i.ayo
  %.1.in.i.i.i327 = select i1 %.022.i.i.i325, i1 %i.ayn, i1 %i.ayp ; 2 uses
  store i64 %.sink.i.i.i326, ptr %i.ayi, align 8, !tbaa !10, !noalias !750
  %indvars.iv.next.i.i.i328 = or disjoint i64 %indvars.iv.i.i.i324, 1 ; 2 uses
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.axl, i64 %indvars.iv.next.i.i.i328 ; 2 uses
  %i.ayr = load i64, ptr %i.ayq, align 8, !tbaa !10, !noalias !750 ; 3 uses
  %i.ays = getelementptr inbounds nuw [8 x i8], ptr %i.ayf, i64 %indvars.iv.next.i.i.i328
  %i.ayt = load i64, ptr %i.ays, align 8, !tbaa !10, !noalias !750
  %i.ayu = add i64 %i.ayt, %i.ayr                 ; 3 uses
  %i.ayv = icmp uge i64 %i.ayu, %i.ayr
  %i.ayw = add i64 %i.ayu, 1                      ; 2 uses
  %i.ayx = icmp ugt i64 %i.ayw, %i.ayr
  %.sink.i.i.i326.1 = select i1 %.1.in.i.i.i327, i64 %i.ayu, i64 %i.ayw
  %.1.in.i.i.i327.1 = select i1 %.1.in.i.i.i327, i1 %i.ayv, i1 %i.ayx ; 2 uses
  store i64 %.sink.i.i.i326.1, ptr %i.ayq, align 8, !tbaa !10, !noalias !750
  %indvars.iv.next.i.i.i328.1 = add nuw nsw i64 %indvars.iv.i.i.i324, 2 ; 2 uses
  %niter1138.next.1 = add nuw nsw i64 %niter1138, 2 ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334.unr-lcssa, label %.lr.ph.i.i.i323, !llvm.loop !25

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334.unr-lcssa: ; preds = %.lr.ph.i.i.i323
  %i.ayy = and i64 %i.axh, 64
  %lcmp.mod1135.not = icmp eq i64 %i.ayy, 0
  br i1 %lcmp.mod1135.not, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334, label %.lr.ph.i.i.i323.epil.preheader

.lr.ph.i.i.i323.epil.preheader:                   ; preds = %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334.unr-lcssa, %.lr.ph.preheader.i.i.i322
  %indvars.iv.i.i.i324.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i322 ], [ %indvars.iv.next.i.i.i328.1, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334.unr-lcssa ] ; 2 uses
  %.022.i.i.i325.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i322 ], [ %.1.in.i.i.i327.1, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334.unr-lcssa ]
  %lcmp.mod1136 = trunc i64 %i.axi to i1
  call void @llvm.assume(i1 %lcmp.mod1136)
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.axl, i64 %indvars.iv.i.i.i324.epil.init ; 2 uses
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !10, !noalias !750
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.ayf, i64 %indvars.iv.i.i.i324.epil.init
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !10, !noalias !750
  %i.azd = add i64 %i.azc, %i.aza
  %not..022.i.i.i325.epil.init = xor i1 %.022.i.i.i325.epil.init, true
  %i.aze = zext i1 %not..022.i.i.i325.epil.init to i64
  %.sink.i.i.i326.epil = add i64 %i.azd, %i.aze
  store i64 %.sink.i.i.i326.epil, ptr %i.ayz, align 8, !tbaa !10, !noalias !750
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334:     ; preds = %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334.unr-lcssa, %.lr.ph.i.i.i323.epil.preheader
  %i.azf = load i64, ptr %i.ayc, align 8, !tbaa !10, !noalias !750
  %i.azg = and i64 %i.azf, %i.axz
  store i64 %i.azg, ptr %i.ayc, align 8, !tbaa !10, !noalias !750
  %i.azh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.axk) #22, !noalias !753 ; 8 uses
  store i64 0, ptr %i.azh, align 8, !tbaa !10, !noalias !753
  %scevgep.i.i.i335 = getelementptr i8, ptr %i.azh, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i335, i8 0, i64 %i.axp, i1 false), !tbaa !10, !noalias !753
  br label %.lr.ph.i.i336

.lr.ph.i.i336:                                    ; preds = %.lr.ph.i.i336, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334
  %indvars.iv.i.i337 = phi i64 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i334 ], [ %indvars.iv.next.i.i338, %.lr.ph.i.i336 ] ; 4 uses
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.azh, i64 %indvars.iv.i.i337
  %i.azj = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %indvars.iv.i.i337
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !10, !noalias !753
  %i.azl = trunc i64 %indvars.iv.i.i337 to i32
  %i.azm = sub i32 %i.axj, %i.azl
  %i.azn = call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.azi, ptr noundef nonnull readonly %i.axl, i64 noundef %i.azk, i64 noundef 0, i32 noundef %i.axj, i32 noundef %i.azm, i1 noundef zeroext true), !noalias !753 ; 0 uses
  %indvars.iv.next.i.i338 = add nuw nsw i64 %indvars.iv.i.i337, 1 ; 2 uses
  %exitcond.not.i.i339 = icmp eq i64 %indvars.iv.next.i.i338, %i.axi
  br i1 %exitcond.not.i.i339, label %.lr.ph.preheader.i.i.i343, label %.lr.ph.i.i336, !llvm.loop !27

.lr.ph.preheader.i.i.i343:                        ; preds = %.lr.ph.i.i336
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.azh, i64 %i.ayb ; 4 uses
  %i.azp = load i64, ptr %i.azo, align 8, !tbaa !10, !noalias !753
  %i.azq = and i64 %i.azp, %i.axz
  store i64 %i.azq, ptr %i.azo, align 8, !tbaa !10, !noalias !753
  %i.azr = load ptr, ptr %3, align 8, !tbaa !9, !noalias !756 ; 3 uses
  %i.azs = icmp eq i64 %i.ayg, 0
  br i1 %i.azs, label %.lr.ph.i.i.i344.epil.preheader, label %.lr.ph.preheader.i.i.i343.new

.lr.ph.preheader.i.i.i343.new:                    ; preds = %.lr.ph.preheader.i.i.i343
  %unroll_iter1143 = and i64 %i.axi, 134217726
  br label %.lr.ph.i.i.i344

.lr.ph.i.i.i344:                                  ; preds = %.lr.ph.i.i.i344, %.lr.ph.preheader.i.i.i343.new
  %indvars.iv.i.i.i345 = phi i64 [ 0, %.lr.ph.preheader.i.i.i343.new ], [ %indvars.iv.next.i.i.i349.1, %.lr.ph.i.i.i344 ] ; 4 uses
  %.022.i.i.i346 = phi i1 [ true, %.lr.ph.preheader.i.i.i343.new ], [ %.1.in.i.i.i348.1, %.lr.ph.i.i.i344 ] ; 2 uses
  %niter1144 = phi i64 [ 0, %.lr.ph.preheader.i.i.i343.new ], [ %niter1144.next.1, %.lr.ph.i.i.i344 ]
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.azh, i64 %indvars.iv.i.i.i345 ; 2 uses
  %i.azu = load i64, ptr %i.azt, align 8, !tbaa !10, !noalias !756 ; 3 uses
  %i.azv = getelementptr inbounds nuw [8 x i8], ptr %i.azr, i64 %indvars.iv.i.i.i345
  %i.azw = load i64, ptr %i.azv, align 8, !tbaa !10, !noalias !756
  %i.azx = add i64 %i.azw, %i.azu                 ; 3 uses
  %i.azy = icmp uge i64 %i.azx, %i.azu
  %i.azz = add i64 %i.azx, 1                      ; 2 uses
  %i.baa = icmp ugt i64 %i.azz, %i.azu
  %.sink.i.i.i347 = select i1 %.022.i.i.i346, i64 %i.azx, i64 %i.azz
  %.1.in.i.i.i348 = select i1 %.022.i.i.i346, i1 %i.azy, i1 %i.baa ; 2 uses
  store i64 %.sink.i.i.i347, ptr %i.azt, align 8, !tbaa !10, !noalias !756
  %indvars.iv.next.i.i.i349 = or disjoint i64 %indvars.iv.i.i.i345, 1 ; 2 uses
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.azh, i64 %indvars.iv.next.i.i.i349 ; 2 uses
  %i.bac = load i64, ptr %i.bab, align 8, !tbaa !10, !noalias !756 ; 3 uses
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.azr, i64 %indvars.iv.next.i.i.i349
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !10, !noalias !756
  %i.baf = add i64 %i.bae, %i.bac                 ; 3 uses
  %i.bag = icmp uge i64 %i.baf, %i.bac
  %i.bah = add i64 %i.baf, 1                      ; 2 uses
  %i.bai = icmp ugt i64 %i.bah, %i.bac
  %.sink.i.i.i347.1 = select i1 %.1.in.i.i.i348, i64 %i.baf, i64 %i.bah
  %.1.in.i.i.i348.1 = select i1 %.1.in.i.i.i348, i1 %i.bag, i1 %i.bai ; 2 uses
  store i64 %.sink.i.i.i347.1, ptr %i.bab, align 8, !tbaa !10, !noalias !756
  %indvars.iv.next.i.i.i349.1 = add nuw nsw i64 %indvars.iv.i.i.i345, 2 ; 2 uses
  %niter1144.next.1 = add i64 %niter1144, 2       ; 2 uses
  %niter1144.ncmp.1 = icmp eq i64 %niter1144.next.1, %unroll_iter1143
  br i1 %niter1144.ncmp.1, label %.unr-lcssa1139, label %.lr.ph.i.i.i344, !llvm.loop !25

_ZN4llvh5APIntD2Ev.exit355:                       ; preds = %bb.bw
  %i.baj = load i64, ptr %1, align 8, !tbaa !9, !noalias !747
  %i.bak = load i64, ptr %18, align 8, !tbaa !9, !noalias !747 ; 2 uses
  %i.bal = mul i64 %i.bak, %i.baj
  %i.bam = sub nsw i32 0, %i.axe
  %i.ban = and i32 %i.bam, 63
  %i.bao = zext nneg i32 %i.ban to i64
  %i.bap = lshr i64 -1, %i.bao                    ; 4 uses
  %i.baq = and i64 %i.bal, %i.bap
  %i.bar = load i64, ptr %2, align 8, !tbaa !9, !noalias !750
  %i.bas = add i64 %i.baq, %i.bar
  %i.bat = and i64 %i.bas, %i.bap
  %i.bau = mul i64 %i.bat, %i.bak
  %i.bav = and i64 %i.bau, %i.bap
  %i.baw = load i64, ptr %3, align 8, !tbaa !9, !noalias !756
  %i.bax = add i64 %i.bav, %i.baw
  %i.bay = and i64 %i.bax, %i.bap
  br label %_ZN4llvh5APIntD2Ev.exit357

.unr-lcssa1139:                                   ; preds = %.lr.ph.i.i.i344
  %i.baz = and i64 %i.axh, 64
  %lcmp.mod1141.not = icmp eq i64 %i.baz, 0
  br i1 %lcmp.mod1141.not, label %bb.bx, label %.lr.ph.i.i.i344.epil.preheader

.lr.ph.i.i.i344.epil.preheader:                   ; preds = %.unr-lcssa1139, %.lr.ph.preheader.i.i.i343
  %indvars.iv.i.i.i345.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i343 ], [ %indvars.iv.next.i.i.i349.1, %.unr-lcssa1139 ] ; 2 uses
  %.022.i.i.i346.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i343 ], [ %.1.in.i.i.i348.1, %.unr-lcssa1139 ]
  %lcmp.mod1142 = trunc i64 %i.axi to i1
  call void @llvm.assume(i1 %lcmp.mod1142)
  %i.bba = getelementptr inbounds nuw [8 x i8], ptr %i.azh, i64 %indvars.iv.i.i.i345.epil.init ; 2 uses
  %i.bbb = load i64, ptr %i.bba, align 8, !tbaa !10, !noalias !756
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.azr, i64 %indvars.iv.i.i.i345.epil.init
  %i.bbd = load i64, ptr %i.bbc, align 8, !tbaa !10, !noalias !756
  %i.bbe = add i64 %i.bbd, %i.bbb
  %not..022.i.i.i346.epil.init = xor i1 %.022.i.i.i346.epil.init, true
  %i.bbf = zext i1 %not..022.i.i.i346.epil.init to i64
  %.sink.i.i.i347.epil = add i64 %i.bbe, %i.bbf
  store i64 %.sink.i.i.i347.epil, ptr %i.bba, align 8, !tbaa !10, !noalias !756
  br label %bb.bx

bb.bx:                                            ; preds = %.unr-lcssa1139, %.lr.ph.i.i.i344.epil.preheader
  %i.bbg = ptrtoint ptr %i.azh to i64
  %i.bbh = load i64, ptr %i.azo, align 8, !tbaa !10, !noalias !756
  %i.bbi = and i64 %i.bbh, %i.axz
  store i64 %i.bbi, ptr %i.azo, align 8, !tbaa !10, !noalias !756
  call void @_ZdaPv(ptr noundef nonnull %i.axl) #23
  br label %_ZN4llvh5APIntD2Ev.exit357

_ZN4llvh5APIntD2Ev.exit357:                       ; preds = %bb.bx, %_ZN4llvh5APIntD2Ev.exit355
  %i.bbj = phi i64 [ %i.bay, %_ZN4llvh5APIntD2Ev.exit355 ], [ %i.bbg, %bb.bx ] ; 6 uses
  br i1 %i.oh, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i400, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i358

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i358:     ; preds = %_ZN4llvh5APIntD2Ev.exit357
  %i.bbk = zext i32 %i.og to i64
  %i.bbl = add nuw nsw i64 %i.bbk, 63             ; 4 uses
  %i.bbm = lshr i64 %i.bbl, 6                     ; 11 uses
  %i.bbn = trunc nuw nsw i64 %i.bbm to i32        ; 2 uses
  %i.bbo = shl nuw nsw i64 %i.bbm, 3              ; 2 uses
  %i.bbp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bbo) #22, !noalias !759 ; 14 uses
  %i.bbq = load ptr, ptr %7, align 8, !tbaa !9, !noalias !759
  %i.bbr = load ptr, ptr %18, align 8, !noalias !759 ; 3 uses
  store i64 0, ptr %i.bbp, align 8, !tbaa !10, !noalias !759
  %scevgep.i.i.i359 = getelementptr i8, ptr %i.bbp, i64 8
  %i.bbs = add nuw nsw i64 %i.bbo, 34359738360
  %i.bbt = and i64 %i.bbs, 34359738360
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i359, i8 0, i64 %i.bbt, i1 false), !tbaa !10, !noalias !759
  %i.bbu = ptrtoint ptr %i.bbr to i64
  br label %.lr.ph.i.i360

.lr.ph.i.i360:                                    ; preds = %.lr.ph.i.i360, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i358
  %indvars.iv.i.i361 = phi i64 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i.i358 ], [ %indvars.iv.next.i.i362, %.lr.ph.i.i360 ] ; 4 uses
  %i.bbv = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.i.i361
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %i.bbr, i64 %indvars.iv.i.i361
  %i.bbx = load i64, ptr %i.bbw, align 8, !tbaa !10, !noalias !759
  %i.bby = trunc i64 %indvars.iv.i.i361 to i32
  %i.bbz = sub i32 %i.bbn, %i.bby
  %i.bca = call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.bbv, ptr noundef readonly %i.bbq, i64 noundef %i.bbx, i64 noundef 0, i32 noundef %i.bbn, i32 noundef %i.bbz, i1 noundef zeroext true), !noalias !759 ; 0 uses
  %indvars.iv.next.i.i362 = add nuw nsw i64 %indvars.iv.i.i361, 1 ; 2 uses
  %exitcond.not.i.i363 = icmp eq i64 %indvars.iv.next.i.i362, %i.bbm
  br i1 %exitcond.not.i.i363, label %.lr.ph.preheader.i.i.i367, label %.lr.ph.i.i360, !llvm.loop !27

.lr.ph.preheader.i.i.i367:                        ; preds = %.lr.ph.i.i360
  %i.bcb = sub i32 0, %i.og
  %i.bcc = and i32 %i.bcb, 63
  %i.bcd = zext nneg i32 %i.bcc to i64
  %i.bce = lshr i64 -1, %i.bcd                    ; 4 uses
  %i.bcf = add nuw nsw i64 %i.bbm, 4294967295
  %i.bcg = and i64 %i.bcf, 4294967295
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %i.bcg ; 8 uses
  %i.bci = load i64, ptr %i.bch, align 8, !tbaa !10, !noalias !759
  %i.bcj = and i64 %i.bci, %i.bce
  store i64 %i.bcj, ptr %i.bch, align 8, !tbaa !10, !noalias !759
  %i.bck = inttoptr i64 %i.bbj to ptr             ; 4 uses
  %i.bcl = add nsw i64 %i.bbm, -1                 ; 3 uses
  %i.bcm = icmp eq i64 %i.bcl, 0
  br i1 %i.bcm, label %.lr.ph.i.i.i368.epil.preheader, label %.lr.ph.preheader.i.i.i367.new

.lr.ph.preheader.i.i.i367.new:                    ; preds = %.lr.ph.preheader.i.i.i367
  %unroll_iter1148 = and i64 %i.bbm, 134217726
  br label %.lr.ph.i.i.i368

.lr.ph.i.i.i368:                                  ; preds = %.lr.ph.i.i.i368, %.lr.ph.preheader.i.i.i367.new
  %indvars.iv.i.i.i369 = phi i64 [ 0, %.lr.ph.preheader.i.i.i367.new ], [ %indvars.iv.next.i.i.i373.1, %.lr.ph.i.i.i368 ] ; 4 uses
  %.022.i.i.i370 = phi i1 [ true, %.lr.ph.preheader.i.i.i367.new ], [ %.1.in.i.i.i372.1, %.lr.ph.i.i.i368 ] ; 2 uses
  %niter1149 = phi i64 [ 0, %.lr.ph.preheader.i.i.i367.new ], [ %niter1149.next.1, %.lr.ph.i.i.i368 ]
  %i.bcn = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.i.i.i369 ; 2 uses
  %i.bco = load i64, ptr %i.bcn, align 8, !tbaa !10, !noalias !762 ; 3 uses
  %i.bcp = getelementptr inbounds nuw [8 x i8], ptr %i.bck, i64 %indvars.iv.i.i.i369
  %i.bcq = load i64, ptr %i.bcp, align 8, !tbaa !10, !noalias !762
  %i.bcr = add i64 %i.bcq, %i.bco                 ; 3 uses
  %i.bcs = icmp uge i64 %i.bcr, %i.bco
  %i.bct = add i64 %i.bcr, 1                      ; 2 uses
  %i.bcu = icmp ugt i64 %i.bct, %i.bco
  %.sink.i.i.i371 = select i1 %.022.i.i.i370, i64 %i.bcr, i64 %i.bct
  %.1.in.i.i.i372 = select i1 %.022.i.i.i370, i1 %i.bcs, i1 %i.bcu ; 2 uses
  store i64 %.sink.i.i.i371, ptr %i.bcn, align 8, !tbaa !10, !noalias !762
  %indvars.iv.next.i.i.i373 = or disjoint i64 %indvars.iv.i.i.i369, 1 ; 2 uses
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.next.i.i.i373 ; 2 uses
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !10, !noalias !762 ; 3 uses
  %i.bcx = getelementptr inbounds nuw [8 x i8], ptr %i.bck, i64 %indvars.iv.next.i.i.i373
  %i.bcy = load i64, ptr %i.bcx, align 8, !tbaa !10, !noalias !762
  %i.bcz = add i64 %i.bcy, %i.bcw                 ; 3 uses
  %i.bda = icmp uge i64 %i.bcz, %i.bcw
  %i.bdb = add i64 %i.bcz, 1                      ; 2 uses
  %i.bdc = icmp ugt i64 %i.bdb, %i.bcw
  %.sink.i.i.i371.1 = select i1 %.1.in.i.i.i372, i64 %i.bcz, i64 %i.bdb
  %.1.in.i.i.i372.1 = select i1 %.1.in.i.i.i372, i1 %i.bda, i1 %i.bdc ; 2 uses
  store i64 %.sink.i.i.i371.1, ptr %i.bcv, align 8, !tbaa !10, !noalias !762
  %indvars.iv.next.i.i.i373.1 = add nuw nsw i64 %indvars.iv.i.i.i369, 2 ; 2 uses
  %niter1149.next.1 = add nuw nsw i64 %niter1149, 2 ; 2 uses
  %niter1149.ncmp.1 = icmp eq i64 %niter1149.next.1, %unroll_iter1148
  br i1 %niter1149.ncmp.1, label %.lr.ph.preheader.i.i.i378.unr-lcssa, label %.lr.ph.i.i.i368, !llvm.loop !25

.lr.ph.preheader.i.i.i378.unr-lcssa:              ; preds = %.lr.ph.i.i.i368
  %i.bdd = and i64 %i.bbl, 64
  %lcmp.mod1146.not = icmp eq i64 %i.bdd, 0
  br i1 %lcmp.mod1146.not, label %.lr.ph.preheader.i.i.i378, label %.lr.ph.i.i.i368.epil.preheader

.lr.ph.i.i.i368.epil.preheader:                   ; preds = %.lr.ph.preheader.i.i.i378.unr-lcssa, %.lr.ph.preheader.i.i.i367
  %indvars.iv.i.i.i369.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i367 ], [ %indvars.iv.next.i.i.i373.1, %.lr.ph.preheader.i.i.i378.unr-lcssa ] ; 2 uses
  %.022.i.i.i370.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i367 ], [ %.1.in.i.i.i372.1, %.lr.ph.preheader.i.i.i378.unr-lcssa ]
  %lcmp.mod1147 = trunc i64 %i.bbm to i1
  call void @llvm.assume(i1 %lcmp.mod1147)
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.i.i.i369.epil.init ; 2 uses
  %i.bdf = load i64, ptr %i.bde, align 8, !tbaa !10, !noalias !762
  %i.bdg = getelementptr inbounds nuw [8 x i8], ptr %i.bck, i64 %indvars.iv.i.i.i369.epil.init
  %i.bdh = load i64, ptr %i.bdg, align 8, !tbaa !10, !noalias !762
  %i.bdi = add i64 %i.bdh, %i.bdf
  %not..022.i.i.i370.epil.init = xor i1 %.022.i.i.i370.epil.init, true
  %i.bdj = zext i1 %not..022.i.i.i370.epil.init to i64
  %.sink.i.i.i371.epil = add i64 %i.bdi, %i.bdj
  store i64 %.sink.i.i.i371.epil, ptr %i.bde, align 8, !tbaa !10, !noalias !762
  br label %.lr.ph.preheader.i.i.i378

.lr.ph.preheader.i.i.i378:                        ; preds = %.lr.ph.preheader.i.i.i378.unr-lcssa, %.lr.ph.i.i.i368.epil.preheader
  %i.bdk = load i64, ptr %i.bch, align 8, !tbaa !10, !noalias !762
  %i.bdl = and i64 %i.bdk, %i.bce
  store i64 %i.bdl, ptr %i.bch, align 8, !tbaa !10, !noalias !762
  %i.bdm = load ptr, ptr %1, align 8, !tbaa !9, !noalias !765 ; 3 uses
  %i.bdn = icmp eq i64 %i.bcl, 0
  br i1 %i.bdn, label %.lr.ph.i.i.i379.epil.preheader, label %.lr.ph.preheader.i.i.i378.new

.lr.ph.preheader.i.i.i378.new:                    ; preds = %.lr.ph.preheader.i.i.i378
  %unroll_iter1153 = and i64 %i.bbm, 134217726
  br label %.lr.ph.i.i.i379

.lr.ph.i.i.i379:                                  ; preds = %.lr.ph.i.i.i379, %.lr.ph.preheader.i.i.i378.new
  %indvars.iv.i.i.i380 = phi i64 [ 0, %.lr.ph.preheader.i.i.i378.new ], [ %indvars.iv.next.i.i.i384.1, %.lr.ph.i.i.i379 ] ; 4 uses
  %.022.i.i.i381 = phi i1 [ true, %.lr.ph.preheader.i.i.i378.new ], [ %.1.in.i.i.i383.1, %.lr.ph.i.i.i379 ] ; 2 uses
  %niter1154 = phi i64 [ 0, %.lr.ph.preheader.i.i.i378.new ], [ %niter1154.next.1, %.lr.ph.i.i.i379 ]
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.i.i.i380 ; 2 uses
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !10, !noalias !765 ; 3 uses
  %i.bdq = getelementptr inbounds nuw [8 x i8], ptr %i.bdm, i64 %indvars.iv.i.i.i380
  %i.bdr = load i64, ptr %i.bdq, align 8, !tbaa !10, !noalias !765
  %i.bds = add i64 %i.bdr, %i.bdp                 ; 3 uses
  %i.bdt = icmp uge i64 %i.bds, %i.bdp
  %i.bdu = add i64 %i.bds, 1                      ; 2 uses
  %i.bdv = icmp ugt i64 %i.bdu, %i.bdp
  %.sink.i.i.i382 = select i1 %.022.i.i.i381, i64 %i.bds, i64 %i.bdu
  %.1.in.i.i.i383 = select i1 %.022.i.i.i381, i1 %i.bdt, i1 %i.bdv ; 2 uses
  store i64 %.sink.i.i.i382, ptr %i.bdo, align 8, !tbaa !10, !noalias !765
  %indvars.iv.next.i.i.i384 = or disjoint i64 %indvars.iv.i.i.i380, 1 ; 2 uses
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.next.i.i.i384 ; 2 uses
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !10, !noalias !765 ; 3 uses
  %i.bdy = getelementptr inbounds nuw [8 x i8], ptr %i.bdm, i64 %indvars.iv.next.i.i.i384
  %i.bdz = load i64, ptr %i.bdy, align 8, !tbaa !10, !noalias !765
  %i.bea = add i64 %i.bdz, %i.bdx                 ; 3 uses
  %i.beb = icmp uge i64 %i.bea, %i.bdx
  %i.bec = add i64 %i.bea, 1                      ; 2 uses
  %i.bed = icmp ugt i64 %i.bec, %i.bdx
  %.sink.i.i.i382.1 = select i1 %.1.in.i.i.i383, i64 %i.bea, i64 %i.bec
  %.1.in.i.i.i383.1 = select i1 %.1.in.i.i.i383, i1 %i.beb, i1 %i.bed ; 2 uses
  store i64 %.sink.i.i.i382.1, ptr %i.bdw, align 8, !tbaa !10, !noalias !765
  %indvars.iv.next.i.i.i384.1 = add nuw nsw i64 %indvars.iv.i.i.i380, 2 ; 2 uses
  %niter1154.next.1 = add i64 %niter1154, 2       ; 2 uses
  %niter1154.ncmp.1 = icmp eq i64 %niter1154.next.1, %unroll_iter1153
  br i1 %niter1154.ncmp.1, label %.lr.ph.preheader.i.i.i390.unr-lcssa, label %.lr.ph.i.i.i379, !llvm.loop !25

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i400:  ; preds = %_ZN4llvh5APIntD2Ev.exit357
  %i.bee = load i64, ptr %7, align 8, !tbaa !9, !noalias !759
  %i.bef = load i64, ptr %18, align 8, !noalias !759 ; 3 uses
  %i.beg = mul i64 %i.bef, %i.bee
  %i.beh = sub nsw i32 0, %i.og
  %i.bei = and i32 %i.beh, 63
  %i.bej = zext nneg i32 %i.bei to i64
  %i.bek = lshr i64 -1, %i.bej                    ; 4 uses
  %i.bel = and i64 %i.beg, %i.bek
  %i.bem = add i64 %i.bel, %i.bbj
  %i.ben = and i64 %i.bem, %i.bek
  %i.beo = load i64, ptr %1, align 8, !tbaa !9, !noalias !765
  %i.bep = add i64 %i.ben, %i.beo
  %i.beq = and i64 %i.bep, %i.bek
  %i.ber = load i64, ptr %2, align 8, !tbaa !9, !noalias !768
  %i.bes = add i64 %i.beq, %i.ber
  %i.bet = and i64 %i.bes, %i.bek
  %i.beu = inttoptr i64 %i.bef to ptr
  %.pre809 = inttoptr i64 %i.bbj to ptr
  br label %_ZN4llvh5APIntD2Ev.exit404

.lr.ph.preheader.i.i.i390.unr-lcssa:              ; preds = %.lr.ph.i.i.i379
  %i.bev = and i64 %i.bbl, 64
  %lcmp.mod1151.not = icmp eq i64 %i.bev, 0
  br i1 %lcmp.mod1151.not, label %.lr.ph.preheader.i.i.i390, label %.lr.ph.i.i.i379.epil.preheader

.lr.ph.i.i.i379.epil.preheader:                   ; preds = %.lr.ph.preheader.i.i.i390.unr-lcssa, %.lr.ph.preheader.i.i.i378
  %indvars.iv.i.i.i380.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i378 ], [ %indvars.iv.next.i.i.i384.1, %.lr.ph.preheader.i.i.i390.unr-lcssa ] ; 2 uses
  %.022.i.i.i381.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i378 ], [ %.1.in.i.i.i383.1, %.lr.ph.preheader.i.i.i390.unr-lcssa ]
  %lcmp.mod1152 = trunc i64 %i.bbm to i1
  call void @llvm.assume(i1 %lcmp.mod1152)
  %i.bew = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.i.i.i380.epil.init ; 2 uses
  %i.bex = load i64, ptr %i.bew, align 8, !tbaa !10, !noalias !765
  %i.bey = getelementptr inbounds nuw [8 x i8], ptr %i.bdm, i64 %indvars.iv.i.i.i380.epil.init
  %i.bez = load i64, ptr %i.bey, align 8, !tbaa !10, !noalias !765
  %i.bfa = add i64 %i.bez, %i.bex
  %not..022.i.i.i381.epil.init = xor i1 %.022.i.i.i381.epil.init, true
  %i.bfb = zext i1 %not..022.i.i.i381.epil.init to i64
  %.sink.i.i.i382.epil = add i64 %i.bfa, %i.bfb
  store i64 %.sink.i.i.i382.epil, ptr %i.bew, align 8, !tbaa !10, !noalias !765
  br label %.lr.ph.preheader.i.i.i390

.lr.ph.preheader.i.i.i390:                        ; preds = %.lr.ph.preheader.i.i.i390.unr-lcssa, %.lr.ph.i.i.i379.epil.preheader
  %i.bfc = load i64, ptr %i.bch, align 8, !tbaa !10, !noalias !765
  %i.bfd = and i64 %i.bfc, %i.bce
  store i64 %i.bfd, ptr %i.bch, align 8, !tbaa !10, !noalias !765
  %i.bfe = load ptr, ptr %2, align 8, !tbaa !9, !noalias !768 ; 3 uses
  %i.bff = icmp eq i64 %i.bcl, 0
  br i1 %i.bff, label %.lr.ph.i.i.i391.epil.preheader, label %.lr.ph.preheader.i.i.i390.new

.lr.ph.preheader.i.i.i390.new:                    ; preds = %.lr.ph.preheader.i.i.i390
  %unroll_iter1158 = and i64 %i.bbm, 134217726
  br label %.lr.ph.i.i.i391

.lr.ph.i.i.i391:                                  ; preds = %.lr.ph.i.i.i391, %.lr.ph.preheader.i.i.i390.new
  %indvars.iv.i.i.i392 = phi i64 [ 0, %.lr.ph.preheader.i.i.i390.new ], [ %indvars.iv.next.i.i.i396.1, %.lr.ph.i.i.i391 ] ; 4 uses
  %.022.i.i.i393 = phi i1 [ true, %.lr.ph.preheader.i.i.i390.new ], [ %.1.in.i.i.i395.1, %.lr.ph.i.i.i391 ] ; 2 uses
  %niter1159 = phi i64 [ 0, %.lr.ph.preheader.i.i.i390.new ], [ %niter1159.next.1, %.lr.ph.i.i.i391 ]
  %i.bfg = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.i.i.i392 ; 2 uses
  %i.bfh = load i64, ptr %i.bfg, align 8, !tbaa !10, !noalias !768 ; 3 uses
  %i.bfi = getelementptr inbounds nuw [8 x i8], ptr %i.bfe, i64 %indvars.iv.i.i.i392
  %i.bfj = load i64, ptr %i.bfi, align 8, !tbaa !10, !noalias !768
  %i.bfk = add i64 %i.bfj, %i.bfh                 ; 3 uses
  %i.bfl = icmp uge i64 %i.bfk, %i.bfh
  %i.bfm = add i64 %i.bfk, 1                      ; 2 uses
  %i.bfn = icmp ugt i64 %i.bfm, %i.bfh
  %.sink.i.i.i394 = select i1 %.022.i.i.i393, i64 %i.bfk, i64 %i.bfm
  %.1.in.i.i.i395 = select i1 %.022.i.i.i393, i1 %i.bfl, i1 %i.bfn ; 2 uses
  store i64 %.sink.i.i.i394, ptr %i.bfg, align 8, !tbaa !10, !noalias !768
  %indvars.iv.next.i.i.i396 = or disjoint i64 %indvars.iv.i.i.i392, 1 ; 2 uses
  %i.bfo = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.next.i.i.i396 ; 2 uses
  %i.bfp = load i64, ptr %i.bfo, align 8, !tbaa !10, !noalias !768 ; 3 uses
  %i.bfq = getelementptr inbounds nuw [8 x i8], ptr %i.bfe, i64 %indvars.iv.next.i.i.i396
  %i.bfr = load i64, ptr %i.bfq, align 8, !tbaa !10, !noalias !768
  %i.bfs = add i64 %i.bfr, %i.bfp                 ; 3 uses
  %i.bft = icmp uge i64 %i.bfs, %i.bfp
  %i.bfu = add i64 %i.bfs, 1                      ; 2 uses
  %i.bfv = icmp ugt i64 %i.bfu, %i.bfp
  %.sink.i.i.i394.1 = select i1 %.1.in.i.i.i395, i64 %i.bfs, i64 %i.bfu
  %.1.in.i.i.i395.1 = select i1 %.1.in.i.i.i395, i1 %i.bft, i1 %i.bfv ; 2 uses
  store i64 %.sink.i.i.i394.1, ptr %i.bfo, align 8, !tbaa !10, !noalias !768
  %indvars.iv.next.i.i.i396.1 = add nuw nsw i64 %indvars.iv.i.i.i392, 2 ; 2 uses
  %niter1159.next.1 = add i64 %niter1159, 2       ; 2 uses
  %niter1159.ncmp.1 = icmp eq i64 %niter1159.next.1, %unroll_iter1158
  br i1 %niter1159.ncmp.1, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398.unr-lcssa, label %.lr.ph.i.i.i391, !llvm.loop !25

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398.unr-lcssa: ; preds = %.lr.ph.i.i.i391
  %i.bfw = and i64 %i.bbl, 64
  %lcmp.mod1156.not = icmp eq i64 %i.bfw, 0
  br i1 %lcmp.mod1156.not, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398, label %.lr.ph.i.i.i391.epil.preheader

.lr.ph.i.i.i391.epil.preheader:                   ; preds = %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398.unr-lcssa, %.lr.ph.preheader.i.i.i390
  %indvars.iv.i.i.i392.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i390 ], [ %indvars.iv.next.i.i.i396.1, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398.unr-lcssa ] ; 2 uses
  %.022.i.i.i393.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i390 ], [ %.1.in.i.i.i395.1, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398.unr-lcssa ]
  %lcmp.mod1157 = trunc i64 %i.bbm to i1
  call void @llvm.assume(i1 %lcmp.mod1157)
  %i.bfx = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv.i.i.i392.epil.init ; 2 uses
  %i.bfy = load i64, ptr %i.bfx, align 8, !tbaa !10, !noalias !768
  %i.bfz = getelementptr inbounds nuw [8 x i8], ptr %i.bfe, i64 %indvars.iv.i.i.i392.epil.init
  %i.bga = load i64, ptr %i.bfz, align 8, !tbaa !10, !noalias !768
  %i.bgb = add i64 %i.bga, %i.bfy
  %not..022.i.i.i393.epil.init = xor i1 %.022.i.i.i393.epil.init, true
  %i.bgc = zext i1 %not..022.i.i.i393.epil.init to i64
  %.sink.i.i.i394.epil = add i64 %i.bgb, %i.bgc
  store i64 %.sink.i.i.i394.epil, ptr %i.bfx, align 8, !tbaa !10, !noalias !768
  br label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398

_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398:         ; preds = %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398.unr-lcssa, %.lr.ph.i.i.i391.epil.preheader
  %i.bgd = ptrtoint ptr %i.bbp to i64
  %i.bge = load i64, ptr %i.bch, align 8, !tbaa !10, !noalias !768
  %i.bgf = and i64 %i.bge, %i.bce
  store i64 %i.bgf, ptr %i.bch, align 8, !tbaa !10, !noalias !768
  br label %_ZN4llvh5APIntD2Ev.exit404

_ZN4llvh5APIntD2Ev.exit404:                       ; preds = %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i400
  %.pre-phi = phi ptr [ %i.bck, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398 ], [ %.pre809, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i400 ] ; 3 uses
  %i.bgg = phi i64 [ %i.bbu, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398 ], [ %i.bef, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i400 ]
  %i.bgh = phi ptr [ %i.bbr, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398 ], [ %i.beu, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i400 ] ; 3 uses
  %.sroa.0504.0 = phi i64 [ %i.bgd, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.i.i398 ], [ %i.bet, %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i400 ] ; 4 uses
  %i.bgi = add i32 %i.axe, -1                     ; 2 uses
  %i.bgj = and i32 %i.bgi, 63
  %i.bgk = zext nneg i32 %i.bgj to i64
  %i.bgl = shl nuw i64 1, %i.bgk
  br i1 %i.axf, label %_ZN4llvh5APIntD2Ev.exit404.cont544, label %_ZN4llvh5APIntD2Ev.exit404.else545

_ZN4llvh5APIntD2Ev.exit404.else545:               ; preds = %_ZN4llvh5APIntD2Ev.exit404
  %i.bgm = lshr i32 %i.bgi, 6
  %i.bgn = zext nneg i32 %i.bgm to i64
  %i.bgo = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi, i64 %i.bgn
  %.else.val546 = load i64, ptr %i.bgo, align 8, !tbaa !9
  br label %_ZN4llvh5APIntD2Ev.exit404.cont544

_ZN4llvh5APIntD2Ev.exit404.cont544:               ; preds = %_ZN4llvh5APIntD2Ev.exit404, %_ZN4llvh5APIntD2Ev.exit404.else545
  %i.bgp = phi i64 [ %i.bbj, %_ZN4llvh5APIntD2Ev.exit404 ], [ %.else.val546, %_ZN4llvh5APIntD2Ev.exit404.else545 ]
  %i.bgq = and i64 %i.bgp, %i.bgl
  %i.bgr = icmp ne i64 %i.bgq, 0
  %i.bgs = add i32 %i.og, -1                      ; 2 uses
  %i.bgt = and i32 %i.bgs, 63
  %i.bgu = zext nneg i32 %i.bgt to i64
  %i.bgv = shl nuw i64 1, %i.bgu
  %i.bgw = inttoptr i64 %.sroa.0504.0 to ptr      ; 3 uses
  br i1 %i.oh, label %_ZN4llvh5APIntD2Ev.exit404.cont, label %_ZN4llvh5APIntD2Ev.exit404.else

_ZN4llvh5APIntD2Ev.exit404.else:                  ; preds = %_ZN4llvh5APIntD2Ev.exit404.cont544
  %i.bgx = lshr i32 %i.bgs, 6
  %i.bgy = zext nneg i32 %i.bgx to i64
  %i.bgz = getelementptr inbounds nuw [8 x i8], ptr %i.bgw, i64 %i.bgy
  %.else.val = load i64, ptr %i.bgz, align 8, !tbaa !9
  br label %_ZN4llvh5APIntD2Ev.exit404.cont

_ZN4llvh5APIntD2Ev.exit404.cont:                  ; preds = %_ZN4llvh5APIntD2Ev.exit404.cont544, %_ZN4llvh5APIntD2Ev.exit404.else
  %i.bha = phi i64 [ %.sroa.0504.0, %_ZN4llvh5APIntD2Ev.exit404.cont544 ], [ %.else.val, %_ZN4llvh5APIntD2Ev.exit404.else ]
  %i.bhb = and i64 %i.bha, %i.bgv
  %i.bhc = icmp ne i64 %i.bhb, 0
  %i.bhd = xor i1 %i.bgr, %i.bhc
  br i1 %i.bhd, label %.critedge, label %bb.by

bb.by:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit404.cont
  br i1 %i.axf, label %bb.bz, label %.lr.ph.i.i.i407

bb.bz:                                            ; preds = %bb.by
  %i.bhe = icmp eq i64 %i.bbj, 0
  br label %_ZNK4llvh5APInt11isNullValueEv.exit418

.lr.ph.i.i.i407:                                  ; preds = %bb.by
  %i.bhf = zext i32 %i.axe to i64
  %i.bhg = add nuw nsw i64 %i.bhf, 63
  %i.bhh = lshr i64 %i.bhg, 6                     ; 2 uses
  %i.bhi = trunc nuw nsw i64 %i.bhh to i32
  %i.bhj = shl i32 %i.bhi, 6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i.i407
  %indvars.iv.i.i408 = phi i64 [ %indvars.iv.next.i.i410, %bb.cb ], [ %i.bhh, %.lr.ph.i.i.i407 ] ; 2 uses
  %.019.i.i.i409 = phi i32 [ %i.bhq, %bb.cb ], [ 0, %.lr.ph.i.i.i407 ] ; 2 uses
  %indvars.iv.next.i.i410 = add nsw i64 %indvars.iv.i.i408, -1 ; 2 uses
  %i.bhk = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi, i64 %indvars.iv.next.i.i410
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !10 ; 2 uses
  %i.bhm = icmp eq i64 %i.bhl, 0
  br i1 %i.bhm, label %bb.cb, label %.thread.i.i.i411

.thread.i.i.i411:                                 ; preds = %bb.ca
  %i.bhn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bhl, i1 true)
  %i.bho = trunc nuw nsw i64 %i.bhn to i32
  %i.bhp = or disjoint i32 %.019.i.i.i409, %i.bho
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i412

bb.cb:                                            ; preds = %bb.ca
  %i.bhq = add i32 %.019.i.i.i409, 64
  %i.bhr = icmp samesign ugt i64 %indvars.iv.i.i408, 1
  br i1 %i.bhr, label %bb.ca, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i412, !llvm.loop !93

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i412: ; preds = %bb.cb, %.thread.i.i.i411
  %.2.i.i.i413 = phi i32 [ %i.bhp, %.thread.i.i.i411 ], [ %i.bhj, %bb.cb ]
  %i.bhs = and i32 %i.axe, 63
  %.not.i.i.i414 = icmp eq i32 %i.bhs, 0
  %.neg.i.i.i415 = or i32 %i.axe, -64
  %.neg15.i.i.i416 = select i1 %.not.i.i.i414, i32 0, i32 %.neg.i.i.i415
  %i.bht = add i32 %.2.i.i.i413, %.neg15.i.i.i416
  %i.bhu = icmp eq i32 %i.bht, %i.axe
  br label %_ZNK4llvh5APInt11isNullValueEv.exit418

_ZNK4llvh5APInt11isNullValueEv.exit418:           ; preds = %bb.bz, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i412
end_hunk_6
