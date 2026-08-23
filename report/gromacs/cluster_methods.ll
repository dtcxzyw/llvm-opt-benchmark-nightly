Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cluster_methods?download=true
inline.NumInlined: 558
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv:bb.a
  tail call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.e)
  %.sroa.020.0.copyload.i = load i64, ptr %i.e, align 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !12
  %i.f = load i64, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.g = add i64 %i.f, %.sroa.020.0.copyload.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %i.j = xor i64 %i.f, %i.i
  %i.k = xor i64 %i.j, 2004413935125273122        ; 2 uses
  %i.l = add i64 %i.i, %.sroa.49.0.copyload.i     ; 3 uses
  %i.m = add i64 %i.g, %i.l                       ; 2 uses
  %i.n = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.o = xor i64 %i.n, %i.m                       ; 3 uses
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 42)
  %i.r = xor i64 %i.q, %i.p                       ; 3 uses
  %i.s = add i64 %i.r, %i.p                       ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 12)
  %i.u = xor i64 %i.t, %i.s                       ; 3 uses
  %i.v = add i64 %i.u, %i.s                       ; 2 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 31)
  %i.x = xor i64 %i.w, %i.v
  %i.y = add i64 %i.v, %i.i
  %i.z = add i64 %i.k, 1
  %i.aa = add i64 %i.z, %i.x                      ; 3 uses
  %i.ab = add i64 %i.y, %i.aa                     ; 2 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 24)
  %i.aj = xor i64 %i.ai, %i.ah                    ; 3 uses
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.am = xor i64 %i.al, %i.ak
  %i.an = add i64 %i.ak, %i.k
  %i.ao = add i64 %i.f, 2
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = add i64 %i.an, %i.ap                    ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.as = xor i64 %i.ar, %i.aq                    ; 3 uses
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 42)
  %i.av = xor i64 %i.au, %i.at                    ; 3 uses
  %i.aw = add i64 %i.av, %i.at                    ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 12)
  %i.ay = xor i64 %i.ax, %i.aw                    ; 3 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 31)
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = add i64 %i.az, %i.f
  %i.bd = add i64 %i.i, 3
  %i.be = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = add i64 %i.bc, %i.be                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bf, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.bj = phi i64 [ %i.bf, %bb.b ], [ %.pre, %._crit_edge ]
  %i.bk = phi i32 [ 1, %bb.b ], [ %i.d, %._crit_edge ]
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !15
  ret i64 %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %2 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %3 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !13
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 24) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.d unwind label %.thread24

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %1, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %3, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.f, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.17, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !49
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.e, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.e, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #26
          to label %bb.j unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread24:                                        ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #23
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #23
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.g, label %bb.h

.sink.split:                                      ; preds = %.thread, %.thread24
  %.pn.pn23.ph = phi { ptr, i32 } [ %i.h, %.thread24 ], [ %i.g, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.pn.pn23 = phi { ptr, i32 } [ %i.i, %bb.f ], [ %.pn.pn23.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn22 = phi { ptr, i32 } [ %.pn.pn23, %bb.g ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn.pn22

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_Z6gatherP5t_matfP10t_clusters(ptr nofree noundef readonly captures(none) %0, float noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.t_dist, align 4             ; 4 uses
  %4 = alloca %struct.t_dist, align 4             ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 17 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = mul nsw i32 %i.c, %i.b
  %.fr192 = freeze i32 %i.d                       ; 5 uses
  %i.e = sdiv i32 %.fr192, 2                      ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 217, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef 12) ; 30 uses
  %i.h = icmp sgt i32 %i.b, 0                     ; 3 uses
  br i1 %i.h, label %.lr.ph171, label %._crit_edge

.lr.ph171:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = zext nneg i32 %i.b to i64                ; 3 uses
  %wide.trip.count206 = zext nneg i32 %i.b to i64 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.k = mul nuw nsw i64 %wide.trip.count206, 12
  %i.l = shl nuw nsw i64 %wide.trip.count206, 2
  %i.m = getelementptr i8, ptr %i.g, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 -12
  br label %bb.b

.loopexit166.loopexit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ac, %middle.block ], [ %indvars.iv.next.lcssa260.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph ]
  %i.o = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit166

.loopexit166:                                     ; preds = %.loopexit166.loopexit, %bb.b
  %.190.lcssa = phi i32 [ %.089170, %bb.b ], [ %i.o, %.loopexit166.loopexit ] ; 2 uses
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge, label %bb.b, !llvm.loop !83

bb.b:                                             ; preds = %.lr.ph171, %.loopexit166
  %indvars.iv203 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next204, %.loopexit166 ] ; 5 uses
  %indvars.iv196 = phi i64 [ 1, %.lr.ph171 ], [ %indvars.iv.next197, %.loopexit166 ] ; 7 uses
  %.089170 = phi i32 [ 0, %.lr.ph171 ], [ %.190.lcssa, %.loopexit166 ] ; 2 uses
  %i.p = xor i64 %indvars.iv203, -1
  %i.q = add nsw i64 %i.p, %wide.trip.count206    ; 3 uses
  %i.r = mul nsw i64 %indvars.iv203, -12
  %scevgep251 = getelementptr i8, ptr %i.n, i64 %i.r
  %i.s = shl nuw nsw i64 %indvars.iv196, 2
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 3 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next204, %i.j
  br i1 %i.t, label %.lr.ph, label %.loopexit166

.lr.ph:                                           ; preds = %bb.b
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv203
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 8 uses
  %i.x = sext i32 %.089170 to i64                 ; 5 uses
  %i.y = trunc nuw nsw i64 %indvars.iv203 to i32  ; 6 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.z = mul nsw i64 %i.x, 12                     ; 2 uses
  %scevgep250 = getelementptr i8, ptr %scevgep, i64 %i.z
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.z
  %i.aa = getelementptr nuw i8, ptr %i.w, i64 %i.s
  %scevgep254 = getelementptr i8, ptr %i.w, i64 %i.l
  %bound0 = icmp ult ptr %scevgep250, %scevgep254
  %bound1 = icmp ult ptr %i.aa, %scevgep252
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, -8                       ; 4 uses
  %i.ab = add i64 %indvars.iv196, %n.vec
  %i.ac = add i64 %n.vec, %i.x                    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %i.ad = trunc i64 %indvars.iv196 to i32
  %broadcast.splatinsert255 = insertelement <8 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat256, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [12 x i8], ptr %i.g, i64 %i.x
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv196
  %i.af = bitcast <8 x i32> %broadcast.splatinsert to <8 x float>
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %index
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %wide.load = load <8 x float>, ptr %i.ah, align 4, !tbaa !31, !alias.scope !84
  %i.ai = bitcast <8 x i32> %vec.ind to <8 x float>
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = shufflevector <8 x float> %wide.load, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.aj, <16 x float> %i.ak, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %gep, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.loopexit166.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv198.ph = phi i64 [ %indvars.iv196, %vector.memcheck ], [ %indvars.iv196, %.lr.ph ], [ %i.ab, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph ], [ %i.ac, %middle.block ] ; 2 uses
  %i.am = sub i64 %i.j, %indvars.iv198.ph
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv198.prol = phi i64 [ %indvars.iv.next199.prol, %scalar.ph.prol ], [ %indvars.iv198.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv.prol ; 3 uses
  store i32 %i.y, ptr %i.an, align 4, !tbaa !90
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = trunc nuw nsw i64 %indvars.iv198.prol to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !92
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv198.prol
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store float %i.ar, ptr %i.as, align 4, !tbaa !93
  %indvars.iv.next199.prol = add nuw nsw i64 %indvars.iv198.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !94

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa260.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv198.unr = phi i64 [ %indvars.iv198.ph, %scalar.ph.preheader ], [ %indvars.iv.next199.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.at = sub i64 %indvars.iv198.ph, %i.j
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.loopexit166.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv198 = phi i64 [ %indvars.iv.next199.3, %scalar.ph ], [ %indvars.iv198.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.av = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store i32 %i.y, ptr %i.av, align 4, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = trunc nuw nsw i64 %indvars.iv198 to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !92
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv198
  %i.az = load float, ptr %i.ay, align 4, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store float %i.az, ptr %i.ba, align 4, !tbaa !93
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.bb = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 12
  store i32 %i.y, ptr %i.bc, align 4, !tbaa !90
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %i.be = trunc nuw nsw i64 %indvars.iv.next199 to i32
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !92
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next199
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !31
  %i.bh = getelementptr i8, ptr %i.bb, i64 20
  store float %i.bg, ptr %i.bh, align 4, !tbaa !93
  %indvars.iv.next199.1 = add nuw nsw i64 %indvars.iv198, 2 ; 2 uses
  %i.bi = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  store i32 %i.y, ptr %i.bj, align 4, !tbaa !90
  %i.bk = getelementptr i8, ptr %i.bi, i64 28
  %i.bl = trunc nuw nsw i64 %indvars.iv.next199.1 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !92
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next199.1
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !31
  %i.bo = getelementptr i8, ptr %i.bi, i64 32
  store float %i.bn, ptr %i.bo, align 4, !tbaa !93
  %indvars.iv.next199.2 = add nuw nsw i64 %indvars.iv198, 3 ; 2 uses
  %i.bp = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 36
  store i32 %i.y, ptr %i.bq, align 4, !tbaa !90
  %i.br = getelementptr i8, ptr %i.bp, i64 40
  %i.bs = trunc nuw nsw i64 %indvars.iv.next199.2 to i32
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !92
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next199.2
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !31
  %i.bv = getelementptr i8, ptr %i.bp, i64 44
  store float %i.bu, ptr %i.bv, align 4, !tbaa !93
  %indvars.iv.next199.3 = add nuw nsw i64 %indvars.iv198, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next199.3, %wide.trip.count206
  br i1 %exitcond.not.3, label %.loopexit166.loopexit, label %scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %.loopexit166, %bb.a
  %.089.lcssa = phi i32 [ 0, %bb.a ], [ %.190.lcssa, %.loopexit166 ]
  %.not = icmp eq i32 %.089.lcssa, %i.e
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(71) @.str.27, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 229) #26
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.g ], [ %i.bw, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.by = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !12
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %._crit_edge
  %.idx = mul nsw i64 %i.f, 12                    ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.g, i64 %.idx ; 3 uses
  %.off = add i32 %.fr192, 1
  %.not.i.i = icmp ult i32 %.off, 3
  br i1 %.not.i.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = ptrtoint ptr %i.g to i64
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.cg = shl nuw nsw i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, 126
  tail call void @_ZSt16__introsort_loopIP6t_distlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef %i.g, ptr noundef %i.cd, i64 noundef %i.ch, ptr nonnull @_ZL13rms_dist_compRK6t_distS1_)
  %i.ci = icmp sgt i32 %.fr192, 33
  br i1 %i.ci, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %scevgep.i = getelementptr i8, ptr %i.g, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.k
  %.020.i.idx.i = phi i64 [ 12, %bb.k ], [ %.020.i.add.i, %bb.q ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.g, %bb.k ], [ %.020.i.ptr.i, %bb.q ] ; 3 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.020.i.idx.i ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !93 ; 4 uses
end_hunk_0
