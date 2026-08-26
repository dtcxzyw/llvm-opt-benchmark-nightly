Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1396
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZNK4llvm5APInt8sshl_satEj:bb.a
  %i.bn = and i64 %i.bm, %i.bi
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !11, !noalias !504
  %i.bo = xor i64 %i.m, -1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.q ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11, !noalias !498
  %i.br = and i64 %i.bq, %i.bo
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !11, !noalias !498
  br label %_ZN4llvm5APInt17getSignedMaxValueEj.exit

_ZN4llvm5APInt17getSignedMaxValueEj.exit:         ; preds = %bb.h, %bb.i
  %.sink.i1 = phi ptr [ %i.au, %bb.h ], [ %i.az, %bb.i ]
  store ptr %.sink.i1, ptr %0, align 8, !tbaa !10, !alias.scope !498
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5APInt17getSignedMinValueEj.exit, %_ZN4llvm5APInt17getSignedMaxValueEj.exit, %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !8
  %i.bu = icmp ugt i32 %i.bt, 64
  br i1 %i.bu, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN4llvm5APIntD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.bv) #22
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt8ushl_satERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8    ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %2, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvm5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !30

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !10
  br label %_ZNK4llvm5APInt3ugtEm.exit.i

_ZNK4llvm5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %2, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !10
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvm5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  tail call void @_ZNK4llvm5APInt8ushl_satEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.aa)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt8ushl_satEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNK4llvm5APInt7ushl_ovEjRb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !391, !range !434, !noundef !435
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8
  store i32 %i.f, ptr %i.d, align 8, !tbaa !8
  %i.g = load i64, ptr %3, align 8
  store i64 %i.g, ptr %0, align 8
  br label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !8, !alias.scope !511
  %i.k = icmp ult i32 %i.i, 65
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nsw i32 0, %i.i
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 -1, %i.n
  %i.p = icmp eq i32 %i.i, 0
  %i.q = inttoptr i64 %i.o to ptr
  %i.r = select i1 %i.p, ptr null, ptr %i.q, !prof !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = zext i32 %i.i to i64
  %i.t = add nuw nsw i64 %i.s, 63                 ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741816
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #21, !noalias !511 ; 4 uses
  store i64 -1, ptr %i.w, align 8, !tbaa !11, !noalias !511
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = lshr i64 %i.t, 6                         ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 4294967288
  %i.ab = and i64 %i.aa, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 -1, i64 %i.ab, i1 false), !noalias !511
  %i.ac = sub i32 0, %i.i
  %i.ad = and i32 %i.ac, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = lshr i64 -1, %i.ae
  %i.ag = add nuw nsw i64 %i.y, 4294967295
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11, !noalias !511
  %i.ak = and i64 %i.aj, %i.af
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !11, !noalias !511
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.r, %bb.c ], [ %i.w, %bb.d ]
  store ptr %.sink.i.i, ptr %0, align 8, !tbaa !10, !alias.scope !511
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !8
  %i.al = icmp ugt i32 %.pre, 64
  br i1 %i.al, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #22
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 5 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  br i1 %4, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table._ZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbb, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -16
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.079 = phi ptr [ @.str, %bb.a ], [ %switch.load, %switch.lookup ] ; 6 uses
  %i.e = icmp eq i32 %2, 8                        ; 2 uses
  %i.f = icmp eq i32 %2, 10
  %i.g = or i1 %i.e, %i.f                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8    ; 13 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %.split, label %.lr.ph.i.i

.split:                                           ; preds = %bb.b
  %i.k = load i64, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.preheader, label %.thread

.thread:                                          ; preds = %.split
  %i.m = select i1 %5, i64 36, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbbE10BothDigits, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br i1 %3, label %_ZNK4llvm5APInt12getSExtValueEv.exit, label %bb.m

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.o = zext i32 %i.i to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 6                         ; 10 uses
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = shl i32 %i.r, 6                          ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.aa, %bb.d ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = or disjoint i32 %.019.i.i, %i.y
  br label %_ZNK4llvm5APInt6isZeroEv.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = add i32 %.019.i.i, 64
  %i.ab = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ab, label %bb.c, label %_ZNK4llvm5APInt6isZeroEv.exit, !llvm.loop !30

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.d, %.thread.i.i
  %.2.i.i = phi i32 [ %i.z, %.thread.i.i ], [ %i.t, %bb.d ]
  %i.ac = and i32 %i.i, 63
  %.not.i.i = icmp eq i32 %i.ac, 0
  %.neg.i.i = or i32 %i.i, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i ; 2 uses
  %i.ad = add i32 %.2.i.i, %.neg15.i.i
  %i.ae = icmp eq i32 %i.ad, %i.i
  br i1 %i.ae, label %.preheader, label %_ZN4llvm5APIntC2ERKS0_.exit

.preheader:                                       ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %.split
  %i.af = load i8, ptr %.079, align 1, !tbaa !10  ; 2 uses
  %.not95166 = icmp eq i8 %i.af, 0
  br i1 %.not95166, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph168, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit
  %i.ai = phi i8 [ %i.af, %.lr.ph168 ], [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit ] ; 2 uses
  %.1167 = phi ptr [ %.079, %.lr.ph168 ], [ %i.ap, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit ]
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !512 ; 2 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !514
  %.not.i = icmp ult i64 %i.aj, %i.ak
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.g:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %1, align 8, !tbaa !515
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 %i.ai, ptr %i.am, align 1
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !512
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit: ; preds = %bb.f, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.1167, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10  ; 2 uses
  %.not95 = icmp eq i8 %i.aq, 0
  br i1 %.not95, label %._crit_edge169, label %bb.e, !llvm.loop !516

._crit_edge169:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit, %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !512 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !514
  %.not.i96 = icmp ult i64 %i.as, %i.au
  br i1 %.not.i96, label %bb.i, label %bb.h, !prof !27

bb.h:                                             ; preds = %._crit_edge169
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 48)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit97

bb.i:                                             ; preds = %._crit_edge169
  %i.av = load ptr, ptr %1, align 8, !tbaa !515
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as
  store i8 48, ptr %i.aw, align 1
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !512
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit97

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %_ZNK4llvm5APInt6isZeroEv.exit
  %i.az = select i1 %5, i64 36, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbbE10BothDigits, i64 %i.az ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 %i.i, ptr %i.bb, align 8, !tbaa !8
  %i.bc = lshr i64 %i.p, 3
  %i.bd = and i64 %i.bc, 1073741816               ; 2 uses
  %i.be = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #21 ; 20 uses
  store ptr %i.be, ptr %7, align 8, !tbaa !10
  %i.bf = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.bf, i64 %i.bd, i1 false)
  br i1 %3, label %bb.v, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit107

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %.thread
  %i.bg = icmp eq i32 %i.i, 0
  %i.bh = sub nuw nsw i32 64, %i.i
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = shl i64 %i.k, %i.bi
  %i.bk = ashr exact i64 %i.bj, %i.bi
  %.0.i.i = select i1 %i.bg, i64 0, i64 %i.bk     ; 3 uses
  %i.bl = icmp sgt i64 %.0.i.i, -1
  br i1 %i.bl, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !512 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !514
  %.not.i100 = icmp ult i64 %i.bn, %i.bp
  br i1 %.not.i100, label %bb.l, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 45)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit101

bb.l:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %1, align 8, !tbaa !515
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 45, ptr %i.br, align 1
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !512
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit101

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit101: ; preds = %bb.k, %bb.l
  %i.bu = sub i64 0, %.0.i.i
  br label %bb.m

bb.m:                                             ; preds = %.thread, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit101, %_ZNK4llvm5APInt12getSExtValueEv.exit
  %.184 = phi i64 [ %.0.i.i, %_ZNK4llvm5APInt12getSExtValueEv.exit ], [ %i.bu, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit101 ], [ %i.k, %.thread ] ; 2 uses
  %i.bv = load i8, ptr %.079, align 1, !tbaa !10  ; 2 uses
  %.not93154 = icmp eq i8 %i.bv, 0
  br i1 %.not93154, label %.preheader141, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.n

.preheader141:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit103, %bb.m
  %.not94159 = icmp eq i64 %.184, 0
  br i1 %.not94159, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader141
  %i.by = zext i32 %2 to i64                      ; 3 uses
  br label %.peel.next

bb.n:                                             ; preds = %.lr.ph157, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit103
  %i.bz = phi i8 [ %i.bv, %.lr.ph157 ], [ %i.ch, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit103 ] ; 2 uses
  %.2155 = phi ptr [ %.079, %.lr.ph157 ], [ %i.cg, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit103 ]
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !512 ; 2 uses
  %i.cb = load i64, ptr %i.bx, align 8, !tbaa !514
  %.not.i102 = icmp ult i64 %i.ca, %i.cb
  br i1 %.not.i102, label %bb.p, label %bb.o, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %i.bz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit103

bb.p:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %1, align 8, !tbaa !515
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 %i.bz, ptr %i.cd, align 1
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !512
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.bw, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit103

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit103: ; preds = %bb.o, %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %.2155, i64 1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10  ; 2 uses
  %.not93 = icmp eq i8 %i.ch, 0
  br i1 %.not93, label %.preheader141, label %bb.n, !llvm.loop !517

.peel.next:                                       ; preds = %.lr.ph163, %bb.s
  %.081.idx162 = phi i64 [ 65, %.lr.ph163 ], [ %.182.add, %bb.s ] ; 3 uses
  %.184.pn = phi i64 [ %.184, %.lr.ph163 ], [ %11, %bb.s ] ; 3 uses
  %.086160 = phi i32 [ 0, %.lr.ph163 ], [ %i.cn, %bb.s ] ; 4 uses
  br i1 %6, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.peel.next
  %i.ci = urem i32 %.086160, 3
  %8 = and i32 %.086160, 3
  %9 = select i1 %i.g, i32 %i.ci, i32 %8
  %i.cj = icmp eq i32 %9, 0
  %10 = icmp ne i32 %.086160, 0
  %or.cond = select i1 %i.cj, i1 %10, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.081.add = add nsw i64 %.081.idx162, -1        ; 2 uses
  %.ptr140 = getelementptr inbounds i8, ptr %i.a, i64 %.081.add
  store i8 39, ptr %.ptr140, align 1, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.peel.next
  %.182.idx = phi i64 [ %.081.add, %bb.r ], [ %.081.idx162, %bb.q ], [ %.081.idx162, %.peel.next ]
  %i.ck = urem i64 %.184.pn, %i.by
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %.182.add = add nsw i64 %.182.idx, -1           ; 3 uses
  %.ptr139 = getelementptr inbounds i8, ptr %i.a, i64 %.182.add
  store i8 %i.cm, ptr %.ptr139, align 1, !tbaa !10
  %11 = udiv i64 %.184.pn, %i.by
  %i.cn = add nuw nsw i32 %.086160, 1
  %.not94 = icmp ult i64 %.184.pn, %i.by
  br i1 %.not94, label %._crit_edge164, label %.peel.next, !llvm.loop !518

._crit_edge164:                                   ; preds = %bb.s, %.preheader141
  %.081.idx.lcssa158 = phi i64 [ 65, %.preheader141 ], [ %.182.add, %bb.s ] ; 3 uses
  %.081.ptr.le = getelementptr inbounds i8, ptr %i.a, i64 %.081.idx.lcssa158
  %gepdiff = sub nsw i64 65, %.081.idx.lcssa158   ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !512 ; 2 uses
  %i.cq = add i64 %i.cp, %gepdiff                 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !514
  %i.ct = icmp ult i64 %i.cs, %i.cq
  br i1 %i.ct, label %bb.t, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i

bb.t:                                             ; preds = %._crit_edge164
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.cu, i64 noundef %i.cq, i64 noundef 1) #23
  %.pre8.pre.i = load i64, ptr %i.co, align 8, !tbaa !512
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i:    ; preds = %bb.t, %._crit_edge164
  %.pre8.i = phi i64 [ %i.cp, %._crit_edge164 ], [ %.pre8.pre.i, %bb.t ] ; 2 uses
  %.not.i.i104 = icmp eq i64 %.081.idx.lcssa158, 65
  br i1 %.not.i.i104, label %_ZN4llvm15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i
  %i.cv = load ptr, ptr %1, align 8, !tbaa !515
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.pre8.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr nonnull align 1 %.081.ptr.le, i64 %gepdiff, i1 false)
  %.pre.i = load i64, ptr %i.co, align 8, !tbaa !512
  br label %_ZN4llvm15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit

_ZN4llvm15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i, %bb.u
  %i.cx = phi i64 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i ], [ %.pre.i, %bb.u ]
  %i.cy = add i64 %i.cx, %gepdiff
  store i64 %i.cy, ptr %i.co, align 8, !tbaa !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit97

bb.v:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.cz = load i32, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %i.da = add i32 %i.cz, -1                       ; 2 uses
  %i.db = and i32 %i.da, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = icmp ult i32 %i.cz, 65
  %i.df = lshr i32 %i.da, 6
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dg
  %.in.i.i.i = select i1 %i.de, ptr %0, ptr %i.dh
  %i.di = load i64, ptr %.in.i.i.i, align 8, !tbaa !10
  %i.dj = and i64 %i.dd, %i.di
  %.not138 = icmp eq i64 %i.dj, 0
  br i1 %.not138, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit107, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.v
  %min.iters.check = icmp ult i32 %i.i, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader236, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.q, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !11
  %wide.load228 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !11
  %i.dm = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.dn = xor <2 x i64> %wide.load228, splat (i64 -1)
  store <2 x i64> %i.dm, ptr %i.dk, align 8, !tbaa !11
  store <2 x i64> %i.dn, ptr %i.dl, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i.preheader236

.lr.ph.i.i.i.i.preheader236:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader236, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader236 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.dr = xor i64 %i.dq, -1
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !11
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.q
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !520

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block
  %i.ds = sub i32 0, %i.i
  %i.dt = and i32 %i.ds, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = lshr i64 -1, %i.du                      ; 2 uses
  %i.dw = add nuw nsw i64 %i.q, 4294967295
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dx ; 4 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.ea = and i64 %i.dz, %i.dv
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !11
  %i.eb = load i64, ptr %i.be, align 8, !tbaa !11
  %i.ec = add i64 %i.eb, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.be, align 8, !tbaa !11
  %.not.peel.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.peel.i.i.i.i, label %.lr.ph.i.i.i2.i, label %_ZN4llvm5APInt6negateEv.exit

.lr.ph.i.i.i2.i:                                  ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i2.i
  %indvars.iv.i.i.i3.i = phi i64 [ %indvars.iv.next.i.i.i4.i, %.lr.ph.i.i.i2.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.i.i3.i ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !11
  %i.ef = add i64 %i.ee, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !11
  %.not.i.i.i.i = icmp ne i64 %i.ef, 0
  %indvars.iv.next.i.i.i4.i = add nuw nsw i64 %indvars.iv.i.i.i3.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i = icmp eq i64 %indvars.iv.next.i.i.i4.i, %i.q
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i
  br i1 %or.cond.i.i, label %_ZN4llvm5APInt6negateEv.exit, label %.lr.ph.i.i.i2.i, !llvm.loop !14

_ZN4llvm5APInt6negateEv.exit:                     ; preds = %.lr.ph.i.i.i2.i, %.lr.ph.preheader.i.i.i.i
  %i.eg = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.eh = and i64 %i.eg, %i.dv
  store i64 %i.eh, ptr %i.dy, align 8, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !512 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !514
  %.not.i106 = icmp ult i64 %i.ej, %i.el
  br i1 %.not.i106, label %bb.x, label %bb.w, !prof !27

bb.w:                                             ; preds = %_ZN4llvm5APInt6negateEv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 45)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit107

bb.x:                                             ; preds = %_ZN4llvm5APInt6negateEv.exit
  %i.em = load ptr, ptr %1, align 8, !tbaa !515
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ej
  store i8 45, ptr %i.en, align 1
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !512
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.ei, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit107

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit107: ; preds = %bb.x, %bb.w, %bb.v, %_ZN4llvm5APIntC2ERKS0_.exit
  %i.eq = load i8, ptr %.079, align 1, !tbaa !10  ; 2 uses
  %.not152 = icmp eq i8 %i.eq, 0
  br i1 %.not152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit107
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit109
  %i.et = phi i8 [ %i.eq, %.lr.ph ], [ %i.fb, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit109 ] ; 2 uses
  %.3153 = phi ptr [ %.079, %.lr.ph ], [ %i.fa, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit109 ]
  %i.eu = load i64, ptr %i.er, align 8, !tbaa !512 ; 2 uses
  %i.ev = load i64, ptr %i.es, align 8, !tbaa !514
  %.not.i108 = icmp ult i64 %i.eu, %i.ev
  br i1 %.not.i108, label %bb.aa, label %bb.z, !prof !27

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %i.et)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit109

bb.aa:                                            ; preds = %bb.y
  %i.ew = load ptr, ptr %1, align 8, !tbaa !515
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 %i.et, ptr %i.ex, align 1
  %i.ey = load i64, ptr %i.er, align 8, !tbaa !512
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.er, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit109

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit109: ; preds = %bb.z, %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %.3153, i64 1 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !10  ; 2 uses
  %.not = icmp eq i8 %i.fb, 0
  br i1 %.not, label %._crit_edge, label %bb.y, !llvm.loop !521

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit109, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit107
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !512
  switch i32 %2, label %.preheader142 [
    i32 16, label %bb.ab
    i32 8, label %bb.ab
    i32 2, label %bb.ab
  ]

.preheader142:                                    ; preds = %._crit_edge
  %i.fe = zext i32 %2 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.al

bb.ab:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge
  %i.fg = icmp eq i32 %2, 16
  %i.fh = select i1 %i.e, i32 3, i32 1
  %i.fi = select i1 %i.fg, i32 4, i32 %i.fh       ; 2 uses
  %i.fj = add nsw i32 %2, -1
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fl = zext nneg i32 %i.fi to i64              ; 4 uses
  %i.fm = sub nuw nsw i32 64, %i.fi
  %i.fn = zext nneg i32 %i.fm to i64              ; 3 uses
  %i.fo = add nsw i64 %i.q, -1                    ; 3 uses
  %xtraiter = and i64 %i.fo, 1
  %i.fp = icmp eq i64 %i.q, 2
  %unroll_iter = and i64 %i.fo, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod244 = trunc i64 %i.fo to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %_ZN4llvm5APInt11lshrInPlaceEj.exit
  %.080 = phi i32 [ 0, %bb.ab ], [ %i.hx, %_ZN4llvm5APInt11lshrInPlaceEj.exit ] ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ad ], [ %i.q, %.lr.ph.i.i.i ] ; 2 uses
  %.019.i.i.i = phi i32 [ %i.fw, %bb.ad ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !11 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %bb.ad, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ac
  %i.ft = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fr, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = or disjoint i32 %.019.i.i.i, %i.fu
  br label %_ZNK4llvm5APInt12getBoolValueEv.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fw = add i32 %.019.i.i.i, 64
  %i.fx = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.fx, label %bb.ac, label %_ZNK4llvm5APInt12getBoolValueEv.exit, !llvm.loop !30

_ZNK4llvm5APInt12getBoolValueEv.exit:             ; preds = %bb.ad, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.fv, %.thread.i.i.i ], [ %i.t, %bb.ad ]
  %i.fy = add i32 %.2.i.i.i, %.neg15.i.i
  %i.fz = icmp eq i32 %i.fy, %i.i
  br i1 %i.fz, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %_ZNK4llvm5APInt12getBoolValueEv.exit
  %i.ga = load i64, ptr %i.be, align 8, !tbaa !11
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = and i32 %i.fj, %i.gb
  br i1 %6, label %bb.af, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit113

bb.af:                                            ; preds = %bb.ae
  %i.gd = urem i32 %.080, 3
  %12 = and i32 %.080, 3
  %13 = select i1 %i.g, i32 %i.gd, i32 %12
  %i.ge = icmp eq i32 %13, 0
  %i.gf = icmp ne i32 %.080, 0
  %or.cond7 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond7, label %bb.ag, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit113

bb.ag:                                            ; preds = %bb.af
  %i.gg = load i64, ptr %i.fc, align 8, !tbaa !512 ; 2 uses
  %i.gh = load i64, ptr %i.fk, align 8, !tbaa !514
  %.not.i112 = icmp ult i64 %i.gg, %i.gh
  br i1 %.not.i112, label %bb.ai, label %bb.ah, !prof !27

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 39)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit113

bb.ai:                                            ; preds = %bb.ag
  %i.gi = load ptr, ptr %1, align 8, !tbaa !515
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  store i8 39, ptr %i.gj, align 1
  %i.gk = load i64, ptr %i.fc, align 8, !tbaa !512
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.fc, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit113

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit113: ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae
  %i.gm = zext i32 %i.gc to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !10  ; 2 uses
  %i.gp = load i64, ptr %i.fc, align 8, !tbaa !512 ; 2 uses
  %i.gq = load i64, ptr %i.fk, align 8, !tbaa !514
  %.not.i114 = icmp ult i64 %i.gp, %i.gq
  br i1 %.not.i114, label %bb.ak, label %bb.aj, !prof !27

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit113
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %i.go)
  br label %.lr.ph.i.i.i117

bb.ak:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit113
  %i.gr = load ptr, ptr %1, align 8, !tbaa !515
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp
  store i8 %i.go, ptr %i.gs, align 1
  %i.gt = load i64, ptr %i.fc, align 8, !tbaa !512
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.fc, align 8, !tbaa !512
  br label %.lr.ph.i.i.i117

.lr.ph.i.i.i117:                                  ; preds = %bb.ak, %bb.aj
  %i.gv = load i64, ptr %i.be, align 8, !tbaa !11
  %i.gw = lshr i64 %i.gv, %i.fl                   ; 3 uses
  store i64 %i.gw, ptr %i.be, align 8, !tbaa !11
  br i1 %i.fp, label %.lr.ph.i.i118.epil.preheader, label %.lr.ph.i.i118

.lr.ph.i.i118:                                    ; preds = %.lr.ph.i.i.i117, %.lr.ph.i.i118
  %indvars.iv.next.i2.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i118 ], [ 1, %.lr.ph.i.i.i117 ] ; 4 uses
  %i.gx = phi ptr [ %i.hn, %.lr.ph.i.i118 ], [ %i.be, %.lr.ph.i.i.i117 ]
  %i.gy = phi i64 [ %i.ho, %.lr.ph.i.i118 ], [ %i.gw, %.lr.ph.i.i.i117 ]
  %i.gz = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i118 ], [ 0, %.lr.ph.i.i.i117 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i118 ], [ 0, %.lr.ph.i.i.i117 ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !11
  %i.hd = shl i64 %i.hc, %i.fn
  %i.he = or i64 %i.hd, %i.gy
  store i64 %i.he, ptr %i.gx, align 8, !tbaa !11
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i2.i.i ; 3 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !11
  %i.hh = lshr i64 %i.hg, %i.fl                   ; 2 uses
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !11
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i2.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !11 ; 2 uses
  %i.hl = shl i64 %i.hk, %i.fn
  %i.hm = or i64 %i.hl, %i.hh
  store i64 %i.hm, ptr %i.hf, align 8, !tbaa !11
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.i.i ; 3 uses
  %i.ho = lshr i64 %i.hk, %i.fl                   ; 3 uses
  store i64 %i.ho, ptr %i.hn, align 8, !tbaa !11
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa, label %.lr.ph.i.i118

_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa:     ; preds = %.lr.ph.i.i118
  br i1 %lcmp.mod.not, label %_ZN4llvm5APInt11lshrInPlaceEj.exit, label %.lr.ph.i.i118.epil.preheader

.lr.ph.i.i118.epil.preheader:                     ; preds = %_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa, %.lr.ph.i.i.i117
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i117 ], [ %indvars.iv.next.i.i.i.1, %_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.be, %.lr.ph.i.i.i117 ], [ %i.hn, %_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa ]
  %.epil.init241.a = phi i64 [ %i.gw, %.lr.ph.i.i.i117 ], [ %i.ho, %_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa ]
  %.epil.init243 = phi i64 [ 0, %.lr.ph.i.i.i117 ], [ %indvars.iv.next.i.i.i, %_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod244)
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.epil.init243
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !11
  %i.hs = shl i64 %i.hr, %i.fn
  %i.ht = or i64 %i.hs, %.epil.init241.a
  store i64 %i.ht, ptr %.epil.init, align 8, !tbaa !11
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i2.i.i.epil.init ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !11
  %i.hw = lshr i64 %i.hv, %i.fl
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !11
  br label %_ZN4llvm5APInt11lshrInPlaceEj.exit

_ZN4llvm5APInt11lshrInPlaceEj.exit:               ; preds = %_ZN4llvm5APInt11lshrInPlaceEj.exit.unr-lcssa, %.lr.ph.i.i118.epil.preheader
  %i.hx = add nuw nsw i32 %.080, 1
  br label %.lr.ph.i.i.i, !llvm.loop !522

bb.al:                                            ; preds = %.preheader142, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit134
  %i.hy = phi i32 [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit134 ], [ %i.i, %.preheader142 ] ; 7 uses
  %.0 = phi i32 [ %i.jl, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit134 ], [ 0, %.preheader142 ] ; 4 uses
  %i.hz = icmp ult i32 %i.hy, 65
  br i1 %i.hz, label %.split207, label %.lr.ph.i.i.i119

.split207:                                        ; preds = %bb.al
  %i.ia = load i64, ptr %7, align 8, !tbaa !10
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %.loopexit, label %bb.ao

.lr.ph.i.i.i119:                                  ; preds = %bb.al
  %i.ic = zext i32 %i.hy to i64
  %i.id = add nuw nsw i64 %i.ic, 63
  %i.ie = lshr i64 %i.id, 6                       ; 2 uses
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = load ptr, ptr %7, align 8, !tbaa !10
  %i.ih = shl i32 %i.if, 6
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph.i.i.i119
  %indvars.iv.i.i120 = phi i64 [ %indvars.iv.next.i.i122, %bb.an ], [ %i.ie, %.lr.ph.i.i.i119 ] ; 2 uses
  %.019.i.i.i121 = phi i32 [ %i.io, %bb.an ], [ 0, %.lr.ph.i.i.i119 ] ; 2 uses
  %indvars.iv.next.i.i122 = add nsw i64 %indvars.iv.i.i120, -1 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i122
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !11 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.an, label %.thread.i.i.i123

.thread.i.i.i123:                                 ; preds = %bb.am
  %i.il = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ij, i1 true)
  %i.im = trunc nuw nsw i64 %i.il to i32
  %i.in = or disjoint i32 %.019.i.i.i121, %i.im
  br label %_ZNK4llvm5APInt12getBoolValueEv.exit130

bb.an:                                            ; preds = %bb.am
  %i.io = add i32 %.019.i.i.i121, 64
  %i.ip = icmp samesign ugt i64 %indvars.iv.i.i120, 1
  br i1 %i.ip, label %bb.am, label %_ZNK4llvm5APInt12getBoolValueEv.exit130, !llvm.loop !30

_ZNK4llvm5APInt12getBoolValueEv.exit130:          ; preds = %bb.an, %.thread.i.i.i123
  %.2.i.i.i125 = phi i32 [ %i.in, %.thread.i.i.i123 ], [ %i.ih, %bb.an ]
  %i.iq = and i32 %i.hy, 63
  %.not.i.i.i126 = icmp eq i32 %i.iq, 0
  %.neg.i.i.i127 = or i32 %i.hy, -64
  %.neg15.i.i.i128 = select i1 %.not.i.i.i126, i32 0, i32 %.neg.i.i.i127
  %i.ir = add i32 %.2.i.i.i125, %.neg15.i.i.i128
  %i.is = icmp eq i32 %i.ir, %i.hy
  br i1 %i.is, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %.split207, %_ZNK4llvm5APInt12getBoolValueEv.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @_ZN4llvm5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %7, i64 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %6, label %bb.ap, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit132

bb.ap:                                            ; preds = %bb.ao
  %i.it = urem i32 %.0, 3
  %14 = and i32 %.0, 3
  %15 = select i1 %i.g, i32 %i.it, i32 %14
  %i.iu = icmp eq i32 %15, 0
  %i.iv = icmp ne i32 %.0, 0
  %or.cond9 = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %or.cond9, label %bb.aq, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit132

bb.aq:                                            ; preds = %bb.ap
  %i.iw = load i64, ptr %i.fc, align 8, !tbaa !512 ; 2 uses
  %i.ix = load i64, ptr %i.ff, align 8, !tbaa !514
  %.not.i131 = icmp ult i64 %i.iw, %i.ix
  br i1 %.not.i131, label %bb.as, label %bb.ar, !prof !27

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 39)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit132

bb.as:                                            ; preds = %bb.aq
  %i.iy = load ptr, ptr %1, align 8, !tbaa !515
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iw
  store i8 39, ptr %i.iz, align 1
  %i.ja = load i64, ptr %i.fc, align 8, !tbaa !512
  %i.jb = add i64 %i.ja, 1
  store i64 %i.jb, ptr %i.fc, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit132

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit132: ; preds = %bb.as, %bb.ar, %bb.ap, %bb.ao
  %i.jc = load i64, ptr %i.b, align 8, !tbaa !11
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !10  ; 2 uses
  %i.jf = load i64, ptr %i.fc, align 8, !tbaa !512 ; 2 uses
  %i.jg = load i64, ptr %i.ff, align 8, !tbaa !514
  %.not.i133 = icmp ult i64 %i.jf, %i.jg
  br i1 %.not.i133, label %bb.au, label %bb.at, !prof !27

bb.at:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit132
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %i.je)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit134

bb.au:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit132
  %i.jh = load ptr, ptr %1, align 8, !tbaa !515
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jf
  store i8 %i.je, ptr %i.ji, align 1
  %i.jj = load i64, ptr %i.fc, align 8, !tbaa !512
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.fc, align 8, !tbaa !512
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit134

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit134: ; preds = %bb.at, %bb.au
  %i.jl = add nuw nsw i32 %.0, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.pre = load i32, ptr %i.bb, align 8, !tbaa !8
  br label %bb.al, !llvm.loop !523

.loopexit:                                        ; preds = %_ZNK4llvm5APInt12getBoolValueEv.exit, %_ZNK4llvm5APInt12getBoolValueEv.exit130, %.split207
  %i.jm = phi i32 [ %i.hy, %_ZNK4llvm5APInt12getBoolValueEv.exit130 ], [ %i.hy, %.split207 ], [ %i.i, %_ZNK4llvm5APInt12getBoolValueEv.exit ]
  %i.jn = and i64 %i.fd, 4294967295               ; 3 uses
  %i.jo = load i64, ptr %i.fc, align 8, !tbaa !512 ; 2 uses
  %i.jp = icmp samesign ne i64 %i.jn, %i.jo
  %i.jq = add nsw i64 %i.jo, -1                   ; 2 uses
  %i.jr = icmp slt i64 %i.jn, %i.jq
  %or.cond.i.i135 = select i1 %i.jp, i1 %i.jr, i1 false
  br i1 %or.cond.i.i135, label %.lr.ph.i.i136.preheader, label %_ZSt7reverseIPcEvT_S1_.exit

.lr.ph.i.i136.preheader:                          ; preds = %.loopexit
  %i.js = load ptr, ptr %1, align 8, !tbaa !515   ; 2 uses
  %.012.i.i = getelementptr inbounds i8, ptr %i.js, i64 %i.jq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jn
  br label %.lr.ph.i.i136

.lr.ph.i.i136:                                    ; preds = %.lr.ph.i.i136.preheader, %.lr.ph.i.i136
  %.014.i.i = phi ptr [ %.0.i.i137, %.lr.ph.i.i136 ], [ %.012.i.i, %.lr.ph.i.i136.preheader ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.jw, %.lr.ph.i.i136 ], [ %i.jt, %.lr.ph.i.i136.preheader ] ; 3 uses
  %i.ju = load i8, ptr %.0913.i.i, align 1, !tbaa !10
  %i.jv = load i8, ptr %.014.i.i, align 1, !tbaa !10
  store i8 %i.jv, ptr %.0913.i.i, align 1, !tbaa !10
  store i8 %i.ju, ptr %.014.i.i, align 1, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 1 ; 2 uses
  %.0.i.i137 = getelementptr inbounds i8, ptr %.014.i.i, i64 -1 ; 2 uses
  %i.jx = icmp ult ptr %i.jw, %.0.i.i137
  br i1 %i.jx, label %.lr.ph.i.i136, label %_ZSt7reverseIPcEvT_S1_.exit.loopexit, !llvm.loop !524

_ZSt7reverseIPcEvT_S1_.exit.loopexit:             ; preds = %.lr.ph.i.i136
  %.pre180 = load i32, ptr %i.bb, align 8, !tbaa !8
  br label %_ZSt7reverseIPcEvT_S1_.exit

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %_ZSt7reverseIPcEvT_S1_.exit.loopexit, %.loopexit
  %i.jy = phi i32 [ %.pre180, %_ZSt7reverseIPcEvT_S1_.exit.loopexit ], [ %i.jm, %.loopexit ]
  %i.jz = icmp ugt i32 %i.jy, 64
  br i1 %i.jz, label %bb.av, label %_ZN4llvm5APIntD2Ev.exit

bb.av:                                            ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ka = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %_ZN4llvm5APIntD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.ka) #22
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit97

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit97: ; preds = %bb.i, %bb.h, %_ZN4llvm15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt5printERNS_11raw_ostreamEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !515
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !512
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 40, ptr %i.c, align 8, !tbaa !514
  call void @_ZNK4llvm5APInt8toStringERNS_15SmallVectorImplIcEEjbbbb(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 10, i1 noundef zeroext %2, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.d = load ptr, ptr %3, align 8, !tbaa !515
  %i.e = load i64, ptr %i.b, align 8, !tbaa !512
  %i.f = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.d, i64 noundef %i.e) #23 ; 0 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !515    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZN4llvm11SmallVectorIcLj40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.g) #23
  br label %_ZN4llvm11SmallVectorIcLj40EED2Ev.exit

_ZN4llvm11SmallVectorIcLj40EED2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm5APInt5tcSetEPmmj(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !11
  %i.a = icmp ugt i32 %2, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.d, i1 false), !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm5APInt8tcAssignEPmPKmj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !11
  %wide.load8 = load <2 x i64>, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i64> %wide.load, ptr %i.f, align 8, !tbaa !11
  store <2 x i64> %wide.load8, ptr %i.g, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader9, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader9 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
end_hunk_0
begin_hunk_1_@llvm.bitreverse.v2i64
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN4llvmngENS_5APIntE: argument 0"}
!320 = distinct !{!320, !"_ZN4llvmngENS_5APIntE"}
!321 = distinct !{!321, !15, !20, !21}
!322 = distinct !{!322, !15, !21, !20}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN4llvmngENS_5APIntE: argument 0"}
!325 = distinct !{!325, !"_ZN4llvmngENS_5APIntE"}
!326 = distinct !{!326, !15, !20, !21}
!327 = distinct !{!327, !15, !21, !20}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN4llvmngENS_5APIntE: argument 0"}
!330 = distinct !{!330, !"_ZN4llvmngENS_5APIntE"}
!331 = distinct !{!331, !15, !20, !21}
!332 = distinct !{!332, !15, !21, !20}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZN4llvmngENS_5APIntE: argument 0"}
!335 = distinct !{!335, !"_ZN4llvmngENS_5APIntE"}
!336 = distinct !{!336, !15, !20, !21}
!337 = distinct !{!337, !15, !21, !20}
!338 = !{!339}
!339 = distinct !{!339, !340, !"_ZN4llvmngENS_5APIntE: argument 0"}
!340 = distinct !{!340, !"_ZN4llvmngENS_5APIntE"}
!341 = distinct !{!341, !15, !20, !21}
!342 = distinct !{!342, !15, !21, !20}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZN4llvmngENS_5APIntE: argument 0"}
!345 = distinct !{!345, !"_ZN4llvmngENS_5APIntE"}
!346 = distinct !{!346, !15, !20, !21}
!347 = distinct !{!347, !15, !21, !20}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN4llvmngENS_5APIntE: argument 0"}
!350 = distinct !{!350, !"_ZN4llvmngENS_5APIntE"}
!351 = distinct !{!351, !15, !20, !21}
!352 = distinct !{!352, !15, !21, !20}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN4llvmngENS_5APIntE: argument 0"}
!355 = distinct !{!355, !"_ZN4llvmngENS_5APIntE"}
!356 = distinct !{!356, !15, !20, !21}
!357 = distinct !{!357, !15, !21, !20}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN4llvmngENS_5APIntE: argument 0"}
!360 = distinct !{!360, !"_ZN4llvmngENS_5APIntE"}
!361 = distinct !{!361, !15, !20, !21}
!362 = distinct !{!362, !15, !21, !20}
!363 = distinct !{!363, !15, !20, !21}
!364 = distinct !{!364, !15, !21, !20}
!365 = distinct !{!365, !15, !20, !21}
!366 = distinct !{!366, !15, !21, !20}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN4llvmngENS_5APIntE: argument 0"}
!369 = distinct !{!369, !"_ZN4llvmngENS_5APIntE"}
!370 = distinct !{!370, !15, !20, !21}
!371 = distinct !{!371, !15, !21, !20}
!372 = distinct !{!372, !15, !20, !21}
!373 = distinct !{!373, !15, !21, !20}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN4llvmngENS_5APIntE: argument 0"}
!376 = distinct !{!376, !"_ZN4llvmngENS_5APIntE"}
!377 = distinct !{!377, !15, !20, !21}
!378 = distinct !{!378, !15, !21, !20}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN4llvmngENS_5APIntE: argument 0"}
!381 = distinct !{!381, !"_ZN4llvmngENS_5APIntE"}
!382 = distinct !{!382, !15, !20, !21}
!383 = distinct !{!383, !15, !21, !20}
!384 = distinct !{!384, !15, !20, !21}
!385 = distinct !{!385, !15, !21, !20}
!386 = distinct !{!386, !15, !20, !21}
!387 = distinct !{!387, !15, !21, !20}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!390 = distinct !{!390, !"_ZN4llvmplENS_5APIntERKS0_"}
!391 = !{!392, !392, i64 0}
!392 = !{!"bool", !6, i64 0}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!395 = distinct !{!395, !"_ZN4llvmplENS_5APIntERKS0_"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZN4llvmmiENS_5APIntERKS0_: argument 0"}
!398 = distinct !{!398, !"_ZN4llvmmiENS_5APIntERKS0_"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN4llvmmiENS_5APIntERKS0_: argument 0"}
!401 = distinct !{!401, !"_ZN4llvmmiENS_5APIntERKS0_"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZNK4llvm5APInt4lshrEj: argument 0"}
!404 = distinct !{!404, !"_ZNK4llvm5APInt4lshrEj"}
!405 = !{!406, !408}
!406 = distinct !{!406, !407, !"_ZNK4llvm5APInt3shlEj: argument 0:thread"}
!407 = distinct !{!407, !"_ZNK4llvm5APInt3shlEj"}
!408 = distinct !{!408, !409, !"_ZNK4llvm5APIntlsEj: argument 0:thread"}
!409 = distinct !{!409, !"_ZNK4llvm5APIntlsEj"}
!410 = !{!411, !412}
!411 = distinct !{!411, !407, !"_ZNK4llvm5APInt3shlEj: argument 0:thread"}
!412 = distinct !{!412, !409, !"_ZNK4llvm5APIntlsEj: argument 0:thread"}
!413 = !{!414}
!414 = distinct !{!414, !409, !"_ZNK4llvm5APIntlsEj: argument 0"}
!415 = !{!416}
!416 = distinct !{!416, !407, !"_ZNK4llvm5APInt3shlEj: argument 0"}
!417 = !{!416, !414}
!418 = !{!419, !421}
!419 = distinct !{!419, !420, !"_ZNK4llvm5APInt3shlEj: argument 0:thread"}
!420 = distinct !{!420, !"_ZNK4llvm5APInt3shlEj"}
!421 = distinct !{!421, !422, !"_ZNK4llvm5APIntlsEj: argument 0:thread"}
!422 = distinct !{!422, !"_ZNK4llvm5APIntlsEj"}
!423 = !{!424, !425}
!424 = distinct !{!424, !420, !"_ZNK4llvm5APInt3shlEj: argument 0"}
!425 = distinct !{!425, !422, !"_ZNK4llvm5APIntlsEj: argument 0"}
!426 = !{!425}
!427 = !{!424}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZNK4llvm5APIntmlERKS0_: argument 0"}
!430 = distinct !{!430, !"_ZNK4llvm5APIntmlERKS0_"}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZN4llvmmiENS_5APIntEm: argument 0"}
!433 = distinct !{!433, !"_ZN4llvmmiENS_5APIntEm"}
!434 = !{i8 0, i8 2}
!435 = !{}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN4llvm5APInt17getSignedMinValueEj: argument 0"}
!438 = distinct !{!438, !"_ZN4llvm5APInt17getSignedMinValueEj"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN4llvm5APInt17getSignedMaxValueEj: argument 0"}
!441 = distinct !{!441, !"_ZN4llvm5APInt17getSignedMaxValueEj"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!444 = distinct !{!444, !"_ZN4llvm5APInt10getAllOnesEj"}
!445 = !{!443, !440}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZNK4llvm5APInt7uadd_ovERKS0_Rb: argument 0"}
!448 = distinct !{!448, !"_ZNK4llvm5APInt7uadd_ovERKS0_Rb"}
!449 = !{!450, !447}
!450 = distinct !{!450, !451, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!451 = distinct !{!451, !"_ZN4llvmplENS_5APIntERKS0_"}
!452 = !{!453, !455}
!453 = distinct !{!453, !454, !"_ZN4llvm5APInt10getAllOnesEj: argument 0:thread"}
!454 = distinct !{!454, !"_ZN4llvm5APInt10getAllOnesEj"}
!455 = distinct !{!455, !456, !"_ZN4llvm5APInt11getMaxValueEj: argument 0:thread"}
!456 = distinct !{!456, !"_ZN4llvm5APInt11getMaxValueEj"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"_ZN4llvm5APInt11getMaxValueEj: argument 0"}
!459 = !{!460}
!460 = distinct !{!460, !454, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!461 = !{!460, !458}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZN4llvm5APInt17getSignedMinValueEj: argument 0"}
!464 = distinct !{!464, !"_ZN4llvm5APInt17getSignedMinValueEj"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN4llvm5APInt17getSignedMaxValueEj: argument 0"}
!467 = distinct !{!467, !"_ZN4llvm5APInt17getSignedMaxValueEj"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!470 = distinct !{!470, !"_ZN4llvm5APInt10getAllOnesEj"}
!471 = !{!469, !466}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZNK4llvm5APInt7usub_ovERKS0_Rb: argument 0"}
!474 = distinct !{!474, !"_ZNK4llvm5APInt7usub_ovERKS0_Rb"}
!475 = !{!476, !473}
!476 = distinct !{!476, !477, !"_ZN4llvmmiENS_5APIntERKS0_: argument 0"}
!477 = distinct !{!477, !"_ZN4llvmmiENS_5APIntERKS0_"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN4llvm5APInt17getSignedMinValueEj: argument 0"}
!480 = distinct !{!480, !"_ZN4llvm5APInt17getSignedMinValueEj"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZN4llvm5APInt17getSignedMaxValueEj: argument 0"}
!483 = distinct !{!483, !"_ZN4llvm5APInt17getSignedMaxValueEj"}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!486 = distinct !{!486, !"_ZN4llvm5APInt10getAllOnesEj"}
!487 = !{!485, !482}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZN4llvm5APInt11getMaxValueEj: argument 0"}
!490 = distinct !{!490, !"_ZN4llvm5APInt11getMaxValueEj"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!493 = distinct !{!493, !"_ZN4llvm5APInt10getAllOnesEj"}
!494 = !{!492, !489}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZN4llvm5APInt17getSignedMinValueEj: argument 0"}
!497 = distinct !{!497, !"_ZN4llvm5APInt17getSignedMinValueEj"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"_ZN4llvm5APInt17getSignedMaxValueEj: argument 0"}
!500 = distinct !{!500, !"_ZN4llvm5APInt17getSignedMaxValueEj"}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!503 = distinct !{!503, !"_ZN4llvm5APInt10getAllOnesEj"}
!504 = !{!502, !499}
!505 = !{!506}
!506 = distinct !{!506, !507, !"_ZN4llvm5APInt11getMaxValueEj: argument 0"}
!507 = distinct !{!507, !"_ZN4llvm5APInt11getMaxValueEj"}
!508 = !{!509}
!509 = distinct !{!509, !510, !"_ZN4llvm5APInt10getAllOnesEj: argument 0"}
!510 = distinct !{!510, !"_ZN4llvm5APInt10getAllOnesEj"}
!511 = !{!509, !506}
!512 = !{!513, !12, i64 8}
!513 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !25, i64 0, !12, i64 8, !12, i64 16}
!514 = !{!513, !12, i64 16}
!515 = !{!513, !25, i64 0}
!516 = distinct !{!516, !15}
!517 = distinct !{!517, !15}
!518 = distinct !{!518, !15}
!519 = distinct !{!519, !15, !20, !21}
!520 = distinct !{!520, !15, !21, !20}
!521 = distinct !{!521, !15}
!522 = distinct !{!522, !15}
!523 = distinct !{!523, !15}
!524 = distinct !{!524, !15}
!525 = distinct !{!525, !15, !20, !21}
!526 = distinct !{!526, !45}
!527 = distinct !{!527, !15, !20}
!528 = distinct !{!528, !15}
!529 = distinct !{!529, !15}
!530 = distinct !{!530, !15}
!531 = distinct !{!531, !15, !20, !21}
!532 = distinct !{!532, !45}
!533 = distinct !{!533, !15, !20}
!534 = distinct !{!534, !15, !20, !21}
!535 = distinct !{!535, !15, !21, !20}
!536 = distinct !{!536, !15}
!537 = distinct !{!537, !15, !20, !21}
!538 = distinct !{!538, !45}
!539 = distinct !{!539, !15, !20}
!540 = distinct !{!540, !15, !20, !21}
!541 = distinct !{!541, !45}
!542 = distinct !{!542, !15, !20}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZN4llvmplENS_5APIntEm: argument 0"}
!545 = distinct !{!545, !"_ZN4llvmplENS_5APIntEm"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN4llvmmiENS_5APIntEm: argument 0"}
!548 = distinct !{!548, !"_ZN4llvmmiENS_5APIntEm"}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZN4llvmplENS_5APIntEm: argument 0"}
!551 = distinct !{!551, !"_ZN4llvmplENS_5APIntEm"}
!552 = !{!553}
!553 = distinct !{!553, !554, !"_ZNK4llvm5APInt11sextOrTruncEj: argument 0"}
!554 = distinct !{!554, !"_ZNK4llvm5APInt11sextOrTruncEj"}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_ZNK4llvm5APInt5truncEj: argument 0"}
!557 = distinct !{!557, !"_ZNK4llvm5APInt5truncEj"}
!558 = distinct !{!558, !15, !20, !21}
!559 = distinct !{!559, !45}
!560 = distinct !{!560, !15, !20}
!561 = !{!562, !392, i64 16}
!562 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm5APIntEE", !6, i64 0, !392, i64 16}
!563 = distinct !{!563, !15, !20, !21}
!564 = distinct !{!564, !15, !21, !20}
!565 = distinct !{!565, !15, !20, !21}
!566 = distinct !{!566, !15, !21, !20}
!567 = distinct !{!567, !15, !20, !21}
!568 = distinct !{!568, !15, !21, !20}
!569 = !{!570}
!570 = distinct !{!570, !571, !"_ZN4llvm5APInt12getOneBitSetEjj: argument 0"}
!571 = distinct !{!571, !"_ZN4llvm5APInt12getOneBitSetEjj"}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_ZN4llvmmlEmNS_5APIntE: argument 0"}
!574 = distinct !{!574, !"_ZN4llvmmlEmNS_5APIntE"}
!575 = !{!576}
!576 = distinct !{!576, !577, !"_ZN4llvmmlEmNS_5APIntE: argument 0"}
!577 = distinct !{!577, !"_ZN4llvmmlEmNS_5APIntE"}
!578 = !{!579}
!579 = distinct !{!579, !580, !"_ZN4llvmmiERKNS_5APIntEOS0_: argument 0"}
!580 = distinct !{!580, !"_ZN4llvmmiERKNS_5APIntEOS0_"}
!581 = distinct !{!581, !15, !20, !21}
!582 = distinct !{!582, !15, !21, !20}
!583 = !{!584}
!584 = distinct !{!584, !585, !"_ZN4llvmngENS_5APIntE: argument 0"}
!585 = distinct !{!585, !"_ZN4llvmngENS_5APIntE"}
!586 = distinct !{!586, !15, !20, !21}
!587 = distinct !{!587, !15, !21, !20}
!588 = !{!589}
!589 = distinct !{!589, !590, !"_ZN4llvmngENS_5APIntE: argument 0"}
!590 = distinct !{!590, !"_ZN4llvmngENS_5APIntE"}
!591 = distinct !{!591, !15, !20, !21}
!592 = distinct !{!592, !15, !21, !20}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_ZN4llvmmlEmNS_5APIntE: argument 0"}
!595 = distinct !{!595, !"_ZN4llvmmlEmNS_5APIntE"}
!596 = !{!597}
!597 = distinct !{!597, !598, !"_ZNK4llvm5APIntmlERKS0_: argument 0"}
!598 = distinct !{!598, !"_ZNK4llvm5APIntmlERKS0_"}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_ZN4llvmmiERKNS_5APIntEOS0_: argument 0"}
!601 = distinct !{!601, !"_ZN4llvmmiERKNS_5APIntEOS0_"}
!602 = distinct !{!602, !15, !20, !21}
!603 = distinct !{!603, !15, !21, !20}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_ZNK4llvm5APIntmlERKS0_: argument 0"}
!606 = distinct !{!606, !"_ZNK4llvm5APIntmlERKS0_"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZN4llvmngENS_5APIntE: argument 0"}
!609 = distinct !{!609, !"_ZN4llvmngENS_5APIntE"}
!610 = distinct !{!610, !15, !20, !21}
!611 = distinct !{!611, !15, !21, !20}
!612 = !{!613}
!613 = distinct !{!613, !614, !"_ZN4llvmplENS_5APIntEm: argument 0"}
!614 = distinct !{!614, !"_ZN4llvmplENS_5APIntEm"}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN4llvmmiERKNS_5APIntEOS0_: argument 0"}
!617 = distinct !{!617, !"_ZN4llvmmiERKNS_5APIntEOS0_"}
!618 = distinct !{!618, !15, !20, !21}
!619 = distinct !{!619, !15, !21, !20}
!620 = !{!621}
!621 = distinct !{!621, !622, !"_ZN4llvmngENS_5APIntE: argument 0"}
!622 = distinct !{!622, !"_ZN4llvmngENS_5APIntE"}
!623 = distinct !{!623, !15, !20, !21}
!624 = distinct !{!624, !15, !21, !20}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!627 = distinct !{!627, !"_ZN4llvmplENS_5APIntERKS0_"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!630 = distinct !{!630, !"_ZN4llvmplENS_5APIntERKS0_"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZNK4llvm5APIntmlERKS0_: argument 0"}
!633 = distinct !{!633, !"_ZNK4llvm5APIntmlERKS0_"}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!636 = distinct !{!636, !"_ZN4llvmplENS_5APIntERKS0_"}
!637 = !{!638}
!638 = distinct !{!638, !639, !"_ZNK4llvm5APIntmlERKS0_: argument 0"}
!639 = distinct !{!639, !"_ZNK4llvm5APIntmlERKS0_"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_ZN4llvmplERKNS_5APIntEOS0_: argument 0"}
!642 = distinct !{!642, !"_ZN4llvmplERKNS_5APIntEOS0_"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!645 = distinct !{!645, !"_ZN4llvmplENS_5APIntERKS0_"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!648 = distinct !{!648, !"_ZN4llvmplENS_5APIntERKS0_"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZN4llvmplENS_5APIntERKS0_: argument 0"}
!651 = distinct !{!651, !"_ZN4llvmplENS_5APIntERKS0_"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"_ZN4llvmmiENS_5APIntERKS0_: argument 0"}
!654 = distinct !{!654, !"_ZN4llvmmiENS_5APIntERKS0_"}
!655 = !{!656}
!656 = distinct !{!656, !657, !"_ZN4llvmplERKNS_5APIntEOS0_: argument 0"}
!657 = distinct !{!657, !"_ZN4llvmplERKNS_5APIntEOS0_"}
!658 = !{!659}
!659 = distinct !{!659, !660, !"_ZN4llvmeoENS_5APIntERKS0_: argument 0"}
!660 = distinct !{!660, !"_ZN4llvmeoENS_5APIntERKS0_"}
!661 = !{!662}
!662 = distinct !{!662, !663}
!663 = distinct !{!663, !"LVerDomain"}
!664 = !{!665}
!665 = distinct !{!665, !663}
!666 = !{!659, !662}
!667 = distinct !{!667, !15, !20, !21}
!668 = distinct !{!668, !45}
!669 = distinct !{!669, !15, !20}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZN4llvm5APInt7getZeroEj: argument 0"}
!672 = distinct !{!672, !"_ZN4llvm5APInt7getZeroEj"}
!673 = distinct !{!673, !15, !20, !21}
!674 = distinct !{!674, !15, !21, !20}
!675 = distinct !{!675, !15}
!676 = distinct !{!676, !15}
!677 = !{!678}
!678 = distinct !{!678, !679, !"_ZN4llvmanENS_5APIntERKS0_: argument 0"}
!679 = distinct !{!679, !"_ZN4llvmanENS_5APIntERKS0_"}
!680 = !{!681}
!681 = distinct !{!681, !682}
!682 = distinct !{!682, !"LVerDomain"}
!683 = !{!684}
!684 = distinct !{!684, !682}
!685 = !{!678, !681}
!686 = distinct !{!686, !15, !20, !21}
!687 = distinct !{!687, !45}
!688 = distinct !{!688, !15, !20}
!689 = !{!690}
!690 = distinct !{!690, !691, !"_ZN4llvmeoENS_5APIntERKS0_: argument 0"}
!691 = distinct !{!691, !"_ZN4llvmeoENS_5APIntERKS0_"}
!692 = !{!693}
!693 = distinct !{!693, !694}
!694 = distinct !{!694, !"LVerDomain"}
!695 = !{!696}
!696 = distinct !{!696, !694}
!697 = !{!690, !693}
!698 = distinct !{!698, !15, !20, !21}
!699 = distinct !{!699, !45}
!700 = distinct !{!700, !15, !20}
!701 = !{!702}
!702 = distinct !{!702, !703, !"_ZNK4llvm5APInt4ashrEj: argument 0"}
!703 = distinct !{!703, !"_ZNK4llvm5APInt4ashrEj"}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN4llvmplERKNS_5APIntEOS0_: argument 0"}
!706 = distinct !{!706, !"_ZN4llvmplERKNS_5APIntEOS0_"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_ZN4llvmanENS_5APIntERKS0_: argument 0"}
!709 = distinct !{!709, !"_ZN4llvmanENS_5APIntERKS0_"}
!710 = !{!711}
!711 = distinct !{!711, !712}
!712 = distinct !{!712, !"LVerDomain"}
!713 = !{!714}
!714 = distinct !{!714, !712}
!715 = !{!708, !711}
!716 = distinct !{!716, !15, !20, !21}
!717 = distinct !{!717, !45}
!718 = distinct !{!718, !15, !20}
end_hunk_1
