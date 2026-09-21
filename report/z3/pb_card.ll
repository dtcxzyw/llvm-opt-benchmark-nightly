Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb_card?download=true
inline.NumInlined: 209
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2pb4card10init_watchERNS_16solver_interfaceE:bb.a
  br i1 %i.x, label %bb.h, label %.preheader145

.preheader145:                                    ; preds = %.thread134
  %.not162 = icmp eq i32 %i.u, 0
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader145
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = zext i32 %i.w to i64
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.i

bb.h:                                             ; preds = %.thread134
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = zext i32 %i.u to i64
  %.idx = shl nuw nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not120158 = icmp eq i32 %i.u, 0
  br i1 %.not120158, label %.loopexit, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.h, %.lr.ph161
  %.0113159 = phi ptr [ %i.ah, %.lr.ph161 ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.030.0.copyload = load i32, ptr %.0113159, align 4, !tbaa !12
  %i.ae = load ptr, ptr %1, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 %.sroa.030.0.copyload)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0113159, i64 4 ; 2 uses
  %.not120 = icmp eq ptr %i.ah, %i.ad
  br i1 %.not120, label %.loopexit, label %.lr.ph161

._crit_edge:                                      ; preds = %bb.o, %.preheader145
  %.0110.lcssa = phi i32 [ 0, %.preheader145 ], [ %.1, %bb.o ] ; 4 uses
  %i.ai = icmp ult i32 %.0110.lcssa, %i.w
  br i1 %i.ai, label %bb.p, label %bb.u

bb.i:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.0110148 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %.sroa.021.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.ak = load ptr, ptr %1, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.021.0.copyload)
  %.not117 = icmp eq i32 %i.an, -1
  br i1 %.not117, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = zext i32 %.0110148 to i64               ; 2 uses
  %.not118 = icmp eq i64 %indvars.iv, %i.ao
  br i1 %.not118, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !27
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = icmp ne i32 %i.aq, -2
  %spec.select.i.not.not143 = and i1 %i.ar, %i.as
  %.not119 = icmp ule i32 %.0110148, %i.w
  %or.cond.not140 = select i1 %spec.select.i.not.not143, i1 %.not119, i1 false
  %i.at = icmp samesign ugt i64 %indvars.iv, %i.aa
  %or.cond122 = and i1 %i.at, %or.cond.not140
  br i1 %or.cond122, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ao
  %.sroa.020.0.copyload = load i32, ptr %i.au, align 4, !tbaa !12
  tail call void @_ZN2pb10constraint15unwatch_literalERNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.020.0.copyload)
  %.sroa.019.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !12
  tail call void @_ZN2pb10constraint13watch_literalERNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.019.0.copyload)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = load ptr, ptr %0, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = trunc nuw i64 %indvars.iv to i32
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ay, i32 noundef %.0110148) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.az = add i32 %.0110148, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n
  %.1 = phi i32 [ %i.az, %bb.n ], [ %.0110148, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !67

bb.p:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.bd = icmp eq i32 %i.bb, %i.bc
  %i.be = icmp ne i32 %i.bc, -2
  %spec.select.i123 = and i1 %i.bd, %i.be
  br i1 %spec.select.i123, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %0, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bj = zext i32 %.0110.lcssa to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %.sroa.016.0.copyload = load i32, ptr %i.bk, align 4, !tbaa !12 ; 2 uses
  %i.bl = icmp ult i32 %i.w, %i.u
  br i1 %i.bl, label %.lr.ph155.preheader, label %._crit_edge156

.lr.ph155.preheader:                              ; preds = %bb.r
  %i.bm = zext i32 %i.w to i64
  br label %.lr.ph155

._crit_edge156:                                   ; preds = %bb.t, %bb.r
  %.sroa.016.0.lcssa = phi i32 [ %.sroa.016.0.copyload, %bb.r ], [ %.sroa.016.1, %bb.t ]
  %i.bn = load ptr, ptr %1, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 %.sroa.016.0.lcssa)
  br label %.loopexit

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.t
  %indvars.iv171 = phi i64 [ %i.bm, %.lr.ph155.preheader ], [ %indvars.iv.next172, %bb.t ] ; 3 uses
  %.sroa.016.0152 = phi i32 [ %.sroa.016.0.copyload, %.lr.ph155.preheader ], [ %.sroa.016.1, %bb.t ] ; 2 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.016.0152)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv171
  %.sroa.010.0.copyload = load i32, ptr %i.bu, align 4, !tbaa !12
  %i.bv = load ptr, ptr %1, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.010.0.copyload)
  %i.bz = icmp ult i32 %i.bt, %i.by
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph155
  %i.ca = load ptr, ptr %0, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = trunc nuw i64 %indvars.iv171 to i32
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.cd, i32 noundef %.0110.lcssa) #18
  %.sroa.016.0.copyload17 = load i32, ptr %i.bk, align 4, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph155, %bb.s
  %.sroa.016.1 = phi i32 [ %.sroa.016.0.copyload17, %bb.s ], [ %.sroa.016.0152, %.lr.ph155 ] ; 2 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %lftr.wideiv.a = trunc i64 %indvars.iv.next172 to i32
  %exitcond174.not = icmp eq i32 %i.u, %lftr.wideiv.a
  br i1 %exitcond174.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !68

bb.u:                                             ; preds = %._crit_edge
  %i.ce = icmp eq i32 %.0110.lcssa, %i.w
  br i1 %i.ce, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.u
  %.not163 = icmp eq i32 %i.w, 0
  br i1 %.not163, label %.loopexit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count169 = zext i32 %i.w to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph151, %bb.v
  %indvars.iv166 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next167, %bb.v ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv166
  %.sroa.05.0.copyload = load i32, ptr %i.cg, align 4, !tbaa !12
  %i.ch = load ptr, ptr %1, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 %.sroa.05.0.copyload)
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.loopexit, label %bb.v, !llvm.loop !69

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.cn = icmp eq i32 %i.cl, %i.cm
  %i.co = icmp ne i32 %i.cm, -2
  %spec.select.i124 = and i1 %i.cn, %i.co
  br i1 %spec.select.i124, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %0, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.z

bb.y:                                             ; preds = %bb.ab
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !12
  store i32 %i.ct, ptr %i.ck, align 4, !tbaa !12
  br label %.loopexit

bb.z:                                             ; preds = %bb.x, %bb.ab
  %.0109149 = phi i32 [ 0, %bb.x ], [ %3, %bb.ab ] ; 2 uses
  %2 = zext i32 %.0109149 to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %2 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cv = tail call noundef zeroext i1 @_ZNK2pb10constraint10is_watchedERKNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.01.0.copyload)
  br i1 %i.cv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.copyload = load i32, ptr %i.cu, align 4, !tbaa !12
  tail call void @_ZN2pb10constraint13watch_literalERNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.0.0.copyload)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %3 = add i32 %.0109149, 1                       ; 2 uses
  %.not = icmp ugt i32 %3, %i.w
  br i1 %.not, label %bb.y, label %bb.z, !llvm.loop !70

.loopexit:                                        ; preds = %bb.v, %.lr.ph161, %.preheader, %bb.h, %bb.w, %bb.y, %._crit_edge156
  %.0 = phi i1 [ true, %bb.y ], [ false, %._crit_edge156 ], [ true, %bb.w ], [ false, %bb.h ], [ false, %.preheader ], [ false, %.lr.ph161 ], [ false, %bb.v ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK2pb10constraint10is_watchedERKNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #5

declare void @_ZN2pb10constraint13watch_literalERNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN2pb10constraint7to_cardEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #6 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZNK2pb10constraint7to_cardEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #6 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2pb4card18is_extended_binaryER7svectorIN3sat7literalEjE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = add i32 %i.d, 1
  %i.f = icmp eq i32 %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8
  %i.h = icmp eq i32 %.sroa.0.0.copyload.i, -2
  %or.cond = select i1 %i.f, i1 %i.h, i1 false    ; 2 uses
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  store i32 0, ptr %i.j, align 4, !tbaa !12
  %.pre = load i32, ptr %i.a, align 8, !tbaa !18
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit
  %i.o = phi ptr [ %i.w, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ], [ %i.i, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ] ; 4 uses
  %.018 = phi ptr [ %i.ac, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ], [ %i.l, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ] ; 2 uses
  %i.p = load i32, ptr %.018, align 4, !tbaa !12
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !12   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !11  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %.pre.i, %bb.e ], [ %i.o, %bb.d ] ; 3 uses
  %i.x = phi i32 [ %.pre2.i, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  store i32 %i.p, ptr %i.aa, align 4, !tbaa !12
  %i.ab = add i32 %i.x, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.n
  br i1 %.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %bb.a
  ret i1 %or.cond
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2pb4card25validate_unit_propagationERKNS_16solver_interfaceEN3sat7literalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %.not14 = icmp eq i32 %.sroa.0.0.copyload.i, -2
  br i1 %.not14, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.0.0.copyload.i)
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18
  %.not18 = icmp ult i32 %i.g, %i.j
  br i1 %.not18, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.k = zext i32 %i.g to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.i, align 8, !tbaa !18
  %i.m = zext i32 %i.l to i64
  %.not19 = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %.not19, label %.lr.ph, label %.loopexit, !llvm.loop !73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.n, align 4, !tbaa !12
  %i.o = load ptr, ptr %1, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.0.0.copyload.i13)
  %.not11 = icmp eq i32 %i.r, -1                  ; 3 uses
  br i1 %.not11, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.critedge, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %.critedge ], [ %.not11, %bb.c ], [ %.not11, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZNK2pb4card4evalERKNS_16solver_interfaceE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.016.lcssa = phi i32 [ 0, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.015.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]
  %i.f = add i32 %.015.lcssa, %.016.lcssa
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = icmp ult i32 %i.f, %i.h
  %.not18 = icmp uge i32 %.016.lcssa, %i.h
  %. = zext i1 %.not18 to i32
  %.0 = select i1 %i.i, i32 -1, i32 %.
  ret i32 %.0

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01422 = phi ptr [ %i.p, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %.01521 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]  ; 3 uses
  %.01620 = phi i32 [ %.117, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.sroa.01.0.copyload = load i32, ptr %.01422, align 4, !tbaa !12
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.01.0.copyload)
  switch i32 %i.m, label %bb.d [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.n = add i32 %.01620, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.o = add i32 %.01521, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.117 = phi i32 [ %.01620, %.lr.ph ], [ %i.n, %bb.b ], [ %.01620, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.01521, %.lr.ph ], [ %.01521, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01422, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_0
