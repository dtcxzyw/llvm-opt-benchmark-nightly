Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 531
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZN8LightGBM17MultiValSparseBinImhE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_:bb.a
  %i.y = sdiv i32 %i.x, %.sroa.speculated.i
  %i.z = add nsw i32 %i.y, 31
  %i.aa = sdiv i32 %i.z, 32
  %i.ab = shl nsw i32 %i.aa, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi i32 [ %i.ab, %bb.d ], [ %i.i, %bb.c ]
  store i32 %storemerge.i, ptr %i.d, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ac = add nsw i64 %i.q, 1                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #40
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %.noexc9

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc9:                                          ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %i.ac, 3                ; 3 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #39 ; 4 uses
  store ptr %i.af, ptr %7, align 8, !tbaa !331
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ac
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !332
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ae, i1 false), !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc9, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.ai, %.noexc9 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !333
  %i.ak = invoke i32 @OMP_NUM_THREADS()
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.loopexit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ak)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN8LightGBM17MultiValSparseBinImhE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %4, ptr nonnull %6, ptr nonnull %7)
  %i.al = load ptr, ptr %7, align 8, !tbaa !331
  invoke void @_ZN8LightGBM17MultiValSparseBinImhE9MergeDataEPKm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.al)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %7, align 8, !tbaa !331   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !332
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

bb.h:                                             ; preds = %bb.e, %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %7, align 8, !tbaa !331   ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorImSaImEED2Ev.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !332
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit11

_ZNSt6vectorImSaImEED2Ev.exit11:                  ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  resume { ptr, i32 } %i.as
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM17MultiValSparseBinImhE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree nonnull readnone align 8 captures(none) %7, ptr nofree nonnull readnone align 8 captures(none) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 %i.g, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 1, ptr %i.d, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 0, ptr %i.e, align 4, !tbaa !58
  %i.i = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i32 1, i32 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !58
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 3 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !58
  %i.l = load i32, ptr %i.b, align 4, !tbaa !58   ; 2 uses
  %.not72 = icmp sgt i32 %i.l, %i.k
  br i1 %.not72, label %._crit_edge73, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge70
  %i.q = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.ez, %._crit_edge70 ] ; 3 uses
  %i.r = phi i32 [ %i.l, %.preheader.lr.ph ], [ %i.ex, %._crit_edge70 ] ; 3 uses
  %.not5567 = icmp sgt i32 %i.r, %i.q
  br i1 %.not5567, label %._crit_edge70, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %.preheader
  %i.s = sext i32 %i.r to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %._crit_edge65
  %i.t = phi i32 [ %i.q, %.lr.ph69.preheader ], [ %i.aj, %._crit_edge65 ]
  %indvars.iv77 = phi i64 [ %i.s, %.lr.ph69.preheader ], [ %indvars.iv.next78, %._crit_edge65 ] ; 6 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !58     ; 2 uses
  %i.v = trunc nsw i64 %indvars.iv77 to i32
  %i.w = mul i32 %i.u, %i.v                       ; 3 uses
  %i.x = add nsw i32 %i.w, %i.u
  %i.y = load i32, ptr %i.m, align 4, !tbaa !58
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.y) ; 2 uses
  %i.z = icmp eq i64 %indvars.iv77, 0
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph69
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !358
  %i.ab = getelementptr [24 x i8], ptr %i.aa, i64 %indvars.iv77
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph69, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.o, %.lr.ph69 ] ; 7 uses
  %i.ae = icmp slt i32 %i.w, %.sroa.speculated
  br i1 %i.ae, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ah = sext i32 %i.w to i64
  %i.ai = sext i32 %.sroa.speculated to i64
  br label %bb.e

._crit_edge65.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.c, align 4, !tbaa !58
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge65.loopexit, %bb.d
  %i.aj = phi i32 [ %i.t, %bb.d ], [ %.pre, %._crit_edge65.loopexit ] ; 3 uses
  %.053.lcssa = phi i64 [ 0, %bb.d ], [ %.1.lcssa, %._crit_edge65.loopexit ]
  %i.ak = load ptr, ptr %10, align 8, !tbaa !331
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv77
  store i64 %.053.lcssa, ptr %i.al, align 8, !tbaa !91
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1
  %i.am = sext i32 %i.aj to i64
  %.not55.not = icmp slt i64 %indvars.iv77, %i.am
  br i1 %.not55.not, label %.lr.ph69, label %._crit_edge70.loopexit

bb.e:                                             ; preds = %.lr.ph64, %._crit_edge
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph64 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.05361 = phi i64 [ 0, %.lr.ph64 ], [ %.1.lcssa, %._crit_edge ] ; 7 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !435
  %i.ao = load ptr, ptr %6, align 8, !tbaa !71
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !407
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !91 ; 7 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !91 ; 5 uses
  %i.ay = sub i64 %i.ax, %i.av                    ; 2 uses
  %i.az = add i64 %i.ay, %.05361
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !69 ; 6 uses
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 10 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 4 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 16 uses
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.f, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bg = mul i64 %i.ay, 50
  %i.bh = add i64 %i.bg, %.05361                  ; 5 uses
  %i.bi = icmp ugt i64 %i.bh, %i.be
  br i1 %i.bi, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bj = sub nuw i64 %i.bh, %i.be                ; 6 uses
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !162
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.bc                    ; 2 uses
  %i.bn = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = xor i64 %i.be, 9223372036854775807      ; 2 uses
  %i.bp = icmp ule i64 %i.bm, %i.bo
  call void @llvm.assume(i1 %i.bp)
  %.not37.i.i = icmp ult i64 %i.bm, %i.bj
  br i1 %.not37.i.i, label %bb.h, label %_ZSt27__uninitialized_default_n_aIPhmN8LightGBM6Common18AlignmentAllocatorIhLm32EEEET_S5_T0_RT1_.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmN8LightGBM6Common18AlignmentAllocatorIhLm32EEEET_S5_T0_RT1_.exit.i.i: ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 0, i64 %i.bj, i1 false), !tbaa !57
  %scevgep.i.i.i = getelementptr i8, ptr %i.ba, i64 %i.bj
  store ptr %scevgep.i.i.i, ptr %i.af, align 8, !tbaa !69
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = icmp ult i64 %i.bo, %i.bj
  br i1 %i.bq, label %bb.i, label %_ZNKSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #40
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 %i.bj)
  %i.br = add nuw i64 %.sroa.speculated.i.i.i, %i.be
  %i.bs = call i64 @llvm.umin.i64(i64 %i.br, i64 9223372036854775807) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bt = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bs) #19
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  %i.bu = load ptr, ptr %i.a, align 8             ; 2 uses
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.bu, ptr null ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 %i.be
  call void @llvm.memset.p0.i64(ptr align 1 %i.bv, i8 0, i64 %i.bj, i1 false), !tbaa !57
  %.not13.i.i.i.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not13.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE12_M_check_lenEmPKc.exit.i.i
  %.0.i.i.i.i.i.i102 = ptrtoaddr ptr %.0.i.i.i.i.i.i to i64
  %min.iters.check = icmp samesign ult i64 %i.be, 8
  %i.bw = sub i64 %i.bd, %.0.i.i.i.i.i.i102
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp samesign ult i64 %i.be, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.be, 24
  %n.vec = and i64 %i.be, 9223372036854775776     ; 5 uses
  %i.by = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %n.vec
  %i.bz = getelementptr i8, ptr %i.bb, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.bb, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep104, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep104, align 1, !tbaa !57
  %wide.load105 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !57
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !57
  store <16 x i8> %wide.load105, ptr %i.cb, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !2362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %i.be, 9223372036854775800  ; 4 uses
  %i.cd = getelementptr i8, ptr %.0.i.i.i.i.i.i, i64 %n.vec107
  %i.ce = getelementptr i8, ptr %i.bb, i64 %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %next.gep109 = getelementptr i8, ptr %i.bu, i64 %index108
  %next.gep110 = getelementptr i8, ptr %i.bb, i64 %index108
  %wide.load111 = load <8 x i8>, ptr %next.gep110, align 1, !tbaa !57
  store <8 x i8> %wide.load111, ptr %next.gep109, align 1, !tbaa !57
  %index.next112 = add nuw i64 %index108, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.be, %n.vec107
  br i1 %cmp.n113, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i.i, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.010.014.i.i.i.i.ph = phi ptr [ %i.bb, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.010.014.i.i.i.i.ph118 = ptrtoaddr ptr %.sroa.010.014.i.i.i.i.ph to i64 ; 2 uses
  %i.cg = sub i64 %i.bc, %.sroa.010.014.i.i.i.i.ph118
  %xtraiter = and i64 %i.cg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.015.i.i.i.i.prol = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.prol ], [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i.i.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.prol ], [ %.sroa.010.014.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ch = load i8, ptr %.sroa.010.014.i.i.i.i.prol, align 1, !tbaa !57
  store i8 %i.ch, ptr %.015.i.i.i.i.prol, align 1, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2364

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.015.i.i.i.i.unr = phi ptr [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.prol ]
  %.sroa.010.014.i.i.i.i.unr = phi ptr [ %.sroa.010.014.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.prol ]
  %i.ck = sub i64 %.sroa.010.014.i.i.i.i.ph118, %i.bc
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i ], [ %.sroa.010.014.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cm = load i8, ptr %.sroa.010.014.i.i.i.i, align 1, !tbaa !57
  store i8 %i.cm, ptr %.015.i.i.i.i, align 1, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 1
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !57
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 2
  %i.cr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 2
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !57
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 3
  %i.cu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 3
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !57
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !57
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !57
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 5
  %i.da = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 5
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !57
  store i8 %i.db, ptr %i.da, align 1, !tbaa !57
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 6
  %i.dd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 6
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !57
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !57
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 7
  %i.dg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 7
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !57
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !57
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.di, %i.ba
  br i1 %.not.i.i.i.i.7, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2365

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE12_M_check_lenEmPKc.exit.i.i
  %.not.i45.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i45.i.i, label %_ZNSt12_Vector_baseIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13_M_deallocateEPhm.exit46.i.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i
  call void @free(ptr noundef nonnull %i.bb) #19
  br label %_ZNSt12_Vector_baseIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13_M_deallocateEPhm.exit46.i.i

_ZNSt12_Vector_baseIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13_M_deallocateEPhm.exit46.i.i: ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_N8LightGBM6Common18AlignmentAllocatorIhLm32EEEET0_T_S6_S5_RT1_.exit.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !60
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 %i.bh
  store ptr %i.dk, ptr %i.af, align 8, !tbaa !69
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 %i.bs
  store ptr %i.dl, ptr %i.ag, align 8, !tbaa !162
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.f
  %i.dm = icmp ult i64 %i.bh, %i.be
  br i1 %i.dm, label %bb.l, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ba, %i.dn
  br i1 %.not.i4.i, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.dn, ptr %i.af, align 8, !tbaa !69
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit

_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE13_M_deallocateEPhm.exit46.i.i, %_ZSt27__uninitialized_default_n_aIPhmN8LightGBM6Common18AlignmentAllocatorIhLm32EEEET_S5_T0_RT1_.exit.i.i, %bb.e
  %i.do = icmp ult i64 %i.av, %i.ax
  br i1 %i.do, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit
  %11 = sub nuw i64 %i.ax, %i.av
  %.neg = add i64 %i.av, 1
  %xtraiter119 = and i64 %11, 1
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.dp = load ptr, ptr %5, align 8, !tbaa !435
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !60
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.av
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !57
  %i.du = add i64 %.05361, 1                      ; 2 uses
  %i.dv = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.05361
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !57
  %i.dx = add nuw i64 %i.av, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa116.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.du, %.lr.ph.prol ]
  %.05160.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %i.dx, %.lr.ph.prol ]
  %.159.unr = phi i64 [ %.05361, %.lr.ph.preheader ], [ %i.du, %.lr.ph.prol ]
  %i.dy = icmp eq i64 %i.ax, %.neg
  br i1 %i.dy, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit
  %.1.lcssa = phi i64 [ %.05361, %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEE6resizeEm.exit ], [ %.lcssa116.unr, %.lr.ph.prol.loopexit ], [ %i.eq, %.lr.ph ] ; 3 uses
  %i.dz = sub i64 %.1.lcssa, %.05361
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !407
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next
  store i64 %i.dz, ptr %i.eb, align 8, !tbaa !91
  %i.ec = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.ec, label %bb.e, label %._crit_edge65.loopexit, !llvm.loop !2366

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05160 = phi i64 [ %i.eu, %.lr.ph ], [ %.05160.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.159 = phi i64 [ %i.eq, %.lr.ph ], [ %.159.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ed = load ptr, ptr %5, align 8, !tbaa !435
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !60
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.05160
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !57
  %i.ei = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.159
  store i8 %i.eh, ptr %i.ej, align 1, !tbaa !57
  %i.ek = load ptr, ptr %5, align 8, !tbaa !435
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !60
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.05160
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !57
  %i.eq = add i64 %.159, 2                        ; 2 uses
  %i.er = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.es = getelementptr i8, ptr %i.er, i64 %.159
  %i.et = getelementptr i8, ptr %i.es, i64 1
  store i8 %i.ep, ptr %i.et, align 1, !tbaa !57
  %i.eu = add nuw i64 %.05160, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.eu, %i.ax
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !2367

._crit_edge70.loopexit:                           ; preds = %._crit_edge65
  %.pre80 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %.preheader
  %i.ev = phi i32 [ %i.r, %.preheader ], [ %.pre80, %._crit_edge70.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.aj, %._crit_edge70.loopexit ]
  %i.ew = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.ex = add nsw i32 %i.ew, %i.ev                ; 3 uses
  store i32 %i.ex, ptr %i.b, align 4, !tbaa !58
  %i.ey = add nsw i32 %i.ew, %.lcssa
  %i.ez = call i32 @llvm.smin.i32(i32 %i.ey, i32 %i.g) ; 3 uses
  store i32 %i.ez, ptr %i.c, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.ex, %i.ez
  br i1 %.not, label %._crit_edge73, label %.preheader

._crit_edge73:                                    ; preds = %._crit_edge70, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge73, %bb.a
  ret void

bb.o:                                             ; preds = %bb.i
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImhE9MergeDataEPKm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::vector.180", align 8   ; 9 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.b, align 8, !tbaa !436
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 28, ptr %i.a, align 8, !tbaa !91
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !276
  %i.f = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.e, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !277
  %i.h = load ptr, ptr %2, align 8, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = load ptr, ptr %2, align 8, !tbaa !276    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.l = load i64, ptr %i.d, align 8, !tbaa !57
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !404  ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !407  ; 6 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !91  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = icmp ult i32 %i.o, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.epil.preheader
  %i.t = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.w, %bb.a ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.a ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.a ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.epil ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !91
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !91
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.a, !llvm.loop !2368

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !357  ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !358 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24                ; 2 uses
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %bb.g, label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.af = phi i64 [ %.pre, %.lr.ph.new ], [ %i.au, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !91
  %i.aj = add i64 %i.ai, %i.af                    ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !91
  %i.an = add i64 %i.am, %i.aj                    ; 2 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !91
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
end_hunk_0
