Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_backbone?download=true
inline.NumInlined: 583
inline.NumDeleted: 233
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal18backbone_propagateERl:bb.a
  %i.fp = icmp eq ptr %.sroa.099.0.copyload, %i.fo
  br i1 %i.fp, label %_ZNSt6vectorIlSaIlEE5clearEv.exit94, label %_ZNSt6vectorIlSaIlEE5clearEv.exit94.thread146, !llvm.loop !253

_ZNSt6vectorIlSaIlEE5clearEv.exit94.thread146:    ; preds = %bb.aa
  store ptr %.sroa.099.0.copyload, ptr %i.j, align 8, !tbaa !179
  br label %.loopexit

_ZNSt6vectorIlSaIlEE5clearEv.exit94:              ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.u, %bb.m, %bb.z, %bb.y, %bb.s, %bb.o, %bb.aa, %bb.l, %.lr.ph189
  %.sroa.0106.3 = phi ptr [ %i.ce, %.lr.ph189 ], [ %i.ce, %bb.l ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.s ], [ %i.ce, %bb.o ], [ %i.ce, %bb.z ], [ %i.ce, %bb.y ], [ %.sroa.0106.0186, %bb.m ], [ %.sroa.0106.0186, %bb.u ], [ %.sroa.0106.0186, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.not150 = icmp eq ptr %i.cd, %i.bt
  br i1 %.not150, label %.loopexit, label %.lr.ph189

.loopexit:                                        ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit94, %_ZNSt6vectorIlSaIlEE5clearEv.exit94.thread146
  %.sroa.0106.4 = phi ptr [ %i.ce, %_ZNSt6vectorIlSaIlEE5clearEv.exit94.thread146 ], [ %.sroa.0106.3, %_ZNSt6vectorIlSaIlEE5clearEv.exit94 ] ; 3 uses
  %.not152 = icmp eq ptr %.sroa.0106.4, %i.cd
  br i1 %.not152, label %.loopexit156, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %.not153192 = icmp eq ptr %i.cd, %i.bt
  br i1 %.not153192, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader, %.lr.ph195
  %.sroa.0115.2194 = phi ptr [ %i.fq, %.lr.ph195 ], [ %i.cd, %.preheader ] ; 2 uses
  %.sroa.0106.5193 = phi ptr [ %i.fr, %.lr.ph195 ], [ %.sroa.0106.4, %.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0115.2194, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0106.5193, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0106.5193, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0115.2194, i64 16, i1 false), !tbaa.struct !209
  %.not153 = icmp eq ptr %i.fq, %i.bt
  br i1 %.not153, label %._crit_edge196, label %.lr.ph195, !llvm.loop !259

._crit_edge196:                                   ; preds = %.lr.ph195, %.preheader
  %.sroa.0106.5.lcssa = phi ptr [ %.sroa.0106.4, %.preheader ], [ %i.fr, %.lr.ph195 ]
  %i.fs = load ptr, ptr %i.br, align 8, !tbaa !208
  %i.ft = ptrtoint ptr %.sroa.0106.5.lcssa to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 4
  tail call void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %i.fw)
  br label %.loopexit156

.loopexit156:                                     ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit, %bb.k, %bb.c, %.loopexit, %._crit_edge196
  %.pre = load i64, ptr %i.c, align 8, !tbaa !197
  br label %bb.b, !llvm.loop !260

bb.ab:                                            ; preds = %bb.i, %bb.j
  %i.fx = sub i64 %i.l, %i.b
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 4672 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !207
  %i.ga = add nsw i64 %i.fx, %i.fz
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !207
  ret i1 %.not85
}

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal24keep_backbone_candidatesERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !186    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !186  ; 3 uses
  %.not4345 = icmp eq ptr %i.a, %i.c
  br i1 %.not4345, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.f = icmp eq i64 %.132, 0
  %i.g = icmp ne i64 %.2, 0
  %i.h = select i1 %i.f, i1 true, i1 %i.g
  br i1 %i.h, label %.loopexit, label %.lr.ph53

.lr.ph53:                                         ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.02948 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.d ] ; 2 uses
  %.03147 = phi i64 [ 0, %.lr.ph ], [ %.132, %bb.d ] ; 2 uses
  %.sroa.040.046 = phi ptr [ %i.a, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.k = load i32, ptr %.sroa.040.046, align 4, !tbaa !14 ; 2 uses
  %i.l = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.e, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.p = load i8, ptr %i.o, align 1
  %.mask.i = and i8 %i.p, -32
  %i.q = icmp eq i8 %.mask.i, 32
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %.03147, 1
  %i.s = icmp slt i32 %i.k, 0
  %.pn.in.in.v = select i1 %i.s, i64 3, i64 4
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %i.n, i64 %.pn.in.in.v
  %.pn.in = load i8, ptr %.pn.in.in, align 1, !tbaa !19, !range !181, !noundef !12
  %.pn = zext nneg i8 %.pn.in to i64
  %.130 = add i64 %.02948, %.pn
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.132 = phi i64 [ %i.r, %bb.c ], [ %.03147, %bb.b ] ; 2 uses
  %.2 = phi i64 [ %.130, %bb.c ], [ %.02948, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.046, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %i.t, %i.c
  br i1 %.not43, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %.lr.ph53, %bb.f
  %.sroa.036.051 = phi ptr [ %i.a, %.lr.ph53 ], [ %i.ad, %bb.f ] ; 2 uses
  %i.u = load i32, ptr %.sroa.036.051, align 4, !tbaa !14 ; 2 uses
  %i.v = tail call noundef i32 @llvm.abs.i32(i32 %i.u, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [6 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.z = load i8, ptr %i.y, align 1
  %.mask.i35 = and i8 %i.z, -32
  %i.aa = icmp eq i8 %.mask.i35, 32
  br i1 %i.aa, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e
  %i.ab = icmp slt i32 %i.u, 0
  %. = select i1 %i.ab, i64 3, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.
  store i8 1, ptr %i.ac, align 1, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.036.051, i64 4 ; 2 uses
  %.not44 = icmp eq ptr %i.ad, %i.c
  br i1 %.not44, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.f, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7CaDiCaL8Internal16compute_backboneEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %1 = alloca %"class.std::vector.20", align 8    ; 10 uses
  %2 = alloca %"class.std::vector.20", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !184
  call void @_ZN7CaDiCaL8Internal19backbone_propagate2ERl(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !264
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !264
  call void @_ZN7CaDiCaL8Internal23schedule_backbone_candsERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3604
  %i.f = load i32, ptr %i.e, align 4, !tbaa !265
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %i.i = load i32, ptr %i.h, align 8, !tbaa !266
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %i.b, align 8, !tbaa !264
  %i.l = mul i64 %i.k, %i.j
  %spec.select = call i64 @llvm.umin.i64(i64 %i.l, i64 %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4680
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4696 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4688
  %i.q = load i64, ptr %i.p, align 8, !tbaa !184
  %i.r = add nsw i64 %i.q, %i.o                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3224 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !267
  %i.u = sub nsw i64 %i.r, %i.t                   ; 2 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.w = load i64, ptr %i.v, align 8, !tbaa !268
  %.not35 = icmp eq i64 %i.w, 0
  br i1 %.not35, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !269
  %i.z = sext i32 %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.029 = phi i64 [ %i.u, %bb.b ], [ %i.z, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !270
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fmul nnan double %i.ac, 1.000000e-03
  %i.ae = sitofp i64 %.029 to double
  %i.af = fmul double %i.ad, %i.ae
  %i.ag = fptosi double %i.af to i64              ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !267
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.027 = phi i32 [ 0, %bb.d ], [ %i.am, %bb.g ]  ; 2 uses
  %.026 = phi i64 [ 0, %bb.d ], [ %i.aj, %bb.g ]
  %i.aj = add nuw i64 %.026, 1                    ; 2 uses
  %.not37 = icmp ult i64 %i.aj, %spec.select
  %i.ak = load i64, ptr %i.a, align 8
  %.not38 = icmp slt i64 %i.ak, %i.ag
  %or.cond40 = select i1 %.not37, i1 %.not38, i1 false
  br i1 %or.cond40, label %bb.f, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !186
  %.pre44 = load ptr, ptr %i.ah, align 8, !tbaa !186
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.al = call noundef i32 @_ZN7CaDiCaL8Internal22compute_backbone_roundERSt6vectorIiSaIiEES4_lRlj(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0)
  %i.am = add i32 %i.al, %.027                    ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !186   ; 3 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !186 ; 3 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i8, ptr %i.ai, align 4, !tbaa !211, !range !181, !noundef !12
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.g, %bb.f, %..thread_crit_edge
  %i.as = phi ptr [ %.pre44, %..thread_crit_edge ], [ %i.ao, %bb.f ], [ %i.ao, %bb.g ] ; 3 uses
  %i.at = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.an, %bb.f ], [ %i.an, %bb.g ] ; 3 uses
  %.1 = phi i32 [ %.027, %..thread_crit_edge ], [ %i.am, %bb.f ], [ %i.am, %bb.g ]
  %.not4345.i = icmp eq ptr %i.at, %i.as
  br i1 %.not4345.i, label %_ZN7CaDiCaL8Internal24keep_backbone_candidatesERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.j
  %i.aw = icmp eq i64 %.132.i, 0
  %i.ax = icmp ne i64 %.2.i, 0
  %i.ay = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %i.ay, label %_ZN7CaDiCaL8Internal24keep_backbone_candidatesERKSt6vectorIiSaIiEE.exit, label %.lr.ph53.i

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.02948.i = phi i64 [ 0, %.lr.ph.i ], [ %.2.i, %bb.j ] ; 2 uses
  %.03147.i = phi i64 [ 0, %.lr.ph.i ], [ %.132.i, %bb.j ] ; 2 uses
  %.sroa.040.046.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.bi, %bb.j ] ; 2 uses
  %i.az = load i32, ptr %.sroa.040.046.i, align 4, !tbaa !14 ; 2 uses
  %i.ba = call noundef i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [6 x i8], ptr %i.av, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 5
  %i.be = load i8, ptr %i.bd, align 1
  %.mask.i.i = and i8 %i.be, -32
  %i.bf = icmp eq i8 %.mask.i.i, 32
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %.03147.i, 1
  %i.bh = icmp slt i32 %i.az, 0
  %.pn.in.in.v.i = select i1 %i.bh, i64 3, i64 4
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pn.in.in.v.i
  %.pn.in.i = load i8, ptr %.pn.in.in.i, align 1, !tbaa !19, !range !181, !noundef !12
  %.pn.i = zext nneg i8 %.pn.in.i to i64
  %.130.i = add i64 %.02948.i, %.pn.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.132.i = phi i64 [ %i.bg, %bb.i ], [ %.03147.i, %bb.h ] ; 2 uses
  %.2.i = phi i64 [ %.130.i, %bb.i ], [ %.02948.i, %bb.h ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.040.046.i, i64 4 ; 2 uses
  %.not43.i = icmp eq ptr %i.bi, %i.as
  br i1 %.not43.i, label %._crit_edge.i, label %bb.h

.lr.ph53.i:                                       ; preds = %._crit_edge.i, %bb.k
  %.sroa.036.051.i = phi ptr [ %i.bs, %bb.k ], [ %i.at, %._crit_edge.i ] ; 2 uses
  %i.bj = load i32, ptr %.sroa.036.051.i, align 4, !tbaa !14 ; 2 uses
  %i.bk = call noundef i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [6 x i8], ptr %i.av, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.bo = load i8, ptr %i.bn, align 1
  %.mask.i35.i = and i8 %i.bo, -32
  %i.bp = icmp eq i8 %.mask.i35.i, 32
  br i1 %i.bp, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %.lr.ph53.i
  %i.bq = icmp slt i32 %i.bj, 0
  %..i = select i1 %i.bq, i64 3, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %..i
  store i8 1, ptr %i.br, align 1, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %.lr.ph53.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.036.051.i, i64 4 ; 2 uses
  %.not44.i = icmp eq ptr %i.bs, %i.as
  br i1 %.not44.i, label %_ZN7CaDiCaL8Internal24keep_backbone_candidatesERKSt6vectorIiSaIiEE.exit, label %.lr.ph53.i

_ZN7CaDiCaL8Internal24keep_backbone_candidatesERKSt6vectorIiSaIiEE.exit: ; preds = %bb.k, %.thread, %._crit_edge.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !192
  %.not39 = icmp eq i32 %i.bu, 0
  br i1 %.not39, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal24keep_backbone_candidatesERKSt6vectorIiSaIiEE.exit
  call void @_ZN7CaDiCaL8Internal33backtrack_without_updating_phasesEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #17
  %i.bv = call noundef zeroext i1 @_ZN7CaDiCaL8Internal18backbone_propagateERl(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_ZN7CaDiCaL8Internal24keep_backbone_candidatesERKSt6vectorIiSaIiEE.exit
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !184
  %i.bx = load i64, ptr %i.n, align 8, !tbaa !271
  %i.by = add nsw i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.n, align 8, !tbaa !271
  %i.bz = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !23
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.cf = load ptr, ptr %1, align 8, !tbaa !24    ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIiSaIiEED2Ev.exit42, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !23
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit42

_ZNSt6vectorIiSaIiEED2Ev.exit42:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.1
}

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal23binary_clauses_backboneEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !211, !range !181, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3596
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.g = load i32, ptr %i.f, align 4, !tbaa !192
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal33backtrack_without_updating_phasesEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i64 0, ptr %i.h, align 8, !tbaa !197
  %i.i = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #17
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #17
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7288
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !276, !nonnull !12, !align !13
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14   ; 2 uses
  %i.m = xor i32 %i.l, -1
  %i.n = lshr i32 %i.l, 31
  %i.o = add i32 %i.n, %i.m                       ; 2 uses
  %.not1424 = icmp eq i32 %i.o, -1
  br i1 %.not1424, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 952
  br label %bb.g

._crit_edge:                                      ; preds = %"_ZSt16stable_partitionIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEEZNS2_8Internal23binary_clauses_backboneEvE3$_0ET_SB_SB_T0_.exit", %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  store i8 1, ptr %i.q, align 2, !tbaa !277
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !278  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !279, !range !181, !noundef !12
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %._crit_edge._crit_edge, label %bb.s

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %0, align 8, !tbaa !280
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph, %"_ZSt16stable_partitionIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEEZNS2_8Internal23binary_clauses_backboneEvE3$_0ET_SB_SB_T0_.exit"
  %.sroa.011.025 = phi i32 [ -1, %.lr.ph ], [ %i.br, %"_ZSt16stable_partitionIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEEZNS2_8Internal23binary_clauses_backboneEvE3$_0ET_SB_SB_T0_.exit" ] ; 4 uses
  %i.w = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.011.025, i1 true)
  %i.x = tail call noundef i32 @llvm.fshl.i32(i32 %i.w, i32 %.sroa.011.025, i32 1)
  %i.y = zext i32 %i.x to i64
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !208 ; 4 uses
end_hunk_0
