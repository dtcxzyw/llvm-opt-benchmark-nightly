inline.NumInlined: 558
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare noundef i32 @_ZN3gmx5log2IEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert1 = zext nneg i32 %i.b to i64
  %.phi.trans.insert2 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert1
  %.pre = load i64, ptr %.phi.trans.insert2, align 8, !tbaa !13
  %i.d = add nuw nsw i32 %i.b, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
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
  %indvars.iv203 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next204, %.loopexit166 ] ; 6 uses
  %indvars.iv196 = phi i64 [ 1, %.lr.ph171 ], [ %indvars.iv.next197, %.loopexit166 ] ; 6 uses
  %.089170 = phi i32 [ 0, %.lr.ph171 ], [ %.190.lcssa, %.loopexit166 ] ; 2 uses
  %i.p = xor i64 %indvars.iv203, -1
  %i.q = add nsw i64 %i.p, %wide.trip.count206    ; 3 uses
  %i.r = mul nsw i64 %indvars.iv203, -12
  %scevgep251 = getelementptr i8, ptr %i.n, i64 %i.r
  %i.s = shl nuw nsw i64 %indvars.iv203, 2
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
  %scevgep253 = getelementptr nuw i8, ptr %i.aa, i64 4
  %scevgep254 = getelementptr i8, ptr %i.w, i64 %i.l
  %bound0 = icmp ult ptr %scevgep250, %scevgep254
  %bound1 = icmp ult ptr %scevgep253, %scevgep252
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
  %i.cm = load float, ptr %i.cj, align 4, !tbaa !93
  %i.cn = fcmp olt float %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %.020.i.ptr.i, i64 12, i1 false), !tbaa.struct !96
  %i.co = icmp samesign ugt i64 %.020.i.idx.i, 12
  br i1 %i.co, label %bb.n, label %bb.o, !prof !97

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %i.g, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cp, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.cq = load i64, ptr %.020.i.ptr.i, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !93
  %i.ct = fcmp olt float %i.cl, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn19.i.i, %bb.p ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.ptr.i, %bb.p ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -12
  %i.cu = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !93
  %i.cw = fcmp olt float %i.cl, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.p
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %bb.p ], [ %.012.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %i.cq, ptr %.09.lcssa.i.i.i, align 4
  %.sroa.4.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store float %i.cl, ptr %.sroa.4.0..09.lcssa.i.i.i.sroa_idx, align 4, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 12 ; 2 uses
  %.not.i.i103 = icmp eq i64 %.020.i.add.i, 192
  br i1 %.not.i.i103, label %.lr.ph.i.i.preheader, label %bb.l, !llvm.loop !99

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 4 uses
  %i.cy = add nsw i64 %.idx, -204                 ; 2 uses
  %i.cz = udiv i64 %i.cy, 12
  %i.da = and i64 %i.cz, 1
  %lcmp.mod262.not.not = icmp eq i64 %i.da, 0
  br i1 %lcmp.mod262.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.db = load i64, ptr %i.cx, align 4
  %.sroa.4145.0..08.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.4145.0.copyload.prol = load float, ptr %.sroa.4145.0..08.i.i.sroa_idx.prol, align 4, !tbaa !31 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !93
  %i.de = fcmp olt float %.sroa.4145.0.copyload.prol, %i.dd
  br i1 %i.de, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol

.lr.ph.i.i14.i.prol:                              ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i14.i.prol
  %.0911.i.i16.i.prol = phi ptr [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ], [ %i.cx, %.lr.ph.i.i.prol ] ; 3 uses
  %.012.i.i15.i.prol = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.prol, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.prol, i64 12, i1 false), !tbaa.struct !96
  %i.df = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -16
  %i.dg = load float, ptr %i.df, align 4, !tbaa !93
  %i.dh = fcmp olt float %.sroa.4145.0.copyload.prol, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol: ; preds = %.lr.ph.i.i14.i.prol, %.lr.ph.i.i.prol
  %.09.lcssa.i.i12.i.prol = phi ptr [ %i.cx, %.lr.ph.i.i.prol ], [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ] ; 2 uses
  store i64 %i.db, ptr %.09.lcssa.i.i12.i.prol, align 4
  %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.prol, i64 8
  store float %.sroa.4145.0.copyload.prol, ptr %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.prol, align 4, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %i.cx, %.lr.ph.i.i.preheader ], [ %i.di, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol ]
  %i.dj = icmp ult i64 %i.cy, 12
  br i1 %i.dj, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %.08.i.i = phi ptr [ %i.dz, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1 ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.dk = load i64, ptr %.08.i.i, align 4
  %.sroa.4145.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.4145.0.copyload = load float, ptr %.sroa.4145.0..08.i.i.sroa_idx, align 4, !tbaa !31 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %.08.i.i, i64 -4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !93
  %i.dn = fcmp olt float %.sroa.4145.0.copyload, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i14.i
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %.lr.ph.i.i14.i ], [ %.08.i.i, %.lr.ph.i.i ] ; 3 uses
  %.012.i.i15.i = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i, i64 12, i1 false), !tbaa.struct !96
  %i.do = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -16
  %i.dp = load float, ptr %i.do, align 4, !tbaa !93
  %i.dq = fcmp olt float %.sroa.4145.0.copyload, %i.dp
  br i1 %i.dq, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i.i
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %.lr.ph.i.i ], [ %.012.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store i64 %i.dk, ptr %.09.lcssa.i.i12.i, align 4
  %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store float %.sroa.4145.0.copyload, ptr %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx, align 4, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 12 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 4
  %.sroa.4145.0..08.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 20
  %.sroa.4145.0.copyload.1 = load float, ptr %.sroa.4145.0..08.i.i.sroa_idx.1, align 4, !tbaa !31 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !93
  %i.dv = fcmp olt float %.sroa.4145.0.copyload.1, %i.du
  br i1 %i.dv, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1

.lr.ph.i.i14.i.1:                                 ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, %.lr.ph.i.i14.i.1
  %.0911.i.i16.i.1 = phi ptr [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ], [ %i.dr, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ] ; 3 uses
  %.012.i.i15.i.1 = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.1, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.1, i64 12, i1 false), !tbaa.struct !96
  %i.dw = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -16
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !93
  %i.dy = fcmp olt float %.sroa.4145.0.copyload.1, %i.dx
  br i1 %i.dy, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1: ; preds = %.lr.ph.i.i14.i.1, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i
  %.09.lcssa.i.i12.i.1 = phi ptr [ %i.dr, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ], [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ] ; 2 uses
  store i64 %i.ds, ptr %.09.lcssa.i.i12.i.1, align 4
  %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.1, i64 8
  store float %.sroa.4145.0.copyload.1, ptr %.sroa.4145.0..09.lcssa.i.i12.i.sroa_idx.1, align 4, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i.1 = icmp eq ptr %i.dz, %i.cd
  br i1 %.not.i13.i.1, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i, !llvm.loop !100

bb.r:                                             ; preds = %bb.j
  %i.ea = and i32 %.fr192, -2
  %.not18.i.i = icmp eq i32 %i.ea, 2
  br i1 %.not18.i.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.r
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.x
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.x ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 8 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.x ], [ %i.g, %.lr.ph.i19.i.preheader ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !93 ; 4 uses
  %i.ee = load float, ptr %i.eb, align 4, !tbaa !93
  %i.ef = fcmp olt float %i.ed, %i.ee
  br i1 %i.ef, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph.i19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.020.i20.i, i64 12, i1 false), !tbaa.struct !96
  %i.eg = ptrtoint ptr %.020.i20.i to i64
  %i.eh = sub i64 %i.eg, %i.ce                    ; 4 uses
  %i.ei = icmp sgt i64 %i.eh, 12
  br i1 %i.ei, label %bb.t, label %bb.u, !prof !97

bb.t:                                             ; preds = %bb.s
  %8 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  %.neg25.i31.i = udiv exact i64 %i.eh, 12
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %9 = getelementptr inbounds [12 x i8], ptr %8, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %9, ptr noundef nonnull align 4 dereferenceable(1) %i.g, i64 %i.eh, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.u:                                             ; preds = %bb.s
  %i.ej = icmp eq i64 %i.eh, 12
  br i1 %i.ej, label %bb.v, label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ek, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i19.i
  %i.el = load i64, ptr %.020.i20.i, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %i.en = load float, ptr %i.em, align 4, !tbaa !93
  %i.eo = fcmp olt float %i.ed, %i.en
  br i1 %i.eo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.w, %.lr.ph.i.i26.i
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn19.i21.i, %bb.w ] ; 5 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %.lr.ph.i.i26.i ], [ %.020.i20.i, %bb.w ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i28.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i27.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -12
  %i.ep = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !93
  %i.er = fcmp olt float %i.ed, %i.eq
  br i1 %i.er, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.w
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %bb.w ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ] ; 2 uses
  store i64 %i.el, ptr %.09.lcssa.i.i23.i, align 4
  %.sroa.4149.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store float %i.ed, ptr %.sroa.4149.0..09.lcssa.i.i23.i.sroa_idx, align 4, !tbaa !31
  br label %bb.x

bb.x:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 12 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.cd
  br i1 %.not.i25.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !99

_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit:    ; preds = %bb.x, %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, %bb.r, %bb.i
  %i.es = tail call noundef ptr @_Z11new_clustidi(i32 noundef %i.b) ; 42 uses
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.eu = tail call i64 @fwrite(ptr nonnull @.str.30, i64 19, i64 1, ptr %i.et) #24 ; 0 uses
  %i.ev = icmp sgt i32 %.fr192, 1
  br i1 %i.ev, label %.lr.ph176.us.preheader, label %.critedge

.lr.ph176.us.preheader:                           ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %wide.trip.count210 = zext nneg i32 %i.e to i64
  br label %.lr.ph176.us

.lr.ph176.us:                                     ; preds = %.lr.ph176.us.preheader, %.critedge.us
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !27
  %fputc.us = tail call i32 @fputc(i32 42, ptr %i.ew) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph176.us, %bb.ad
  %indvars.iv208 = phi i64 [ 0, %.lr.ph176.us ], [ %indvars.iv.next209, %bb.ad ] ; 2 uses
  %.085174.us = phi i1 [ false, %.lr.ph176.us ], [ %.186.us, %bb.ad ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv208 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !93
  %i.fa = fcmp olt float %i.ez, %1
  br i1 %i.fa, label %bb.z, label %.critedge.us

bb.z:                                             ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !92
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !101 ; 3 uses
  %i.fh = load i32, ptr %i.ex, align 4, !tbaa !90
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !101 ; 3 uses
  %.not99.us = icmp eq i32 %i.fg, %i.fl
  br i1 %.not99.us, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = icmp sgt i32 %i.fg, %i.fl
  br i1 %i.fm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.fg, ptr %i.fk, align 4, !tbaa !101
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.fl, ptr %i.ff, align 4, !tbaa !101
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.186.us = phi i1 [ true, %bb.ac ], [ true, %bb.ab ], [ %.085174.us, %bb.z ] ; 2 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count210
  br i1 %exitcond211.not, label %.critedge.us, label %bb.y, !llvm.loop !103

.critedge.us:                                     ; preds = %bb.ad, %bb.y
  %.085.lcssa.us = phi i1 [ %.085174.us, %bb.y ], [ %.186.us, %bb.ad ]
  br i1 %.085.lcssa.us, label %.lr.ph176.us, label %.split.us, !llvm.loop !104

.critedge:                                        ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !27
  %fputc = tail call i32 @fputc(i32 42, ptr %i.fn) ; 0 uses
  br label %.split.us

.split.us:                                        ; preds = %.critedge.us, %.critedge
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.fp = tail call i64 @fwrite(ptr nonnull @.str.32, i64 34, i64 1, ptr %i.fo) #24 ; 0 uses
  %i.fq = sext i32 %i.b to i64                    ; 2 uses
  %.idx163 = shl nsw i64 %i.fq, 3                 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.es, i64 %.idx163 ; 3 uses
  %.not.i.i102 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i102, label %.loopexit.thread244, label %bb.ae

.loopexit.thread244:                              ; preds = %.split.us
  %i.fs = getelementptr i8, ptr %i.es, i64 4
  store i32 1, ptr %i.fs, align 4, !tbaa !101
  store i32 1, ptr %2, align 8, !tbaa !105
  br label %._crit_edge191

bb.ae:                                            ; preds = %.split.us
  %i.ft = ptrtoint ptr %i.es to i64
  %i.fu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fq, i1 true)
  %i.fv = shl nuw nsw i64 %i.fu, 1
  %i.fw = xor i64 %i.fv, 126
  tail call void @_ZSt16__introsort_loopIP9t_clustidlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef %i.es, ptr noundef nonnull %i.fr, i64 noundef %i.fw, ptr nonnull @_ZL13clust_id_compRK9t_clustidS1_)
  %i.fx = icmp sgt i32 %i.b, 16
  br i1 %i.fx, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %scevgep.i117 = getelementptr i8, ptr %i.es, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i, %bb.af
  %.020.i.idx.i118 = phi i64 [ 8, %bb.af ], [ %.020.i.add.i122, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i ] ; 4 uses
  %.pn19.i.i119 = phi ptr [ %i.es, %bb.af ], [ %.020.i.ptr.i120, %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i ] ; 3 uses
  %.020.i.ptr.i120 = getelementptr inbounds nuw i8, ptr %i.es, i64 %.020.i.idx.i118 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i120, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !101
  %i.gb = load i32, ptr %i.fy, align 4, !tbaa !101
  %i.gc = icmp slt i32 %i.ga, %i.gb
  %i.gd = load i64, ptr %.020.i.ptr.i120, align 4 ; 2 uses
  br i1 %i.gc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ge = icmp samesign ugt i64 %.020.i.idx.i118, 8
  br i1 %i.ge, label %bb.ai, label %bb.aj, !prof !97

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i117, ptr noundef nonnull align 4 dereferenceable(1) %i.es, i64 %.020.i.idx.i118, i1 false)
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn19.i.i119, i64 8
  %i.gg = load i64, ptr %i.es, align 4
  store i64 %i.gg, ptr %i.gf, align 4
  br label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i

bb.ak:                                            ; preds = %bb.ag
  %.sroa.4153.0.extract.shift = lshr i64 %i.gd, 32
  %.sroa.4153.0.extract.trunc = trunc nuw i64 %.sroa.4153.0.extract.shift to i32 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn19.i.i119, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !101
  %i.gj = icmp sgt i32 %i.gi, %.sroa.4153.0.extract.trunc
  br i1 %i.gj, label %.lr.ph.i.i.i134, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i

.lr.ph.i.i.i134:                                  ; preds = %bb.ak, %.lr.ph.i.i.i134
  %.012.i.i.i135 = phi ptr [ %.0.i.i.i137, %.lr.ph.i.i.i134 ], [ %.pn19.i.i119, %bb.ak ] ; 5 uses
  %.0911.i.i.i136 = phi ptr [ %.012.i.i.i135, %.lr.ph.i.i.i134 ], [ %.020.i.ptr.i120, %bb.ak ]
  %i.gk = load i64, ptr %.012.i.i.i135, align 4
  store i64 %i.gk, ptr %.0911.i.i.i136, align 4
  %.0.i.i.i137 = getelementptr inbounds i8, ptr %.012.i.i.i135, i64 -8
  %i.gl = getelementptr inbounds i8, ptr %.012.i.i.i135, i64 -4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !101
  %i.gn = icmp sgt i32 %i.gm, %.sroa.4153.0.extract.trunc
  br i1 %i.gn, label %.lr.ph.i.i.i134, label %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i, !llvm.loop !107

_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i: ; preds = %.lr.ph.i.i.i134, %bb.ak, %bb.ai, %bb.aj
  %.09.lcssa.i.i.i121.sink = phi ptr [ %i.es, %bb.ai ], [ %i.es, %bb.aj ], [ %.020.i.ptr.i120, %bb.ak ], [ %.012.i.i.i135, %.lr.ph.i.i.i134 ]
  store i64 %i.gd, ptr %.09.lcssa.i.i.i121.sink, align 4
  %.020.i.add.i122 = add nuw nsw i64 %.020.i.idx.i118, 8 ; 2 uses
  %.not.i.i123 = icmp eq i64 %.020.i.add.i122, 128
  br i1 %.not.i.i123, label %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i, label %bb.ag, !llvm.loop !108

_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i: ; preds = %_ZSt13move_backwardIP9t_clustidS1_ET0_T_S3_S2_.exit.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.es, i64 128 ; 4 uses
  %i.gp = add nsw i64 %.idx163, -136              ; 2 uses
  %i.gq = and i64 %i.gp, 8
  %lcmp.mod265.not.not = icmp eq i64 %i.gq, 0
  br i1 %lcmp.mod265.not.not, label %.lr.ph.i.i125.prol, label %.lr.ph.i.i125.prol.loopexit

.lr.ph.i.i125.prol:                               ; preds = %_ZSt16__insertion_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_.exit.i
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIP9t_clustidlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_:bb.a
  %i.bt = icmp sgt i64 %i.bs, 128
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIP9t_clustidN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_SA_T0_.exit, !llvm.loop !131

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
  %.sroa.02.0.copyload.us = load i64, ptr %i.p, align 4 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !62 ; 2 uses
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
  %i.w = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.v), !inline_history !142
  %i.x = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.w, i64 %i.x, i64 %i.s ; 6 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  %i.aa = load i64, ptr %i.y, align 4
  store i64 %i.aa, ptr %i.z, align 4
  %i.ab = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !133

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
  %i.ae = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !143
  br i1 %i.ae, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.ag = load i64, ptr %i.ad, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !135

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us

_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ai = phi i64 [ %.sroa.02.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.02.0.copyload.us, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.015.us, %._crit_edge.i.us.thread ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ai, ptr %i.aj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ak = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !144

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit
  %.015 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.al, align 4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !62 ; 2 uses
  %i.am = icmp slt i64 %.015, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.an = shl i64 %.031.i, 1                      ; 3 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %i.ar), !inline_history !142
  %i.at = or disjoint i64 %i.an, 1
  %spec.select.i = select i1 %i.as, i64 %i.at, i64 %i.ao ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  %i.aw = load i64, ptr %i.au, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %i.ax = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ay = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.az = load i64, ptr %i.n, align 4
  store i64 %i.az, ptr %i.o, align 4
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
  %i.bc = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.bb, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !143
  br i1 %i.bc, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.be = load i64, ptr %i.bb, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bf, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !135

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit

_ZSt13__adjust_heapIP9t_clustidlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_T0_SB_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bg = phi i64 [ %.sroa.02.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bi = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !144

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
  %.0177 = select i1 %i.b, float 1.000000e+04, float %4 ; 2 uses
  %i.c = sext i32 %0 to i64                       ; 9 uses
  %i.d = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27, i32 noundef 352, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) ; 8 uses
  %i.e = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27, i32 noundef 353, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 12) ; 32 uses
  %i.f = icmp sgt i32 %0, 0                       ; 6 uses
  br i1 %i.f, label %.preheader273.lr.ph, label %._crit_edge292

.preheader273.lr.ph:                              ; preds = %bb.a
  %.idx265 = mul nuw nsw i64 %i.c, 12             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx265 ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  %i.l = icmp samesign ugt i32 %0, 16
  %.017.i18.i = getelementptr i8, ptr %i.e, i64 12 ; 2 uses
  %.not18.i.i = icmp eq i32 %0, 1
  %i.m = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 4 uses
  %i.o = icmp sgt i32 %2, 0
  %i.p = add nuw nsw i32 %2, 1
  %i.q = zext nneg i32 %i.p to i64
  %wide.trip.count349 = zext nneg i32 %0 to i64   ; 9 uses
  %i.r = mul nuw nsw i64 %wide.trip.count349, 12
  %scevgep433 = getelementptr i8, ptr %i.e, i64 %i.r
  %i.s = shl nuw nsw i64 %wide.trip.count349, 2
  %i.t = add nsw i64 %.idx265, -204               ; 2 uses
  %i.u = udiv i64 %i.t, 12
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i64 %wide.trip.count349, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count349
  %xtraiter = and i64 %wide.trip.count349, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.v = and i64 %i.u, 1
  %lcmp.mod442.not.not = icmp eq i64 %i.v, 0
  %.sroa.4249.0..08.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 188
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 204
  %i.y = icmp ult i64 %i.t, 12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %.preheader273.lr.ph
  %indvars.iv346 = phi i64 [ 0, %.preheader273.lr.ph ], [ %indvars.iv.next347, %.critedge ] ; 9 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv346
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 12 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep434 = getelementptr i8, ptr %i.aa, i64 %i.s
  %bound0 = icmp ult ptr %i.m, %scevgep434
  %bound1 = icmp ult ptr %i.aa, %scevgep433
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.memcheck ] ; 2 uses
  %vec.ind435 = phi <8 x i32> [ %vec.ind.next438, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.memcheck ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.e, <8 x i64> %vec.ind ; 2 uses
  %wide.gep436 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %vec.ind435, <8 x ptr> align 4 %wide.gep436, <8 x i1> splat (i1 true)), !tbaa !92
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index
  %wide.load = load <8 x float>, ptr %i.ab, align 4, !tbaa !31, !alias.scope !145
  %wide.gep437 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep437, <8 x i1> splat (i1 true)), !tbaa !93, !alias.scope !148, !noalias !145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next438 = add <8 x i32> %vec.ind435, splat (i32 8)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.prol ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = trunc nuw nsw i64 %indvars.iv.prol to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !92
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.prol
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store float %i.ah, ptr %i.ai, align 4, !tbaa !93
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !151

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count349
  %i.ak = icmp ugt i64 %i.aj, -8
  br i1 %i.ak, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 11 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !92
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.at, ptr %i.as, align 4, !tbaa !92
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.av = load float, ptr %i.au, align 4, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store float %i.av, ptr %i.aw, align 4, !tbaa !93
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !92
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.1
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store float %i.bb, ptr %i.bc, align 4, !tbaa !93
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !92
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store float %i.bh, ptr %i.bi, align 4, !tbaa !93
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.3 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !92
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.3
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store float %i.bn, ptr %i.bo, align 4, !tbaa !93
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 3 uses
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !92
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float %i.bt, ptr %i.bu, align 4, !tbaa !93
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 3 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.5 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !92
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.5
  %i.bz = load float, ptr %i.by, align 4, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !93
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 3 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next.6 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !92
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.6
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.cf, ptr %i.cg, align 4, !tbaa !93
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count349
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  tail call void @_ZSt16__introsort_loopIP6t_distlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS0_S6_EEEEvT_SA_T0_T1_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i64 noundef %i.k, ptr nonnull @_ZL13rms_dist_compRK6t_distS1_)
  br i1 %i.l, label %.preheader, label %bb.g

.preheader:                                       ; preds = %._crit_edge, %bb.f
  %.020.i.idx.i = phi i64 [ %.020.i.add.i, %bb.f ], [ 12, %._crit_edge ] ; 4 uses
  %.pn19.i.i = phi ptr [ %.020.i.ptr.i, %bb.f ], [ %i.e, %._crit_edge ] ; 3 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.020.i.idx.i ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !93 ; 4 uses
  %i.cj = load float, ptr %i.m, align 4, !tbaa !93
  %i.ck = fcmp olt float %i.ci, %i.cj
  br i1 %i.ck, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %.020.i.ptr.i, i64 12, i1 false), !tbaa.struct !96
  %i.cl = icmp samesign ugt i64 %.020.i.idx.i, 12
  br i1 %i.cl, label %bb.c, label %bb.d, !prof !97

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.017.i18.i, ptr noundef nonnull align 4 dereferenceable(1) %i.e, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.cn = load i64, ptr %.020.i.ptr.i, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !93
  %i.cq = fcmp olt float %i.ci, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn19.i.i, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.ptr.i, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -12
  %i.cr = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !93
  %i.ct = fcmp olt float %i.ci, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.e
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %bb.e ], [ %.012.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %i.cn, ptr %.09.lcssa.i.i.i, align 4
  %.sroa.4.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store float %i.ci, ptr %.sroa.4.0..09.lcssa.i.i.i.sroa_idx, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 12 ; 2 uses
  %.not.i.i194 = icmp eq i64 %.020.i.add.i, 192
  br i1 %.not.i.i194, label %.lr.ph.i.i.preheader, label %.preheader, !llvm.loop !99

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  br i1 %lcmp.mod442.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.cu = load i64, ptr %i.n, align 4
  %.sroa.4249.0.copyload.prol = load float, ptr %.sroa.4249.0..08.i.i.sroa_idx.prol, align 4, !tbaa !31 ; 3 uses
  %i.cv = load float, ptr %i.w, align 4, !tbaa !93
  %i.cw = fcmp olt float %.sroa.4249.0.copyload.prol, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol

.lr.ph.i.i14.i.prol:                              ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i14.i.prol
  %.0911.i.i16.i.prol = phi ptr [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ], [ %i.n, %.lr.ph.i.i.prol ] ; 3 uses
  %.012.i.i15.i.prol = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.prol, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.prol, i64 12, i1 false), !tbaa.struct !96
  %i.cx = getelementptr inbounds i8, ptr %.0911.i.i16.i.prol, i64 -16
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !93
  %i.cz = fcmp olt float %.sroa.4249.0.copyload.prol, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i14.i.prol, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol: ; preds = %.lr.ph.i.i14.i.prol, %.lr.ph.i.i.prol
  %.09.lcssa.i.i12.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %.012.i.i15.i.prol, %.lr.ph.i.i14.i.prol ] ; 2 uses
  store i64 %i.cu, ptr %.09.lcssa.i.i12.i.prol, align 4
  %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.prol, i64 8
  store float %.sroa.4249.0.copyload.prol, ptr %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.prol, align 4, !tbaa !31
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol, %.lr.ph.i.i.preheader
  %.08.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.prol ]
  br i1 %i.y, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1
  %.08.i.i = phi ptr [ %i.dp, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1 ], [ %.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.da = load i64, ptr %.08.i.i, align 4
  %.sroa.4249.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %.sroa.4249.0.copyload = load float, ptr %.sroa.4249.0..08.i.i.sroa_idx, align 4, !tbaa !31 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.08.i.i, i64 -4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !93
  %i.dd = fcmp olt float %.sroa.4249.0.copyload, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i14.i
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %.lr.ph.i.i14.i ], [ %.08.i.i, %.lr.ph.i.i ] ; 3 uses
  %.012.i.i15.i = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i, i64 12, i1 false), !tbaa.struct !96
  %i.de = getelementptr inbounds i8, ptr %.0911.i.i16.i, i64 -16
  %i.df = load float, ptr %i.de, align 4, !tbaa !93
  %i.dg = fcmp olt float %.sroa.4249.0.copyload, %i.df
  br i1 %i.dg, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i.i
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %.lr.ph.i.i ], [ %.012.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store i64 %i.da, ptr %.09.lcssa.i.i12.i, align 4
  %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store float %.sroa.4249.0.copyload, ptr %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx, align 4, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 12 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 4
  %.sroa.4249.0..08.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 20
  %.sroa.4249.0.copyload.1 = load float, ptr %.sroa.4249.0..08.i.i.sroa_idx.1, align 4, !tbaa !31 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !93
  %i.dl = fcmp olt float %.sroa.4249.0.copyload.1, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1

.lr.ph.i.i14.i.1:                                 ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i, %.lr.ph.i.i14.i.1
  %.0911.i.i16.i.1 = phi ptr [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ], [ %i.dh, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ] ; 3 uses
  %.012.i.i15.i.1 = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i16.i.1, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i15.i.1, i64 12, i1 false), !tbaa.struct !96
  %i.dm = getelementptr inbounds i8, ptr %.0911.i.i16.i.1, i64 -16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !93
  %i.do = fcmp olt float %.sroa.4249.0.copyload.1, %i.dn
  br i1 %i.do, label %.lr.ph.i.i14.i.1, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1: ; preds = %.lr.ph.i.i14.i.1, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i
  %.09.lcssa.i.i12.i.1 = phi ptr [ %i.dh, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i ], [ %.012.i.i15.i.1, %.lr.ph.i.i14.i.1 ] ; 2 uses
  store i64 %i.di, ptr %.09.lcssa.i.i12.i.1, align 4
  %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i.1, i64 8
  store float %.sroa.4249.0.copyload.1, ptr %.sroa.4249.0..09.lcssa.i.i12.i.sroa_idx.1, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i.1 = icmp eq ptr %i.dp, %i.g
  br i1 %.not.i13.i.1, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i.i, !llvm.loop !100

bb.g:                                             ; preds = %._crit_edge
  br i1 %.not18.i.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.g, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %bb.g ] ; 8 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.e, %bb.g ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !93 ; 4 uses
  %i.ds = load float, ptr %i.m, align 4, !tbaa !93
  %i.dt = fcmp olt float %i.dr, %i.ds
  br i1 %i.dt, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %.020.i20.i, i64 12, i1 false), !tbaa.struct !96
  %i.du = ptrtoint ptr %.020.i20.i to i64
  %i.dv = sub i64 %i.du, %i.h                     ; 4 uses
  %i.dw = icmp sgt i64 %i.dv, 12
  br i1 %i.dw, label %bb.i, label %bb.j, !prof !97

bb.i:                                             ; preds = %bb.h
  %8 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  %.neg25.i31.i = udiv exact i64 %i.dv, 12
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %9 = getelementptr inbounds [12 x i8], ptr %8, i64 %.neg25.neg.i32.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %9, ptr noundef nonnull align 4 dereferenceable(1) %i.e, i64 %i.dv, i1 false)
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.j:                                             ; preds = %bb.h
  %i.dx = icmp eq i64 %i.dv, 12
  br i1 %i.dx, label %bb.k, label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

bb.k:                                             ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i

_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i19.i
  %i.dz = load i64, ptr %.020.i20.i, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !93
  %i.ec = fcmp olt float %i.dr, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.l, %.lr.ph.i.i26.i
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn19.i21.i, %bb.l ] ; 5 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %.lr.ph.i.i26.i ], [ %.020.i20.i, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i28.i, ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i27.i, i64 12, i1 false), !tbaa.struct !96
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -12
  %i.ed = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !93
  %i.ef = fcmp olt float %i.dr, %i.ee
  br i1 %i.ef, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.l
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %bb.l ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ] ; 2 uses
  store i64 %i.dz, ptr %.09.lcssa.i.i23.i, align 4
  %.sroa.4253.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store float %i.dr, ptr %.sroa.4253.0..09.lcssa.i.i23.i.sroa_idx, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIP6t_distS1_ET0_T_S3_S2_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 12 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.g
  br i1 %.not.i25.i, label %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !99

_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit:    ; preds = %bb.m, %.lr.ph.i.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIP6t_distN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS0_S6_EEEEvT_T0_.exit.i11.i.1, %bb.g
  br i1 %i.o, label %.lr.ph286, label %.lr.ph278

.lr.ph278:                                        ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv346
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv346 ; 2 uses
  br label %bb.r

.lr.ph286:                                        ; preds = %_ZSt4sortIP6t_distPFbRKS0_S3_EEvT_S6_T0_.exit
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv346
  %i.ej = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 365, i64 noundef range(i64 2, 2147483648) %i.q, i64 noundef 4) ; 4 uses
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !153
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv346
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph286, %bb.q
  %indvars.iv343 = phi i64 [ 0, %.lr.ph286 ], [ %indvars.iv.next344, %bb.q ] ; 2 uses
  %.0163284 = phi i32 [ 0, %.lr.ph286 ], [ %.1164, %bb.q ] ; 4 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv343
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !92 ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !31
  %i.es = fcmp olt float %i.er, %.0177
  br i1 %i.es, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.et = zext i32 %i.eo to i64
  %.not192 = icmp eq i64 %indvars.iv346, %i.et
  br i1 %.not192, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eu = sext i32 %.0163284 to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.eu
  store i32 %i.eo, ptr %i.ev, align 4, !tbaa !49
  %i.ew = add nsw i32 %.0163284, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.1164 = phi i32 [ %i.ew, %bb.p ], [ %.0163284, %bb.o ] ; 3 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %i.ex = icmp slt i32 %.1164, %2
  %i.ey = icmp slt i64 %indvars.iv.next344, %i.c
  %or.cond = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.n, label %.critedge, !llvm.loop !154

bb.r:                                             ; preds = %.lr.ph278, %bb.w
  %indvars.iv338 = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next339, %bb.w ] ; 2 uses
  %.0158277 = phi i32 [ 0, %.lr.ph278 ], [ %.2160, %bb.w ] ; 5 uses
  %.2165276 = phi i32 [ 0, %.lr.ph278 ], [ %.3, %bb.w ] ; 5 uses
  %i.ez = load ptr, ptr %i.eg, align 8, !tbaa !30
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv338
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !92 ; 3 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !31
  %i.fg = fcmp olt float %i.ff, %.0177
  br i1 %i.fg, label %bb.s, label %.critedge2

bb.s:                                             ; preds = %bb.r
  %i.fh = zext i32 %i.fc to i64
  %.not190 = icmp eq i64 %indvars.iv346, %i.fh
  br i1 %.not190, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not191 = icmp slt i32 %.2165276, %.0158277
  %.pre402 = load ptr, ptr %i.eh, align 8, !tbaa !153 ; 2 uses
  br i1 %.not191, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fi = add nsw i32 %.0158277, 10               ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 388, ptr noundef %.pre402, i64 noundef range(i64 -2147483647, 2147483648) %i.fj, i64 noundef 4) ; 2 uses
  store ptr %i.fk, ptr %i.eh, align 8, !tbaa !153
  %.pre = load i32, ptr %i.fb, align 4, !tbaa !92
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = phi ptr [ %i.fk, %bb.u ], [ %.pre402, %bb.t ]
  %i.fm = phi i32 [ %.pre, %bb.u ], [ %i.fc, %bb.t ]
  %.1159 = phi i32 [ %i.fi, %bb.u ], [ %.0158277, %bb.t ]
  %i.fn = sext i32 %.2165276 to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !49
  %i.fp = add nsw i32 %.2165276, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %.3 = phi i32 [ %i.fp, %bb.v ], [ %.2165276, %bb.s ] ; 2 uses
  %.2160 = phi i32 [ %.1159, %bb.v ], [ %.0158277, %bb.s ] ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count349
  br i1 %exitcond342.not, label %.critedge2, label %bb.r, !llvm.loop !155

.critedge2:                                       ; preds = %bb.r, %bb.w
  %.2165.lcssa.ph = phi i32 [ %.2165276, %bb.r ], [ %.3, %bb.w ] ; 4 uses
  %.0158.lcssa.ph = phi i32 [ %.0158277, %bb.r ], [ %.2160, %bb.w ]
  %i.fq = icmp eq i32 %.2165.lcssa.ph, %.0158.lcssa.ph
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv346 ; 3 uses
  br i1 %i.fq, label %bb.x, label %.critedge2._crit_edge

.critedge2._crit_edge:                            ; preds = %.critedge2
  %.pre403 = load ptr, ptr %i.fr, align 8, !tbaa !153
  br label %.critedge

bb.x:                                             ; preds = %.critedge2
  %i.fs = add nsw i32 %.2165.lcssa.ph, 1
  %i.ft = sext i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !153
  %i.fv = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 396, ptr noundef %i.fu, i64 noundef range(i64 -2147483647, 2147483648) %i.ft, i64 noundef 4) ; 2 uses
  store ptr %i.fv, ptr %i.fr, align 8, !tbaa !153
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.n, %bb.x, %.critedge2._crit_edge
  %.0163.lcssa.ph.sink = phi i32 [ %.2165.lcssa.ph, %.critedge2._crit_edge ], [ %.2165.lcssa.ph, %bb.x ], [ %.1164, %bb.q ], [ %.0163284, %bb.n ]
  %.sink429 = phi ptr [ %.pre403, %.critedge2._crit_edge ], [ %i.fv, %bb.x ], [ %i.ej, %bb.n ], [ %i.ej, %bb.q ]
  %i.fw = sext i32 %.0163.lcssa.ph.sink to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %.sink429, i64 %i.fw
  store i32 -1, ptr %i.fx, align 4, !tbaa !49
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %._crit_edge292, label %.lr.ph, !llvm.loop !156

._crit_edge292:                                   ; preds = %.critedge, %bb.a
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27, i32 noundef 401, ptr noundef %i.e)
  %i.fy = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.fy, null
  br i1 %.not, label %.loopexit270, label %bb.y

bb.y:                                             ; preds = %._crit_edge292
  %i.fz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.fy, ptr noundef nonnull @.str.38, i32 noundef %2, i32 noundef %3) #23 ; 0 uses
  br i1 %i.f, label %.lr.ph299.preheader, label %.loopexit270

.lr.ph299.preheader:                              ; preds = %bb.y
  %wide.trip.count357 = zext nneg i32 %0 to i64
  br label %.lr.ph299

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %._crit_edge296
  %indvars.iv354 = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next355, %._crit_edge296 ] ; 4 uses
  %i.ga = load ptr, ptr @debug, align 8, !tbaa !27
  %i.gb = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.gc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.39, i32 noundef %i.gb) #23 ; 0 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv354 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !153
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !49 ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %.lr.ph295, label %._crit_edge296

.lr.ph295:                                        ; preds = %.lr.ph299
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv354
  br label %bb.z

end_hunk_1
