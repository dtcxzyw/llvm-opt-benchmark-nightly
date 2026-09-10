Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/tile?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZNK4ncnn4Tile7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.dk = load <4 x i32>, ptr %i.j, align 8, !tbaa !41
  store <4 x i32> %i.dk, ptr %i.da, align 8, !tbaa !41
  %i.dl = load i32, ptr %i.ca, align 8, !tbaa !42
  store i32 %i.dl, ptr %i.db, align 8, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !20
  store i64 %i.dn, ptr %i.dc, align 8, !tbaa !20
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.ab:                                            ; preds = %bb.r, %.thread83
  %i.do = mul nsw i32 %i.bt, %i.bv                ; 4 uses
  %i.dp = mul nsw i32 %i.bs, %i.bx                ; 3 uses
  %i.dq = mul nsw i32 %i.bq, %i.cb                ; 2 uses
  switch i32 %.sroa.speculated, label %bb.ag [
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 4, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !52
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.do, i64 noundef %i.cd, ptr noundef %i.ds)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52
  tail call void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.do, i32 noundef %i.dp, i64 noundef %i.cd, ptr noundef %i.du)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !52
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.do, i32 noundef %i.dp, i32 noundef %i.dq, i64 noundef %i.cd, ptr noundef %i.dw)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dx = mul nsw i32 %i.br, %i.bz
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52
  tail call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.do, i32 noundef %i.dp, i32 noundef %i.dx, i32 noundef %i.dq, i64 noundef %i.cd, ptr noundef %i.dz)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.af
  %i.ea = load ptr, ptr %2, align 8, !tbaa !19
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !42
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.ed, %i.eg
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !53
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.ek)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn4Tile7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c)
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !53
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.el)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn4Tile7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.d, ptr nonnull %2, ptr nonnull %i.h)
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.ag, %_ZN4ncnn3Mat7releaseEv.exit, %bb.s, %bb.ah, %_ZNK4ncnn3Mat5emptyEv.exit
  %.1 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ 0, %bb.ah ], [ 0, %bb.s ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ], [ -100, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn4TileC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn4TileE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.e, align 1, !tbaa !55
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn4Tile7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not355 = icmp sgt i32 %i.k, %i.j
  br i1 %.not355, label %._crit_edge357, label %.preheader340.lr.ph

.preheader340.lr.ph:                              ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.t = sext i32 %i.k to i64
  br label %.preheader340

.preheader340:                                    ; preds = %.preheader340.lr.ph, %._crit_edge354
  %indvars.iv367 = phi i64 [ %i.t, %.preheader340.lr.ph ], [ %indvars.iv.next368, %._crit_edge354 ] ; 6 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !41     ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader.lr.ph, label %.noexc143

.preheader.lr.ph:                                 ; preds = %.preheader340
  %i.w = load i32, ptr %4, align 4, !tbaa !41     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader, label %.noexc147.lr.ph

.preheader339:                                    ; preds = %._crit_edge344
  %i.y = icmp sgt i32 %12, 0
  br i1 %i.y, label %.noexc147.lr.ph, label %.noexc143

.noexc147.lr.ph:                                  ; preds = %.preheader.lr.ph, %.preheader339
  %i.z = phi i32 [ %12, %.preheader339 ], [ %i.u, %.preheader.lr.ph ]
  %.pre372 = load i32, ptr %9, align 4, !tbaa !41
  br label %.noexc147

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge344
  %i.aa = phi i32 [ %12, %._crit_edge344 ], [ %i.u, %.preheader.lr.ph ] ; 2 uses
  %i.ab = phi i32 [ %13, %._crit_edge344 ], [ %i.w, %.preheader.lr.ph ] ; 3 uses
  %i.ac = phi i32 [ %14, %._crit_edge344 ], [ %i.w, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv361 = phi i64 [ %indvars.iv.next362, %._crit_edge344 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.noexc141.lr.ph, label %._crit_edge344

.noexc141.lr.ph:                                  ; preds = %.preheader
  %i.ae = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %11 = icmp sgt i32 %i.ae, 0
  br i1 %11, label %.noexc141, label %._crit_edge344

._crit_edge344.loopexit:                          ; preds = %._crit_edge
  %.pre371 = load i32, ptr %3, align 4, !tbaa !41
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %.noexc141.lr.ph, %._crit_edge344.loopexit, %.preheader
  %12 = phi i32 [ %i.aa, %.preheader ], [ %.pre371, %._crit_edge344.loopexit ], [ %i.aa, %.noexc141.lr.ph ] ; 5 uses
  %13 = phi i32 [ %i.ab, %.preheader ], [ %i.bq, %._crit_edge344.loopexit ], [ %i.ab, %.noexc141.lr.ph ]
  %14 = phi i32 [ %i.ac, %.preheader ], [ %i.bq, %._crit_edge344.loopexit ], [ %i.ac, %.noexc141.lr.ph ]
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.af = sext i32 %12 to i64
  %i.ag = icmp slt i64 %indvars.iv.next362, %i.af
  br i1 %i.ag, label %.preheader, label %.preheader339, !llvm.loop !56

.noexc141:                                        ; preds = %.noexc141.lr.ph, %._crit_edge
  %i.ah = phi i32 [ %i.bq, %._crit_edge ], [ %i.ab, %.noexc141.lr.ph ]
  %i.ai = phi i32 [ %i.br, %._crit_edge ], [ %i.ae, %.noexc141.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.noexc141.lr.ph ] ; 3 uses
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !43, !noalias !74
  %i.ak = load i32, ptr %i.m, align 8, !tbaa !44, !noalias !74
  %i.al = load ptr, ptr %5, align 8, !tbaa !19, !noalias !74
  %i.am = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !74
  %i.an = mul i64 %i.am, %indvars.iv367
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !39, !noalias !74 ; 2 uses
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ap
  %i.ar = sext i32 %i.aj to i64
  %i.as = sext i32 %i.ak to i64
  %i.at = mul i64 %i.ao, %i.ar                    ; 2 uses
  %i.au = mul i64 %i.at, %indvars.iv361
  %i.av = mul i64 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %i.ax = mul i64 %i.at, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = icmp sgt i32 %i.ai, 0
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc141
  %i.ba = load ptr, ptr %6, align 8, !tbaa !19, !noalias !75
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !75
  %i.bc = mul i64 %i.bb, %indvars.iv367
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !39, !noalias !75 ; 2 uses
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %i.bg = load i32, ptr %i.p, align 4, !tbaa !43, !noalias !75
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.bd, %i.bh                    ; 2 uses
  %i.bj = mul i64 %i.bi, %indvars.iv361
  %i.bk = load i32, ptr %i.q, align 8, !tbaa !44, !noalias !75
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bm
  %i.bo = mul i64 %i.bi, %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %.pre = load i32, ptr %8, align 4, !tbaa !41
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre370 = load i32, ptr %4, align 4, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc141
  %i.bq = phi i32 [ %.pre370, %._crit_edge.loopexit ], [ %i.ah, %.noexc141 ] ; 4 uses
  %i.br = phi i32 [ %i.cb, %._crit_edge.loopexit ], [ %i.ai, %.noexc141 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = sext i32 %i.bq to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %.noexc141, label %._crit_edge344.loopexit, !llvm.loop !61

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bu = phi i32 [ %i.bx, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.065342 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.066341 = phi ptr [ %i.bz, %.lr.ph ], [ %i.bp, %.lr.ph.preheader ] ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.066341, ptr align 4 %i.ay, i64 %i.bw, i1 false)
  %i.bx = load i32, ptr %8, align 4, !tbaa !41    ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.066341, i64 %i.by
  %i.ca = add nuw nsw i32 %.065342, 1             ; 2 uses
  %i.cb = load i32, ptr %7, align 4, !tbaa !41    ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !62

.noexc143:                                        ; preds = %._crit_edge349, %.preheader340, %.preheader339
  %i.cd = phi i32 [ %i.u, %.preheader340 ], [ %12, %.preheader339 ], [ %i.ek, %._crit_edge349 ] ; 2 uses
  %i.ce = load ptr, ptr %6, align 8, !tbaa !19, !noalias !76
  %i.cf = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !76
  %i.cg = mul i64 %i.cf, %indvars.iv367
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !39, !noalias !76 ; 2 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %10, align 4, !tbaa !41
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %.noexc143
  %i.cm = load i32, ptr %7, align 4, !tbaa !41
  %i.cn = load i32, ptr %8, align 4, !tbaa !41
  %i.co = mul nsw i32 %i.cm, %i.cn
  %i.cp = load i32, ptr %4, align 4, !tbaa !41
  %i.cq = mul nsw i32 %i.co, %i.cp
  %i.cr = load i32, ptr %9, align 4, !tbaa !41
  %i.cs = mul nsw i32 %i.cq, %i.cr
  %i.ct = mul nsw i32 %i.cs, %i.cd
  %i.cu = load i32, ptr %i.q, align 8, !tbaa !44, !noalias !77
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.p, align 4, !tbaa !43, !noalias !77
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.cv, %i.cx
  %i.cz = mul i64 %i.cy, %i.ch
  %i.da = sext i32 %i.cd to i64
  %i.db = mul i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.db
  %i.dd = sext i32 %i.ct to i64                   ; 2 uses
  %i.de = shl nsw i64 %i.dd, 2
  br label %bb.d

.noexc147:                                        ; preds = %.noexc147.lr.ph, %._crit_edge349
  %i.df = phi i32 [ %i.z, %.noexc147.lr.ph ], [ %i.ek, %._crit_edge349 ]
  %i.dg = phi i32 [ %.pre372, %.noexc147.lr.ph ], [ %i.el, %._crit_edge349 ] ; 2 uses
  %indvars.iv364 = phi i64 [ 0, %.noexc147.lr.ph ], [ %indvars.iv.next365, %._crit_edge349 ] ; 3 uses
  %i.dh = load i32, ptr %i.p, align 4, !tbaa !43, !noalias !78
  %i.di = load i32, ptr %i.q, align 8, !tbaa !44, !noalias !78
  %i.dj = load ptr, ptr %6, align 8, !tbaa !19, !noalias !78
  %i.dk = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !78
  %i.dl = mul i64 %i.dk, %indvars.iv367
  %i.dm = load i64, ptr %i.s, align 8, !tbaa !39, !noalias !78 ; 3 uses
  %i.dn = mul i64 %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dn ; 2 uses
  %i.dp = sext i32 %i.dh to i64                   ; 2 uses
  %i.dq = sext i32 %i.di to i64                   ; 2 uses
  %i.dr = mul nsw i64 %indvars.iv364, %i.dp
  %i.ds = mul i64 %i.dr, %i.dq
  %i.dt = mul i64 %i.ds, %i.dm
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dt
  %i.dv = icmp sgt i32 %i.dg, 1
  br i1 %i.dv, label %.lr.ph348, label %._crit_edge349

.lr.ph348:                                        ; preds = %.noexc147
  %i.dw = load i32, ptr %7, align 4, !tbaa !41
  %i.dx = load i32, ptr %8, align 4, !tbaa !41
  %i.dy = mul nsw i32 %i.dw, %i.dx
  %i.dz = load i32, ptr %4, align 4, !tbaa !41    ; 2 uses
  %i.ea = mul nsw i32 %i.dy, %i.dz
  %i.eb = mul i64 %i.dm, %i.dp                    ; 2 uses
  %i.ec = mul i64 %i.eb, %indvars.iv364
  %i.ed = mul i64 %i.ec, %i.dq
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ed
  %i.ef = sext i32 %i.dz to i64
  %i.eg = mul i64 %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eg
  %i.ei = sext i32 %i.ea to i64                   ; 2 uses
  %i.ej = shl nsw i64 %i.ei, 2
  br label %bb.c

._crit_edge349.loopexit:                          ; preds = %bb.c
  %.pre373 = load i32, ptr %3, align 4, !tbaa !41
  br label %._crit_edge349

._crit_edge349:                                   ; preds = %._crit_edge349.loopexit, %.noexc147
  %i.ek = phi i32 [ %.pre373, %._crit_edge349.loopexit ], [ %i.df, %.noexc147 ] ; 3 uses
  %i.el = phi i32 [ %i.eq, %._crit_edge349.loopexit ], [ %i.dg, %.noexc147 ]
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.em = sext i32 %i.ek to i64
  %i.en = icmp slt i64 %indvars.iv.next365, %i.em
  br i1 %i.en, label %.noexc147, label %.noexc143, !llvm.loop !69

bb.c:                                             ; preds = %.lr.ph348, %bb.c
  %.062347 = phi i32 [ 1, %.lr.ph348 ], [ %i.ep, %bb.c ]
  %.063346 = phi ptr [ %i.eh, %.lr.ph348 ], [ %i.eo, %bb.c ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.063346, ptr align 4 %i.du, i64 %i.ej, i1 false)
  %i.eo = getelementptr inbounds [4 x i8], ptr %.063346, i64 %i.ei
  %i.ep = add nuw nsw i32 %.062347, 1             ; 2 uses
  %i.eq = load i32, ptr %9, align 4, !tbaa !41    ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.c, label %._crit_edge349.loopexit, !llvm.loop !70

._crit_edge354:                                   ; preds = %bb.d, %.noexc143
  %indvars.iv.next368 = add nsw i64 %indvars.iv367, 1
  %i.es = load i32, ptr %i.b, align 4, !tbaa !41
  %i.et = sext i32 %i.es to i64
  %.not.not = icmp slt i64 %indvars.iv367, %i.et
  br i1 %.not.not, label %.preheader340, label %._crit_edge357

bb.d:                                             ; preds = %.lr.ph353, %bb.d
  %.0352 = phi i32 [ 1, %.lr.ph353 ], [ %i.ev, %bb.d ]
  %.061351 = phi ptr [ %i.dc, %.lr.ph353 ], [ %i.eu, %bb.d ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.061351, ptr align 4 %i.cj, i64 %i.de, i1 false)
  %i.eu = getelementptr inbounds [4 x i8], ptr %.061351, i64 %i.dd
  %i.ev = add nuw nsw i32 %.0352, 1               ; 2 uses
  %i.ew = load i32, ptr %10, align 4, !tbaa !41
  %i.ex = icmp slt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.d, label %._crit_edge354, !llvm.loop !71

._crit_edge357:                                   ; preds = %._crit_edge354, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge357, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !46 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn4Tile7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -2                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not47 = icmp sgt i32 %i.k, %i.j
  br i1 %.not47, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit.lr.ph

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.048 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %i.n, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.n = add nsw i32 %.048, 1                     ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !19, !noalias !83 ; 2 uses
  %i.p = load i32, ptr %4, align 4, !tbaa !41     ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !84 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = mul i64 %i.r, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !84
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  %i.x = sext i32 %i.p to i64
  %i.y = shl i64 %i.r, 2
  %i.z = mul i64 %i.y, %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.o, i64 %i.z, i1 false)
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.not = icmp slt i32 %.048, %i.aa
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !15, i64 32}
!19 = !{!16, !12, i64 0}
!20 = !{!16, !14, i64 64}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !14, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSN4ncnn5LayerE", !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !21, i64 13, !21, i64 14, !21, i64 15, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !21, i64 21, !21, i64 22, !21, i64 23, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !12, i64 32, !7, i64 40, !24, i64 48, !24, i64 80, !28, i64 112, !28, i64 136, !33, i64 160, !33, i64 184}
!35 = !{!"_ZTSN4ncnn4TileE", !34, i64 0, !7, i64 208, !7, i64 212, !16, i64 216}
!36 = !{!35, !7, i64 208}
!37 = !{!35, !7, i64 212}
!38 = !{!12, !12, i64 0}
!39 = !{!16, !14, i64 16}
!40 = !{!16, !7, i64 24}
!41 = !{!7, !7, i64 0}
!42 = !{!16, !7, i64 56}
!43 = !{!16, !7, i64 44}
!44 = !{!16, !7, i64 48}
!45 = !{i64 2, i64 -1, i64 -1, i1 true}
!46 = !{!45}
!47 = !{ptr @_ZN4ncnn4TileD2Ev}
!48 = !{!16, !7, i64 40}
!49 = !{!35, !7, i64 260}
!50 = !{!16, !7, i64 52}
!51 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!52 = !{!51, !15, i64 8}
!53 = !{!51, !7, i64 4}
!54 = !{!34, !21, i64 8}
!55 = !{!34, !21, i64 9}
!56 = distinct !{!56, !72, !73}
!57 = distinct !{!57, !"_ZNK4ncnn3Mat7channelEi"}
!58 = distinct !{!58, !57, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!59 = distinct !{!59, !"_ZN4ncnn3Mat7channelEi"}
!60 = distinct !{!60, !59, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!61 = distinct !{!61, !72, !73}
!62 = distinct !{!62, !72}
!63 = distinct !{!63, !"_ZN4ncnn3Mat7channelEi"}
!64 = distinct !{!64, !63, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!65 = distinct !{!65, !"_ZN4ncnn3Mat7channelEi"}
!66 = distinct !{!66, !65, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!67 = distinct !{!67, !"_ZN4ncnn3Mat7channelEi"}
!68 = distinct !{!68, !67, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!69 = distinct !{!69, !72}
!70 = distinct !{!70, !72}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unswitch.partial.disable"}
!74 = !{!58}
!75 = !{!60}
!76 = !{!64}
!77 = !{!66}
!78 = !{!68}
!79 = distinct !{!79, !"_ZN4ncnn3Mat13channel_rangeEii"}
!80 = distinct !{!80, !79, !"_ZN4ncnn3Mat13channel_rangeEii: argument 0"}
!81 = distinct !{!81, !"_ZN4ncnn3Mat13channel_rangeEii"}
!82 = distinct !{!82, !81, !"_ZN4ncnn3Mat13channel_rangeEii: argument 0"}
!83 = !{!80}
!84 = !{!82}
end_hunk_0
