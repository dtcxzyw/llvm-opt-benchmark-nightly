inline.NumInlined: 151
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bm ], [ %i.kn, %bb.bj ]
  call void @_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %bb.bn, %.loopexit.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.bn ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp ]
  call void @_ZN12CacheIndexesD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body40.i

_ZL8load_netRN4ncnn3NetEPKcRKNS_6OptionE.exit42.thread.i: ; preds = %_ZN12CacheIndexesD2Ev.exit.i, %_ZL8load_netRN4ncnn3NetEPKcRKNS_6OptionE.exit42.i, %.noexc38.i
  call void @_ZN4ncnn3NetD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZL15benchmark_modelRK11ModelConfigRKN4ncnn6OptionE.exit

.body40.i:                                        ; preds = %.loopexit.split-lp.i, %bb.u, %bb.s
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %.loopexit.split-lp.i ], [ %i.cq, %bb.u ], [ %i.co, %bb.s ]
  call void @_ZN4ncnn3NetD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #23
  br label %bb.bo

bb.bo:                                            ; preds = %.body40.i, %bb.t
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body40.i ], [ %i.cp, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body.i

.body.i:                                          ; preds = %bb.bo, %bb.o, %bb.n
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.bo ], [ %i.cj, %bb.o ], [ %i.ci, %bb.n ]
  call void @_ZN4ncnn3NetD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.i

_ZL15benchmark_modelRK11ModelConfigRKN4ncnn6OptionE.exit: ; preds = %.noexc.i, %_ZL8load_netRN4ncnn3NetEPKcRKNS_6OptionE.exit.i, %_ZL8load_netRN4ncnn3NetEPKcRKNS_6OptionE.exit42.thread.i
  call void @_ZN4ncnn3NetD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.kq = add nuw nsw i64 %.072, 1                ; 2 uses
  %exitcond74.not = icmp eq i64 %i.kq, 7
  br i1 %exitcond74.not, label %bb.k, label %bb.l, !llvm.loop !84

.thread:                                          ; preds = %bb.d, %bb.f, %bb.k
  %.1 = phi i32 [ 0, %bb.k ], [ -1, %bb.f ], [ -1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN4ncnn21UnlockedPoolAllocator22set_size_compare_ratioEf(ptr noundef nonnull align 8 dereferenceable(16), float noundef) local_unnamed_addr #0

declare void @_ZN4ncnn13PoolAllocator22set_size_compare_ratioEf(ptr noundef nonnull align 8 dereferenceable(16), float noundef) local_unnamed_addr #0

declare noundef i32 @_ZN4ncnn17set_cpu_powersaveEi(i32 noundef) local_unnamed_addr #0

declare void @_ZN4ncnn15set_omp_dynamicEi(i32 noundef) local_unnamed_addr #0

declare void @_ZN4ncnn19set_omp_num_threadsEi(i32 noundef) local_unnamed_addr #0

declare void @_ZN4ncnn6OptionC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare noundef i32 @_ZN4ncnn17get_cpu_powersaveEv() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn21UnlockedPoolAllocator5clearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZN4ncnn13PoolAllocator5clearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZN4ncnn3NetC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn5sleepEy(i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL16run_decoder_onceRN4ncnn3NetES1_RK12CacheIndexesiiiiRKSt6vectorINS_3MatESaIS6_EERS8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 1, 257) %5, i32 noundef range(i32 0, 257) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %13 = alloca %"class.ncnn::Extractor", align 8  ; 13 uses
  %14 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %15 = alloca %"class.ncnn::Mat", align 16       ; 16 uses
  %16 = alloca %"class.ncnn::Mat", align 16       ; 19 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %18 = alloca %"class.ncnn::Extractor", align 8  ; 8 uses
  %19 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %3, i32 noundef %5, i64 noundef 4, ptr noundef null)
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  %i.f = load i32, ptr %i.c, align 8, !tbaa !85
  %i.g = trunc i64 %i.e to i32
  %i.h = mul i32 %i.f, %i.g                       ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %_ZN4ncnn3Mat4fillEf.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = load ptr, ptr %9, align 8, !tbaa !79     ; 3 uses
  %i.k = zext nneg i32 %i.h to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 2147483640               ; 4 uses
  %i.l = trunc nuw nsw i64 %n.vec to i32
  %i.m = shl nuw nsw i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float f0x3C23D70A), ptr %next.gep, align 4, !tbaa !86
  store <4 x float> splat (float f0x3C23D70A), ptr %i.p, align 4, !tbaa !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br i1 %cmp.n, label %_ZN4ncnn3Mat4fillEf.exit, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i197.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.05.i196.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.0.i197 = phi i32 [ %i.s, %.lr.ph ], [ %.0.i197.ph, %.lr.ph.preheader25 ]
  %.05.i196 = phi ptr [ %i.r, %.lr.ph ], [ %.05.i196.ph, %.lr.ph.preheader25 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i196, i64 4
  store float f0x3C23D70A, ptr %.05.i196, align 4, !tbaa !86
  %i.s = add nuw nsw i32 %.0.i197, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.h
  br i1 %exitcond.not, label %_ZN4ncnn3Mat4fillEf.exit, label %.lr.ph, !llvm.loop !91

_ZN4ncnn3Mat4fillEf.exit:                         ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !81
  %i.y = add nuw nsw i32 %6, %5                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.y, i32 noundef range(i32 1, 257) %5, i64 noundef 4, ptr noundef null)
          to label %.noexc189 unwind label %bb.g

.noexc189:                                        ; preds = %_ZN4ncnn3Mat4fillEf.exit
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !81
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !85
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = mul i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = load ptr, ptr %10, align 8, !tbaa !79   ; 2 uses
  %i.af = icmp sgt i32 %i.ad, 0
  br i1 %i.af, label %.lr.ph.preheader.i, label %_ZN4ncnn3Mat4fillEf.exit.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc189
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !86
  br label %_ZN4ncnn3Mat4fillEf.exit.preheader.i

_ZN4ncnn3Mat4fillEf.exit.preheader.i:             ; preds = %.lr.ph.preheader.i, %.noexc189
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !92
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !93
  %factor.op.mul.i = mul i64 %i.ak, %i.aj
  %invariant.op.i = add nuw nsw i32 %6, 1
  %i.al = zext nneg i32 %invariant.op.i to i64    ; 2 uses
  %i.am = zext nneg i32 %i.y to i64               ; 3 uses
  %wide.trip.count31.i = zext nneg i32 %5 to i64
  %20 = xor i32 %6, -1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %i.am
  br label %bb.b

bb.b:                                             ; preds = %_ZN4ncnn3Mat4fillEf.exit.i, %_ZN4ncnn3Mat4fillEf.exit.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %_ZN4ncnn3Mat4fillEf.exit.preheader.i ], [ %indvars.iv.next28.i, %_ZN4ncnn3Mat4fillEf.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %i.al, %_ZN4ncnn3Mat4fillEf.exit.preheader.i ], [ %indvars.iv.next.i, %_ZN4ncnn3Mat4fillEf.exit.i ] ; 4 uses
  %23 = sub i64 %22, %indvars.iv27.i              ; 3 uses
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv27.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.reass.i ; 2 uses
  %i.ao = add nuw nsw i64 %indvars.iv27.i, %i.al
  %i.ap = icmp samesign ult i64 %i.ao, %i.am
  br i1 %i.ap, label %.lr.ph22.i.preheader, label %_ZN4ncnn3Mat4fillEf.exit.i

.lr.ph22.i.preheader:                             ; preds = %bb.b
  %min.iters.check3 = icmp ult i64 %23, 8
  br i1 %min.iters.check3, label %.lr.ph22.i.preheader24, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph22.i.preheader
  %n.vec5 = and i64 %23, -8                       ; 3 uses
  %i.aq = add i64 %indvars.iv.i, %n.vec5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %vector.ph4
  %index7 = phi i64 [ 0, %vector.ph4 ], [ %index.next8, %vector.body6 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index7 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x float> splat (float -inf), ptr %i.as, align 4, !tbaa !86
  store <4 x float> splat (float -inf), ptr %i.at, align 4, !tbaa !86
  %index.next8 = add nuw i64 %index7, 8           ; 2 uses
  %i.au = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.au, label %middle.block9, label %vector.body6, !llvm.loop !94

middle.block9:                                    ; preds = %vector.body6
  %cmp.n10 = icmp eq i64 %23, %n.vec5
  br i1 %cmp.n10, label %_ZN4ncnn3Mat4fillEf.exit.i, label %.lr.ph22.i.preheader24

.lr.ph22.i.preheader24:                           ; preds = %.lr.ph22.i.preheader, %middle.block9
  %indvars.iv24.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph22.i.preheader ], [ %i.aq, %middle.block9 ]
  br label %.lr.ph22.i

_ZN4ncnn3Mat4fillEf.exit.i:                       ; preds = %.lr.ph22.i, %middle.block9, %bb.b
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %_ZL19make_attention_maskiiRN4ncnn3MatE.exit, label %bb.b, !llvm.loop !95

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.preheader24, %.lr.ph22.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %.lr.ph22.i ], [ %indvars.iv24.i.ph, %.lr.ph22.i.preheader24 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv24.i
  store float -inf, ptr %i.av, align 4, !tbaa !86
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next25.i, %i.am
  br i1 %exitcond.not.i, label %_ZN4ncnn3Mat4fillEf.exit.i, label %.lr.ph22.i, !llvm.loop !96

_ZL19make_attention_maskiiRN4ncnn3MatE.exit:      ; preds = %_ZN4ncnn3Mat4fillEf.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %4, i32 noundef range(i32 1, 257) %5, i64 noundef 4, ptr noundef null)
          to label %.noexc193 unwind label %bb.h

.noexc193:                                        ; preds = %_ZL19make_attention_maskiiRN4ncnn3MatE.exit
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %4, i32 noundef range(i32 1, 257) %5, i64 noundef 4, ptr noundef null)
          to label %.noexc194 unwind label %bb.h

.noexc194:                                        ; preds = %.noexc193
  %i.be = load i64, ptr %i.az, align 8, !tbaa !81
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !85
  %i.bg = trunc i64 %i.be to i32
  %i.bh = mul i32 %i.bf, %i.bg                    ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader.i191, label %_ZN4ncnn3Mat4fillEf.exit9.i

.lr.ph.preheader.i191:                            ; preds = %.noexc194
  %i.bj = load ptr, ptr %11, align 8, !tbaa !79   ; 3 uses
  %i.bk = zext nneg i32 %i.bh to i64              ; 2 uses
  %min.iters.check13 = icmp ult i32 %i.bh, 8
  br i1 %min.iters.check13, label %.lr.ph.i.preheader, label %vector.ph14

vector.ph14:                                      ; preds = %.lr.ph.preheader.i191
  %n.vec15 = and i64 %i.bk, 2147483640            ; 4 uses
  %i.bl = trunc nuw nsw i64 %n.vec15 to i32
  %i.bm = shl nuw nsw i64 %n.vec15, 2
  %i.bn = getelementptr i8, ptr %i.bj, i64 %i.bm
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph14
  %index17 = phi i64 [ 0, %vector.ph14 ], [ %index.next19, %vector.body16 ] ; 2 uses
  %i.bo = shl i64 %index17, 2
  %next.gep18 = getelementptr i8, ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep18, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep18, align 4, !tbaa !86
  store <4 x float> splat (float 1.000000e+00), ptr %i.bp, align 4, !tbaa !86
  %index.next19 = add nuw i64 %index17, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.bq, label %middle.block20, label %vector.body16, !llvm.loop !97

middle.block20:                                   ; preds = %vector.body16
  %cmp.n21 = icmp eq i64 %n.vec15, %i.bk
  br i1 %cmp.n21, label %_ZN4ncnn3Mat4fillEf.exit9.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i191, %middle.block20
  %.0.i811.i.ph = phi i32 [ 0, %.lr.ph.preheader.i191 ], [ %i.bl, %middle.block20 ]
  %.05.i710.i.ph = phi ptr [ %i.bj, %.lr.ph.preheader.i191 ], [ %i.bn, %middle.block20 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0.i811.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %.0.i811.i.ph, %.lr.ph.i.preheader ]
  %.05.i710.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.05.i710.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i710.i, i64 4
  store float 1.000000e+00, ptr %.05.i710.i, align 4, !tbaa !86
  %i.bs = add nuw nsw i32 %.0.i811.i, 1           ; 2 uses
  %exitcond.not.i192 = icmp eq i32 %i.bs, %i.bh
  br i1 %exitcond.not.i192, label %_ZN4ncnn3Mat4fillEf.exit9.i, label %.lr.ph.i, !llvm.loop !98

_ZN4ncnn3Mat4fillEf.exit9.i:                      ; preds = %.lr.ph.i, %middle.block20, %.noexc194
  %i.bt = load i64, ptr %i.bd, align 8, !tbaa !81
  %i.bu = load i32, ptr %i.bc, align 8, !tbaa !85
  %i.bv = trunc i64 %i.bt to i32
  %i.bw = mul i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph14.preheader.i, label %_ZL15make_rope_cacheiiRN4ncnn3MatES1_.exit

.lr.ph14.preheader.i:                             ; preds = %_ZN4ncnn3Mat4fillEf.exit9.i
  %i.by = load ptr, ptr %12, align 8, !tbaa !79
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.by, i8 0, i64 %i.ca, i1 false), !tbaa !86
  br label %_ZL15make_rope_cacheiiRN4ncnn3MatES1_.exit

_ZL15make_rope_cacheiiRN4ncnn3MatES1_.exit:       ; preds = %.lr.ph14.preheader.i, %_ZN4ncnn3Mat4fillEf.exit9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNK4ncnn3Net16create_extractorEv(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Extractor") align 8 %13, ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZL15make_rope_cacheiiRN4ncnn3MatES1_.exit
  %i.cb = invoke noundef i32 @_ZN4ncnn9Extractor5inputEPKcRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(72) %9)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.cc = invoke noundef i32 @_ZN4ncnn9Extractor5inputEPKcRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.cd = invoke noundef i32 @_ZN4ncnn9Extractor5inputEPKcRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(72) %11)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ce = invoke noundef i32 @_ZN4ncnn9Extractor5inputEPKcRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(72) %12)
          to label %.preheader195 unwind label %bb.j ; 0 uses

.preheader195:                                    ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !75
  %i.ch = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not203 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not203, label %._crit_edge, label %.lr.ph199

._crit_edge:                                      ; preds = %bb.k, %.preheader195
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !68
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2
  invoke void @_ZNSt6vectorIN4ncnn3MatESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.cp)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %._crit_edge
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !68 ; 2 uses
  %.not204 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not204, label %._crit_edge202, label %.lr.ph201

bb.g:                                             ; preds = %_ZN4ncnn3Mat4fillEf.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.h:                                             ; preds = %.noexc193, %_ZL19make_attention_maskiiRN4ncnn3MatE.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.i:                                             ; preds = %_ZL15make_rope_cacheiiRN4ncnn3MatES1_.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.j:                                             ; preds = %._crit_edge, %bb.f, %bb.e, %bb.d, %bb.c
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

.lr.ph199:                                        ; preds = %.preheader195, %bb.k
  %i.cw = phi ptr [ %i.de, %bb.k ], [ %i.ch, %.preheader195 ]
  %.030198 = phi i64 [ %i.dc, %bb.k ], [ 0, %.preheader195 ] ; 3 uses
  %i.cx = load ptr, ptr %2, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.030198
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !19
  %i.da = getelementptr inbounds nuw [72 x i8], ptr %i.cw, i64 %.030198
  %i.db = invoke noundef i32 @_ZN4ncnn9Extractor5inputEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %i.da)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %.lr.ph199
  %i.dc = add nuw i64 %.030198, 1                 ; 2 uses
  %i.dd = load ptr, ptr %i.cf, align 8, !tbaa !75
  %i.de = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 72
  %i.dj = icmp ult i64 %i.dc, %i.di
  br i1 %i.dj, label %.lr.ph199, label %._crit_edge, !llvm.loop !99

bb.l:                                             ; preds = %.lr.ph199
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx
end_hunk_0
