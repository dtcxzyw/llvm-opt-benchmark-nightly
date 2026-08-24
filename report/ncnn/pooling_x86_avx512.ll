Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling_x86_avx512?download=true
inline.NumInlined: 59
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store ptr %.sroa.049.0, ptr %i.g, align 8, !tbaa !51
  %i.ac = sub i32 %i.k, %2
  %i.ad = icmp sgt i32 %3, 0
  %i.ae = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge58.split

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.af = zext nneg i32 %2 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %min.iters.check68 = icmp ult i32 %2, 64
  %i.ag = and i64 %i.af, 56
  %n.vec = and i64 %i.af, 2147483584              ; 5 uses
  %i.ah = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.af
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  %n.vec70 = and i64 %i.af, 2147483640            ; 4 uses
  %i.ai = trunc nuw nsw i64 %n.vec70 to i32
  %cmp.n78 = icmp eq i64 %n.vec70, %i.af
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04357 = phi i32 [ %i.az, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.04456 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %.04555 = phi i32 [ %i.ak, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.aj = sext i32 %.04555 to i64                 ; 5 uses
  %i.ak = add i32 %2, %.04555                     ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check68, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = add nsw i64 %n.vec, %i.aj
  %i.am = add i32 %.04456, %i.ah                  ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.04456, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.049.0, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %step.add.2 = add nsw <16 x i32> %vec.ind, splat (i32 32)
  %step.add.3 = add nsw <16 x i32> %vec.ind, splat (i32 48)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %vec.ind, ptr %gep, align 4, !tbaa !37
  store <16 x i32> %step.add, ptr %i.an, align 4, !tbaa !37
  store <16 x i32> %step.add.2, ptr %i.ao, align 4, !tbaa !37
  store <16 x i32> %step.add.3, ptr %i.ap, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 64)
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !281

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val69 = phi i32 [ %i.am, %vec.epilog.iter.check ], [ %.04456, %vector.main.loop.iter.check ]
  %i.ar = add nsw i64 %n.vec70, %i.aj
  %i.as = add i32 %.04456, %i.ai                  ; 2 uses
  %broadcast.splatinsert71 = insertelement <8 x i32> poison, i32 %bc.resume.val69, i64 0
  %broadcast.splat72 = shufflevector <8 x i32> %broadcast.splatinsert71, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction73 = add nsw <8 x i32> %broadcast.splat72, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep84 = getelementptr [4 x i8], ptr %.sroa.049.0, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind75 = phi <8 x i32> [ %induction73, %vec.epilog.ph ], [ %vec.ind.next77, %vec.epilog.vector.body ] ; 2 uses
  %gep85 = getelementptr [4 x i8], ptr %invariant.gep84, i64 %index74
  store <8 x i32> %vec.ind75, ptr %gep85, align 4, !tbaa !37
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %vec.ind.next77 = add nsw <8 x i32> %vec.ind75, splat (i32 8)
  %i.at = icmp eq i64 %index.next76, %n.vec70
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !282

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n78, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.aj, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.152.ph = phi i32 [ %.04456, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge58.split:                              ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.au = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.o)
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.split, label %bb.d

.split:                                           ; preds = %._crit_edge58.split
  %i.aw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true) ; 3 uses
  %i.ax = icmp samesign ult i32 %i.aw, 5
  %switch.maskindex = trunc nuw nsw i32 %i.aw to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond81 = select i1 %i.ax, i1 %switch.lobit, i1 false
  br i1 %or.cond81, label %switch.lookup, label %bb.d

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.as, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.bb, %vec.epilog.scalar.ph ]
  %i.ay = add nsw i32 %i.ac, %.lcssa
  %i.az = add nuw nsw i32 %.04357, 1              ; 2 uses
  %exitcond61.not = icmp eq i32 %i.az, %3
  br i1 %exitcond61.not, label %._crit_edge58.split, label %iter.check, !llvm.loop !283

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.152 = phi i32 [ %i.bb, %vec.epilog.scalar.ph ], [ %.152.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.sroa.049.0, i64 %indvars.iv
  store i32 %.152, ptr %i.ba, align 4, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bb = add nsw i32 %.152, 1                    ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ak, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !284

switch.lookup:                                    ; preds = %.split
  %i.bc = zext nneg i32 %i.aw to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE, i64 %i.bc
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.be)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull %switch.load, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  br label %bb.d

bb.d:                                             ; preds = %.split, %switch.lookup, %._crit_edge58.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  %.not.i.i.i = icmp eq ptr %.sroa.049.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = ptrtoint ptr %.sroa.9.0 to i64
  %i.bg = ptrtoint ptr %.sroa.049.0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0, i64 noundef %i.bh) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef nonnull align 8 dereferenceable(64) %13) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %i.l = alloca i32, align 4                      ; 9 uses
  %i.m = alloca i32, align 4                      ; 9 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca ptr, align 8                      ; 7 uses
  %i.p = alloca i32, align 4                      ; 7 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 6 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !37
  store i32 %4, ptr %i.b, align 4, !tbaa !37
  store i32 %5, ptr %i.c, align 4, !tbaa !37
  store i32 %6, ptr %i.d, align 4, !tbaa !37
  store i32 %7, ptr %i.e, align 4, !tbaa !37
  store i32 %8, ptr %i.f, align 4, !tbaa !37
  store i32 %9, ptr %i.g, align 4, !tbaa !37
  store i32 %10, ptr %i.h, align 4, !tbaa !37
  %i.s = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn32pooling_avg_bf16s_sse_avx512bf16ERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef nonnull align 8 dereferenceable(64) %13)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36   ; 3 uses
  store i32 %i.u, ptr %i.i, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  store i32 %i.w, ptr %i.j, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !39
  store i32 %i.y, ptr %i.k, align 4, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !33  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  store i32 %i.ac, ptr %i.l, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  store i32 %i.ae, ptr %i.m, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  %i.af = mul nsw i32 %4, %3                      ; 4 uses
  store i32 %i.af, ptr %i.n, align 4, !tbaa !37
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp slt i32 %i.af, 0
  br i1 %i.ah, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc69

.noexc69:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !37
  %i.al = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc69
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !37
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc69, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ak, %.noexc69 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.070.0 = phi ptr [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aj, %.noexc69 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  store ptr %.sroa.070.0, ptr %i.o, align 8, !tbaa !51
  %i.ao = sub i32 %i.u, %3
  %i.ap = icmp sgt i32 %4, 0
  %i.aq = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.ap, %i.aq
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge89.split

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ar = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check99 = icmp ult i32 %3, 64
  %i.as = and i64 %i.ar, 56
  %n.vec = and i64 %i.ar, 2147483584              ; 5 uses
  %i.at = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  %n.vec101 = and i64 %i.ar, 2147483640           ; 4 uses
  %i.au = trunc nuw nsw i64 %n.vec101 to i32
  %cmp.n109 = icmp eq i64 %n.vec101, %i.ar
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.06388 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.06487 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %.06586 = phi i32 [ %i.aw, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.av = sext i32 %.06586 to i64                 ; 5 uses
  %i.aw = add i32 %3, %.06586                     ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = add nsw i64 %n.vec, %i.av
  %i.ay = add i32 %.06487, %i.at                  ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.06487, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.070.0, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %step.add.2 = add nsw <16 x i32> %vec.ind, splat (i32 32)
  %step.add.3 = add nsw <16 x i32> %vec.ind, splat (i32 48)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %vec.ind, ptr %gep, align 4, !tbaa !37
  store <16 x i32> %step.add, ptr %i.az, align 4, !tbaa !37
  store <16 x i32> %step.add.2, ptr %i.ba, align 4, !tbaa !37
  store <16 x i32> %step.add.3, ptr %i.bb, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 64)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !281

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val100 = phi i32 [ %i.ay, %vec.epilog.iter.check ], [ %.06487, %vector.main.loop.iter.check ]
  %i.bd = add nsw i64 %n.vec101, %i.av
  %i.be = add i32 %.06487, %i.au                  ; 2 uses
  %broadcast.splatinsert102 = insertelement <8 x i32> poison, i32 %bc.resume.val100, i64 0
  %broadcast.splat103 = shufflevector <8 x i32> %broadcast.splatinsert102, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction104 = add nsw <8 x i32> %broadcast.splat103, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep114 = getelementptr [4 x i8], ptr %.sroa.070.0, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index105 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind106 = phi <8 x i32> [ %induction104, %vec.epilog.ph ], [ %vec.ind.next108, %vec.epilog.vector.body ] ; 2 uses
  %gep115 = getelementptr [4 x i8], ptr %invariant.gep114, i64 %index105
  store <8 x i32> %vec.ind106, ptr %gep115, align 4, !tbaa !37
  %index.next107 = add nuw i64 %index105, 8       ; 2 uses
  %vec.ind.next108 = add nsw <8 x i32> %vec.ind106, splat (i32 8)
  %i.bf = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !286

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n109, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.av, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  %.183.ph = phi i32 [ %.06487, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge89.split:                              ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.bg = icmp eq i32 %12, 0
  br i1 %i.bg, label %bb.d, label %bb.k

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.be, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %i.bk, %vec.epilog.scalar.ph ]
  %i.bh = add nsw i32 %i.ao, %.lcssa
  %i.bi = add nuw nsw i32 %.06388, 1              ; 2 uses
  %exitcond92.not = icmp eq i32 %i.bi, %4
  br i1 %exitcond92.not, label %._crit_edge89.split, label %iter.check, !llvm.loop !287

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.183 = phi i32 [ %i.bk, %vec.epilog.scalar.ph ], [ %.183.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.sroa.070.0, i64 %indvars.iv
  store i32 %.183, ptr %i.bj, align 4, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bk = add nsw i32 %.183, 1                    ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !288

bb.d:                                             ; preds = %._crit_edge89.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  store i32 0, ptr %i.p, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  store i32 0, ptr %i.q, align 4, !tbaa !37
  %i.bl = icmp eq i32 %11, 0
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !36
  %i.bo = add i32 %i.bn, %7
  %i.bp = add i32 %i.bo, %8
  %i.bq = sub i32 %i.u, %i.bp
  store i32 %i.bq, ptr %i.p, align 4, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !38
  %i.bt = add i32 %i.bs, %9
  %i.bu = add i32 %i.bt, %10
  %i.bv = sub i32 %i.w, %i.bu
  store i32 %i.bv, ptr %i.q, align 4, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aa)
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %.split, label %bb.j

.split:                                           ; preds = %bb.f
  %i.by = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  switch i32 %i.by, label %bb.j [
    i32 4, label %.critedge
    i32 3, label %bb.g
    i32 2, label %bb.h
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %.split
  br label %.critedge

bb.h:                                             ; preds = %.split
  br label %.critedge

bb.i:                                             ; preds = %.split
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.ca)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.26, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.d, ptr nonnull %i.l, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.g, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.q, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.i, ptr nonnull %i.f, ptr nonnull %i.p)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  br label %bb.p

bb.k:                                             ; preds = %._crit_edge89.split
  %i.cb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aa)
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %.split68, label %bb.p

.split68:                                         ; preds = %bb.k
  %i.cd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  switch i32 %i.cd, label %bb.p [
    i32 4, label %bb.l
    i32 3, label %bb.m
    i32 2, label %bb.n
    i32 0, label %bb.o
  ]

bb.l:                                             ; preds = %.split68
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.cf)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.27, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.o)
  br label %bb.p

bb.m:                                             ; preds = %.split68
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.ch)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.28, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.o)
  br label %bb.p

bb.n:                                             ; preds = %.split68
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.cj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.29, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.o)
  br label %bb.p

bb.o:                                             ; preds = %.split68
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.cl)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.30, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.n, ptr nonnull %i.o)
  br label %bb.p

.critedge:                                        ; preds = %.split, %bb.h, %bb.g
  %_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.25.sink = phi ptr [ @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.25, %bb.h ], [ @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.24, %bb.g ], [ @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined, %.split ]
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !45
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.cn)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull %_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.25.sink, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.d, ptr nonnull %i.l, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.g, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.q, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.i, ptr nonnull %i.f, ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %bb.j, %.split68, %.critedge, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  %.not.i.i.i = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = ptrtoint ptr %.sroa.9.0 to i64
  %i.cp = ptrtoint ptr %.sroa.070.0 to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.cq) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.b
  ret void
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn39pooling_global_max_bf16s_sse_avx512bf16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not43 = icmp sgt i32 %i.k, %i.j
  br i1 %.not43, label %._crit_edge45, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !42, !noalias !289
  %i.q = load i64, ptr %i.l, align 8, !tbaa !43, !noalias !289
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !289
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load <16 x i16>, ptr %i.u, align 1, !tbaa !77 ; 2 uses
  %i.w = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.v, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.v, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.y = shufflevector <16 x i16> %i.w, <16 x i16> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.z = shufflevector <16 x i16> %i.w, <16 x i16> %i.x, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aa = bitcast <16 x i16> %i.y to <8 x i32>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = shufflevector <8 x i32> %i.aa, <8 x i32> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = load i32, ptr %4, align 4, !tbaa !37    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.af = bitcast <16 x i32> %i.ac to <16 x float> ; 2 uses
  %i.ag = add nsw i32 %i.ad, -1                   ; 3 uses
  %xtraiter = and i32 %i.ag, 1
  %i.ah = icmp eq i32 %i.ad, 2
  br i1 %i.ah, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ag, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.pn41 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %.025.1, %.lr.ph ] ; 2 uses
  %.03940 = phi <16 x float> [ %i.af, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.025 = getelementptr inbounds nuw i8, ptr %.pn41, i64 32
  %i.ai = load <16 x i16>, ptr %.025, align 1, !tbaa !77 ; 2 uses
  %i.aj = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ak = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ai, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.al = shufflevector <16 x i16> %i.aj, <16 x i16> %i.ak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.am = shufflevector <16 x i16> %i.aj, <16 x i16> %i.ak, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.an = bitcast <16 x i16> %i.al to <8 x i32>
  %i.ao = bitcast <16 x i16> %i.am to <8 x i32>
  %i.ap = shufflevector <8 x i32> %i.an, <8 x i32> %i.ao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aq = bitcast <16 x i32> %i.ap to <16 x float>
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.03940, <16 x float> nofpclass(nan inf) %i.aq, i32 4)
  %.025.1 = getelementptr inbounds nuw i8, ptr %.pn41, i64 64 ; 3 uses
end_hunk_0
