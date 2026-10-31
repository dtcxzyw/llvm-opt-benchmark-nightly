Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cluster_methods?download=true
inline.NumInlined: 558
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3gmx5log2IEj

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert1 = zext nneg i32 %i.b to i64
  %.phi.trans.insert2 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert1
  %.pre = load i64, ptr %.phi.trans.insert2, align 8, !tbaa !26
  %i.d = add nuw nsw i32 %i.b, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.e)
  %.sroa.020.0.copyload.i = load i64, ptr %i.e, align 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !24
  %i.f = load i64, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.g = add i64 %i.f, %.sroa.020.0.copyload.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 4 uses
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
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.bj = phi i64 [ %i.bf, %bb.b ], [ %.pre, %._crit_edge ]
  %i.bk = phi i32 [ 1, %bb.b ], [ %i.d, %._crit_edge ]
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !29
  ret i64 %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %2 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %3 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !26
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %1, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %3, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.f, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.17, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !54
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 17 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = mul nsw i32 %i.c, %i.b
  %.fr194 = freeze i32 %i.d                       ; 5 uses
  %i.e = sdiv i32 %.fr194, 2                      ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 217, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef 12) ; 27 uses
  %i.h = icmp sgt i32 %i.b, 0                     ; 3 uses
  br i1 %i.h, label %.lr.ph173, label %._crit_edge

.lr.ph173:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = zext nneg i32 %i.b to i64                ; 3 uses
  %wide.trip.count208 = zext nneg i32 %i.b to i64 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.k = mul nuw nsw i64 %wide.trip.count208, 12
  %8 = shl nuw nsw i64 %wide.trip.count208, 2
  %i.l = getelementptr i8, ptr %i.g, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -12
  br label %bb.b

.loopexit168.loopexit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.z, %middle.block ], [ %indvars.iv.next.lcssa265.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph ]
  %i.n = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit168

.loopexit168:                                     ; preds = %.loopexit168.loopexit, %bb.b
  %.190.lcssa = phi i32 [ %.089172, %bb.b ], [ %i.n, %.loopexit168.loopexit ] ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %._crit_edge, label %bb.b, !llvm.loop !112

bb.b:                                             ; preds = %.lr.ph173, %.loopexit168
  %indvars.iv205 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next206, %.loopexit168 ] ; 6 uses
  %indvars.iv198 = phi i64 [ 1, %.lr.ph173 ], [ %indvars.iv.next199, %.loopexit168 ] ; 6 uses
  %.089172 = phi i32 [ 0, %.lr.ph173 ], [ %.190.lcssa, %.loopexit168 ] ; 2 uses
  %9 = mul nsw i64 %indvars.iv205, -12
  %scevgep256 = getelementptr i8, ptr %i.m, i64 %9
  %10 = shl nuw nsw i64 %indvars.iv205, 2
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.o = icmp samesign ult i64 %indvars.iv.next206, %i.j
  br i1 %i.o, label %.lr.ph, label %.loopexit168

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv205
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 8 uses
  %i.s = sext i32 %.089172 to i64                 ; 5 uses
  %i.t = trunc nuw nsw i64 %indvars.iv205 to i32  ; 6 uses
  %i.u = xor i64 %indvars.iv205, -1
  %i.v = add nsw i64 %i.u, %wide.trip.count208    ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.w = mul nsw i64 %i.s, 12                     ; 2 uses
  %scevgep255 = getelementptr i8, ptr %scevgep, i64 %i.w
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %i.w
  %i.x = getelementptr nuw i8, ptr %i.r, i64 %10
  %scevgep258 = getelementptr nuw i8, ptr %i.x, i64 4
  %scevgep259 = getelementptr i8, ptr %i.r, i64 %8
  %bound0 = icmp ult ptr %scevgep255, %scevgep259
  %bound1 = icmp ult ptr %scevgep258, %scevgep257
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -8                       ; 4 uses
  %i.y = add i64 %indvars.iv198, %n.vec
  %i.z = add i64 %n.vec, %i.s                     ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %i.aa = trunc i64 %indvars.iv198 to i32
  %broadcast.splatinsert260 = insertelement <8 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat261 = shufflevector <8 x i32> %broadcast.splatinsert260, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat261, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [12 x i8], ptr %i.g, i64 %i.s
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv198
  %i.ac = bitcast <8 x i32> %broadcast.splatinsert to <8 x float>
  %i.ad = shufflevector <8 x float> %i.ac, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %index
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index
  %wide.load = load <8 x float>, ptr %i.ae, align 4, !tbaa !42, !alias.scope !125
  %i.af = bitcast <8 x i32> %vec.ind to <8 x float>
  %i.ag = shufflevector <8 x float> %i.ad, <8 x float> %i.af, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = shufflevector <8 x float> %wide.load, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.ag, <16 x float> %i.ah, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %gep, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit168.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv200.ph = phi i64 [ %indvars.iv198, %vector.memcheck ], [ %indvars.iv198, %.lr.ph ], [ %i.y, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.z, %middle.block ] ; 2 uses
  %i.aj = sub i64 %i.j, %indvars.iv200.ph
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv200.prol = phi i64 [ %indvars.iv.next201.prol, %scalar.ph.prol ], [ %indvars.iv200.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv.prol ; 3 uses
  store i32 %i.t, ptr %i.ak, align 4, !tbaa !126
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = trunc nuw nsw i64 %indvars.iv200.prol to i32
  store i32 %i.am, ptr %i.al, align 4, !tbaa !62
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv200.prol
  %i.ao = load float, ptr %i.an, align 4, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !63
  %indvars.iv.next201.prol = add nuw nsw i64 %indvars.iv200.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !116

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa265.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv200.unr = phi i64 [ %indvars.iv200.ph, %scalar.ph.preheader ], [ %indvars.iv.next201.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aq = sub i64 %indvars.iv200.ph, %i.j
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %.loopexit168.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.3, %scalar.ph ], [ %indvars.iv200.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  store i32 %i.t, ptr %i.as, align 4, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = trunc nuw nsw i64 %indvars.iv200 to i32
  store i32 %i.au, ptr %i.at, align 4, !tbaa !62
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv200
  %i.aw = load float, ptr %i.av, align 4, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.aw, ptr %i.ax, align 4, !tbaa !63
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.ay = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 12
  store i32 %i.t, ptr %i.az, align 4, !tbaa !126
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  %i.bb = trunc nuw nsw i64 %indvars.iv.next201 to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !62
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next201
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !42
  %i.be = getelementptr i8, ptr %i.ay, i64 20
  store float %i.bd, ptr %i.be, align 4, !tbaa !63
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200, 2 ; 2 uses
  %i.bf = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 24
  store i32 %i.t, ptr %i.bg, align 4, !tbaa !126
  %i.bh = getelementptr i8, ptr %i.bf, i64 28
  %i.bi = trunc nuw nsw i64 %indvars.iv.next201.1 to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !62
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next201.1
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !42
  %i.bl = getelementptr i8, ptr %i.bf, i64 32
  store float %i.bk, ptr %i.bl, align 4, !tbaa !63
  %indvars.iv.next201.2 = add nuw nsw i64 %indvars.iv200, 3 ; 2 uses
  %i.bm = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 36
  store i32 %i.t, ptr %i.bn, align 4, !tbaa !126
  %i.bo = getelementptr i8, ptr %i.bm, i64 40
  %i.bp = trunc nuw nsw i64 %indvars.iv.next201.2 to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !62
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next201.2
  %i.br = load float, ptr %i.bq, align 4, !tbaa !42
  %i.bs = getelementptr i8, ptr %i.bm, i64 44
  store float %i.br, ptr %i.bs, align 4, !tbaa !63
  %indvars.iv.next201.3 = add nuw nsw i64 %indvars.iv200, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next201.3, %wide.trip.count208
  br i1 %exitcond.not.3, label %.loopexit168.loopexit, label %scalar.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %.loopexit168, %bb.a
  %.089.lcssa = phi i32 [ 0, %bb.a ], [ %.190.lcssa, %.loopexit168 ]
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
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.g ], [ %i.bt, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bv = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %._crit_edge
  %.idx = mul nsw i64 %i.f, 12
  %i.ca = getelementptr inbounds i8, ptr %i.g, i64 %.idx ; 3 uses
  %.off = add i32 %.fr194, 1
  %.not.i.i = icmp ult i32 %.off, 3
  br i1 %.not.i.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = ptrtoint ptr %i.g to i64
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = xor i64 %i.cd, 126
  tail call void @_ZSt16__introsort_loopIP6t_distlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef %i.g, ptr noundef %i.ca, i64 noundef %i.ce, ptr nonnull @_ZL13rms_dist_compRK6t_distS1_)
  %i.cf = icmp sgt i32 %.fr194, 33
  br i1 %i.cf, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %scevgep.i = getelementptr i8, ptr %i.g, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.k
  %.020.i.idx.i = phi i64 [ 12, %bb.k ], [ %.020.i.add.i, %bb.q ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.g, %bb.k ], [ %.020.i.ptr.i, %bb.q ] ; 3 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.020.i.idx.i ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIP9t_clustidlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_:bb.a

bb.r:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %.1.i.i, align 4, !tbaa !54
  %i.bq = load i64, ptr %.114.i.i, align 4, !tbaa !54
  store i64 %i.bq, ptr %.1.i.i, align 4, !tbaa !54
  store i64 %i.bp, ptr %.114.i.i, align 4, !tbaa !54
  br label %_ZSt22__move_median_to_firstIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !147

_ZSt27__unguarded_partition_pivotIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEET_SA_SA_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIP9t_clustidlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.as, ptr %3)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 128
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_T0_.exit, !llvm.loop !139

_ZSt14__partial_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEET_SA_SA_T0_.exit, %_ZSt10__pop_heapIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %struct.t_clustid, align 8          ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.p, align 4, !tbaa !54 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !55 ; 2 uses
  %i.q = icmp slt i64 %.015.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.v), !inline_history !148
  %i.x = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.w, i64 %i.x, i64 %i.s ; 6 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  %i.aa = load i64, ptr %i.y, align 4, !tbaa !54
  store i64 %i.aa, ptr %i.z, align 4, !tbaa !54
  %i.ab = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !8

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload.us, ptr %3, align 8
  %i.ac = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.ae = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !149
  br i1 %i.ae, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.ag = load i64, ptr %i.ad, align 4, !tbaa !54
  store i64 %i.ag, ptr %i.af, align 4, !tbaa !54
  %i.ah = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !9

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8, !tbaa !54
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us

_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ai = phi i64 [ %.sroa.02.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.02.0.copyload.us, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.015.us, %._crit_edge.i.us.thread ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ai, ptr %i.aj, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ak = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !150

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit
  %.015 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.al, align 4, !tbaa !54 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !55 ; 2 uses
  %i.am = icmp slt i64 %.015, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.an = shl i64 %.031.i, 1                      ; 3 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %i.ar), !inline_history !148
  %i.at = or disjoint i64 %i.an, 1
  %spec.select.i = select i1 %i.as, i64 %i.at, i64 %i.ao ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  %i.aw = load i64, ptr %i.au, align 4, !tbaa !54
  store i64 %i.aw, ptr %i.av, align 4, !tbaa !54
  %i.ax = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = load i64, ptr %i.n, align 4, !tbaa !54
  store i64 %i.az, ptr %i.o, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload, ptr %3, align 8
  %i.ba = icmp sgt i64 %.1.i, %.015
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.bc = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.bb, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !149
  br i1 %i.bc, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.be = load i64, ptr %i.bb, align 4, !tbaa !54
  store i64 %i.be, ptr %i.bd, align 4, !tbaa !54
  %i.bf = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bf, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !9

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8, !tbaa !54
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit

_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bg = phi i64 [ %.sroa.02.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bh, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bi = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !150

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit, %bb.a
  ret void
}

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z14jarvis_patrickiPPfiifP10t_clusters(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.t_dist, align 4             ; 4 uses
  %7 = alloca %struct.t_dist, align 4             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = fcmp olt float %4, 0.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+04, float %4 ; 2 uses
  %i.c = sext i32 %0 to i64                       ; 9 uses
  %i.d = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 352, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) ; 8 uses
  %i.e = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27, i32 noundef 353, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 12) ; 29 uses
  %i.f = icmp sgt i32 %0, 0                       ; 6 uses
  br i1 %i.f, label %.preheader274.lr.ph, label %._crit_edge293

.preheader274.lr.ph:                              ; preds = %bb.a
  %.idx266 = mul nuw nsw i64 %i.c, 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx266 ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  %i.l = icmp samesign ugt i32 %0, 16
  %.017.i18.i = getelementptr i8, ptr %i.e, i64 12 ; 2 uses
  %.not18.i.i = icmp eq i32 %0, 1
  %i.m = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.o = icmp sgt i32 %2, 0
  %i.p = add nuw nsw i32 %2, 1
  %i.q = zext nneg i32 %i.p to i64
  %wide.trip.count350 = zext nneg i32 %0 to i64   ; 9 uses
  %i.r = mul nuw nsw i64 %wide.trip.count350, 12
  %scevgep438 = getelementptr i8, ptr %i.e, i64 %i.r
  %8 = shl nuw nsw i64 %wide.trip.count350, 2
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i64 %wide.trip.count350, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count350
  %xtraiter = and i64 %wide.trip.count350, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %.preheader274.lr.ph
  %indvars.iv347 = phi i64 [ 0, %.preheader274.lr.ph ], [ %indvars.iv.next348, %.critedge ] ; 9 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv347
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 12 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep439 = getelementptr i8, ptr %i.t, i64 %8
  %bound0 = icmp ult ptr %i.m, %scevgep439
  %bound1 = icmp ult ptr %i.t, %scevgep438
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.memcheck ] ; 2 uses
  %vec.ind440 = phi <8 x i32> [ %vec.ind.next443, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.memcheck ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.e, <8 x i64> %vec.ind ; 2 uses
  %wide.gep441 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %vec.ind440, <8 x ptr> align 4 %wide.gep441, <8 x i1> splat (i1 true)), !tbaa !62
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index
  %wide.load = load <8 x float>, ptr %i.u, align 4, !tbaa !42, !alias.scope !177
  %wide.gep442 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep442, <8 x i1> splat (i1 true)), !tbaa !63, !alias.scope !178, !noalias !177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next443 = add <8 x i32> %vec.ind440, splat (i32 8)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.prol ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = trunc nuw nsw i64 %indvars.iv.prol to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !62
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.prol
  %i.aa = load float, ptr %i.z, align 4, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store float %i.aa, ptr %i.ab, align 4, !tbaa !63
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !155

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count350
  %i.ad = icmp ugt i64 %i.ac, -8
  br i1 %i.ad, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 11 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !62
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.ai, ptr %i.aj, align 4, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.am, ptr %i.al, align 4, !tbaa !62
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.ao = load float, ptr %i.an, align 4, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !62
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.1
  %i.au = load float, ptr %i.at, align 4, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !63
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !62
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.2
  %i.ba = load float, ptr %i.az, align 4, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store float %i.ba, ptr %i.bb, align 4, !tbaa !63
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !62
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.3
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %i.bg, ptr %i.bh, align 4, !tbaa !63
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 3 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !62
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bm, ptr %i.bn, align 4, !tbaa !63
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 3 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.5 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !62
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.5
  %i.bs = load float, ptr %i.br, align 4, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %i.bs, ptr %i.bt, align 4, !tbaa !63
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 3 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.6 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !62
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.6
  %i.by = load float, ptr %i.bx, align 4, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float %i.by, ptr %i.bz, align 4, !tbaa !63
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count350
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !156

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  tail call void @_ZSt16__introsort_loopIP6t_distlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i64 noundef %i.k, ptr nonnull @_ZL13rms_dist_compRK6t_distS1_)
  br i1 %i.l, label %.preheader, label %bb.g

.preheader:                                       ; preds = %._crit_edge, %bb.f
  %.020.i.idx.i = phi i64 [ %.020.i.add.i, %bb.f ], [ 12, %._crit_edge ] ; 4 uses
  %.pn19.i.i = phi ptr [ %.020.i.ptr.i, %bb.f ], [ %i.e, %._crit_edge ] ; 3 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.020.i.idx.i ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !63 ; 4 uses
  %i.cc = load float, ptr %i.m, align 4, !tbaa !63
  %i.cd = fcmp olt float %i.cb, %i.cc
  br i1 %i.cd, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %.020.i.ptr.i, i64 12, i1 false), !tbaa.struct !64
  %i.ce = icmp samesign ugt i64 %.020.i.idx.i, 12
  br i1 %i.ce, label %bb.c, label %bb.d, !prof !65

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.017.i18.i, ptr noundef nonnull align 4 dereferenceable(1) %i.e, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !64
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.cg = load i64, ptr %.020.i.ptr.i, align 4, !tbaa !54
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !63
  %i.cj = fcmp olt float %i.cb, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn19.i.i, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.ptr.i, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, i64 12, i1 false), !tbaa.struct !64
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -12
  %i.ck = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !63
  %i.cm = fcmp olt float %i.cb, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, !llvm.loop !0

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.e
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %bb.e ], [ %.012.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %i.cg, ptr %.09.lcssa.i.i.i, align 4, !tbaa !54
  %.sroa.4.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store float %i.cb, ptr %.sroa.4.0..09.lcssa.i.i.i.sroa_idx, align 4, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 12 ; 2 uses
  %.not.i.i195 = icmp eq i64 %.020.i.add.i, 192
  br i1 %.not.i.i195, label %.lr.ph.i.i, label %.preheader, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.cu, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ], [ %i.n, %bb.f ] ; 6 uses
  %i.cn = load i64, ptr %.08.i.i, align 4, !tbaa !54
  %.sroa.4250.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.4250.0.copyload = load float, ptr %.sroa.4250.0..08.i.i.sroa_idx, align 4, !tbaa !42 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.08.i.i, i64 -4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !63
  %i.cq = fcmp olt float %.sroa.4250.0.copyload, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i

end_hunk_1
